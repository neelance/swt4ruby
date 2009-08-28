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
  module StyledTextDropTargetEffectImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # This adapter class provides a default drag under effect (eg. select and scroll)
  # when a drag occurs over a <code>StyledText</code>.
  # 
  # <p>Classes that wish to provide their own drag under effect for a <code>StyledText</code>
  # can extend this class, override the <code>StyledTextDropTargetEffect.dragOver</code>
  # method and override any other applicable methods in <code>StyledTextDropTargetEffect</code> to
  # display their own drag under effect.</p>
  # 
  # Subclasses that override any methods of this class should call the corresponding
  # <code>super</code> method to get the default drag under effect implementation.
  # 
  # <p>The feedback value is either one of the FEEDBACK constants defined in
  # class <code>DND</code> which is applicable to instances of this class,
  # or it must be built by <em>bitwise OR</em>'ing together
  # (that is, using the <code>int</code> "|" operator) two or more
  # of those <code>DND</code> effect constants.
  # </p>
  # <p>
  # <dl>
  # <dt><b>Feedback:</b></dt>
  # <dd>FEEDBACK_SELECT, FEEDBACK_SCROLL</dd>
  # </dl>
  # </p>
  # 
  # @see DropTargetAdapter
  # @see DropTargetEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.3
  class StyledTextDropTargetEffect < StyledTextDropTargetEffectImports.const_get :DropTargetEffect
    include_class_members StyledTextDropTargetEffectImports
    
    class_module.module_eval {
      const_set_lazy(:CARET_WIDTH) { 2 }
      const_attr_reader  :CARET_WIDTH
      
      const_set_lazy(:SCROLL_HYSTERESIS) { 100 }
      const_attr_reader  :SCROLL_HYSTERESIS
      
      # milli seconds
      const_set_lazy(:SCROLL_TOLERANCE) { 20 }
      const_attr_reader  :SCROLL_TOLERANCE
    }
    
    # pixels
    attr_accessor :current_offset
    alias_method :attr_current_offset, :current_offset
    undef_method :current_offset
    alias_method :attr_current_offset=, :current_offset=
    undef_method :current_offset=
    
    attr_accessor :scroll_begin_time
    alias_method :attr_scroll_begin_time, :scroll_begin_time
    undef_method :scroll_begin_time
    alias_method :attr_scroll_begin_time=, :scroll_begin_time=
    undef_method :scroll_begin_time=
    
    attr_accessor :scroll_x
    alias_method :attr_scroll_x, :scroll_x
    undef_method :scroll_x
    alias_method :attr_scroll_x=, :scroll_x=
    undef_method :scroll_x=
    
    attr_accessor :scroll_y
    alias_method :attr_scroll_y, :scroll_y
    undef_method :scroll_y
    alias_method :attr_scroll_y=, :scroll_y=
    undef_method :scroll_y=
    
    attr_accessor :paint_listener
    alias_method :attr_paint_listener, :paint_listener
    undef_method :paint_listener
    alias_method :attr_paint_listener=, :paint_listener=
    undef_method :paint_listener=
    
    typesig { [StyledText] }
    # Creates a new <code>StyledTextDropTargetEffect</code> to handle the drag under effect on the specified
    # <code>StyledText</code>.
    # 
    # @param styledText the <code>StyledText</code> over which the user positions the cursor to drop the data
    def initialize(styled_text)
      @current_offset = 0
      @scroll_begin_time = 0
      @scroll_x = 0
      @scroll_y = 0
      @paint_listener = nil
      super(styled_text)
      @current_offset = -1
      @scroll_x = -1
      @scroll_y = -1
      @paint_listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members StyledTextDropTargetEffect
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          if (!(self.attr_current_offset).equal?(-1))
            text = get_control
            position = text.get_location_at_offset(self.attr_current_offset)
            height = text.get_line_height(self.attr_current_offset)
            event.attr_gc.set_background(event.attr_display.get_system_color(SWT::COLOR_BLACK))
            event.attr_gc.fill_rectangle(position.attr_x, position.attr_y, CARET_WIDTH, height)
          end
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
    end
    
    typesig { [DropTargetEvent] }
    # This implementation of <code>dragEnter</code> provides a default drag under effect
    # for the feedback specified in <code>event.feedback</code>.
    # 
    # For additional information see <code>DropTargetAdapter.dragEnter</code>.
    # 
    # Subclasses that override this method should call <code>super.dragEnter(event)</code>
    # to get the default drag under effect implementation.
    # 
    # @param event  the information associated with the drag start event
    # 
    # @see DropTargetAdapter
    # @see DropTargetEvent
    def drag_enter(event)
      @current_offset = -1
      @scroll_begin_time = 0
      @scroll_x = -1
      @scroll_y = -1
      get_control.remove_listener(SWT::Paint, @paint_listener)
      get_control.add_listener(SWT::Paint, @paint_listener)
    end
    
    typesig { [DropTargetEvent] }
    # This implementation of <code>dragLeave</code> provides a default drag under effect
    # for the feedback specified in <code>event.feedback</code>.
    # 
    # For additional information see <code>DropTargetAdapter.dragLeave</code>.
    # 
    # Subclasses that override this method should call <code>super.dragLeave(event)</code>
    # to get the default drag under effect implementation.
    # 
    # @param event  the information associated with the drag leave event
    # 
    # @see DropTargetAdapter
    # @see DropTargetEvent
    def drag_leave(event)
      text = get_control
      if (!(@current_offset).equal?(-1))
        refresh_caret(text, @current_offset, -1)
      end
      text.remove_listener(SWT::Paint, @paint_listener)
      @scroll_begin_time = 0
      @scroll_x = -1
      @scroll_y = -1
    end
    
    typesig { [DropTargetEvent] }
    # This implementation of <code>dragOver</code> provides a default drag under effect
    # for the feedback specified in <code>event.feedback</code>.
    # 
    # For additional information see <code>DropTargetAdapter.dragOver</code>.
    # 
    # Subclasses that override this method should call <code>super.dragOver(event)</code>
    # to get the default drag under effect implementation.
    # 
    # @param event  the information associated with the drag over event
    # 
    # @see DropTargetAdapter
    # @see DropTargetEvent
    # @see DND#FEEDBACK_SELECT
    # @see DND#FEEDBACK_SCROLL
    def drag_over(event)
      effect = event.attr_feedback
      text = get_control
      pt = text.get_display.map(nil, text, event.attr_x, event.attr_y)
      if (((effect & DND::FEEDBACK_SCROLL)).equal?(0))
        @scroll_begin_time = 0
        @scroll_x = @scroll_y = -1
      else
        if ((text.get_char_count).equal?(0))
          @scroll_begin_time = 0
          @scroll_x = @scroll_y = -1
        else
          if (!(@scroll_x).equal?(-1) && !(@scroll_y).equal?(-1) && !(@scroll_begin_time).equal?(0) && (pt.attr_x >= @scroll_x && pt.attr_x <= (@scroll_x + SCROLL_TOLERANCE) || pt.attr_y >= @scroll_y && pt.attr_y <= (@scroll_y + SCROLL_TOLERANCE)))
            if (System.current_time_millis >= @scroll_begin_time)
              area = text.get_client_area
              gc = SwtGC.new(text)
              fm = gc.get_font_metrics
              gc.dispose
              char_width = fm.get_average_char_width
              scroll_amount = 10 * char_width
              if (pt.attr_x < area.attr_x + 3 * char_width)
                left_pixel = text.get_horizontal_pixel
                text.set_horizontal_pixel(left_pixel - scroll_amount)
              end
              if (pt.attr_x > area.attr_width - 3 * char_width)
                left_pixel = text.get_horizontal_pixel
                text.set_horizontal_pixel(left_pixel + scroll_amount)
              end
              line_height = text.get_line_height
              if (pt.attr_y < area.attr_y + line_height)
                top_pixel = text.get_top_pixel
                text.set_top_pixel(top_pixel - line_height)
              end
              if (pt.attr_y > area.attr_height - line_height)
                top_pixel = text.get_top_pixel
                text.set_top_pixel(top_pixel + line_height)
              end
              @scroll_begin_time = 0
              @scroll_x = @scroll_y = -1
            end
          else
            @scroll_begin_time = System.current_time_millis + SCROLL_HYSTERESIS
            @scroll_x = pt.attr_x
            @scroll_y = pt.attr_y
          end
        end
      end
      if (!((effect & DND::FEEDBACK_SELECT)).equal?(0))
        trailing = Array.typed(::Java::Int).new(1) { 0 }
        new_offset = text.get_offset_at_point(pt.attr_x, pt.attr_y, trailing, false)
        new_offset += trailing[0]
        if (!(new_offset).equal?(@current_offset))
          refresh_caret(text, @current_offset, new_offset)
          @current_offset = new_offset
        end
      end
    end
    
    typesig { [StyledText, ::Java::Int, ::Java::Int] }
    def refresh_caret(text, old_offset, new_offset)
      if (!(old_offset).equal?(new_offset))
        if (!(old_offset).equal?(-1))
          old_pos = text.get_location_at_offset(old_offset)
          old_height = text.get_line_height(old_offset)
          text.redraw(old_pos.attr_x, old_pos.attr_y, CARET_WIDTH, old_height, false)
        end
        if (!(new_offset).equal?(-1))
          new_pos = text.get_location_at_offset(new_offset)
          new_height = text.get_line_height(new_offset)
          text.redraw(new_pos.attr_x, new_pos.attr_y, CARET_WIDTH, new_height, false)
        end
      end
    end
    
    typesig { [DropTargetEvent] }
    # This implementation of <code>dropAccept</code> provides a default drag under effect
    # for the feedback specified in <code>event.feedback</code>.
    # 
    # For additional information see <code>DropTargetAdapter.dropAccept</code>.
    # 
    # Subclasses that override this method should call <code>super.dropAccept(event)</code>
    # to get the default drag under effect implementation.
    # 
    # @param event  the information associated with the drop accept event
    # 
    # @see DropTargetAdapter
    # @see DropTargetEvent
    def drop_accept(event)
      if (!(@current_offset).equal?(-1))
        text = get_control
        text.set_selection(@current_offset)
        @current_offset = -1
      end
    end
    
    private
    alias_method :initialize__styled_text_drop_target_effect, :initialize
  end
  
end
