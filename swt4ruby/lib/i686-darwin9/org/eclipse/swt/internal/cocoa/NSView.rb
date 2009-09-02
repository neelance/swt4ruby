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
  module NSViewImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSView < NSViewImports.const_get :NSResponder
    include_class_members NSViewImports
    
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
    
    typesig { [NSEvent] }
    def accepts_first_mouse(the_event)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_accepts_first_mouse_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [NSView] }
    def add_subview(a_view)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_subview_, !(a_view).nil? ? a_view.attr_id : 0)
    end
    
    typesig { [NSView, ::Java::Int, NSView] }
    # long
    def add_subview(a_view, place, other_view)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_subview_positioned_relative_to_, !(a_view).nil? ? a_view.attr_id : 0, place, !(other_view).nil? ? other_view.attr_id : 0)
    end
    
    typesig { [NSRect, Id, ::Java::Int] }
    # long
    # long
    def add_tool_tip_rect(a_rect, an_object, data)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_add_tool_tip_rect_owner_user_data_, a_rect, !(an_object).nil? ? an_object.attr_id : 0, data)
    end
    
    typesig { [] }
    def begin_document
      OS.objc_msg_send(self.attr_id, OS.attr_sel_begin_document)
    end
    
    typesig { [NSRect, NSPoint] }
    def begin_page_in_rect(a_rect, location)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_begin_page_in_rect_at_placement_, a_rect, location)
    end
    
    typesig { [] }
    def bounds
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_bounds)
      return result
    end
    
    typesig { [] }
    def can_become_key_view
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_can_become_key_view)
    end
    
    typesig { [NSPoint, NSView] }
    def convert_point_from_view_(a_point, a_view)
      result = NSPoint.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_convert_point_from_view_, a_point, !(a_view).nil? ? a_view.attr_id : 0)
      return result
    end
    
    typesig { [NSPoint, NSView] }
    def convert_point_to_view_(a_point, a_view)
      result = NSPoint.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_convert_point_to_view_, a_point, !(a_view).nil? ? a_view.attr_id : 0)
      return result
    end
    
    typesig { [NSPoint] }
    def convert_point_from_base(a_point)
      result = NSPoint.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_convert_point_from_base_, a_point)
      return result
    end
    
    typesig { [NSPoint] }
    def convert_point_to_base(a_point)
      result = NSPoint.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_convert_point_to_base_, a_point)
      return result
    end
    
    typesig { [NSRect, NSView] }
    def convert_rect_from_view_(a_rect, a_view)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_convert_rect_from_view_, a_rect, !(a_view).nil? ? a_view.attr_id : 0)
      return result
    end
    
    typesig { [NSRect, NSView] }
    def convert_rect_to_view_(a_rect, a_view)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_convert_rect_to_view_, a_rect, !(a_view).nil? ? a_view.attr_id : 0)
      return result
    end
    
    typesig { [NSRect] }
    def convert_rect_from_base(a_rect)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_convert_rect_from_base_, a_rect)
      return result
    end
    
    typesig { [NSRect] }
    def convert_rect_to_base(a_rect)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_convert_rect_to_base_, a_rect)
      return result
    end
    
    typesig { [NSSize, NSView] }
    def convert_size_from_view_(a_size, a_view)
      result = NSSize.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_convert_size_from_view_, a_size, !(a_view).nil? ? a_view.attr_id : 0)
      return result
    end
    
    typesig { [NSSize, NSView] }
    def convert_size_to_view_(a_size, a_view)
      result = NSSize.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_convert_size_to_view_, a_size, !(a_view).nil? ? a_view.attr_id : 0)
      return result
    end
    
    typesig { [NSSize] }
    def convert_size_from_base(a_size)
      result = NSSize.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_convert_size_from_base_, a_size)
      return result
    end
    
    typesig { [NSSize] }
    def convert_size_to_base(a_size)
      result = NSSize.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_convert_size_to_base_, a_size)
      return result
    end
    
    typesig { [] }
    def discard_cursor_rects
      OS.objc_msg_send(self.attr_id, OS.attr_sel_discard_cursor_rects)
    end
    
    typesig { [] }
    def display
      OS.objc_msg_send(self.attr_id, OS.attr_sel_display)
    end
    
    typesig { [] }
    def display_if_needed
      OS.objc_msg_send(self.attr_id, OS.attr_sel_display_if_needed)
    end
    
    typesig { [NSRect, NSGraphicsContext] }
    def display_rect_ignoring_opacity(a_rect, context)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_display_rect_ignoring_opacity_in_context_, a_rect, !(context).nil? ? context.attr_id : 0)
    end
    
    typesig { [NSImage, NSPoint, NSSize, NSEvent, NSPasteboard, Id, ::Java::Boolean] }
    def drag_image(an_image, view_location, initial_offset, event, pboard, source_obj, slide_flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_drag_image_at_offset_event_pasteboard_source_slide_back_, !(an_image).nil? ? an_image.attr_id : 0, view_location, initial_offset, !(event).nil? ? event.attr_id : 0, !(pboard).nil? ? pboard.attr_id : 0, !(source_obj).nil? ? source_obj.attr_id : 0, slide_flag)
    end
    
    typesig { [NSRect] }
    def draw_rect(rect)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_draw_rect_, rect)
    end
    
    typesig { [] }
    def end_document
      OS.objc_msg_send(self.attr_id, OS.attr_sel_end_document)
    end
    
    typesig { [] }
    def end_page
      OS.objc_msg_send(self.attr_id, OS.attr_sel_end_page)
    end
    
    typesig { [] }
    def frame
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_frame)
      return result
    end
    
    typesig { [NSPoint] }
    def hit_test(a_point)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_hit_test_, a_point)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSView.new(result) : nil)
    end
    
    typesig { [NSRect] }
    def init_with_frame(frame_rect)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_frame_, frame_rect)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSView.new(result) : nil)
    end
    
    typesig { [] }
    def is_flipped
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_flipped)
    end
    
    typesig { [] }
    def is_hidden
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_hidden)
    end
    
    typesig { [] }
    def is_hidden_or_has_hidden_ancestor
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_hidden_or_has_hidden_ancestor)
    end
    
    typesig { [] }
    def is_opaque
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_opaque)
    end
    
    typesig { [] }
    def lock_focus
      OS.objc_msg_send(self.attr_id, OS.attr_sel_lock_focus)
    end
    
    typesig { [NSEvent] }
    def menu_for_event(event)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_menu_for_event_, !(event).nil? ? event.attr_id : 0)
      return !(result).equal?(0) ? NSMenu.new(result) : nil
    end
    
    typesig { [NSArray] }
    def register_for_dragged_types(new_types)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_register_for_dragged_types_, !(new_types).nil? ? new_types.attr_id : 0)
    end
    
    typesig { [] }
    def remove_from_superview
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_from_superview)
    end
    
    typesig { [NSTrackingArea] }
    def remove_tracking_area(tracking_area)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_tracking_area_, !(tracking_area).nil? ? tracking_area.attr_id : 0)
    end
    
    typesig { [] }
    def reset_cursor_rects
      OS.objc_msg_send(self.attr_id, OS.attr_sel_reset_cursor_rects)
    end
    
    typesig { [NSPoint] }
    def scroll_point(a_point)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_scroll_point_, a_point)
    end
    
    typesig { [NSRect] }
    def scroll_rect_to_visible(a_rect)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_scroll_rect_to_visible_, a_rect)
    end
    
    typesig { [::Java::Boolean] }
    def set_autoresizes_subviews(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_autoresizes_subviews_, flag)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_autoresizing_mask(mask)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_autoresizing_mask_, mask)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_focus_ring_type(focus_ring_type)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_focus_ring_type_, focus_ring_type)
    end
    
    typesig { [NSRect] }
    def set_frame(frame_rect)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_frame_, frame_rect)
    end
    
    typesig { [NSPoint] }
    def set_frame_origin(new_origin)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_frame_origin_, new_origin)
    end
    
    typesig { [NSSize] }
    def set_frame_size(new_size)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_frame_size_, new_size)
    end
    
    typesig { [::Java::Boolean] }
    def set_hidden(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_hidden_, flag)
    end
    
    typesig { [::Java::Boolean] }
    def set_needs_display(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_needs_display_, flag)
    end
    
    typesig { [NSRect] }
    def set_needs_display_in_rect(invalid_rect)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_needs_display_in_rect_, invalid_rect)
    end
    
    typesig { [NSString] }
    def set_tool_tip(string)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_tool_tip_, !(string).nil? ? string.attr_id : 0)
    end
    
    typesig { [NSEvent] }
    def should_delay_window_ordering_for_event(the_event)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_should_delay_window_ordering_for_event_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [] }
    def subviews
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_subviews)
      return !(result).equal?(0) ? NSArray.new(result) : nil
    end
    
    typesig { [] }
    def superview
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_superview)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSView.new(result) : nil)
    end
    
    typesig { [] }
    def tracking_areas
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_tracking_areas)
      return !(result).equal?(0) ? NSArray.new(result) : nil
    end
    
    typesig { [] }
    def unlock_focus
      OS.objc_msg_send(self.attr_id, OS.attr_sel_unlock_focus)
    end
    
    typesig { [] }
    def unregister_dragged_types
      OS.objc_msg_send(self.attr_id, OS.attr_sel_unregister_dragged_types)
    end
    
    typesig { [] }
    def update_tracking_areas
      OS.objc_msg_send(self.attr_id, OS.attr_sel_update_tracking_areas)
    end
    
    typesig { [] }
    def view_did_move_to_window
      OS.objc_msg_send(self.attr_id, OS.attr_sel_view_did_move_to_window)
    end
    
    typesig { [] }
    def visible_rect
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_visible_rect)
      return result
    end
    
    typesig { [] }
    def window
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_window)
      return !(result).equal?(0) ? NSWindow.new(result) : nil
    end
    
    private
    alias_method :initialize__nsview, :initialize
  end
  
end
