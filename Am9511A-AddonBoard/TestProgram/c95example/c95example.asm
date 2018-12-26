* Am9511A sample program to calculate square root of 2
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
CMD_FLTD	EQU $1C		;32-bit fixed point to 32-bit floating point
CMD_SQRT	EQU $01
*
	ORG $7800
*
START	BSR INIT
	LEAX C2,PCR		;load (push) 32-bit fixed point constant 2 onto the stack
	BSR LOAD
	BSR FLTD
	BSR SQRT
	LEAX RESULT,PCR		;Pop the result from the stack and store it 
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
* 32-bit floaring point operand A at the TOS is replaced by the 32-bit floating point sqrt(2)
*
SQRT	LDA #CMD_SQRT
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
	LDA ,-X
	STA APUDA
	LDA ,-X
	STA APUDA
	LDA ,-X
	STA APUDA
	RTS
*
* Read data from APU stack and store them
* On entry: X = pointer to the floatinig point variable
* On return: Accumulator A is altered by the subroutine
*
STORE	LDA APUDA
	STA ,X+
	LDA APUDA
	STA ,X+
	LDA APUDA
	STA ,X+
	LDA APUDA
	STA ,X+
	RTS
*
C2	FCB 0, 0, 0, 2		;2 (32-bit fixed point)
RESULT	RMB 4			;(32-bit floating point)
*
	END
