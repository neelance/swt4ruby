require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Events
  module MouseMoveListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # Classes which implement this interface provide a method
  # that deals with the events that are generated as the mouse
  # pointer moves.
  # <p>
  # After creating an instance of a class that implements
  # this interface it can be added to a control using the
  # <code>addMouseMoveListener</code> method and removed using
  # the <code>removeMouseMoveListener</code> method. As the
  # mouse moves, the mouseMove method will be invoked.
  # </p>
  # 
  # @see MouseEvent
  module MouseMoveListener
    include_class_members MouseMoveListenerImports
    include SWTEventListener
    
    typesig { [MouseEvent] }
    # Sent when the mouse moves.
    # 
    # @param e an event containing information about the mouse move
    def mouse_move(e)
      raise NotImplementedError
    end
  end
  
end
