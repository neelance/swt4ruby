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
  module SelectionListenerImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # Classes which implement this interface provide methods
  # that deal with the events that are generated when selection
  # occurs in a control.
  # <p>
  # After creating an instance of a class that implements
  # this interface it can be added to a control using the
  # <code>addSelectionListener</code> method and removed using
  # the <code>removeSelectionListener</code> method. When
  # selection occurs in a control the appropriate method
  # will be invoked.
  # </p>
  # 
  # @see SelectionAdapter
  # @see SelectionEvent
  module SelectionListener
    include_class_members SelectionListenerImports
    include SWTEventListener
    
    typesig { [SelectionEvent] }
    # Sent when selection occurs in the control.
    # <p>
    # For example, selection occurs in a List when the user selects
    # an item or items with the keyboard or mouse.  On some platforms,
    # the event occurs when a mouse button or key is pressed.  On others,
    # it happens when the mouse or key is released.  The exact key or
    # mouse gesture that causes this event is platform specific.
    # </p>
    # 
    # @param e an event containing information about the selection
    def widget_selected(e)
      raise NotImplementedError
    end
    
    typesig { [SelectionEvent] }
    # Sent when default selection occurs in the control.
    # <p>
    # For example, on some platforms default selection occurs in a List
    # when the user double-clicks an item or types return in a Text.
    # On some platforms, the event occurs when a mouse button or key is
    # pressed.  On others, it happens when the mouse or key is released.
    # The exact key or mouse gesture that causes this event is platform
    # specific.
    # </p>
    # 
    # @param e an event containing information about the default selection
    def widget_default_selected(e)
      raise NotImplementedError
    end
  end
  
end
