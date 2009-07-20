require "rjava"

# Copyright (c) 2000, 2004 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Events
  module MouseListenerImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # Classes which implement this interface provide methods
  # that deal with the events that are generated as mouse buttons
  # are pressed.
  # <p>
  # After creating an instance of a class that implements
  # this interface it can be added to a control using the
  # <code>addMouseListener</code> method and removed using
  # the <code>removeMouseListener</code> method. When a
  # mouse button is pressed or released, the appropriate method
  # will be invoked.
  # </p>
  # 
  # @see MouseAdapter
  # @see MouseEvent
  module MouseListener
    include_class_members MouseListenerImports
    include SWTEventListener
    
    typesig { [MouseEvent] }
    # Sent when a mouse button is pressed twice within the
    # (operating system specified) double click period.
    # 
    # @param e an event containing information about the mouse double click
    # 
    # @see org.eclipse.swt.widgets.Display#getDoubleClickTime()
    def mouse_double_click(e)
      raise NotImplementedError
    end
    
    typesig { [MouseEvent] }
    # Sent when a mouse button is pressed.
    # 
    # @param e an event containing information about the mouse button press
    def mouse_down(e)
      raise NotImplementedError
    end
    
    typesig { [MouseEvent] }
    # Sent when a mouse button is released.
    # 
    # @param e an event containing information about the mouse button release
    def mouse_up(e)
      raise NotImplementedError
    end
  end
  
end
