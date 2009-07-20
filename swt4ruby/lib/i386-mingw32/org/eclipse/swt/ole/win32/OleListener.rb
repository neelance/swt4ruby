require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Ole::Win32
  module OleListenerImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Ole::Win32
    }
  end
  
  # Implementers of <code>OleListener</code> provide a simple
  # <code>handleEvent()</code> method that is used internally
  # by SWT to dispatch events.
  # <p>
  # After creating an instance of a class that implements this
  # interface it can be added to an <code>OleControlSite</code>
  # using the <code>addEventListener()</code> method and removed
  # using the <code>removeEventListener()</code> method.  When the
  # specified event occurs, <code>handleEvent()</code> will be
  # sent to the instance.
  # </p>
  # 
  # @see OleControlSite
  module OleListener
    include_class_members OleListenerImports
    
    typesig { [OleEvent] }
    # Sent when an event that the receiver has registered for occurs.
    # 
    # @param event the event which occurred
    def handle_event(event)
      raise NotImplementedError
    end
  end
  
end
