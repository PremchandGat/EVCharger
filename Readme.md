# EVCharger Project.
## About
The purpose of this project is to create Smart EV-Charger that has the features as following.
1. Prepaid billing system.
2. Single-phase metering.
3. Real-time charging usage track on the Android app. 
4. Charging and usage history.
5. Charger is accessible by scanning the QR code on the app.
6. Charger is accessible via RFID.
7. Dashboard to monitor the charging station's status.

## Dependencies
We are creating whole project in multiple modules as following- 
1. Power Supply
2. Microcontroller
3. Metering

### Hardware Dependency
### Power Supply
1. Transformer
2. Diode
3. Capacitor
4. LM7805
### Microcontroller
1. ESP32-WROOM32 => Microcontroller chip
2. AMS1117 => 3.3Volt regulator
3. Resistor => 4700ohm,12Kohm,330ohm
4. Capacitor => 10uf, 100nf
4. Push button => Button
5. LED
### Metering
1. ADE9153A
2. WSK12161L000FEA (Shunt Resistor)
3. LED
4. Capacitors
    1. 4.7uF (9  Quantity)
    2. 0.1uf (9  Quantity)
    3. 0.47uf (1  Quantity)
    4. 0.15uF (1 Quantity)
    5. 22pF (2 Quantity)
    7. 100nF (6 Quantity)
    8. 1uF (1 Quantity)
5. Resistor
    1. 150Ω (2 Quantity)
    2. 1kΩ (1 Quantity)
    3. 330kΩ (3 Quantity)
    5. 250KΩ (4 Quantity)
    6. 10KΩ (2 Quantity)
7. Oscillator 12.288MHz
    1. Operating temperature: −40°C to +85°C
    2. Frequency tolerance: ≤ ±50 ppm
    3. Frequency stability: ≤ ±30 ppm

### Other modules
1. I2C
2. LCD 16*2

### Software Dependency
1. Eagle
2. VS-Code
3. Flutter
4. Android Studio
5. Node.Js
6. MySQL