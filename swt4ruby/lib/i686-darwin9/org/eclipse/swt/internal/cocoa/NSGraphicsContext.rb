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
  module NSGraphicsContextImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSGraphicsContext < NSGraphicsContextImports.const_get :NSObject
    include_class_members NSGraphicsContextImports
    
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
      def current_context
        # long
        result = OS.objc_msg_send(OS.attr_class_nsgraphics_context, OS.attr_sel_current_context)
        return !(result).equal?(0) ? NSGraphicsContext.new(result) : nil
      end
    }
    
    typesig { [] }
    def flush_graphics
      OS.objc_msg_send(self.attr_id, OS.attr_sel_flush_graphics)
    end
    
    class_module.module_eval {
      typesig { [NSBitmapImageRep] }
      def graphics_context_with_bitmap_image_rep(bitmap_rep)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsgraphics_context, OS.attr_sel_graphics_context_with_bitmap_image_rep_, !(bitmap_rep).nil? ? bitmap_rep.attr_id : 0)
        return !(result).equal?(0) ? NSGraphicsContext.new(result) : nil
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def graphics_context_with_graphics_port(graphics_port, initial_flipped_state)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsgraphics_context, OS.attr_sel_graphics_context_with_graphics_port_flipped_, graphics_port, initial_flipped_state)
        return !(result).equal?(0) ? NSGraphicsContext.new(result) : nil
      end
      
      typesig { [NSWindow] }
      def graphics_context_with_window(window)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsgraphics_context, OS.attr_sel_graphics_context_with_window_, !(window).nil? ? window.attr_id : 0)
        return !(result).equal?(0) ? NSGraphicsContext.new(result) : nil
      end
    }
    
    typesig { [] }
    # long
    def graphics_port
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_graphics_port)
    end
    
    typesig { [] }
    # long
    def image_interpolation
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_image_interpolation)
    end
    
    typesig { [] }
    def is_drawing_to_screen
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_drawing_to_screen)
    end
    
    typesig { [] }
    def restore_graphics_state
      OS.objc_msg_send(self.attr_id, OS.attr_sel_restore_graphics_state)
    end
    
    class_module.module_eval {
      typesig { [] }
      def static_restore_graphics_state
        OS.objc_msg_send(OS.attr_class_nsgraphics_context, OS.attr_sel_restore_graphics_state)
      end
    }
    
    typesig { [] }
    def save_graphics_state
      OS.objc_msg_send(self.attr_id, OS.attr_sel_save_graphics_state)
    end
    
    class_module.module_eval {
      typesig { [] }
      def static_save_graphics_state
        OS.objc_msg_send(OS.attr_class_nsgraphics_context, OS.attr_sel_save_graphics_state)
      end
    }
    
    typesig { [::Java::Int] }
    # long
    def set_compositing_operation(operation)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_compositing_operation_, operation)
    end
    
    class_module.module_eval {
      typesig { [NSGraphicsContext] }
      def set_current_context(context)
        OS.objc_msg_send(OS.attr_class_nsgraphics_context, OS.attr_sel_set_current_context_, !(context).nil? ? context.attr_id : 0)
      end
    }
    
    typesig { [::Java::Int] }
    # long
    def set_image_interpolation(interpolation)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_image_interpolation_, interpolation)
    end
    
    typesig { [NSPoint] }
    def set_pattern_phase(phase)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_pattern_phase_, phase)
    end
    
    typesig { [::Java::Boolean] }
    def set_should_antialias(antialias)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_should_antialias_, antialias)
    end
    
    typesig { [] }
    def should_antialias
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_should_antialias)
    end
    
    private
    alias_method :initialize__nsgraphics_context, :initialize
  end
  
end
