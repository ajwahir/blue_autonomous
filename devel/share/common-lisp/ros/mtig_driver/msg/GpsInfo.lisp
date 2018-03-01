; Auto-generated. Do not edit!


(cl:in-package mtig_driver-msg)


;//! \htmlinclude GpsInfo.msg.html

(cl:defclass <GpsInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (geometricDOP
    :reader geometricDOP
    :initarg :geometricDOP
    :type cl:float
    :initform 0.0)
   (positionDOP
    :reader positionDOP
    :initarg :positionDOP
    :type cl:float
    :initform 0.0)
   (timeDOP
    :reader timeDOP
    :initarg :timeDOP
    :type cl:float
    :initform 0.0)
   (verticalDOP
    :reader verticalDOP
    :initarg :verticalDOP
    :type cl:float
    :initform 0.0)
   (horizontalDOP
    :reader horizontalDOP
    :initarg :horizontalDOP
    :type cl:float
    :initform 0.0)
   (northingDOP
    :reader northingDOP
    :initarg :northingDOP
    :type cl:float
    :initform 0.0)
   (eastingDOP
    :reader eastingDOP
    :initarg :eastingDOP
    :type cl:float
    :initform 0.0)
   (itow
    :reader itow
    :initarg :itow
    :type cl:float
    :initform 0.0)
   (position_accuracy
    :reader position_accuracy
    :initarg :position_accuracy
    :type cl:float
    :initform 0.0)
   (speed_accuracy
    :reader speed_accuracy
    :initarg :speed_accuracy
    :type cl:float
    :initform 0.0)
   (satellite_number
    :reader satellite_number
    :initarg :satellite_number
    :type cl:fixnum
    :initform 0)
   (gps_fix
    :reader gps_fix
    :initarg :gps_fix
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GpsInfo (<GpsInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GpsInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GpsInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mtig_driver-msg:<GpsInfo> is deprecated: use mtig_driver-msg:GpsInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GpsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mtig_driver-msg:header-val is deprecated.  Use mtig_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'geometricDOP-val :lambda-list '(m))
(cl:defmethod geometricDOP-val ((m <GpsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mtig_driver-msg:geometricDOP-val is deprecated.  Use mtig_driver-msg:geometricDOP instead.")
  (geometricDOP m))

(cl:ensure-generic-function 'positionDOP-val :lambda-list '(m))
(cl:defmethod positionDOP-val ((m <GpsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mtig_driver-msg:positionDOP-val is deprecated.  Use mtig_driver-msg:positionDOP instead.")
  (positionDOP m))

(cl:ensure-generic-function 'timeDOP-val :lambda-list '(m))
(cl:defmethod timeDOP-val ((m <GpsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mtig_driver-msg:timeDOP-val is deprecated.  Use mtig_driver-msg:timeDOP instead.")
  (timeDOP m))

(cl:ensure-generic-function 'verticalDOP-val :lambda-list '(m))
(cl:defmethod verticalDOP-val ((m <GpsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mtig_driver-msg:verticalDOP-val is deprecated.  Use mtig_driver-msg:verticalDOP instead.")
  (verticalDOP m))

(cl:ensure-generic-function 'horizontalDOP-val :lambda-list '(m))
(cl:defmethod horizontalDOP-val ((m <GpsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mtig_driver-msg:horizontalDOP-val is deprecated.  Use mtig_driver-msg:horizontalDOP instead.")
  (horizontalDOP m))

(cl:ensure-generic-function 'northingDOP-val :lambda-list '(m))
(cl:defmethod northingDOP-val ((m <GpsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mtig_driver-msg:northingDOP-val is deprecated.  Use mtig_driver-msg:northingDOP instead.")
  (northingDOP m))

(cl:ensure-generic-function 'eastingDOP-val :lambda-list '(m))
(cl:defmethod eastingDOP-val ((m <GpsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mtig_driver-msg:eastingDOP-val is deprecated.  Use mtig_driver-msg:eastingDOP instead.")
  (eastingDOP m))

(cl:ensure-generic-function 'itow-val :lambda-list '(m))
(cl:defmethod itow-val ((m <GpsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mtig_driver-msg:itow-val is deprecated.  Use mtig_driver-msg:itow instead.")
  (itow m))

(cl:ensure-generic-function 'position_accuracy-val :lambda-list '(m))
(cl:defmethod position_accuracy-val ((m <GpsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mtig_driver-msg:position_accuracy-val is deprecated.  Use mtig_driver-msg:position_accuracy instead.")
  (position_accuracy m))

(cl:ensure-generic-function 'speed_accuracy-val :lambda-list '(m))
(cl:defmethod speed_accuracy-val ((m <GpsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mtig_driver-msg:speed_accuracy-val is deprecated.  Use mtig_driver-msg:speed_accuracy instead.")
  (speed_accuracy m))

(cl:ensure-generic-function 'satellite_number-val :lambda-list '(m))
(cl:defmethod satellite_number-val ((m <GpsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mtig_driver-msg:satellite_number-val is deprecated.  Use mtig_driver-msg:satellite_number instead.")
  (satellite_number m))

(cl:ensure-generic-function 'gps_fix-val :lambda-list '(m))
(cl:defmethod gps_fix-val ((m <GpsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mtig_driver-msg:gps_fix-val is deprecated.  Use mtig_driver-msg:gps_fix instead.")
  (gps_fix m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GpsInfo>)))
    "Constants for message type '<GpsInfo>"
  '((:GPS_NO_FIX . 0)
    (:DEAD_RECKONING . 1)
    (:GPS_2D_FIX . 2)
    (:GPS_3D_FIX . 3)
    (:GPS_AND_DEAD_RECKONING . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GpsInfo)))
    "Constants for message type 'GpsInfo"
  '((:GPS_NO_FIX . 0)
    (:DEAD_RECKONING . 1)
    (:GPS_2D_FIX . 2)
    (:GPS_3D_FIX . 3)
    (:GPS_AND_DEAD_RECKONING . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GpsInfo>) ostream)
  "Serializes a message object of type '<GpsInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'geometricDOP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'positionDOP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timeDOP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'verticalDOP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'horizontalDOP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'northingDOP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'eastingDOP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'itow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position_accuracy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_accuracy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'satellite_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_fix)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GpsInfo>) istream)
  "Deserializes a message object of type '<GpsInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'geometricDOP) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'positionDOP) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeDOP) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'verticalDOP) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'horizontalDOP) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'northingDOP) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'eastingDOP) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'itow) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_accuracy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_accuracy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'satellite_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_fix)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GpsInfo>)))
  "Returns string type for a message object of type '<GpsInfo>"
  "mtig_driver/GpsInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpsInfo)))
  "Returns string type for a message object of type 'GpsInfo"
  "mtig_driver/GpsInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GpsInfo>)))
  "Returns md5sum for a message object of type '<GpsInfo>"
  "585846f714e5b60f71d9245253f7336a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GpsInfo)))
  "Returns md5sum for a message object of type 'GpsInfo"
  "585846f714e5b60f71d9245253f7336a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GpsInfo>)))
  "Returns full string definition for message of type '<GpsInfo>"
  (cl:format cl:nil "Header header~%~%#GPS DOP~%float64 geometricDOP~%float64 positionDOP~%float64 timeDOP~%float64 verticalDOP~%float64 horizontalDOP~%float64 northingDOP~%float64 eastingDOP~%float64 itow~%~%~%#Position Accuracy Estimate~%float64 position_accuracy~%float64 speed_accuracy~%~%#Number of satellites~%uint8 satellite_number~%~%uint8 GPS_NO_FIX = 0~%uint8 DEAD_RECKONING = 1~%uint8 GPS_2D_FIX = 2~%uint8 GPS_3D_FIX = 3~%uint8 GPS_AND_DEAD_RECKONING = 4~%~%uint8 gps_fix~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GpsInfo)))
  "Returns full string definition for message of type 'GpsInfo"
  (cl:format cl:nil "Header header~%~%#GPS DOP~%float64 geometricDOP~%float64 positionDOP~%float64 timeDOP~%float64 verticalDOP~%float64 horizontalDOP~%float64 northingDOP~%float64 eastingDOP~%float64 itow~%~%~%#Position Accuracy Estimate~%float64 position_accuracy~%float64 speed_accuracy~%~%#Number of satellites~%uint8 satellite_number~%~%uint8 GPS_NO_FIX = 0~%uint8 DEAD_RECKONING = 1~%uint8 GPS_2D_FIX = 2~%uint8 GPS_3D_FIX = 3~%uint8 GPS_AND_DEAD_RECKONING = 4~%~%uint8 gps_fix~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GpsInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GpsInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'GpsInfo
    (cl:cons ':header (header msg))
    (cl:cons ':geometricDOP (geometricDOP msg))
    (cl:cons ':positionDOP (positionDOP msg))
    (cl:cons ':timeDOP (timeDOP msg))
    (cl:cons ':verticalDOP (verticalDOP msg))
    (cl:cons ':horizontalDOP (horizontalDOP msg))
    (cl:cons ':northingDOP (northingDOP msg))
    (cl:cons ':eastingDOP (eastingDOP msg))
    (cl:cons ':itow (itow msg))
    (cl:cons ':position_accuracy (position_accuracy msg))
    (cl:cons ':speed_accuracy (speed_accuracy msg))
    (cl:cons ':satellite_number (satellite_number msg))
    (cl:cons ':gps_fix (gps_fix msg))
))
