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
  module DisposeListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # Classes which implement this interface provide a method
  # that deals with the event that is generated when a widget
  # is disposed.
  # <p>
  # After creating an instance of a class that implements
  # this interface it can be added to a widget using the
  # <code>addDisposeListener</code> method and removed using
  # the <code>removeDisposeListener</code> method. When a
  # widget is disposed, the widgetDisposed method will
  # be invoked.
  # </p>
  # 
  # @see DisposeEvent
  module DisposeListener
    include_class_members DisposeListenerImports
    include SWTEventListener
    
    typesig { [DisposeEvent] }
    # Sent when the widget is disposed.
    # 
    # @param e an event containing information about the dispose
    def widget_disposed(e)
      raise NotImplementedError
    end
  end
  
end
