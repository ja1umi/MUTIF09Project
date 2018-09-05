* 8254 TEST PROGRAM (2) FOR MPB6809 MONITOR
*
PUTCH   EQU $F0E6
GETCH   EQU $F0C7
CNT0    EQU $B014
CNT1    EQU $B015
CNT2    EQU $B016
PITCW   EQU $B017
*
        ORG $100
	    LDS #$7000
START   LEAX MSG,PCR
        BSR PMSG
* Control Word Format
*   D7  D6  D5  D4  D3  D2  D1  D0
*   ===============================
*   SC1 SC2 RW1 RW2 M2  M1  M0  BCD
*   1   0   0   1   0   1   1   0   = $96
*	SC: (10) Select Counter 2
*	RW: (01) Read/Write LSB only
*	M:  (011) Select Mode 3 Square Wave Mode
*	BCD: 0 Binary counter
*
*   0   1   1   1   0   0   0   0   = $70
*	SC: (01) Select Counter 1
*	RW: (11) Read/Write LSB first and then MSB
*	M:  (000) Select Mode 0 Interrut On Terminal Count
*	BCD: 0 Binary counter
*
        LDA #$96        ;counter 2 (prescaler) initialization
        STA PITCW       ;8,086,000/4 == 2,021,500 == 50 x 40,430
        LDA #$28        ;use prescaler value of 50 (== $32)
        STA CNT2
LOOP    LDA #$70        ;counter 1 initialization
*        STA PITCW       ;use initial counter value of 50,000 (== $C350)
        STA PITCW       ;use initial counter value of 40,430 (== $9DEE)
        LDA #$EE        ;write LSB
        STA CNT1
		NOP
        LDA #$9D        ;write MSB
        STA CNT1
*
* Read-Back Command Format
*   D7  D6  D5  D4  D3  D2  D1  D0
*   ===============================
*   1   1   /CNT/ST C2  C1  C0  0
*   1   1   1   0   0   1   0   0   = $E4
*   Latch status info of counter 1 
*
*
* Status Byte
*   D7  D6  D5  D4  D3  D2  D1  D0
*   ===============================
*   OUT NUL RW1 RW0 M2  M1  M0  BCD
*   OUT: Current state of the OUT pin 
*        (goes 1 when the counter reaches 0)
*
        LDA #$E4        ;read the status of Counter 1 by Read-Back Command
        STA PITCW
        LDA CNT1
        ASLA            ;Did Counter 1 reach terminal count (==2,000,000)?
        BCC *-9
        LDA #'*'        ;if so, it means that one second has passed. Print asterisk
        JSR PUTCH   
        BRA LOOP        ;repeat indefinitely
*
PMSG    LDA ,X+
        BEQ QUIT1
        JSR PUTCH
        BRA PMSG
QUIT1   RTS
* 
MSG     FCB $0D, $0A
        FCC /8254 TEST PROGRAM-2/
        FCB $0D, $0A
        FCC /PRINT ONE ASTARISK PER ONE SECOND/
        FCB $0D, $0A
        FCB 0
*
        END



