; Auto-generated. Do not edit!


(cl:in-package task2-msg)


;//! \htmlinclude Cylinder.msg.html

(cl:defclass <Cylinder> (roslisp-msg-protocol:ros-message)
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
   (conviction
    :reader conviction
    :initarg :conviction
    :type cl:integer
    :initform 0)
   (color
    :reader color
    :initarg :color
    :type cl:string
    :initform ""))
)

(cl:defclass Cylinder (<Cylinder>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cylinder>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cylinder)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task2-msg:<Cylinder> is deprecated: use task2-msg:Cylinder instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Cylinder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task2-msg:x-val is deprecated.  Use task2-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Cylinder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task2-msg:y-val is deprecated.  Use task2-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'conviction-val :lambda-list '(m))
(cl:defmethod conviction-val ((m <Cylinder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task2-msg:conviction-val is deprecated.  Use task2-msg:conviction instead.")
  (conviction m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <Cylinder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task2-msg:color-val is deprecated.  Use task2-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cylinder>) ostream)
  "Serializes a message object of type '<Cylinder>"
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
  (cl:let* ((signed (cl:slot-value msg 'conviction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cylinder>) istream)
  "Deserializes a message object of type '<Cylinder>"
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'conviction) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cylinder>)))
  "Returns string type for a message object of type '<Cylinder>"
  "task2/Cylinder")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cylinder)))
  "Returns string type for a message object of type 'Cylinder"
  "task2/Cylinder")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cylinder>)))
  "Returns md5sum for a message object of type '<Cylinder>"
  "9d18a8ec331643f94d312ff43ad1e5e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cylinder)))
  "Returns md5sum for a message object of type 'Cylinder"
  "9d18a8ec331643f94d312ff43ad1e5e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cylinder>)))
  "Returns full string definition for message of type '<Cylinder>"
  (cl:format cl:nil "float64 x~%float64 y~%int32 conviction~%string color~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cylinder)))
  "Returns full string definition for message of type 'Cylinder"
  (cl:format cl:nil "float64 x~%float64 y~%int32 conviction~%string color~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cylinder>))
  (cl:+ 0
     8
     8
     4
     4 (cl:length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cylinder>))
  "Converts a ROS message object to a list"
  (cl:list 'Cylinder
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':conviction (conviction msg))
    (cl:cons ':color (color msg))
))
