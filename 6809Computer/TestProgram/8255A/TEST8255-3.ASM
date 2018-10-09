* 8255 TEST PROGRAM (3) FOR MPB6809 MONITOR
*
PUTCH   EQU $F0E6
GETCH   EQU $F0C7
OUTHL   EQU $F0D8
OUTHR   EQU $F0DC
PPIPA   EQU $B010
PPIPB   EQU $B011
PPIPC   EQU $B012
PPICS   EQU $B013
*
        ORG $100
    	LDS #$7000
START	LEAX MSG,PCR
        LDA #$80		;configure Port A, B and C for output
        STA PPICS
        BSR PMSG
LOOP	JSR GETCH
	BITA #1
	BEQ L1
	LDA #$03		;bit set/reset mode, turn on bit 1 of port C
	STA PPICS
	BRA L2
L1	LDA #$02		;bit set/reset mode, turn off bit 1 of port C
	STA PPICS
L2	BRA LOOP
*
PMSG    LDA ,X+
        BEQ QUIT1
        JSR PUTCH
        BRA PMSG
QUIT1   RTS
* 
MSG     FCB $0D, $0A
        FCC /8255A /
        FCC /TEST/
        FCC /-3/
        FCB $0D, $0A
        FCB 0
*
        END



