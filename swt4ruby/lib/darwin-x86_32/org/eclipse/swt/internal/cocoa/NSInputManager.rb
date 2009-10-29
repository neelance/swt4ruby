require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module NSInputManagerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSInputManager < NSInputManagerImports.const_get :NSObject
    include_class_members NSInputManagerImports
    
    typesig { [] }
    def initialize
      super()
    end
    
    typesig { [::Java::Int] }
    # long
    def initialize(id)
      super(id)
    end
    
    typesig { [Id] }
    def initialize(id)
      super(id)
    end
    
    class_module.module_eval {
      typesig { [] }
      def current_input_manager
        # long
        result = OS.objc_msg_send(OS.attr_class_nsinput_manager, OS.attr_sel_current_input_manager)
        return !(result).equal?(0) ? NSInputManager.new(result) : nil
      end
    }
    
    typesig { [NSEvent] }
    def handle_mouse_event(the_mouse_event)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_handle_mouse_event_, !(the_mouse_event).nil? ? the_mouse_event.attr_id : 0)
    end
    
    typesig { [] }
    def wants_to_handle_mouse_events
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_wants_to_handle_mouse_events)
    end
    
    private
    alias_method :initialize__nsinput_manager, :initialize
  end
  
end
