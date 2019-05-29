import serial
import serial.tools.list_ports
import threading
import logging
import time
from dataclasses import dataclass


# data protocol structure
#    [byte]          2x[byte]        2x[byte]
# {electrode_id}    {amplitude}     {deltatime}

@dataclass
class protocol:
    electrode_id : int
    amplitude    : int
    deltatime    : int

def make_serial():
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
        
def read_signal_thread_func():
    print("Start of read thread...")
    i = 0
    while can_read_signal:
        data[i].deltatime = serial_port.read()
        data[i].amplitude = serial_port.read(2)
        data[i].deltatime = serial_port.read(2)
        i+=1
    print("Stop of read thread...")

can_read_signal = False
data :protocol = []

make_serial()

read_signal_thread = threading.Thread(target=read_signal_thread_func)

print("Start data read ?(y/n)")
res = input()
if res == "y":
    # Send signal to start giving data 0xa0 = 160
    serial_port.write(0xa0)
    while serial_port.read() != 0x01: # 0x01 means everything is OK!
        time.sleep(1)
    read_signal_thread.start()
else:
    quit()

