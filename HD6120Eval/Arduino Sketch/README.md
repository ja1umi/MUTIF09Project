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
| 0000-03ff | 0000-1777 (user area) |
| 0400-07ff | 2000-3777 (echo) |
| 0800-0bff | 4000-5777 (echo) |
| 0c00-0fff | 6000-7777 (echo) |

Similarly, panel memory is also implemented. 

In the early stage of development, associative array-based sparse arrays are used for implementing main- and panel memory. 

My idea was the following: one of my goals is to experience the essence of programming of various microprocessors. So, program size would be small. If this is the case, most part of the memory is unused. So, storing pairs of address and data seems to be sufficient. This can signigicantly reduce memory usage. 

After *Googling*, I found ArduinoSTL library, which includes map class as an associative array and access data stored in a map with iterators. Yes, *MaaM*! (I mean, Memory as a Map object). It works well while processor speed is slow enough; less than 2~3 kHz. Map object (assosiative array) is expensive. I switched from using assosiative array to simple array in SRAM.

**3. Port manipulation**

To improve I/O performance, I tried 2 options: (1) substituting DigitalWrite/DigitalRead with DigitalWrite2/DigitalRread2, as used in *RetroShield* software (for Arduino Mega), (2) substituting DigitalWrite/DigitalRead with direct port manipulation by accessing port registers. Finally, (2) was used for bus-handling and (1) was used for handling other control signals.





