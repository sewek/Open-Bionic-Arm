import serial
import serial.tools.list_ports
import time
from dataclasses import dataclass

# commands
# 0xa0 - OK
# 0xa1 - ERROR
# 0xaa - start sending data
# 0xab - stop sending data
#
# Frame:
# id;value;dtime\n
#

@dataclass
class protocol:
    electrode_id : int
    amplitude    : int
    deltatime    : int

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

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
    try:
        serial_port = serial.Serial(port, 520000)
        serial_port.flushInput()
        serial_port.flushOutput()
        print("Connected with: " + serial_port.name)
        return serial_port
    except serial.SerialException as e:
        print(e)
        return None

def read_data(serial_port: serial.Serial):
    m_data = ""
    m_data = str(serial_port.readline())
    
    m_data = m_data.replace("b", "")
    m_data = m_data.replace("\\n", "")
    m_data = m_data.replace("\\r", "")
    m_data = m_data.replace("'", "")
    m_data = m_data.strip()
    
    if len(m_data) < 3:
        return None

    if m_data[0] == "D":
        ret = protocol
        m_data = m_data.replace("D", "")
        m_vals = m_data.split(";")
        if len(m_vals) != 3:
            data = None
            return data
        ret.electrode_id = m_vals[0]
        ret.amplitude = m_vals[1]
        ret.deltatime = m_vals[2]
        return ret
    elif m_data[0] == "C":
        #TODO: Get command
        return m_data[1]
    else:
        return None
