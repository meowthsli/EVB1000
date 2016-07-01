# EVB1000

This project provides Ada/SPARK drivers to control the on-board peripherals of
the DecaWave EVB1000 evalulation board. The drivers are implemented in Ada, but
the package specs have SPARK annotations to allow the drivers to be used by
SPARK code. The library provides drivers for:
  * the two-line ASCII LCD;
  * the four user-controllable LEDs;
  * switches 3 .. 8 on the SW1 switch.

The LCD driver uses a protected object to manage shared access between multiple
user tasks. Therefore, this library requires an Ada runtime which supports
tasking, such as a Ravenscar runtime.

These drivers are built as a library named `libevb1000.a`, targeted to
the STM32F105 Cortex-M3 microcontroller, which is the host processor on the
EVB1000 board. This library also includes the peripheral register definitions
for the STM32F105, generated by [SVD2Ada](https://github.com/AdaCore/svd2ada).

## Building

To build the library, change to the repository root directory and type: 
``make build``

To install the Ada library to the directory `<destination>` change to the 
repository root directory and type:
``make install DESTDIR=<destination>``

Alternatively, you can copy/include the source code directly into your project
by including all of the source files in the `src` directory.

# License

This library is licensed under the MIT license.
