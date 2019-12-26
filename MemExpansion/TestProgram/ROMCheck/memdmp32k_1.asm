* MEMCHK - 1Mbit EXTENDED MEMORY CHECK
* Target: ASSIST09 on MUTIF09 6809SBC + 1Mbit SRAM (+ 256Kbit EEPROM)
*
* System definition
banksel		equ	$B006
startaddr	equ	$a000
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

* BANK MEM DUMP
		leas	-1, s
		lda	#0
memloop		sta	0, s		; stack(0) <- current bank number
		leax	bankm, pcr
		swi
		fcb	PDATA

                lda     #'$'
                swi
                fcb     OUTCH

		leax	0, s
		swi
		fcb	OUT2H
		swi
		fcb	PCRLF

		lda	0, s
		asla
		asla
		asla
		asla
		sta	banksel
		bsr	memdump

		lda	0, s
		inca
		cmpa	#8		; total of 8 banks
		bne	memloop
		leas	1, s

                swi
                fcb     PCRLF
		rts
*
memdump		ldx	#startaddr
		pshs	x		; stack(1) <- start address
		lda	#16
		pshs	a		; stack(0) <- loop counter

		lda	#'$'
		swi
		fcb	OUTCH
		leax	1, s
		swi
		fcb	OUT4H
;		swi
;		fcb	SPACE

		ldx	1, s		; start address
loop		swi
		fcb	OUT2H
;		swi
;		fcb	SPACE
		dec	0, s		; first 16-byte dump finished?
		beq	exit
;		leax	1, x
		bra	loop
exit		swi
		fcb	PCRLF
		leas	3, s
		rts
*
* Constants
stmsg		fcc	/** 32k x 8bit EEPROM MEMDUMP (1st 16-byte) **/
		fcb	4
bankm		fcc	/BANK:/
		fcb	4
*
		end

