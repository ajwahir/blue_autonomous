#include "std_msgs/String.h"
#include <ros/ros.h>
#include <boost/lexical_cast.hpp>
#include <iostream>
#include <stdio.h>
#include <geometry_msgs/Twist.h>
#include <iomanip>
#include <fstream>
#include <signal.h>
#include <errno.h>
#include <fcntl.h>
#include <string.h>
#include <termios.h>
#include <unistd.h>

std::string s;

void chatterCallback(const std_msgs::String::ConstPtr& msg)
{ 
    s=msg->data.c_str();
}

void driveCallback(const std_msgs::String::ConstPtr& msg)
{ 
    s=msg->data.c_str();
}

void autoCallback(const std_msgs::String::ConstPtr& msg)
{ 
    s=msg->data.c_str();
}

void manualCallback(const std_msgs::String::ConstPtr& msg)
{ 
    s=msg->data.c_str();
}

void lightCallback(const std_msgs::String::ConstPtr& msg)
{ 
    s=msg->data.c_str();
}

void hornCallback(const std_msgs::String::ConstPtr& msg)
{ 
    s=msg->data.c_str();
}

int configure_port(int fd)      // configure the port
  {
    struct termios port_settings;      // structure to store the port settings in

    cfsetispeed(&port_settings, B9600);    // set baud rates
    cfsetospeed(&port_settings, B9600);

    port_settings.c_cflag &= ~PARENB;    // set no parity, stop bits, data bits
    port_settings.c_cflag &= ~CSTOPB;
    port_settings.c_cflag &= ~CSIZE;
    port_settings.c_cflag |= CS8;

    tcsetattr(fd, TCSANOW, &port_settings);    // apply the settings to the port
    // ioctl(fd, TCFLSH, 2);
    return(fd);

  }

int main(int argc, char **argv)
{
 
  ros::init(argc, argv, "network_serial");
  ros::NodeHandle n;

  ros::Subscriber sub1 = n.subscribe("chatter", 1000, chatterCallback);
  ros::Subscriber sub2 = n.subscribe("rpi/auto_mode", 1000, chatterCallback);
  ros::Subscriber sub3 = n.subscribe("rpi/manual_mode", 1000, chatterCallback);
  ros::Subscriber sub4 = n.subscribe("rpi/drive_wire", 1000, chatterCallback);
  ros::Subscriber sub5 = n.subscribe("rpi/light", 1000, chatterCallback);
  ros::Subscriber sub6 = n.subscribe("rpi/horn", 1000, chatterCallback);



  std::ofstream us;
  
  char *portname = "/dev/ttyACM0";
  int fd = open(portname, O_RDWR | O_NOCTTY | O_SYNC);
      // set_interface_attribs(fd, B115200);
  configure_port(fd);

  ros::Rate loop_rate(10);
  char ch;
  
  while (ros::ok()){ 
    // us.open( "/dev/ttyACM0");
    // std::cout<<s;
    // us<<s;
    // us.close();
    ch=s[0];
    write(fd,&ch,1);

    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}
