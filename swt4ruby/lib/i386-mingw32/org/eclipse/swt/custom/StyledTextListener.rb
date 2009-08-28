require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module StyledTextListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  class StyledTextListener < StyledTextListenerImports.const_get :TypedListener
    include_class_members StyledTextListenerImports
    
    typesig { [SWTEventListener] }
    def initialize(listener)
      super(listener)
    end
    
    typesig { [Event] }
    # Process StyledText events by invoking the event's handler.
    # 
    # @param e the event to handle
    def handle_event(e)
      case (e.attr_type)
      when StyledText::ExtendedModify
        extended_modify_event = ExtendedModifyEvent.new(e)
        (self.attr_event_listener).modify_text(extended_modify_event)
      when StyledText::LineGetBackground
        line_bg_event = LineBackgroundEvent.new(e)
        (self.attr_event_listener).line_get_background(line_bg_event)
        (e).attr_line_background = line_bg_event.attr_line_background
      when StyledText::LineGetSegments
        segment_event = BidiSegmentEvent.new(e)
        (self.attr_event_listener).line_get_segments(segment_event)
        (e).attr_segments = segment_event.attr_segments
      when StyledText::LineGetStyle
        line_style_event = LineStyleEvent.new(e)
        (self.attr_event_listener).line_get_style(line_style_event)
        (e).attr_ranges = line_style_event.attr_ranges
        (e).attr_styles = line_style_event.attr_styles
        (e).attr_alignment = line_style_event.attr_alignment
        (e).attr_indent = line_style_event.attr_indent
        (e).attr_justify = line_style_event.attr_justify
        (e).attr_bullet = line_style_event.attr_bullet
        (e).attr_bullet_index = line_style_event.attr_bullet_index
      when StyledText::PaintObject
        paint_object_event = PaintObjectEvent.new(e)
        (self.attr_event_listener).paint_object(paint_object_event)
      when StyledText::VerifyKey
        verify_event = VerifyEvent.new(e)
        (self.attr_event_listener).verify_key(verify_event)
        e.attr_doit = verify_event.attr_doit
      when StyledText::TextChanged
        text_changed_event = TextChangedEvent.new(e.attr_data)
        (self.attr_event_listener).text_changed(text_changed_event)
      when StyledText::TextChanging
        text_changing_event = TextChangingEvent.new(e.attr_data, e)
        (self.attr_event_listener).text_changing(text_changing_event)
      when StyledText::TextSet
        text_changed_event = TextChangedEvent.new(e.attr_data)
        (self.attr_event_listener).text_set(text_changed_event)
      when StyledText::WordNext
        word_boundary_event = MovementEvent.new(e)
        (self.attr_event_listener).get_next_offset(word_boundary_event)
        (e).attr_end = word_boundary_event.attr_new_offset
      when StyledText::WordPrevious
        word_boundary_event = MovementEvent.new(e)
        (self.attr_event_listener).get_previous_offset(word_boundary_event)
        (e).attr_end = word_boundary_event.attr_new_offset
      end
    end
    
    private
    alias_method :initialize__styled_text_listener, :initialize
  end
  
end
