# Test Program for Am9511A (TEST9511-1_9.ASM)

 This is a small test program for checking functionality of Am9511A, the arithmeric co-processor, by calculating square root.

## 1. Prerequisites
### Hardware Setup

 1-1. Install Am9511A Add-on board onto the MUTIF09 6809 SBC.

 1-2. Make the following connections:
 1) Pin 35 of 6809 (Q) to header pin 6 of the connector J1 (2x12) on the Add-on board. See also schematic diagram (for MUTIF09 6809 SBC PCB Rev.1 only).
 2) Header pin 3 (PC0) of GPIO Port C to pin 22 (RESET) of Am9511A (for MUTIF09 6809 SBC PCB Rev.1 only)
 3) Pin 36 of 6809 (MRDY) to header pin 5 of the connector J2 (1x6) on the Add-on board. See also schematic diagram (for MUTIF 6809 SBC PCB Rev.3).

### Software Setup (1)

Burn the MPB6809 Monitor Program to a UVEPROM/EEPROM and install in on the sbc. Skip this step if you already installed the ROM containing MPB6809 Monitor Program.

### Software Setup (2)

Input the assembled machine code (see TEST9511-1_9.LST) byte by byte manually using MPB6809 Monitor Program.

### Test Data Preparation

Write 16 bytes of test data at the address starting at $0200. Any byte values are allowed for the first 12 bytes (three 32-bit integers/floating-point numbers). Last 4 bytes (32-bit integer, least significant byte first) are used for the parameter. For example, if you want to calculate square root of 2, last 4 bytes are $02, $00, $00 and $00.

## 2. Running the program

Type 'G0100' and enter under MPB6809 monitor. After that, greeting message is displayed on the console and then the program exits to the command line of the monitor program.

## 3. Exploring the results

The square root of the specified number is stored at $021C - $021F in 32-bit Am9511-floating point format (See datasheet of Am9511 for more details). Check this by issuing D command of the monitor program (type 'D0200021F' and enter).

## 4. How this test program works

Am9511A has a internal stack with a size of 16 bytes (eight 16-bit integers or four 32-bit integers/floating point numbers) for exchanging data between a microprocessor and Am9511A itself. At first, this program *pushes* 16 bytes of data onto the stack, as mentioned above. Leading 12 bytes ($0200 - $020C) are *tracer* to track the movement of data on the stack. A stack is LIFO and therefore, last 4 bytes are put on the top of the stack (TOS).

After pushing data, commands are issued from 6809 in the following order: 1) Convert the 32-bit integer at the TOS to 32-bit floating point number (FLTD) and 2) Calculate square root of 32-bit floating-point number at the TOS and replace data at the TOS with it (SQRT). It is noted that data at the bottom of the stack is destroyed during the execution of the commands.

Lastly, the contents of the stack are *popped (pulled)* and stored at memory location $0210 - $021F. If everything went well, you can also see previously *pushed* data were successfully *popped* after running this program.

## 5. Things to be noted

~~You can find *"empty read"* lines in the aseembly listing of this program. The necessity of these *"empty read"* is unexpected but essential to retrieve correct data/status.~~

~~To make matters worse, such *"empty read"* disturbs Am9511A's stack pointer when *popping* data from the stack. The forced RESET at the beginning of the program by 8255A is the *ad hoc* solution I found.~~

~~I wonder if some kind of timing issue still exists regarding read-operation.~~

Now *"empty read"* was eliminated. The timing issue was resolved by connecting 6809 MRDY pin and Am9511A /PAUSE pin with weak pull-up resistor (10k ohm).