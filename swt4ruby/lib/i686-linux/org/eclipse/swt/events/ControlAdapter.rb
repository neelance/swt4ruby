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
  module ControlAdapterImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # This adapter class provides default implementations for the
  # methods described by the <code>ControlListener</code> interface.
  # <p>
  # Classes that wish to deal with <code>ControlEvent</code>s can
  # extend this class and override only the methods which they are
  # interested in.
  # </p>
  # 
  # @see ControlListener
  # @see ControlEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class ControlAdapter 
    include_class_members ControlAdapterImports
    include ControlListener
    
    typesig { [ControlEvent] }
    # Sent when the location (x, y) of a control changes relative
    # to its parent (or relative to the display, for <code>Shell</code>s).
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the move
    def control_moved(e)
    end
    
    typesig { [ControlEvent] }
    # Sent when the size (width, height) of a control changes.
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the resize
    def control_resized(e)
    end
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__control_adapter, :initialize
  end
  
end
