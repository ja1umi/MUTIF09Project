* 8254 TEST PROGRAM (1) FOR MPB6809 MONITOR
*
PUTCH   EQU $F0E6
GETCH   EQU $F0C7
CONTRL	EQU $F13E
CNT0    EQU $B014
CNT1    EQU $B015
CNT2    EQU $B016
PITCW   EQU $B017
*
        ORG $100
    	LDS #$7000
START   LEAX MSG, PCR
		BSR PMSG
* Control Word Format
*   D7  D6  D5  D4  D3  D2  D1  D0
*   ===============================
*   SC1 SC2 RW1 RW2 M2  M1  M0  BCD
*   0   0   1   1   0   1   1   0   = $36
*	SC: (00) Select Counter 0
*	RW: (11) Write LSB first and then MSB
*	M:  (011) Select Mode 3 Square Wave Mode
*	BCD: 0 Binary counter
*
        LDA #$36		;Counter 0 initialization
        STA PITCW
        LDA #$D0		;2000(10) == $7D0, 2 MHz / 2000 == 1 KHz
        STA CNT0		;write LSB
		NOP
        LDA #$7
        STA CNT0		;write MSB
		NOP
		JMP CONTRL		;return to monitor command line
*
PMSG    LDA ,X+
        BEQ QUIT1
        JSR PUTCH
        BRA PMSG
QUIT1   RTS
* 
MSG     FCB $0D, $0A
        FCC /8254 TEST PROGRAM-1/
        FCB $0D, $0A
        FCC /SQUARE WAVE GENERATION AT FREQUENCY OF 1 KHz/
        FCB $0D, $0A
        FCB 0
*
        END



