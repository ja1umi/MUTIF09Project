EESchema Schematic File Version 2
LIBS:sbclib
LIBS:My6809sbc-rescue
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:My6809sbc-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MUTIF09 6809 Single Board Computer"
Date "2018-09-10"
Rev "2"
Comp "MUTIF09 Project"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MC6850 U3
U 1 1 5B273A83
P 2100 1850
F 0 "U3" H 1800 2600 60  0000 C CNN
F 1 "MC6850" H 2100 1100 60  0000 C CNN
F 2 "Housings_DIP:DIP-24_W15.24mm_Socket" H 2100 1400 60  0001 C CNN
F 3 "" H 2100 1400 60  0001 C CNN
	1    2100 1850
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x06 J2
U 1 1 5B273CA5
P 3600 1500
F 0 "J2" H 3600 1800 50  0000 C CNN
F 1 "HEADER 1x6" H 3450 1100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x06_Pitch2.54mm" H 3600 1500 50  0001 C CNN
F 3 "" H 3600 1500 50  0001 C CNN
	1    3600 1500
	1    0    0    -1  
$EndComp
NoConn ~ 3400 1800
NoConn ~ 3400 1500
NoConn ~ 1500 1700
$Comp
L R R3
U 1 1 5B275C2A
P 900 1900
F 0 "R3" V 800 1850 50  0000 C CNN
F 1 "2.2k" V 900 1900 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 830 1900 50  0001 C CNN
F 3 "" H 900 1900 50  0001 C CNN
	1    900  1900
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 5B275F99
P 1400 2650
F 0 "C2" H 1425 2750 50  0000 L CNN
F 1 "0.1u" H 1425 2550 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 1438 2500 50  0001 C CNN
F 3 "" H 1400 2650 50  0001 C CNN
	1    1400 2650
	1    0    0    -1  
$EndComp
$Comp
L GAL20V8 U6
U 1 1 5B28DC1E
P 4650 1850
F 0 "U6" H 4350 2600 60  0000 C CNN
F 1 "GAL20V8" H 4650 1100 60  0000 C CNN
F 2 "Housings_DIP:DIP-24_W7.62mm_Socket" H 4650 1400 60  0001 C CNN
F 3 "" H 4650 1400 60  0001 C CNN
	1    4650 1850
	1    0    0    -1  
$EndComp
$Comp
L Am9511 U8
U 1 1 5B28E8C9
P 6800 1850
F 0 "U8" H 6500 2600 60  0000 C CNN
F 1 "Am9511" H 6800 1100 60  0000 C CNN
F 2 "Housings_DIP:DIP-24_W15.24mm_Socket" H 6800 1400 60  0001 C CNN
F 3 "" H 6800 1400 60  0001 C CNN
	1    6800 1850
	1    0    0    -1  
$EndComp
NoConn ~ 6200 1900
$Comp
L C C4
U 1 1 5B28FE27
P 5350 1050
F 0 "C4" H 5375 1150 50  0000 L CNN
F 1 "0.1u" H 5375 950 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 5388 900 50  0001 C CNN
F 3 "" H 5350 1050 50  0001 C CNN
	1    5350 1050
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5B28FEC4
P 7650 2750
F 0 "C7" H 7675 2850 50  0000 L CNN
F 1 "0.1u" H 7675 2650 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 7688 2600 50  0001 C CNN
F 3 "" H 7650 2750 50  0001 C CNN
	1    7650 2750
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5B290168
P 5850 1050
F 0 "C5" H 5875 1150 50  0000 L CNN
F 1 "0.1u" H 5875 950 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 5888 900 50  0001 C CNN
F 3 "" H 5850 1050 50  0001 C CNN
	1    5850 1050
	1    0    0    -1  
$EndComp
$Comp
L 27128 U11
U 1 1 5B291DC5
P 9000 1900
F 0 "U11" H 8700 2700 60  0000 C CNN
F 1 "27128" H 9000 1000 60  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket" H 9000 1900 50  0001 C CNN
F 3 "" H 9000 1900 50  0001 C CNN
	1    9000 1900
	1    0    0    -1  
$EndComp
$Comp
L 62256 U10
U 1 1 5B291E28
P 8950 4250
F 0 "U10" H 8650 5050 60  0000 C CNN
F 1 "62256" H 8950 3350 60  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket" H 8950 3850 60  0001 C CNN
F 3 "" H 8950 3850 60  0001 C CNN
	1    8950 4250
	1    0    0    -1  
$EndComp
$Comp
L MC6809 U2
U 1 1 5B291F35
P 2050 5200
F 0 "U2" H 1750 6400 60  0000 C CNN
F 1 "MC6809" H 2050 4100 60  0000 C CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket" H 2050 5200 60  0001 C CNN
F 3 "" H 2050 5200 60  0001 C CNN
	1    2050 5200
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x20_Odd_Even J12
U 1 1 5B2920F3
P 10450 2900
F 0 "J12" H 10500 3900 50  0000 C CNN
F 1 "HEADER 2x20" H 10500 1800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20_Pitch2.54mm" H 10450 2900 50  0001 C CNN
F 3 "" H 10450 2900 50  0001 C CNN
	1    10450 2900
	1    0    0    -1  
$EndComp
Text Notes 10025 1850 0    60   ~ 0
MPU Expansion connector
$Comp
L 8255A U5
U 1 1 5B2B3DC5
P 4350 5200
F 0 "U5" H 4050 6400 60  0000 L CNN
F 1 "8255A" H 4250 4100 60  0000 L CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket" H 4350 5500 50  0001 C CNN
F 3 "" H 4350 5500 50  0001 C CNN
	1    4350 5200
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J13
U 1 1 5B2C075F
P 10800 4450
F 0 "J13" H 10800 4550 50  0000 C CNN
F 1 "Conn_01x02" H 10800 4250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 10800 4450 50  0001 C CNN
F 3 "" H 10800 4450 50  0001 C CNN
	1    10800 4450
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5B2C0A05
P 3150 5350
F 0 "SW1" H 3200 5450 50  0000 L CNN
F 1 "RESET" H 3150 5290 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_Straight_KSA0Axx1LFTR" H 3150 5550 50  0001 C CNN
F 3 "" H 3150 5550 50  0001 C CNN
	1    3150 5350
	0    1    1    0   
$EndComp
$Comp
L 74LS04 U9
U 1 1 5B2BA55B
P 8450 5750
F 0 "U9" H 8325 6250 60  0000 C CNN
F 1 "74LS04" H 8450 5250 60  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 8475 5050 60  0001 C CNN
F 3 "" H 8475 5050 60  0001 C CNN
	1    8450 5750
	1    0    0    -1  
$EndComp
Text Label 1650 800  2    50   ~ 0
/BUFFER_FULL
NoConn ~ 8850 5650
NoConn ~ 8850 5850
NoConn ~ 8850 6050
Text Label 10650 5800 0    60   ~ 0
GND
Text Label 10950 5900 0    60   ~ 0
+5V
Text Label 10850 5700 0    60   ~ 0
+12V
$Comp
L PWR_FLAG #FLG01
U 1 1 5B2BEF4D
P 10450 4400
F 0 "#FLG01" H 10450 4475 50  0001 C CNN
F 1 "PWR_FLAG" H 10450 4550 50  0000 C CNN
F 2 "" H 10450 4400 50  0001 C CNN
F 3 "" H 10450 4400 50  0001 C CNN
	1    10450 4400
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 5B2BEF93
P 10450 4650
F 0 "#FLG02" H 10450 4725 50  0001 C CNN
F 1 "PWR_FLAG" H 10450 4800 50  0000 C CNN
F 2 "" H 10450 4650 50  0001 C CNN
F 3 "" H 10450 4650 50  0001 C CNN
	1    10450 4650
	-1   0    0    1   
$EndComp
Text Notes 10700 4300 0    60   ~ 0
DC Input\n(5V)
Text Label 2650 4800 0    60   ~ 0
E
Text Label 2650 5000 0    60   ~ 0
R_/W
$Comp
L Xtal_Osc U4
U 1 1 5B2C1A7C
P 2100 3100
F 0 "U4" H 1900 3450 60  0000 C CNN
F 1 "1.8432MHz" H 2100 2750 60  0000 C CNN
F 2 "Oscillators:Oscillator_DIP-8" H 2100 2650 60  0001 C CNN
F 3 "" H 2100 2650 60  0001 C CNN
	1    2100 3100
	1    0    0    -1  
$EndComp
$Comp
L Xtal_Osc U1
U 1 1 5B2C211E
P 2000 6850
F 0 "U1" H 1800 7200 60  0000 C CNN
F 1 "8MHz" H 2000 6500 60  0000 C CNN
F 2 "Oscillators:Oscillator_DIP-8" H 2000 6400 60  0001 C CNN
F 3 "" H 2000 6400 60  0001 C CNN
	1    2000 6850
	1    0    0    -1  
$EndComp
NoConn ~ 1600 2950
Text Label 2600 2950 0    60   ~ 0
+5V
Text Label 2600 3250 0    60   ~ 0
SCLK
Text Notes 2100 2800 0    60   ~ 0
Baud Rate Generator
Text Label 1450 4200 2    60   ~ 0
GND
$Comp
L C C8
U 1 1 5B2C2ADD
P 8150 1050
F 0 "C8" H 8175 1150 50  0000 L CNN
F 1 "0.1u" H 8175 950 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 8188 900 50  0001 C CNN
F 3 "" H 8150 1050 50  0001 C CNN
	1    8150 1050
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 5B2C2B50
P 9650 3400
F 0 "C11" H 9675 3500 50  0000 L CNN
F 1 "0.1u" H 9450 3300 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9688 3250 50  0001 C CNN
F 3 "" H 9650 3400 50  0001 C CNN
	1    9650 3400
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5B2C2BC5
P 9150 6100
F 0 "C9" H 9175 6200 50  0000 L CNN
F 1 "0.1u" H 9175 6000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 9188 5950 50  0001 C CNN
F 3 "" H 9150 6100 50  0001 C CNN
	1    9150 6100
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5B2C2C18
P 650 5050
F 0 "C1" H 675 5150 50  0000 L CNN
F 1 "0.1u" H 675 4950 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 688 4900 50  0001 C CNN
F 3 "" H 650 5050 50  0001 C CNN
	1    650  5050
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5B2C2C99
P 5200 6350
F 0 "C3" H 5225 6450 50  0000 L CNN
F 1 "0.1u" H 5225 6250 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 5238 6200 50  0001 C CNN
F 3 "" H 5200 6350 50  0001 C CNN
	1    5200 6350
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5B2C2CEC
P 7350 5550
F 0 "C6" H 7200 5650 50  0000 L CNN
F 1 "0.1u" H 7150 5450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 7388 5400 50  0001 C CNN
F 3 "" H 7350 5550 50  0001 C CNN
	1    7350 5550
	1    0    0    -1  
$EndComp
Text Notes 2550 1200 0    50   ~ 0
/RTS = /(/BUFFER_FULL)
Text Label 1200 1600 0    60   ~ 0
SCLK
Text Label 700  1100 0    60   ~ 0
+5V
Text Label 1200 2400 2    60   ~ 0
+5V
Text Label 1300 3250 2    60   ~ 0
GND
Text Label 1300 1400 0    60   ~ 0
RXD
Text Label 3400 1600 2    60   ~ 0
RXD
Text Label 1300 1800 0    60   ~ 0
TXD
Text Label 3400 1700 2    60   ~ 0
TXD
Text Label 3400 1400 2    60   ~ 0
/RTS
Text Label 1300 2300 0    60   ~ 0
A0
Text Label 1050 2100 0    60   ~ 0
/ACIA1CE
Text Label 2700 2400 0    60   ~ 0
R_/W
Text Label 2700 2300 0    60   ~ 0
E
Text Label 2700 2200 0    60   ~ 0
D7
Text Label 2700 2100 0    60   ~ 0
D6
Text Label 2700 2000 0    60   ~ 0
D5
Text Label 2700 1900 0    60   ~ 0
D4
Text Label 2700 1800 0    60   ~ 0
D3
Text Label 2700 1700 0    60   ~ 0
D2
Text Label 2700 1600 0    60   ~ 0
D1
Text Label 2700 1500 0    60   ~ 0
D0
Text Label 4050 1300 2    60   ~ 0
A15
Text Label 4050 1400 2    60   ~ 0
A14
Text Label 4050 1500 2    60   ~ 0
A13
Text Label 4050 1600 2    60   ~ 0
A12
Text Label 4050 1700 2    60   ~ 0
A7
Text Label 4050 1800 2    60   ~ 0
A6
Text Label 4050 1900 2    60   ~ 0
A5
Text Label 4050 2000 2    60   ~ 0
A4
Text Label 4050 2100 2    60   ~ 0
A3
Text Label 4050 2200 2    60   ~ 0
A2
Text Label 4050 2300 2    60   ~ 0
A1
Text Label 5250 1400 0    60   ~ 0
E
Text Label 5250 1500 0    60   ~ 0
/RAMWE
Text Label 5250 1600 0    60   ~ 0
/ROMCE
Text Label 5250 1700 0    60   ~ 0
/APUCE
Text Label 5250 1800 0    60   ~ 0
/ACIA1CE
Text Label 5250 1900 0    60   ~ 0
/PPICE
Text Label 5250 2000 0    60   ~ 0
/PITCE
Text Label 5250 2100 0    60   ~ 0
/OE
Text Label 5250 2300 0    60   ~ 0
R_/W
NoConn ~ 5250 2400
Text Label 3100 2500 0    60   ~ 0
GND
Text Label 5350 750  2    60   ~ 0
GND
Text Label 5600 750  2    60   ~ 0
+5V
Text Label 5850 750  2    60   ~ 0
GND
Text Label 6200 2000 2    60   ~ 0
D0
Text Label 6200 2100 2    60   ~ 0
D1
Text Label 6200 2200 2    60   ~ 0
D2
Text Label 6200 2300 2    60   ~ 0
D3
Text Label 6200 2400 2    60   ~ 0
D4
Text Label 7400 1400 0    60   ~ 0
E
Text Label 7400 1500 0    60   ~ 0
GND
Text Label 7400 1600 0    60   ~ 0
A0
Text Label 7400 1700 0    60   ~ 0
/R_W
Text Label 7400 1800 0    60   ~ 0
R_/W
Text Label 7400 1900 0    60   ~ 0
/APUCE
Text Label 7400 2200 0    60   ~ 0
D7
Text Label 7400 2300 0    60   ~ 0
D6
Text Label 7400 2400 0    60   ~ 0
D5
Text Label 7550 2550 2    60   ~ 0
+12V
Text Label 7650 3000 0    60   ~ 0
GND
Text Label 8150 750  0    60   ~ 0
GND
Text Label 8400 750  0    60   ~ 0
+5V
Text Label 8400 1400 2    60   ~ 0
A12
Text Label 8400 1500 2    60   ~ 0
A7
Text Label 8400 1600 2    60   ~ 0
A6
Text Label 8400 1700 2    60   ~ 0
A5
Text Label 8400 1800 2    60   ~ 0
A4
Text Label 8400 1900 2    60   ~ 0
A3
Text Label 8400 2000 2    60   ~ 0
A2
Text Label 8400 2100 2    60   ~ 0
A1
Text Label 8400 2200 2    60   ~ 0
A0
Text Label 8400 2300 2    60   ~ 0
D0
Text Label 8400 2400 2    60   ~ 0
D1
Text Label 8400 2500 2    60   ~ 0
D2
Text Label 8400 2600 2    60   ~ 0
GND
Text Label 9600 1500 0    60   ~ 0
A13
Text Label 9600 1600 0    60   ~ 0
A8
Text Label 9600 1700 0    60   ~ 0
A9
Text Label 9600 1800 0    60   ~ 0
A11
Text Label 9600 1900 0    60   ~ 0
/OE
Text Label 9600 2000 0    60   ~ 0
A10
Text Label 9600 2100 0    60   ~ 0
/ROMCE
Text Label 9600 2200 0    60   ~ 0
D7
Text Label 9600 2300 0    60   ~ 0
D6
Text Label 9600 2400 0    60   ~ 0
D5
Text Label 9600 2500 0    60   ~ 0
D4
Text Label 9600 2600 0    60   ~ 0
D3
Text Label 10250 2000 2    60   ~ 0
D0
Text Label 10250 2100 2    60   ~ 0
D1
Text Label 10250 2200 2    60   ~ 0
D2
Text Label 10250 2300 2    60   ~ 0
D3
Text Label 10250 2400 2    60   ~ 0
D4
Text Label 10250 2500 2    60   ~ 0
D5
Text Label 10250 2600 2    60   ~ 0
D6
Text Label 10250 2700 2    60   ~ 0
D7
Text Label 10250 2800 2    60   ~ 0
A0
Text Label 10250 2900 2    60   ~ 0
A1
Text Label 10250 3000 2    60   ~ 0
A2
Text Label 10250 3100 2    60   ~ 0
A3
Text Label 10250 3200 2    60   ~ 0
A4
Text Label 10250 3300 2    60   ~ 0
A5
Text Label 10250 3400 2    60   ~ 0
A6
Text Label 10250 3500 2    60   ~ 0
A7
Text Label 10250 3600 2    60   ~ 0
A8
Text Label 10250 3700 2    60   ~ 0
A9
Text Label 10250 3800 2    60   ~ 0
A10
Text Label 10250 3900 2    60   ~ 0
A11
Text Label 10750 3900 0    60   ~ 0
A12
Text Label 10750 3800 0    60   ~ 0
A13
Text Label 10750 3700 0    60   ~ 0
A14
Text Label 10750 3600 0    60   ~ 0
A15
Text Label 10750 2100 0    60   ~ 0
/NMI
Text Label 10750 2200 0    60   ~ 0
/IRQ
Text Label 10750 2300 0    60   ~ 0
/FIRQ
Text Label 10750 2400 0    60   ~ 0
E
Text Label 10750 2500 0    60   ~ 0
R_/W
Text Label 10750 2600 0    60   ~ 0
/RESET
Text Label 9750 3650 0    60   ~ 0
+5V
Text Label 9650 3250 0    60   ~ 0
GND
Text Label 8350 3650 2    60   ~ 0
A14
Text Label 8350 3750 2    60   ~ 0
A12
Text Label 8350 3850 2    60   ~ 0
A7
Text Label 8350 3950 2    60   ~ 0
A6
Text Label 8350 4050 2    60   ~ 0
A5
Text Label 8350 4150 2    60   ~ 0
A4
Text Label 8350 4250 2    60   ~ 0
A3
Text Label 8350 4350 2    60   ~ 0
A2
Text Label 8350 4450 2    60   ~ 0
A1
Text Label 8350 4550 2    60   ~ 0
A0
Text Label 8350 4650 2    60   ~ 0
D0
Text Label 8350 4750 2    60   ~ 0
D1
Text Label 8350 4850 2    60   ~ 0
D2
Text Label 8350 4950 2    60   ~ 0
GND
Text Label 9550 4950 0    60   ~ 0
D3
Text Label 9550 4850 0    60   ~ 0
D4
Text Label 9550 4750 0    60   ~ 0
D5
Text Label 9550 4650 0    60   ~ 0
D6
Text Label 9550 4550 0    60   ~ 0
D7
Text Label 9550 4350 0    60   ~ 0
A10
Text Label 9550 4250 0    60   ~ 0
/OE
Text Label 9550 4150 0    60   ~ 0
A11
Text Label 9550 4050 0    60   ~ 0
A9
Text Label 9550 3950 0    60   ~ 0
A8
Text Label 9550 3850 0    60   ~ 0
A13
Text Label 9550 3750 0    60   ~ 0
/RAMWE
Text Label 9150 5400 0    60   ~ 0
+5V
Text Label 9150 6450 0    60   ~ 0
GND
Text Label 8050 5450 2    50   ~ 0
/BUFFER_FULL
Text Label 8050 5550 2    60   ~ 0
/RTS
NoConn ~ 1500 6700
Text Label 2500 7000 0    60   ~ 0
EXTAL
Text Label 2500 6700 0    60   ~ 0
+5V
$Comp
L 8254 U7
U 1 1 5B2DDCFE
P 6300 4750
F 0 "U7" H 6050 5500 60  0000 C CNN
F 1 "8254" H 6300 4000 60  0000 C CNN
F 2 "Housings_DIP:DIP-24_W15.24mm_Socket" H 6300 4300 60  0001 C CNN
F 3 "" H 6300 4300 60  0001 C CNN
	1    6300 4750
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x05_Odd_Even J1
U 1 1 5B2DDFCD
P 3500 7250
F 0 "J1" H 3550 7550 50  0000 C CNN
F 1 "HEADER 2x5" H 3550 6950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05_Pitch2.54mm" H 3500 7250 50  0001 C CNN
F 3 "" H 3500 7250 50  0001 C CNN
	1    3500 7250
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x05_Odd_Even J3
U 1 1 5B2DE0EA
P 4500 7250
F 0 "J3" H 4550 7550 50  0000 C CNN
F 1 "HEADER 2x5" H 4550 6950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05_Pitch2.54mm" H 4500 7250 50  0001 C CNN
F 3 "" H 4500 7250 50  0001 C CNN
	1    4500 7250
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x05_Odd_Even J4
U 1 1 5B2DE16F
P 5500 7250
F 0 "J4" H 5550 7550 50  0000 C CNN
F 1 "HEADER 2x5" H 5550 6950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05_Pitch2.54mm" H 5500 7250 50  0001 C CNN
F 3 "" H 5500 7250 50  0001 C CNN
	1    5500 7250
	1    0    0    -1  
$EndComp
Text Label 2650 4400 0    60   ~ 0
EXTAL
Text Label 2650 5100 0    60   ~ 0
D0
Text Label 2650 5200 0    60   ~ 0
D1
Text Label 2650 5300 0    60   ~ 0
D2
Text Label 2650 5400 0    60   ~ 0
D3
Text Label 2650 5500 0    60   ~ 0
D4
Text Label 2650 5600 0    60   ~ 0
D5
Text Label 2650 5700 0    60   ~ 0
D6
Text Label 2650 5800 0    60   ~ 0
D7
Text Label 2650 5900 0    60   ~ 0
A15
Text Label 2650 6000 0    60   ~ 0
A14
Text Label 2650 6100 0    60   ~ 0
A13
Text Label 1450 6100 2    60   ~ 0
A12
Text Label 1450 6000 2    60   ~ 0
A11
Text Label 1450 5900 2    60   ~ 0
A10
Text Label 1450 5800 2    60   ~ 0
A9
Text Label 1450 5700 2    60   ~ 0
A8
Text Label 1450 5600 2    60   ~ 0
A7
Text Label 1450 5500 2    60   ~ 0
A6
Text Label 1450 5400 2    60   ~ 0
A5
Text Label 1450 5300 2    60   ~ 0
A4
Text Label 1450 5200 2    60   ~ 0
A3
Text Label 1450 5100 2    60   ~ 0
A2
Text Label 1450 5000 2    60   ~ 0
A1
Text Label 1450 4900 2    60   ~ 0
A0
Text Label 3750 4700 2    60   ~ 0
/PPICE
Text Label 3750 4800 2    60   ~ 0
GND
Text Label 3750 4900 2    60   ~ 0
A1
Text Label 3750 5000 2    60   ~ 0
A0
Text Label 3750 4600 2    60   ~ 0
/R_W
Text Label 4950 4600 0    60   ~ 0
R_/W
Text Label 4950 4700 0    60   ~ 0
GND
Text Label 4950 4800 0    60   ~ 0
D0
Text Label 4950 4900 0    60   ~ 0
D1
Text Label 4950 5000 0    60   ~ 0
D2
Text Label 4950 5100 0    60   ~ 0
D3
Text Label 4950 5200 0    60   ~ 0
D4
Text Label 4950 5300 0    60   ~ 0
D5
Text Label 4950 5400 0    60   ~ 0
D6
Text Label 4950 5500 0    60   ~ 0
D7
$Comp
L R R1
U 1 1 5B2E18A0
P 650 4100
F 0 "R1" V 730 4100 50  0000 C CNN
F 1 "2.2k" V 650 4100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 580 4100 50  0001 C CNN
F 3 "" H 650 4100 50  0001 C CNN
	1    650  4100
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5B2E197C
P 800 4100
F 0 "R2" V 880 4100 50  0000 C CNN
F 1 "2.2k" V 800 4100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 730 4100 50  0001 C CNN
F 3 "" H 800 4100 50  0001 C CNN
	1    800  4100
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5B2E19FF
P 950 4100
F 0 "R4" V 1030 4100 50  0000 C CNN
F 1 "2.2k" V 950 4100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 880 4100 50  0001 C CNN
F 3 "" H 950 4100 50  0001 C CNN
	1    950  4100
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5B2E1A7E
P 2700 3950
F 0 "R5" V 2780 3950 50  0000 C CNN
F 1 "2.2k" V 2700 3950 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2630 3950 50  0001 C CNN
F 3 "" H 2700 3950 50  0001 C CNN
	1    2700 3950
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5B2E1B51
P 3000 3950
F 0 "R6" V 3080 3950 50  0000 C CNN
F 1 "2.2k" V 3000 3950 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2930 3950 50  0001 C CNN
F 3 "" H 3000 3950 50  0001 C CNN
	1    3000 3950
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5B2E1BC0
P 3150 3950
F 0 "R7" V 3230 3950 50  0000 C CNN
F 1 "2.2k" V 3150 3950 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3080 3950 50  0001 C CNN
F 3 "" H 3150 3950 50  0001 C CNN
	1    3150 3950
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5B2E1C43
P 3300 3950
F 0 "R8" V 3380 3950 50  0000 C CNN
F 1 "2.2k" V 3300 3950 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3230 3950 50  0001 C CNN
F 3 "" H 3300 3950 50  0001 C CNN
	1    3300 3950
	1    0    0    -1  
$EndComp
Text Label 800  3750 0    60   ~ 0
+5V
Text Label 950  4300 0    60   ~ 0
/NMI
Text Label 950  4400 0    60   ~ 0
/IRQ
Text Label 950  4500 0    60   ~ 0
/FIRQ
Text Label 3000 3600 0    60   ~ 0
+5V
Text Label 3150 5700 0    60   ~ 0
GND
Text Label 2900 4200 1    60   ~ 0
/HALT
Text Label 3350 5000 3    60   ~ 0
/RESET
Text Label 650  4700 0    60   ~ 0
+5V
Text Label 650  5300 0    60   ~ 0
GND
Text Label 10750 2700 0    60   ~ 0
/HALT
Text Notes 1400 3650 0    40   ~ 0
Use decimal 16 for the baud rate divisor to\nsend/receive data at a rate of 115200bps
Text Label 10750 2800 0    60   ~ 0
BS
Text Label 10750 2900 0    60   ~ 0
BA
$Comp
L CP1_Small C17
U 1 1 5B2F8AC7
P 11050 2850
F 0 "C17" H 11060 2920 50  0000 L CNN
F 1 "10u" H 11060 2770 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 11050 2850 50  0001 C CNN
F 3 "" H 11050 2850 50  0001 C CNN
	1    11050 2850
	1    0    0    -1  
$EndComp
Text Label 11050 3150 0    60   ~ 0
GND
Text Label 10900 1950 0    60   ~ 0
+5V
Text Label 10750 3200 0    60   ~ 0
/R_W
Text Label 3750 4200 2    60   ~ 0
PA3
Text Label 3750 4300 2    60   ~ 0
PA2
Text Label 3750 4400 2    60   ~ 0
PA1
Text Label 3750 4500 2    60   ~ 0
PA0
Text Label 4950 4200 0    60   ~ 0
PA4
Text Label 4950 4300 0    60   ~ 0
PA5
Text Label 4950 4400 0    60   ~ 0
PA6
Text Label 4950 4500 0    60   ~ 0
PA7
Text Label 4950 5700 0    60   ~ 0
PB7
Text Label 4950 5800 0    60   ~ 0
PB6
Text Label 4950 5900 0    60   ~ 0
PB5
Text Label 4950 6000 0    60   ~ 0
PB4
Text Label 4950 6100 0    60   ~ 0
PB3
Text Label 3750 5100 2    60   ~ 0
PC7
Text Label 3750 5200 2    60   ~ 0
PC6
Text Label 3750 5300 2    60   ~ 0
PC5
Text Label 3750 5400 2    60   ~ 0
PC4
Text Label 3750 5500 2    60   ~ 0
PC0
Text Label 3750 5600 2    60   ~ 0
PC1
Text Label 3750 5700 2    60   ~ 0
PC2
Text Label 3750 5800 2    60   ~ 0
PC3
Text Label 3750 5900 2    60   ~ 0
PB0
Text Label 3750 6000 2    60   ~ 0
PB1
Text Label 3750 6100 2    60   ~ 0
PB2
Text Label 5200 5500 0    60   ~ 0
+5V
Text Label 5200 6600 0    60   ~ 0
GND
Text Label 3300 7050 2    60   ~ 0
GND
Text Label 3300 7150 2    60   ~ 0
PA0
Text Label 3300 7250 2    60   ~ 0
PA1
Text Label 3300 7350 2    60   ~ 0
PA2
Text Label 3300 7450 2    60   ~ 0
PA3
Text Label 3800 7050 0    60   ~ 0
+5V
Text Label 3800 7150 0    60   ~ 0
PA7
Text Label 3800 7250 0    60   ~ 0
PA6
Text Label 3800 7350 0    60   ~ 0
PA5
Text Label 3800 7450 0    60   ~ 0
PA4
Text Label 1500 7000 2    60   ~ 0
GND
Text Label 4300 7050 2    60   ~ 0
GND
Text Label 4300 7150 2    60   ~ 0
PB0
Text Label 4300 7250 2    60   ~ 0
PB1
Text Label 4300 7350 2    60   ~ 0
PB2
Text Label 4300 7450 2    60   ~ 0
PB3
Text Label 4800 7050 0    60   ~ 0
+5V
Text Label 4800 7150 0    60   ~ 0
PB7
Text Label 4800 7250 0    60   ~ 0
PB6
Text Label 4800 7350 0    60   ~ 0
PB5
Text Label 4800 7450 0    60   ~ 0
PB4
Text Label 5300 7050 2    60   ~ 0
GND
Text Label 5300 7150 2    60   ~ 0
PC0
Text Label 5300 7250 2    60   ~ 0
PC1
Text Label 5300 7350 2    60   ~ 0
PC2
Text Label 5300 7450 2    60   ~ 0
PC3
Text Label 5800 7050 0    60   ~ 0
+5V
Text Label 5800 7150 0    60   ~ 0
PC7
Text Label 5800 7250 0    60   ~ 0
PC6
Text Label 5800 7350 0    60   ~ 0
PC5
Text Label 5800 7450 0    60   ~ 0
PC4
Text Notes 3900 6900 0    60   ~ 0
8-bit Parallel GPIO Port x 3
Text Label 5700 4200 2    60   ~ 0
D7
Text Label 5700 4300 2    60   ~ 0
D6
Text Label 5700 4400 2    60   ~ 0
D5
Text Label 5700 4500 2    60   ~ 0
D4
Text Label 5700 4600 2    60   ~ 0
D3
Text Label 5700 4700 2    60   ~ 0
D2
Text Label 5700 4800 2    60   ~ 0
D1
Text Label 5700 4900 2    60   ~ 0
D0
Text Label 5700 5300 2    60   ~ 0
GND
Text Label 6900 4300 0    60   ~ 0
R_/W
Text Label 6900 4400 0    60   ~ 0
/R_W
Text Label 6900 4500 0    60   ~ 0
/PITCE
Text Label 6900 4600 0    60   ~ 0
A1
Text Label 6900 4700 0    60   ~ 0
A0
Text Label 8850 5550 0    60   ~ 0
GND
Text Label 8850 5750 0    60   ~ 0
GND
Text Label 8850 5950 0    60   ~ 0
GND
Text Label 5700 5000 2    60   ~ 0
E
Text Label 7350 3950 0    60   ~ 0
+5V
Text Label 7350 5800 0    60   ~ 0
GND
Text Label 10750 3400 0    60   ~ 0
OUT1
Text Label 10750 3500 0    60   ~ 0
OUT0
Text Label 6900 4800 0    60   ~ 0
E
Text Label 6900 5300 0    60   ~ 0
OUT1
Text Label 5250 2200 0    60   ~ 0
/R_W
Text Notes 2000 6550 0    60   ~ 0
Master Clock Generator
Text Notes 5600 3800 0    60   ~ 0
Programmable Interval Timer
Text Notes 3850 3900 0    60   ~ 0
Programmable Peripheral\nInterface
$Comp
L R R9
U 1 1 5B2DC0AA
P 7500 1050
F 0 "R9" V 7580 1050 50  0000 C CNN
F 1 "2.2k" V 7500 1050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7430 1050 50  0001 C CNN
F 3 "" H 7500 1050 50  0001 C CNN
	1    7500 1050
	1    0    0    -1  
$EndComp
Text Label 7500 750  0    60   ~ 0
+5V
Text Label 7650 1300 0    60   ~ 0
/END
Text Label 10750 3300 0    60   ~ 0
/END
Text Notes 6200 1000 0    60   ~ 0
         Socket for\nArithmetic Processing Unit
NoConn ~ 8050 5950
Text Notes 4150 1000 0    60   ~ 0
PLD\nAddress decoder logic
Text Notes 1650 1050 0    50   ~ 0
Asynchronous \nCommunication\nInterface Adapter
$Comp
L Conn_01x01 J6
U 1 1 5B30B973
P 6650 6650
F 0 "J6" H 6650 6750 50  0000 C CNN
F 1 "TP2" H 6650 6550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6650 6650 50  0001 C CNN
F 3 "" H 6650 6650 50  0001 C CNN
	1    6650 6650
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J7
U 1 1 5B30BA0A
P 6650 6950
F 0 "J7" H 6650 7050 50  0000 C CNN
F 1 "TP4" H 6650 6850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6650 6950 50  0001 C CNN
F 3 "" H 6650 6950 50  0001 C CNN
	1    6650 6950
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J8
U 1 1 5B30BA97
P 6650 7250
F 0 "J8" H 6650 7350 50  0000 C CNN
F 1 "TP5" H 6650 7150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6650 7250 50  0001 C CNN
F 3 "" H 6650 7250 50  0001 C CNN
	1    6650 7250
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J5
U 1 1 5B30BB26
P 6650 6350
F 0 "J5" H 6650 6450 50  0000 C CNN
F 1 "TP1" H 6650 6250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6650 6350 50  0001 C CNN
F 3 "" H 6650 6350 50  0001 C CNN
	1    6650 6350
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J9
U 1 1 5B30BBA9
P 6650 7550
F 0 "J9" H 6650 7650 50  0000 C CNN
F 1 "TP6" H 6650 7450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6650 7550 50  0001 C CNN
F 3 "" H 6650 7550 50  0001 C CNN
	1    6650 7550
	1    0    0    -1  
$EndComp
Text Label 6450 7550 2    60   ~ 0
GND
Text Label 6450 7250 2    60   ~ 0
+5V
Text Label 6450 6950 2    60   ~ 0
+12V
Text Label 6450 6650 2    60   ~ 0
OUT1
Text Label 6450 6350 2    60   ~ 0
OUT0
Text Label 9550 4450 0    60   ~ 0
A15
NoConn ~ 8050 5750
Text Label 8050 5650 2    60   ~ 0
GND
Text Label 8050 5850 2    60   ~ 0
GND
Text Label 5700 5200 2    60   ~ 0
+5V
Text Notes 8625 925  0    60   ~ 0
$C000 - $FFFF, 16kB\nROM (Monitor Program)
Text Notes 8400 3375 0    60   ~ 0
$0000 - $7FFF, 32kB\nSRAM
Text Notes 2450 1050 0    40   ~ 0
Hardware flow-control (for receiving data only) is \nimplemented by using MC6850's /IRQ pin. \nReceive Interrupt Enable Bit (CR7) must be set.
Text Notes 5450 6100 0    40   ~ 0
The bus clock (2MHz) is fed to the Counter 0 and \nCounter 2.\nThe Counter 2 and Counter 1 are concatenated to \nform a single 16-bit counter with prescaler and is \nfomed with the Counter 2 as the 16-bit prescaler.\n\nThe Counter 0 is expected to be used for \nsimple tone generation. 
Text Notes 1350 7500 0    40   ~ 0
The bus frequency is 2MHz. This is because it is \none fourth (1/4) the master clock frequency \n(8MHz).
Text Notes 3400 7700 0    60   ~ 0
Port A
Text Notes 4400 7700 0    60   ~ 0
Port B
Text Notes 5400 7700 0    60   ~ 0
Port C
$Comp
L 74HCU04 U13
U 1 1 5B2FA490
P 10650 1050
F 0 "U13" H 10525 1550 60  0000 C CNN
F 1 "74HCU04" H 10650 550 60  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 10675 350 60  0001 C CNN
F 3 "" H 10675 350 60  0001 C CNN
	1    10650 1050
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5B2FAEF9
P 9950 600
F 0 "R10" V 10030 600 50  0000 C CNN
F 1 "3.3k" V 9950 600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9880 600 50  0001 C CNN
F 3 "" H 9950 600 50  0001 C CNN
	1    9950 600 
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 5B2FAFEB
P 9950 900
F 0 "R11" V 10030 900 50  0000 C CNN
F 1 "10k" V 9950 900 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9880 900 50  0001 C CNN
F 3 "" H 9950 900 50  0001 C CNN
	1    9950 900 
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C14
U 1 1 5B2FE536
P 9900 1350
F 0 "C14" H 9975 1400 50  0000 L CNN
F 1 "100u" H 9925 1275 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P2.50mm" H 9900 1350 50  0001 C CNN
F 3 "" H 9900 1350 50  0001 C CNN
	1    9900 1350
	1    0    0    -1  
$EndComp
Text Label 11050 750  0    50   ~ 0
+5V
Text Label 10250 1450 0    60   ~ 0
GND
Text Label 9900 1450 3    40   ~ 0
AUDIO_OUT
Text Label 9350 600  2    50   ~ 0
AUDIO_IN
Text Label 10350 4450 2    60   ~ 0
+5V
Text Label 10350 4550 2    60   ~ 0
GND
$Comp
L Jumper_NC_Small JP1
U 1 1 5B308D10
P 5300 4950
F 0 "JP1" H 5300 5030 50  0000 C CNN
F 1 "PIT Test (normally installed)" H 5750 4875 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5300 4950 50  0001 C CNN
F 3 "" H 5300 4950 50  0001 C CNN
	1    5300 4950
	0    -1   -1   0   
$EndComp
Text Label 5300 4600 1    50   ~ 0
AUDIO_IN
Text Label 5300 5150 3    60   ~ 0
OUT0
$Comp
L Conn_01x02 J11
U 1 1 5B30954B
P 7875 6250
F 0 "J11" H 7875 6350 50  0000 C CNN
F 1 "AUDIO OUT" H 7875 6050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7875 6250 50  0001 C CNN
F 3 "" H 7875 6250 50  0001 C CNN
	1    7875 6250
	1    0    0    -1  
$EndComp
Text Label 7675 6350 2    60   ~ 0
GND
Text Label 7675 6250 2    50   ~ 0
AUDIO_OUT
$Comp
L C_Small C10
U 1 1 5B30EE55
P 9650 600
F 0 "C10" V 9600 650 50  0000 L CNN
F 1 "0.33u" V 9600 350 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L7.2mm_W3.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 9650 600 50  0001 C CNN
F 3 "" H 9650 600 50  0001 C CNN
	1    9650 600 
	0    1    1    0   
$EndComp
Text Label 2650 4300 0    60   ~ 0
GND
$Comp
L CP1_Small C16
U 1 1 5B3174A7
P 10900 6100
F 0 "C16" H 10910 6170 50  0000 L CNN
F 1 "47u" H 10910 6020 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 10900 6100 50  0001 C CNN
F 3 "" H 10900 6100 50  0001 C CNN
	1    10900 6100
	1    0    0    -1  
$EndComp
Text Label 10900 6350 0    60   ~ 0
GND
Text Label 1300 1300 0    60   ~ 0
GND
Text Label 1450 4600 2    60   ~ 0
BS
Text Label 1450 4700 2    60   ~ 0
BA
Text Label 3400 3600 0    60   ~ 0
MRDY
Text Label 7400 2000 0    60   ~ 0
MRDY
Text Label 10750 3100 0    60   ~ 0
Q
Text Label 2650 4700 0    60   ~ 0
Q
$Comp
L C_Small C13
U 1 1 5B96DFFE
P 3050 3050
F 0 "C13" H 3060 3120 50  0000 L CNN
F 1 "0.1u" H 3060 2970 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3050 3050 50  0001 C CNN
F 3 "" H 3050 3050 50  0001 C CNN
	1    3050 3050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C12
U 1 1 5B96EE63
P 2850 6800
F 0 "C12" H 2860 6870 50  0000 L CNN
F 1 "0.1u" H 2860 6720 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 2850 6800 50  0001 C CNN
F 3 "" H 2850 6800 50  0001 C CNN
	1    2850 6800
	1    0    0    -1  
$EndComp
$Comp
L U3V12F12 U12
U 1 1 5B973F86
P 10300 5800
F 0 "U12" H 10250 6100 60  0000 C CNN
F 1 "U3V12F12" H 10250 5500 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 10300 5800 60  0001 C CNN
F 3 "" H 10300 5800 60  0001 C CNN
	1    10300 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1300 3400 1300
Wire Wire Line
	1100 1900 1100 800 
Wire Wire Line
	2700 1400 2800 1400
Wire Wire Line
	2800 1400 2800 1300
Connection ~ 2800 1300
Wire Wire Line
	700  2000 1500 2000
Wire Wire Line
	700  2200 1500 2200
Wire Wire Line
	700  1100 700  2200
Wire Wire Line
	5850 1400 6200 1400
Wire Wire Line
	5350 900  5350 750 
Wire Wire Line
	5850 750  5850 900 
Wire Wire Line
	6200 1300 6050 1300
Wire Wire Line
	6050 850  5850 850 
Connection ~ 5850 850 
Wire Wire Line
	5250 1300 5850 1300
Wire Wire Line
	5850 1200 5850 1400
Wire Wire Line
	5350 1200 5350 1300
Connection ~ 5350 1300
Connection ~ 5850 1300
Wire Wire Line
	5600 750  5600 1300
Connection ~ 5600 1300
Wire Wire Line
	7400 2100 7650 2100
Wire Wire Line
	7650 2100 7650 2600
Wire Wire Line
	7550 2550 7650 2550
Connection ~ 7650 2550
Wire Wire Line
	1100 800  1650 800 
Wire Wire Line
	10350 4450 10600 4450
Wire Wire Line
	10350 4550 10600 4550
Wire Wire Line
	10450 4400 10450 4450
Connection ~ 10450 4450
Wire Wire Line
	10450 4650 10450 4550
Connection ~ 10450 4550
Wire Wire Line
	1200 1600 1500 1600
Wire Wire Line
	1500 1500 1450 1500
Wire Wire Line
	1450 1500 1450 1600
Connection ~ 1450 1600
Wire Wire Line
	3100 1300 3100 2500
Connection ~ 3100 1300
Wire Wire Line
	4050 2400 3100 2400
Connection ~ 3100 2400
Wire Wire Line
	8400 750  8400 1300
Wire Wire Line
	8400 1000 9600 1000
Wire Wire Line
	9600 1000 9600 1300
Wire Wire Line
	8400 1300 8150 1300
Wire Wire Line
	8150 1300 8150 1200
Connection ~ 8400 1300
Connection ~ 8400 1000
Wire Wire Line
	8150 750  8150 900 
Wire Wire Line
	9600 1400 9700 1400
Wire Wire Line
	9700 1400 9700 1300
Wire Wire Line
	9700 1300 9600 1300
Connection ~ 9600 1300
Wire Wire Line
	9550 3650 9750 3650
Wire Wire Line
	9650 3550 9650 3650
Connection ~ 9650 3650
Wire Wire Line
	8850 5450 9150 5450
Wire Wire Line
	9150 5400 9150 5950
Connection ~ 9150 5450
Wire Wire Line
	9150 6250 9150 6450
Connection ~ 9150 6350
Wire Wire Line
	8000 6350 9150 6350
Wire Wire Line
	8050 6050 8000 6050
Wire Wire Line
	8000 6050 8000 6350
Wire Wire Line
	1450 4300 950  4300
Wire Wire Line
	950  4300 950  4250
Wire Wire Line
	1450 4400 800  4400
Wire Wire Line
	800  4400 800  4250
Wire Wire Line
	1450 4500 650  4500
Wire Wire Line
	650  4500 650  4250
Wire Wire Line
	650  3950 650  3850
Wire Wire Line
	650  3850 950  3850
Wire Wire Line
	950  3850 950  3950
Wire Wire Line
	800  3750 800  3950
Connection ~ 800  3850
Wire Wire Line
	2650 4200 2900 4200
Wire Wire Line
	2700 4200 2700 4100
Wire Wire Line
	2650 4500 3150 4500
Wire Wire Line
	3150 4100 3150 5150
Connection ~ 3150 4500
Wire Wire Line
	2650 4600 3400 4600
Wire Wire Line
	3000 4600 3000 4100
Wire Wire Line
	2650 4900 3300 4900
Wire Wire Line
	3300 4900 3300 4100
Connection ~ 2700 4200
Wire Wire Line
	3150 5550 3150 5700
Wire Wire Line
	3150 5000 3350 5000
Connection ~ 3150 5000
Wire Wire Line
	2700 3800 2700 3700
Wire Wire Line
	2700 3700 3300 3700
Wire Wire Line
	3300 3700 3300 3800
Wire Wire Line
	3000 3600 3000 3800
Connection ~ 3000 3700
Wire Wire Line
	3150 3800 3150 3700
Connection ~ 3150 3700
Wire Wire Line
	1450 4800 650  4800
Wire Wire Line
	650  4700 650  4900
Connection ~ 650  4800
Wire Wire Line
	11050 2750 11050 2700
Wire Wire Line
	11050 2700 11150 2700
Wire Wire Line
	11150 2700 11150 2000
Wire Wire Line
	11150 2000 10750 2000
Wire Wire Line
	11050 2950 11050 3150
Wire Wire Line
	10750 3000 11050 3000
Connection ~ 11050 3000
Wire Wire Line
	10900 1950 10900 2000
Connection ~ 10900 2000
Wire Wire Line
	4950 5600 5200 5600
Wire Wire Line
	5200 5500 5200 6200
Connection ~ 5200 5600
Wire Wire Line
	7350 3950 7350 5400
Wire Wire Line
	6900 4900 7200 4900
Wire Wire Line
	7200 4900 7200 5100
Wire Wire Line
	7200 5100 6900 5100
Wire Wire Line
	7500 750  7500 900 
Wire Wire Line
	7400 1300 7650 1300
Wire Wire Line
	7500 1200 7500 1300
Connection ~ 7500 1300
Connection ~ 700  2000
Wire Wire Line
	1050 1900 1500 1900
Connection ~ 1100 1900
Wire Wire Line
	750  1900 700  1900
Connection ~ 700  1900
Wire Wire Line
	6900 5000 7350 5000
Connection ~ 7350 5000
Wire Wire Line
	6900 5200 7350 5200
Connection ~ 7350 5200
Wire Wire Line
	9950 750  10250 750 
Wire Wire Line
	10150 600  10150 1650
Wire Wire Line
	10150 950  10250 950 
Wire Wire Line
	10150 1150 10250 1150
Connection ~ 10150 950 
Wire Wire Line
	11100 1250 11050 1250
Wire Wire Line
	11100 850  11100 1650
Wire Wire Line
	11100 1650 10150 1650
Connection ~ 10150 1150
Wire Wire Line
	11050 1050 11100 1050
Connection ~ 11100 1250
Wire Wire Line
	11050 850  11100 850 
Connection ~ 11100 1050
Wire Wire Line
	10250 850  10200 850 
Wire Wire Line
	10200 850  10200 1700
Wire Wire Line
	9950 1050 10250 1050
Wire Wire Line
	9900 1250 10250 1250
Connection ~ 10200 1050
Wire Wire Line
	11050 950  11150 950 
Wire Wire Line
	11150 1150 11050 1150
Wire Wire Line
	11150 1350 11050 1350
Connection ~ 11150 1150
Wire Wire Line
	10200 1700 11150 1700
Connection ~ 11150 1350
Connection ~ 10200 1250
Connection ~ 10150 750 
Wire Wire Line
	10100 600  10150 600 
Wire Wire Line
	9800 600  9750 600 
Wire Wire Line
	11150 1700 11150 950 
Wire Wire Line
	5300 5050 5300 5150
Wire Wire Line
	5300 5100 5700 5100
Connection ~ 5300 5100
Wire Wire Line
	10900 6200 10900 6350
Wire Wire Line
	1300 1300 1500 1300
Wire Wire Line
	1400 2800 1400 3400
Wire Wire Line
	1400 2500 1400 2400
Wire Wire Line
	1500 1800 1300 1800
Wire Wire Line
	1050 2100 1500 2100
Wire Wire Line
	1500 2400 1200 2400
Connection ~ 1400 2400
Wire Wire Line
	1300 2300 1500 2300
Wire Wire Line
	1600 3250 1300 3250
Connection ~ 1400 3250
Wire Wire Line
	1500 1400 1300 1400
Wire Wire Line
	650  5200 650  5300
Wire Wire Line
	7650 2900 7650 3000
Wire Wire Line
	9550 600  9350 600 
Wire Wire Line
	10250 1350 10250 1450
Wire Wire Line
	5200 6500 5200 6600
Wire Wire Line
	5300 4850 5300 4600
Wire Wire Line
	7350 5700 7350 5800
Wire Wire Line
	6900 4200 7350 4200
Connection ~ 7350 4200
Connection ~ 3000 4600
Wire Wire Line
	3400 4600 3400 3600
Wire Wire Line
	3050 2950 2600 2950
Wire Wire Line
	3050 3150 3050 3400
Wire Wire Line
	2850 6700 2500 6700
Wire Wire Line
	2850 6900 2850 7150
Wire Wire Line
	1500 7000 1500 7150
Wire Wire Line
	1500 7150 2850 7150
Wire Wire Line
	3050 3400 1400 3400
Wire Wire Line
	10650 5700 11100 5700
Wire Wire Line
	10650 5900 10950 5900
Wire Wire Line
	10900 6000 10900 5900
Connection ~ 10900 5900
Wire Wire Line
	5900 1600 6200 1600
Wire Wire Line
	6000 1700 6200 1700
Wire Wire Line
	6050 1300 6050 850 
Wire Wire Line
	6200 1500 5700 1500
Wire Wire Line
	5700 1500 5700 2750
Wire Wire Line
	5900 2750 5900 1600
Wire Wire Line
	6000 2750 6000 1700
Text Label 5800 2750 1    60   ~ 0
GND
Text Notes 5400 3350 0    40   ~ 0
Make sure that pin 3 and pin 4 are \nconnected together unless justified
Text Label 6200 1800 2    60   ~ 0
Q
$Comp
L Conn_01x04 J10
U 1 1 5B99B0DD
P 5900 2950
F 0 "J10" V 6050 2900 50  0000 C CNN
F 1 "Conn_01x04" H 5900 2650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 5900 2950 50  0001 C CNN
F 3 "" H 5900 2950 50  0001 C CNN
	1    5900 2950
	0    1    1    0   
$EndComp
$EndSCHEMATC
