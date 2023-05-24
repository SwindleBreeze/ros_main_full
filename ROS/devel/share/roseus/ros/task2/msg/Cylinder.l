;; Auto-generated. Do not edit!


(when (boundp 'task2::Cylinder)
  (if (not (find-package "TASK2"))
    (make-package "TASK2"))
  (shadow 'Cylinder (find-package "TASK2")))
(unless (find-package "TASK2::CYLINDER")
  (make-package "TASK2::CYLINDER"))

(in-package "ROS")
;;//! \htmlinclude Cylinder.msg.html


(defclass task2::Cylinder
  :super ros::object
  :slots (_x _y _conviction _color ))

(defmethod task2::Cylinder
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:conviction __conviction) 0)
    ((:color __color) "")
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _conviction (round __conviction))
   (setq _color (string __color))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:conviction
   (&optional __conviction)
   (if __conviction (setq _conviction __conviction)) _conviction)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; int32 _conviction
    4
    ;; string _color
    4 (length _color)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _conviction
       (write-long _conviction s)
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _conviction
     (setq _conviction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get task2::Cylinder :md5sum-) "9d18a8ec331643f94d312ff43ad1e5e4")
(setf (get task2::Cylinder :datatype-) "task2/Cylinder")
(setf (get task2::Cylinder :definition-)
      "float64 x
float64 y
int32 conviction
string color
")



(provide :task2/Cylinder "9d18a8ec331643f94d312ff43ad1e5e4")


