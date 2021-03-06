EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2650 7050 2650 7300
$Comp
L power:GND #PWR0105
U 1 1 5F23E9EF
P 2650 7400
F 0 "#PWR0105" H 2650 7150 50  0001 C CNN
F 1 "GND" H 2655 7227 50  0000 C CNN
F 2 "" H 2650 7400 50  0001 C CNN
F 3 "" H 2650 7400 50  0001 C CNN
	1    2650 7400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5EC2F6AA
P 2300 2800
F 0 "#PWR0106" H 2300 2550 50  0001 C CNN
F 1 "GND" H 2450 2800 50  0000 C CNN
F 2 "" H 2300 2800 50  0001 C CNN
F 3 "" H 2300 2800 50  0001 C CNN
	1    2300 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2500 2300 2500
Wire Wire Line
	2650 2500 2650 3000
$Comp
L Device:C C3
U 1 1 5EC25D22
P 2300 2650
F 0 "C3" H 2185 2604 50  0000 R CNN
F 1 "4.7uF" H 2185 2695 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2338 2500 50  0001 C CNN
F 3 "~" H 2300 2650 50  0001 C CNN
	1    2300 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 3000 2650 3050
Connection ~ 2650 3000
Wire Wire Line
	2750 3000 2650 3000
Wire Wire Line
	2750 3050 2750 3000
Wire Wire Line
	2050 4200 1800 4200
Wire Wire Line
	2050 3950 2050 4200
Wire Wire Line
	2050 2950 2050 3350
Wire Wire Line
	1700 3850 1950 3850
Connection ~ 1700 3850
Wire Wire Line
	1950 3750 2050 3750
Wire Wire Line
	1950 3850 1950 3750
Wire Wire Line
	1600 3850 1700 3850
Wire Wire Line
	1700 3550 2050 3550
Connection ~ 1700 3550
Wire Wire Line
	1600 3550 1700 3550
Wire Wire Line
	1300 3850 1300 3550
Connection ~ 1300 3850
Wire Wire Line
	1300 4150 1300 3850
$Comp
L power:GND #PWR0109
U 1 1 5EBE37AD
P 1300 4150
F 0 "#PWR0109" H 1300 3900 50  0001 C CNN
F 1 "GND" H 1305 3977 50  0000 C CNN
F 2 "" H 1300 4150 50  0001 C CNN
F 3 "" H 1300 4150 50  0001 C CNN
	1    1300 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5EBE2422
P 1450 3850
F 0 "C2" V 1198 3850 50  0000 C CNN
F 1 "22pF" V 1289 3850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1488 3700 50  0001 C CNN
F 3 "~" H 1450 3850 50  0001 C CNN
	1    1450 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5EBE086F
P 1450 3550
F 0 "C1" V 1198 3550 50  0000 C CNN
F 1 "22pF" V 1289 3550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1488 3400 50  0001 C CNN
F 3 "~" H 1450 3550 50  0001 C CNN
	1    1450 3550
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5EBDC364
P 1700 3700
F 0 "Y1" V 1600 3800 50  0000 L CNN
F 1 "8MHz" V 1700 3800 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_5032-2Pin_5.0x3.2mm" H 1700 3700 50  0001 C CNN
F 3 "~" H 1700 3700 50  0001 C CNN
	1    1700 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 4800 4100 4800
Wire Wire Line
	3250 4750 3600 4750
Wire Wire Line
	3600 4750 3600 4900
Wire Wire Line
	3600 4900 4100 4900
Wire Wire Line
	3250 4850 3550 4850
Wire Wire Line
	3550 4850 3550 5000
Wire Wire Line
	3550 5000 4100 5000
Wire Wire Line
	3250 4950 3500 4950
Wire Wire Line
	3500 4950 3500 5100
Wire Wire Line
	3500 5100 4100 5100
$Comp
L power:GND #PWR0110
U 1 1 5F47017D
P 3850 5200
F 0 "#PWR0110" H 3850 4950 50  0001 C CNN
F 1 "GND" H 3855 5027 50  0000 C CNN
F 2 "" H 3850 5200 50  0001 C CNN
F 3 "" H 3850 5200 50  0001 C CNN
	1    3850 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5F470A00
P 3850 4500
F 0 "#PWR0111" H 3850 4350 50  0001 C CNN
F 1 "+5V" H 3865 4673 50  0000 C CNN
F 2 "" H 3850 4500 50  0001 C CNN
F 3 "" H 3850 4500 50  0001 C CNN
	1    3850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4600 3850 4600
Wire Wire Line
	3850 4600 3850 4500
Wire Wire Line
	3850 5200 3850 4700
Wire Wire Line
	3850 4700 4100 4700
Text Label 3250 5850 0    50   ~ 0
drv1
Text Label 3250 5750 0    50   ~ 0
drv2
Text Label 3250 5650 0    50   ~ 0
drv3
Text Label 3250 5550 0    50   ~ 0
drv4
Text Label 3250 5450 0    50   ~ 0
drv5
Text Label 3250 5350 0    50   ~ 0
drv6
Text Label 3250 5250 0    50   ~ 0
drv7
Text Label 3250 5150 0    50   ~ 0
drv8
Text Label 3250 6650 0    50   ~ 0
drv10
Text Label 3250 6550 0    50   ~ 0
drv11
Text Label 3250 6450 0    50   ~ 0
drv12
Text Label 3250 6350 0    50   ~ 0
drv13
Text Label 3250 6250 0    50   ~ 0
drv14
Text Label 3250 4550 0    50   ~ 0
drv16
Text Label 3250 4450 0    50   ~ 0
drv15
Text Label 3250 4250 0    50   ~ 0
TP_CLK
Text Label 3250 6050 0    50   ~ 0
TP_DATA
Text Label 3250 6750 0    50   ~ 0
drv9
Text Label 4100 5200 2    50   ~ 0
PWR_SWITCH
Text Label 3250 4350 0    50   ~ 0
TP_RESET
$Comp
L power:+5V #PWR0107
U 1 1 5FD6E0F3
P 2650 2300
F 0 "#PWR0107" H 2650 2150 50  0001 C CNN
F 1 "+5V" H 2665 2473 50  0000 C CNN
F 2 "" H 2650 2300 50  0001 C CNN
F 3 "" H 2650 2300 50  0001 C CNN
	1    2650 2300
	1    0    0    -1  
$EndComp
Connection ~ 2650 2500
Wire Wire Line
	2650 2300 2650 2500
Text Label 3350 4050 2    50   ~ 0
s1
Text Label 3350 3950 2    50   ~ 0
s2
Text Label 3350 3850 2    50   ~ 0
s3
Text Label 3350 3750 2    50   ~ 0
s4
Text Label 3350 3650 2    50   ~ 0
s5
Text Label 3350 3550 2    50   ~ 0
s6
Text Label 3350 3450 2    50   ~ 0
s7
Text Label 3350 3350 2    50   ~ 0
s8
$Comp
L Connector:AVR-ISP-6 J2
U 1 1 5FE19D49
P 4350 2000
F 0 "J2" V 3883 2050 50  0000 C CNN
F 1 "AVR-ISP-6" V 3974 2050 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 4100 2050 50  0001 C CNN
F 3 " ~" H 3075 1450 50  0001 C CNN
	1    4350 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 2950 4250 2950
Wire Wire Line
	4250 2950 4250 2400
Text Label 3250 4650 0    50   ~ 0
~SS
Text Label 3250 4750 0    50   ~ 0
MOSI
Text Label 3250 4850 0    50   ~ 0
MISO
Text Label 3250 4950 0    50   ~ 0
SCK
Wire Wire Line
	3250 4650 3650 4650
Wire Wire Line
	3650 4650 3650 4800
Text Label 4450 2700 1    50   ~ 0
MOSI
Text Label 4550 2700 1    50   ~ 0
MISO
Text Label 4350 2700 1    50   ~ 0
SCK
Wire Wire Line
	4350 2700 4350 2400
Wire Wire Line
	4450 2700 4450 2400
Wire Wire Line
	4550 2700 4550 2400
$Comp
L power:+5V #PWR0101
U 1 1 5FE3CBF0
P 5300 1650
F 0 "#PWR0101" H 5300 1500 50  0001 C CNN
F 1 "+5V" H 5315 1823 50  0000 C CNN
F 2 "" H 5300 1650 50  0001 C CNN
F 3 "" H 5300 1650 50  0001 C CNN
	1    5300 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1900 5300 1900
Wire Wire Line
	5300 1900 5300 1650
$Comp
L power:GND #PWR0102
U 1 1 5FE405A2
P 3550 2200
F 0 "#PWR0102" H 3550 1950 50  0001 C CNN
F 1 "GND" H 3555 2027 50  0000 C CNN
F 2 "" H 3550 2200 50  0001 C CNN
F 3 "" H 3550 2200 50  0001 C CNN
	1    3550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2200 3550 1900
Wire Wire Line
	3550 1900 3950 1900
Wire Wire Line
	8450 5400 9300 5400
Text Label 6500 4600 0    50   ~ 0
s8
Text Label 6500 4500 0    50   ~ 0
s7
Text Label 6500 4400 0    50   ~ 0
s6
Text Label 6500 4300 0    50   ~ 0
s5
Text Label 6500 3900 0    50   ~ 0
s4
Text Label 6500 4000 0    50   ~ 0
s3
Text Label 6500 4100 0    50   ~ 0
s2
Text Label 6500 4200 0    50   ~ 0
s1
Wire Wire Line
	6500 4500 6950 4500
Wire Wire Line
	6500 4600 6950 4600
Wire Wire Line
	6500 4400 6950 4400
Wire Wire Line
	6500 4200 6950 4200
Wire Wire Line
	6500 4100 6950 4100
Wire Wire Line
	6950 4000 6500 4000
Wire Wire Line
	6500 3900 6950 3900
Wire Wire Line
	8450 5700 9150 5700
Wire Wire Line
	8600 5900 8600 6150
Connection ~ 8600 5900
Wire Wire Line
	8450 5900 8600 5900
Wire Wire Line
	6700 6150 8600 6150
Wire Wire Line
	8600 5800 8600 5900
Wire Wire Line
	8450 5800 8600 5800
Wire Wire Line
	6200 5700 6950 5700
Wire Wire Line
	6200 5600 6950 5600
Wire Wire Line
	6000 4750 6750 4750
Wire Wire Line
	6750 4700 6750 4750
Text Label 6000 4750 0    50   ~ 0
PWR_SWITCH
Wire Wire Line
	6950 4700 6750 4700
Text Label 6200 5600 0    50   ~ 0
TP_DATA
Text Label 6200 5700 0    50   ~ 0
TP_CLK
Text Label 9150 5700 2    50   ~ 0
TP_RESET
Text Label 9650 5300 2    50   ~ 0
drv16
Text Label 9650 5200 2    50   ~ 0
drv15
Text Label 9650 5100 2    50   ~ 0
drv14
Text Label 9650 5000 2    50   ~ 0
drv13
Text Label 9650 4900 2    50   ~ 0
drv12
Text Label 9650 4800 2    50   ~ 0
drv11
Text Label 9650 4700 2    50   ~ 0
drv10
Text Label 9650 4600 2    50   ~ 0
drv9
Text Label 9650 4500 2    50   ~ 0
drv8
Text Label 9650 4400 2    50   ~ 0
drv7
Text Label 9650 4300 2    50   ~ 0
drv6
Text Label 9650 4200 2    50   ~ 0
drv5
Text Label 9650 4100 2    50   ~ 0
drv4
Text Label 9650 4000 2    50   ~ 0
drv3
Text Label 9650 3900 2    50   ~ 0
drv2
Text Label 9650 3800 2    50   ~ 0
drv1
Text Label 7600 3250 2    50   ~ 0
conn20
Text Label 7600 3150 2    50   ~ 0
conn19
Text Label 7600 3050 2    50   ~ 0
conn18
Text Label 7600 2950 2    50   ~ 0
conn17
Text Label 7600 2850 2    50   ~ 0
conn16
Text Label 7600 2750 2    50   ~ 0
conn15
Text Label 7600 2650 2    50   ~ 0
conn14
Text Label 7600 2550 2    50   ~ 0
conn13
Text Label 7600 2450 2    50   ~ 0
conn12
Text Label 7600 2350 2    50   ~ 0
conn11
Text Label 7600 2250 2    50   ~ 0
conn10
Text Label 7600 2150 2    50   ~ 0
conn9
Text Label 7600 2050 2    50   ~ 0
conn8
Text Label 7600 1950 2    50   ~ 0
conn7
Text Label 7600 1850 2    50   ~ 0
conn6
Text Label 7600 1750 2    50   ~ 0
conn5
Text Label 7600 1650 2    50   ~ 0
conn4
Text Label 7600 1550 2    50   ~ 0
conn3
Text Label 7600 1450 2    50   ~ 0
conn2
Text Label 7600 1350 2    50   ~ 0
conn1
Text Label 8100 3250 0    50   ~ 0
conn40
Text Label 8100 3150 0    50   ~ 0
conn39
Text Label 8100 3050 0    50   ~ 0
conn38
Text Label 8100 2950 0    50   ~ 0
conn37
Text Label 8100 2850 0    50   ~ 0
conn36
Text Label 8100 2750 0    50   ~ 0
conn35
Text Label 8100 2650 0    50   ~ 0
conn34
Text Label 8100 2550 0    50   ~ 0
conn33
Text Label 8100 2450 0    50   ~ 0
conn32
Text Label 8100 2350 0    50   ~ 0
conn31
Text Label 8100 2250 0    50   ~ 0
conn30
Text Label 8100 2150 0    50   ~ 0
conn29
Text Label 8100 2050 0    50   ~ 0
conn28
Text Label 8100 1950 0    50   ~ 0
conn27
Text Label 8100 1850 0    50   ~ 0
conn26
Text Label 8100 1750 0    50   ~ 0
conn25
Text Label 8100 1650 0    50   ~ 0
conn24
Text Label 8100 1550 0    50   ~ 0
conn23
Text Label 8100 1450 0    50   ~ 0
conn22
Text Label 8100 1350 0    50   ~ 0
conn21
Text Label 8450 5700 0    50   ~ 0
conn40
Text Label 8450 5600 0    50   ~ 0
conn39
Text Label 8450 5500 0    50   ~ 0
conn38
Text Label 8450 5400 0    50   ~ 0
conn37
Text Label 8450 5300 0    50   ~ 0
conn36
Text Label 8450 5200 0    50   ~ 0
conn35
Text Label 8450 5100 0    50   ~ 0
conn34
Text Label 8450 5000 0    50   ~ 0
conn33
Text Label 8450 4900 0    50   ~ 0
conn32
Text Label 8450 4800 0    50   ~ 0
conn31
Text Label 8450 4700 0    50   ~ 0
conn30
Text Label 8450 4600 0    50   ~ 0
conn29
Text Label 8450 4500 0    50   ~ 0
conn28
Text Label 8450 4400 0    50   ~ 0
conn27
Text Label 8450 4300 0    50   ~ 0
conn26
Text Label 8450 4200 0    50   ~ 0
conn25
Text Label 8450 4100 0    50   ~ 0
conn24
Text Label 8450 4000 0    50   ~ 0
conn23
Text Label 8450 3900 0    50   ~ 0
conn22
Text Label 8450 3800 0    50   ~ 0
conn21
Text Label 6950 5700 2    50   ~ 0
conn20
Text Label 6950 5600 2    50   ~ 0
conn19
Text Label 6950 5500 2    50   ~ 0
conn18
Text Label 6950 5400 2    50   ~ 0
conn17
Text Label 6950 5300 2    50   ~ 0
conn16
Text Label 6950 5200 2    50   ~ 0
conn15
Text Label 6950 5100 2    50   ~ 0
conn14
Text Label 6950 5000 2    50   ~ 0
conn13
Text Label 6950 4900 2    50   ~ 0
conn12
Text Label 6950 4800 2    50   ~ 0
conn11
Text Label 6950 4700 2    50   ~ 0
conn10
Text Label 6950 4600 2    50   ~ 0
conn9
Text Label 6950 4500 2    50   ~ 0
conn8
Text Label 6950 4400 2    50   ~ 0
conn7
Text Label 6950 4300 2    50   ~ 0
conn6
Text Label 6950 4200 2    50   ~ 0
conn5
Text Label 6950 4100 2    50   ~ 0
conn4
Text Label 6950 4000 2    50   ~ 0
conn3
Text Label 6950 3900 2    50   ~ 0
conn2
Text Label 6950 3800 2    50   ~ 0
conn1
Wire Wire Line
	8450 3900 9650 3900
Wire Wire Line
	8450 5600 10000 5600
Wire Wire Line
	8450 4000 9650 4000
Wire Wire Line
	8450 4100 9650 4100
Wire Wire Line
	8450 4200 9650 4200
Wire Wire Line
	8450 4300 9650 4300
Wire Wire Line
	8450 4400 9650 4400
Wire Wire Line
	8450 4500 9650 4500
Wire Wire Line
	8450 4600 9650 4600
Wire Wire Line
	8450 4800 9650 4800
Wire Wire Line
	8450 4900 9650 4900
Wire Wire Line
	8450 5000 9650 5000
Wire Wire Line
	8450 5100 9650 5100
Wire Wire Line
	8450 5200 9650 5200
Wire Wire Line
	8450 5300 9650 5300
Wire Wire Line
	8450 3800 9650 3800
$Comp
L tpk_parts:conn-x220-kb U2
U 1 1 5EBADE9C
P 7700 4850
F 0 "U2" H 7700 6265 50  0000 C CNN
F 1 "conn-x220-kb" H 7700 6174 50  0000 C CNN
F 2 "tpk_parts:AA01B-S040VA1" H 7700 4850 50  0001 C CNN
F 3 "DOCUMENTATION" H 7700 4850 50  0001 C CNN
	1    7700 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5300 6700 5800
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J3
U 1 1 5EC61EE2
P 7800 2250
F 0 "J3" H 7850 3367 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 7850 3276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 7800 2250 50  0001 C CNN
F 3 "~" H 7800 2250 50  0001 C CNN
	1    7800 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 5600 10000 5300
$Comp
L power:+5V #PWR0104
U 1 1 5EC44C27
P 10000 5300
F 0 "#PWR0104" H 10000 5150 50  0001 C CNN
F 1 "+5V" H 10015 5473 50  0000 C CNN
F 2 "" H 10000 5300 50  0001 C CNN
F 3 "" H 10000 5300 50  0001 C CNN
	1    10000 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 6150 6700 6200
Connection ~ 6700 6150
Wire Wire Line
	6700 5900 6700 6150
Connection ~ 6700 5900
Wire Wire Line
	6950 5900 6700 5900
Wire Wire Line
	6700 5800 6700 5900
Connection ~ 6700 5800
Wire Wire Line
	6950 5800 6700 5800
Wire Wire Line
	6950 5300 6700 5300
$Comp
L power:GND #PWR0103
U 1 1 5EC32335
P 6700 6200
F 0 "#PWR0103" H 6700 5950 50  0001 C CNN
F 1 "GND" H 6705 6027 50  0000 C CNN
F 2 "" H 6700 6200 50  0001 C CNN
F 3 "" H 6700 6200 50  0001 C CNN
	1    6700 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5900 9300 5900
Wire Wire Line
	9300 5400 9300 5500
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FE4FC11
P 5300 1900
F 0 "#FLG0101" H 5300 1975 50  0001 C CNN
F 1 "PWR_FLAG" V 5300 2028 50  0000 L CNN
F 2 "" H 5300 1900 50  0001 C CNN
F 3 "~" H 5300 1900 50  0001 C CNN
	1    5300 1900
	0    1    1    0   
$EndComp
Connection ~ 5300 1900
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5FE503DA
P 2650 7300
F 0 "#FLG0102" H 2650 7375 50  0001 C CNN
F 1 "PWR_FLAG" V 2650 7428 50  0000 L CNN
F 2 "" H 2650 7300 50  0001 C CNN
F 3 "~" H 2650 7300 50  0001 C CNN
	1    2650 7300
	0    1    1    0   
$EndComp
Connection ~ 2650 7300
Wire Wire Line
	2650 7300 2650 7400
$Comp
L MCU_Microchip_ATmega:ATmega32A-AU U1
U 1 1 5EBB18D5
P 2650 5050
F 0 "U1" H 2650 2961 50  0000 C CNN
F 1 "ATmega32A-AU" H 2650 2870 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 2650 5050 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-8155-8-bit-microcontroller-avr-atmega32a_datasheet.pdf" H 2650 5050 50  0001 C CNN
	1    2650 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4050 3350 4050
Wire Wire Line
	3250 3950 3350 3950
Wire Wire Line
	3250 3850 3350 3850
Wire Wire Line
	3250 3750 3350 3750
Wire Wire Line
	3250 3650 3350 3650
Wire Wire Line
	3250 3550 3350 3550
Wire Wire Line
	3250 3450 3350 3450
Wire Wire Line
	3250 3350 3350 3350
Wire Wire Line
	6500 4300 6950 4300
Wire Wire Line
	8450 4700 9650 4700
Wire Wire Line
	8450 5500 9300 5500
Connection ~ 9300 5500
Wire Wire Line
	9300 5500 9300 5900
$Comp
L Connector:Conn_01x07_Male J1
U 1 1 5EC2967D
P 4300 4900
F 0 "J1" H 4272 4832 50  0000 R CNN
F 1 "Conn_01x07_Male" H 4272 4923 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 4300 4900 50  0001 C CNN
F 3 "~" H 4300 4900 50  0001 C CNN
	1    4300 4900
	-1   0    0    1   
$EndComp
Text Label 6500 3800 0    50   ~ 0
HOTKEY
Wire Wire Line
	6500 3800 6950 3800
Text Label 3250 6150 0    50   ~ 0
HOTKEY
Text Label 6200 5500 0    50   ~ 0
LED_SINK
Wire Wire Line
	6950 5500 6200 5500
$Comp
L power:+5V #PWR0108
U 1 1 5EC3A0EE
P 1800 4200
F 0 "#PWR0108" H 1800 4050 50  0001 C CNN
F 1 "+5V" H 1815 4373 50  0000 C CNN
F 2 "" H 1800 4200 50  0001 C CNN
F 3 "" H 1800 4200 50  0001 C CNN
	1    1800 4200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5EC41002
P 4450 7050
F 0 "H3" H 4550 7096 50  0000 L CNN
F 1 "MountingHole" H 4550 7005 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 4450 7050 50  0001 C CNN
F 3 "~" H 4450 7050 50  0001 C CNN
	1    4450 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5EC4B3EE
P 4450 6800
F 0 "H2" H 4550 6846 50  0000 L CNN
F 1 "MountingHole" H 4550 6755 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 4450 6800 50  0001 C CNN
F 3 "~" H 4450 6800 50  0001 C CNN
	1    4450 6800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5EC4E42C
P 4450 6550
F 0 "H1" H 4550 6596 50  0000 L CNN
F 1 "MountingHole" H 4550 6505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 4450 6550 50  0001 C CNN
F 3 "~" H 4450 6550 50  0001 C CNN
	1    4450 6550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
