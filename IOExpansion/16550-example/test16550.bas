2000 CLEAR 300,&H7800
2010 GOSUB 2040
2020 A=&H783D
2030 END
2040 REM
2050 A=&H7800
2060 READ D$
2070 IF D$="**" THEN RETURN
2080 POKE A,VAL("&H"+D$)
2090 A=A+1
2100 GOTO 2060
2110 DATA 86,03,B7,B0,23,4F,B7,B0
2120 DATA 21,86,83,B7,B0,23,86,30
2130 DATA B7,B0,20,4F,B7,B0,21,86
2140 DATA 03,B7,B0,23,86,07,B7,B0
2150 DATA 22,39,B6,B0,25,85,20,27
2160 DATA F9,A6,8C,11,B7,B0,20,39
2170 DATA B6,B0,25,47,24,FA,B6,B0
2180 DATA 20,A7,8C,01,39
2190 DATA **
