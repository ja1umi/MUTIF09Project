	.area TEST (ABS)
	.org 0o7600

start:	cla cll
		tad	a
		tad	b
		dca	c
loop:	jmp loop
a:		.word	2
b:		.word	3
c:		.word	0

	.org 0o7777
reset:	jmp start
