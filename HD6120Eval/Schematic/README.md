# Some notes on the hardware

## 1. Demultiplexing (address visualization)

To examine whether the address is demultiplexed from the bus (DX0..DX11) visually, two octal D-FFs (74HC574) and LEDs are used. As shown in the schematic, the D inputs and Q outputs are connected to the bus and LEDs, respectively. The L̅X̅M̅A̅R̅ signal is fed to the CP input through a spare NOT gate. 

I could use transparent latch (74HC573), instead of 74HC574. In this case, The L̅X̅M̅A̅R̅ signal can be directly connected to the LE input of 74HC573.

In fact, demultiplexing is only for address *"visualization"* purpose only. The address value is grabbed at the falling edge of the L̅X̅M̅A̅R̅ (for main memory) and L̅X̅P̅A̅R̅ (for panel memory) from the bus in the sketch.

## 2. Bus transaction

The bus (DX0..DX11) is bidirectional. Arduino Mega 2560 reads data from the bus and store them onto SRAM. Conversely, Mega 2560 also read data from its SRAM and writes to the bus.  

Whereas, my sketch uses dedicated pins for input (reading data from the bus) and/or output (writing data to the bus). These pins are unidirectional. This makes, in my belief, the sketch easy to read and understand. But the caution is required.

Please suppose that output pins are connected directly to the bus and HD-6120 tries to write data into the bus. In this assumption, both (Arduino and HD-6120) try to write data to the bus at the same time. If an Arduino pin is HIGH and the corresponding HD-6120 pin is LOW, a large current flows and it can damage the device(s). This should not be happened.

To avoid this disaster, output pins at Arduino side should be isolated as needed. For this purpose, two (2) octal bus transceivers with tri-state outputs (74HC245) are used; one for higher 8 bits and another one for lower 4 bits. These octal bus transceivers are sat in between Arduino output pins and HD-6120 and R̅E̅A̅D̅ signal is connected to O̅E̅ pin of 74HC245. If HD-6120 tries to write data to the bus, R̅E̅A̅D̅ signal remains HIGH. So, output from Arduino is disabled as O̅E̅ is deasserted (remember this; O̅E̅ is active low). In contrast, if HD-6120 tries to read data from the bus, R̅E̅A̅D̅ signal goes low and output from Arduino is enabled as O̅E̅ is asserted.

Though Arduino input pins are directly connected to the bus, they do not affect the bus, as they are configured as input without pull-up and therefore, they are always in high-impedance state.

## 3. Handling of C0/C̅0̅ and C1/C̅1̅ (HD-6120's pin 25 and pin 26)
   
These are multiplexed, bidirectional pins. They are active high output, extended memory address (EMA) bit 0..1 and active low input, peripheral device control line during an I/O transfer. I decided to use dedicated Arduino Mega 2560's GPIO pins for input and output to make my life easier; Arduino Mega 2560 pin D39..D41 pins are assigned for reading EMA bits and pin D67..D68 for peripheral device control (see also my sketch for more details).

For demultiplexing purpose, I inserted a diode between C0/C̅0̅ -- D67 (and also between C1/C̅1̅ -- D68) and added pull-up resistors connected to +5V power rail. This make C0/C̅0̅ and C1/C̅1̅ pins *"open drain"* . Needless to say, D67 and D68 are configured as output mode. Using open-drain buffer, such as 74HC07, might be better but combination of diode and pull-up resistor works fine for me.

## 4. Clock generator

As shown in the schematic, astable configured 555 timer is used for clock generation.

HD-6120 can operate at frequency up to 5.1 MHz. However, actual operation clock frequency is limited by the I/O performance and in my design (treating an Arduino Mega 2560 as memory with peripheral device) it is not good enough. The values shown in the schematic are for around 80 kHz of clock (actual measured value where R8 = 56 kohm and  C7 = 120 pF). I did my best to improve the performance but it was the "best possible" result at this moment (R8 = 60 kohm is better for stability).

## 5. Single step (instruction) execution

This functionality is achieved by providing one shot of clock pulse to HD-6120. This is implemented by monostable configured 555 timer. The pulse is triggered by the tacticle switch debounced by SR-FF configured 555.

The design of Ben Eater's clock module (including clock-source selection logic) helps me a lot. I would like to thank him for sharing valuable information.
https://eater.net/8bit/clock

Debouncing circuit by 555 is designed by GATARO. That is a great, cool design. I am really impressed with it.
https://t.co/HSp6OM8IeJ



## 6. Memory expansion

As mentioned in *Some notes on the software*, only 1 kilo words of free user area is available due to a limitation of Arduino Mega 2560. I am planning to try to add an external SPI-RAM with caching support. See also the following page:
http://www.8bitforce.com/blog/2019/07/05/128kb-spi-ram-with-caching-support/ 

## 7. Additional circuitry in testing (not shown in the schematic)

Five (5) 74HC595 (a serial-in, parallel-out shift register with output latches) in series are connected to the Arduino Mega 2560 to drive 7-segment LEDs for handy output. 74HC595s/LEDs are accessed via WSR instruction of HD-6120. See also *"Some notes on software"* for more details. 

- JFYI: Breakout board for 74HC595 with 7-Seg. LED are available at AKIZUKI DENSHI-TSUSHO.
https://akizukidenshi.com/catalog/g/gK-10360/

    https://akizukidenshi.com/download/ds/akizuki/AE-7SEG-BOARD_a2.pdf

- SparkFun also carries similar product (7-Seg. LEDs need wired manually). 
https://www.sparkfun.com/products/10680

Besides, two (2) CD4021B (a paralel-in, serial-out shift register) in series are also connected the Arduino Mega 2560 for handy input. CD4021s are accessed via OSR instruction of HD-6120. See also the following page.
https://www.arduino.cc/en/Tutorial/Foundations/ShiftIn

## 6. Other microcontroller board

Even though Arduino Mega 2560 is easy-to-use, reasonably fast and it has plenty of GPIO pins, as I/O between Arduino and HD-6120 is controlled by software, the clock speed of Arduino Mega 2560 is a rate-limiting factor. 

Another caveat is that Arduino Mega 2560 has *only* 8 kB of SRAM. I know that there is plenty enough room, at least compared with popular Arduino Uno, for most of purposes. However, this is not true for this project. 

    HD-6120's memory is implemented as an array on Arduino's SRAM. Please remember that HD-6120 has a 15-bit (12 bits + 3 bits for EMA) address space in total, arranged in to 4 k words x 8 fields for both main- and panel memory. HD-6120's one (1) word consists of 12 bits and therefore it occupies 2 bytes (uint16_t type). Taken together, maximum of 128 kB (32 k words for main memory and 32 k words for panel memory) of SRAM is required!

The above-mentioned issues are very likely to resolved by use of a more faster microcontroller board instead of Arduino Mega 2560. Arduino Due and Nucleo-F767ZI seem good. The followings are pros and cons;

- Arduino Due
    - Pros:    
  
        - more memory is available (64 kB + 32 kB SRAM),
        - the same Arduino IDE can be used.
        - easy to obtain
    - Cons:
        - faster than Mega 2560 but slower than Nucleo-F767ZI
        - software has to be modified. At least, direct port register manipulation should be removed. 
        - level shifting (5V -> 3.3V) circuitry is necessary.

- Nucleo-F767ZI
    - Pros: 
        - much more memory is available (512 kB SRAM)
        - faster than Arduino Due, much faster than Arduino Mega 2560
        - 5V-tolerant pins are available. No level shifter (5V -> 3.3V) may be necessary.
    - Cons:
        - software has to be re-written.
        - less popularity and less availability (?) (as compared with Arduino)

I think that it is a time to gather information about Teensy, which is a development board with many GPIO pins in a small footprint but still faster than Arduino Mega 2560. Still, Arduino IDE can be used to program Teensy.

