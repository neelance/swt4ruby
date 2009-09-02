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
  module NSCellImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSCell < NSCellImports.const_get :NSObject
    include_class_members NSCellImports
    
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
    def attributed_string_value
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_attributed_string_value)
      return !(result).equal?(0) ? NSAttributedString.new(result) : nil
    end
    
    typesig { [] }
    def cell_size
      result = NSSize.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_cell_size)
      return result
    end
    
    typesig { [NSRect] }
    def cell_size_for_bounds(a_rect)
      result = NSSize.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_cell_size_for_bounds_, a_rect)
      return result
    end
    
    typesig { [NSRect, NSView] }
    def draw_interior_with_frame(cell_frame, control_view)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_draw_interior_with_frame_in_view_, cell_frame, !(control_view).nil? ? control_view.attr_id : 0)
    end
    
    typesig { [NSRect, NSView] }
    def draw_with_expansion_frame(cell_frame, view)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_draw_with_expansion_frame_in_view_, cell_frame, !(view).nil? ? view.attr_id : 0)
    end
    
    typesig { [NSRect] }
    def drawing_rect_for_bounds(the_rect)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_drawing_rect_for_bounds_, the_rect)
      return result
    end
    
    typesig { [NSRect, NSView] }
    def expansion_frame_with_frame(cell_frame, view)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_expansion_frame_with_frame_in_view_, cell_frame, !(view).nil? ? view.attr_id : 0)
      return result
    end
    
    typesig { [] }
    def font
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_font)
      return !(result).equal?(0) ? NSFont.new(result) : nil
    end
    
    typesig { [NSRect, NSView] }
    def highlight_color_with_frame(cell_frame, control_view)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_highlight_color_with_frame_in_view_, cell_frame, !(control_view).nil? ? control_view.attr_id : 0)
      return !(result).equal?(0) ? NSColor.new(result) : nil
    end
    
    typesig { [NSEvent, NSRect, NSView] }
    # long
    def hit_test_for_event(event, cell_frame, control_view)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_hit_test_for_event_in_rect_of_view_, !(event).nil? ? event.attr_id : 0, cell_frame, !(control_view).nil? ? control_view.attr_id : 0)
    end
    
    typesig { [] }
    def image
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_image)
      return !(result).equal?(0) ? NSImage.new(result) : nil
    end
    
    typesig { [NSRect] }
    def image_rect_for_bounds(the_rect)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_image_rect_for_bounds_, the_rect)
      return result
    end
    
    typesig { [] }
    def is_enabled
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_enabled)
    end
    
    typesig { [] }
    def is_highlighted
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_highlighted)
    end
    
    typesig { [] }
    # long
    def next_state
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_next_state)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_alignment(mode)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_alignment_, mode)
    end
    
    typesig { [::Java::Boolean] }
    def set_allows_mixed_state(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_allows_mixed_state_, flag)
    end
    
    typesig { [NSAttributedString] }
    def set_attributed_string_value(obj)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_attributed_string_value_, !(obj).nil? ? obj.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_control_size(size)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_control_size_, size)
    end
    
    typesig { [::Java::Boolean] }
    def set_enabled(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_enabled_, flag)
    end
    
    typesig { [NSFont] }
    def set_font(font_obj)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_font_, !(font_obj).nil? ? font_obj.attr_id : 0)
    end
    
    typesig { [NSFormatter] }
    def set_formatter(new_formatter)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_formatter_, !(new_formatter).nil? ? new_formatter.attr_id : 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_highlighted(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_highlighted_, flag)
    end
    
    typesig { [NSImage] }
    def set_image(image)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_image_, !(image).nil? ? image.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_line_break_mode(mode)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_line_break_mode_, mode)
    end
    
    typesig { [Id] }
    def set_object_value(obj)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_object_value_, !(obj).nil? ? obj.attr_id : 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_scrollable(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_scrollable_, flag)
    end
    
    typesig { [NSString] }
    def set_title(a_string)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_title_, !(a_string).nil? ? a_string.attr_id : 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_wraps(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_wraps_, flag)
    end
    
    typesig { [] }
    def title
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_title)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [NSRect] }
    def title_rect_for_bounds(the_rect)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_title_rect_for_bounds_, the_rect)
      return result
    end
    
    typesig { [] }
    def wraps
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_wraps)
    end
    
    private
    alias_method :initialize__nscell, :initialize
  end
  
end
