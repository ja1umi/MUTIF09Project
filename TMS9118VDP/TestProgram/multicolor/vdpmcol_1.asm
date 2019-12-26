* configuration parameters
tmsram		equ $b008			; TMS9918A VRAM port
tmsreg		equ $b009			; TMS9918A register port
tmswritebit	equ $40				; bit to indicate memory write
tmsregbit	equ $80				; bit to indicate register write
tmswait		equ 2				; wait divisor
*
		org $7000

mcoltest	bsr initmulticolor

		ldd	#112			; name table entry #112 (Row 12, Col 16)
		aslb				; get 1st byte (name table entry x 8) in the patter table
		rola
		aslb
		rola
		aslb
		rola

		tfr	d, y

		stb	tmsreg
		ora	#tmswritebit
		sta	tmsreg
		lda	#$46			; put dark blue pixel and dark red pixel
		sta	tmsram
		nop				; extra time to finish vram write (2 x nop)
		nop
		lda	#$cf			; put dark green pixel and white pixel 
		sta	tmsram
		nop				; extra time to finish vram write (2 x nop)
		nop

		rts
*
initmulticolor	clra
		sta	tmsreg			; send address (lo)
		ora	#tmswritebit		; set the second highest bit to indicate write-op.
		sta	tmsreg			; send address (high)

		ldy	#$4000			; write 16KB
		clra
clrloop		sta	tmsram
		rzb	11/tmswait, $12
		leay	-1, y
		bne	clrloop			; continue until the counter is 0

		clra				; set name table start address ($0800)
		sta	tmsreg			; send lo address (lo = $00)
		lda	#$08			; (high = $08)
		ora	#tmswritebit		; set the second highest bit to indicate write-op.
		sta	tmsreg			; send hi address

		leas	-3, s
		lda	#6
		sta	2, s			; name table has 6 different sections
		clr	1, s			; first section starts at 0

sectionloop	lda	#4
		sta	0, s			; each section has 4 identical lines

lineloop	lda	1, s			; load the section's starting value
		ldb	#32			; each line is 32 bytes long
byteloop	sta	tmsram			; output current name byte
		nop
		nop
		inca				; increment name byte
		decb				; decrement byte counter
		bne	byteloop		; next byte
		dec	0, s			; decrement line counter
		bne	lineloop		; next line
		lda	1, s			; section's starting value += 32
		adda	#32
		sta	1, s
		dec	2, s			; decrement section counter
		bne	sectionloop		; next section
		leas	3, s

mcconfig	leax	tmsmcreg, pcr
		lda	#8			; 8 registers
		pshs	a
regloop		lda	, x+			; get the register value from the table
		sta	tmsreg			; send it to the TMS
		lda	#8
		suba	0, s			; get the registger number
		ora	#tmsregbit		; set MSB to indicate 'register write operation'
		sta	tmsreg			; send it to the TMS
		dec	0, s
		bne	regloop
		leas	1, s
		rts
*
* register values for multicolor mode
tmsmcreg
		fcb	%00000000               ; external video disabled
		fcb	%11001000               ; 16KB, display enabled, multicolor mode
		fcb	$02                     ; name table at $0800
		fcb	$00                     ; color table not used
		fcb	$00                     ; pattern table at $0000
		fcb	$76                     ; sprite attribute table at $3B00
		fcb	$03                     ; sprite pattern table at $1800
		fcb	$00                     ; black background
*
		end
