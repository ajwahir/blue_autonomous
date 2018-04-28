cmake_minimum_required(VERSION 2.8.3)
project(twist_stamped_usb)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  nav_msgs
  roscpp
  rospy
  std_msgs
  std_msgs
)

catkin_package()

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

add_executable(twist_stamped_usb src/twist_stamped_usb.cpp)

add_dependencies(twist_stamped_usb ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(twist_stamped_usb
        ${catkin_LIBRARIES})
