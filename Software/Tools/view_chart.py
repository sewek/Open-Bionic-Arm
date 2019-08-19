import _init as app
import sys
import os
import time
import copy
import datetime
import csv
from termcolor import colored
import numpy as np
import matplotlib.pyplot as plt

serial_port = app.make_serial()
if serial_port == None:
    print("Something went wrong.")
    exit()

res = []

res_index = 0
res_max_index = 100

def res_add(val1, val2):
    global res
    global res_index
    global res_max_index
    if res_index < res_max_index:
        res.append([val1, val2])
        #res[res_index][0] = val1
        #res[res_index][1] = val2
        if res_index < res_max_index-1:
            res_index += 1
    else:
        i = 0
        for i in range(len(res)-1):
            res[i] = res[i+1]
        res[res_index][0] = val1
        res[res_index][1] = val2

plt.style.use('ggplot')

def live_plotter(x_vec,y1_data,line1,pause_time=0.000000000001):
    if line1==[]:
        # this is the call to matplotlib that allows dynamic plotting
        plt.ion()
        fig = plt.figure(figsize=(13,6))
        ax = fig.add_subplot(111)
        # create a variable for the line so we can later update it
        line1, = ax.plot(x_vec,y1_data,'-o',alpha=0.8)        
        plt.show()
    
    # after the figure, axis, and line are created, we only need to update the y-data
    line1.set_ydata(y1_data)
    # adjust limits if new data goes beyond bounds
    if np.min(y1_data)<=line1.axes.get_ylim()[0] or np.max(y1_data)>=line1.axes.get_ylim()[1]:
        plt.ylim([np.min(y1_data)-np.std(y1_data),np.max(y1_data)+np.std(y1_data)])
    # this pauses the data so the figure/axis can catch up - the amount of pause can be altered above
    plt.pause(pause_time)
    
    # return line so we can update it again in the next iteration
    return line1

size = 100
x_vec = np.linspace(0,1,size+1)[0:-1]
y_vec = np.random.randn(len(x_vec))
line1 = []

serial_port.write("START".encode())

while True:
    m_res = app.read_data(serial_port)
    if m_res != None:
        y_vec[-1] = int(m_res.amplitude)
        line1 = live_plotter(x_vec,y_vec,line1)
        y_vec = np.append(y_vec[1:],0.0)
        serial_port.flushInput()