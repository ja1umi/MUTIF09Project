* MEMCHK - 1Mbit EXTENDED MEMORY CHECK
* Target: ASSIST09 on MUTIF09 6809SBC + 1Mbit SRAM (+ 256Kbit EEPROM)
*
* System definition
banksel		equ	$B006
startaddr	equ	$8000
endaddr		equ	$9fff
*
* ASSIST09 services
OUTCH		equ	1
PCRLF		equ	6
OUT2H		equ	4
OUT4H		equ	5
PDATA		equ	3
PDATA1		equ	2
SPACE		equ	7
*
		org $7000

start		leax	stmsg, pcr
		swi
		fcb	PDATA
		swi
		fcb	PCRLF

* BANK MEM CHECK
		leas	-1, s
		lda	#0
memloop		sta	0, s		; stack(0) <- current bank number
		leax	bankm, pcr
		swi
		fcb	PDATA

		lda	#'$'
		swi
		fcb	OUTCH

		leax	0, s
		swi
		fcb	OUT2H
		swi
		fcb	PCRLF

		lda	0, s
		sta	banksel
		bsr	memchk

		lda	0, s
		inca
		cmpa	#16		; finished? (total of 16 banks)
		bne	memloop
		leas	1, s
		swi
		fcb	PCRLF
		swi
		fcb	PCRLF
		rts
*
memchk		ldx	#startaddr
		pshs	x		; stack(4) <- start address
		ldx	#endaddr
		pshs	x		; stack(2) <- end address
		pshs	x		; stack(0) <- for late use

		lda	#'$'
		swi
		fcb	OUTCH

		leax	4, s		; print start address
		swi
		fcb	OUT4H

		lda	#'-'
		swi
		fcb	OUTCH
		swi
		fcb	SPACE
		
		lda	#'$'
		swi
		fcb	OUTCH

		ldx	4, s		; start address
loop		lda	0, x
		com	0, x
		coma
		cmpa	0, x
		bne	step1
		cmpx	2, s		; reached end address?
		beq	step11
		leax	1, x
		bra	loop
step1		leax	-1, x
step11		stx	0, s		; save last address passed
		leax	0, s
		swi
		fcb	OUT4H		; print it
		leas	6, s
		rts
*
* Constants
stmsg		fcc	/** 128k x 8bit MEMCHECK **/
		fcb	4
bankm		fcc	/BANK:/
		fcb	4
*
		end

