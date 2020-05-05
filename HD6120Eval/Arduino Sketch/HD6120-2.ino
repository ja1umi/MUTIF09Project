const uint8_t MEM_AF[] = {22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44};
const uint8_t MEM_EF[] = {23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45};
#define MEMSIZE 0200
#define LXMARB_PIN 2
#define READB_PIN 3
#define WRITEB_PIN 19
volatile uint16_t address;
volatile uint16_t data;
volatile uint16_t MA[MEMSIZE];

void setup() {
  for (uint8_t i = 0; i < 12; i++) {
    pinMode(MEM_AF[i], INPUT);
  }
  for (uint8_t i = 0; i < 12; i++) {
    pinMode(MEM_EF[i], OUTPUT);
  }
  pinMode(LXMARB_PIN, INPUT);
  pinMode(READB_PIN, INPUT);
  pinMode(WRITEB_PIN, INPUT);
  attachInterrupt(digitalPinToInterrupt(LXMARB_PIN), onLxmarB, FALLING);
  attachInterrupt(digitalPinToInterrupt(READB_PIN), onReadB, FALLING);
  attachInterrupt(digitalPinToInterrupt(WRITEB_PIN), onWriteB, RISING);
  for (uint8_t i = 0; i < MEMSIZE; i++)
    MA[i] = 07000;    // NOP

  MA[00000] = 07300;  // CLA CLL
  MA[00001] = 01205;  // TAD A
  MA[00002] = 01206;  // TAD B
  MA[00003] = 03207;  // DCA C
  MA[00004] = 05204;  // LOOP:  JMP LOOP
  MA[00005] = 2;      // A:
  MA[00006] = 3;      // B:
  MA[00007] = 0;      // C:
  // HD6120 Reset vector
  MA[00177] = 05200;  // JMP 0
   
  Serial.begin(115200);
}

void onLxmarB() {
  address = 0;
  for (uint8_t i = 0; i < 12; i++) {
    uint16_t bit = digitalRead(MEM_AF[i]) ? 1 : 0;
    address = (address << 1) + bit;
  }
}

// HD6120 --> memory
void onWriteB() {
  char output[21];
  if (digitalRead(LXMARB_PIN) == LOW) {
    data = 0;
    for (uint8_t i = 0; i < 12; i++) {
      uint16_t bit = digitalRead(MEM_AF[i]) ? 1 : 0;
      data = (data << 1) + bit;
    }
    if (address >= 07600)
      MA[address & 0x7F] = data;

    sprintf(output, "%04o : %04o W [%04o]", address, data, MA[00007]);
    Serial.println(output);
  }
}

// HD6120 <-- memory
void onReadB() {
  char output[21];
  uint16_t mask;
  if (digitalRead(LXMARB_PIN) == LOW) {
    mask = 04000;
    if (address >= 07600)
      data = MA[address & 0x7F];
    else
      data = 07000;
    for (uint8_t i = 0; i < 12; i++) {
      digitalWrite(MEM_EF[i], (data & mask) ? HIGH : LOW);
      mask = (mask >> 1);
    }
    sprintf(output, "%04o : %04o R [%04o]", address, data, MA[00007]);
    Serial.println(output);
  }
}

void loop() {
  // put your main code here, to run repeatedly:

}
