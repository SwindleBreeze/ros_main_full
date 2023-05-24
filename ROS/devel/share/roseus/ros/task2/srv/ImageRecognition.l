;; Auto-generated. Do not edit!


(when (boundp 'task2::ImageRecognition)
  (if (not (find-package "TASK2"))
    (make-package "TASK2"))
  (shadow 'ImageRecognition (find-package "TASK2")))
(unless (find-package "TASK2::IMAGERECOGNITION")
  (make-package "TASK2::IMAGERECOGNITION"))
(unless (find-package "TASK2::IMAGERECOGNITIONREQUEST")
  (make-package "TASK2::IMAGERECOGNITIONREQUEST"))
(unless (find-package "TASK2::IMAGERECOGNITIONRESPONSE")
  (make-package "TASK2::IMAGERECOGNITIONRESPONSE"))

(in-package "ROS")





(defclass task2::ImageRecognitionRequest
  :super ros::object
  :slots (_request ))

(defmethod task2::ImageRecognitionRequest
  (:init
   (&key
    ((:request __request) nil)
    )
   (send-super :init)
   (setq _request __request)
   self)
  (:request
   (&optional (__request :null))
   (if (not (eq __request :null)) (setq _request __request)) _request)
  (:serialization-length
   ()
   (+
    ;; bool _request
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _request
       (if _request (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _request
     (setq _request (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass task2::ImageRecognitionResponse
  :super ros::object
  :slots (_wonted _prize _color ))

(defmethod task2::ImageRecognitionResponse
  (:init
   (&key
    ((:wonted __wonted) nil)
    ((:prize __prize) 0)
    ((:color __color) "")
    )
   (send-super :init)
   (setq _wonted __wonted)
   (setq _prize (round __prize))
   (setq _color (string __color))
   self)
  (:wonted
   (&optional (__wonted :null))
   (if (not (eq __wonted :null)) (setq _wonted __wonted)) _wonted)
  (:prize
   (&optional __prize)
   (if __prize (setq _prize __prize)) _prize)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:serialization-length
   ()
   (+
    ;; bool _wonted
    1
    ;; int32 _prize
    4
    ;; string _color
    4 (length _color)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _wonted
       (if _wonted (write-byte -1 s) (write-byte 0 s))
     ;; int32 _prize
       (write-long _prize s)
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _wonted
     (setq _wonted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _prize
     (setq _prize (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass task2::ImageRecognition
  :super ros::object
  :slots ())

(setf (get task2::ImageRecognition :md5sum-) "650cece1c17a57944253f7b077548754")
(setf (get task2::ImageRecognition :datatype-) "task2/ImageRecognition")
(setf (get task2::ImageRecognition :request) task2::ImageRecognitionRequest)
(setf (get task2::ImageRecognition :response) task2::ImageRecognitionResponse)

(defmethod task2::ImageRecognitionRequest
  (:response () (instance task2::ImageRecognitionResponse :init)))

(setf (get task2::ImageRecognitionRequest :md5sum-) "650cece1c17a57944253f7b077548754")
(setf (get task2::ImageRecognitionRequest :datatype-) "task2/ImageRecognitionRequest")
(setf (get task2::ImageRecognitionRequest :definition-)
      "bool request
---
bool wonted
int32 prize
string color
")

(setf (get task2::ImageRecognitionResponse :md5sum-) "650cece1c17a57944253f7b077548754")
(setf (get task2::ImageRecognitionResponse :datatype-) "task2/ImageRecognitionResponse")
(setf (get task2::ImageRecognitionResponse :definition-)
      "bool request
---
bool wonted
int32 prize
string color
")



(provide :task2/ImageRecognition "650cece1c17a57944253f7b077548754")


