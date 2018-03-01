#include <ros/ros.h>
#include <sensor_msgs/NavSatStatus.h>
#include <nav_msgs/Odometry.h>
// #include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseStamped.h>



double x_or,y_or,z_or,w_or,x,y,z;


void odom_callback(const nav_msgs::Odometry::ConstPtr& msg)
{
    x_or = msg->pose.pose.orientation.x;
    y_or = msg->pose.pose.orientation.y;
    z_or = msg->pose.pose.orientation.z;
    w_or = msg->pose.pose.orientation.w;
    x = msg->pose.pose.position.x;
    y = msg->pose.pose.position.y;
    z = msg->pose.pose.position.z;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "odom2PointStamped");
    ROS_INFO("ODOM driver is now running");
    ros::NodeHandle nh("~");

   
    std::string frame_id = "gps";
    if(!nh.getParam("frame_id", frame_id))
    {
        ROS_WARN_STREAM("No frame_id provided - default: " << frame_id);
    }

    ros::Publisher gps_pub = nh.advertise<geometry_msgs::PoseStamped>("gnss_pose", 100);

    ros::Subscriber gps_sub = nh.subscribe("/gps_utm", 100,odom_callback);

    ros::Rate loop_rate(30);




    geometry_msgs::PoseStamped gnss_msg;
    while (ros::ok())
    {

        gnss_msg.header.stamp = ros::Time::now();
        gnss_msg.header.frame_id = frame_id;
        
        gnss_msg.pose.position.x = x;
        gnss_msg.pose.position.y = y;
        gnss_msg.pose.position.z = z;

        gnss_msg.pose.orientation.x = x_or;
        gnss_msg.pose.orientation.y = y_or;
        gnss_msg.pose.orientation.z = z_or;
        gnss_msg.pose.orientation.w = w_or;

        
        gps_pub.publish(gnss_msg);

        ros::spinOnce();
        loop_rate.sleep();
        
    }
    return 0;
}