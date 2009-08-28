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
  module MenuDetectListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # Classes which implement this interface provide methods
  # that deal with the events that are generated when the
  # platform-specific trigger for showing a context menu is
  # detected.
  # <p>
  # After creating an instance of a class that implements
  # this interface it can be added to a control or TrayItem
  # using the <code>addMenuDetectListener</code> method and
  # removed using the <code>removeMenuDetectListener</code> method.
  # When the context menu trigger occurs, the
  # <code>menuDetected</code> method will be invoked.
  # </p>
  # 
  # @see MenuDetectEvent
  # 
  # @since 3.3
  module MenuDetectListener
    include_class_members MenuDetectListenerImports
    include SWTEventListener
    
    typesig { [MenuDetectEvent] }
    # Sent when the platform-dependent trigger for showing a menu item is detected.
    # 
    # @param e an event containing information about the menu detect
    def menu_detected(e)
      raise NotImplementedError
    end
  end
  
end
