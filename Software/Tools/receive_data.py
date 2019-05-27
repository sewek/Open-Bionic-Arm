import serial
import serial.tools.list_ports
import time
from dataclasses import dataclass

print("Find out ports:")
ports = serial.tools.list_ports.comports()
for port in ports:
    print("- " + port.device)

print("Select port: ", end = '')
port = input()

serial_port = serial.Serial(port, 115200)
serial_port.flushInput()
serial_port.flushOutput()
print("Connected with: " + serial_port.name)

# Send signal to start giving data 0xa0 = 160
serial_port.write(0xa0)
while serial_port.read() != 0x01: # 0x01 means everything is OK!
    time.sleep(1)

# data protocol structure
#    [byte]          2x[byte]        2x[byte]
# {electrode_id}    {amplitude}     {deltatime}

@dataclass
class protocol:
    electrode_id : int
    amplitude    : int
    deltatime    : int

data :protocol = []

i = 0
while True:
    data[i].deltatime = serial_port.read()
    data[i].amplitude = serial_port.read(2)
    data[i].deltatime = serial_port.read(2)
    i+=1