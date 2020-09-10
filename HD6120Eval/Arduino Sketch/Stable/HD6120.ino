#include <ArduinoSTL.h>
#include <map>

const uint8_t MEM_AF[] = {22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44};
const uint8_t MEM_EF[] = {23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45};
const uint8_t MEM_EMA[] = {46, 48, 50};   // 46: C0 (MSB), 48: C1 and 50: EMA2 (LSB) 
#define LXMARB_PIN 2
#define LXPARB_PIN 18
#define LXDARB_PIN 20
#define READB_PIN 3
#define WRITEB_PIN 19
#define SKIPB_PIN 66          // A12 == D66 (PK4), connected to /SKIP pin
#define C0B_PIN 67            // A13 == D67 (PK5), connected to /C0 pin through diode or 74HC07
#define C1B_PIN 68            // A14 == D68 (PK6), connected to /C1 pin through diode or 74HC07
#define SQW_PIN 69            // A15 == D69 (PK7)
volatile uint16_t address;
volatile uint16_t paddress;
volatile uint16_t instsruction;
volatile uint16_t data;
volatile uint8_t pulse, device;
std::map<uint16_t, uint16_t> MA;    // Main memory is implemented as a sparse array by map
std::map<uint16_t, uint16_t> PA;    // So is Panel memory

#define IsPinAsserted(pin) (digitalRead(pin) == LOW ? true : false)
#define ReadFromBus(val)\
val = 0;\
for (i = 0; i < 12; i++) {\
  bit = digitalRead(MEM_AF[i]) ? 1 : 0;\
  val = (val << 1) + bit;\
}
#define ReadEMAPins(val)\
val = 0;\
for (i = 0; i < 3; i++) {\
  bit = digitalRead(MEM_EMA[i]) ? 1 : 0;\
  val = (val << 1) + bit;\
}
#define WriteToBus(data)\
mask = 04000;\
for (i = 0; i < 12; i++) {\
  digitalWrite(MEM_EF[i], (data & mask) ? HIGH : LOW);\
  mask = (mask >> 1);\
}

void addCodes() {
//
// HD-1-6120 Code goes here
//

//                        FIELD 0
//                        *7600               / Set current assembly origin to program area
  MA[07600] = 07200;      // STRT, CLA
  MA[07601] = 01212;      // TAD FPTR         / Get the CDF instsruction
  MA[07602] = 03203;      // DCA .+1          / Self modify
  MA[07603] = 06201;      // CDF .-.          / (location to be modified)
  MA[07604] = 01613;      // TAD I FPTR+1     / Fetch word from remote field and
  MA[07605] = 03210;      // DCA TMP          / Store it in TMP
  MA[07606] = 06262;      // CIF 6            / Far-jump to address 060200
  MA[07607] = 05611;      // JMP I FLBL       /  (word 0200 of field 6) 
  MA[07610] = 00000;      // TMP, 0           / Jump back for the next char.
  MA[07611] = 00200;      // FLBL, 0200       / 
  MA[07612] = 06251;      // FPTR, CDF 5      / Define a far pointer to address 054321
  MA[07613] = 04321;      // 4321             /  (word 4321 of field 5)

// HD-1-6120 Reset vector
  MA[07777] = 05200;      // JMP STRT

//                        FIELD 5
//                        *4321
  MA[054321] = 0123;      //                  / constant

//                        FIELD 6
//                        *0200
  MA[060200] = 06202;     // CIF 0            / Far-jump to address 007600 (STRT)
  MA[060201] = 05602;     // JMP I RST        / 
  MA[060202] = 07600;     // RST, 07600       / 
}

bool hasValueAt(std::map<uint16_t, uint16_t> &m, uint16_t key) {
  if (m.count(key) == 0)
    return false;
  else
    return true;
}

void setup() {
  char output[27];

  for (uint8_t i = 0; i < 12; i++) {
    pinMode(MEM_AF[i], INPUT);
  }
  for (uint8_t i = 0; i < 12; i++) {
    pinMode(MEM_EF[i], OUTPUT);
  }
  pinMode(LXMARB_PIN, INPUT);
  pinMode(LXPARB_PIN, INPUT);
  pinMode(LXDARB_PIN, INPUT);
  pinMode(READB_PIN, INPUT);
  pinMode(WRITEB_PIN, INPUT);
  attachInterrupt(digitalPinToInterrupt(LXMARB_PIN), onLxmarB, FALLING);
  attachInterrupt(digitalPinToInterrupt(LXPARB_PIN), onLxparB, FALLING);
  attachInterrupt(digitalPinToInterrupt(LXDARB_PIN), onLxdarB, FALLING);
  attachInterrupt(digitalPinToInterrupt(READB_PIN), onReadB, FALLING);
  attachInterrupt(digitalPinToInterrupt(WRITEB_PIN), onWriteB, CHANGE);

  pinMode(SQW_PIN, OUTPUT);
  pinMode(SKIPB_PIN, OUTPUT);
  pinMode(C0B_PIN, OUTPUT);
  pinMode(C1B_PIN, OUTPUT);
  tone(SQW_PIN, 50);          // generate square wave of 50 Hz (1/f=0.02 Sec) on SQW_PIN

  digitalWrite(SKIPB_PIN, HIGH);  // disassert SKIPB_PIN (externally pull-uped)
  digitalWrite(C0B_PIN, HIGH);    // disassert C0B_PIN (externally pull-uped)
  digitalWrite(C1B_PIN, HIGH);    // disassert C1B_PIN (externally pull-uped)

  addCodes();                 // write the HD-1-6020 codes onto the memory (sparse array)

  Serial.begin(115200);
  Serial3.begin(115200);      // Pin 15(RX), Pin 14(TX): Console TTY output 
  sprintf(output, "Main = %d word(s) used", MA.size());
  Serial.println(output);
  sprintf(output, "Panel = %d word(s) used", PA.size());
  Serial.println(output);
}

void handlePulsing() {
  switch (device) {
    case 03:      // console TTY input
      switch (pulse) {
        case 01:      // KSF Keyboard Skip if Flag
          digitalWrite(SKIPB_PIN, (Serial3.available() > 0) ? LOW : HIGH);
          break;
        default:
          break;
      }   // end switch-pulse
      digitalWrite(C0B_PIN, LOW);   // data is received from a device
      digitalWrite(C1B_PIN, LOW);   // and data is loaded into the AC. Read operation will be performed.
      break;
    case 04:      // Console TTY output
      switch (pulse) {
        case 01:      // TSF Teleprinter Skip if Flag
          // serial port 2 or 3
          digitalWrite(SKIPB_PIN, (Serial3.availableForWrite() > 0) ? LOW : HIGH);
          break;
        default:
          break;
      }   // end switch-pulse
      // C1B_PIN : HIGH, C0B_PIN : don't care (HIGH)
      break;
    default:      // Other device(s)
      break;
  }   // end switch-device
}

void handleIOWrite() {
  switch (device) {
    case 03:      // console TTY input
      switch (pulse) {
        case 01:
          digitalWrite(SKIPB_PIN, HIGH);
          break;
        default:
          break;
      }   // end switch-pulse
      digitalWrite(C0B_PIN, HIGH);  // disassert C0B_PIN
      digitalWrite(C1B_PIN, HIGH);  // disassert C1B_PIN
      break;
    case 04:      // Console TTY output
      switch (pulse) {
        case 01:      // TSF Teleprinter Skip if Flag
          digitalWrite(SKIPB_PIN, HIGH);  // disassert SKIPB_PIN
          break;
        case 04:
        case 06:  // TPC Teleprinter Print Character
          // send one byte to the serial port 2 or 3
          Serial3.write( (uint8_t) data & 0xFF );
          break;
        case 02:      // TCF Teleprinter Clear Flag
        default:
          break;
      }   // end switch-pulse
      break;
    default:      // Other device(s)
      break;
  }   // end switch-device
}

void handleIORead() {
  switch (device) {
    case 03:      // console TTY input
      switch (pulse) {
        case 04:    // KRS Keyboard Read Static
        case 06:    // KRB Keyboard Read and begin next read
          // read the incoming byte from Serial port 2 or 3
          data = Serial3.read();
        default:
          break;
      }   // end switch-pulse
      break;
    default:        // Other device(s)
      break;
  }   // end switch-device
}

void onLxmarB() {
  uint8_t i, ema;
  uint16_t bit;

  ReadFromBus(address);
  ReadEMAPins(ema);
  address += (ema << 12);
}

void onLxparB() {
  uint8_t i, ema;
  uint16_t bit;

  ReadFromBus(paddress);
  ReadEMAPins(ema);
  address += (ema << 12);
}

void onLxdarB() {
  uint8_t i;
  uint16_t bit;

  ReadFromBus(instsruction);
  pulse = instsruction & 07;
  device = (instsruction >> 3) & 077;
}

// HD6120 --> memory
void onWriteB() {
  char output[22];
  uint16_t bit;
  uint8_t i;

  if (IsPinAsserted(WRITEB_PIN)) {  // Fallng (leading) edge (WRITEB_PIN: HIGH --> LOW transition)
    if (IsPinAsserted(LXDARB_PIN)) {
      handlePulsing();
    } 
  } 
  else {  // Rising (trailing) edge (WRITEB_PIN: LOW --> HIGH transition)
    ReadFromBus(data);
    if (IsPinAsserted(LXMARB_PIN)) {
      MA[(uint16_t) address] = data;

      sprintf(output, "%05o : %04o MW", address, data);
      Serial.println(output);
    }
    else if (IsPinAsserted(LXPARB_PIN)) {
      PA[(uint16_t) paddress] = data;

      sprintf(output, "%05o : %04o PW", paddress, data);
      Serial.println(output);
    }
    else if (IsPinAsserted(LXDARB_PIN)) {
      handleIOWrite();

      sprintf(output, "IOT %04o : %04o W [%c]", instsruction, data, data & 0xFF);
      Serial.println(output);
    }
  }
}

// HD6120 <-- memory
void onReadB() {
  char output[22];
  uint16_t mask;
  uint8_t i;

  if (IsPinAsserted(LXMARB_PIN)) {
    if (hasValueAt(MA, address))
      data = MA[(uint16_t) address];
    else
      data = 07000;   // NOP

    WriteToBus(data);

    sprintf(output, "%05o : %04o MR", address, data);
    Serial.println(output);
  }
  else if (IsPinAsserted(LXPARB_PIN)) {
    if (hasValueAt(PA, paddress))
      data = PA[(uint16_t) paddress];
    else
      data = 07000;   // NOP

    WriteToBus(data);

    sprintf(output, "%05o : %04o PR", paddress, data);
    Serial.println(output);
  }
  else if (IsPinAsserted(LXDARB_PIN)) {
    handleIORead();
    WriteToBus(data);

    sprintf(output, "IOT %04o : %04o R [%c]", instsruction, data, data & 0xFF);
    Serial.println(output);
  }
}

void loop() {
  // put your main code here, to run repeatedly:

}
