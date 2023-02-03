#!/usr/bin/env python
## Sourced from https://wiki.geekworm.com/X728-Software
import struct
import smbus
import sys
import time
from datetime import datetime
import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BCM)
GPIO.setup(13, GPIO.OUT)
GPIO.setwarnings(False)

def readVoltage(bus):
     address = 0x36
     read = bus.read_word_data(address, 2)
     swapped = struct.unpack("<H", struct.pack(">H", read))[0]
     voltage = swapped * 1.25 /1000/16
     return voltage

def readCapacity(bus):
     address = 0x36
     read = bus.read_word_data(address, 4)
     swapped = struct.unpack("<H", struct.pack(">H", read))[0]
     capacity = swapped/256
     return capacity

bus = smbus.SMBus(1)

print ("Date & Time\t\t\tBatt-V  Battery %")
while True:
     print ("%s\t%5.2fV\t%5.7f%%" % (datetime.now().isoformat(), readVoltage(bus), readCapacity(bus)))

     if readCapacity(bus) == 100:
          print ("Battery FULL")
     if readCapacity(bus) < 20:
          print ("Battery Low")

     #Set battery low voltage to shut down
     if readVoltage(bus) < 3.00:
          print ("Battery LOW!!!")
          print ("Shutdown in 10 seconds")
          time.sleep(10)
          GPIO.output(13, GPIO.HIGH)
          time.sleep(3)
          GPIO.output(13, GPIO.LOW)

     time.sleep(30)
