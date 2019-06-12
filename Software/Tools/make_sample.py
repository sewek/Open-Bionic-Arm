import _init as app
import sys
import os
import time
import copy
import datetime
from termcolor import colored
import numpy as np
import matplotlib.pyplot as plt
from pyts.image import GramianAngularField

data_electrodes_num = 0
data_amplitude = [ ]
data_deltatime = [ ]

X = [[], []]
# thread_can_run = True

# def read_thread():
#     global data

time_prepare = 3
time_sample = 0.5
sample_count = 512

file = open("samples.csv", 'w')
file.write("img,state\n")

states = ["free", "open", "close"]
state_values = [1, 2, 3]

current_state = 0

serial_port = app.make_serial()
if serial_port == None:
    print("Something went wrong.")
    exit()

print("Number of samples: ", end = '')
num = int(input())

if num < 1:
    print("Invalid number!")
    exit()

os.system('color')

for i in range(num):
	print()
	print(app.bcolors.OKBLUE + app.bcolors.BOLD + "##########     Sample #" + str(i+1) + "     ##########" + app.bcolors.ENDC)
	print()
	for j in range(len(states)):
		serial_port.write(b"\xab")
		print("Prepare to state: " + app.bcolors.HEADER + states[j] + app.bcolors.ENDC + ". (" + str(time_prepare) + "s)")
		sys.stdout.flush()

		for x in range(10):
			print(app.bcolors.OKGREEN + str(x*10+10) + '%.. ', end='')
			sys.stdout.flush()
			time.sleep(time_prepare/10)

		print()
		print(app.bcolors.ENDC + "Collecting data...", end = '')
		print('\r' + app.bcolors.WARNING, end='')
		sys.stdout.flush()

		serial_port.flushInput()
		serial_port.flushOutput()

		serial_port.write(b"\xaa")

		check = 0
		for z in range(sample_count):
			m_res = app.read_data(serial_port)
			if m_res != None:
				m_res.electrode_id = int(m_res.electrode_id)
				if int(m_res.electrode_id) + 1 > data_electrodes_num:
					data_electrodes_num = int(m_res.electrode_id) + 1
					data_amplitude.append([])
					data_deltatime.append([])

				data_amplitude[m_res.electrode_id].append(m_res.amplitude)
				data_deltatime[m_res.electrode_id].append(m_res.deltatime)
				check += 1

			if check > sample_count/40:
				print('#', end='')
				sys.stdout.flush()
				check = 0

		serial_port.write(b"\xab")
		print(app.bcolors.FAIL + '#' + app.bcolors.ENDC)
		sys.stdout.flush()

		current_state = state_values[j]

		X[0][:] = []
		X[1][:] = []
		X[0].extend(np.interp(data_amplitude[0], (0, 10000), (-1, 1)))
		X[1].extend(np.interp(data_deltatime[0], (0, 100), (-1, 1)))

		gasf = GramianAngularField(image_size=sample_count, method='difference')
		X_gasf = gasf.fit_transform(X)
		plt.imsave("img/sample_" + str(i) + "_state_" + states[j] + ".jpg", X_gasf[0], format='jpg')
		file.write("img/sample_" + str(i) + "_state_" + states[j] + ".jpg," + str(current_state) + "\n")

		del gasf
		del X_gasf
		data_amplitude[:] = []
		data_deltatime[:] = []
		data_electrodes_num = 0
		pass

file.close()
serial_port.write(b"\xab")