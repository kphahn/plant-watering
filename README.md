# Plant Watering Project

This project serves as a proof of concept for an automated watering system. The goal is to develop a much larger system with self-developed pcbs equipped with sensors and actuators of higher quality.

This prototype could probably be realized with any other MCU and sensor/actuator. However, for exact reproducability, in the following I state my setup:

# Hardware
## Used Hardware
- NUCLEO-L432KC dev board (https://www.st.com/en/evaluation-tools/nucleo-l432kc.html)
- RUNCCI-YUN dev kit (https://www.amazon.de/-/en/gp/product/B0814HXWVV/ref=ppx_yo_dt_b_asin_title_o05_s00?ie=UTF8&psc=1)
- External 5V power supply for the water pump circuit
- Bread board
- Bread board wires

## Hardware Setup
### Pump and relais
1. Connect VCC and GND of relais with 5V and GND of NUCLEO board respectively
2. Connect IN of relais with pin A3 of NUCLEO board
3. Connect external 5V supply to NO (normally open) terminal of relais
4. Connect red wire of pump with COM terminal of relais
5. Connect black wire of pump with GND of external supply

### Moisture sensor
1. Connect VCC and GND of sensor with 5V and GND of NUCLEO board respectively
2. Connect AVOUT with pin A2 of NUCLEO board

# Software
## Required Software
- STM32CubeMX code generator
- VSCode with the extension _STM32 For VSCode_

## Software Setup
1. Open STM32CubeMX and setup a default project for the dev board NUCLEO-L432KC
2. Activate channel 8 of ADC1 and set it to _single-ended_
3. Activate timer TIM16 and set the prescaler to _32000_
4. Set the pin PA4 of the MCU to GPIO_Output
5. USART should be activated in _asynchronous_ mode for debugging purposes
