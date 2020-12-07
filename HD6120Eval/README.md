# Harris HD-6120 evaluation board

**1. What the hell is this?**

This is an evaluation board for the HD-6120, which is a CMOS 12-bit microprocessor from Harris. The HD-6120 is designed to recognize the inscruction set of DEC's PDP-8/E in a sigle chip.

This board and project is inspired by *Retroshield for Arduino Mega* project by Erturk Kocalar. 


**2. What is this made for?**

This board is to experience to easily relive the programming in very simple and unique PDP-8 instruction set, together with Arduino Mega 2560. 

**3. Can a PDP-8 program run on this board?**

At first, I would like to dispell a misunderstanding that may have arisen; This board is **not** designed to emulate PDP-8.

So, in short, the ansert is yes and no. Very simple, sample program without complex I/O may can run on this board because HD-6120 is PDP-8 instruction compatible and basic TTY input/output are emulated. However, many of programs, such as DEC's operating systems, diagnostic software, editors, and compilers will not run.  
