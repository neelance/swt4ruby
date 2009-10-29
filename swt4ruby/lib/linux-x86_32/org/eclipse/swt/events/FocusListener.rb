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
  module FocusListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # Classes which implement this interface provide methods
  # that deal with the events that are generated as controls
  # gain and lose focus.
  # <p>
  # After creating an instance of a class that implements
  # this interface it can be added to a control using the
  # <code>addFocusListener</code> method and removed using
  # the <code>removeFocusListener</code> method. When a
  # control gains or loses focus, the appropriate method
  # will be invoked.
  # </p>
  # 
  # @see FocusAdapter
  # @see FocusEvent
  module FocusListener
    include_class_members FocusListenerImports
    include SWTEventListener
    
    typesig { [FocusEvent] }
    # Sent when a control gets focus.
    # 
    # @param e an event containing information about the focus change
    def focus_gained(e)
      raise NotImplementedError
    end
    
    typesig { [FocusEvent] }
    # Sent when a control loses focus.
    # 
    # @param e an event containing information about the focus change
    def focus_lost(e)
      raise NotImplementedError
    end
  end
  
end
