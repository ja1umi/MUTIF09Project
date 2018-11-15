* Subroutine for asciiart.bas
*
* make sure to connect RESET pin of Am9511A to PC0 pin of 8255A
*
APUDA	EQU $B004
APUCS	EQU $B005
PPIPA	EQU $B010
PPIPB	EQU $B011
PPIPC	EQU $B012
PPICS	EQU $B013
*
CMD_PTOF	EQU $17		;TOS is copied into the new TOS location
CMD_FMUL	EQU $12
CMD_FSUB	EQU $11
CMD_FADD	EQU $10
CMD_FIXD	EQU $1E		;32-bit floating point to 32-bit fixed point
CMD_FLTD	EQU $1C		;32-bit fixed point to 32-bit floating point			;
CMD_PUPI	EQU $1A		;push 32-bit floating-point pi
CMD_DSUB	EQU $2D 
*
	ORG $7800
*
*30 CA=X*0.0458
*40 CB=Y*0.08333
*50 A=CA
*60 B=CB
*
L30_60	LEAX C0458,PCR		;30 CA=(X-39)*0.0458
	LBSR LOAD
	LEAX VARX,PCR
	LBSR LOAD
	LEAX C39D,PCR
	LBSR LOAD
	LBSR DSUB
	LBSR FLTD
	LBSR FMUL
	LEAX VARCA,PCR
	LBSR STORE
	LEAX C0833,PCR		;40 CB=(Y-12)*0.08333
	LBSR LOAD
	LEAX VARY,PCR
	LBSR LOAD
	LEAX C12D,PCR
	LBSR LOAD
	LBSR DSUB
	LBSR FLTD
	LBSR FMUL
	LEAX VARCB,PCR
	LBSR STORE
	LEAX VARCA,PCR		;50 A=CA
	LEAY VARA,PCR
	LBSR ASSIGN
	LEAX VARCB,PCR		;60 B=CB
	LEAY VARB,PCR
	LBSR ASSIGN
	RTS
*
*80 T=A*A-B*B+CA
*90 B=2*A*B+CB
*100 A=T
*
L80_110	LEAX VARA,PCR		;80 T=A*A-B*B+CA
	LBSR LOAD
	LBSR PTOF
	LBSR FMUL
	LEAX VARB,PCR
	LBSR LOAD
	BSR PTOF
	BSR FMUL
	LBSR FSUB
	LEAX VARCA,PCR
	LBSR LOAD
	BSR FADD
	LEAX VART,PCR
	LBSR STORE
	LEAX C2,PCR		;90 B=2*A*B+CB
	LBSR LOAD
	LEAX VARA,PCR
	LBSR LOAD
	LEAX VARB,PCR
	BSR LOAD
	BSR FMUL
	BSR FMUL
	LEAX VARCB,PCR
	BSR LOAD
	BSR FADD
	LEAX VARB,PCR
	LBSR STORE
	LEAX VART,PCR		;100 A=T
	LEAY VARA,PCR
	LBSR ASSIGN
*
*110 IF (A*A+B*B)>4 THEN GOTO 200
*
	LEAX VARA,PCR		;A*A+B*B -> TMP
	BSR LOAD
	BSR PTOF
	BSR FMUL
	LEAX VARB,PCR
	BSR LOAD
	BSR PTOF
	BSR FMUL
	BSR FADD
	BSR FIXD
	LEAX TMP,PCR
	BSR STORE
	RTS
*
* Send command word and wait for the completion of the command
* On entry: A = command word
* On return: Accumulator A is altered by the subroutine
EXEC	STA APUCS
WAIT	LDA APUCS
	BITA #%10000000		;check for busy flag
	BNE WAIT		;wait for completion of command execution
	RTS			;return status in accumulator A
*
* 32-bit fixed point intger operand A at the TOS is converted to a 32-bit floating point number
*
FLTD	LDA #CMD_FLTD
	BRA EXEC
*
* The current TOS is copied into the TOS
*
PTOF	LDA #CMD_PTOF
	BRA EXEC
*
* 32-bit floating point operand A at the TOS is multiplied by the 32-bit floating point operand B at the NOS
*
FMUL	LDA #CMD_FMUL
	BRA EXEC
*
* 32-bit floating point operand A at the TOS is added to 32-bit floaring point operand B at the NOS
*
FADD	LDA #CMD_FADD
	BRA EXEC
*
* 32-bit floating point operand A at the TOS is converted to a 32-bit fixed point integer
*
FIXD	LDA #CMD_FIXD
	BRA EXEC
*
* 32-bit floating point operand A at the TOS is subtracted from 32-bit floating point operand B at the NOS
FSUB	LDA #CMD_FSUB
	BRA EXEC
*
* 32-bit floating point Pi is entered into TOS
*
PUPI	LDA #CMD_PUPI
	BRA EXEC
*
* 32-bit fixed point operand A at the TOS is subtracted from 32-bit fixed point operand B at the NOS
*
DSUB	LDA #CMD_DSUB
	BRA EXEC
*
* APU initialization
* On entry: no parameters required
* On return: Accumulator A and index register X are altered by the subroutine
*
INIT	LDA #$80		;condifure 8255A Port A, B and C (Px0 - Px7) for output
	STA PPICS
	LDA #$01		;enter BSR mode. make PC0 high for resetting Am9511A
	STA PPICS		;RESET must be high for at least 5 CLK periods, as per datasheet of Am9511A 
	TFR X,X			;wait for 18 (= 6 x 3) cycles before end of reset
	TFR X,X			;(assuming that E Clock from 6809 is fed to the CLK pin of Am9511A by default)
	TFR X,X
	CLRA			;make PC0 low. end of reset. The stack pointer of Am9511 is now (re-)initialized
	STA PPICS
	RTS
*
* Load APU stack
* On entry: X = pointer to the floating point constant or variable
* On return: Accumulator A is altered by the subroutine 
*
LOAD	LEAX 4,X
	LDA ,-X
	STA APUDA
*	NOP
	LDA ,-X
	STA APUDA
*	NOP
	LDA ,-X
	STA APUDA
*	NOP
	LDA ,-X
	STA APUDA
*	NOP
	RTS
*
* Read data from APU stack and store them
* On entry: X = pointer to the floatinig point variable
* On return: Accumulator A is altered by the subroutine
*
STORE	LDA APUDA
*	NOP
	STA ,X+
	LDA APUDA
*	NOP
	STA ,X+
	LDA APUDA
*	NOP
	STA ,X+
	LDA APUDA
*	NOP
	STA ,X+
	RTS
*
* Assign data to variable specified
* X = pointer to the floating point constant or variable (source)
* Y = pointer to the floating point variable (destination)
* Accumulator A, index register X and Y are atlered by the subroutine
*
ASSIGN	LDA ,X+
	STA ,Y+
	LDA ,X+
	STA ,Y+
	LDA ,X+
	STA ,Y+
	LDA ,X+
	STA ,Y+
	RTS
*
C0458	FCB $7C, $BB, $98, $C8	;0.0458
C0833	FCB $7D, $AA, $A8, $EB	;0.08333
C2	FCB $02, $80, $00, $00	;2.0
C39D	FCB 0, 0, 0, 39		;39 (fixed point integer. Most signigicant byte first)
C12D	FCB 0, 0, 0, 12		;12 (fixed point integer. Most signigicant byte first)
VARX	FCB 0, 0, 0		;fixed point integer
	FCB 0			;least signigicant byte
VARY	FCB 0, 0, 0		;fixed point integer
	FCB 0			;least signigicant byte
VARCA	RMB 4
VARCB	RMB 4
VARA	RMB 4
VARB	RMB 4
VART	RMB 4
TMP	RMB 3
	RMB 1			;least signigicant byte
*
	END
