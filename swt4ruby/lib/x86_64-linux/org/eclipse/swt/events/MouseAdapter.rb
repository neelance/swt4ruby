require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Events
  module MouseAdapterImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # This adapter class provides default implementations for the
  # methods described by the <code>MouseListener</code> interface.
  # <p>
  # Classes that wish to deal with <code>MouseEvent</code>s
  # which occur as mouse buttons are pressed and released can
  # extend this class and override only the methods which they are
  # interested in.
  # </p>
  # 
  # @see MouseListener
  # @see MouseEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class MouseAdapter 
    include_class_members MouseAdapterImports
    include MouseListener
    
    typesig { [MouseEvent] }
    # Sent when a mouse button is pressed twice within the
    # (operating system specified) double click period.
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the mouse double click
    # 
    # @see org.eclipse.swt.widgets.Display#getDoubleClickTime()
    def mouse_double_click(e)
    end
    
    typesig { [MouseEvent] }
    # Sent when a mouse button is pressed.
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the mouse button press
    def mouse_down(e)
    end
    
    typesig { [MouseEvent] }
    # Sent when a mouse button is released.
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the mouse button release
    def mouse_up(e)
    end
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__mouse_adapter, :initialize
  end
  
end
