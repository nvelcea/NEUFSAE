EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Tractive System Overview"
Date "2020-05-08"
Rev "2"
Comp "Northeastern University FSAE"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TSV-rescue:Emrax228HV_Motor-FSAE-TSV-shematic-rescue U4
U 1 1 5E50B340
P 11000 3150
F 0 "U4" H 10869 3245 50  0000 C CNN
F 1 "Emrax228HV_Motor" H 10869 3154 50  0000 C CNN
F 2 "" H 11000 3150 50  0001 C CNN
F 3 "" H 11000 3150 50  0001 C CNN
	1    11000 3150
	1    0    0    -1  
$EndComp
$Comp
L TSV-rescue:TSAL_ISOLATION-FSAE-TSV-shematic-rescue U1
U 1 1 5E5145FA
P 6850 4650
F 0 "U1" H 6875 4765 50  0000 C CNN
F 1 "TSAL_ISOLATION" H 6875 4674 50  0000 C CNN
F 2 "" H 6850 4650 50  0001 C CNN
F 3 "" H 6850 4650 50  0001 C CNN
	1    6850 4650
	-1   0    0    -1  
$EndComp
$Comp
L TSV-rescue:TSMP-FSAE-TSV-shematic-rescue U5
U 1 1 5E510789
P 8550 2100
F 0 "U5" H 8608 2225 50  0000 C CNN
F 1 "TSMP" H 8608 2134 50  0000 C CNN
F 2 "" H 8550 2100 50  0001 C CNN
F 3 "" H 8550 2100 50  0001 C CNN
	1    8550 2100
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5E504806
P 2600 3650
F 0 "SW1" H 2600 3885 50  0000 C CNN
F 1 "HVD" H 2600 3794 50  0000 C CNN
F 2 "" H 2600 3650 50  0001 C CNN
F 3 "~" H 2600 3650 50  0001 C CNN
	1    2600 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BatterySegment1
U 1 1 5E51E2A7
P 1750 5400
F 0 "BatterySegment1" V 1995 5400 50  0000 C CNN
F 1 "66.6 V" V 1904 5400 50  0000 C CNN
F 2 "" V 1750 5460 50  0001 C CNN
F 3 "~" V 1750 5460 50  0001 C CNN
	1    1750 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:Battery BatterySegment2
U 1 1 5E5231D7
P 1750 4550
F 0 "BatterySegment2" V 1505 4550 50  0000 C CNN
F 1 "66.6 V" V 1596 4550 50  0000 C CNN
F 2 "" V 1750 4610 50  0001 C CNN
F 3 "~" V 1750 4610 50  0001 C CNN
	1    1750 4550
	0    1    1    0   
$EndComp
$Comp
L Device:Battery BatterySegment3
U 1 1 5E5246AC
P 1750 3650
F 0 "BatterySegment3" V 1995 3650 50  0000 C CNN
F 1 "66.6 V" V 1904 3650 50  0000 C CNN
F 2 "" V 1750 3710 50  0001 C CNN
F 3 "~" V 1750 3710 50  0001 C CNN
	1    1750 3650
	0    -1   -1   0   
$EndComp
$Comp
L Device:Battery BatterySegment4
U 1 1 5E52547E
P 1750 2800
F 0 "BatterySegment4" V 1505 2800 50  0000 C CNN
F 1 "66.6 V" V 1596 2800 50  0000 C CNN
F 2 "" V 1750 2860 50  0001 C CNN
F 3 "~" V 1750 2860 50  0001 C CNN
	1    1750 2800
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST SW2
U 1 1 5E5283A8
P 1100 4550
F 0 "SW2" H 1100 4785 50  0000 C CNN
F 1 "SMD" H 1100 4694 50  0000 C CNN
F 2 "" H 1100 4550 50  0001 C CNN
F 3 "~" H 1100 4550 50  0001 C CNN
	1    1100 4550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW3
U 1 1 5E5292F5
P 1100 2800
F 0 "SW3" H 1100 3035 50  0000 C CNN
F 1 "SMD" H 1100 2944 50  0000 C CNN
F 2 "" H 1100 2800 50  0001 C CNN
F 3 "~" H 1100 2800 50  0001 C CNN
	1    1100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  4550 800  5400
Wire Wire Line
	1300 4550 1550 4550
Wire Wire Line
	3000 3650 3000 4550
Wire Wire Line
	800  2800 800  3650
Wire Wire Line
	1300 2800 1550 2800
$Comp
L TSV-rescue:RinehartPM100DX-FSAE-TSV-shematic-rescue U3
U 1 1 5E5F7FCC
P 9600 3200
F 0 "U3" H 9600 3315 50  0000 C CNN
F 1 "RinehartPM100DX" H 9600 3224 50  0000 C CNN
F 2 "" H 9600 3200 50  0001 C CNN
F 3 "" H 9600 3200 50  0001 C CNN
	1    9600 3200
	1    0    0    -1  
$EndComp
Text Label 5000 6500 3    50   ~ 0
Shutdown-
$Comp
L Relay:MSxx-1Bxx-75 K4
U 1 1 5E637554
P 5400 4100
F 0 "K4" V 4833 4100 50  0000 C CNN
F 1 "SPST-NC (Discharge)" V 4924 4100 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 5750 4050 50  0001 L CNN
F 3 "https://standexelectronics.com/de/produkte/ms-reed-relais/" H 5400 4100 50  0001 C CNN
	1    5400 4100
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5E640862
P 2600 2800
F 0 "F1" V 2403 2800 50  0000 C CNN
F 1 "Fuse" V 2494 2800 50  0000 C CNN
F 2 "" V 2530 2800 50  0001 C CNN
F 3 "~" H 2600 2800 50  0001 C CNN
	1    2600 2800
	0    1    1    0   
$EndComp
Text Label 4700 6500 3    50   ~ 0
Shutdown+
Text Label 5250 950  2    50   ~ 0
MC
Text Label 5550 950  2    50   ~ 0
MC
$Comp
L Relay:DIPxx-1Axx-11x K3
U 1 1 5EBDE2B9
P 4300 5200
F 0 "K3" V 3733 5200 50  0000 C CNN
F 1 "SPST-NO (AIR)" V 3824 5200 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 4650 5150 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 4300 5200 50  0001 C CNN
	1    4300 5200
	0    1    1    0   
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K2
U 1 1 5EBE5BCF
P 4300 3100
F 0 "K2" V 3733 3100 50  0000 C CNN
F 1 "SPST-NO (AIR)" V 3824 3100 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 4650 3050 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 4300 3100 50  0001 C CNN
	1    4300 3100
	0    1    1    0   
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K1
U 1 1 5EBEB71B
P 4300 2100
F 0 "K1" V 3733 2100 50  0000 C CNN
F 1 "SPST-NO (Precharge)" V 3824 2100 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 4650 2050 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 4300 2100 50  0001 C CNN
	1    4300 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 3650 3000 3650
Wire Wire Line
	900  2800 800  2800
Wire Wire Line
	800  3650 1550 3650
Wire Wire Line
	900  4550 800  4550
Wire Wire Line
	800  5400 1550 5400
Wire Wire Line
	1950 5400 4000 5400
Wire Wire Line
	3150 3300 3150 2800
Connection ~ 3150 2800
Wire Wire Line
	3150 2300 3150 2800
Wire Wire Line
	4850 2900 4850 2100
Wire Wire Line
	4600 5400 4800 5400
Connection ~ 4800 5400
Wire Wire Line
	3150 2300 4000 2300
Wire Wire Line
	3150 3300 4000 3300
Wire Wire Line
	4600 2900 4850 2900
Wire Wire Line
	4800 4300 5100 4300
Wire Wire Line
	2750 2800 3150 2800
Wire Wire Line
	4800 4300 4800 5400
$Comp
L Device:R R1
U 1 1 5ECE2FF8
P 6450 2300
F 0 "R1" V 6243 2300 50  0000 C CNN
F 1 "600" V 6334 2300 50  0000 C CNN
F 2 "" V 6380 2300 50  0001 C CNN
F 3 "~" H 6450 2300 50  0001 C CNN
	1    6450 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5ECE5C4E
P 6450 4300
F 0 "R2" V 6243 4300 50  0000 C CNN
F 1 "3.3k" V 6334 4300 50  0000 C CNN
F 2 "" V 6380 4300 50  0001 C CNN
F 3 "~" H 6450 4300 50  0001 C CNN
	1    6450 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 2300 6300 2300
Wire Wire Line
	5700 4300 6300 4300
Wire Wire Line
	4000 1900 3700 1900
Wire Wire Line
	3700 1900 3700 2900
Wire Wire Line
	4000 5000 3700 5000
Connection ~ 3700 5000
Wire Wire Line
	3700 5000 3700 5700
Wire Wire Line
	4000 2900 3700 2900
Connection ~ 3700 2900
Wire Wire Line
	3700 2900 3700 3900
Wire Wire Line
	5100 3900 3700 3900
Connection ~ 3700 3900
Wire Wire Line
	3700 3900 3700 5000
Wire Wire Line
	5700 2000 6000 2000
Wire Wire Line
	6000 2000 6000 3900
Wire Wire Line
	6000 3900 5700 3900
Wire Wire Line
	6000 3900 6000 5000
Connection ~ 6000 3900
Wire Wire Line
	4600 5000 6000 5000
Connection ~ 6000 5000
Wire Wire Line
	6000 5000 6000 5700
Wire Wire Line
	6000 5700 5000 5700
Wire Wire Line
	7350 5400 7350 5000
Wire Wire Line
	4800 5400 7350 5400
Wire Wire Line
	5700 1150 5550 1150
Wire Wire Line
	5550 1150 5550 950 
Wire Wire Line
	5700 1150 5700 1600
Wire Wire Line
	5100 1150 5250 1150
Wire Wire Line
	5250 1150 5250 950 
Text Notes 600  1300 0    118  ~ 0
Accumulator Container
Wire Wire Line
	7250 4750 7350 4750
Wire Wire Line
	7350 5000 7250 5000
Wire Wire Line
	8000 2200 8200 2200
Wire Wire Line
	8800 2200 8800 3300
$Comp
L TSV-rescue:IMD-FSAE-TSV-shematic-rescue U6
U 1 1 5E511816
P 9500 2100
F 0 "U6" H 9558 2225 50  0000 C CNN
F 1 "IMD" H 9558 2134 50  0000 C CNN
F 2 "" H 9500 2100 50  0001 C CNN
F 3 "" H 9500 2100 50  0001 C CNN
	1    9500 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9000 2350 9000 3700
Wire Wire Line
	8200 2350 8200 3700
$Comp
L power:GND ChassisGround
U 1 1 5EEC2AF0
P 10300 2200
F 0 "ChassisGround" H 10388 2209 50  0000 L CNN
F 1 "GND" H 10388 2118 50  0000 L CNN
F 2 "" H 10300 2200 50  0001 C CNN
F 3 "" H 10300 2200 50  0001 C CNN
	1    10300 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 2350 10050 2200
Connection ~ 10050 2200
Wire Wire Line
	10050 2200 10300 2200
Text Label 10300 2500 0    50   ~ 0
IMD_Output
Wire Wire Line
	9900 2200 10050 2200
Wire Wire Line
	9900 2350 10050 2350
Wire Wire Line
	9900 2500 10300 2500
Wire Wire Line
	8800 2200 9000 2200
$Comp
L TSV-rescue:TSAL-FSAE-TSV-shematic-rescue U2
U 1 1 5EEFDE3A
P 5900 6400
F 0 "U2" H 6028 6251 50  0000 L CNN
F 1 "TSAL" H 6028 6160 50  0000 L CNN
F 2 "" H 5900 6400 50  0001 C CNN
F 3 "" H 5900 6400 50  0001 C CNN
	1    5900 6400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6450 5000 6400 5000
Connection ~ 8200 3700
Wire Wire Line
	8000 3300 8800 3300
Wire Wire Line
	8200 3700 9000 3700
Wire Wire Line
	9050 3700 9000 3700
Connection ~ 9000 3700
Wire Wire Line
	9050 3300 8800 3300
Connection ~ 8800 3300
Wire Wire Line
	6900 3300 6900 4300
Connection ~ 8000 3300
Wire Wire Line
	8000 2200 8000 3300
Wire Wire Line
	6900 2300 6900 3300
Wire Wire Line
	7350 3300 7350 4750
Wire Wire Line
	7700 3700 7700 5400
Connection ~ 7350 3300
Connection ~ 7350 5400
Wire Wire Line
	7350 3300 8000 3300
Wire Notes Line
	550  5750 7850 5750
Wire Notes Line
	550  1100 7850 1100
Wire Wire Line
	7700 3700 8200 3700
Wire Wire Line
	7350 5400 7700 5400
Connection ~ 6900 3300
Wire Wire Line
	6900 3300 7350 3300
Wire Wire Line
	4600 3300 6900 3300
Wire Wire Line
	6600 2300 6900 2300
Wire Wire Line
	6600 4300 6900 4300
Wire Bus Line
	1750 5450 1750 5550
Wire Bus Line
	1750 5550 2050 5550
Wire Bus Line
	1750 4600 1750 4700
Wire Bus Line
	1750 4700 2100 4700
Wire Bus Line
	1750 3700 1750 3800
Wire Bus Line
	1750 3800 2150 3800
Wire Wire Line
	1950 3650 2400 3650
Wire Wire Line
	1950 4550 3000 4550
Wire Bus Line
	1750 2850 1750 2950
Wire Bus Line
	1750 2950 2200 2950
Wire Wire Line
	1950 2800 2450 2800
Wire Bus Line
	2200 2950 2200 6500
Wire Bus Line
	2150 3800 2150 6500
Wire Bus Line
	2100 4700 2100 6500
Wire Bus Line
	2050 5550 2050 6500
Wire Wire Line
	6200 4750 6450 4750
Wire Wire Line
	5000 5700 5000 6500
Wire Wire Line
	4700 5700 4700 6500
Wire Wire Line
	3700 5700 4700 5700
Wire Wire Line
	6200 4750 6200 6500
Wire Wire Line
	6200 6700 6400 6700
Wire Wire Line
	6400 5000 6400 6700
Wire Notes Line
	7850 1100 7850 5750
Wire Notes Line
	550  1100 550  5750
Wire Wire Line
	4850 2100 5100 2100
Wire Wire Line
	4600 1900 5100 1900
Wire Wire Line
	5100 1150 5100 1600
$Comp
L Relay:RT314A03 K5
U 1 1 5E6905B0
P 5400 1800
F 0 "K5" V 4833 1800 50  0000 C CNN
F 1 "SPDT (Precharge Control)" V 4924 1800 50  0000 C CNN
F 2 "Relay_THT:Relay_SPDT_Schrack-RT1-16A-FormC_RM5mm" H 6950 1750 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=RT1_bistable&DocType=DS&DocLang=English" H 5400 1800 50  0001 C CNN
	1    5400 1800
	0    -1   1    0   
$EndComp
Text Notes 1600 6700 0    50   ~ 0
        Orion BMS 2\nVoltage Taps and Thermistors
Text Label 800  3400 1    50   ~ 0
Wire1_2AWG
Text Label 3000 3900 3    50   ~ 0
Wire2_2AWG
Text Label 800  5200 1    50   ~ 0
Wire3_2AWG
Text Label 3200 3300 0    50   ~ 0
Wire8_2AWG
Text Label 3200 2300 0    50   ~ 0
Wire13_12AWG
Text Label 2750 5400 0    50   ~ 0
Wire4_2AWG
Text Label 6900 2550 3    50   ~ 0
Wire15_12AWG
Text Label 5200 3300 0    50   ~ 0
Wire7_2AWG
Text Label 5200 5400 0    50   ~ 0
Wire5_2AWG
Text Label 5200 2300 0    50   ~ 0
Wire14_12AWG
Text Label 4850 2850 1    50   ~ 0
Wire28_20AWG
Text Label 4100 3900 0    50   ~ 0
Wire26_20AWG
Text Label 4100 5700 0    50   ~ 0
Wire24_20AWG
Text Label 5200 5700 0    50   ~ 0
Wire31_20AWG
Text Label 5200 5000 0    50   ~ 0
Wire30_20AWG
Text Label 6000 2550 3    50   ~ 0
Wire29_20AWG
Text Label 6900 3550 3    50   ~ 0
Wire16_12AWG
Text Label 3700 4300 3    50   ~ 0
Wire25_20AWG
Text Label 4800 4850 1    50   ~ 0
Wire17_12AWG
Text Label 7350 4250 1    50   ~ 0
Wire22_12AWG
Text Label 7700 4650 1    50   ~ 0
Wire6_2AWG
Text Label 8000 3000 1    50   ~ 0
Wire18_12AWG
Text Label 8200 3000 1    50   ~ 0
Wire19_12AWG
Text Label 8800 2450 3    50   ~ 0
Wire20_12AWG
Text Label 9000 3000 1    50   ~ 0
Wire21_12AWG
Wire Wire Line
	10150 3300 10550 3300
Wire Wire Line
	10550 3300 10550 3350
Wire Wire Line
	10150 3500 10550 3500
Wire Wire Line
	10550 3700 10550 3650
Wire Wire Line
	10150 3700 10550 3700
Text Label 10150 3300 0    50   ~ 0
Wire10_2AWG
Text Label 10150 3500 0    50   ~ 0
Wire11_2AWG
Text Label 10150 3700 0    50   ~ 0
Wire12_2AWG
Text Label 3700 2350 3    50   ~ 0
Wire27_20AWG
Text Label 1950 2800 0    50   ~ 0
Wire9_2AWG
Text Label 7350 5350 1    50   ~ 0
Wire23_12AWG
$EndSCHEMATC
