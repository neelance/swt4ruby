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
  module NSColorImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSColor < NSColorImports.const_get :NSObject
    include_class_members NSColorImports
    
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
    # double
    def alpha_component
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_alpha_component)).to_f
    end
    
    class_module.module_eval {
      typesig { [] }
      def alternate_selected_control_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_alternate_selected_control_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
      
      typesig { [] }
      def alternate_selected_control_text_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_alternate_selected_control_text_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
      
      typesig { [] }
      def black_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_black_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
    }
    
    typesig { [] }
    # double
    def blue_component
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_blue_component)).to_f
    end
    
    class_module.module_eval {
      typesig { [] }
      def clear_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_clear_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
    }
    
    typesig { [NSColorSpace] }
    def color_using_color_space(space)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_color_using_color_space_, !(space).nil? ? space.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSColor.new(result) : nil)
    end
    
    typesig { [NSString] }
    def color_using_color_space_name(color_space)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_color_using_color_space_name_, !(color_space).nil? ? color_space.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSColor.new(result) : nil)
    end
    
    class_module.module_eval {
      typesig { [::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
      # double
      # double
      # double
      # double
      def color_with_device_red(red, green, blue, alpha)
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_color_with_device_red_green_blue_alpha_, red, green, blue, alpha)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
      
      typesig { [NSImage] }
      def color_with_pattern_image(image)
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_color_with_pattern_image_, !(image).nil? ? image.attr_id : 0)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
      
      typesig { [] }
      def control_background_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_control_background_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
      
      typesig { [] }
      def control_dark_shadow_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_control_dark_shadow_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
      
      typesig { [] }
      def control_highlight_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_control_highlight_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
      
      typesig { [] }
      def control_light_highlight_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_control_light_highlight_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
      
      typesig { [] }
      def control_shadow_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_control_shadow_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
      
      typesig { [] }
      def control_text_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_control_text_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
      
      typesig { [] }
      def disabled_control_text_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_disabled_control_text_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
    }
    
    typesig { [Array.typed(::Java::Float)] }
    # double[]
    def get_components(components)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_get_components_, components)
    end
    
    typesig { [] }
    # double
    def green_component
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_green_component)).to_f
    end
    
    typesig { [] }
    # long
    def number_of_components
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_number_of_components)
    end
    
    typesig { [] }
    # double
    def red_component
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_red_component)).to_f
    end
    
    class_module.module_eval {
      typesig { [] }
      def secondary_selected_control_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_secondary_selected_control_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
      
      typesig { [] }
      def selected_control_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_selected_control_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
      
      typesig { [] }
      def selected_control_text_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_selected_control_text_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
      
      typesig { [] }
      def selected_text_background_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_selected_text_background_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
      
      typesig { [] }
      def selected_text_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_selected_text_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
    }
    
    typesig { [] }
    def set
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set)
    end
    
    typesig { [] }
    def set_fill
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_fill)
    end
    
    typesig { [] }
    def set_stroke
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_stroke)
    end
    
    class_module.module_eval {
      typesig { [] }
      def text_background_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_text_background_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
      
      typesig { [] }
      def text_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_text_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
      
      typesig { [] }
      def window_background_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_window_background_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
      
      typesig { [] }
      def window_frame_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_window_frame_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
      
      typesig { [] }
      def window_frame_text_color
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor, OS.attr_sel_window_frame_text_color)
        return !(result).equal?(0) ? NSColor.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nscolor, :initialize
  end
  
end
