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
  module KeyAdapterImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # This adapter class provides default implementations for the
  # methods described by the <code>KeyListener</code> interface.
  # <p>
  # Classes that wish to deal with <code>KeyEvent</code>s can
  # extend this class and override only the methods which they are
  # interested in.
  # </p>
  # 
  # @see KeyListener
  # @see KeyEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class KeyAdapter 
    include_class_members KeyAdapterImports
    include KeyListener
    
    typesig { [KeyEvent] }
    # Sent when a key is pressed on the system keyboard.
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the key press
    def key_pressed(e)
    end
    
    typesig { [KeyEvent] }
    # Sent when a key is released on the system keyboard.
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the key release
    def key_released(e)
    end
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__key_adapter, :initialize
  end
  
end
