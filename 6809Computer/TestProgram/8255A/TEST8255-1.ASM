* 8255 TEST PROGRAM (1) FOR MPB6809 MONITOR
*
PUTCH   EQU $F0E6
GETCH   EQU $F0C7
OUTHL   EQU $F0D8
OUTHR   EQU $F0DC
PPIPA   EQU $B010
PPIPB   EQU $B011
PPIPC   EQU $B012
PPICS   EQU $B013
*
        ORG $100
        LDS #$7000
START   LEAX MSG,PCR
        LDA #$80        ;initialization of 8255: all ports are
        STA PPICS       ;set for output
        BSR PMSG
LOOP    JSR GETCH
        ANDA #$0F       ;write lower 4 bits of the 8-bit character code
        STA PPIPA       ;to 8255 Port A correspond to the 4 LEDs
        JSR OUTHR
        LDA #$20
        JSR PUTCH
        BRA LOOP
*
PMSG    LDA ,X+
        BEQ QUIT1
        JSR PUTCH
        BRA PMSG
QUIT1   RTS
* 
MSG     FCB $0D, $0A
        FCC /8255A TEST PROGRAM-1/
        FCB $0D, $0A
        FCC /PUSH ANY KEY/
        FCB $0D, $0A
        FCB 0
*
        END



