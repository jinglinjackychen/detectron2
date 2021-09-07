;; Auto-generated. Do not edit!


(when (boundp 'rcnn_pkg::graymask)
  (if (not (find-package "RCNN_PKG"))
    (make-package "RCNN_PKG"))
  (shadow 'graymask (find-package "RCNN_PKG")))
(unless (find-package "RCNN_PKG::GRAYMASK")
  (make-package "RCNN_PKG::GRAYMASK"))
(unless (find-package "RCNN_PKG::GRAYMASKREQUEST")
  (make-package "RCNN_PKG::GRAYMASKREQUEST"))
(unless (find-package "RCNN_PKG::GRAYMASKRESPONSE")
  (make-package "RCNN_PKG::GRAYMASKRESPONSE"))

(in-package "ROS")





(defclass rcnn_pkg::graymaskRequest
  :super ros::object
  :slots (_obj_id ))

(defmethod rcnn_pkg::graymaskRequest
  (:init
   (&key
    ((:obj_id __obj_id) "")
    )
   (send-super :init)
   (setq _obj_id (string __obj_id))
   self)
  (:obj_id
   (&optional __obj_id)
   (if __obj_id (setq _obj_id __obj_id)) _obj_id)
  (:serialization-length
   ()
   (+
    ;; string _obj_id
    4 (length _obj_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _obj_id
       (write-long (length _obj_id) s) (princ _obj_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _obj_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _obj_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rcnn_pkg::graymaskResponse
  :super ros::object
  :slots (_result ))

(defmethod rcnn_pkg::graymaskResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rcnn_pkg::graymask
  :super ros::object
  :slots ())

(setf (get rcnn_pkg::graymask :md5sum-) "d5d593fffd3f0c2cae51095bbf8f752b")
(setf (get rcnn_pkg::graymask :datatype-) "rcnn_pkg/graymask")
(setf (get rcnn_pkg::graymask :request) rcnn_pkg::graymaskRequest)
(setf (get rcnn_pkg::graymask :response) rcnn_pkg::graymaskResponse)

(defmethod rcnn_pkg::graymaskRequest
  (:response () (instance rcnn_pkg::graymaskResponse :init)))

(setf (get rcnn_pkg::graymaskRequest :md5sum-) "d5d593fffd3f0c2cae51095bbf8f752b")
(setf (get rcnn_pkg::graymaskRequest :datatype-) "rcnn_pkg/graymaskRequest")
(setf (get rcnn_pkg::graymaskRequest :definition-)
      "string obj_id
---
string result
")

(setf (get rcnn_pkg::graymaskResponse :md5sum-) "d5d593fffd3f0c2cae51095bbf8f752b")
(setf (get rcnn_pkg::graymaskResponse :datatype-) "rcnn_pkg/graymaskResponse")
(setf (get rcnn_pkg::graymaskResponse :definition-)
      "string obj_id
---
string result
")



(provide :rcnn_pkg/graymask "d5d593fffd3f0c2cae51095bbf8f752b")


