import serial
import serial.tools.list_ports
import threading
import logging
import time
from dataclasses import dataclass

# commands
# 0xa0 - OK
# 0xa1 - ERROR
# 0xaa - start sending data
# 0xab - stop sending data

# data protocol structure
#    [byte]          2x[byte]        2x[byte]
# {electrode_id}    {amplitude}     {deltatime}

@dataclass
class protocol:
    electrode_id : int
    amplitude    : int
    deltatime    : int

def make_serial():
    ports = serial.tools.list_ports.comports()
    if len(ports) < 1:
        print("There are not connected devices!")
        time.sleep(3)
        quit()
    print("Find out ports:")
    for port in ports:
        print("- " + port.device)
    print("Select port: ", end = '')
    port = input()
    serial_port = serial.Serial(port, 115200)
    serial_port.flushInput()
    serial_port.flushOutput()
    print("Connected with: " + serial_port.name)
        
def make_menu(command):
    if command == "q":
        can_read_signal = False
        keep_read_thread_alive = False
        serial_port.write(0xab)
        while serial_port.read() != 0xa0:
            time.sleep(1)
        read_signal_thread.join() # Let's finish thread
        serial_port.close()
        print("Good bye!")
        quit()
    elif command == "s":
        can_read_signal = False
        serial_port.write(0xab)
        while serial_port.read() != 0xa0:
            time.sleep(1)
        print("Stopped.")
    elif command == "p":
        serial_port.flushInput()
        serial_port.flushOutput()
        serial_port.write(0xaa)
        while serial_port.read() != 0xa0:
            time.sleep(1)
        can_read_signal = True
        print("Played.")
    elif command == "c":
        clear_data = True
        can_read_signal = False
        while clear_data:
            time.sleep(1) # do nothing
        can_read_signal = True
        print("Data cleared.")
    elif command == "w":
        # Save data, and show graph
        can_read_signal = False
        file = open("data.csv", "w")
        file.write("Id,Amplitude,Deltatime")
        i = 0
        for i in range(len(data)-1):
            file.write(data[i].electrode_id + "," + data[i].amplitude + "," + data[i].deltatime)
        file.close()
        print("Data saved!")
    elif command == "m":
        print("***** HELP MENU *****")
        print("s - to stop receiving data")
        print("p - to play receiving data")
        print("c - to clear received data")
        print("w - to save all data, and show graph")
        print("m - to show this menu")
        print("q - to quit from program")
    print()
    print(": ")

def read_signal_thread_func():
    print("Start of read thread...")
    i = 0
    while keep_read_thread_alive:
        if can_read_signal == False:
            time.sleep(1)
            continue
        if clear_data:
            i = 0
            clear_data = False
        while can_read_signal:
            data[i].deltatime = serial_port.read()
            data[i].amplitude = serial_port.read(2)
            data[i].deltatime = serial_port.read(2)
            i+=1
    print("Stop of read thread...")

keep_read_thread_alive = True
can_read_signal = False
clear_data = False
data :protocol = []
serial_port = None

make_serial()

read_signal_thread = threading.Thread(target=read_signal_thread_func)

print("Start data read ?(y/n)")
res = input()
if res != "y":
    quit()

# Send signal to start giving data 0xaa
serial_port.write(0xaa)
while serial_port.read() != 0xa0: # 0xa0 means everything is OK!
    time.sleep(1)

print("Passed init.")
read_signal_thread.start()
can_read_signal = True

print("(m): ")
res = input()
make_menu(res)
