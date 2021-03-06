; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude FollowJointTrajectoryResult.msg.html

(cl:defclass <FollowJointTrajectoryResult> (roslisp-msg-protocol:ros-message)
  ((error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0))
)

(cl:defclass FollowJointTrajectoryResult (<FollowJointTrajectoryResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowJointTrajectoryResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowJointTrajectoryResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<FollowJointTrajectoryResult> is deprecated: use control_msgs-msg:FollowJointTrajectoryResult instead.")))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <FollowJointTrajectoryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:error_code-val is deprecated.  Use control_msgs-msg:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FollowJointTrajectoryResult>)))
    "Constants for message type '<FollowJointTrajectoryResult>"
  '((:SUCCESSFUL . 0)
    (:INVALID_GOAL . -1)
    (:INVALID_JOINTS . -2)
    (:OLD_HEADER_TIMESTAMP . -3)
    (:PATH_TOLERANCE_VIOLATED . -4)
    (:GOAL_TOLERANCE_VIOLATED . -5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FollowJointTrajectoryResult)))
    "Constants for message type 'FollowJointTrajectoryResult"
  '((:SUCCESSFUL . 0)
    (:INVALID_GOAL . -1)
    (:INVALID_JOINTS . -2)
    (:OLD_HEADER_TIMESTAMP . -3)
    (:PATH_TOLERANCE_VIOLATED . -4)
    (:GOAL_TOLERANCE_VIOLATED . -5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowJointTrajectoryResult>) ostream)
  "Serializes a message object of type '<FollowJointTrajectoryResult>"
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowJointTrajectoryResult>) istream)
  "Deserializes a message object of type '<FollowJointTrajectoryResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowJointTrajectoryResult>)))
  "Returns string type for a message object of type '<FollowJointTrajectoryResult>"
  "control_msgs/FollowJointTrajectoryResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowJointTrajectoryResult)))
  "Returns string type for a message object of type 'FollowJointTrajectoryResult"
  "control_msgs/FollowJointTrajectoryResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowJointTrajectoryResult>)))
  "Returns md5sum for a message object of type '<FollowJointTrajectoryResult>"
  "6243274b5d629dc838814109754410d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowJointTrajectoryResult)))
  "Returns md5sum for a message object of type 'FollowJointTrajectoryResult"
  "6243274b5d629dc838814109754410d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowJointTrajectoryResult>)))
  "Returns full string definition for message of type '<FollowJointTrajectoryResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 error_code~%int32 SUCCESSFUL = 0~%int32 INVALID_GOAL = -1~%int32 INVALID_JOINTS = -2~%int32 OLD_HEADER_TIMESTAMP = -3~%int32 PATH_TOLERANCE_VIOLATED = -4~%int32 GOAL_TOLERANCE_VIOLATED = -5~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowJointTrajectoryResult)))
  "Returns full string definition for message of type 'FollowJointTrajectoryResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 error_code~%int32 SUCCESSFUL = 0~%int32 INVALID_GOAL = -1~%int32 INVALID_JOINTS = -2~%int32 OLD_HEADER_TIMESTAMP = -3~%int32 PATH_TOLERANCE_VIOLATED = -4~%int32 GOAL_TOLERANCE_VIOLATED = -5~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowJointTrajectoryResult>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowJointTrajectoryResult>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowJointTrajectoryResult
    (cl:cons ':error_code (error_code msg))
))
