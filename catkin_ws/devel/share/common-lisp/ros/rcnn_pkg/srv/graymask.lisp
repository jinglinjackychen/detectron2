; Auto-generated. Do not edit!


(cl:in-package rcnn_pkg-srv)


;//! \htmlinclude graymask-request.msg.html

(cl:defclass <graymask-request> (roslisp-msg-protocol:ros-message)
  ((obj_id
    :reader obj_id
    :initarg :obj_id
    :type cl:string
    :initform ""))
)

(cl:defclass graymask-request (<graymask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <graymask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'graymask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rcnn_pkg-srv:<graymask-request> is deprecated: use rcnn_pkg-srv:graymask-request instead.")))

(cl:ensure-generic-function 'obj_id-val :lambda-list '(m))
(cl:defmethod obj_id-val ((m <graymask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcnn_pkg-srv:obj_id-val is deprecated.  Use rcnn_pkg-srv:obj_id instead.")
  (obj_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <graymask-request>) ostream)
  "Serializes a message object of type '<graymask-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'obj_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'obj_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <graymask-request>) istream)
  "Deserializes a message object of type '<graymask-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obj_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'obj_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<graymask-request>)))
  "Returns string type for a service object of type '<graymask-request>"
  "rcnn_pkg/graymaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'graymask-request)))
  "Returns string type for a service object of type 'graymask-request"
  "rcnn_pkg/graymaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<graymask-request>)))
  "Returns md5sum for a message object of type '<graymask-request>"
  "d5d593fffd3f0c2cae51095bbf8f752b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'graymask-request)))
  "Returns md5sum for a message object of type 'graymask-request"
  "d5d593fffd3f0c2cae51095bbf8f752b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<graymask-request>)))
  "Returns full string definition for message of type '<graymask-request>"
  (cl:format cl:nil "string obj_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'graymask-request)))
  "Returns full string definition for message of type 'graymask-request"
  (cl:format cl:nil "string obj_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <graymask-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'obj_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <graymask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'graymask-request
    (cl:cons ':obj_id (obj_id msg))
))
;//! \htmlinclude graymask-response.msg.html

(cl:defclass <graymask-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass graymask-response (<graymask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <graymask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'graymask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rcnn_pkg-srv:<graymask-response> is deprecated: use rcnn_pkg-srv:graymask-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <graymask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcnn_pkg-srv:result-val is deprecated.  Use rcnn_pkg-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <graymask-response>) ostream)
  "Serializes a message object of type '<graymask-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <graymask-response>) istream)
  "Deserializes a message object of type '<graymask-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<graymask-response>)))
  "Returns string type for a service object of type '<graymask-response>"
  "rcnn_pkg/graymaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'graymask-response)))
  "Returns string type for a service object of type 'graymask-response"
  "rcnn_pkg/graymaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<graymask-response>)))
  "Returns md5sum for a message object of type '<graymask-response>"
  "d5d593fffd3f0c2cae51095bbf8f752b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'graymask-response)))
  "Returns md5sum for a message object of type 'graymask-response"
  "d5d593fffd3f0c2cae51095bbf8f752b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<graymask-response>)))
  "Returns full string definition for message of type '<graymask-response>"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'graymask-response)))
  "Returns full string definition for message of type 'graymask-response"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <graymask-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <graymask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'graymask-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'graymask)))
  'graymask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'graymask)))
  'graymask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'graymask)))
  "Returns string type for a service object of type '<graymask>"
  "rcnn_pkg/graymask")