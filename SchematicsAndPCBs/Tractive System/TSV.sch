EESchema Schematic File Version 4
LIBS:TSV-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Tractive System Overview"
Date "2020-07-18"
Rev "3"
Comp "Northeastern Electric Racing"
Comment1 "Wire labels follow \"ID#_#AWG\" format"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TSV-rescue:Emrax228HV_Motor-FSAE-TSV-shematic-rescue U4
U 1 1 5E50B340
P 10800 3450
F 0 "U4" H 10669 3545 50  0000 C CNN
F 1 "Emrax228HV_Motor" H 10669 3454 50  0000 C CNN
F 2 "" H 10800 3450 50  0001 C CNN
F 3 "" H 10800 3450 50  0001 C CNN
	1    10800 3450
	1    0    0    -1  
$EndComp
$Comp
L TSV-rescue:TSAL_ISOLATION-FSAE-TSV-shematic-rescue U1
U 1 1 5E5145FA
P 7050 4950
F 0 "U1" H 7075 5065 50  0000 C CNN
F 1 "TSAL_ISOLATION" H 7075 4974 50  0000 C CNN
F 2 "" H 7050 4950 50  0001 C CNN
F 3 "" H 7050 4950 50  0001 C CNN
	1    7050 4950
	1    0    0    -1  
$EndComp
$Comp
L TSV-rescue:TSMP-FSAE-TSV-shematic-rescue U5
U 1 1 5E510789
P 8550 1700
F 0 "U5" H 8608 1825 50  0000 C CNN
F 1 "TSMP" H 8608 1734 50  0000 C CNN
F 2 "" H 8550 1700 50  0001 C CNN
F 3 "" H 8550 1700 50  0001 C CNN
	1    8550 1700
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5E504806
P 2600 3950
F 0 "SW1" H 2600 4185 50  0000 C CNN
F 1 "HVD" H 2600 4094 50  0000 C CNN
F 2 "" H 2600 3950 50  0001 C CNN
F 3 "~" H 2600 3950 50  0001 C CNN
	1    2600 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BatterySegment1
U 1 1 5E51E2A7
P 1750 5700
F 0 "BatterySegment1" V 1995 5700 50  0000 C CNN
F 1 "7p18s" V 1904 5700 50  0000 C CNN
F 2 "" V 1750 5760 50  0001 C CNN
F 3 "~" V 1750 5760 50  0001 C CNN
	1    1750 5700
	0    -1   -1   0   
$EndComp
$Comp
L Device:Battery BatterySegment2
U 1 1 5E5231D7
P 1750 4850
F 0 "BatterySegment2" V 1505 4850 50  0000 C CNN
F 1 "7p18s" V 1596 4850 50  0000 C CNN
F 2 "" V 1750 4910 50  0001 C CNN
F 3 "~" V 1750 4910 50  0001 C CNN
	1    1750 4850
	0    1    1    0   
$EndComp
$Comp
L Device:Battery BatterySegment3
U 1 1 5E5246AC
P 1750 3950
F 0 "BatterySegment3" V 1995 3950 50  0000 C CNN
F 1 "7p18s" V 1904 3950 50  0000 C CNN
F 2 "" V 1750 4010 50  0001 C CNN
F 3 "~" V 1750 4010 50  0001 C CNN
	1    1750 3950
	0    -1   -1   0   
$EndComp
$Comp
L Device:Battery BatterySegment4
U 1 1 5E52547E
P 1750 3100
F 0 "BatterySegment4" V 1505 3100 50  0000 C CNN
F 1 "7p18s" V 1596 3100 50  0000 C CNN
F 2 "" V 1750 3160 50  0001 C CNN
F 3 "~" V 1750 3160 50  0001 C CNN
	1    1750 3100
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST SW2
U 1 1 5E5283A8
P 1100 4850
F 0 "SW2" H 1100 5085 50  0000 C CNN
F 1 "SMD" H 1100 4994 50  0000 C CNN
F 2 "" H 1100 4850 50  0001 C CNN
F 3 "~" H 1100 4850 50  0001 C CNN
	1    1100 4850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW3
U 1 1 5E5292F5
P 1100 3100
F 0 "SW3" H 1100 3335 50  0000 C CNN
F 1 "SMD" H 1100 3244 50  0000 C CNN
F 2 "" H 1100 3100 50  0001 C CNN
F 3 "~" H 1100 3100 50  0001 C CNN
	1    1100 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  4850 800  5700
Wire Wire Line
	1300 4850 1550 4850
Wire Wire Line
	3000 3950 3000 4850
Wire Wire Line
	800  3100 800  3950
Wire Wire Line
	1300 3100 1550 3100
$Comp
L TSV-rescue:RinehartPM100DX-FSAE-TSV-shematic-rescue U3
U 1 1 5E5F7FCC
P 9400 3500
F 0 "U3" H 9400 3615 50  0000 C CNN
F 1 "RinehartPM100DX" H 9400 3524 50  0000 C CNN
F 2 "" H 9400 3500 50  0001 C CNN
F 3 "" H 9400 3500 50  0001 C CNN
	1    9400 3500
	1    0    0    -1  
$EndComp
Text Label 4750 700  2    50   ~ 0
Shutdown-
$Comp
L Relay:MSxx-1Bxx-75 K4
U 1 1 5E637554
P 5150 4400
F 0 "K4" V 4583 4400 50  0000 C CNN
F 1 "SPST-NC (Discharge)" V 4674 4400 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 5500 4350 50  0001 L CNN
F 3 "https://standexelectronics.com/de/produkte/ms-reed-relais/" H 5150 4400 50  0001 C CNN
	1    5150 4400
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5E640862
P 2600 3100
F 0 "F1" V 2403 3100 50  0000 C CNN
F 1 "Fuse" V 2494 3100 50  0000 C CNN
F 2 "" V 2530 3100 50  0001 C CNN
F 3 "~" H 2600 3100 50  0001 C CNN
	1    2600 3100
	0    1    1    0   
$EndComp
Text Label 4750 800  2    50   ~ 0
Shutdown+
Text Label 5700 800  0    50   ~ 0
MC_PreCharge+
Text Label 5700 700  0    50   ~ 0
MC_PreCharge-
$Comp
L Relay:DIPxx-1Axx-11x K3
U 1 1 5EBDE2B9
P 4300 5500
F 0 "K3" V 3733 5500 50  0000 C CNN
F 1 "SPST-NO (AIR)" V 3824 5500 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 4650 5450 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 4300 5500 50  0001 C CNN
	1    4300 5500
	0    1    1    0   
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K2
U 1 1 5EBE5BCF
P 4300 3400
F 0 "K2" V 3733 3400 50  0000 C CNN
F 1 "SPST-NO (AIR)" V 3824 3400 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 4650 3350 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 4300 3400 50  0001 C CNN
	1    4300 3400
	0    1    1    0   
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K1
U 1 1 5EBEB71B
P 4300 2400
F 0 "K1" V 3733 2400 50  0000 C CNN
F 1 "SPST-NO (Precharge)" V 3824 2400 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 4650 2350 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 4300 2400 50  0001 C CNN
	1    4300 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 3950 3000 3950
Wire Wire Line
	900  3100 800  3100
Wire Wire Line
	800  3950 1550 3950
Wire Wire Line
	900  4850 800  4850
Wire Wire Line
	800  5700 1550 5700
Wire Wire Line
	1950 5700 4000 5700
Connection ~ 3150 3100
Wire Wire Line
	3150 2600 3150 3100
Wire Wire Line
	4850 3200 4850 2400
Wire Wire Line
	4600 5700 4800 5700
Connection ~ 4800 5700
Wire Wire Line
	3150 2600 4000 2600
Wire Wire Line
	3150 3600 4000 3600
Wire Wire Line
	4600 3200 4850 3200
Wire Wire Line
	2750 3100 3150 3100
Wire Wire Line
	4800 4600 4800 5700
Wire Wire Line
	4000 2200 3700 2200
Wire Wire Line
	3700 2200 3700 3200
Wire Wire Line
	4000 5300 3700 5300
Wire Wire Line
	4000 3200 3700 3200
Connection ~ 3700 3200
Wire Wire Line
	3700 3200 3700 4200
Wire Wire Line
	4850 4200 3700 4200
Connection ~ 3700 4200
Wire Wire Line
	3700 4200 3700 5300
Wire Wire Line
	5700 2300 6000 2300
Wire Wire Line
	6000 2300 6000 4200
Wire Wire Line
	6000 4200 6000 5300
Connection ~ 6000 4200
Wire Wire Line
	4600 5300 6000 5300
Wire Wire Line
	4800 5700 6500 5700
Text Notes 650  1350 0    118  ~ 0
Accumulator Container
$Comp
L TSV-rescue:IMD-FSAE-TSV-shematic-rescue U6
U 1 1 5E511816
P 9500 1700
F 0 "U6" H 9558 1825 50  0000 C CNN
F 1 "IMD" H 9558 1734 50  0000 C CNN
F 2 "" H 9500 1700 50  0001 C CNN
F 3 "" H 9500 1700 50  0001 C CNN
	1    9500 1700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10050 1950 10050 1800
Connection ~ 10050 1800
Wire Wire Line
	10050 1800 10300 1800
Text Label 10300 2100 0    50   ~ 0
IMD_Latching_PCB
Wire Wire Line
	9900 1800 10050 1800
Wire Wire Line
	9900 1950 10050 1950
Wire Wire Line
	9900 2100 10300 2100
$Comp
L TSV-rescue:TSAL-FSAE-TSV-shematic-rescue U2
U 1 1 5EEFDE3A
P 9150 4950
F 0 "U2" H 9278 4801 50  0000 L CNN
F 1 "TSAL" H 9278 4710 50  0000 L CNN
F 2 "" H 9150 4950 50  0001 C CNN
F 3 "" H 9150 4950 50  0001 C CNN
	1    9150 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3600 6650 5050
Wire Bus Line
	1750 5750 1750 5850
Wire Bus Line
	1750 5850 2050 5850
Wire Bus Line
	1750 4900 1750 5000
Wire Bus Line
	1750 5000 2100 5000
Wire Bus Line
	1750 4000 1750 4100
Wire Bus Line
	1750 4100 2150 4100
Wire Wire Line
	1950 3950 2400 3950
Wire Wire Line
	1950 4850 3000 4850
Wire Bus Line
	1750 3150 1750 3250
Wire Bus Line
	1750 3250 2200 3250
Wire Wire Line
	1950 3100 2450 3100
Wire Bus Line
	2200 3250 2200 6800
Wire Bus Line
	2150 4100 2150 6800
Wire Bus Line
	2100 5000 2100 6800
Wire Bus Line
	2050 5850 2050 6800
Wire Wire Line
	4850 2400 5100 2400
Wire Wire Line
	4600 2200 5100 2200
Text Notes 1600 7000 0    50   ~ 0
        Orion BMS 2\nVoltage Taps and Thermistors
Wire Wire Line
	9950 3600 10350 3600
Wire Wire Line
	10350 3600 10350 3650
Wire Wire Line
	9950 3800 10350 3800
Wire Wire Line
	10350 4000 10350 3950
Wire Wire Line
	9950 4000 10350 4000
Wire Wire Line
	4800 4600 4850 4600
$Comp
L Device:R R2
U 1 1 5F158D54
P 6200 4400
F 0 "R2" H 6270 4446 50  0000 L CNN
F 1 "3.3k" H 6270 4355 50  0000 L CNN
F 2 "" V 6130 4400 50  0001 C CNN
F 3 "~" H 6200 4400 50  0001 C CNN
	1    6200 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F159E72
P 6200 2800
F 0 "R1" H 6270 2846 50  0000 L CNN
F 1 "600" H 6270 2755 50  0000 L CNN
F 2 "" V 6130 2800 50  0001 C CNN
F 3 "~" H 6200 2800 50  0001 C CNN
	1    6200 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2650 6200 2600
Wire Wire Line
	6200 2950 6200 3600
Connection ~ 6200 3600
Wire Wire Line
	4600 2600 6200 2600
Wire Wire Line
	4600 3600 6200 3600
Wire Wire Line
	6200 4550 6200 4600
Wire Wire Line
	5450 4600 6200 4600
Wire Wire Line
	5450 4200 6000 4200
Wire Wire Line
	6200 3600 6200 4250
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 5F1E6F1F
P 7850 3600
F 0 "J3" H 7742 3785 50  0000 C CNN
F 1 "Main TS Connector" H 7742 3694 50  0000 C CNN
F 2 "" H 7850 3600 50  0001 C CNN
F 3 "~" H 7850 3600 50  0001 C CNN
	1    7850 3600
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J2
U 1 1 5F1E9418
P 7850 5050
F 0 "J2" H 7742 5235 50  0000 C CNN
F 1 "TSAL Connector" H 7742 5144 50  0000 C CNN
F 2 "" H 7850 5050 50  0001 C CNN
F 3 "~" H 7850 5050 50  0001 C CNN
	1    7850 5050
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5F1EC371
P 7850 5050
F 0 "J?" H 7822 4978 50  0001 R CNN
F 1 "Conn_01x02_Male" H 7822 4933 50  0001 R CNN
F 2 "" H 7850 5050 50  0001 C CNN
F 3 "~" H 7850 5050 50  0001 C CNN
	1    7850 5050
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5F1EE03B
P 7850 3600
F 0 "J?" H 7822 3574 50  0001 R CNN
F 1 "Conn_01x02_Male" H 7822 3528 50  0001 R CNN
F 2 "" H 7850 3600 50  0001 C CNN
F 3 "~" H 7850 3600 50  0001 C CNN
	1    7850 3600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND Chasis
U 1 1 5F24DD62
P 10300 1800
F 0 "Chasis" V 10351 1672 50  0000 R CNN
F 1 "GND" V 10260 1672 50  0000 R CNN
F 2 "" H 10300 1800 50  0001 C CNN
F 3 "" H 10300 1800 50  0001 C CNN
	1    10300 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 3600 6650 3600
Wire Wire Line
	6650 5300 6500 5300
Connection ~ 6500 5300
Wire Wire Line
	6500 5300 6500 5700
Wire Wire Line
	7650 3600 7250 3600
Connection ~ 6650 3600
Wire Wire Line
	6500 3700 6500 5300
Wire Wire Line
	8050 3700 8750 3700
Wire Wire Line
	8750 3700 8750 4000
Wire Wire Line
	8750 4000 8850 4000
Wire Wire Line
	7450 5050 7650 5050
Wire Wire Line
	7650 5150 7550 5150
Wire Wire Line
	7550 5150 7550 5300
Wire Wire Line
	7550 5300 7450 5300
Wire Wire Line
	8050 5050 8850 5050
Wire Wire Line
	8850 5250 8700 5250
Wire Wire Line
	8700 5250 8700 5150
Wire Wire Line
	8700 5150 8050 5150
Wire Wire Line
	7650 2550 6650 2550
Wire Wire Line
	7650 2650 6750 2650
Wire Wire Line
	8050 2550 8100 2550
Wire Wire Line
	8100 2550 8100 1800
Wire Wire Line
	8100 1800 8200 1800
Wire Wire Line
	8200 1950 8200 2650
Wire Wire Line
	8200 2650 8050 2650
Wire Wire Line
	8850 1800 9000 1800
Wire Wire Line
	9000 1950 8950 1950
Text Label 2450 5700 0    50   ~ 0
1_2
Text Label 900  5700 0    50   ~ 0
2_2
Text Label 1400 4850 0    50   ~ 0
3_2
Text Label 2400 4850 0    50   ~ 0
4_2
Text Label 2000 3950 0    50   ~ 0
5_2
Text Label 1000 3950 0    50   ~ 0
6_2
Text Label 1350 3100 0    50   ~ 0
7_2
Text Label 2100 3100 0    50   ~ 0
8_2
Text Label 2950 3100 0    50   ~ 0
9_2
Text Label 5050 3600 0    50   ~ 0
10_2
Text Label 5750 2600 0    50   ~ 0
11_2
Text Label 5350 5700 0    50   ~ 0
12_2
Text Label 8400 2750 0    50   ~ 0
14_20
Text Label 8400 2850 0    50   ~ 0
15_20
Text Label 8400 3600 0    50   ~ 0
16_2
Text Label 8400 3700 0    50   ~ 0
17_2
Text Label 10000 3600 0    50   ~ 0
18_2
Text Label 10000 3800 0    50   ~ 0
19_2
Text Label 10000 4000 0    50   ~ 0
20_2
Text Label 7450 5050 0    50   ~ 0
21_20
Text Label 7450 5300 0    50   ~ 0
22_20
Text Label 8450 5050 0    50   ~ 0
23_20
Text Label 8450 5150 0    50   ~ 0
24_20
Text Label 4100 1450 0    50   ~ 0
25_20
Text Label 5800 1450 0    50   ~ 0
26_20
Text Label 5650 4600 0    50   ~ 0
13_2
Wire Wire Line
	3150 3100 3150 3600
Text Label 4750 2200 0    50   ~ 0
27_20
Text Label 4750 3200 0    50   ~ 0
28_20
$Comp
L Relay:DIPxx-1Cxx-51x K5
U 1 1 5F2A4DCA
P 5400 2100
F 0 "K5" V 4833 2100 50  0000 C CNN
F 1 "SPDT (Precharge Control)" V 4924 2100 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 5850 2050 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 5400 2100 50  0001 C CNN
	1    5400 2100
	0    -1   1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5F2AF3BD
P 6650 3200
F 0 "R3" H 6720 3246 50  0000 L CNN
F 1 "10k" H 6720 3155 50  0000 L CNN
F 2 "" V 6580 3200 50  0001 C CNN
F 3 "~" H 6650 3200 50  0001 C CNN
	1    6650 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6650 3050 6650 2550
Text Notes 9050 2350 0    50   ~ 0
Current draw of IMD\nmust be confirmed
Wire Wire Line
	8850 3600 8050 3600
Text Notes 8250 3000 0    39   ~ 0
Smaller AWG could be used\nbased on 2.03 A rating
Text Notes 8300 4950 0    39   ~ 0
Smaller AWG could be used\nbased on --- A rating
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 5F2FC148
P 5250 1150
F 0 "J1" V 5096 1298 50  0000 L CNN
F 1 "Shutdown/Precharge Connector" V 5187 1298 50  0000 L CNN
F 2 "" H 5250 1150 50  0001 C CNN
F 3 "~" H 5250 1150 50  0001 C CNN
	1    5250 1150
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5F2FD6BE
P 5250 1150
F 0 "J?" V 5312 1294 50  0001 L CNN
F 1 "Conn_01x04_Male" V 5358 1294 50  0001 L CNN
F 2 "" H 5250 1150 50  0001 C CNN
F 3 "~" H 5250 1150 50  0001 C CNN
	1    5250 1150
	0    1    1    0   
$EndComp
Wire Notes Line
	7850 6250 600  6250
Wire Notes Line
	600  1150 600  6250
Wire Notes Line
	600  1150 7850 1150
Wire Notes Line
	7850 1150 7850 6250
Wire Wire Line
	5750 1400 5350 1400
Wire Wire Line
	5350 1400 5350 1350
Wire Wire Line
	5750 1400 5750 1900
Wire Wire Line
	5750 1900 5700 1900
Wire Wire Line
	5100 1900 5050 1900
Wire Wire Line
	5050 1900 5050 1550
Wire Wire Line
	5050 1550 5250 1550
Wire Wire Line
	5250 1550 5250 1350
Wire Wire Line
	6000 2300 6000 1450
Wire Wire Line
	6000 1450 5150 1450
Wire Wire Line
	5150 1450 5150 1350
Connection ~ 6000 2300
Wire Wire Line
	3700 2200 3700 1450
Wire Wire Line
	3700 1450 5050 1450
Wire Wire Line
	5050 1450 5050 1350
Connection ~ 3700 2200
Wire Wire Line
	5700 800  5350 800 
Wire Wire Line
	5350 800  5350 950 
Wire Wire Line
	5700 700  5250 700 
Wire Wire Line
	5250 700  5250 950 
Wire Wire Line
	5150 950  5150 700 
Wire Wire Line
	5150 700  4750 700 
Wire Wire Line
	4750 800  5050 800 
Wire Wire Line
	5050 800  5050 950 
Wire Wire Line
	6500 3700 6750 3700
$Comp
L Device:R R4
U 1 1 5F39A796
P 6750 3200
F 0 "R4" H 6820 3246 50  0000 L CNN
F 1 "10k" H 6820 3155 50  0000 L CNN
F 2 "" V 6680 3200 50  0001 C CNN
F 3 "~" H 6750 3200 50  0001 C CNN
	1    6750 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3050 6750 2650
Wire Wire Line
	6750 3350 6750 3700
Connection ~ 6750 3700
Wire Wire Line
	6750 3700 7350 3700
Wire Wire Line
	6650 3600 6650 3350
$Comp
L Device:Fuse F2
U 1 1 5F14BDC4
P 7250 3200
F 0 "F2" H 7191 3154 50  0000 R CNN
F 1 "Fuse" H 7191 3245 50  0000 R CNN
F 2 "" V 7180 3200 50  0001 C CNN
F 3 "~" H 7250 3200 50  0001 C CNN
	1    7250 3200
	1    0    0    1   
$EndComp
Wire Wire Line
	7250 3350 7250 3600
Connection ~ 7250 3600
Wire Wire Line
	7250 3600 6650 3600
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 5F1518CD
P 7850 2650
F 0 "J4" H 7742 2935 50  0000 C CNN
F 1 "IMD/TSMP Connector" H 7742 2844 50  0000 C CNN
F 2 "" H 7850 2650 50  0001 C CNN
F 3 "~" H 7850 2650 50  0001 C CNN
	1    7850 2650
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5F154419
P 7850 2650
F 0 "J?" H 7822 2578 50  0001 R CNN
F 1 "Conn_01x04_Male" H 7822 2533 50  0001 R CNN
F 2 "" H 7850 2650 50  0001 C CNN
F 3 "~" H 7850 2650 50  0001 C CNN
	1    7850 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7250 3050 7250 2750
Wire Wire Line
	7250 2750 7650 2750
Wire Wire Line
	7650 2850 7350 2850
Wire Wire Line
	7350 2850 7350 3700
Connection ~ 7350 3700
Wire Wire Line
	7350 3700 7650 3700
Wire Wire Line
	8850 1800 8850 2750
Wire Wire Line
	8950 1950 8950 2850
Wire Wire Line
	8050 2850 8950 2850
Wire Wire Line
	8050 2750 8850 2750
Text Label 7000 2550 0    50   ~ 0
29_20
Text Label 7000 2650 0    50   ~ 0
30_20
Text Label 7350 2750 0    50   ~ 0
31_20
Text Label 7350 2850 0    50   ~ 0
32_20
Text Label 8100 2300 1    50   ~ 0
33_20
Text Label 8200 2300 1    50   ~ 0
34_20
$EndSCHEMATC
