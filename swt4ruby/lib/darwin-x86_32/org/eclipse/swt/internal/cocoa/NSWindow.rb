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
  module NSWindowImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSWindow < NSWindowImports.const_get :NSResponder
    include_class_members NSWindowImports
    
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
    
    typesig { [NSWindow, ::Java::Int] }
    # long
    def add_child_window(child_win, place)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_child_window_ordered_, !(child_win).nil? ? child_win.attr_id : 0, place)
    end
    
    typesig { [] }
    # double
    def alpha_value
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_alpha_value)).to_f
    end
    
    typesig { [] }
    def are_cursor_rects_enabled
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_are_cursor_rects_enabled)
    end
    
    typesig { [] }
    def become_key_window
      OS.objc_msg_send(self.attr_id, OS.attr_sel_become_key_window)
    end
    
    typesig { [] }
    def can_become_key_window
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_can_become_key_window)
    end
    
    typesig { [NSPoint] }
    def cascade_top_left_from_point(top_left_point)
      result = NSPoint.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_cascade_top_left_from_point_, top_left_point)
      return result
    end
    
    typesig { [] }
    def close
      OS.objc_msg_send(self.attr_id, OS.attr_sel_close)
    end
    
    typesig { [NSRect] }
    def content_rect_for_frame_rect(frame_rect)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_content_rect_for_frame_rect_, frame_rect)
      return result
    end
    
    typesig { [] }
    def content_view
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_content_view)
      return !(result).equal?(0) ? NSView.new(result) : nil
    end
    
    typesig { [NSPoint] }
    def convert_base_to_screen(a_point)
      result = NSPoint.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_convert_base_to_screen_, a_point)
      return result
    end
    
    typesig { [NSPoint] }
    def convert_screen_to_base(a_point)
      result = NSPoint.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_convert_screen_to_base_, a_point)
      return result
    end
    
    typesig { [] }
    def default_button_cell
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_default_button_cell)
      return !(result).equal?(0) ? NSButtonCell.new(result) : nil
    end
    
    typesig { [Id] }
    def deminiaturize(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_deminiaturize_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [] }
    def disable_cursor_rects
      OS.objc_msg_send(self.attr_id, OS.attr_sel_disable_cursor_rects)
    end
    
    typesig { [] }
    def display
      OS.objc_msg_send(self.attr_id, OS.attr_sel_display)
    end
    
    typesig { [] }
    def enable_cursor_rects
      OS.objc_msg_send(self.attr_id, OS.attr_sel_enable_cursor_rects)
    end
    
    typesig { [::Java::Boolean, Id] }
    def field_editor(create_flag, an_object)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_field_editor_for_object_, create_flag, !(an_object).nil? ? an_object.attr_id : 0)
      return !(result).equal?(0) ? NSText.new(result) : nil
    end
    
    typesig { [] }
    def first_responder
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_first_responder)
      return !(result).equal?(0) ? NSResponder.new(result) : nil
    end
    
    typesig { [] }
    def frame
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_frame)
      return result
    end
    
    typesig { [NSRect] }
    def frame_rect_for_content_rect(content_rect)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_frame_rect_for_content_rect_, content_rect)
      return result
    end
    
    typesig { [] }
    def graphics_context
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_graphics_context)
      return !(result).equal?(0) ? NSGraphicsContext.new(result) : nil
    end
    
    typesig { [] }
    def has_shadow
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_has_shadow)
    end
    
    typesig { [NSRect, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # long
    # long
    def init_with_content_rect(content_rect, a_style, buffering_type, flag)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_content_rect_style_mask_backing_defer_, content_rect, a_style, buffering_type, flag)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSWindow.new(result) : nil)
    end
    
    typesig { [NSRect, ::Java::Int, ::Java::Int, ::Java::Boolean, NSScreen] }
    # long
    # long
    def init_with_content_rect(content_rect, a_style, buffering_type, flag, screen)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_content_rect_style_mask_backing_defer_screen_, content_rect, a_style, buffering_type, flag, !(screen).nil? ? screen.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSWindow.new(result) : nil)
    end
    
    typesig { [] }
    def invalidate_shadow
      OS.objc_msg_send(self.attr_id, OS.attr_sel_invalidate_shadow)
    end
    
    typesig { [] }
    def is_document_edited
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_document_edited)
    end
    
    typesig { [] }
    def is_key_window
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_key_window)
    end
    
    typesig { [] }
    def is_miniaturized
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_miniaturized)
    end
    
    typesig { [] }
    def is_sheet
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_sheet)
    end
    
    typesig { [] }
    def is_visible
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_visible)
    end
    
    typesig { [] }
    def is_zoomed
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_zoomed)
    end
    
    typesig { [NSResponder] }
    def make_first_responder(a_responder)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_make_first_responder_, !(a_responder).nil? ? a_responder.attr_id : 0)
    end
    
    typesig { [Id] }
    def make_key_and_order_front(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_make_key_and_order_front_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [NSString, ::Java::Int] }
      # double
      # long
      def min_frame_width_with_title(a_title, a_style)
        return (OS.objc_msg_send_fpret(OS.attr_class_nswindow, OS.attr_sel_min_frame_width_with_title_style_mask_, !(a_title).nil? ? a_title.attr_id : 0, a_style)).to_f
      end
    }
    
    typesig { [] }
    def min_size
      result = NSSize.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_min_size)
      return result
    end
    
    typesig { [Id] }
    def miniaturize(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_miniaturize_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [] }
    def mouse_location_outside_of_event_stream
      result = NSPoint.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_mouse_location_outside_of_event_stream)
      return result
    end
    
    typesig { [Id] }
    def order_back(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_order_back_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [Id] }
    def order_front(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_order_front_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [] }
    def order_front_regardless
      OS.objc_msg_send(self.attr_id, OS.attr_sel_order_front_regardless)
    end
    
    typesig { [Id] }
    def order_out(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_order_out_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def order_window(place, other_win)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_order_window_relative_to_, place, other_win)
    end
    
    typesig { [] }
    def parent_window
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_parent_window)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSWindow.new(result) : nil)
    end
    
    typesig { [NSWindow] }
    def remove_child_window(child_win)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_child_window_, !(child_win).nil? ? child_win.attr_id : 0)
    end
    
    typesig { [] }
    def screen
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_screen)
      return !(result).equal?(0) ? NSScreen.new(result) : nil
    end
    
    typesig { [NSEvent] }
    def send_event(the_event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_send_event_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_accepts_mouse_moved_events(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_accepts_mouse_moved_events_, flag)
    end
    
    typesig { [::Java::Float] }
    # double
    def set_alpha_value(window_alpha)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_alpha_value_, window_alpha)
    end
    
    typesig { [NSColor] }
    def set_background_color(color)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_background_color_, !(color).nil? ? color.attr_id : 0)
    end
    
    typesig { [NSView] }
    def set_content_view(a_view)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_content_view_, !(a_view).nil? ? a_view.attr_id : 0)
    end
    
    typesig { [NSButtonCell] }
    def set_default_button_cell(def_butt)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_default_button_cell_, !(def_butt).nil? ? def_butt.attr_id : 0)
    end
    
    typesig { [Id] }
    def set_delegate(an_object)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_delegate_, !(an_object).nil? ? an_object.attr_id : 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_document_edited(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_document_edited_, flag)
    end
    
    typesig { [NSRect, ::Java::Boolean] }
    def set_frame(frame_rect, flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_frame_display_, frame_rect, flag)
    end
    
    typesig { [NSRect, ::Java::Boolean, ::Java::Boolean] }
    def set_frame(frame_rect, display_flag, animate_flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_frame_display_animate_, frame_rect, display_flag, animate_flag)
    end
    
    typesig { [::Java::Boolean] }
    def set_has_shadow(has_shadow)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_has_shadow_, has_shadow)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_level(new_level)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_level_, new_level)
    end
    
    typesig { [NSSize] }
    def set_min_size(size)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_min_size_, size)
    end
    
    typesig { [::Java::Boolean] }
    def set_opaque(is_opaque)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_opaque_, is_opaque)
    end
    
    typesig { [::Java::Boolean] }
    def set_released_when_closed(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_released_when_closed_, flag)
    end
    
    typesig { [::Java::Boolean] }
    def set_shows_resize_indicator(show)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_shows_resize_indicator_, show)
    end
    
    typesig { [::Java::Boolean] }
    def set_shows_toolbar_button(show)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_shows_toolbar_button_, show)
    end
    
    typesig { [NSString] }
    def set_title(a_string)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_title_, !(a_string).nil? ? a_string.attr_id : 0)
    end
    
    typesig { [NSToolbar] }
    def set_toolbar(toolbar)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_toolbar_, !(toolbar).nil? ? toolbar.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def standard_window_button(b)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_standard_window_button_, b)
      return !(result).equal?(0) ? NSButton.new(result) : nil
    end
    
    typesig { [] }
    # long
    def style_mask
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_style_mask)
    end
    
    typesig { [Id] }
    def toggle_toolbar_shown(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_toggle_toolbar_shown_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [] }
    def toolbar
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_toolbar)
      return !(result).equal?(0) ? NSToolbar.new(result) : nil
    end
    
    typesig { [] }
    # long
    def window_number
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_window_number)
    end
    
    typesig { [Id] }
    def zoom(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_zoom_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    private
    alias_method :initialize__nswindow, :initialize
  end
  
end
