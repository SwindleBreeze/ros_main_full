; Auto-generated. Do not edit!


(cl:in-package task2-srv)


;//! \htmlinclude ImageRecognition-request.msg.html

(cl:defclass <ImageRecognition-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ImageRecognition-request (<ImageRecognition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageRecognition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageRecognition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task2-srv:<ImageRecognition-request> is deprecated: use task2-srv:ImageRecognition-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <ImageRecognition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task2-srv:request-val is deprecated.  Use task2-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageRecognition-request>) ostream)
  "Serializes a message object of type '<ImageRecognition-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'request) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageRecognition-request>) istream)
  "Deserializes a message object of type '<ImageRecognition-request>"
    (cl:setf (cl:slot-value msg 'request) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageRecognition-request>)))
  "Returns string type for a service object of type '<ImageRecognition-request>"
  "task2/ImageRecognitionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageRecognition-request)))
  "Returns string type for a service object of type 'ImageRecognition-request"
  "task2/ImageRecognitionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageRecognition-request>)))
  "Returns md5sum for a message object of type '<ImageRecognition-request>"
  "650cece1c17a57944253f7b077548754")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageRecognition-request)))
  "Returns md5sum for a message object of type 'ImageRecognition-request"
  "650cece1c17a57944253f7b077548754")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageRecognition-request>)))
  "Returns full string definition for message of type '<ImageRecognition-request>"
  (cl:format cl:nil "bool request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageRecognition-request)))
  "Returns full string definition for message of type 'ImageRecognition-request"
  (cl:format cl:nil "bool request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageRecognition-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageRecognition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageRecognition-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude ImageRecognition-response.msg.html

(cl:defclass <ImageRecognition-response> (roslisp-msg-protocol:ros-message)
  ((wonted
    :reader wonted
    :initarg :wonted
    :type cl:boolean
    :initform cl:nil)
   (prize
    :reader prize
    :initarg :prize
    :type cl:integer
    :initform 0)
   (color
    :reader color
    :initarg :color
    :type cl:string
    :initform ""))
)

(cl:defclass ImageRecognition-response (<ImageRecognition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageRecognition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageRecognition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task2-srv:<ImageRecognition-response> is deprecated: use task2-srv:ImageRecognition-response instead.")))

(cl:ensure-generic-function 'wonted-val :lambda-list '(m))
(cl:defmethod wonted-val ((m <ImageRecognition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task2-srv:wonted-val is deprecated.  Use task2-srv:wonted instead.")
  (wonted m))

(cl:ensure-generic-function 'prize-val :lambda-list '(m))
(cl:defmethod prize-val ((m <ImageRecognition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task2-srv:prize-val is deprecated.  Use task2-srv:prize instead.")
  (prize m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <ImageRecognition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task2-srv:color-val is deprecated.  Use task2-srv:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageRecognition-response>) ostream)
  "Serializes a message object of type '<ImageRecognition-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wonted) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'prize)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageRecognition-response>) istream)
  "Deserializes a message object of type '<ImageRecognition-response>"
    (cl:setf (cl:slot-value msg 'wonted) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'prize) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageRecognition-response>)))
  "Returns string type for a service object of type '<ImageRecognition-response>"
  "task2/ImageRecognitionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageRecognition-response)))
  "Returns string type for a service object of type 'ImageRecognition-response"
  "task2/ImageRecognitionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageRecognition-response>)))
  "Returns md5sum for a message object of type '<ImageRecognition-response>"
  "650cece1c17a57944253f7b077548754")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageRecognition-response)))
  "Returns md5sum for a message object of type 'ImageRecognition-response"
  "650cece1c17a57944253f7b077548754")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageRecognition-response>)))
  "Returns full string definition for message of type '<ImageRecognition-response>"
  (cl:format cl:nil "bool wonted~%int32 prize~%string color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageRecognition-response)))
  "Returns full string definition for message of type 'ImageRecognition-response"
  (cl:format cl:nil "bool wonted~%int32 prize~%string color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageRecognition-response>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageRecognition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageRecognition-response
    (cl:cons ':wonted (wonted msg))
    (cl:cons ':prize (prize msg))
    (cl:cons ':color (color msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ImageRecognition)))
  'ImageRecognition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ImageRecognition)))
  'ImageRecognition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageRecognition)))
  "Returns string type for a service object of type '<ImageRecognition>"
  "task2/ImageRecognition")