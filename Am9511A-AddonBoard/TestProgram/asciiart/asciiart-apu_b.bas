2 CLEAR 300,&H7800
4 GOSUB 1000
6 EXEC &H7908
10 FOR Y=0 TO 24
15 POKE &H7975,Y
20 FOR X=0 TO 78
25 POKE &H7971,X
65 EXEC &H7800
70 FOR I=0 TO 15
105 EXEC &H7861
115 IF PEEK(&H798D)>4 THEN GOTO 200
120 NEXT I
130 PRINT " ";
140 GOTO 210
200 IF I>9 THEN I=I+7
205 PRINT CHR$(48+I);
210 NEXT X
220 PRINT
230 NEXT Y
240 END
1000 REM
1010 A=&H7800
1020 READ D$
1030 IF D$="**" THEN RETURN
1040 POKE A,VAL("&H"+D$)
1050 A=A+1
1060 GOTO 1020
1070 REM
2000 DATA 30,8D,01,56,17,01,16,30
2010 DATA 8D,01,63,17,01,0F,30,8D
2020 DATA 01,54,17,01,08,17,00,EC
2030 DATA 17,00,CD,17,00,D2,30,8D
2040 DATA 01,54,17,01,0F,30,8D,01
2050 DATA 35,17,00,F1,30,8D,01,42
2060 DATA 17,00,EA,30,8D,01,33,17
2070 DATA 00,E3,17,00,C7,17,00,A8
2080 DATA 17,00,AD,30,8D,01,33,17
2090 DATA 00,EA,30,8D,01,28,31,8D
2100 DATA 01,2C,17,00,F4,30,8D,01
2110 DATA 21,31,8D,01,25,17,00,E9
2120 DATA 39,30,8D,01,19,17,00,B5
2130 DATA 17,00,81,17,00,82,30,8D
2140 DATA 01,10,17,00,A8,8D,75,8D
2150 DATA 77,17,00,80,30,8D,00,F6
2160 DATA 17,00,9A,8D,6F,30,8D,00
2170 DATA FD,17,00,A8,30,8D,00,D2
2180 DATA 17,00,8A,30,8D,00,E7,17
2190 DATA 00,83,30,8D,00,E4,8D,7D
2200 DATA 8D,4E,8D,4C,30,8D,00,D2
2210 DATA 8D,73,8D,48,30,8D,00,D2
2220 DATA 17,00,81,30,8D,00,CF,31
2230 DATA 8D,00,C3,17,00,8B,30,8D
2240 DATA 00,BC,8D,59,8D,26,8D,28
2250 DATA 30,8D,00,B6,8D,4F,8D,1C
2260 DATA 8D,1E,8D,20,8D,22,30,8D
2270 DATA 00,B0,8D,58,39,B7,B0,05
2280 DATA B6,B0,05,85,80,26,F9,39
2290 DATA 86,1C,20,F1,86,17,20,ED
2300 DATA 86,12,20,E9,86,10,20,E5
2310 DATA 86,1E,20,E1,86,11,20,DD
2320 DATA 86,1A,20,D9,86,2D,20,D5
2330 DATA 86,80,B7,B0,13,86,01,B7
2340 DATA B0,13,1F,11,1F,11,1F,11
2350 DATA 4F,B7,B0,13,39,30,04,A6
2360 DATA 82,B7,B0,04,A6,82,B7,B0
2370 DATA 04,A6,82,B7,B0,04,A6,82
2380 DATA B7,B0,04,39,B6,B0,04,A7
2390 DATA 80,B6,B0,04,A7,80,B6,B0
2400 DATA 04,A7,80,B6,B0,04,A7,80
2410 DATA 39,A6,80,A7,A0,A6,80,A7
2420 DATA A0,A6,80,A7,A0,A6,80,A7
2430 DATA A0,39,7C,BB,98,C8,7D,AA
2440 DATA A8,EB,02,80,00,00,00,00
2450 DATA 00,27,00,00,00,0C,00,00
2460 DATA 00,00,00,00,00,00,**
