// Auto-generated. Do not edit!

// (in-package task2.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ImageRecognitionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request = null;
    }
    else {
      if (initObj.hasOwnProperty('request')) {
        this.request = initObj.request
      }
      else {
        this.request = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageRecognitionRequest
    // Serialize message field [request]
    bufferOffset = _serializer.bool(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageRecognitionRequest
    let len;
    let data = new ImageRecognitionRequest(null);
    // Deserialize message field [request]
    data.request = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'task2/ImageRecognitionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f7e5ad6ab0ddf42c5727a195315a470';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool request
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImageRecognitionRequest(null);
    if (msg.request !== undefined) {
      resolved.request = msg.request;
    }
    else {
      resolved.request = false
    }

    return resolved;
    }
};

class ImageRecognitionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wonted = null;
      this.prize = null;
      this.color = null;
    }
    else {
      if (initObj.hasOwnProperty('wonted')) {
        this.wonted = initObj.wonted
      }
      else {
        this.wonted = false;
      }
      if (initObj.hasOwnProperty('prize')) {
        this.prize = initObj.prize
      }
      else {
        this.prize = 0;
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageRecognitionResponse
    // Serialize message field [wonted]
    bufferOffset = _serializer.bool(obj.wonted, buffer, bufferOffset);
    // Serialize message field [prize]
    bufferOffset = _serializer.int32(obj.prize, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = _serializer.string(obj.color, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageRecognitionResponse
    let len;
    let data = new ImageRecognitionResponse(null);
    // Deserialize message field [wonted]
    data.wonted = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [prize]
    data.prize = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.color);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'task2/ImageRecognitionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b4891469b4908a9aedcfa9c179e8f57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool wonted
    int32 prize
    string color
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImageRecognitionResponse(null);
    if (msg.wonted !== undefined) {
      resolved.wonted = msg.wonted;
    }
    else {
      resolved.wonted = false
    }

    if (msg.prize !== undefined) {
      resolved.prize = msg.prize;
    }
    else {
      resolved.prize = 0
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ImageRecognitionRequest,
  Response: ImageRecognitionResponse,
  md5sum() { return '650cece1c17a57944253f7b077548754'; },
  datatype() { return 'task2/ImageRecognition'; }
};
