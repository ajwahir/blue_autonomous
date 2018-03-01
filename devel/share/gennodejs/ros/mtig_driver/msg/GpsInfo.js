// Auto-generated. Do not edit!

// (in-package mtig_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GpsInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.geometricDOP = null;
      this.positionDOP = null;
      this.timeDOP = null;
      this.verticalDOP = null;
      this.horizontalDOP = null;
      this.northingDOP = null;
      this.eastingDOP = null;
      this.itow = null;
      this.position_accuracy = null;
      this.speed_accuracy = null;
      this.satellite_number = null;
      this.gps_fix = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('geometricDOP')) {
        this.geometricDOP = initObj.geometricDOP
      }
      else {
        this.geometricDOP = 0.0;
      }
      if (initObj.hasOwnProperty('positionDOP')) {
        this.positionDOP = initObj.positionDOP
      }
      else {
        this.positionDOP = 0.0;
      }
      if (initObj.hasOwnProperty('timeDOP')) {
        this.timeDOP = initObj.timeDOP
      }
      else {
        this.timeDOP = 0.0;
      }
      if (initObj.hasOwnProperty('verticalDOP')) {
        this.verticalDOP = initObj.verticalDOP
      }
      else {
        this.verticalDOP = 0.0;
      }
      if (initObj.hasOwnProperty('horizontalDOP')) {
        this.horizontalDOP = initObj.horizontalDOP
      }
      else {
        this.horizontalDOP = 0.0;
      }
      if (initObj.hasOwnProperty('northingDOP')) {
        this.northingDOP = initObj.northingDOP
      }
      else {
        this.northingDOP = 0.0;
      }
      if (initObj.hasOwnProperty('eastingDOP')) {
        this.eastingDOP = initObj.eastingDOP
      }
      else {
        this.eastingDOP = 0.0;
      }
      if (initObj.hasOwnProperty('itow')) {
        this.itow = initObj.itow
      }
      else {
        this.itow = 0.0;
      }
      if (initObj.hasOwnProperty('position_accuracy')) {
        this.position_accuracy = initObj.position_accuracy
      }
      else {
        this.position_accuracy = 0.0;
      }
      if (initObj.hasOwnProperty('speed_accuracy')) {
        this.speed_accuracy = initObj.speed_accuracy
      }
      else {
        this.speed_accuracy = 0.0;
      }
      if (initObj.hasOwnProperty('satellite_number')) {
        this.satellite_number = initObj.satellite_number
      }
      else {
        this.satellite_number = 0;
      }
      if (initObj.hasOwnProperty('gps_fix')) {
        this.gps_fix = initObj.gps_fix
      }
      else {
        this.gps_fix = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GpsInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [geometricDOP]
    bufferOffset = _serializer.float64(obj.geometricDOP, buffer, bufferOffset);
    // Serialize message field [positionDOP]
    bufferOffset = _serializer.float64(obj.positionDOP, buffer, bufferOffset);
    // Serialize message field [timeDOP]
    bufferOffset = _serializer.float64(obj.timeDOP, buffer, bufferOffset);
    // Serialize message field [verticalDOP]
    bufferOffset = _serializer.float64(obj.verticalDOP, buffer, bufferOffset);
    // Serialize message field [horizontalDOP]
    bufferOffset = _serializer.float64(obj.horizontalDOP, buffer, bufferOffset);
    // Serialize message field [northingDOP]
    bufferOffset = _serializer.float64(obj.northingDOP, buffer, bufferOffset);
    // Serialize message field [eastingDOP]
    bufferOffset = _serializer.float64(obj.eastingDOP, buffer, bufferOffset);
    // Serialize message field [itow]
    bufferOffset = _serializer.float64(obj.itow, buffer, bufferOffset);
    // Serialize message field [position_accuracy]
    bufferOffset = _serializer.float64(obj.position_accuracy, buffer, bufferOffset);
    // Serialize message field [speed_accuracy]
    bufferOffset = _serializer.float64(obj.speed_accuracy, buffer, bufferOffset);
    // Serialize message field [satellite_number]
    bufferOffset = _serializer.uint8(obj.satellite_number, buffer, bufferOffset);
    // Serialize message field [gps_fix]
    bufferOffset = _serializer.uint8(obj.gps_fix, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GpsInfo
    let len;
    let data = new GpsInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [geometricDOP]
    data.geometricDOP = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [positionDOP]
    data.positionDOP = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timeDOP]
    data.timeDOP = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [verticalDOP]
    data.verticalDOP = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [horizontalDOP]
    data.horizontalDOP = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [northingDOP]
    data.northingDOP = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [eastingDOP]
    data.eastingDOP = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [itow]
    data.itow = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_accuracy]
    data.position_accuracy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_accuracy]
    data.speed_accuracy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [satellite_number]
    data.satellite_number = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gps_fix]
    data.gps_fix = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 82;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mtig_driver/GpsInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '585846f714e5b60f71d9245253f7336a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GpsInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.geometricDOP !== undefined) {
      resolved.geometricDOP = msg.geometricDOP;
    }
    else {
      resolved.geometricDOP = 0.0
    }

    if (msg.positionDOP !== undefined) {
      resolved.positionDOP = msg.positionDOP;
    }
    else {
      resolved.positionDOP = 0.0
    }

    if (msg.timeDOP !== undefined) {
      resolved.timeDOP = msg.timeDOP;
    }
    else {
      resolved.timeDOP = 0.0
    }

    if (msg.verticalDOP !== undefined) {
      resolved.verticalDOP = msg.verticalDOP;
    }
    else {
      resolved.verticalDOP = 0.0
    }

    if (msg.horizontalDOP !== undefined) {
      resolved.horizontalDOP = msg.horizontalDOP;
    }
    else {
      resolved.horizontalDOP = 0.0
    }

    if (msg.northingDOP !== undefined) {
      resolved.northingDOP = msg.northingDOP;
    }
    else {
      resolved.northingDOP = 0.0
    }

    if (msg.eastingDOP !== undefined) {
      resolved.eastingDOP = msg.eastingDOP;
    }
    else {
      resolved.eastingDOP = 0.0
    }

    if (msg.itow !== undefined) {
      resolved.itow = msg.itow;
    }
    else {
      resolved.itow = 0.0
    }

    if (msg.position_accuracy !== undefined) {
      resolved.position_accuracy = msg.position_accuracy;
    }
    else {
      resolved.position_accuracy = 0.0
    }

    if (msg.speed_accuracy !== undefined) {
      resolved.speed_accuracy = msg.speed_accuracy;
    }
    else {
      resolved.speed_accuracy = 0.0
    }

    if (msg.satellite_number !== undefined) {
      resolved.satellite_number = msg.satellite_number;
    }
    else {
      resolved.satellite_number = 0
    }

    if (msg.gps_fix !== undefined) {
      resolved.gps_fix = msg.gps_fix;
    }
    else {
      resolved.gps_fix = 0
    }

    return resolved;
    }
};

// Constants for message
GpsInfo.Constants = {
  GPS_NO_FIX: 0,
  DEAD_RECKONING: 1,
  GPS_2D_FIX: 2,
  GPS_3D_FIX: 3,
  GPS_AND_DEAD_RECKONING: 4,
}

module.exports = GpsInfo;
