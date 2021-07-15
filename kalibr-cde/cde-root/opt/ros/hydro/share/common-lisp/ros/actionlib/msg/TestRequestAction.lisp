; Auto-generated. Do not edit!


(cl:in-package actionlib-msg)


;//! \htmlinclude TestRequestAction.msg.html

(cl:defclass <TestRequestAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type actionlib-msg:TestRequestActionGoal
    :initform (cl:make-instance 'actionlib-msg:TestRequestActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type actionlib-msg:TestRequestActionResult
    :initform (cl:make-instance 'actionlib-msg:TestRequestActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type actionlib-msg:TestRequestActionFeedback
    :initform (cl:make-instance 'actionlib-msg:TestRequestActionFeedback)))
)

(cl:defclass TestRequestAction (<TestRequestAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestRequestAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestRequestAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib-msg:<TestRequestAction> is deprecated: use actionlib-msg:TestRequestAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <TestRequestAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib-msg:action_goal-val is deprecated.  Use actionlib-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <TestRequestAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib-msg:action_result-val is deprecated.  Use actionlib-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <TestRequestAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib-msg:action_feedback-val is deprecated.  Use actionlib-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestRequestAction>) ostream)
  "Serializes a message object of type '<TestRequestAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestRequestAction>) istream)
  "Deserializes a message object of type '<TestRequestAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestRequestAction>)))
  "Returns string type for a message object of type '<TestRequestAction>"
  "actionlib/TestRequestAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestRequestAction)))
  "Returns string type for a message object of type 'TestRequestAction"
  "actionlib/TestRequestAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestRequestAction>)))
  "Returns md5sum for a message object of type '<TestRequestAction>"
  "dc44b1f4045dbf0d1db54423b3b86b30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestRequestAction)))
  "Returns md5sum for a message object of type 'TestRequestAction"
  "dc44b1f4045dbf0d1db54423b3b86b30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestRequestAction>)))
  "Returns full string definition for message of type '<TestRequestAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%TestRequestActionGoal action_goal~%TestRequestActionResult action_result~%TestRequestActionFeedback action_feedback~%~%================================================================================~%MSG: actionlib/TestRequestActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%TestRequestGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: actionlib/TestRequestGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 TERMINATE_SUCCESS = 0~%int32 TERMINATE_ABORTED = 1~%int32 TERMINATE_REJECTED = 2~%int32 TERMINATE_LOSE = 3~%int32 TERMINATE_DROP = 4~%int32 TERMINATE_EXCEPTION = 5~%int32 terminate_status~%bool ignore_cancel  # If true, ignores requests to cancel~%string result_text~%int32 the_result    # Desired value for the_result in the Result~%bool is_simple_client~%duration delay_accept  # Delays accepting the goal by this amount of time~%duration delay_terminate  # Delays terminating for this amount of time~%duration pause_status  # Pauses the status messages for this amount of time~%~%================================================================================~%MSG: actionlib/TestRequestActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%TestRequestResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib/TestRequestResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 the_result~%bool is_simple_server~%~%================================================================================~%MSG: actionlib/TestRequestActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%TestRequestFeedback feedback~%~%================================================================================~%MSG: actionlib/TestRequestFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestRequestAction)))
  "Returns full string definition for message of type 'TestRequestAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%TestRequestActionGoal action_goal~%TestRequestActionResult action_result~%TestRequestActionFeedback action_feedback~%~%================================================================================~%MSG: actionlib/TestRequestActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%TestRequestGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: actionlib/TestRequestGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 TERMINATE_SUCCESS = 0~%int32 TERMINATE_ABORTED = 1~%int32 TERMINATE_REJECTED = 2~%int32 TERMINATE_LOSE = 3~%int32 TERMINATE_DROP = 4~%int32 TERMINATE_EXCEPTION = 5~%int32 terminate_status~%bool ignore_cancel  # If true, ignores requests to cancel~%string result_text~%int32 the_result    # Desired value for the_result in the Result~%bool is_simple_client~%duration delay_accept  # Delays accepting the goal by this amount of time~%duration delay_terminate  # Delays terminating for this amount of time~%duration pause_status  # Pauses the status messages for this amount of time~%~%================================================================================~%MSG: actionlib/TestRequestActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%TestRequestResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib/TestRequestResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 the_result~%bool is_simple_server~%~%================================================================================~%MSG: actionlib/TestRequestActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%TestRequestFeedback feedback~%~%================================================================================~%MSG: actionlib/TestRequestFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestRequestAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestRequestAction>))
  "Converts a ROS message object to a list"
  (cl:list 'TestRequestAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
