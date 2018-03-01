;; Auto-generated. Do not edit!


(when (boundp 'mtig_driver::GpsInfo)
  (if (not (find-package "MTIG_DRIVER"))
    (make-package "MTIG_DRIVER"))
  (shadow 'GpsInfo (find-package "MTIG_DRIVER")))
(unless (find-package "MTIG_DRIVER::GPSINFO")
  (make-package "MTIG_DRIVER::GPSINFO"))

(in-package "ROS")
;;//! \htmlinclude GpsInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*GPS_NO_FIX*" (find-package "MTIG_DRIVER::GPSINFO"))
(shadow '*GPS_NO_FIX* (find-package "MTIG_DRIVER::GPSINFO"))
(defconstant mtig_driver::GpsInfo::*GPS_NO_FIX* 0)
(intern "*DEAD_RECKONING*" (find-package "MTIG_DRIVER::GPSINFO"))
(shadow '*DEAD_RECKONING* (find-package "MTIG_DRIVER::GPSINFO"))
(defconstant mtig_driver::GpsInfo::*DEAD_RECKONING* 1)
(intern "*GPS_2D_FIX*" (find-package "MTIG_DRIVER::GPSINFO"))
(shadow '*GPS_2D_FIX* (find-package "MTIG_DRIVER::GPSINFO"))
(defconstant mtig_driver::GpsInfo::*GPS_2D_FIX* 2)
(intern "*GPS_3D_FIX*" (find-package "MTIG_DRIVER::GPSINFO"))
(shadow '*GPS_3D_FIX* (find-package "MTIG_DRIVER::GPSINFO"))
(defconstant mtig_driver::GpsInfo::*GPS_3D_FIX* 3)
(intern "*GPS_AND_DEAD_RECKONING*" (find-package "MTIG_DRIVER::GPSINFO"))
(shadow '*GPS_AND_DEAD_RECKONING* (find-package "MTIG_DRIVER::GPSINFO"))
(defconstant mtig_driver::GpsInfo::*GPS_AND_DEAD_RECKONING* 4)
(defclass mtig_driver::GpsInfo
  :super ros::object
  :slots (_header _geometricDOP _positionDOP _timeDOP _verticalDOP _horizontalDOP _northingDOP _eastingDOP _itow _position_accuracy _speed_accuracy _satellite_number _gps_fix ))

(defmethod mtig_driver::GpsInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:geometricDOP __geometricDOP) 0.0)
    ((:positionDOP __positionDOP) 0.0)
    ((:timeDOP __timeDOP) 0.0)
    ((:verticalDOP __verticalDOP) 0.0)
    ((:horizontalDOP __horizontalDOP) 0.0)
    ((:northingDOP __northingDOP) 0.0)
    ((:eastingDOP __eastingDOP) 0.0)
    ((:itow __itow) 0.0)
    ((:position_accuracy __position_accuracy) 0.0)
    ((:speed_accuracy __speed_accuracy) 0.0)
    ((:satellite_number __satellite_number) 0)
    ((:gps_fix __gps_fix) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _geometricDOP (float __geometricDOP))
   (setq _positionDOP (float __positionDOP))
   (setq _timeDOP (float __timeDOP))
   (setq _verticalDOP (float __verticalDOP))
   (setq _horizontalDOP (float __horizontalDOP))
   (setq _northingDOP (float __northingDOP))
   (setq _eastingDOP (float __eastingDOP))
   (setq _itow (float __itow))
   (setq _position_accuracy (float __position_accuracy))
   (setq _speed_accuracy (float __speed_accuracy))
   (setq _satellite_number (round __satellite_number))
   (setq _gps_fix (round __gps_fix))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:geometricDOP
   (&optional __geometricDOP)
   (if __geometricDOP (setq _geometricDOP __geometricDOP)) _geometricDOP)
  (:positionDOP
   (&optional __positionDOP)
   (if __positionDOP (setq _positionDOP __positionDOP)) _positionDOP)
  (:timeDOP
   (&optional __timeDOP)
   (if __timeDOP (setq _timeDOP __timeDOP)) _timeDOP)
  (:verticalDOP
   (&optional __verticalDOP)
   (if __verticalDOP (setq _verticalDOP __verticalDOP)) _verticalDOP)
  (:horizontalDOP
   (&optional __horizontalDOP)
   (if __horizontalDOP (setq _horizontalDOP __horizontalDOP)) _horizontalDOP)
  (:northingDOP
   (&optional __northingDOP)
   (if __northingDOP (setq _northingDOP __northingDOP)) _northingDOP)
  (:eastingDOP
   (&optional __eastingDOP)
   (if __eastingDOP (setq _eastingDOP __eastingDOP)) _eastingDOP)
  (:itow
   (&optional __itow)
   (if __itow (setq _itow __itow)) _itow)
  (:position_accuracy
   (&optional __position_accuracy)
   (if __position_accuracy (setq _position_accuracy __position_accuracy)) _position_accuracy)
  (:speed_accuracy
   (&optional __speed_accuracy)
   (if __speed_accuracy (setq _speed_accuracy __speed_accuracy)) _speed_accuracy)
  (:satellite_number
   (&optional __satellite_number)
   (if __satellite_number (setq _satellite_number __satellite_number)) _satellite_number)
  (:gps_fix
   (&optional __gps_fix)
   (if __gps_fix (setq _gps_fix __gps_fix)) _gps_fix)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _geometricDOP
    8
    ;; float64 _positionDOP
    8
    ;; float64 _timeDOP
    8
    ;; float64 _verticalDOP
    8
    ;; float64 _horizontalDOP
    8
    ;; float64 _northingDOP
    8
    ;; float64 _eastingDOP
    8
    ;; float64 _itow
    8
    ;; float64 _position_accuracy
    8
    ;; float64 _speed_accuracy
    8
    ;; uint8 _satellite_number
    1
    ;; uint8 _gps_fix
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _geometricDOP
       (sys::poke _geometricDOP (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _positionDOP
       (sys::poke _positionDOP (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timeDOP
       (sys::poke _timeDOP (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _verticalDOP
       (sys::poke _verticalDOP (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _horizontalDOP
       (sys::poke _horizontalDOP (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _northingDOP
       (sys::poke _northingDOP (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _eastingDOP
       (sys::poke _eastingDOP (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _itow
       (sys::poke _itow (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position_accuracy
       (sys::poke _position_accuracy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_accuracy
       (sys::poke _speed_accuracy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _satellite_number
       (write-byte _satellite_number s)
     ;; uint8 _gps_fix
       (write-byte _gps_fix s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _geometricDOP
     (setq _geometricDOP (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _positionDOP
     (setq _positionDOP (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timeDOP
     (setq _timeDOP (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _verticalDOP
     (setq _verticalDOP (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _horizontalDOP
     (setq _horizontalDOP (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _northingDOP
     (setq _northingDOP (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _eastingDOP
     (setq _eastingDOP (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _itow
     (setq _itow (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position_accuracy
     (setq _position_accuracy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_accuracy
     (setq _speed_accuracy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _satellite_number
     (setq _satellite_number (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gps_fix
     (setq _gps_fix (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mtig_driver::GpsInfo :md5sum-) "585846f714e5b60f71d9245253f7336a")
(setf (get mtig_driver::GpsInfo :datatype-) "mtig_driver/GpsInfo")
(setf (get mtig_driver::GpsInfo :definition-)
      "Header header

#GPS DOP
float64 geometricDOP
float64 positionDOP
float64 timeDOP
float64 verticalDOP
float64 horizontalDOP
float64 northingDOP
float64 eastingDOP
float64 itow


#Position Accuracy Estimate
float64 position_accuracy
float64 speed_accuracy

#Number of satellites
uint8 satellite_number

uint8 GPS_NO_FIX = 0
uint8 DEAD_RECKONING = 1
uint8 GPS_2D_FIX = 2
uint8 GPS_3D_FIX = 3
uint8 GPS_AND_DEAD_RECKONING = 4

uint8 gps_fix

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :mtig_driver/GpsInfo "585846f714e5b60f71d9245253f7336a")


