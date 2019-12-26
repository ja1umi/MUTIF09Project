tmsram		equ $b008		; TMS9918A VRAM port
tmsreg		equ $b009		; TMS9918A register port
tmswritebit	equ $40			; bit to indicate memory write
tmsregbit	equ $80			; bit to indicate register write
tmswait		equ 2			; wait divisor
*
linelen		equ 32
dblhorizontal	equ 205
dblvertical	equ 186
dbltopleft	equ 201
dbltopright	equ 187
dblbottomleft	equ 200
dblbottomright	equ 188
*
	org $7000

	lbra	initvdp

tmsfont	include "tmsfont09.asm"

initvdp	clra				; VRAM (incl. pattern table) starts at $0000
	sta	tmsreg			; send address (lo)
	ora	#$40			; set the second highest bit to indicate write-op.
	sta	tmsreg			; send address (high)

	ldy	#$4000			; write 16KB
	clra
clrloop	sta	tmsram
	rzb	11/tmswait, $12
	leay	-1, y
	bne	clrloop			; continue until the counter is 0

	clra				; pattern table starts at $0800
	sta	tmsreg			; send address (lo = $00)
	lda	#$08
	ora	#$40			; set the second highest bit to indicate write-op.
	sta	tmsreg			; send address (high)
	leax	tmsfont, pcr
	ldy	#$0800			; byte counter (8 * 256 = 2048 = $0800)
cpyloop	lda	, x+
	sta	tmsram
	rzb	11/tmswait, $12		; NOPs ($12) for delay 
	leay	-1, y
	bne	cpyloop			; continue until count is zero

	leax	tmstextreg, pcr
	lda	#8			; 8 registers
	pshs	a
regloop	lda	, x+			; get the register value from the table
	sta	tmsreg			; send it to the TMS
	lda	#8
	suba	0, s			; get the registger number
	ora	#tmsregbit		; set MSB to indicate 'register write operation'
	sta	tmsreg			; send it to the TMS
	dec	0, s
	bne	regloop
	leas	1, s

*	clra				; greeting message will be displayed at position (0, 0)
*	sta	tmsreg			; send address (lo)
*	ora	#$40			; set the second highest bit to indicate write-op.
*	sta	tmsreg			; send address (high)
*	leax	gtngmsg, pcr
*soutlop	lda	, x+
*	beq	exitso			; return when NULL is encountered
*	sta	tmsram			; send it to VRAM (name table, which starts at $0000)
*	rzb	14/tmswait, $12		; NOPs ($12) for delay
*	bra	soutlop
*exitso	rts

	bsr	textborder
	lda	#11
	ldb	#2
	bsr	tmstextpos
	leax	msg, pcr
	bsr	tmsstrout
	leas	-2, s
	clr	0, s				; start at character 0
	lda	#6
	sta	1, s				; start at line 6

nextline
	lda	#(0+(40-linelen)/2)		; centering text
	ldb	1, s				; on current line
	bsr	tmstextpos

nextchar
	lda	0, s				; current character
	sta	tmsram				; display it
*	rzb	14/tmswait, $12			; NOPs ($12) for delay
*	lda	0, s
	cmpa	#255				; see if we have displayed everything
	beq	done
	inca					; next character
	sta	0, s
	anda	#(linelen-1)			; time for new line?
	bne	nextchar			; the beginning of the line starts with the character whose ASCII code is multiple of 32 
	inc	1, s				; if so, skip two lines
	inc	1, s
	bra	nextline			; do the next line
done
	leas	2, s
	rts
*
textborder
	clra					; start at upper left
	clrb
	bsr	tmstextpos
	lda	#dbltopleft			; display corner
	lbsr	tmschrout
	ldb	#38				; display top border
	lda	#dblhorizontal
	lbsr	tmschrrpt
	lda	#dbltopright			; display corner
	lbsr	tmschrout
	lda	#22				; display left/right borders for 22 lines
	pshs	a
next	lda	#dblvertical
	bsr	tmschrout
	lda	#' '
	ldb	#38
	bsr	tmschrrpt
	lda	#dblvertical
	bsr	tmschrout
	dec	0, s
	bne	next
	lda	#dblbottomleft
	lbsr	tmschrout
	lda	#dblhorizontal
	ldb	#38
	bsr	tmschrrpt
	lda	#dblbottomright
	bsr	tmschrout
	leas	1, s
	rts
*
* set the address to place text at X/Y coordinate
*       A = X-coordinate
*       B = Y-coordinate
tmstextpos
	pshs	a
	lda	#40			; Y-coodinate x 40
	mul
	tfr	d, y
	puls	a
	leay	a, y			; add X-coodinate for final address
	tfr	y, d
	stb	tmsreg			; send lo byte
	anda	#$3F			; mask off upper 2 bits because VRAM size is 16KB
	ora	#$40			; set the second highest bit to indicate write-op.
	sta	tmsreg			; send high byte
	rts
*
* copy a null-terminated string to VRAM
*       X = ram source address
tmsstrout
	lda	, x+			; get the current character from RAM
	beq	exitso			; return when NULL is encountered
	sta	tmsram			; send it to VRAM
	rzb	14/tmswait, $12		; NOPs ($12) for delay
	bra	tmsstrout
exitso	rts
*
* repeat a character a certain number of times
*       A = character to output
*       B = count
tmschrrpt
	sta	tmsram
	rzb	14/tmswait, $12
	decb
	bne	tmschrrpt
	rts
*
* output a character
*       A = character to output
tmschrout
	sta	tmsram
	rzb	14/tmswait, $12
	rts
*
tmstextreg
	fcb	%00000000               ; text mode, no external video
	fcb	%11010000               ; 16K, Enable Display, Disable Interrupt
	fcb	$00                     ; name table at $0000
	fcb	$00                     ; color table not used
	fcb	$01                     ; pattern table at $0800
	fcb	$00                     ; sprite attribute table not used
	fcb	$00                     ; sprite pattern table not used
*	fcb	$F4                     ; white text on dark blue background
	fcb	$5F                     ; light blue text on white background
*
*gtngmsg	fcc	/Hello TMS9118!/, 0
msg    
	fcc /ASCII Character Set/, 0

	end
