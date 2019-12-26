EESchema Schematic File Version 2
LIBS:sbclib
LIBS:My6809sbc-rescue
LIBS:IOExpansion-cache
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
Date "2019-11-10"
Rev "4e"
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
F 1 "MC6850" V 2175 1900 60  0000 C CNN
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
F 0 "U6" H 4325 2550 60  0000 C CNN
F 1 "GAL20V8" V 4575 1925 60  0000 C CNN
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
F 1 "HEADER 2x12" V 6775 1575 60  0000 C CNN
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
F 1 "27128" V 9000 1900 60  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket" H 9000 1900 50  0001 C CNN
F 3 "" H 9000 1900 50  0001 C CNN
	1    9000 1900
	1    0    0    -1  
$EndComp
$Comp
L 62256 U10
U 1 1 5B291E28
P 8975 3700
F 0 "U10" H 8675 4500 60  0000 C CNN
F 1 "62256" V 8975 3725 60  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket" H 8975 3300 60  0001 C CNN
F 3 "" H 8975 3300 60  0001 C CNN
	1    8975 3700
	1    0    0    -1  
$EndComp
$Comp
L MC6809 U2
U 1 1 5B291F35
P 2050 5200
F 0 "U2" H 1750 6400 60  0000 C CNN
F 1 "MC6809" V 2050 5025 60  0000 C CNN
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
F 0 "U5" H 3950 6350 60  0000 L CNN
F 1 "8255A" V 4350 5125 60  0000 L CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket" H 4350 5500 50  0001 C CNN
F 3 "" H 4350 5500 50  0001 C CNN
	1    4350 5200
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J13
U 1 1 5B2C075F
P 10900 4450
F 0 "J13" H 10900 4550 50  0000 C CNN
F 1 "Conn_01x02" H 10900 4250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 10900 4450 50  0001 C CNN
F 3 "" H 10900 4450 50  0001 C CNN
	1    10900 4450
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
Text Label 1650 800  2    50   ~ 0
/BUFFER_FULL
Text Label 10650 5800 0    60   ~ 0
GND
Text Label 10950 5900 0    60   ~ 0
+5V
Text Label 10850 5700 0    60   ~ 0
+12V
$Comp
L PWR_FLAG #FLG01
U 1 1 5B2BEF4D
P 10550 4400
F 0 "#FLG01" H 10550 4475 50  0001 C CNN
F 1 "PWR_FLAG" H 10550 4550 50  0000 C CNN
F 2 "" H 10550 4400 50  0001 C CNN
F 3 "" H 10550 4400 50  0001 C CNN
	1    10550 4400
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 5B2BEF93
P 10550 4650
F 0 "#FLG02" H 10550 4725 50  0001 C CNN
F 1 "PWR_FLAG" H 10550 4800 50  0000 C CNN
F 2 "" H 10550 4650 50  0001 C CNN
F 3 "" H 10550 4650 50  0001 C CNN
	1    10550 4650
	-1   0    0    1   
$EndComp
Text Notes 10800 4300 0    60   ~ 0
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
P 1200 6700
F 0 "U1" H 1000 7050 60  0000 C CNN
F 1 "8MHz" H 1200 6350 60  0000 C CNN
F 2 "Oscillators:Oscillator_DIP-8" H 1200 6250 60  0001 C CNN
F 3 "" H 1200 6250 60  0001 C CNN
	1    1200 6700
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
P 9675 2850
F 0 "C11" H 9700 2950 50  0000 L CNN
F 1 "0.1u" H 9475 2750 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 9713 2700 50  0001 C CNN
F 3 "" H 9675 2850 50  0001 C CNN
	1    9675 2850
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5B2C2BC5
P 5050 6925
F 0 "C9" H 5075 7025 50  0000 L CNN
F 1 "0.1u" H 5075 6825 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 5088 6775 50  0001 C CNN
F 3 "" H 5050 6925 50  0001 C CNN
	1    5050 6925
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
/ACIACE
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
A11
Text Label 4050 1800 2    60   ~ 0
A10
Text Label 4050 1900 2    60   ~ 0
A9
Text Label 4050 2000 2    60   ~ 0
A8
Text Label 4050 2100 2    60   ~ 0
R_/W
Text Label 4050 2200 2    60   ~ 0
E
Text Label 4050 2300 2    50   ~ 0
/BUFFER_FULL
Text Label 5250 1500 0    60   ~ 0
/RTS
Text Label 5250 1600 0    50   ~ 0
RESET
Text Label 5250 1800 0    60   ~ 0
/RAMCE
Text Label 5250 1900 0    60   ~ 0
/ROMCE
Text Label 5250 2000 0    60   ~ 0
/RD
Text Label 5250 2100 0    60   ~ 0
/WR
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
Text Label 7400 1600 0    60   ~ 0
A0
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
/RD
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
Text Label 9775 3100 0    60   ~ 0
+5V
Text Label 9675 2700 0    60   ~ 0
GND
Text Label 8375 3100 2    60   ~ 0
A14
Text Label 8375 3200 2    60   ~ 0
A12
Text Label 8375 3300 2    60   ~ 0
A7
Text Label 8375 3400 2    60   ~ 0
A6
Text Label 8375 3500 2    60   ~ 0
A5
Text Label 8375 3600 2    60   ~ 0
A4
Text Label 8375 3700 2    60   ~ 0
A3
Text Label 8375 3800 2    60   ~ 0
A2
Text Label 8375 3900 2    60   ~ 0
A1
Text Label 8375 4000 2    60   ~ 0
A0
Text Label 8375 4100 2    60   ~ 0
D0
Text Label 8375 4200 2    60   ~ 0
D1
Text Label 8375 4300 2    60   ~ 0
D2
Text Label 8375 4400 2    60   ~ 0
GND
Text Label 9575 4400 0    60   ~ 0
D3
Text Label 9575 4300 0    60   ~ 0
D4
Text Label 9575 4200 0    60   ~ 0
D5
Text Label 9575 4100 0    60   ~ 0
D6
Text Label 9575 4000 0    60   ~ 0
D7
Text Label 9575 3800 0    60   ~ 0
A10
Text Label 9575 3700 0    60   ~ 0
/RD
Text Label 9575 3600 0    60   ~ 0
A11
Text Label 9575 3500 0    60   ~ 0
A9
Text Label 9575 3400 0    60   ~ 0
A8
Text Label 9575 3300 0    60   ~ 0
A13
Text Label 9575 3200 0    60   ~ 0
/WR
NoConn ~ 700  6550
Text Label 1700 6850 0    60   ~ 0
EXTAL
Text Label 1700 6550 0    60   ~ 0
+5V
$Comp
L 8254 U7
U 1 1 5B2DDCFE
P 6300 4750
F 0 "U7" H 5850 5475 60  0000 C CNN
F 1 "8254" V 6300 4925 60  0000 C CNN
F 2 "Housings_DIP:DIP-24_W15.24mm_Socket" H 6300 4300 60  0001 C CNN
F 3 "" H 6300 4300 60  0001 C CNN
	1    6300 4750
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x05_Odd_Even J1
U 1 1 5B2DDFCD
P 2450 7275
F 0 "J1" H 2500 7575 50  0000 C CNN
F 1 "HEADER 2x5" H 2500 6975 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05_Pitch2.54mm" H 2450 7275 50  0001 C CNN
F 3 "" H 2450 7275 50  0001 C CNN
	1    2450 7275
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x05_Odd_Even J3
U 1 1 5B2DE0EA
P 3450 7275
F 0 "J3" H 3500 7575 50  0000 C CNN
F 1 "HEADER 2x5" H 3500 6975 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05_Pitch2.54mm" H 3450 7275 50  0001 C CNN
F 3 "" H 3450 7275 50  0001 C CNN
	1    3450 7275
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x05_Odd_Even J4
U 1 1 5B2DE16F
P 4450 7275
F 0 "J4" H 4500 7575 50  0000 C CNN
F 1 "HEADER 2x5" H 4500 6975 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05_Pitch2.54mm" H 4450 7275 50  0001 C CNN
F 3 "" H 4450 7275 50  0001 C CNN
	1    4450 7275
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
/RD
Text Label 4950 4600 0    60   ~ 0
/WR
Text Label 4950 4700 0    50   ~ 0
RESET
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
F 1 "10k" V 650 4100 50  0000 C CNN
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
F 1 "10k" V 800 4100 50  0000 C CNN
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
F 1 "10k" V 950 4100 50  0000 C CNN
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
F 1 "10k" V 2700 3950 50  0000 C CNN
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
F 1 "10k" V 3000 3950 50  0000 C CNN
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
F 1 "10k" V 3150 3950 50  0000 C CNN
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
F 1 "10k" V 3300 3950 50  0000 C CNN
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
Text Label 2250 7075 2    60   ~ 0
GND
Text Label 2250 7175 2    60   ~ 0
PA0
Text Label 2250 7275 2    60   ~ 0
PA1
Text Label 2250 7375 2    60   ~ 0
PA2
Text Label 2250 7475 2    60   ~ 0
PA3
Text Label 2750 7075 0    60   ~ 0
+5V
Text Label 2750 7175 0    60   ~ 0
PA7
Text Label 2750 7275 0    60   ~ 0
PA6
Text Label 2750 7375 0    60   ~ 0
PA5
Text Label 2750 7475 0    60   ~ 0
PA4
Text Label 700  6850 2    60   ~ 0
GND
Text Label 3250 7075 2    60   ~ 0
GND
Text Label 3250 7175 2    60   ~ 0
PB0
Text Label 3250 7275 2    60   ~ 0
PB1
Text Label 3250 7375 2    60   ~ 0
PB2
Text Label 3250 7475 2    60   ~ 0
PB3
Text Label 3750 7075 0    60   ~ 0
+5V
Text Label 3750 7175 0    60   ~ 0
PB7
Text Label 3750 7275 0    60   ~ 0
PB6
Text Label 3750 7375 0    60   ~ 0
PB5
Text Label 3750 7475 0    60   ~ 0
PB4
Text Label 4250 7075 2    60   ~ 0
GND
Text Label 4250 7175 2    60   ~ 0
PC0
Text Label 4250 7275 2    60   ~ 0
PC1
Text Label 4250 7375 2    60   ~ 0
PC2
Text Label 4250 7475 2    60   ~ 0
PC3
Text Label 4750 7075 0    60   ~ 0
+5V
Text Label 4750 7175 0    60   ~ 0
PC7
Text Label 4750 7275 0    60   ~ 0
PC6
Text Label 4750 7375 0    60   ~ 0
PC5
Text Label 4750 7475 0    60   ~ 0
PC4
Text Notes 2850 6925 0    60   ~ 0
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
/WR
Text Label 6900 4400 0    60   ~ 0
/RD
Text Label 6900 4500 0    60   ~ 0
/PITCE
Text Label 6900 4600 0    60   ~ 0
A1
Text Label 6900 4700 0    60   ~ 0
A0
Text Label 5700 5000 2    60   ~ 0
E
Text Label 7350 3950 3    60   ~ 0
+5V
Text Label 7350 5800 0    60   ~ 0
GND
Text Label 10750 3400 0    60   ~ 0
OUT1
Text Label 10750 3500 0    60   ~ 0
OUT0
Text Label 6900 4800 0    60   ~ 0
E
Text Label 6900 5300 0    50   ~ 0
OUT1
Text Label 5250 2200 0    60   ~ 0
IO
Text Notes 1200 6400 0    60   ~ 0
Master Clock Generator
Text Notes 5950 4075 0    60   ~ 0
Programmable Interval \nTimer
Text Notes 4225 4050 0    60   ~ 0
Programmable Peripheral\nInterface
Text Notes 6250 1050 0    60   ~ 0
APU Expansion Connector\n        (Am9511A)
Text Notes 4150 1000 0    60   ~ 0
PLD\nAddress decoder logic
Text Notes 1650 1050 0    50   ~ 0
Asynchronous \nCommunication\nInterface Adapter
Text Label 9575 3900 0    60   ~ 0
/RAMCE
Text Label 5700 5200 2    60   ~ 0
+5V
Text Notes 8625 925  0    60   ~ 0
$C000 - $FFFF, 16kB\nROM (Monitor Program)
Text Notes 8175 2825 0    60   ~ 0
$0000 - $7FFF, 32kB SRAM
Text Notes 2450 1050 0    40   ~ 0
Hardware flow-control (for receiving data only) is \nimplemented by using MC6850's /IRQ pin. \nReceive Interrupt Enable Bit (CR7) must be set.
Text Notes 5475 5875 0    40   ~ 0
The bus clock (2MHz) is fed to the Counter 0 and \nCounter 2.\nThe Counter 2 and Counter 1 are concatenated to \nform a single 16-bit counter (Counter 1) with a \n16-bit prescaler (Counter 2). \nThe Counter 0 is expected to be used for \nsimple tone generation. 
Text Notes 550  7350 0    40   ~ 0
The bus frequency is 2MHz. This is because it is \none fourth (1/4) the master clock frequency \n(8MHz).
Text Notes 2350 7725 0    60   ~ 0
Port A
Text Notes 3350 7725 0    60   ~ 0
Port B
Text Notes 4350 7725 0    60   ~ 0
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
OUT0
Text Label 10450 4450 2    60   ~ 0
+5V
Text Label 10450 4550 2    60   ~ 0
GND
Text Label 5425 5100 0    60   ~ 0
OUT0
$Comp
L Conn_01x02 J11
U 1 1 5B30954B
P 3200 6450
F 0 "J11" H 3200 6550 50  0000 C CNN
F 1 "AUDIO OUT" H 3200 6250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3200 6450 50  0001 C CNN
F 3 "" H 3200 6450 50  0001 C CNN
	1    3200 6450
	1    0    0    -1  
$EndComp
Text Label 3000 6550 2    60   ~ 0
GND
Text Label 3000 6450 2    50   ~ 0
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
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 3050 3050 50  0001 C CNN
F 3 "" H 3050 3050 50  0001 C CNN
	1    3050 3050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C12
U 1 1 5B96EE63
P 2050 6650
F 0 "C12" H 2060 6720 50  0000 L CNN
F 1 "0.1u" H 2060 6570 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 2050 6650 50  0001 C CNN
F 3 "" H 2050 6650 50  0001 C CNN
	1    2050 6650
	1    0    0    -1  
$EndComp
$Comp
L U3V12F12 U12
U 1 1 5B973F86
P 10300 5800
F 0 "U12" H 10175 6050 60  0000 C CNN
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
	10075 4450 10700 4450
Wire Wire Line
	10075 4550 10700 4550
Wire Wire Line
	10550 4400 10550 4450
Connection ~ 10550 4450
Wire Wire Line
	10550 4650 10550 4550
Connection ~ 10550 4550
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
	3100 2400 4050 2400
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
	9575 3100 9775 3100
Wire Wire Line
	9675 3000 9675 3100
Connection ~ 9675 3100
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
	1200 2400 1500 2400
Connection ~ 1400 2400
Wire Wire Line
	1300 2300 1500 2300
Wire Wire Line
	1300 3250 1600 3250
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
	2050 6550 1700 6550
Wire Wire Line
	2050 6750 2050 7000
Wire Wire Line
	700  6850 700  7000
Wire Wire Line
	700  7000 2050 7000
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
	6050 1300 6050 850 
Text Notes 3650 6600 0    40   ~ 0
8255A Port C Bit 0 (PC0)  is reserved for\nresetting arithmetic co-processor Am9511A\n(can be released by opening jumper JP?).
Text Label 6200 1800 2    60   ~ 0
Q
Text Label 7850 750  0    60   ~ 0
PC0
NoConn ~ 6200 1500
NoConn ~ 6200 1600
NoConn ~ 6200 1700
NoConn ~ 7400 1300
Text Label 7400 2000 0    60   ~ 0
MRDY
$Comp
L Jumper_NC_Dual JP1
U 1 1 5C38A3B3
P 7850 1500
F 0 "JP1" H 7900 1400 50  0000 L CNN
F 1 "RESET Selection" H 7850 1600 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 7850 1500 50  0001 C CNN
F 3 "" H 7850 1500 50  0001 C CNN
	1    7850 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 1500 7750 1500
Wire Wire Line
	7850 1250 7850 750 
Wire Wire Line
	7850 1750 7850 2100
Text Label 7850 2100 0    50   ~ 0
RESET
$Comp
L GAL16V8 U9
U 1 1 5DBFB71F
P 4650 3225
F 0 "U9" H 4950 3825 60  0000 C CNN
F 1 "GAL16V8" V 4575 3300 60  0000 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm_Socket" H 4650 2675 60  0001 C CNN
F 3 "" H 4650 2675 60  0001 C CNN
	1    4650 3225
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 5DBFCBD5
P 5600 2625
F 0 "C15" H 5625 2725 50  0000 L CNN
F 1 "0.1u" H 5625 2525 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 5638 2475 50  0001 C CNN
F 3 "" H 5600 2625 50  0001 C CNN
	1    5600 2625
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2475 5600 2375
Text Label 5600 2375 0    60   ~ 0
GND
Text Label 5400 2550 2    60   ~ 0
+5V
Wire Wire Line
	5400 2550 5400 2775
Connection ~ 5400 2775
Wire Wire Line
	4050 3675 3725 3675
Wire Wire Line
	3725 3675 3725 2400
Connection ~ 3725 2400
Text Label 10750 3300 0    60   ~ 0
MRDY
NoConn ~ 10750 3200
$Comp
L Jumper_NC_Dual JP2
U 1 1 5DC0D961
P 7975 3100
F 0 "JP2" H 8025 3000 50  0000 L CNN
F 1 "INT Selection" H 7975 3200 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 7975 3100 50  0001 C CNN
F 3 "" H 7975 3100 50  0001 C CNN
	1    7975 3100
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 5DC0E411
P 5750 3300
F 0 "R9" V 5830 3300 50  0000 C CNN
F 1 "7k5" V 5750 3300 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5680 3300 50  0001 C CNN
F 3 "" H 5750 3300 50  0001 C CNN
	1    5750 3300
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 5DC0E4F8
P 6425 2700
F 0 "R12" V 6505 2700 50  0000 C CNN
F 1 "100k" V 6425 2700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6355 2700 50  0001 C CNN
F 3 "" H 6425 2700 50  0001 C CNN
	1    6425 2700
	0    1    1    0   
$EndComp
$Comp
L C C19
U 1 1 5DC0ED32
P 7100 3725
F 0 "C19" H 7125 3825 50  0000 L CNN
F 1 "1u" H 7125 3625 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 7138 3575 50  0001 C CNN
F 3 "" H 7100 3725 50  0001 C CNN
	1    7100 3725
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 5DC0F190
P 5875 3725
F 0 "C18" H 5900 3825 50  0000 L CNN
F 1 "0.01u" H 5900 3625 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 5913 3575 50  0001 C CNN
F 3 "" H 5875 3725 50  0001 C CNN
	1    5875 3725
	1    0    0    -1  
$EndComp
Text Label 5825 2375 0    60   ~ 0
+5V
Text Label 6450 3700 0    60   ~ 0
GND
Text Label 7100 3875 2    60   ~ 0
GND
Text Label 5875 3875 2    60   ~ 0
GND
Wire Wire Line
	7975 2850 7975 2600
Wire Wire Line
	7975 3350 7975 3600
Text Label 7975 2600 3    60   ~ 0
/FIRQ
Text Label 7975 3600 1    60   ~ 0
/IRQ
$Comp
L R R15
U 1 1 5DC1AC49
P 10675 5050
F 0 "R15" V 10755 5050 50  0000 C CNN
F 1 "1k" V 10675 5050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10605 5050 50  0001 C CNN
F 3 "" H 10675 5050 50  0001 C CNN
	1    10675 5050
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 5DC1D662
P 10675 5250
F 0 "R16" V 10755 5250 50  0000 C CNN
F 1 "1k" V 10675 5250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10605 5250 50  0001 C CNN
F 3 "" H 10675 5250 50  0001 C CNN
	1    10675 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	10425 5050 10525 5050
Wire Wire Line
	10425 5250 10525 5250
Text Label 9825 5150 2    60   ~ 0
GND
Text Label 10825 5050 0    60   ~ 0
+5V
Text Label 10825 5250 0    60   ~ 0
+12V
NoConn ~ 7400 1700
Text Notes 7325 3175 0    50   ~ 0
10 ms tick
Text Notes 10550 4925 0    50   ~ 0
\nPower Indicator
$Comp
L LED_Dual_ACA D2
U 1 1 5DC255EE
P 10125 5150
F 0 "D2" H 9850 5325 50  0000 C CNN
F 1 "LED_Dual_ACA" H 10125 4900 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm-3" H 10125 5150 50  0001 C CNN
F 3 "" H 10125 5150 50  0001 C CNN
	1    10125 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2575 5950 3100
Wire Wire Line
	5950 2700 6275 2700
Wire Wire Line
	6575 2700 6950 2700
Wire Wire Line
	6950 2700 6950 3100
Wire Wire Line
	6950 3100 7875 3100
Connection ~ 6950 3100
Wire Wire Line
	5950 3100 5750 3100
Wire Wire Line
	5750 3100 5750 3150
Wire Wire Line
	5750 3450 5750 3500
Wire Wire Line
	5625 3500 5950 3500
Connection ~ 5950 3100
Wire Wire Line
	6450 2850 6450 2900
Wire Wire Line
	5625 2850 6450 2850
Wire Wire Line
	5625 2850 5625 3500
Connection ~ 5750 3500
NoConn ~ 6950 3300
Wire Wire Line
	6950 3500 7100 3500
Wire Wire Line
	7100 2575 7100 3575
Wire Wire Line
	7100 2575 5950 2575
Connection ~ 5950 2700
Wire Wire Line
	5950 3300 5875 3300
Wire Wire Line
	5875 3300 5875 3575
Connection ~ 7100 3500
$Comp
L LM556 U15
U 1 1 5DC422DB
P 6450 3300
F 0 "U15" H 6125 3675 50  0000 L CNN
F 1 "LM556" H 6325 3300 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6450 3300 50  0001 C CNN
F 3 "" H 6450 3300 50  0001 C CNN
	1    6450 3300
	1    0    0    -1  
$EndComp
$Comp
L LM556 U15
U 2 1 5DC4238A
P 8975 5025
F 0 "U15" H 8575 5375 50  0000 L CNN
F 1 "LM556" H 8875 5025 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 8975 5025 50  0001 C CNN
F 3 "" H 8975 5025 50  0001 C CNN
	2    8975 5025
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 5100 5425 5100
Wire Wire Line
	7050 5300 6900 5300
Text Label 5575 6175 1    60   ~ 0
A0
NoConn ~ 5775 6175
NoConn ~ 5925 6175
NoConn ~ 6025 6175
NoConn ~ 6125 6175
NoConn ~ 6225 6175
NoConn ~ 6025 7675
Text Label 6425 6175 1    50   ~ 0
/MUXCE
Text Label 5050 6775 0    60   ~ 0
+5V
Text Label 5050 7175 0    60   ~ 0
GND
$Comp
L 74HCT253 U14
U 1 1 5DC63A53
P 6175 6925
F 0 "U14" V 6675 6225 50  0000 C CNN
F 1 "74HCT253" V 6175 6925 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket" H 6175 6925 50  0001 C CNN
F 3 "" H 6175 6925 50  0001 C CNN
	1    6175 6925
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 6775 5225 6775
Wire Wire Line
	5050 7075 5225 7075
Wire Wire Line
	5050 7175 5050 7075
Connection ~ 5050 7075
Text Label 5250 2400 0    50   ~ 0
/RESET
NoConn ~ 5250 2300
NoConn ~ 5250 1400
NoConn ~ 5250 1700
$Comp
L Conn_01x04 J6
U 1 1 5DC6F1F6
P 9875 4550
F 0 "J6" H 9875 4750 50  0000 C CNN
F 1 "Conn_01x04" H 9775 4250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 9875 4550 50  0001 C CNN
F 3 "" H 9875 4550 50  0001 C CNN
	1    9875 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10075 4650 10150 4650
Wire Wire Line
	10150 4650 10150 4550
Connection ~ 10150 4550
Text Label 10075 4750 0    50   ~ 0
+12V
Text Label 4125 2600 2    50   ~ 0
IO
Text Label 4050 2875 2    50   ~ 0
A7
Text Label 4050 2975 2    50   ~ 0
A6
Text Label 4050 3075 2    50   ~ 0
A5
Text Label 4050 3175 2    50   ~ 0
A4
Text Label 4050 3275 2    50   ~ 0
A3
Text Label 4050 3375 2    50   ~ 0
A2
Text Label 4050 3475 2    50   ~ 0
A1
Text Label 4050 3575 2    50   ~ 0
/WR
Text Label 5250 3575 0    50   ~ 0
/ACIACE
Text Label 5250 3675 0    60   ~ 0
/RD
Text Label 5250 3475 0    50   ~ 0
/APUCE
Text Label 5250 3375 0    50   ~ 0
/PPICE
Text Label 5250 3275 0    50   ~ 0
/PITCE
Text Label 5250 3175 0    50   ~ 0
/MUXCE
Text Label 5250 3075 0    50   ~ 0
DOUT0
Text Label 5250 2975 0    50   ~ 0
DOUT1
NoConn ~ 5250 2875
Wire Wire Line
	5825 2375 5825 2850
Connection ~ 5825 2850
Wire Wire Line
	5250 2775 5600 2775
Wire Wire Line
	4050 2775 4050 2600
Wire Wire Line
	4050 2600 4675 2600
Wire Wire Line
	4675 2600 4675 2200
Wire Wire Line
	4675 2200 5250 2200
Text Label 6675 7675 1    50   ~ 0
D7
$Comp
L R R14
U 1 1 5DCA1E9D
P 9125 4625
F 0 "R14" V 9200 4675 50  0000 C CNN
F 1 "10k" V 9125 4625 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9055 4625 50  0001 C CNN
F 3 "" H 9125 4625 50  0001 C CNN
	1    9125 4625
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9575 5025 9475 5025
Wire Wire Line
	9575 4475 9575 5300
Wire Wire Line
	9575 5225 9475 5225
Connection ~ 9575 5025
Wire Wire Line
	8300 4625 8300 5225
Wire Wire Line
	8300 5225 8475 5225
Connection ~ 8975 4625
$Comp
L C C21
U 1 1 5DCA371B
P 8050 5175
F 0 "C21" H 8075 5275 50  0000 L CNN
F 1 "0.01u" H 8075 5075 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 8088 5025 50  0001 C CNN
F 3 "" H 8050 5175 50  0001 C CNN
	1    8050 5175
	1    0    0    -1  
$EndComp
Wire Wire Line
	8475 5025 8050 5025
Wire Wire Line
	7975 5425 8975 5425
Connection ~ 8050 5425
$Comp
L C C22
U 1 1 5DCA3FE9
P 9575 5450
F 0 "C22" H 9600 5550 50  0000 L CNN
F 1 "1u" H 9600 5350 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 9613 5300 50  0001 C CNN
F 3 "" H 9575 5450 50  0001 C CNN
	1    9575 5450
	1    0    0    -1  
$EndComp
Connection ~ 9575 5225
Wire Wire Line
	9575 5600 9575 5675
Text Label 7975 5425 2    50   ~ 0
GND
Text Label 9575 5675 0    50   ~ 0
GND
Wire Wire Line
	8475 4825 8050 4825
Wire Wire Line
	9475 4825 9725 4825
Wire Wire Line
	9725 4825 9725 4450
Text Label 9725 4650 1    50   ~ 0
POUT
Text Label 8050 4825 0    50   ~ 0
DOUT1
Text Label 6875 6175 1    50   ~ 0
POUT
$Comp
L POT RV1
U 1 1 5DCA7BC2
P 9425 4625
F 0 "RV1" V 9325 4650 50  0000 C CNN
F 1 "100k" V 9425 4625 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_WirePads_Small" H 9425 4625 50  0001 C CNN
F 3 "" H 9425 4625 50  0001 C CNN
	1    9425 4625
	0    1    -1   0   
$EndComp
Wire Wire Line
	8975 4625 8300 4625
Wire Wire Line
	9425 4475 9575 4475
Connection ~ 9575 4625
Text Label 8300 4625 0    60   ~ 0
+5V
Text Label 8175 6050 2    50   ~ 0
DOUT0
Text Label 8925 5550 0    50   ~ 0
/RESET
Wire Wire Line
	8050 5425 8050 5325
Text Label 8575 5550 0    50   ~ 0
+5V
$Comp
L C_Small C20
U 1 1 5DCBBCCA
P 9225 6450
F 0 "C20" V 9325 6475 50  0000 L CNN
F 1 "0.1u" V 9325 6275 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 9225 6450 50  0001 C CNN
F 3 "" H 9225 6450 50  0001 C CNN
	1    9225 6450
	0    -1   -1   0   
$EndComp
Text Label 8675 6450 2    50   ~ 0
GND
Text Label 8175 5950 2    50   ~ 0
GND
$Comp
L R_Small R13
U 1 1 5DCBD984
P 9525 5850
F 0 "R13" V 9450 5775 50  0000 L CNN
F 1 "1k" V 9525 5800 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9525 5850 50  0001 C CNN
F 3 "" H 9525 5850 50  0001 C CNN
	1    9525 5850
	0    1    1    0   
$EndComp
NoConn ~ 9325 6050
NoConn ~ 9325 6150
Text Label 9850 6450 0    50   ~ 0
GND
Text Label 8875 6450 0    50   ~ 0
+5V
$Comp
L LED D1
U 1 1 5DCBDB3B
P 9775 6000
F 0 "D1" H 9775 6100 50  0000 C CNN
F 1 "LED" H 9775 5900 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 9775 6000 50  0001 C CNN
F 3 "" H 9775 6000 50  0001 C CNN
	1    9775 6000
	0    -1   -1   0   
$EndComp
$Comp
L 74HCT74 U16
U 1 1 5DCFE40B
P 8775 6000
F 0 "U16" H 8425 6250 60  0000 C CNN
F 1 "74HCT74" H 8775 5950 60  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 8775 5950 60  0001 C CNN
F 3 "" H 8775 5950 60  0001 C CNN
	1    8775 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9125 6450 8825 6450
Text Label 8175 6150 2    50   ~ 0
GND
Wire Wire Line
	9425 5850 9325 5850
Wire Wire Line
	9625 5850 9775 5850
Wire Wire Line
	9325 6450 9850 6450
Wire Wire Line
	9775 6450 9775 6150
Connection ~ 9775 6450
Wire Wire Line
	8675 5600 8575 5600
Wire Wire Line
	8575 5600 8575 5550
Connection ~ 8575 5600
Wire Wire Line
	8825 5600 8925 5600
Wire Wire Line
	8925 5600 8925 5550
Connection ~ 8925 5600
Wire Wire Line
	8175 5850 8175 5650
Wire Wire Line
	8175 5650 9400 5650
Wire Wire Line
	9400 5650 9400 5950
Wire Wire Line
	9400 5950 9325 5950
Text Label 5475 6175 1    60   ~ 0
GND
NoConn ~ 6575 6175
NoConn ~ 6675 6175
NoConn ~ 6775 6175
$EndSCHEMATC
