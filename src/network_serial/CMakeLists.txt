cmake_minimum_required(VERSION 2.8.3)
project(network_serial)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
)

catkin_package()

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

add_executable(network_serial src/network_serial.cpp)

add_dependencies(network_serial ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(network_serial
        ${catkin_LIBRARIES})