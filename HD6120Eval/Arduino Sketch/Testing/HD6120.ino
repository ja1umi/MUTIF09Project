//#define DEBUG
#define USESRAM
#define USEPORTREG
//#include <ArduinoSTL.h>
//#include <map>
#include <DIO2.h>

// PORTC[7:4] PORTA[7:0] 
GPIO_pin_t MEM_AF[] = {DP30, DP31, DP32, DP33, DP29, DP28, DP27, DP26, DP25, DP24, DP23, DP22};
//GPIO_pin_t MEM_AF[] = {DP22, DP24, DP26, DP28, DP30, DP32, DP34, DP36, DP38, DP40, DP42, DP44};

// PORTC[3:0] PORTL[7:0]
GPIO_pin_t MEM_EF[] = {DP34, DP35, DP36, DP37, DP42, DP43, DP44, DP45, DP46, DP47, DP48, DP49};
//GPIO_pin_t MEM_EF[] = {DP23, DP25, DP27, DP29, DP31, DP33, DP35, DP37, DP39, DP41, DP43, DP45};

// PORTG[2:0]
GPIO_pin_t MEM_EMA[] = {DP39, DP40, DP41};   // 39: C0 (MSB), 40: C1 and 41: EMA2 (LSB) 
//GPIO_pin_t MEM_EMA[] = {DP46, DP48, DP50};   // 46: C0 (MSB), 48: C1 and 50: EMA2 (LSB) 

GPIO_pin_t digits[] = {
  0b11111100, // 0
  0b01100000, // 1
  0b11011010, // 2
  0b11110010, // 3
  0b01100110, // 4
  0b10110110, // 5
  0b10111110, // 6
  0b11100000, // 7
  0b11111110, // 8
  0b11110110, // 9
};
#define MEMSIZE 1024
#define SYMSPC 0
#define SYMMINUS 0b00000010
#define SYMOCTAL 0b00111010
#define SYMALP 0b11001110
#define SYMALD 0b01111010
#define SYMSTRB 256

#define LXMARB_PIN DP2
#define LXMARB_PIN_NUM 2
#define LXPARB_PIN DP18
#define LXPARB_PIN_NUM 18
#define LXDARB_PIN DP20
#define LXDARB_PIN_NUM 20
#define READB_PIN DP3
#define READB_PIN_NUM 3
#define WRITEB_PIN DP19
#define WRITEB_PIN_NUM 19
#define OLATCH_PIN_NUM 63       // A9  == D63 (PK1)
#define ODATA_PIN_NUM 64        // A10 == D64 (PK2)
#define OCLK_PIN_NUM 65         // A11 == D65 (PK3)
#define SKIPB_PIN DP66          // A12 == D66 (PK4), connected to /SKIP pin
#define C0B_PIN DP67            // A13 == D67 (PK5), connected to /C0 pin through diode or 74HC07
#define C1B_PIN DP68            // A14 == D68 (PK6), connected to /C1 pin through diode or 74HC07
#define SQW_PIN_NUM 69          // A15 == D69 (PK7)
#define LATCH_PIN_NUM 8         //
#define DATA_PIN_NUM 9          //
#define CLK_PIN_NUM 7           //

#define FMTUOCT 0
#define FMTUDEC 1
#define FMTSDEC 2
#define FMTRAW 3
volatile uint16_t address;
volatile uint16_t paddress;
volatile uint16_t instsruction;
volatile uint16_t data;
volatile uint16_t swreg = 0x69F;    // 0b011010011111, Starting with non-zero number can help troubleshoot
volatile uint16_t swregout = 0, swregoutp;
volatile uint8_t pulse, device;
//std::map<uint16_t, uint16_t> MA;    // Main memory is implemented as a sparse array by map
//std::map<uint16_t, uint16_t> PA;    // So is Panel memory
volatile uint16_t MA[MEMSIZE];
volatile uint16_t PA[MEMSIZE];

#define IsPinAsserted(pin) (digitalRead2f(pin) == LOW ? true : false)

#ifdef USEPORTREG
#define ReadFromBus(val)\
val = ((PINC & 0xF0) << 4) + PINA;
#else
#define ReadFromBus(val)\
val = 0;\
for (i = 0; i < 12; i++) {\
  bit = digitalRead2f(MEM_AF[i]) ? 1 : 0;\
  val = (val << 1) + bit;\
}
#endif

#ifdef USEPORTREG
#define ReadEMAPins(val)\
val = PING & 7;
#else
#define ReadEMAPins(val)\
val = 0;\
for (i = 0; i < 3; i++) {\
  bit = digitalRead2f(MEM_EMA[i]) ? 1 : 0;\
  val = (val << 1) + bit;\
}
#endif

#ifdef USEPORTREG
#define WriteToBus(data)\
PORTC = (PINC & 0xF0) | ((data & 0xF00) >> 8);\
PORTL = data & 0xFF; 
#else
#define WriteToBus(data)\
mask = 04000;\
for (i = 0; i < 12; i++) {\
  digitalWrite2f(MEM_EF[i], (data & mask) ? HIGH : LOW);\
  mask = (mask >> 1);\
}
#endif

void addCodes() {
//
// HD-1-6120 Code goes here
//
//                        *10                 / Set current assembly origin to address 010.
  MA[00010] = 0;          // SPTR, 0          / An auto-increment regiser (one of eight at 010-017)

//                        FIELD 0
//                        *0177               / Set current assembly origin to program area
  MA[00177] = 00200;      //                  / Program start address 

//                        *0200               / Set current assembly origin to program area
  MA[00200] = 07200;      // STRT, CLA        /
  MA[00201] = 01262;      // TAD (STK1)       / Initialize SP1 
  MA[00202] = 06217;      // LSP1             /  (SP1 = 07577)
  MA[00203] = 01263;      // TAD (STK2)       / Initialize SP2 
  MA[00204] = 06237;      // LSP2             /  (SP2 = 07776)
  MA[00205] = 07200;      // CLA              / 

  MA[00206] = 01261;      // LOOP, TAD (12)   / Push constant of 12
  MA[00207] = 06255;      // PAC2             /  onto Stack 2
  MA[00210] = 06205;      // PPC1             / Jump to subroutine to
  MA[00211] = 05215;      // JMP FIB          /  calculate Fibonacci number of a given integer on Top of Stack 2 (TOS)
  MA[00212] = 06275;      // POP2             / Retrieve the result from TOS
  MA[00213] = 06246;      // WSR              /  and write to the external device
  MA[00214] = 05206;      // JMP LOOP         / Repeat forever 

  MA[00215] = 06227;      // FIB, RSP2        / This subroutine assumes that the parameter is on Stack 2
  MA[00216] = 03010;      // DCA Z SPTR       / SPTR = SP2
  MA[00217] = 01410;      // TAD I Z SPTR     / AC = (+SP2)  Note: AC contains n
  MA[00220] = 07440;      // SZA              / If n == 0
  MA[00221] = 05223;      // JMP NOT0         / 
  MA[00222] = 06225;      // RTN1             /  Then, just return because Fib(0) == n == 0. 
  
  MA[00223] = 06227;      // NOT0, RSP2       / SPTR = SP2
  MA[00224] = 03010;      // DCA Z SPTR       / 
  MA[00225] = 01410;      // TAD I Z SPTR     / AC = (+SP2)  Note: AC contains n
  MA[00226] = 01257;      // TAD (-1)         / If n == 1
  MA[00227] = 07440;      // SZA              / 
  MA[00230] = 05232;      // JMP NOT1         / 
  MA[00231] = 06225;      // RTN1             / Then, just return because Fib(1) == n == 1
  
  MA[00232] = 06275;      // NOT1, POP2       / AC = TOS, which contains n
  MA[00233] = 06215;      // PAC1             / Save AC
  MA[00234] = 01257;      // TAD (-1)         / Push (AC - 1) 
  MA[00235] = 06255;      // PAC2             /  onto Stack 2
  MA[00236] = 06205;      // PPC1             / Calculate Fib(n-1)
  MA[00237] = 05215;      // JMP FIB          /  by recursive call
  MA[00240] = 06235;      // POP1             / Retrieve AC, which contains n
  MA[00241] = 01260;      // TAD (-2)         / Push (AC - 2)
  MA[00242] = 06255;      // PAC2             /  onto Stack 2
  MA[00243] = 06205;      // PPC1             / Calculate Fib(n-2)
  MA[00244] = 05215;      // JMP FIB          / 
  MA[00245] = 06227;      // RSP2             / SPTR = SP2
  MA[00246] = 03010;      // DCA Z SPTR       / 
  MA[00247] = 01410;      // TAD I Z SPTR     / AC = Fib(n-2)
  MA[00250] = 01410;      // TAD I Z SPTR     / AC += Fib(n-1)
  MA[00251] = 06215;      // PAC1             / Save AC, which contains Fib(n). Note: Fib(n) == Fib(n-2) + Fib(n-1)
  MA[00252] = 06275;      // POP2             / Adjust SP2
  MA[00253] = 06275;      // POP2             / 
  MA[00254] = 06235;      // POP1             / Retrieve AC, which contains Fib(n) 
  MA[00255] = 06255;      // PAC2             / Push AC onto Stack 2  
  MA[00256] = 06225;      // RTN1             / 

  MA[00257] = 07777;      //                  / -1 
  MA[00260] = 07776;      //                  / -2 
  MA[00261] = 12;         //                  / 12
  MA[00262] = 07577;      // STK1             / SP1 top  
  MA[00263] = 07776;      // STK2             / SP2 top  
//  MA[00264] = 0;          // ANS, 0           / Holds Fibonacci number of a given integer

// HD-1-6120 Reset vector
//                        *7777               / 
  MA[07777 & 0x3FF] = 05577;      // JMP I Z 0177

}

//bool hasValueAt(std::map<uint16_t, uint16_t> &m, uint16_t key) {
//  if (m.count(key) == 0)
//    return false;
//  else
//    return true;
//}

void setup() {
  char output[27];

  for (uint8_t i = 0; i < 12; i++) {
    pinMode2f(MEM_AF[i], INPUT);
  }
  for (uint8_t i = 0; i < 3; i++) {
    pinMode2f(MEM_EMA[i], INPUT);
  }
  for (uint8_t i = 0; i < 12; i++) {
    pinMode2f(MEM_EF[i], OUTPUT);
  }
  pinMode2f(LXMARB_PIN, INPUT);
  pinMode2f(LXPARB_PIN, INPUT);
  pinMode2f(LXDARB_PIN, INPUT);
  pinMode2f(READB_PIN, INPUT);
  pinMode2f(WRITEB_PIN, INPUT);
  pinMode2(DATA_PIN_NUM, INPUT);
  attachInterrupt(digitalPinToInterrupt(LXMARB_PIN_NUM), onLxmarB, FALLING);
  attachInterrupt(digitalPinToInterrupt(LXPARB_PIN_NUM), onLxparB, FALLING);
  attachInterrupt(digitalPinToInterrupt(LXDARB_PIN_NUM), onLxdarB, FALLING);
  attachInterrupt(digitalPinToInterrupt(READB_PIN_NUM), onReadB, FALLING);
  attachInterrupt(digitalPinToInterrupt(WRITEB_PIN_NUM), onWriteB, CHANGE);

  pinMode2(SQW_PIN_NUM, OUTPUT);
  pinMode2f(SKIPB_PIN, OUTPUT);
  pinMode2f(C0B_PIN, OUTPUT);
  pinMode2f(C1B_PIN, OUTPUT);
  pinMode2(LATCH_PIN_NUM, OUTPUT);
  pinMode2(CLK_PIN_NUM, OUTPUT);
  pinMode2(OLATCH_PIN_NUM, OUTPUT);
  pinMode2(OCLK_PIN_NUM, OUTPUT);
  pinMode2(ODATA_PIN_NUM, OUTPUT);
  tone(SQW_PIN_NUM, 50);          // generate square wave of 50 Hz (1/f=0.02 Sec) on SQW_PIN

  digitalWrite2f(SKIPB_PIN, HIGH);  // disassert SKIPB_PIN (externally pull-uped)
  digitalWrite2f(C0B_PIN, HIGH);    // disassert C0B_PIN (externally pull-uped)
  digitalWrite2f(C1B_PIN, HIGH);    // disassert C1B_PIN (externally pull-uped)

  addCodes();                 // write the HD-1-6020 codes onto the memory (sparse array)

  Serial3.begin(115200);      // Pin 15(RX), Pin 14(TX): Console TTY output 
#ifdef DEBUG
  Serial.begin(115200);
//  sprintf(output, "Main = %d word(s) used", MA.size());
//  Serial.println(output);
//  sprintf(output, "Panel = %d word(s) used", PA.size());
//  Serial.println(output);
#endif
  swregoutp = swregout;
  // prepare splash screen on the series of 7-segment LEDs
  serOut595(SYMALP, FMTRAW);                // P
  serOut595(SYMALD, FMTRAW);                // d
  serOut595(SYMALP, FMTRAW);                // P
  serOut595(SYMMINUS, FMTRAW);              // -
  serOut595(digits[8] + SYMSTRB, FMTRAW);   // 8
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
      digitalWrite2f(C0B_PIN, LOW);   // data is received from a device
      digitalWrite2f(C1B_PIN, LOW);   // and data is loaded into the AC. Read operation will be performed.
      break;
    case 04:      // Console TTY output
      switch (pulse) {
        case 01:      // TSF Teleprinter Skip if Flag
          // serial port 2 or 3
          digitalWrite2f(SKIPB_PIN, (Serial3.availableForWrite() > 0) ? LOW : HIGH);
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
          digitalWrite2f(SKIPB_PIN, HIGH);
          break;
        default:
          break;
      }   // end switch-pulse
      digitalWrite2f(C0B_PIN, HIGH);  // disassert C0B_PIN
      digitalWrite2f(C1B_PIN, HIGH);  // disassert C1B_PIN
      break;
    case 04:      // Console TTY output
      switch (pulse) {
        case 01:      // TSF Teleprinter Skip if Flag
          digitalWrite2f(SKIPB_PIN, HIGH);  // disassert SKIPB_PIN
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
#ifndef USESRAM
  address += (ema << 12);
#else
  address &= 0x3FF;
#endif
}

void onLxparB() {
  uint8_t i, ema;
  uint16_t bit;

  ReadFromBus(paddress);
  ReadEMAPins(ema);
#ifndef USESRAM
  paddress += (ema << 12);
#else
  paddress &= 0x3FF;
#endif
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
  uint16_t mask, bit;
  uint8_t i, df;

//  if (IsPinAsserted(WRITEB_PIN)) {  // Fallng (leading) edge (WRITEB_PIN: HIGH --> LOW transition)
  if ( !(PIND & _BV(PD2)) ) {
//    if (IsPinAsserted(LXDARB_PIN)) {
    if ( !(PIND & _BV(PD1)) ) {
      handlePulsing();
    } 
  } 
  else {  // Rising (trailing) edge (WRITEB_PIN: LOW --> HIGH transition)
    ReadFromBus(data);
//    if (IsPinAsserted(LXMARB_PIN)) {
    if ( !(PINE & _BV(PE4)) ) {
      MA[(uint16_t) address] = data;

#ifdef DEBUG
      sprintf(output, "%05o : %04o MW", address, data);
      Serial.println(output);
#endif
    }
//    else if (IsPinAsserted(LXPARB_PIN)) {
    else if ( !(PIND & _BV(PD3)) ) {
      PA[(uint16_t) paddress] = data;

#ifdef DEBUG
      sprintf(output, "%05o : %04o PW", paddress, data);
      Serial.println(output);
#endif
    }
//    else if (IsPinAsserted(LXDARB_PIN)) {
    else if ( !(PIND & _BV(PD1)) ) { 
      handleIOWrite();

#ifdef DEBUG
      sprintf(output, "IOT %04o : %04o W [%c]", instsruction, data, data & 0xFF);
      Serial.println(output);
#endif
    }
    else {    // WSR instsruction
      ReadEMAPins(df);
      swregout = data;

#ifdef DEBUG
//      sprintf(output, "WSR (%04o) %03x : %01o W", swregout, swregout, df);
      sprintf(output, "WSR (%04o) %04d : %01o W", swregout, swregout, df);
      Serial.println(output);
#endif
//      Serial3.println(data);
    }
  }
}

// HD6120 <-- memory
void onReadB() {
  char output[22];
  uint16_t mask, bit;
  uint8_t i, df;

//  if (IsPinAsserted(LXMARB_PIN)) {
  if ( !(PINE & _BV(PE4)) ) {
//    if (hasValueAt(MA, address))
//      data = MA[(uint16_t) address];
//    else
//      data = 07000;   // NOP
    data = MA[(uint16_t) address];
    WriteToBus(data);

#ifdef DEBUG
    sprintf(output, "%05o : %04o MR", address, data);
    Serial.println(output);
#endif
  }
//  else if (IsPinAsserted(LXPARB_PIN)) {
  else if ( !(PIND & _BV(PD3)) ) {
//    if (hasValueAt(PA, paddress))
//      data = PA[(uint16_t) paddress];
//    else
//      data = 07000;   // NOP
    data = PA[(uint16_t) paddress];
    WriteToBus(data);

#ifdef DEBUG
    sprintf(output, "%05o : %04o PR", paddress, data);
    Serial.println(output);
#endif
  }
//  else if (IsPinAsserted(LXDARB_PIN)) {
  else if ( !(PIND & _BV(PD1)) ) {
    handleIORead();
    WriteToBus(data);

#ifdef DEBUG
    sprintf(output, "IOT %04o : %04o R [%c]", instsruction, data, data & 0xFF);
    Serial.println(output);
#endif
  }
  else {    // OSR instsruction
    ReadEMAPins(df);
    WriteToBus(swreg);

#ifdef DEBUG    
    sprintf(output, "OSR (%04o) %03x : %01o R", swreg, swreg, df);
    Serial.println(output);
#endif
  }
}

uint16_t serIn4021(uint8_t dpin, uint8_t cpin) {
  uint8_t i, din = 0;
  uint16_t val = 0;
  for (i = 0; i < 12; i++) {
    digitalWrite2(cpin, LOW);
    delayMicroseconds(2);
    din = (digitalRead2(dpin) == HIGH) ? 1 : 0;
    val = (din << i) + val;
    digitalWrite2(cpin, HIGH);
  }
  return val;
}

//void serOutDFR0090(uint8_t dpin, uint8_t cpin, uint8_t val) {
//  digitalWrite(OLATCH_PIN, LOW);
//  serOut(dpin, cpin, MSBFIRST, val);
//  digitalWrite(OLATCH_PIN, HIGH);
//}

void serOut595(uint16_t val, uint8_t fmt) {
  char output[6];
  int16_t temp;

  switch (fmt) {
    case 1:   // unsigned decimal
      digitalWrite2(OLATCH_PIN_NUM, LOW);
      sprintf(output, "%04d", val & 07777);
      shiftOut(ODATA_PIN_NUM, OCLK_PIN_NUM, LSBFIRST, SYMSPC);
      shiftOut(ODATA_PIN_NUM, OCLK_PIN_NUM, LSBFIRST, digits[output[0] - '0']);
      shiftOut(ODATA_PIN_NUM, OCLK_PIN_NUM, LSBFIRST, digits[output[1] - '0']);
      shiftOut(ODATA_PIN_NUM, OCLK_PIN_NUM, LSBFIRST, digits[output[2] - '0']);
      shiftOut(ODATA_PIN_NUM, OCLK_PIN_NUM, LSBFIRST, digits[output[3] - '0']);
      digitalWrite2(OLATCH_PIN_NUM, HIGH);
#ifdef DEBUG
      Serial.println(output);
#endif
      break;

    case 2:   // signed decimal
      digitalWrite2(OLATCH_PIN_NUM, LOW);
      temp = (int16_t) val;
      sprintf(output, "%+05d", temp);
      shiftOut(ODATA_PIN_NUM, OCLK_PIN_NUM, LSBFIRST, (output[0] == '-') ? SYMMINUS : SYMSPC);
      shiftOut(ODATA_PIN_NUM, OCLK_PIN_NUM, LSBFIRST, digits[output[1] - '0']);
      shiftOut(ODATA_PIN_NUM, OCLK_PIN_NUM, LSBFIRST, digits[output[2] - '0']);
      shiftOut(ODATA_PIN_NUM, OCLK_PIN_NUM, LSBFIRST, digits[output[3] - '0']);
      shiftOut(ODATA_PIN_NUM, OCLK_PIN_NUM, LSBFIRST, digits[output[4] - '0']);
      digitalWrite2(OLATCH_PIN_NUM, HIGH);
#ifdef DEBUG
      Serial.println(output);
#endif
      break;

    case 3:   // raw data output
      digitalWrite2(OLATCH_PIN_NUM, LOW);
      shiftOut(ODATA_PIN_NUM, OCLK_PIN_NUM, LSBFIRST, val & 0xFF);
      if (val > 255)
        digitalWrite2(OLATCH_PIN_NUM, HIGH);
      break;

    case 0:   // unsined octal
    default:
      digitalWrite2(OLATCH_PIN_NUM, LOW);
      sprintf(output, "%04o", val & 07777);
      shiftOut(ODATA_PIN_NUM, OCLK_PIN_NUM, LSBFIRST, SYMOCTAL);
      shiftOut(ODATA_PIN_NUM, OCLK_PIN_NUM, LSBFIRST, digits[output[0] - '0']);
      shiftOut(ODATA_PIN_NUM, OCLK_PIN_NUM, LSBFIRST, digits[output[1] - '0']);
      shiftOut(ODATA_PIN_NUM, OCLK_PIN_NUM, LSBFIRST, digits[output[2] - '0']);
      shiftOut(ODATA_PIN_NUM, OCLK_PIN_NUM, LSBFIRST, digits[output[3] - '0']);
      digitalWrite2(OLATCH_PIN_NUM, HIGH);
#ifdef DEBUG
      Serial.println(output);
#endif
      break;
  }
}

void loop() {
  digitalWrite2(LATCH_PIN_NUM, HIGH);    // Assert it to collect parallel data
  delayMicroseconds(20);
  digitalWrite2(LATCH_PIN_NUM, LOW);     // disassert it to transmit data serially
  swreg = serIn4021(DATA_PIN_NUM, CLK_PIN_NUM);
//  Serial.println(swreg, BIN);

  if(swregout != swregoutp) {
    serOut595(swregout, FMTUOCT);
//    serOutDFR0090(ODATA_PIN, OCLK_PIN, swregout & 0xFF);
    swregoutp = swregout;
  }
}
