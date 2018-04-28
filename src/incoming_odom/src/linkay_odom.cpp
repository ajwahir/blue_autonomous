#include <ros/ros.h>
#include <geometry_msgs/TwistStamped.h>
#include <std_msgs/Float32.h>
#include <nav_msgs/Odometry.h>
#include <tf/transform_broadcaster.h>

double vx = 0;
double th = 0.0;

double rad2deg(double rad)
  {
    return rad * 180 / M_PI;
  }

double deg2rad(double deg)
  {
    return deg * M_PI / 180;
  }

 void twist_callback(const geometry_msgs::Twist::ConstPtr& msg)
{
	vx =2.5*msg->linear.x;
	th = deg2rad(45*msg->angular.z);
}

int main(int argc, char** argv){
  
  double wheel_base=1.7,minimum_turning_radius=3.536,maximum_steering_angle=33;

  ros::init(argc, argv, "linkay_odom");

  ros::NodeHandle n;
  ros::Publisher odom_pub = n.advertise<nav_msgs::Odometry>("odom_feed", 50);
  tf::TransformBroadcaster odom_broadcaster;

  double x = 0.0;
  double y = 0.0;

  
  double vy = 0;
  double vth = 0;
  double theta =0;
  ros::Subscriber twist_sub = n.subscribe("/cmd_vel", 20 ,twist_callback);

  

  ros::Time current_time, last_time;
  current_time = ros::Time::now();
  last_time = ros::Time::now();

  ros::Rate r(20);
  while(n.ok()){

    ros::spinOnce();               // check for incoming messages
    current_time = ros::Time::now();


  	vth=tan(deg2rad(rad2deg(th) * (rad2deg(asin(wheel_base / minimum_turning_radius))/ maximum_steering_angle))) * vx / wheel_base;

    //compute odometry in a typical way given the velocities of the robot
    double dt = (current_time - last_time).toSec();
    double delta_x = (vx * cos(theta)) * dt;
    double delta_y = (vx * sin(theta)) * dt;
    double delta_th = vth * dt;

    // std::cout<<theta<<std::endl;


    x += delta_x;
    y += delta_y;
    theta += delta_th;

    last_time=current_time;

    //since all odometry is 6DOF we'll need a quaternion created from yaw
    geometry_msgs::Quaternion odom_quat = tf::createQuaternionMsgFromYaw(theta);

    //first, we'll publish the transform over tf
    geometry_msgs::TransformStamped odom_trans;
    odom_trans.header.stamp = current_time;
    odom_trans.header.frame_id = "odom_feed_1";
    odom_trans.child_frame_id = "base_link_feed_1";

    odom_trans.transform.translation.x = x;
    odom_trans.transform.translation.y = y;
    odom_trans.transform.translation.z = 0.0;
    odom_trans.transform.rotation = odom_quat;

    //send the transform
    odom_broadcaster.sendTransform(odom_trans);

    //next, we'll publish the odometry message over ROS
    nav_msgs::Odometry odom;
    odom.header.stamp = current_time;
    odom.header.frame_id = "odom_feed_1";

    //set the position
    odom.pose.pose.position.x = x;
    odom.pose.pose.position.y = y;
    odom.pose.pose.position.z = 0.0;
    odom.pose.pose.orientation = odom_quat;

    //set the velocity
    odom.child_frame_id = "base_link_feed_1";
    odom.twist.twist.linear.x = vx;
    odom.twist.twist.linear.y = 0;
    odom.twist.twist.angular.z = vth;

    //publish the message
    odom_pub.publish(odom);

    r.sleep();
  }
}
