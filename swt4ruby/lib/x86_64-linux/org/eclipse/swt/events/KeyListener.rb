require "rjava"

# Copyright (c) 2000, 2003 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Events
  module KeyListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # Classes which implement this interface provide methods
  # that deal with the events that are generated as keys
  # are pressed on the system keyboard.
  # <p>
  # After creating an instance of a class that implements
  # this interface it can be added to a control using the
  # <code>addKeyListener</code> method and removed using
  # the <code>removeKeyListener</code> method. When a
  # key is pressed or released, the appropriate method will
  # be invoked.
  # </p>
  # 
  # @see KeyAdapter
  # @see KeyEvent
  module KeyListener
    include_class_members KeyListenerImports
    include SWTEventListener
    
    typesig { [KeyEvent] }
    # Sent when a key is pressed on the system keyboard.
    # 
    # @param e an event containing information about the key press
    def key_pressed(e)
      raise NotImplementedError
    end
    
    typesig { [KeyEvent] }
    # Sent when a key is released on the system keyboard.
    # 
    # @param e an event containing information about the key release
    def key_released(e)
      raise NotImplementedError
    end
  end
  
end
