# Some notes on the software (sketch)

**1. Interrupt, interrput and again, interrupt**

My sketch for the HD6120 evaluation board (hereafter referred to as simple "the sketch") is an interrupt-driven program. Depending upon the intended use, HD-6120 has many desicated control signals, unlike the recent processors. Then, I decided to create interrupt handlers for each control signal.
This strategy needs many interrupt pins but fortunately Arduino Mega 2560 can afford for them.

**2. Memmory usage**

HD-6120 has a 12-bit address space (to be precise, HD-6120 has yet another 3 extended memory address bits, so HD-6120 can have 8 banks (*fields* in PDP-8 terminology) of memory (4 kilo words per *field*) but leave it for now). This means that HD-6120 can have up to 4 kilo word of memory.

One (1) word consists of 12-bit data. So, one word occupies 2 bytes. 4 kilo x 2 bytes = 8 kilo bytes (kB) are necessary for full memory population.  

Memory for HD-6120 is implemented as an array in SRAM in Arduino Mega 2560. It is true that Arduino Mega 2560 has a 8 kB of SRAM but Arduino SRAM is used for other than the array (e.g. global variables). Thus, whole array cannot be allocated. Furthermore, HD-6120 expects that memory is writable. 
 
After consideration, I decided not to make it emulate all memory. Only lower 10 address bits are decoded; 00000-01777 (in octal). This means that allocated memory size is 1 k words (= 2 k bytes). Any address that has the same lower 10 bits will work. So echoes (images) will appear on 02000-03777, 04000--05777, and 06000-07777 (in octal). With this implementation, accessging memory address from 00000 to 01777 is the same as accessing memory address from 06000 to 07777 (in octal), and vice versa. This is useful because HD-6120 expects that the top and bottom of memory is available. 


| address area in hex | address area in octal |
| :---: | :---: |
| 0000-03ff | 0000-1777 |
| 0400-07ff | 2000-3777 (echo) |
| 0800-0bff | 4000-5777 (echo) |
| 0c00-0fff | 6000-7777 (echo) |

Similarly, panel memory is also implemented. 
