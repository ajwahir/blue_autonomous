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

	void mySigintHandler(int sig)
	{
	  // Do some custom action.
	  // For example, publish a stop message to some other nodes.

	  // All the default sigint handler does is call shutdown()
	  ros::shutdown();
	}

	double deg2rad(double deg)
	  {
	    return deg * M_PI / 180;
	  }

	void FloatToHex(float floatNum,unsigned char* byteArry)
	{
		int i=0;
	    char* pchar=(char*)&floatNum;
	    for(i=0;i<sizeof(float);i++)
	    {
			*byteArry=*pchar;
			pchar++;
			byteArry++;

	    }
	}

	float BytesToFloat(unsigned char *Byte)//,int num)
	{
			return *((float*)Byte);
	}


	int set_interface_attribs(int fd, int speed)
	{
	    struct termios tty;

	    if (tcgetattr(fd, &tty) < 0) {
		printf("Error from tcgetattr: %s\n", strerror(errno));
		return -1;
	    }

	    cfsetospeed(&tty, (speed_t)speed);
	    cfsetispeed(&tty, (speed_t)speed);

	    tty.c_cflag |= (CLOCAL | CREAD);    /* ignore modem controls */
	    tty.c_cflag &= ~CSIZE;
	    tty.c_cflag |= CS8;         /* 8-bit characters */
	    tty.c_cflag &= ~PARENB;     /* no parity bit */
	    tty.c_cflag &= ~CSTOPB;     /* only need 1 stop bit */
	    tty.c_cflag &= ~CRTSCTS;    /* no hardware flowcontrol */

	    /* setup for non-canonical mode */
	    tty.c_iflag &= ~(IGNBRK | BRKINT | PARMRK | ISTRIP | INLCR | IGNCR | ICRNL | IXON);
	    tty.c_lflag &= ~(ECHO | ECHONL | ICANON | ISIG | IEXTEN);
	    tty.c_oflag &= ~OPOST;

	    /* fetch bytes as they become available */
	    tty.c_cc[VMIN] = 1;
	    tty.c_cc[VTIME] = 1;

	    if (tcsetattr(fd, TCSANOW, &tty) != 0) {
		printf("Error from tcsetattr: %s\n", strerror(errno));
		return -1;
	    }
	    return 0;
	}

	char n;
	double x,w;
	std::string x_str ,y_str;
	void twist_callback(const geometry_msgs::Twist::ConstPtr& msg)
	{
	    x = msg->linear.x;
	    w = msg->angular.z;
	    w*=45;

	    x_str = boost::lexical_cast<std::string>(x);
	    y_str = boost::lexical_cast<std::string>(w);

	}

	int configure_port(int fd)      // configure the port
	{
		struct termios port_settings;      // structure to store the port settings in

		cfsetispeed(&port_settings, B57600);    // set baud rates
		cfsetospeed(&port_settings, B57600);

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
	    ros::init(argc, argv, "twistToUSB");
	    ROS_INFO("Twist to serial driver is now running");
	    ros::NodeHandle nh("~");
	    signal(SIGINT, mySigintHandler);

	    // ros::Subscriber twist_sub = nh.subscribe("/twist_cmd", 100,twist_callback);
	    ros::Subscriber twist_sub = nh.subscribe("/cmd_vel", 100,twist_callback);

	    ros::Publisher usb_twist_pub = nh.advertise<geometry_msgs::Twist>("feedback_twist", 100);


	    ros::Rate loop_rate(10);
	    std::ofstream us;
		// us.open( "/dev/ttyUSB1");
		// us.open( "/dev/pts/7");
		char *portname = "/dev/ttyUSB0";
	// char *portname = "/dev/pts/24";
	int count=0,countx=0;
	int fd = open(portname, O_RDWR | O_NOCTTY | O_SYNC);
    	// set_interface_attribs(fd, B115200);
    configure_port(fd);
    float vel=0,theta=0;

    geometry_msgs::Twist twist_feedback;


    // float xf=0.51,wf=0;
    std::ofstream file;
    // file.open("output.txt", );

    while (ros::ok())
    {

    	// file.open("output.txt",std::ios_base::app);
    	unsigned char buf[4],buf1[4],light={0x00};

    	//////////////////////////////Comment this for sequential input////////////////////

    	float xf = roundf(x*100)/100;
    	// float xf = -1.0;
    	float wf = roundf(w*100)/100;
    	// float wf = 0.0;

//////////////////////////////////////Uncomment these for sequential input//////////////////////

    	// if(count<500 || (count>1500 && count <2000))
    	// 	wf=wf+ 0.02;
    	// else if((count>=3000 && count <3500) || (count>4500 && count <5000))
    	// 	wf=wf - 0.02;
    	// count++;


    	// wf = roundf(wf*100)/100;

    	// if(count<200)
    	// 	xf=xf+ 0.03;
    	// else if(count>300)
    	// 	xf = 0.0;
    	// count++;


    	// xf = roundf(xf*100)/100;

    	// // // std::cout<<wf<<std::endl;
    	// std::cout<<xf<<std::endl;


//////////////////////////////////////////////////////////////////////////////////////////


    	if(wf>33.00)
    		wf=33.00;
    	if(wf<-33.00)
    		wf=-33.00;


    	FloatToHex(xf,buf);
    	FloatToHex(wf,buf1);
    	// light=0x00;

    	// std::cout<<xf<<" "<<wf<<std::endl;
	
    	write(fd,"$",1);

    	write(fd,&buf,4);
    	write(fd,&buf1,4);
    	write(fd,&light,1);
    	write(fd,"*",1);

//////////////////////////////////////////////////////////////////////

      //FOR READING FEEDBACK
      unsigned char buf_read[10],vel_feed[4],steer_feed[4];
      int n = read( fd, &buf_read , sizeof  buf_read);
      // std::cout<<n<<std::endl;
      if(n>0){
      	if(buf_read[0]=='$' && buf_read[9]=='*'){
      		vel_feed[0] = buf_read[1];
      		vel_feed[1] = buf_read[2];
      		vel_feed[2] = buf_read[3];
      		vel_feed[3] = buf_read[4];
  			steer_feed[0] = buf_read[5];
      		steer_feed[1] = buf_read[6];
      		steer_feed[2] = buf_read[7];
      		steer_feed[3] = buf_read[8];      		
      		theta=BytesToFloat(steer_feed);
      		// std::cout << "Steering: " << kk << std::endl;
      		vel=BytesToFloat(vel_feed);
      		// std::cout << "velocity : " << kk << std::endl;
      		

      	}

      }

    
      	twist_feedback.linear.x=vel;
  		twist_feedback.linear.y=0;
  		twist_feedback.linear.z=0;
  		twist_feedback.angular.x=0;
  		twist_feedback.angular.y=0;
  		twist_feedback.angular.z=deg2rad(theta);
  		// twist_feedback.angular.z=0;

  		file<<vel;
    	file<<std::endl;

  		usb_twist_pub.publish(twist_feedback);

  		///////////////////////////////////////////////////////////////

  		file.close();
        ros::spinOnce();
        loop_rate.sleep();


    }

    us.close();
    return 0;
}
