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
  module NSEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSEvent < NSEventImports.const_get :NSObject
    include_class_members NSEventImports
    
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
    
    typesig { [] }
    # long
    def _cgevent
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_cgevent)
    end
    
    typesig { [] }
    # long
    def button_number
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_button_number)
    end
    
    typesig { [] }
    def characters
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_characters)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [] }
    def characters_ignoring_modifiers
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_characters_ignoring_modifiers)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [] }
    # long
    def click_count
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_click_count)
    end
    
    typesig { [] }
    # double
    def delta_x
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_delta_x)).to_f
    end
    
    typesig { [] }
    # double
    def delta_y
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_delta_y)).to_f
    end
    
    class_module.module_eval {
      typesig { [::Java::Int, NSPoint, ::Java::Int, ::Java::Double, ::Java::Int, NSGraphicsContext, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      def enter_exit_event_with_type(type, location, flags, time, w_num, context, e_num, t_num, data)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsevent, OS.attr_sel_enter_exit_event_with_type_location_modifier_flags_timestamp_window_number_context_event_number_tracking_number_user_data_, type, location, flags, time, w_num, !(context).nil? ? context.attr_id : 0, e_num, t_num, data)
        return !(result).equal?(0) ? NSEvent.new(result) : nil
      end
    }
    
    typesig { [] }
    def key_code
      return RJava.cast_to_short(OS.objc_msg_send(self.attr_id, OS.attr_sel_key_code))
    end
    
    typesig { [] }
    def location_in_window
      result = NSPoint.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_location_in_window)
      return result
    end
    
    typesig { [] }
    # long
    def modifier_flags
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_modifier_flags)
    end
    
    class_module.module_eval {
      typesig { [] }
      def mouse_location
        result = NSPoint.new
        OS.objc_msg_send_stret(result, OS.attr_class_nsevent, OS.attr_sel_mouse_location)
        return result
      end
      
      typesig { [::Java::Int, NSPoint, ::Java::Int, ::Java::Double, ::Java::Int, NSGraphicsContext, ::Java::Short, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def other_event_with_type(type, location, flags, time, w_num, context, subtype, d1, d2)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsevent, OS.attr_sel_other_event_with_type_location_modifier_flags_timestamp_window_number_context_subtype_data1_data2_, type, location, flags, time, w_num, !(context).nil? ? context.attr_id : 0, subtype, d1, d2)
        return !(result).equal?(0) ? NSEvent.new(result) : nil
      end
    }
    
    typesig { [] }
    def timestamp
      return OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_timestamp)
    end
    
    typesig { [] }
    # long
    def type
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_type)
    end
    
    typesig { [] }
    def window
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_window)
      return !(result).equal?(0) ? NSWindow.new(result) : nil
    end
    
    private
    alias_method :initialize__nsevent, :initialize
  end
  
end
