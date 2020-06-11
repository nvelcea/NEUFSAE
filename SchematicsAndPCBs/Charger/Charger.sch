EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 7874 5906
encoding utf-8
Sheet 1 1
Title "BMS Controlled Charging"
Date "2020-02-19"
Rev "2"
Comp "Northeastern FSAE Electric"
Comment1 "Matthew McCauley"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+12V #PWR?
U 1 1 5D97D1B5
P 1200 3000
F 0 "#PWR?" H 1200 2850 50  0001 C CNN
F 1 "+12V" V 1215 3128 50  0000 L CNN
F 2 "" H 1200 3000 50  0001 C CNN
F 3 "" H 1200 3000 50  0001 C CNN
	1    1200 3000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D97E3A1
P 1200 3200
F 0 "#PWR?" H 1200 2950 50  0001 C CNN
F 1 "GND" V 1205 3072 50  0000 R CNN
F 2 "" H 1200 3200 50  0001 C CNN
F 3 "" H 1200 3200 50  0001 C CNN
	1    1200 3200
	0    1    1    0   
$EndComp
$Comp
L Relay:Fujitsu_FTR-F1A K1
U 1 1 5D9849C6
P 2250 2500
F 0 "K1" H 2250 1983 50  0000 C CNN
F 1 "Safety Relay" H 2250 2074 50  0000 C CNN
F 2 "Relay_THT:Relay_DPST_Fujitsu_FTR-F1A" H 2250 2100 50  0001 C CNN
F 3 "https://www.fujitsu.com/downloads/MICRO/fcai/relays/ftr-f1.pdf" H 2300 3050 50  0001 C CNN
	1    2250 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5D98E5F2
P 1550 2500
F 0 "F1" V 1747 2500 50  0000 C CNN
F 1 "10A" V 1656 2500 50  0000 C CNN
F 2 "" V 1480 2500 50  0001 C CNN
F 3 "~" H 1550 2500 50  0001 C CNN
	1    1550 2500
	0    -1   -1   0   
$EndComp
$Comp
L Charger-rescue:TSM2500-FSAE_Components U?
U 1 1 5D991285
P 4700 1700
F 0 "U?" H 4700 1700 50  0001 C CNN
F 1 "TSM2500" H 4750 1733 50  0000 C CNN
F 2 "" H 4700 1700 50  0001 C CNN
F 3 "http://www.thunderstruck-ev.com/images/ThunderStruck%20TSM2500%20ManualV1.05.pdf" H 4700 1700 50  0001 C CNN
	1    4700 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2300 3000 2300
Wire Wire Line
	1700 2500 1950 2500
Wire Wire Line
	1200 3000 1650 3000
Wire Wire Line
	1650 3000 1650 2700
Wire Wire Line
	1650 2700 1950 2700
$Comp
L Device:Fuse F2
U 1 1 5D995D43
P 5800 1850
F 0 "F2" V 5603 1850 50  0000 C CNN
F 1 "15A" V 5694 1850 50  0000 C CNN
F 2 "" V 5730 1850 50  0001 C CNN
F 3 "~" H 5800 1850 50  0001 C CNN
	1    5800 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 1850 5650 1850
Wire Wire Line
	5950 1850 6450 1850
Text Label 6450 2250 0    50   ~ 0
VehicleCAN_H
Wire Wire Line
	1200 3200 2300 3200
Wire Wire Line
	2300 3200 2300 3400
Wire Wire Line
	1650 3000 2550 3000
Wire Wire Line
	2550 3000 2550 3400
Connection ~ 1650 3000
Wire Wire Line
	2550 2700 2800 2700
Wire Wire Line
	2800 2700 2800 3400
Text Label 2300 3400 3    50   ~ 0
BMSConnectedGround
Text Label 2550 3400 3    50   ~ 0
ChargePower_BMSMainIO#3
Text Label 2800 3400 3    50   ~ 0
ChargeSafetySignal_BMSMainIO#6
Wire Wire Line
	3000 2100 4100 2100
Wire Wire Line
	2550 2500 3200 2500
Wire Wire Line
	3200 2250 4100 2250
$Comp
L Connector:Conn_WallSocket_Earth J1
U 1 1 5D9B86A5
P 950 2300
F 0 "J1" H 956 1804 50  0000 C CNN
F 1 "WallSocket" H 956 1895 50  0000 C CNN
F 2 "" H 650 2400 50  0001 C CNN
F 3 "~" H 650 2400 50  0001 C CNN
	1    950  2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 2500 1400 2500
Wire Wire Line
	1150 2100 1450 2100
Wire Wire Line
	1450 2100 1450 1850
Wire Wire Line
	1150 2300 1950 2300
Wire Wire Line
	5350 2000 6450 2000
Wire Wire Line
	5350 2250 6450 2250
Wire Wire Line
	5350 2400 6450 2400
Text Label 6450 2400 0    50   ~ 0
VehicleCAN_L
Text Label 6450 1850 0    50   ~ 0
Accumulator+
Text Label 6450 2000 0    50   ~ 0
Accumulator-
Wire Wire Line
	1450 1850 4100 1850
Wire Wire Line
	3000 2100 3000 2300
Wire Wire Line
	3200 2250 3200 2500
$EndSCHEMATC
