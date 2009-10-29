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
  module MouseTrackAdapterImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # This adapter class provides default implementations for the
  # methods described by the <code>MouseTrackListener</code> interface.
  # <p>
  # Classes that wish to deal with <code>MouseEvent</code>s which
  # occur as the mouse pointer passes (or hovers) over controls can
  # extend this class and override only the methods which they are
  # interested in.
  # </p>
  # 
  # @see MouseTrackListener
  # @see MouseEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class MouseTrackAdapter 
    include_class_members MouseTrackAdapterImports
    include MouseTrackListener
    
    typesig { [MouseEvent] }
    # Sent when the mouse pointer passes into the area of
    # the screen covered by a control.
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the mouse enter
    def mouse_enter(e)
    end
    
    typesig { [MouseEvent] }
    # Sent when the mouse pointer passes out of the area of
    # the screen covered by a control.
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the mouse exit
    def mouse_exit(e)
    end
    
    typesig { [MouseEvent] }
    # Sent when the mouse pointer hovers (that is, stops moving
    # for an (operating system specified) period of time) over
    # a control.
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the hover
    def mouse_hover(e)
    end
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__mouse_track_adapter, :initialize
  end
  
end
