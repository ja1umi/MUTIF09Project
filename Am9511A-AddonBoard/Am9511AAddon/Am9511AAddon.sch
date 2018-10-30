EESchema Schematic File Version 2
LIBS:sbclib
LIBS:GPIOExpansion
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
LIBS:Am9511AAddon-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Am9511A Addon Board"
Date "2018-10-12"
Rev "2"
Comp "MUTIF09 Project"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Conn_02x12_Counter_Clockwise J1
U 1 1 5B89EFF5
P 2700 2750
F 0 "J1" H 2750 3350 50  0000 C CNN
F 1 "Conn_02x12" H 2750 2050 50  0000 C CNN
F 2 "Housings_DIP:DIP-24_W15.24mm" H 2700 2750 50  0001 C CNN
F 3 "" H 2700 2750 50  0001 C CNN
	1    2700 2750
	1    0    0    -1  
$EndComp
$Comp
L 74HCT574 U3
U 1 1 5B89F21E
P 4850 2350
F 0 "U3" H 4850 2500 60  0000 C CNN
F 1 "74HCT574" H 4850 2400 60  0000 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 4850 2350 60  0001 C CNN
F 3 "" H 4850 2350 60  0001 C CNN
	1    4850 2350
	1    0    0    -1  
$EndComp
$Comp
L 74HCT00 U4
U 2 1 5B89F2F1
P 6450 2250
F 0 "U4" H 6450 2300 50  0000 C CNN
F 1 "74HCT00" H 6450 2150 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 6450 2250 50  0001 C CNN
F 3 "" H 6450 2250 50  0001 C CNN
	2    6450 2250
	1    0    0    -1  
$EndComp
$Comp
L 74HCT00 U4
U 3 1 5B89F320
P 6450 3150
F 0 "U4" H 6450 3200 50  0000 C CNN
F 1 "74HCT00" H 6450 3050 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 6450 3150 50  0001 C CNN
F 3 "" H 6450 3150 50  0001 C CNN
	3    6450 3150
	1    0    0    -1  
$EndComp
$Comp
L 74HCT00 U4
U 4 1 5B89F35D
P 6450 3950
F 0 "U4" H 6450 4000 50  0000 C CNN
F 1 "74HCT00" H 6450 3850 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 6450 3950 50  0001 C CNN
F 3 "" H 6450 3950 50  0001 C CNN
	4    6450 3950
	-1   0    0    1   
$EndComp
$Comp
L 74HCT00 U4
U 1 1 5B89F38C
P 9100 1350
F 0 "U4" H 9100 1400 50  0000 C CNN
F 1 "74HCT00" H 9100 1250 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 9100 1350 50  0001 C CNN
F 3 "" H 9100 1350 50  0001 C CNN
	1    9100 1350
	1    0    0    -1  
$EndComp
$Comp
L Am9511 U6
U 1 1 5B89F402
P 8100 2800
F 0 "U6" H 8100 3600 60  0000 C CNN
F 1 "Am9511A-1DC" H 8100 3500 60  0000 C CNN
F 2 "Housings_DIP:DIP-24_W15.24mm" H 8100 2350 60  0001 C CNN
F 3 "" H 8100 2350 60  0001 C CNN
	1    8100 2800
	-1   0    0    -1  
$EndComp
Text Label 2350 2750 0    60   ~ 0
Q
Text Label 2500 2250 2    60   ~ 0
GND
Text Label 2500 2350 2    60   ~ 0
VCC
NoConn ~ 2500 2450
NoConn ~ 2500 2550
NoConn ~ 2500 2650
NoConn ~ 2500 2850
Text Label 3000 3050 0    60   ~ 0
VDD
Text Label 3000 2850 0    60   ~ 0
/CS
Text Label 3000 2750 0    60   ~ 0
RD
Text Label 3000 2650 0    60   ~ 0
WR
Text Label 3000 2550 0    60   ~ 0
C_/D
Text Label 3000 2350 0    60   ~ 0
E
$Comp
L C_Small C2
U 1 1 5B8A0881
P 10700 2100
F 0 "C2" V 10550 2050 50  0000 L CNN
F 1 "0.1u" V 10800 2050 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 10700 2100 50  0001 C CNN
F 3 "" H 10700 2100 50  0001 C CNN
	1    10700 2100
	0    1    1    0   
$EndComp
Text Label 3900 3700 2    60   ~ 0
GND
NoConn ~ 5350 2950
NoConn ~ 5350 3050
NoConn ~ 5350 3150
NoConn ~ 5350 3250
$Comp
L 74HCT573 U2
U 1 1 5B8A5240
P 4800 4200
F 0 "U2" H 4800 4350 60  0000 C CNN
F 1 "74HCT573" H 4800 4250 60  0000 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 4800 4200 60  0001 C CNN
F 3 "" H 4800 4200 60  0001 C CNN
	1    4800 4200
	1    0    0    -1  
$EndComp
Text Label 5150 3700 0    60   ~ 0
VCC
Text Label 5100 5550 0    60   ~ 0
VCC
Text Label 4500 5550 2    60   ~ 0
GND
Text Label 7500 2250 2    60   ~ 0
/END
Text Label 9150 2150 0    60   ~ 0
GND
Text Label 9150 2350 0    60   ~ 0
VCC
NoConn ~ 8700 2750
NoConn ~ 8700 2850
Text Label 6200 4400 0    60   ~ 0
DB0
Text Label 6200 4500 0    60   ~ 0
DB1
Text Label 6200 4600 0    60   ~ 0
DB2
Text Label 6200 4700 0    60   ~ 0
DB3
Text Label 6200 4800 0    60   ~ 0
DB4
Text Label 6200 4900 0    60   ~ 0
DB5
Text Label 6200 5000 0    60   ~ 0
DB6
Text Label 6200 5100 0    60   ~ 0
DB7
Text Label 7500 3150 2    60   ~ 0
DB7
Text Label 7500 3250 2    60   ~ 0
DB6
Text Label 7500 3350 2    60   ~ 0
DB5
Text Label 8700 2950 0    60   ~ 0
DB0
Text Label 8700 3050 0    60   ~ 0
DB1
Text Label 8700 3150 0    60   ~ 0
DB2
Text Label 8700 3250 0    60   ~ 0
DB3
Text Label 8700 3350 0    60   ~ 0
DB4
$Comp
L C_Small C5
U 1 1 5B8ABE29
P 7350 4250
F 0 "C5" H 7450 4350 50  0000 L CNN
F 1 "0.1u" H 7450 4250 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 7350 4250 50  0001 C CNN
F 3 "" H 7350 4250 50  0001 C CNN
	1    7350 4250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 5B8ABE6A
P 8850 2250
F 0 "C7" H 8750 2500 50  0000 L CNN
F 1 "0.1u" H 8750 2400 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 8850 2250 50  0001 C CNN
F 3 "" H 8850 2250 50  0001 C CNN
	1    8850 2250
	1    0    0    -1  
$EndComp
Text Label 7350 3600 0    60   ~ 0
VDD
Text Label 7350 4450 0    60   ~ 0
GND
$Comp
L C_Small C4
U 1 1 5B8AC7B2
P 4850 3700
F 0 "C4" V 4950 3600 50  0000 L CNN
F 1 "0.1u" V 4950 3750 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 4850 3700 50  0001 C CNN
F 3 "" H 4850 3700 50  0001 C CNN
	1    4850 3700
	0    1    1    0   
$EndComp
$Comp
L C_Small C3
U 1 1 5B8AC7E3
P 4800 5550
F 0 "C3" V 4600 5700 50  0000 L CNN
F 1 "0.1u" V 4700 5700 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 4800 5550 50  0001 C CNN
F 3 "" H 4800 5550 50  0001 C CNN
	1    4800 5550
	0    1    1    0   
$EndComp
$Comp
L C_Small C1
U 1 1 5B8B4A84
P 2600 5450
F 0 "C1" H 2700 5500 50  0000 L CNN
F 1 "0.1u" H 2700 5400 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 2600 5450 50  0001 C CNN
F 3 "" H 2600 5450 50  0001 C CNN
	1    2600 5450
	1    0    0    -1  
$EndComp
Text Label 2600 5250 0    60   ~ 0
VCC
Text Label 2600 5650 0    60   ~ 0
GND
$Comp
L Xtal_Osc U5
U 1 1 5B8B784F
P 8050 5100
F 0 "U5" H 7850 5450 60  0000 C CNN
F 1 "XTAL OSC 3.0 MHz" H 8050 4750 60  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 8050 4650 60  0001 C CNN
F 3 "" H 8050 4650 60  0001 C CNN
	1    8050 5100
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 5B8B78F1
P 8050 4600
F 0 "C6" V 8250 4550 50  0000 L CNN
F 1 "0.1u" V 8150 4500 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 8050 4600 50  0001 C CNN
F 3 "" H 8050 4600 50  0001 C CNN
	1    8050 4600
	0    -1   -1   0   
$EndComp
$Comp
L Jumper_NC_Dual JP1
U 1 1 5B8B7986
P 6950 5250
F 0 "JP1" H 7000 5150 50  0000 L CNN
F 1 "Clock Selection" H 6950 5350 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6950 5250 50  0001 C CNN
F 3 "" H 6950 5250 50  0001 C CNN
	1    6950 5250
	-1   0    0    1   
$EndComp
NoConn ~ 8550 4950
Text Label 7500 4950 2    60   ~ 0
VCC
Text Label 8750 5250 0    60   ~ 0
GND
$Comp
L PWR_FLAG #FLG01
U 1 1 5B8B91B4
P 2100 1300
F 0 "#FLG01" H 2100 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 2100 1450 50  0000 C CNN
F 2 "" H 2100 1300 50  0001 C CNN
F 3 "" H 2100 1300 50  0001 C CNN
	1    2100 1300
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 5B8B91EE
P 2250 1700
F 0 "#FLG02" H 2250 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 2300 1850 50  0000 C CNN
F 2 "" H 2250 1700 50  0001 C CNN
F 3 "" H 2250 1700 50  0001 C CNN
	1    2250 1700
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 5B8B9228
P 7400 3850
F 0 "#FLG03" H 7400 3925 50  0001 C CNN
F 1 "PWR_FLAG" H 7400 4000 50  0000 C CNN
F 2 "" H 7400 3850 50  0001 C CNN
F 3 "" H 7400 3850 50  0001 C CNN
	1    7400 3850
	0    1    1    0   
$EndComp
$Comp
L 74HC04 U1
U 2 1 5BBFF717
P 6250 2700
F 0 "U1" H 6400 2800 50  0000 C CNN
F 1 "74HCT04" H 6450 2600 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 6250 2700 50  0001 C CNN
F 3 "" H 6250 2700 50  0001 C CNN
	2    6250 2700
	1    0    0    -1  
$EndComp
$Comp
L 74HC04 U1
U 1 1 5BBFF7E6
P 6250 1800
F 0 "U1" H 6400 1900 50  0000 C CNN
F 1 "74HCT04" H 6450 1700 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 6250 1800 50  0001 C CNN
F 3 "" H 6250 1800 50  0001 C CNN
	1    6250 1800
	1    0    0    -1  
$EndComp
$Comp
L 74HC04 U1
U 4 1 5BBFF82B
P 10550 1650
F 0 "U1" H 10700 1750 50  0000 C CNN
F 1 "74HCT04" H 10750 1550 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 10550 1650 50  0001 C CNN
F 3 "" H 10550 1650 50  0001 C CNN
	4    10550 1650
	1    0    0    -1  
$EndComp
$Comp
L 74HC04 U1
U 3 1 5BBFFC74
P 10550 1300
F 0 "U1" H 10700 1400 50  0000 C CNN
F 1 "74HCT04" H 10750 1200 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 10550 1300 50  0001 C CNN
F 3 "" H 10550 1300 50  0001 C CNN
	3    10550 1300
	1    0    0    -1  
$EndComp
NoConn ~ 5350 2650
Text Label 7500 2950 2    50   ~ 0
/PAUSE
Text Label 10100 1300 2    60   ~ 0
GND
Text Label 10100 1650 2    60   ~ 0
GND
Text Label 8500 1250 2    60   ~ 0
GND
NoConn ~ 9700 1350
NoConn ~ 11000 1300
NoConn ~ 11000 1650
Text Label 10800 2100 0    60   ~ 0
VCC
Text Label 10600 2100 2    60   ~ 0
GND
Text Label 8500 1450 2    60   ~ 0
GND
$Comp
L Conn_01x06 J2
U 1 1 5BC1163E
P 8500 3900
F 0 "J2" H 8500 4200 50  0000 C CNN
F 1 "Conn_01x06" H 8500 3500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 8500 3900 50  0001 C CNN
F 3 "" H 8500 3900 50  0001 C CNN
	1    8500 3900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3000 2550 4350 2550
Wire Wire Line
	3000 2850 4350 2850
Wire Wire Line
	4050 2450 4350 2450
Wire Wire Line
	4150 3250 4350 3250
Wire Wire Line
	4150 2550 4150 3250
Connection ~ 4150 2550
Wire Wire Line
	4350 2950 4150 2950
Connection ~ 4150 2950
Wire Wire Line
	4350 3050 4150 3050
Connection ~ 4150 3050
Wire Wire Line
	4350 3150 4150 3150
Connection ~ 4150 3150
Wire Wire Line
	5350 1800 5350 2450
Wire Wire Line
	3600 2350 2950 2350
Wire Wire Line
	3600 2150 3600 2350
Wire Wire Line
	5750 2150 5750 4300
Wire Wire Line
	5750 3250 5850 3250
Wire Wire Line
	3600 2150 5850 2150
Connection ~ 5750 2150
Wire Wire Line
	5350 2750 5600 2750
Wire Wire Line
	5600 3050 5850 3050
Wire Wire Line
	5350 2550 7500 2550
Wire Wire Line
	5350 2850 7500 2850
Wire Wire Line
	3000 3350 3000 4900
Wire Wire Line
	3000 4900 4300 4900
Wire Wire Line
	3000 3250 3100 3250
Wire Wire Line
	3100 3250 3100 5000
Wire Wire Line
	3100 5000 4300 5000
Wire Wire Line
	3000 3150 3200 3150
Wire Wire Line
	3200 3150 3200 5100
Wire Wire Line
	3200 5100 4300 5100
Wire Wire Line
	2500 3350 2500 4800
Wire Wire Line
	2500 4800 4300 4800
Wire Wire Line
	4300 4700 2400 4700
Wire Wire Line
	2400 4700 2400 3250
Wire Wire Line
	2400 3250 2500 3250
Wire Wire Line
	4300 4600 2300 4600
Wire Wire Line
	2300 4600 2300 3150
Wire Wire Line
	2300 3150 2500 3150
Wire Wire Line
	4300 4500 2200 4500
Wire Wire Line
	2200 4500 2200 3050
Wire Wire Line
	2200 3050 2500 3050
Wire Wire Line
	4300 4400 2100 4400
Wire Wire Line
	2100 4400 2100 2950
Wire Wire Line
	2100 2950 2500 2950
Wire Wire Line
	3000 2750 4350 2750
Wire Wire Line
	3000 2650 4350 2650
Wire Wire Line
	7500 2650 7150 2650
Wire Wire Line
	7150 2650 7150 3150
Wire Wire Line
	7150 3150 7050 3150
Wire Wire Line
	7050 2250 7050 2750
Wire Wire Line
	7050 2750 7500 2750
Wire Wire Line
	5300 4300 6700 4300
Connection ~ 5750 3250
Connection ~ 5350 1800
Wire Wire Line
	7250 4050 7050 4050
Wire Wire Line
	7050 3850 7150 3850
Wire Wire Line
	7150 3850 7150 3650
Wire Wire Line
	4200 3950 5850 3950
Wire Wire Line
	4300 4300 4200 4300
Wire Wire Line
	4200 4300 4200 3950
Wire Wire Line
	5300 5000 6200 5000
Wire Wire Line
	4950 3650 4950 3700
Wire Wire Line
	4700 5550 4700 5500
Wire Wire Line
	4900 5550 4900 5500
Wire Wire Line
	4200 5100 4200 5650
Wire Wire Line
	4200 5650 5400 5650
Wire Wire Line
	5400 5650 5400 5100
Connection ~ 4200 5100
Wire Wire Line
	4100 5000 4100 5750
Wire Wire Line
	4100 5750 5500 5750
Wire Wire Line
	5500 5750 5500 5000
Connection ~ 4100 5000
Wire Wire Line
	4000 4900 4000 5850
Wire Wire Line
	4000 5850 5600 5850
Wire Wire Line
	5600 5850 5600 4900
Connection ~ 4000 4900
Wire Wire Line
	3900 4800 3900 5950
Wire Wire Line
	3900 5950 5700 5950
Wire Wire Line
	5700 5950 5700 4800
Connection ~ 3900 4800
Wire Wire Line
	3800 4700 3800 6050
Wire Wire Line
	3800 6050 5800 6050
Connection ~ 3800 4700
Wire Wire Line
	3700 4600 3700 6150
Wire Wire Line
	3700 6150 5900 6150
Connection ~ 3700 4600
Wire Wire Line
	3600 4500 3600 6250
Wire Wire Line
	3600 6250 6000 6250
Connection ~ 3600 4500
Wire Wire Line
	3500 4400 3500 6350
Wire Wire Line
	3500 6350 6100 6350
Connection ~ 3500 4400
Wire Wire Line
	5300 5100 6200 5100
Wire Wire Line
	5300 4900 6200 4900
Wire Wire Line
	5300 4800 6200 4800
Wire Wire Line
	5300 4700 6200 4700
Wire Wire Line
	5800 6050 5800 4700
Wire Wire Line
	5300 4600 6200 4600
Wire Wire Line
	5300 4500 6200 4500
Wire Wire Line
	6000 6250 6000 4500
Wire Wire Line
	5300 4400 6200 4400
Wire Wire Line
	6100 6350 6100 4400
Wire Wire Line
	7500 2350 6950 2350
Wire Wire Line
	7500 2450 7150 2450
Wire Wire Line
	7150 2450 7150 1400
Wire Wire Line
	5900 6150 5900 4600
Connection ~ 6100 4400
Connection ~ 6000 4500
Connection ~ 5900 4600
Connection ~ 5800 4700
Connection ~ 5700 4800
Connection ~ 5600 4900
Connection ~ 5500 5000
Connection ~ 5400 5100
Wire Wire Line
	7350 3050 7350 4150
Wire Wire Line
	7350 4350 7350 4450
Wire Wire Line
	8700 2350 9150 2350
Wire Wire Line
	8700 2250 8700 2150
Wire Wire Line
	8700 2150 9150 2150
Connection ~ 8850 2150
Connection ~ 8850 2350
Wire Wire Line
	4500 5550 4700 5550
Wire Wire Line
	4900 5550 5100 5550
Connection ~ 4700 5550
Connection ~ 4900 5550
Wire Wire Line
	4750 3700 4750 3650
Wire Wire Line
	3900 3700 4750 3700
Connection ~ 4050 3700
Wire Wire Line
	4950 3700 5150 3700
Wire Wire Line
	4050 2450 4050 3700
Connection ~ 4750 3700
Connection ~ 4950 3700
Wire Wire Line
	2100 2350 2500 2350
Wire Wire Line
	2100 1300 2100 2350
Wire Wire Line
	2500 2250 2250 2250
Wire Wire Line
	2250 2250 2250 1700
Wire Wire Line
	2600 5350 2600 5250
Wire Wire Line
	2600 5550 2600 5650
Wire Wire Line
	7550 4950 7550 4600
Wire Wire Line
	7550 4600 7950 4600
Wire Wire Line
	8150 4600 8700 4600
Wire Wire Line
	8700 4600 8700 5250
Wire Wire Line
	8550 5250 8750 5250
Wire Wire Line
	7500 4950 7550 4950
Connection ~ 8700 5250
Wire Wire Line
	7200 5250 7550 5250
Wire Wire Line
	6950 2350 6950 5150
Wire Wire Line
	6700 4300 6700 5250
Connection ~ 5750 4300
Connection ~ 7550 4950
Wire Wire Line
	7500 3050 7350 3050
Wire Wire Line
	7400 3850 7350 3850
Connection ~ 7350 3850
Wire Wire Line
	5600 2700 5600 3050
Wire Wire Line
	5600 2700 5800 2700
Connection ~ 5600 2750
Wire Wire Line
	5850 2350 5850 3650
Wire Wire Line
	5850 3650 7150 3650
Connection ~ 5850 2500
Wire Wire Line
	3400 1400 7250 1400
Wire Wire Line
	3400 1400 3400 2450
Wire Wire Line
	3400 2450 3000 2450
Wire Wire Line
	2000 1800 2000 2750
Wire Wire Line
	2000 2750 2500 2750
Wire Wire Line
	7250 4050 7250 1800
Wire Wire Line
	6700 2500 6700 2700
Wire Wire Line
	5850 2500 6700 2500
Wire Wire Line
	2000 1800 5800 1800
Wire Wire Line
	7250 1800 6700 1800
Wire Wire Line
	8700 3700 9000 3700
Wire Wire Line
	9000 3700 9000 2150
Connection ~ 9000 2150
Wire Wire Line
	8700 2450 9100 2450
Wire Wire Line
	9100 2450 9100 3800
Wire Wire Line
	9100 3800 8700 3800
Wire Wire Line
	8700 2550 9200 2550
Wire Wire Line
	9200 2550 9200 3900
Wire Wire Line
	9200 3900 8700 3900
Wire Wire Line
	8700 2650 9300 2650
Wire Wire Line
	9300 2650 9300 4000
Wire Wire Line
	9300 4000 8700 4000
Text Label 8700 4100 0    60   ~ 0
/PAUSE
$Comp
L R R2
U 1 1 5BC12733
P 9500 4050
F 0 "R2" V 9580 4050 50  0000 C CNN
F 1 "10k" V 9500 4050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9430 4050 50  0001 C CNN
F 3 "" H 9500 4050 50  0001 C CNN
	1    9500 4050
	-1   0    0    1   
$EndComp
$Comp
L Jumper_NC_Small JP2
U 1 1 5BC12839
P 9150 4200
F 0 "JP2" H 9150 4280 50  0000 C CNN
F 1 "Pullup_Enable" H 9160 4140 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 9150 4200 50  0001 C CNN
F 3 "" H 9150 4200 50  0001 C CNN
	1    9150 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4200 9050 4200
Wire Wire Line
	9250 4200 9500 4200
Wire Wire Line
	9500 3900 9500 3800
Text Label 9500 3800 0    60   ~ 0
VCC
Text Label 8700 4200 0    60   ~ 0
/END
NoConn ~ 3000 2250
NoConn ~ 3000 2950
$Comp
L R R1
U 1 1 5BC1DDF7
P 7400 1400
F 0 "R1" V 7480 1400 50  0000 C CNN
F 1 "10k" V 7400 1400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7330 1400 50  0001 C CNN
F 3 "" H 7400 1400 50  0001 C CNN
	1    7400 1400
	0    1    1    0   
$EndComp
Connection ~ 7150 1400
Text Label 7550 1400 0    60   ~ 0
GND
$Comp
L 74HC04 U1
U 5 1 5BC0CA06
P 10550 950
F 0 "U1" H 10700 1050 50  0000 C CNN
F 1 "74HCT04" H 10750 850 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 10550 950 50  0001 C CNN
F 3 "" H 10550 950 50  0001 C CNN
	5    10550 950 
	1    0    0    -1  
$EndComp
$Comp
L 74HC04 U1
U 6 1 5BC0CA77
P 9250 950
F 0 "U1" H 9400 1050 50  0000 C CNN
F 1 "74HCT04" H 9450 850 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 9250 950 50  0001 C CNN
F 3 "" H 9250 950 50  0001 C CNN
	6    9250 950 
	1    0    0    -1  
$EndComp
NoConn ~ 9700 950 
NoConn ~ 11000 950 
Text Label 8800 950  2    60   ~ 0
GND
Text Label 10100 950  2    60   ~ 0
GND
$EndSCHEMATC
