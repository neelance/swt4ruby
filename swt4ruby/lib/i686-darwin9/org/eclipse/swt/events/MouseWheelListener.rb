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
  module MouseWheelListenerImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # Classes which implement this interface provide a method
  # that deals with the event that is generated as the mouse
  # wheel is scrolled.
  # <p>
  # After creating an instance of a class that implements
  # this interface it can be added to a control using the
  # <code>addMouseWheelListener</code> method and removed using
  # the <code>removeMouseWheelListener</code> method. When the
  # mouse wheel is scrolled the <code>mouseScrolled</code> method
  # will be invoked.
  # </p>
  # 
  # @see MouseEvent
  # 
  # @since 3.3
  module MouseWheelListener
    include_class_members MouseWheelListenerImports
    include SWTEventListener
    
    typesig { [MouseEvent] }
    # Sent when the mouse wheel is scrolled.
    # 
    # @param e an event containing information about the mouse wheel action
    def mouse_scrolled(e)
      raise NotImplementedError
    end
  end
  
end
