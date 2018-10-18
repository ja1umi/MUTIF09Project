# Am9511A Add-on Board for MUTIF09 6809 SBC

## TL;DR

This daughterboard is designed to add the functionlity of AMD Am9511A Arithmetic co-processor to MUTIF09 6809 SBC.

## Making short story long

I have been wanting to experience how arithmetic co-processor programming looks like. For this purpose, Am9511A sounds good because the dataseet says *"...The Am9511A APU is designed with a general purpose 8-bit data bus and interface control so that it can be conveniently used with any general 8-bit processor."* (ok. I should have realized the old saying: there is no rule without some exceptions). So, at first, I designed to connect Am9511A directly to the data bus of 6809 microprocessor with no success. I could not neither read nor write data from/to Am9511A as I expected. Good grief!

After Googling, finally, I found a document titled *"AMD Peripheral Processor Interface Guide Technical Manual"* which explains how to interface Am9511A with 6809, together with schematic drawing. Great. That was what I needed but the promlems were that 1) additional circuitry is required and 2) hard-to-get AMD logic ICs (Am25LS2519 and Am2956) are deployed.

Am25LS2519 and Am2956 are quad register with two independently controlled 3-state outputs and octal latches with 3-state outputs, respectively. These ICs are **very difficuly to find nowadays**. This is especially true for Am25LS2519. Further investigation revealed that a guru succeeded in developing a Am25LS2519 replecement board in standard logic ICs [1]. As for Am2956, it has quite similar functionality with 74LS373 or 74LS573. Besides つのぜみ-san (@ossanmed) kindly referred me to the articles about interfacing Am9511A with various microprocessors such as 63C09, Z80 and 6502. On the basis of these pieces of information, I deceided to build the Am9511A Add-on board of my own.

From functinal point of view, this Add-on board is a faithful clone from the circuitry shown in Figure 9-1.1a MC6809 and Am9511A interface, in the interface guide technical manual (mentioned above) with substitution of standard logic ICs (74HCT574, 74HCT00 and 74HCT573) for AMD logic ICs (Am25LS2519 and Am2956).

## Assembly: It's time to build the board

Schematic and gerber data are provided in this directory. FYI: It is not necessary to populate U1 (MCP810) and C2.

## Installation

Check the alignment of the pins in the APU Expansion Connector named "To Am9511 Add-on board" on the MUTIF09 6809 SBC and make sure it is correct. After that, insert the Add-on board into the APU Expansion Connector.

JP1 selects the clock source used for Am9511A CLK input. The clock source options are either the 6809 bus clock E (between pin 3 and pin 2 closed) or an on-board xtal oscillator (between pin 2 and pin 1 closed). Use jumper pin for this.

Make the following connections:
 1) Pin 35 of 6809 (Q) to header pin named "Q" on the Add-on board
 2) Header pin 3 (PC0) of GPIO Port C to pin 22 (RESET) of Am9511A

## Usage

See the sample program under TestProgram directory.

## External Link(s)

[1] http://jrok.com/project/pengo_u74/pengo_ic74_u74.html