* Processor check program
*
* Note 1: The 6309 enters in emulation mode (bit 0 of Reg-MD is 0) at reset
*	  for full compatibility with the 6809.
* Note 2: All special 6309 instruction may be used even in the emulation mode.
*
ID6809	EQU $09
ID6309	EQU $03
*
	ORG $7800

START	CLR QUOT,PCR
	CLR REM,PCR
	BSR CHK309
	BEQ L6809
	LDA #ID6309
	STA TYPE,PCR
	LDD #$3006
	FCB $11, $8D, $60	; 6309 DIVD #$60 instruction (divide by $60)
	STB QUOT,PCR
	STA REM,PCR
	BRA EXIT
L6809	LDA #ID6809
	STA TYPE,PCR
EXIT	RTS
*
* Quoted from 'THE 6309 BOOK' written by Chris Burke
* Determine whether processor is 6309 or 6809
* Returns Z clear if 6309, set if 6809.
*
CHK309	PSHS D		; Save Reg-D
	FCB $10, $43	; 6309 COMD instruction (COMA on 6809)
	CMPB 1,S	; not equal (i.e. Z == 0) if 6309
	PULS D,PC	; exit, restoring D
*
TYPE	RMB 1		; processor type goes here ($09 if 6809, $03 if 6309)
QUOT	RMB 1		; quotient (should be $80 if 6309)
REM	RMB 1		: reminder (should be $06 if 6309)


