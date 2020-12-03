# Some notes on the hardware

**1. Demultiplexing**

For demultiplexing the address signals from the bus (DX0..Dx11), two octal D-FF (74HC574) is used to grab the address (main mamory).

I added several LEDs to observe HD-6120's control signals (e.g. L̅X̅M̅A̅R̅) and inverter (74HC04) for LED driving. So, inverted signal are fed to clock pin (pin 11) of 74HC574. 

I could use transparent latch (74HC573), instead of 74HC574, without LEDs to make things simple but I believe that signal visualization is useful for debug and understanding the behaviour of CPU.

**2. Handling of C0/C̅0̅ and C1/C̅1̅ (HD-6120's pin 25 and pin 26)**
   
These are multiplexed, bidirectional pins. They are active high ouput, extended memory address (EMA) bit 0..1 and active low input peripheral device control line during an I/O transfer. I decided to use dedicated Arduino Mega 2560's GPIO pins for input and output to make my life easier; Mega 2560's pin D39..D41 pins are assigned for reading EMA bits and pin D67..D68 for peripheral device control (see also my sketch for more details).

For demultiplexing purpose, I inserted a diode between C0/C̅0̅ -- D67 (and also between C1/C̅1̅ -- D68) and added pull-up resistors connected to +5V power rail. This make C0/C̅0̅ and C1/C̅1̅ pins *"open drain"* . Needless to say, D67 and D68 are configured as output mode. Using open-drain buffer, such as 74HC07, might be better but combination of diode and pull-up resistor works fine for me.

**3. Clock generator**

As shown in the schematic, astable configured 555 timer is used for clock generation.

HD-6120 can operate at frequency up to 5.1 MHz. However, actual operation clock frequency is limited by the I/O performance and in my design (treating an Arduino Mega 2560 as memory with peripheral device) it is not good enough. The values shown in the schematic are for around 80 kHz of clock (R8 = 56k ohm, C7 = 120 pF). I did my best to improve the performance but it was the "best possible" result at this moment.

**4. Single step (instruction) execution**

This functionality is achieved by providing one shot of clock pulse to HD-6120. This is implemented by monostable configured 555 timer. The pulse is triggered by the tacticle switch debounced by SR-FF configured 555.

The design of Ben Eater's clock module (including clock-source selection logic) helps me a lot. 
https://eater.net/8bit/clock

Debouncing circuit by 555 is designed by GATARO. https://t.co/HSp6OM8IeJ

That is really a great, cool design!

**5. Additional circuitry in testing (not shown in the schematic)**

Five (5) 74HC595 (a serial-in, parallel-out shift register with output latches) in series are connected to the Arduino Mega 2560 to drive 7-segment LEDs for handy output. 74HC595s/LEDs are accessed via WSR instruction of HD-6120. See also *"Some notes on software"* for more details. 

    JFYI: Breakout board for 74HC595 with 7-Seg. LED are available at AKIZUKI DENSHI-TSUSHO.

    https://akizukidenshi.com/catalog/g/gK-10360/
    https://akizukidenshi.com/download/ds/akizuki/AE-7SEG-BOARD_a2.pdf

    SparkFun also carries similar product (7-Seg. LEDs need wired manually). 
    https://www.sparkfun.com/products/10680

Besides, two (2) CD4021B (a paralel-in, serial-out shift register) in series are also connected the Arduino Mega 2560 for handy input. CD4021s are accessed via OSR instruction of HD-6120. See also the following page.

https://www.arduino.cc/en/Tutorial/Foundations/ShiftIn

**6. What's next? / Speed and memory**

Even though Arduino Mega 2560 is easy-to-use, reasobably fast and it has plenty of GPIO pins, as I/O between Arduino and HD-6120 is controlled by software, the clock speed of Arduino Mega 2560 is a rate-limiting factor. 

Another caveat is that Arduino Mega 2560 has *only* 8 kB of SRAM. I know that there is plenty enough room, at least compared with popular Arduino Uno, for most of purposes. 

However, this is not true for this project. HD-6120's memory is implemented as an array on Arduino's SRAM. Please rememer that HD-6120 has a 15-bit address space in total, arranged in to 4 k words x 8 *fields* for both main- and panel memory. HD-6120's one (1) word consists of 12 bits and therefore it occupies 2 bytes (uint16_t type). Taken together, maximum of 128 kB (32 x 2 k words) of SRAM is required!

The above mentioned issues is very likely to resolved by use of a more powerful microcontroller board insted of Arduino Mega 2560. Arduino Due and Nucleo-F767ZI seem good. The followings are pros and cons;

    Arduino Due
    Pros: 
        (1) more memory is available (64 kB + 32 kB SRAM),
        (2) the same Arduino IDE can be used.
    Cons:
        (1) less poweful than Nucleo-F767ZI
        (2) Software has to be re-written or at least, modified.
        (3) level shifting (5V -> 3.3V) circuitry is necessary.

    Nucleo-F767ZI
    Pros: 
        (1) much more memory is available (512 kB SRAM)
        (2) more powerful than Arduino Due
        (3) 5V-tolerant pins are available. No level shifter (5V -> 3.3V) may be necessary.
    Cons:
        (1) software has to be re-written.
        (2) less popular and availability (?)

It is worth to gather information about Teensy.