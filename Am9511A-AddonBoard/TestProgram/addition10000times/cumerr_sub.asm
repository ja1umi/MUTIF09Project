* Subroutine for cumerr.bas
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
CMD_FLTD	EQU $1C		;32-bit fixed point to 32-bit floating point
CMD_PUPI	EQU $1A		;push 32-bit floating-point pi
CMD_DSUB	EQU $2D
*
	ORG $7800
*
START	BSR INIT
	LEAX C0,PCR		;zero-clear the result
	BSR LOAD
	BSR FLTD
	BSR PTOF
	LEAX FZERO,PCR
	BSR STORE
	LDD #10000		;add 0.01 ten thousand (10000) times
L1	PSHS D
	LEAX C001,PCR
	BSR LOAD
	BSR FADD
	PULS D
	SUBD #1
	BNE L1
	LEAX RESULT,PCR
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
C0	FCB 0, 0, 0, 0		;0 (32-bit fixed point)
C001	FCB $7A, $A3, $D7, $0A	;0.01
RESULT	RMB 4
FZERO	RMB 4
*
	END
