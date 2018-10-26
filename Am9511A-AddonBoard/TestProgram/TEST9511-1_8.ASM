* Am9511A TEST PROGRAM (1-8) FOR MPB6809 MONITOR
*
* make sure to connect RESET pin of Am9511A to PC0 pin of 8255A
*
PUTCH	EQU $F0E6
GETCH	EQU $F0C7
CONTRL	EQU $F13E
OUT4HS	EQU $F0FF
OUT2HS	EQU $F101
*
APUDA	EQU $B004
APUCS	EQU $B005
PPIPA	EQU $B010
PPIPB	EQU $B011
PPIPC	EQU $B012
PPICS	EQU $B013
*
NOP	EQU $00
DADD	EQU $2C
DSUB	EQU $2D
FLTD	EQU $1C
FMUL    EQU $12
PTOF    EQU $17			;TOS is copied into the new TOS location
CHSD	EQU $34			;32-bit fixed-point sign change
SDIV	EQU $6F
SQRT	EQU $01
PUPI	EQU $1A			;push 32-bit floating-point pi 
*
	ORG $100
	LDS #$7000
START	LEAX MSG,PCR
	BSR PMSG
*
        LDA #$80		;condifure 8255A Port A, B and C (Px0 - Px7) for output
        STA PPICS
	LDA #$01		;enter BSR mode. make PC0 high for resetting Am9511A
	STA PPICS		;RESET must be high for at least 5 CLK periods, as per datasheet of Am9511A 
	TFR X,X			;wait for 18 (= 6 x 3) cycles before end of reset
	TFR X,X			;(assuming that E Clock from 6809 is fed to the CLK pin of Am9511A by default)
	TFR X,X
	CLRA			;make PC0 low. end of reset. The stack pointer of Am9511 is now (re-)initialized
	STA PPICS
*
	LDX #INPUT
	LDB #16
L1	LDA ,X+
	STA APUDA
	NOP
	DECB
	BNE L1
*
	LDA #FLTD
	STA APUCS
	BSR WAIT
	LDA #SQRT
	STA APUCS
	BSR WAIT
	STA STAT
*
	LDA APUDA
	NOP
	LDX #OUTPUT
	LEAX 16,X
	LDB #16
L2	LDA APUDA
	NOP
	STA ,-X
	DECB
	BNE L2
*
	JMP CONTRL		;return to monitor command line
*
PMSG	LDA ,X+
	BEQ QUIT1
	JSR PUTCH
	BRA PMSG
QUIT1	RTS
*
WAIT	LDA APUCS		;make an empty read
	NOP
L3	LDA APUCS
	BITA #%10000000		;check for busy flag
	BNE L3			;wait for completion of command execution
	RTS			;return status in accumulator A
*
MSG     FCB $0D, $0A
        FCC /AM9511A /
	FCC /TEST/
	FCC /-8/
        FCB $0D, $0A, 0
*
	ORG $200
INPUT	RMB 16
OUTPUT	RMB 17
	ORG $230
STAT	RMB 1
*
        END
