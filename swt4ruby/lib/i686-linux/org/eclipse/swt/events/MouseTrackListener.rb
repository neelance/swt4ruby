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
  module MouseTrackListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # Classes which implement this interface provide methods
  # that deal with the events that are generated as the mouse
  # pointer passes (or hovers) over controls.
  # <p>
  # After creating an instance of a class that implements
  # this interface it can be added to a control using the
  # <code>addMouseTrackListener</code> method and removed using
  # the <code>removeMouseTrackListener</code> method. When the
  # mouse pointer passes into or out of the area of the screen
  # covered by a control or pauses while over a control, the
  # appropriate method will be invoked.
  # </p>
  # 
  # @see MouseTrackAdapter
  # @see MouseEvent
  module MouseTrackListener
    include_class_members MouseTrackListenerImports
    include SWTEventListener
    
    typesig { [MouseEvent] }
    # Sent when the mouse pointer passes into the area of
    # the screen covered by a control.
    # 
    # @param e an event containing information about the mouse enter
    def mouse_enter(e)
      raise NotImplementedError
    end
    
    typesig { [MouseEvent] }
    # Sent when the mouse pointer passes out of the area of
    # the screen covered by a control.
    # 
    # @param e an event containing information about the mouse exit
    def mouse_exit(e)
      raise NotImplementedError
    end
    
    typesig { [MouseEvent] }
    # Sent when the mouse pointer hovers (that is, stops moving
    # for an (operating system specified) period of time) over
    # a control.
    # 
    # @param e an event containing information about the hover
    def mouse_hover(e)
      raise NotImplementedError
    end
  end
  
end
