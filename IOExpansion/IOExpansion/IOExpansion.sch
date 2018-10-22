EESchema Schematic File Version 2
LIBS:sbclib
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
LIBS:IOExpansion-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "I/O Expansion Board for MUTIF09 6809 SBC"
Date "2018-07-03"
Rev "1"
Comp "MUTIF09 Project"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PC16550D U4
U 1 1 5B3F7C46
P 2300 2400
F 0 "U4" H 2000 3600 60  0000 C CNN
F 1 "PC16550D" H 2300 1300 60  0000 C CNN
F 2 "Housings_DIP:DIP-40_W15.24mm" H 2300 2400 60  0001 C CNN
F 3 "" H 2300 2400 60  0001 C CNN
	1    2300 2400
	1    0    0    -1  
$EndComp
$Comp
L SG-8002DC U3
U 1 1 5B3F7C8F
P 2150 4000
F 0 "U3" H 1950 4250 60  0000 C CNN
F 1 "SG-8002DC" H 2150 3800 60  0000 C CNN
F 2 "Oscillators:Oscillator_DIP-8" H 2150 3450 60  0001 C CNN
F 3 "" H 2150 3450 60  0001 C CNN
F 4 "7.3728 MHz" H 2150 3700 60  0000 C CNN "Frequency"
	1    2150 4000
	1    0    0    -1  
$EndComp
$Comp
L SC18IM700 U8
U 1 1 5B3F7CCD
P 4500 1750
F 0 "U8" H 4200 2300 60  0000 C CNN
F 1 "SC18IM700" H 4500 1200 60  0000 C CNN
F 2 "ioexplib:DIP-16_W15.24mm" H 4500 1100 60  0001 C CNN
F 3 "" H 4500 1100 60  0001 C CNN
	1    4500 1750
	1    0    0    -1  
$EndComp
$Comp
L PCA9641 U10
U 1 1 5B3F7D0E
P 6800 1750
F 0 "U10" H 6450 2300 60  0000 C CNN
F 1 "PCA9641" H 6800 1200 60  0000 C CNN
F 2 "ioexplib:DIP-16_W15.24mm" H 6750 1100 60  0001 C CNN
F 3 "" H 6750 1100 60  0001 C CNN
	1    6800 1750
	1    0    0    -1  
$EndComp
$Comp
L PCA9517A U12
U 1 1 5B3F7D3B
P 8450 1550
F 0 "U12" H 8250 1900 60  0000 C CNN
F 1 "PCA9517A" H 8450 1200 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 8450 1100 60  0001 C CNN
F 3 "" H 8450 1100 60  0001 C CNN
	1    8450 1550
	1    0    0    -1  
$EndComp
$Comp
L SC18IS602B U11
U 1 1 5B3F7D72
P 7400 3950
F 0 "U11" H 7100 4500 60  0000 C CNN
F 1 "SC18IS602B" H 7400 3400 60  0000 C CNN
F 2 "ioexplib:DIP-16_W15.24mm" H 7400 3300 60  0001 C CNN
F 3 "" H 7400 3300 60  0001 C CNN
	1    7400 3950
	1    0    0    -1  
$EndComp
$Comp
L PCA9517A U13
U 1 1 5B3F7DE7
P 8450 2950
F 0 "U13" H 8250 3300 60  0000 C CNN
F 1 "PCA9517A" H 8450 2600 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 8450 2500 60  0001 C CNN
F 3 "" H 8450 2500 60  0001 C CNN
	1    8450 2950
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x20_Odd_Even J10
U 1 1 5B3F7FAA
P 9400 5300
F 0 "J10" H 9450 6300 50  0000 C CNN
F 1 "HEADER 2x20" H 9450 4200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20_Pitch2.54mm" H 9400 5300 50  0001 C CNN
F 3 "" H 9400 5300 50  0001 C CNN
	1    9400 5300
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C13
U 1 1 5B3F8011
P 10750 4850
F 0 "C13" V 10850 4900 50  0000 L CNN
F 1 "10u" V 10650 4650 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 10750 4850 50  0001 C CNN
F 3 "" H 10750 4850 50  0001 C CNN
	1    10750 4850
	0    -1   -1   0   
$EndComp
$Comp
L MCP810 U1
U 1 1 5B3F810F
P 1150 4050
F 0 "U1" H 1000 4350 60  0000 C CNN
F 1 "MCP810-450" H 1100 3750 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 1250 3550 60  0001 C CNN
F 3 "" H 1250 3550 60  0001 C CNN
	1    1150 4050
	1    0    0    -1  
$EndComp
$Comp
L MCP809 U2
U 1 1 5B3F8148
P 1150 4950
F 0 "U2" H 1000 5250 60  0000 C CNN
F 1 "MCP809-315" H 1100 4650 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 1250 4450 60  0001 C CNN
F 3 "" H 1250 4450 60  0001 C CNN
	1    1150 4950
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x05_Odd_Even J9
U 1 1 5B3F81C9
P 7450 5200
F 0 "J9" H 7500 5500 50  0000 C CNN
F 1 "SPI _3V3" H 7500 4900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05_Pitch2.54mm" H 7450 5200 50  0001 C CNN
F 3 "" H 7450 5200 50  0001 C CNN
	1    7450 5200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 5B3F8210
P 2800 1050
F 0 "C3" V 2700 900 50  0000 L CNN
F 1 "0.1u" V 2850 800 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2800 1050 50  0001 C CNN
F 3 "" H 2800 1050 50  0001 C CNN
	1    2800 1050
	0    1    1    0   
$EndComp
$Comp
L C_Small C5
U 1 1 5B3F8251
P 5150 1050
F 0 "C5" V 5050 900 50  0000 L CNN
F 1 "0.1u" V 5200 850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5150 1050 50  0001 C CNN
F 3 "" H 5150 1050 50  0001 C CNN
	1    5150 1050
	0    1    1    0   
$EndComp
$Comp
L C_Small C7
U 1 1 5B3F82CE
P 8200 1050
F 0 "C7" V 8050 1050 50  0000 L CNN
F 1 "0.1u" V 8250 850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8200 1050 50  0001 C CNN
F 3 "" H 8200 1050 50  0001 C CNN
	1    8200 1050
	0    1    1    0   
$EndComp
$Comp
L C_Small C11
U 1 1 5B3F8347
P 8750 4100
F 0 "C11" H 8600 4200 50  0000 L CNN
F 1 "0.1u" H 8550 4050 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8750 4100 50  0001 C CNN
F 3 "" H 8750 4100 50  0001 C CNN
	1    8750 4100
	-1   0    0    1   
$EndComp
$Comp
L C_Small C6
U 1 1 5B3F83BA
P 7200 1050
F 0 "C6" V 7300 1100 50  0000 L CNN
F 1 "0.1u" V 7150 1100 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7200 1050 50  0001 C CNN
F 3 "" H 7200 1050 50  0001 C CNN
	1    7200 1050
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C9
U 1 1 5B3F83F7
P 8700 1050
F 0 "C9" V 8550 1050 50  0000 L CNN
F 1 "0.1u" V 8750 850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8700 1050 50  0001 C CNN
F 3 "" H 8700 1050 50  0001 C CNN
	1    8700 1050
	0    1    1    0   
$EndComp
$Comp
L C_Small C8
U 1 1 5B3F8436
P 8200 2400
F 0 "C8" V 8050 2400 50  0000 L CNN
F 1 "0.1u" V 8250 2200 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8200 2400 50  0001 C CNN
F 3 "" H 8200 2400 50  0001 C CNN
	1    8200 2400
	0    1    1    0   
$EndComp
$Comp
L C_Small C10
U 1 1 5B3F84BD
P 8700 2400
F 0 "C10" V 8550 2450 50  0000 L CNN
F 1 "0.1u" V 8750 2200 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8700 2400 50  0001 C CNN
F 3 "" H 8700 2400 50  0001 C CNN
	1    8700 2400
	0    1    1    0   
$EndComp
$Comp
L PCA9632DP1_Breakout U6
U 1 1 5B3F8504
P 4300 3750
F 0 "U6" H 4100 4100 60  0000 C CNN
F 1 "PCA9632DP1_Breakout" H 4300 3400 60  0000 C CNN
F 2 "ioexplib:PCA9632DP1_Breakout" H 4300 3300 60  0001 C CNN
F 3 "" H 4300 3300 60  0001 C CNN
	1    4300 3750
	1    0    0    -1  
$EndComp
$Comp
L PCF8523_Breakout U9
U 1 1 5B3F88DA
P 6025 3700
F 0 "U9" H 5975 4100 60  0000 C CNN
F 1 "PCF8523_Breakout" H 6075 3325 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 6125 2900 60  0001 C CNN
F 3 "" H 6125 2900 60  0001 C CNN
	1    6025 3700
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x05_Odd_Even J6
U 1 1 5B3F8B19
P 4250 2900
F 0 "J6" H 4300 3200 50  0000 C CNN
F 1 "GPIO_3V3" H 4300 2600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05_Pitch2.54mm" H 4250 2900 50  0001 C CNN
F 3 "" H 4250 2900 50  0001 C CNN
	1    4250 2900
	1    0    0    -1  
$EndComp
Text Label 1700 1400 2    60   ~ 0
D0
Text Label 1700 1500 2    60   ~ 0
D1
Text Label 1700 1600 2    60   ~ 0
D2
Text Label 1700 1700 2    60   ~ 0
D3
Text Label 1700 1800 2    60   ~ 0
D4
Text Label 1700 1900 2    60   ~ 0
D5
Text Label 1700 2000 2    60   ~ 0
D6
Text Label 1700 2100 2    60   ~ 0
D7
Text Label 1400 2500 2    60   ~ 0
+5V
Text Label 1400 2700 2    60   ~ 0
/UARTCE
Text Label 1700 2900 2    60   ~ 0
CLK
Text Label 2550 4050 0    60   ~ 0
CLK
NoConn ~ 1750 3900
Text Label 2900 2600 0    60   ~ 0
A0
Text Label 2900 2700 0    60   ~ 0
A1
Text Label 2900 2800 0    60   ~ 0
A2
Text Label 2400 1050 2    60   ~ 0
GND
Text Label 3000 1000 0    60   ~ 0
+5V
Text Label 1400 3300 2    60   ~ 0
GND
Text Label 2950 1900 0    60   ~ 0
RST
Text Label 750  4150 2    60   ~ 0
RST
Text Label 750  3950 2    60   ~ 0
GND
Text Label 1550 3650 2    60   ~ 0
+5V
$Comp
L C_Small C4
U 1 1 5B404F09
P 2800 4100
F 0 "C4" H 2810 4170 50  0000 L CNN
F 1 "0.1u" H 2810 4020 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2800 4100 50  0001 C CNN
F 3 "" H 2800 4100 50  0001 C CNN
	1    2800 4100
	1    0    0    -1  
$EndComp
Text Label 2900 3900 0    60   ~ 0
+5V
Text Label 2900 4400 0    60   ~ 0
GND
Wire Wire Line
	1700 2200 1500 2200
Wire Wire Line
	1500 2200 1500 2800
Wire Wire Line
	1500 2800 1700 2800
Wire Wire Line
	1400 2500 1700 2500
Wire Wire Line
	1700 2600 1600 2600
Wire Wire Line
	1600 2600 1600 2500
Connection ~ 1600 2500
Wire Wire Line
	1700 2700 1400 2700
Wire Wire Line
	3000 1500 2900 1500
Wire Wire Line
	3000 1000 3000 1500
Wire Wire Line
	2900 1400 3000 1400
Connection ~ 3000 1400
Wire Wire Line
	2900 1050 3000 1050
Connection ~ 3000 1050
Wire Wire Line
	2700 1050 2400 1050
Wire Wire Line
	1400 3300 1700 3300
Wire Wire Line
	1700 3200 1600 3200
Wire Wire Line
	1600 3200 1600 3300
Connection ~ 1600 3300
Wire Wire Line
	2900 1900 2950 1900
Wire Wire Line
	1550 3650 1550 4150
Wire Wire Line
	2550 3900 2900 3900
Connection ~ 2800 3900
Wire Wire Line
	1750 4050 1750 4400
Wire Wire Line
	1750 4400 2900 4400
Connection ~ 2800 4400
Wire Wire Line
	2800 4200 2800 4400
Wire Wire Line
	2800 3900 2800 4000
Wire Wire Line
	2900 2900 3100 2900
Wire Wire Line
	3100 2900 3100 3200
Wire Wire Line
	2900 3200 3150 3200
Connection ~ 3100 3200
Text Label 3150 3200 0    60   ~ 0
GND
NoConn ~ 2900 3000
NoConn ~ 2900 2500
NoConn ~ 2900 3100
NoConn ~ 1700 3000
Wire Wire Line
	3150 2100 2900 2100
Wire Wire Line
	3150 1600 3150 2100
Wire Wire Line
	3150 1600 2900 1600
Wire Wire Line
	2900 1700 3150 1700
Connection ~ 3150 1700
Wire Wire Line
	2900 1800 3250 1800
Wire Wire Line
	3250 1800 3250 2200
Wire Wire Line
	3250 2200 2900 2200
Text Label 3000 3450 2    60   ~ 0
/O1
Text Label 3000 3550 2    60   ~ 0
/O2
Text Label 3000 3650 2    60   ~ 0
INTR
Text Label 2900 2000 0    60   ~ 0
/O1
Text Label 2900 2300 0    60   ~ 0
/O2
Text Label 2900 2400 0    60   ~ 0
INTR
Text Label 1700 3100 2    60   ~ 0
R_/W
Text Label 2900 3300 0    60   ~ 0
/R_W
Text Label 1700 2300 2    60   ~ 0
SIN
Text Label 1700 2400 2    50   ~ 0
SOUT
Text Label 5100 2100 0    60   ~ 0
RX
Text Label 5100 2000 0    60   ~ 0
TX
Text Label 3700 2000 2    60   ~ 0
SDA_MST0
Text Label 3700 2100 2    60   ~ 0
SCL_MST0
Text Label 3900 1900 2    60   ~ 0
GPIO3
Text Label 3900 1800 2    60   ~ 0
GPIO2
Text Label 5100 1900 0    60   ~ 0
GPIO6
Text Label 3900 1400 2    60   ~ 0
GPIO0
Text Label 3900 1500 2    60   ~ 0
GPIO1
Text Label 5100 1400 0    60   ~ 0
GPIO7
Text Label 5100 1500 0    60   ~ 0
GPIO4
Text Label 5100 1600 0    60   ~ 0
GPIO5
Wire Wire Line
	5450 1800 5100 1800
Wire Wire Line
	5450 1000 5450 1800
Connection ~ 5450 1050
Wire Wire Line
	5050 1050 4700 1050
Text Label 4700 1050 2    60   ~ 0
GND
Text Label 5450 1000 0    60   ~ 0
+3V3
Text Label 3900 1700 2    60   ~ 0
GND
$Comp
L Conn_01x04 J11
U 1 1 5B409692
P 9550 1400
F 0 "J11" H 9550 1600 50  0000 C CNN
F 1 "I2C_5V" H 9550 1100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04_Pitch2.00mm" H 9550 1400 50  0001 C CNN
F 3 "" H 9550 1400 50  0001 C CNN
	1    9550 1400
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J13
U 1 1 5B40971D
P 10600 2800
F 0 "J13" H 10600 3000 50  0000 C CNN
F 1 "I2C_ALT_Master" H 10575 2500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04_Pitch2.00mm" H 10600 2800 50  0001 C CNN
F 3 "" H 10600 2800 50  0001 C CNN
	1    10600 2800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J12
U 1 1 5B40A39C
P 9550 2800
F 0 "J12" H 9550 3000 50  0000 C CNN
F 1 "I2C_3V3" H 9550 2500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04_Pitch2.00mm" H 9550 2800 50  0001 C CNN
F 3 "" H 9550 2800 50  0001 C CNN
	1    9550 2800
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5B40D6E5
P 5600 1200
F 0 "R5" V 5680 1200 50  0000 C CNN
F 1 "1K" V 5600 1200 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5530 1200 50  0001 C CNN
F 3 "" H 5600 1200 50  0001 C CNN
	1    5600 1200
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5B412DE8
P 3750 2350
F 0 "R1" V 3830 2350 50  0000 C CNN
F 1 "1.8K" V 3750 2350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3680 2350 50  0001 C CNN
F 3 "" H 3750 2350 50  0001 C CNN
	1    3750 2350
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5B412E4F
P 3900 2350
F 0 "R2" V 3980 2350 50  0000 C CNN
F 1 "1.8K" V 3900 2350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3830 2350 50  0001 C CNN
F 3 "" H 3900 2350 50  0001 C CNN
	1    3900 2350
	1    0    0    -1  
$EndComp
Text Label 3500 2600 0    60   ~ 0
+3V3
Text Label 6150 1600 2    60   ~ 0
SCL_MST0
Text Label 6150 1500 2    60   ~ 0
SDA_MST0
Wire Wire Line
	3700 2000 3900 2000
Wire Wire Line
	3900 2100 3700 2100
Wire Wire Line
	3750 2200 3750 2000
Connection ~ 3750 2000
Wire Wire Line
	3900 2200 3900 2100
Connection ~ 3900 2100
Wire Wire Line
	3750 2500 3750 2600
Wire Wire Line
	3900 2600 3900 2500
Text Label 6150 1800 2    60   ~ 0
SCL_MST1
Text Label 6150 1900 2    60   ~ 0
SDA_MST1
Text Label 6150 1700 2    60   ~ 0
/RESET
Text Label 6150 1400 2    60   ~ 0
/INT0
Text Label 6150 2000 2    60   ~ 0
/INT1
$Comp
L R R3
U 1 1 5B418E4E
P 5350 3050
F 0 "R3" V 5430 3050 50  0000 C CNN
F 1 "1.8K" V 5350 3050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5280 3050 50  0001 C CNN
F 3 "" H 5350 3050 50  0001 C CNN
	1    5350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1400 7450 1400
Wire Wire Line
	7500 1000 7500 1400
Wire Wire Line
	7300 1050 7500 1050
Connection ~ 7500 1050
Wire Wire Line
	7100 1050 6800 1050
Text Label 6800 1050 2    60   ~ 0
GND
Text Label 7500 1000 0    60   ~ 0
+3V3
Text Label 6150 2100 2    60   ~ 0
GND
$Comp
L Conn_02x03_Odd_Even J5
U 1 1 5B418623
P 3200 3550
F 0 "J5" H 3250 3750 50  0000 C CNN
F 1 "UART_5V" H 3250 3350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 3200 3550 50  0001 C CNN
F 3 "" H 3200 3550 50  0001 C CNN
	1    3200 3550
	1    0    0    -1  
$EndComp
Text Label 3500 3550 0    60   ~ 0
SOUT
Text Label 3500 3450 0    60   ~ 0
SIN
Text Label 3500 3650 0    60   ~ 0
GND
$Comp
L Conn_02x03_Odd_Even J8
U 1 1 5B419A83
P 6650 2950
F 0 "J8" H 6700 3150 50  0000 C CNN
F 1 "I2C_INT" H 6700 2750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 6650 2950 50  0001 C CNN
F 3 "" H 6650 2950 50  0001 C CNN
	1    6650 2950
	1    0    0    -1  
$EndComp
Text Label 6200 2850 2    60   ~ 0
/INT0
Text Label 6200 2950 2    60   ~ 0
/INT1
Text Label 7100 2850 0    60   ~ 0
/INT_IN
Text Label 6950 2950 0    60   ~ 0
+3V3
Text Label 6950 3050 0    60   ~ 0
GND
Text Label 6450 3050 2    60   ~ 0
GND
Wire Wire Line
	7450 1600 7950 1600
Wire Wire Line
	7850 1400 7950 1400
Wire Wire Line
	7850 1000 7850 1400
Wire Wire Line
	8100 1050 7850 1050
Connection ~ 7850 1050
Text Label 7950 1850 0    60   ~ 0
GND
Wire Wire Line
	8950 1400 9350 1400
Wire Wire Line
	9050 1000 9050 1400
Wire Wire Line
	8800 1050 9050 1050
Connection ~ 9050 1050
Wire Wire Line
	8300 1050 8600 1050
Wire Wire Line
	8450 1000 8450 1050
Connection ~ 8450 1050
Text Label 7450 1700 0    50   ~ 0
SCL_SLAVE
Text Label 7450 1500 0    60   ~ 0
/INT_IN
Wire Wire Line
	7950 1700 7950 1850
Wire Wire Line
	7450 1700 7850 1700
Wire Wire Line
	7850 1700 7850 1500
Wire Wire Line
	7850 1500 7950 1500
Text Label 7450 1600 0    50   ~ 0
SDA_SLAVE
Text Label 7850 1000 0    60   ~ 0
+3V3
Text Label 8450 1000 0    60   ~ 0
GND
Text Label 9050 1000 0    60   ~ 0
+5V
NoConn ~ 8950 1700
Wire Wire Line
	7850 2800 7950 2800
Wire Wire Line
	7850 2400 8100 2400
Wire Wire Line
	8300 2400 8600 2400
Wire Wire Line
	8450 2350 8450 2400
Connection ~ 8450 2400
Wire Wire Line
	8800 2400 9050 2400
Wire Wire Line
	9050 2350 9050 2800
Wire Wire Line
	8950 2800 9350 2800
Wire Wire Line
	7850 2350 7850 2800
Connection ~ 7850 2400
Connection ~ 9050 2400
NoConn ~ 8950 3100
Text Label 7950 2900 2    60   ~ 0
SCL_SLAVE
Text Label 7950 3000 2    60   ~ 0
SDA_SLAVE
Text Label 7950 3100 2    60   ~ 0
GND
Text Label 7850 2350 0    60   ~ 0
+3V3
Text Label 8450 2350 0    60   ~ 0
GND
Text Label 9050 2350 0    60   ~ 0
+3V3
Text Label 9350 1300 2    60   ~ 0
GND
Connection ~ 9050 1400
Wire Wire Line
	8950 1600 9200 1600
Wire Wire Line
	9200 1600 9200 1500
Wire Wire Line
	9200 1500 9350 1500
Wire Wire Line
	8950 1500 9100 1500
Wire Wire Line
	9100 1500 9100 1700
Wire Wire Line
	9100 1700 9350 1700
Wire Wire Line
	9350 1700 9350 1600
Connection ~ 9050 2800
Wire Wire Line
	8950 2900 9100 2900
Wire Wire Line
	9100 2900 9100 3100
Wire Wire Line
	9100 3100 9350 3100
Wire Wire Line
	9350 3100 9350 3000
Wire Wire Line
	8950 3000 9200 3000
Wire Wire Line
	9200 3000 9200 2900
Wire Wire Line
	9200 2900 9350 2900
Text Label 9350 2700 2    60   ~ 0
GND
Text Label 10400 2700 2    60   ~ 0
GND
Text Label 10400 2900 2    60   ~ 0
SDA_MST1
Text Label 10400 3000 2    60   ~ 0
SCL_MST1
NoConn ~ 10400 2800
Text Label 4800 3700 0    60   ~ 0
SDA_SLAVE
Text Label 4800 3800 0    60   ~ 0
SCL_SLAVE
$Comp
L R R4
U 1 1 5B4217FF
P 5500 3050
F 0 "R4" V 5580 3050 50  0000 C CNN
F 1 "1.8K" V 5500 3050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5430 3050 50  0001 C CNN
F 3 "" H 5500 3050 50  0001 C CNN
	1    5500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3700 5700 3700
Wire Wire Line
	4800 3800 5700 3800
Wire Wire Line
	5350 3200 5350 4200
Connection ~ 5350 3700
Wire Wire Line
	5500 3200 5500 4300
Connection ~ 5500 3800
Wire Wire Line
	5500 2800 5500 2900
Wire Wire Line
	5350 2900 5350 2800
Connection ~ 5350 2800
Wire Wire Line
	4800 3600 5700 3600
Wire Wire Line
	4900 2800 5500 2800
Wire Wire Line
	4900 2800 4900 3600
Connection ~ 4900 3600
Text Label 4900 2800 0    60   ~ 0
+3V3
Text Label 5700 3500 2    60   ~ 0
GND
Text Label 4825 3900 0    60   ~ 0
GND
NoConn ~ 3800 3600
NoConn ~ 3800 3700
NoConn ~ 3800 3800
NoConn ~ 3800 3900
Text Label 6800 3600 2    60   ~ 0
/SS0_GPIO0
Text Label 6800 3700 2    60   ~ 0
/SS1_GPIO1
Text Label 6800 3800 2    60   ~ 0
/RESET
Text Label 6800 3900 2    60   ~ 0
GND
Wire Wire Line
	5350 4200 6800 4200
Wire Wire Line
	5500 4300 6800 4300
Text Label 6800 4000 2    60   ~ 0
MISO
Text Label 6800 4100 2    60   ~ 0
MOSI
Text Label 8000 4200 0    60   ~ 0
/SS2_GPIO2
Text Label 8000 3900 0    60   ~ 0
/SS3_GPIO3
Text Label 8000 4100 0    60   ~ 0
SPICLK
Wire Wire Line
	8000 4000 8750 4000
Wire Wire Line
	8750 4200 8750 4350
Text Label 8750 4350 0    60   ~ 0
GND
Text Label 8050 4000 0    60   ~ 0
+3V3
Text Label 7250 5000 2    60   ~ 0
MISO
Text Label 7250 5100 2    60   ~ 0
SPICLK
Text Label 7250 5200 2    60   ~ 0
/INT_SPI
Text Label 7750 5000 0    60   ~ 0
+3V3
Text Label 7750 5100 0    60   ~ 0
MOSI
Text Label 7750 5200 0    60   ~ 0
GND
Text Label 7250 5300 2    60   ~ 0
/SS0_GPIO0
Text Label 7250 5400 2    60   ~ 0
/SS1_GPIO1
Text Label 7750 5400 0    60   ~ 0
/SS2_GPIO2
Text Label 7750 5300 0    60   ~ 0
/SS3_GPIO3
Text Label 3900 1600 2    60   ~ 0
/RESET
$Comp
L R R9
U 1 1 5B429C5A
P 8450 4300
F 0 "R9" V 8530 4300 50  0000 C CNN
F 1 "4.7K" V 8450 4300 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8380 4300 50  0001 C CNN
F 3 "" H 8450 4300 50  0001 C CNN
	1    8450 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 4300 8600 4000
Connection ~ 8600 4000
Wire Wire Line
	8000 4300 8300 4300
Text Label 8000 4300 0    50   ~ 0
/INT_SPI
Wire Wire Line
	1550 4600 1550 5050
Wire Wire Line
	3500 2600 3900 2600
Connection ~ 3750 2600
Text Label 4050 2800 2    60   ~ 0
GPIO0
Text Label 4550 2800 0    60   ~ 0
GPIO7
Text Label 1550 4600 2    60   ~ 0
+3V3
Text Label 750  4850 2    60   ~ 0
GND
Text Label 750  5050 2    50   ~ 0
/RESET
$Comp
L C_Small C1
U 1 1 5B41F7DA
P 1550 4250
F 0 "C1" H 1560 4320 50  0000 L CNN
F 1 "0.1u" H 1560 4170 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1550 4250 50  0001 C CNN
F 3 "" H 1550 4250 50  0001 C CNN
	1    1550 4250
	-1   0    0    1   
$EndComp
$Comp
L C_Small C2
U 1 1 5B41F891
P 1550 5150
F 0 "C2" H 1560 5220 50  0000 L CNN
F 1 "0.1u" H 1560 5070 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1550 5150 50  0001 C CNN
F 3 "" H 1550 5150 50  0001 C CNN
	1    1550 5150
	-1   0    0    1   
$EndComp
Connection ~ 1550 4050
Wire Wire Line
	1550 4400 1550 4350
Connection ~ 1550 4950
Wire Wire Line
	1550 5250 1550 5950
Text Label 1550 4400 0    60   ~ 0
GND
Text Label 1550 5950 2    60   ~ 0
GND
Wire Wire Line
	5100 1700 5600 1700
Wire Wire Line
	5600 1700 5600 1350
Wire Wire Line
	5250 1050 5600 1050
$Comp
L R R6
U 1 1 5B424055
P 6250 2650
F 0 "R6" V 6330 2650 50  0000 C CNN
F 1 "4.7K" V 6250 2650 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6180 2650 50  0001 C CNN
F 3 "" H 6250 2650 50  0001 C CNN
	1    6250 2650
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5B4240C0
P 6400 2650
F 0 "R7" V 6480 2650 50  0000 C CNN
F 1 "4.7K" V 6400 2650 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6330 2650 50  0001 C CNN
F 3 "" H 6400 2650 50  0001 C CNN
	1    6400 2650
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5B424125
P 7050 2650
F 0 "R8" V 7130 2650 50  0000 C CNN
F 1 "4.7K" V 7050 2650 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6980 2650 50  0001 C CNN
F 3 "" H 7050 2650 50  0001 C CNN
	1    7050 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2450 7050 2500
Wire Wire Line
	6100 2450 7050 2450
Wire Wire Line
	6400 2500 6400 2450
Connection ~ 6400 2450
Wire Wire Line
	6250 2500 6250 2450
Connection ~ 6250 2450
Wire Wire Line
	6950 2850 7100 2850
Wire Wire Line
	7050 2850 7050 2800
Connection ~ 7050 2850
Wire Wire Line
	6200 2850 6450 2850
Wire Wire Line
	6250 2800 6250 2850
Connection ~ 6250 2850
Wire Wire Line
	6200 2950 6450 2950
Wire Wire Line
	6400 2800 6400 2950
Connection ~ 6400 2950
Text Label 6100 2450 2    60   ~ 0
+3V3
$Comp
L TXB0104_Breakout U5
U 1 1 5B4259DF
P 2450 5000
F 0 "U5" H 2275 5400 60  0000 C CNN
F 1 "TXB0104_Breakout" H 2450 4550 60  0000 C CNN
F 2 "Housings_DIP:DIP-12_W10.16mm" H 2450 4650 60  0001 C CNN
F 3 "" H 2450 4650 60  0001 C CNN
	1    2450 5000
	1    0    0    -1  
$EndComp
$Comp
L LM3671_Breakout U15
U 1 1 5B425A70
P 10700 4350
F 0 "U15" H 10625 4650 60  0000 C CNN
F 1 "LM3671_Breakout" H 10725 4075 60  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220-4_Horizontal" H 10800 3500 60  0001 C CNN
F 3 "" H 10800 3500 60  0001 C CNN
	1    10700 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10125 4050 10125 5800
Wire Wire Line
	9700 5400 10125 5400
Wire Wire Line
	9700 4400 10375 4400
NoConn ~ 10375 4500
Text Label 9675 4300 0    60   ~ 0
+3V3
Wire Wire Line
	9675 4300 10375 4300
$Comp
L PWR_FLAG #FLG01
U 1 1 5B470D47
P 9900 5400
F 0 "#FLG01" H 9900 5475 50  0001 C CNN
F 1 "PWR_FLAG" H 9900 5550 50  0000 C CNN
F 2 "" H 9900 5400 50  0001 C CNN
F 3 "" H 9900 5400 50  0001 C CNN
	1    9900 5400
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 5B470E17
P 9900 4400
F 0 "#FLG02" H 9900 4475 50  0001 C CNN
F 1 "PWR_FLAG" H 9900 4550 50  0000 C CNN
F 2 "" H 9900 4400 50  0001 C CNN
F 3 "" H 9900 4400 50  0001 C CNN
	1    9900 4400
	-1   0    0    1   
$EndComp
Connection ~ 9900 5400
Connection ~ 9900 4400
Wire Wire Line
	10250 4400 10250 5000
Connection ~ 10250 4400
Text Label 9725 4400 0    60   ~ 0
+5V
Text Label 9700 5000 0    50   ~ 0
/SYS_RES
Wire Wire Line
	10125 4200 10375 4200
Text Label 9200 4400 2    60   ~ 0
D0
Text Label 9200 4500 2    60   ~ 0
D1
Text Label 9200 4600 2    60   ~ 0
D2
Text Label 9200 4700 2    60   ~ 0
D3
Text Label 9200 4800 2    60   ~ 0
D4
Text Label 9200 4900 2    60   ~ 0
D5
Text Label 9200 5000 2    60   ~ 0
D6
Text Label 9200 5100 2    60   ~ 0
D7
Text Label 9200 5200 2    60   ~ 0
A0
Text Label 9200 5300 2    60   ~ 0
A1
Text Label 9200 5400 2    60   ~ 0
A2
Text Label 9200 5500 2    60   ~ 0
A3
Text Label 9200 5600 2    60   ~ 0
A4
Text Label 9200 5700 2    60   ~ 0
A5
Text Label 9200 5800 2    60   ~ 0
A6
Text Label 9200 5900 2    60   ~ 0
A7
Text Label 9700 6300 0    60   ~ 0
A12
Text Label 9700 6200 0    60   ~ 0
A13
Text Label 9700 6100 0    60   ~ 0
A14
Text Label 9700 6000 0    60   ~ 0
A15
Text Label 10150 4200 0    60   ~ 0
GND
NoConn ~ 9700 4500
NoConn ~ 9700 4600
NoConn ~ 9700 4700
NoConn ~ 9700 4800
NoConn ~ 9700 5100
NoConn ~ 9700 5200
NoConn ~ 9700 5300
NoConn ~ 9700 5700
NoConn ~ 9700 5800
NoConn ~ 9700 5900
Wire Wire Line
	9700 5500 9800 5500
Wire Wire Line
	9800 5500 9800 5400
Connection ~ 9800 5400
$Comp
L MCP809 U14
U 1 1 5B490040
P 10600 5400
F 0 "U14" V 10850 5600 60  0000 C CNN
F 1 "MCP809-450" V 10100 5400 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 10700 4900 60  0001 C CNN
F 3 "" H 10700 4900 60  0001 C CNN
	1    10600 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10250 5000 10900 5000
Wire Wire Line
	10125 5800 10500 5800
Connection ~ 10125 5400
Text Label 10700 5800 0    50   ~ 0
/SYS_RES
Wire Wire Line
	10850 4850 10950 4850
Wire Wire Line
	10650 4850 10250 4850
Connection ~ 10250 4850
Text Label 10950 4850 0    60   ~ 0
GND
$Comp
L CP_Small C12
U 1 1 5B490F0E
P 10025 4050
F 0 "C12" V 10150 4075 50  0000 L CNN
F 1 "10u" V 10100 3850 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 10025 4050 50  0001 C CNN
F 3 "" H 10025 4050 50  0001 C CNN
	1    10025 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9925 4050 9925 4300
Connection ~ 9925 4300
Connection ~ 10125 4200
Text Label 2875 4850 0    60   ~ 0
SIN
Text Label 2025 4850 2    60   ~ 0
TX
Text Label 2875 4950 0    60   ~ 0
SOUT
Text Label 2025 4950 2    60   ~ 0
RX
Text Label 2875 4750 0    60   ~ 0
+5V
Text Label 2025 4750 2    60   ~ 0
+3V3
Text Label 2875 5250 0    60   ~ 0
GND
NoConn ~ 2025 5050
NoConn ~ 2025 5150
NoConn ~ 2875 5050
NoConn ~ 2875 5150
Text Label 4050 2700 2    60   ~ 0
GND
Text Label 4550 2700 0    60   ~ 0
+3V3
Text Label 4050 2900 2    60   ~ 0
GPIO1
Text Label 4050 3000 2    60   ~ 0
GPIO2
Text Label 4050 3100 2    60   ~ 0
GPIO3
Text Label 4550 2900 0    60   ~ 0
GPIO6
Text Label 4550 3000 0    60   ~ 0
GPIO5
Text Label 4550 3100 0    60   ~ 0
GPIO4
$Comp
L GAL16V8 U7
U 1 1 5B4B562E
P 4300 5200
F 0 "U7" H 4000 5850 60  0000 C CNN
F 1 "GAL16V8" H 4300 4550 60  0000 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 4300 4650 60  0001 C CNN
F 3 "" H 4300 4650 60  0001 C CNN
	1    4300 5200
	1    0    0    -1  
$EndComp
Text Label 9200 6000 2    60   ~ 0
A8
Text Label 9200 6100 2    60   ~ 0
A9
Text Label 9200 6200 2    60   ~ 0
A10
Text Label 9200 6300 2    60   ~ 0
A11
Text Label 3700 4750 2    60   ~ 0
A15
Text Label 3700 4850 2    60   ~ 0
A14
Text Label 3700 4950 2    60   ~ 0
A13
Text Label 3700 5050 2    60   ~ 0
A12
Text Label 3700 5150 2    60   ~ 0
A11
Text Label 3700 5250 2    60   ~ 0
A10
Text Label 3700 5350 2    60   ~ 0
A9
Text Label 3700 5450 2    60   ~ 0
A8
Text Label 3700 5550 2    60   ~ 0
A7
Text Label 3700 5650 2    60   ~ 0
GND
Text Label 4900 4750 0    60   ~ 0
+5V
Text Label 4900 5650 0    60   ~ 0
A6
Text Label 4900 5550 0    60   ~ 0
A5
Text Label 4900 5450 0    60   ~ 0
A4
Text Label 4900 5350 0    60   ~ 0
A3
Text Label 4900 5250 0    60   ~ 0
A2
Text Label 4900 5150 0    60   ~ 0
A1
Text Label 4900 5050 0    60   ~ 0
A0
Text Label 4900 4950 0    60   ~ 0
/UARTCE
NoConn ~ 4900 4850
Wire Wire Line
	5200 3900 5700 3900
$Comp
L Jumper_NO_Small JP1
U 1 1 5B4C4FFC
P 1850 5450
F 0 "JP1" H 1850 5530 50  0000 C CNN
F 1 "UART Pass-through" H 1800 5350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1850 5450 50  0001 C CNN
F 3 "" H 1850 5450 50  0001 C CNN
	1    1850 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	2025 5250 1850 5250
Wire Wire Line
	1850 5250 1850 5350
Wire Wire Line
	1850 5550 1850 5875
Wire Wire Line
	1850 5875 1550 5875
Connection ~ 1550 5875
$Comp
L Jumper_NC_Dual JP2
U 1 1 5B4C8B47
P 5550 4800
F 0 "JP2" H 5600 4700 50  0000 L CNN
F 1 "A3" H 5750 4900 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5550 4800 50  0001 C CNN
F 3 "" H 5550 4800 50  0001 C CNN
	1    5550 4800
	0    1    1    0   
$EndComp
$Comp
L Jumper_NC_Dual JP4
U 1 1 5B4CB57A
P 5900 4800
F 0 "JP4" H 5950 4700 50  0000 L CNN
F 1 "A2" H 6100 4900 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5900 4800 50  0001 C CNN
F 3 "" H 5900 4800 50  0001 C CNN
	1    5900 4800
	0    1    1    0   
$EndComp
$Comp
L Jumper_NC_Dual JP6
U 1 1 5B4CB601
P 6250 4800
F 0 "JP6" H 6300 4700 50  0000 L CNN
F 1 "A1" H 6450 4900 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6250 4800 50  0001 C CNN
F 3 "" H 6250 4800 50  0001 C CNN
	1    6250 4800
	0    1    1    0   
$EndComp
$Comp
L Jumper_NC_Dual JP8
U 1 1 5B4CDAA4
P 6600 4800
F 0 "JP8" H 6650 4700 50  0000 L CNN
F 1 "A0" H 6800 4900 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6600 4800 50  0001 C CNN
F 3 "" H 6600 4800 50  0001 C CNN
	1    6600 4800
	0    1    1    0   
$EndComp
$Comp
L Jumper_NC_Dual JP3
U 1 1 5B4CDB2F
P 5550 5600
F 0 "JP3" H 5600 5500 50  0000 L CNN
F 1 "A2" H 5800 5700 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5550 5600 50  0001 C CNN
F 3 "" H 5550 5600 50  0001 C CNN
	1    5550 5600
	0    1    1    0   
$EndComp
$Comp
L Jumper_NC_Dual JP5
U 1 1 5B4CDBB2
P 5900 5600
F 0 "JP5" H 5950 5500 50  0000 L CNN
F 1 "A1" H 6150 5700 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5900 5600 50  0001 C CNN
F 3 "" H 5900 5600 50  0001 C CNN
	1    5900 5600
	0    1    1    0   
$EndComp
$Comp
L Jumper_NC_Dual JP7
U 1 1 5B4CDEDB
P 6250 5600
F 0 "JP7" H 6300 5500 50  0000 L CNN
F 1 "A0" H 6500 5700 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6250 5600 50  0001 C CNN
F 3 "" H 6250 5600 50  0001 C CNN
	1    6250 5600
	0    1    1    0   
$EndComp
Text Label 5450 4800 2    60   ~ 0
AD3
Text Label 5800 4800 2    60   ~ 0
AD2
Text Label 6150 4800 2    60   ~ 0
AD1
Text Label 6500 4800 2    60   ~ 0
AD0
Text Label 5450 5600 2    60   ~ 0
A2
Text Label 5800 5600 2    60   ~ 0
A1
Text Label 6150 5600 2    60   ~ 0
A0
Wire Wire Line
	5450 4450 6600 4450
Wire Wire Line
	6600 4450 6600 4550
Wire Wire Line
	6250 4550 6250 4450
Connection ~ 6250 4450
Wire Wire Line
	5900 4550 5900 4450
Connection ~ 5900 4450
Wire Wire Line
	5550 4550 5550 4450
Connection ~ 5550 4450
Wire Wire Line
	5450 5200 6600 5200
Wire Wire Line
	6600 5200 6600 5050
Wire Wire Line
	6250 5050 6250 5200
Connection ~ 6250 5200
Wire Wire Line
	5900 5050 5900 5200
Connection ~ 5900 5200
Wire Wire Line
	5550 5050 5550 5200
Connection ~ 5550 5200
Wire Wire Line
	5450 5300 6250 5300
Wire Wire Line
	6250 5300 6250 5350
Wire Wire Line
	5900 5350 5900 5300
Connection ~ 5900 5300
Wire Wire Line
	5550 5350 5550 5300
Connection ~ 5550 5300
Wire Wire Line
	5450 6050 6250 6050
Wire Wire Line
	6250 6050 6250 5850
Wire Wire Line
	5900 5850 5900 6050
Connection ~ 5900 6050
Wire Wire Line
	5550 5850 5550 6050
Connection ~ 5550 6050
Text Label 5450 4450 2    60   ~ 0
+3V3
Text Label 5450 5200 2    60   ~ 0
GND
Text Label 5450 5300 2    60   ~ 0
+3V3
Text Label 5450 6050 2    60   ~ 0
GND
Text Label 7450 1800 0    60   ~ 0
AD3
Text Label 7450 1900 0    60   ~ 0
AD2
Text Label 7450 2000 0    60   ~ 0
AD1
Text Label 7450 2100 0    60   ~ 0
AD0
Text Label 8000 3600 0    60   ~ 0
A2
Text Label 8000 3700 0    60   ~ 0
A1
Text Label 8000 3800 0    60   ~ 0
A0
$Comp
L Conn_01x01 J1
U 1 1 5B4D6729
P 1250 6550
F 0 "J1" H 1250 6650 50  0000 C CNN
F 1 "Mount_Hole_3.2mm_M3" H 1250 6450 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 1250 6550 50  0001 C CNN
F 3 "" H 1250 6550 50  0001 C CNN
	1    1250 6550
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J2
U 1 1 5B4D67C2
P 1250 6850
F 0 "J2" H 1250 6950 50  0000 C CNN
F 1 "Mount_Hole_3.2mm_M3" H 1250 6750 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 1250 6850 50  0001 C CNN
F 3 "" H 1250 6850 50  0001 C CNN
	1    1250 6850
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J3
U 1 1 5B4D6851
P 1250 7150
F 0 "J3" H 1250 7250 50  0000 C CNN
F 1 "Mount_Hole_3.2mm_M3" H 1250 7050 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 1250 7150 50  0001 C CNN
F 3 "" H 1250 7150 50  0001 C CNN
	1    1250 7150
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J4
U 1 1 5B4D68FA
P 1250 7450
F 0 "J4" H 1250 7550 50  0000 C CNN
F 1 "Mount_Hole_3.2mm_M3" H 1250 7350 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 1250 7450 50  0001 C CNN
F 3 "" H 1250 7450 50  0001 C CNN
	1    1250 7450
	1    0    0    -1  
$EndComp
NoConn ~ 1050 6550
NoConn ~ 1050 6850
NoConn ~ 1050 7150
NoConn ~ 1050 7450
$Comp
L Conn_01x02 J7
U 1 1 5B4EB8FF
P 5200 4175
F 0 "J7" V 5175 3925 50  0000 C CNN
F 1 "RTC_SQW" V 5300 4125 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5200 4175 50  0001 C CNN
F 3 "" H 5200 4175 50  0001 C CNN
	1    5200 4175
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 3900 5200 3975
Wire Wire Line
	4800 3900 5100 3900
Wire Wire Line
	5100 3900 5100 3975
Text Label 9700 4900 0    60   ~ 0
R_/W
Text Label 9700 5600 0    60   ~ 0
/R_W
$Comp
L Conn_01x04 J14
U 1 1 5B52E637
P 10600 2050
F 0 "J14" H 10600 2250 50  0000 C CNN
F 1 "I2C_Debug" H 10600 1750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.00mm" H 10600 2050 50  0001 C CNN
F 3 "" H 10600 2050 50  0001 C CNN
	1    10600 2050
	1    0    0    -1  
$EndComp
Text Label 10400 1950 2    60   ~ 0
GND
Text Label 10400 2050 2    60   ~ 0
+3V3
Text Label 10400 2150 2    60   ~ 0
SDA_MST0
Text Label 10400 2250 2    60   ~ 0
SCL_MST0
$Comp
L C_Small C14
U 1 1 5B54889C
P 10900 5100
F 0 "C14" H 10910 5170 50  0000 L CNN
F 1 "0.1u" H 10910 5020 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 10900 5100 50  0001 C CNN
F 3 "" H 10900 5100 50  0001 C CNN
	1    10900 5100
	1    0    0    -1  
$EndComp
Connection ~ 10600 5000
Wire Wire Line
	10900 5200 10900 5350
Text Label 10900 5350 0    60   ~ 0
GND
$EndSCHEMATC
