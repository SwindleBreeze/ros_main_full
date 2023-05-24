; Auto-generated. Do not edit!


(cl:in-package task2-msg)


;//! \htmlinclude Ring.msg.html

(cl:defclass <Ring> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (color
    :reader color
    :initarg :color
    :type cl:string
    :initform ""))
)

(cl:defclass Ring (<Ring>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ring>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ring)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task2-msg:<Ring> is deprecated: use task2-msg:Ring instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Ring>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task2-msg:x-val is deprecated.  Use task2-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Ring>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task2-msg:y-val is deprecated.  Use task2-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Ring>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task2-msg:z-val is deprecated.  Use task2-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <Ring>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task2-msg:color-val is deprecated.  Use task2-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ring>) ostream)
  "Serializes a message object of type '<Ring>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ring>) istream)
  "Deserializes a message object of type '<Ring>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ring>)))
  "Returns string type for a message object of type '<Ring>"
  "task2/Ring")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ring)))
  "Returns string type for a message object of type 'Ring"
  "task2/Ring")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ring>)))
  "Returns md5sum for a message object of type '<Ring>"
  "edbf2a91471737255f89bab92ee5995f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ring)))
  "Returns md5sum for a message object of type 'Ring"
  "edbf2a91471737255f89bab92ee5995f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ring>)))
  "Returns full string definition for message of type '<Ring>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 z~%string color~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ring)))
  "Returns full string definition for message of type 'Ring"
  (cl:format cl:nil "float64 x~%float64 y~%float64 z~%string color~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ring>))
  (cl:+ 0
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ring>))
  "Converts a ROS message object to a list"
  (cl:list 'Ring
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':color (color msg))
))
