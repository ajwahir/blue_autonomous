#!/usr/bin/env python3
 
import time, random
import math
from collections import deque
import sys, serial
import struct
import numpy

start = time.time()

def float_to_hex(f):
    return hex(struct.unpack('<I', struct.pack('<f', f))[0])


class RealtimePlot:
    def __init__(self, axes, max_entries = 100):
        self.axis_x = deque(maxlen=max_entries)
        self.axis_y = deque(maxlen=max_entries)
        self.axes = axes
        self.max_entries = max_entries
        
        self.lineplot, = axes.plot([], [], "ro-")
        self.axes.set_autoscaley_on(True)

    def add(self, x, y):
        self.axis_x.append(x)
        self.axis_y.append(y)
        self.lineplot.set_data(self.axis_x, self.axis_y)
        self.axes.set_xlim(self.axis_x[0], self.axis_x[-1] + 1e-15)
        self.axes.relim(); self.axes.autoscale_view() # rescale the y-axis

    def animate(self, figure, callback, interval = 50):
        import matplotlib.animation as animation
        def wrapper(frame_index):
            self.add(*callback(frame_index))
            self.axes.relim(); self.axes.autoscale_view() # rescale the y-axis
            return self.lineplot
        animation.FuncAnimation(figure, wrapper, interval=interval)

def main():

    # if(len(sys.argv) != 2):
    #     print 'Example usage: python showdata.py "/dev/tty.usbmodem411"'
    #     exit(1)

    from matplotlib import pyplot as plt

    strPort = sys.argv[1]
    #strPort = "/dev/ttyUSB0"
    # open serial port
    ser = serial.Serial(strPort,57600)

    # fig, axes = plt.subplots()
    # display = RealtimePlot(axes)
    # display.animate(fig, lambda frame_index: (time.time() - start, random.random() * 100))
    # plt.show()


    # fig, axes = plt.subplots()
    # display = RealtimePlot(axes)
    now=time.time()
    start=time.time()
    time_waited=0   

    freq = 10
    time_to_wait = 1.0/freq

    size_of_graph = 150
    points =[]

    # vel = '\x24\x40\xA0\x00\x00\x00\x00\x00\x00\x2A'
    # vel = '0x2440A00000000000002A'
    
    print 'plotting data...'
    # output_file = open("plot.txt", "a")

    while len(points)<size_of_graph:
        try:
            # ser.write(vel)
            ser.write(serial.to_bytes([0x24,0x00,0x00,0x80,0x3F,0x00,0x00,0x00,0x00,0x2A]))
            # print vel
            line = ser.read(10)
            line = line[::-1]
            k = line[5:9].encode('hex')
            data = struct.unpack('!f', k.decode('hex'))[0]
            # output_file.write(str(data))
            # output_file.write("\n")
            points.append(data)

            # print data

            while(time_waited<time_to_wait):
                time_waited = now-start
                now=time.time()

            # print time_waited
            time_waited=0
            start=time.time()
            now=time.time()


            # display.add(time.time() - start,  data)
            # plt.pause(0.001)

        except KeyboardInterrupt:
            print 'exiting'
            break

    print len(points)
            
    ser.write(serial.to_bytes([0x24,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x2A]))      

    x = numpy.arange(0, size_of_graph, 1) 
    print len(x)
    fig = plt.figure()
    ax = fig.gca()
    ax.set_xticks(numpy.arange(0, size_of_graph, 3))
    ax.set_yticks(numpy.arange(0, 6, 0.1))
    plt.scatter(x, points)
    plt.grid()
    plt.savefig(sys.argv[2],dpi=1000)
    plt.show()
    plt.close()

    points = []

    # output_file.close()
    ser.flush()
    ser.close()


    # while True:
    #     try:
    #         line = '0000000000000000'
    #       # print line
    #         try:
    #             line = line[::-1]
    #             # print line
    #             k = line[5:9].encode('hex')

    #             data = struct.unpack('!f', k.decode('hex'))[0]
    #             print data
    #             if(len(data) == 1):
    #                 display.add(time.time() - start,  random.random() * 100)
    #                 plt.pause(0.001)
              
    #         except:
    #         # skip line in case serial data is corrupt
    #             pass
    #     except KeyboardInterrupt:
    #         print 'exiting'
    #         break
    #     # close serial
    #     ser.flush()
    #     ser.close()

if __name__ == "__main__": main()
