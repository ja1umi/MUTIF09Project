# Harris HD-6120 evaluation board

## 1. What the hell is this?

This is an evaluation board for the HD-6120, which is a CMOS 12-bit microprocessor from Harris. The HD-6120 is designed to recognize the inscruction set of DEC's PDP-8/E in a sigle chip.

The entire circuit was built on breadboards at the mement. 

This board and project is inspired by *Retroshield for Arduino Mega* project by Erturk Kocalar. 
http://www.8bitforce.com/projects/retroshield/

I would like to express my thanks to him for his great contribution to retoromaniacs' world.

## 2. What is this made for?

This board is to easily relive the programming in PDP-8 instruction set, which is very simple and unique. It works with Arduino Mega 2560. 

## 3. Can a PDP-8 program run on this board?

At first, I would like to dispell a misunderstanding that may have arisen; This board is **not** designed to emulate PDP-8 minicomputer.

So, in short, the answer is yes and no. Very simple, small program (e.g. sample program) without complex I/O may can run on this board because HD-6120 is PDP-8 instruction compatible and basic TTY input/output emulation is provided (by Arduino Mega 2560). What is more, only 1 kilo words of free memory is available and hence, many of programs written for PDP-8 minicomputer, such as DEC's operating systems, diagnostic software, editors, and compilers will not run.

## 4. How can I create a program on HD-6120?

Neither operating systems nor monitor programs are available at the moment. It is necessary that all program codes reside inside *addCodes()* function in the Arduino sketch (hd6120.ino) in the following format;

**MA[ *address* ] = *machine code*** or ***data*;**

Muliple lines are allowed. *address* value can be ranged from 0 - 07777 in octal (0 - 4095 in decimal and 0 - 0x0FFF in hexadecimal) but please remember that *address* whose lower 10 bits are referenced (i.e. one kilo words of free memory in total). 

*machine code* is a valid HD-6120 instruction. Both *machine code* and *data* are 12-bit values.

After changing the sketch, it is loaded up to Arduino Mega 2560.

## 5. Hand aseembling is combersome! What else can I do?

*ASxxxx Cross Assemblers* and *palbart* is available. 

The former is a series of cross assemblers for microprocessors including HD-6120. Of the collection, *AS6100* works for you. ASxxxx runs on Windows and Linux (including Windows Subsystem for Linux; WSL).
https://shop-pdp.net/ashtml/asxxxx.php

The latter is a cross assembler for PDP-8 and it is an enhanced version of the PDP-8 PAL assembler. palbart runs on, at least, Linux (including WSL). 
https://packages.ubuntu.com/en/focal/palbart

In either case, assembled codes should be added to the sketch manually, though.


## 6. Why not use *simh*?

*simh* is a awesome software, really. It emulates many historic computer systems, including, but not limited to PDP-8 completely. Softwares written for PDP-8 can run on *simh* but not on my evaluation board. I know this but making **real** old microprocessor (like HD-6120) run is what attracts me. The functionality is limited but my evaluation board helps understand the internals and signals of HD-6120 and the programming in PDP-8 assembly language, since it is simple enough to build.

For reference: *Computer Simulation and History*
http://simh.trailing-edge.com/

## 7. Are there any sample codes for HD-6120?

Please see the sketch (hd6120.ino). In *addCodes()* function, there is a program with comments there which calculates the 12th term of the fibonacci sequence by resursion. It is noted that this program uses HD-6120 extended instructions for stack manipulation. 

Assembly language examples published here (*.pal) also should work although I have not tested them yet. They are provided as source files. so assembling the *.pal file is necessary.

https://tangentsoft.com/pidp8i/dir?ci=tip&name=examples

## 8. What do they mean? (stable and testing in the directory named as 'Arduino Sketch')

- **stable** changes infrequently. Sketch is tested and is proved to work and to be stable enough to copy it from **testing**.
- **testing** contains the curring edge stuff. Sketch is new but is not tested well. 
