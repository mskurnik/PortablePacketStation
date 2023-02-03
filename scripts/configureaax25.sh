1.	#!/bin/bash
2.	  
3.	# Kill existing processes and connections
4.	sudo killall kissattach
5.	sudo killall i2ckiss
6.	sudo ifconfig ax0 down
7.	sudo ifconfig ax1 down
8.	sudo ifconfig ax2 down
9.	
10.	# Create I2C KISS Connection
11.	sudo i2ckiss 1 8  i2c08 127.0.0.108 # i2c Port 08 (HEX 08)
12.	sudo i2ckiss 1 9  i2c09 127.0.0.109 # i2c Port 09 (HEX 09)
13.	sudo i2ckiss 1 18 i2c12 127.0.0.112 # i2c Port 12 (HEX 18)