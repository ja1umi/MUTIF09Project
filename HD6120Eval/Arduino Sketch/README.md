# Some notes on the software (sketch)

## 1. Interrupt, interrupt and again, interrupt

My sketch for the HD6120 evaluation board (hereafter referred to as simple "the sketch") is an interrupt-driven program. Depending upon the intended use, HD-6120 has many designated control signals, unlike the recent processors. Then, I decided to create interrupt handlers for each control signal.
This strategy needs many interrupt pins but fortunately Arduino Mega 2560 can afford for them.

## 2. Memory usage

HD-6120 has a 12-bit address space (to be precise, HD-6120 has yet another 3 extended memory address (EMA) bits, so HD-6120 can have 8 banks (*fields* in PDP-8 terminology) of memory (4 kilo words per *field*) but leave it for now). This means that HD-6120 can have up to 4 kilo word of memory.

One (1) word consists of 12-bit data. So, one word occupies 2 bytes. 4 kilo x 2 bytes = 8 kilo bytes (kB) are necessary for full memory population.  

Memory for HD-6120 is implemented as an array in SRAM in Arduino Mega 2560. It is true that Arduino Mega 2560 has a 8 kB of SRAM but Arduino SRAM is used for other than the array (e.g. global variables). Thus, whole array cannot be allocated. Furthermore, HD-6120 expects that memory is writable. 
 
After consideration, I decided not to make it emulate all memory. Only lower 10 address bits are decoded; 00000--01777 (in octal). This means that allocated memory size is 1 k words (= 2 k bytes). Any address that has the same lower 10 bits will work. So, echoes (images) will appear on 02000-03777, 04000--05777, and 06000--07777 (in octal). With this implementation, accessging memory address from 00000 to 01777 is the same as accessing memory address from 06000--07777 (in octal), and vice versa. This is useful because HD-6120 expects that the top and bottom of memory is available. 


| address area in hex | address area in octal |
| :---: | :---: |
| 0000-03ff | 0000-1777 (**user area**) |
| 0400-07ff | 2000-3777 (echo) |
| 0800-0bff | 4000-5777 (echo) |
| 0c00-0fff | 6000-7777 (echo) |

Similarly, panel memory is also implemented. 

In the early stage of development, associative array-based sparse arrays are used for implementing main- and panel memory. 

My idea was the following: one of my goals is to experience the essence of programming of various microprocessors. So, program size would be small. If this is the case, most part of the memory is unused. So, storing pairs of address and data seems to be sufficient. This can significantly reduce memory usage. It seemed a good idea at the time.

After *Googling*, I found ArduinoSTL library, which includes map class as an associative array and access data stored in a map with iterators. Yes, *MaaM*! (I mean, Memory as a Map object). It works well while processor speed is slow enough; less than 1~2 kHz. Map object (associative array) is expensive than I expected. I switched from using associative array to simple array in SRAM.

## 3. DIO2 library and port manipulation for faster I/O

To improve I/O performance, I tried 2 options: (1) substituting DigitalWrite/DigitalRead with DigitalWrite2f/DigitalRread2f, as used in *RetroShield* software (for Arduino Mega), (2) substituting DigitalWrite/DigitalRead with direct port manipulation by accessing port registers. Finally, (2) was used for bus-handling and (1) was used for handling other control signals.

- For DigitalWrite2f/DigitalRead2f (provided by Arduino DIO2 library), see also
https://www.arduinolibraries.info/libraries/dio2
https://www.arduino.cc/reference/en/libraries/dio2/

- And just for your information, for ArduinoSTL, see also
https://www.arduinolibraries.info/libraries/arduino-stl

Accessing port registers allow faster manipulation of GPIO pins of Arduino boards but it has serious disadvantages that cannot be overlooked. The sketch became much harder to understand and to maintain. Even worse, the sketch also bacame less portable (this is the reason why there remains *#define* and conditional directives in the sketch).

To use port registers, I changed pin assignments for inout and output. 

| GPIO pin configured as an input (HD-6120->Arduino) | GPIO pin condigured as an output (Arduino -> HD-6120) |
| :---: | :---: |
| DP30, DP31, DP32, DP33, DP29, DP28, DP27, DP26, DP25, DP24, DP23, and DP22 | DP34, DP35, DP36, DP37, DP42, DP43, DP44, DP45, DP46, DP47, DP48, and DP49 |

Taken together, the table shown below shows ways of accessing GPIO ports and implementation of memory and their effects. The maximum operating clock frequency achieved was approximately 100 kHz but actual frequency was lower than this (around 80 kHz) when measured by an oscilloscope. I don't know why but this is due to, to some extent, stray capacitance? 

| R8 (in ohm) | C7 (in pF) | Max. operating clock* (in kHz) | Serial output for debug | Memory implementation | GPIO access | Status |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 470 k | 4700 | 0.326 | enabled | associative array | default | worked |
| 470 k | 1200 | 1.27 | enabled | associative array | default | worked |
| 680 k | 1200 | 8.75 | enabled | associative array | default | did not work |
| 150 k | 1200 | 3.98 | disabled | associative array | default | worked |
| 100 k | 1200 | 5.96 | disabled | associative array | default | did not work |
| 130 k | 1200 | 4.59 | disabled | associative array | DIO2 | worked |
| 120 k | 1200 | 4.98 | disabled | associative array | DIO2 | did not work |
| 680 k | 1200 | 8.75 | disabled | array | DIO2 | worked |
| 200 k | 120 | 29.9 | disabled | array | DIO2 | worked |
| 190 k | 120 | 31.5 | disabled | array | DIO2 | did not work |
| 190 k | 120 | 31.5 | disabled | array | Port register + DIO2 | work |
| 56 k | 120 | 106 | disabled | array | Port register + DIO2 | work |
| 51 k | 120 | 116 | disabled | array | Port register + DIO2 | did not work|

*: Theoretical value from calculation (not actual measured value)
