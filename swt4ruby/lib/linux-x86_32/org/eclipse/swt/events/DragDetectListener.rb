require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Events
  module DragDetectListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # Classes which implement this interface provide methods
  # that deal with the events that are generated when a drag
  # gesture is detected.
  # <p>
  # After creating an instance of a class that implements
  # this interface it can be added to a control using the
  # <code>addDragDetectListener</code> method and removed using
  # the <code>removeDragDetectListener</code> method. When the
  # drag is detected, the drageDetected method will be invoked.
  # </p>
  # 
  # @see DragDetectEvent
  # 
  # @since 3.3
  module DragDetectListener
    include_class_members DragDetectListenerImports
    include SWTEventListener
    
    typesig { [DragDetectEvent] }
    # Sent when a drag gesture is detected.
    # 
    # @param e an event containing information about the drag
    def drag_detected(e)
      raise NotImplementedError
    end
  end
  
end
