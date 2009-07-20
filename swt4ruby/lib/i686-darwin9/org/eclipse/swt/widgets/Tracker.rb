require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module TrackerImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGPoint
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
    }
  end
  
  # Instances of this class implement rubber banding rectangles that are
  # drawn onto a parent <code>Composite</code> or <code>Display</code>.
  # These rectangles can be specified to respond to mouse and key events
  # by either moving or resizing themselves accordingly.  Trackers are
  # typically used to represent window geometries in a lightweight manner.
  # 
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>LEFT, RIGHT, UP, DOWN, RESIZE</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Move, Resize</dd>
  # </dl>
  # <p>
  # Note: Rectangle move behavior is assumed unless RESIZE is specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#tracker">Tracker snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Tracker < TrackerImports.const_get :Widget
    include_class_members TrackerImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :tracking
    alias_method :attr_tracking, :tracking
    undef_method :tracking
    alias_method :attr_tracking=, :tracking=
    undef_method :tracking=
    
    attr_accessor :cancelled
    alias_method :attr_cancelled, :cancelled
    undef_method :cancelled
    alias_method :attr_cancelled=, :cancelled=
    undef_method :cancelled=
    
    attr_accessor :stippled
    alias_method :attr_stippled, :stippled
    undef_method :stippled
    alias_method :attr_stippled=, :stippled=
    undef_method :stippled=
    
    attr_accessor :client_cursor
    alias_method :attr_client_cursor, :client_cursor
    undef_method :client_cursor
    alias_method :attr_client_cursor=, :client_cursor=
    undef_method :client_cursor=
    
    attr_accessor :resize_cursor
    alias_method :attr_resize_cursor, :resize_cursor
    undef_method :resize_cursor
    alias_method :attr_resize_cursor=, :resize_cursor=
    undef_method :resize_cursor=
    
    attr_accessor :rectangles
    alias_method :attr_rectangles, :rectangles
    undef_method :rectangles
    alias_method :attr_rectangles=, :rectangles=
    undef_method :rectangles=
    
    attr_accessor :proportions
    alias_method :attr_proportions, :proportions
    undef_method :proportions
    alias_method :attr_proportions=, :proportions=
    undef_method :proportions=
    
    attr_accessor :bounds
    alias_method :attr_bounds, :bounds
    undef_method :bounds
    alias_method :attr_bounds=, :bounds=
    undef_method :bounds=
    
    attr_accessor :cursor_orientation
    alias_method :attr_cursor_orientation, :cursor_orientation
    undef_method :cursor_orientation
    alias_method :attr_cursor_orientation=, :cursor_orientation=
    undef_method :cursor_orientation=
    
    attr_accessor :in_event
    alias_method :attr_in_event, :in_event
    undef_method :in_event
    alias_method :attr_in_event=, :in_event=
    undef_method :in_event=
    
    attr_accessor :window
    alias_method :attr_window, :window
    undef_method :window
    alias_method :attr_window=, :window=
    undef_method :window=
    
    attr_accessor :old_x
    alias_method :attr_old_x, :old_x
    undef_method :old_x
    alias_method :attr_old_x=, :old_x=
    undef_method :old_x=
    
    attr_accessor :old_y
    alias_method :attr_old_y, :old_y
    undef_method :old_y
    alias_method :attr_old_y=, :old_y=
    undef_method :old_y=
    
    class_module.module_eval {
      # The following values mirror step sizes on Windows
      const_set_lazy(:STEPSIZE_SMALL) { 1 }
      const_attr_reader  :STEPSIZE_SMALL
      
      const_set_lazy(:STEPSIZE_LARGE) { 9 }
      const_attr_reader  :STEPSIZE_LARGE
    }
    
    typesig { [Composite, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # and a style value describing its behavior and appearance.
    # <p>
    # The style value is either one of the style constants defined in
    # class <code>SWT</code> which is applicable to instances of this
    # class, or must be built by <em>bitwise OR</em>'ing together
    # (that is, using the <code>int</code> "|" operator) two or more
    # of those <code>SWT</code> style constants. The class description
    # lists the style constants that are applicable to the class.
    # Style bits are also inherited from superclasses.
    # </p>
    # 
    # @param parent a widget which will be the parent of the new instance (cannot be null)
    # @param style the style of widget to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#LEFT
    # @see SWT#RIGHT
    # @see SWT#UP
    # @see SWT#DOWN
    # @see SWT#RESIZE
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @parent = nil
      @tracking = false
      @cancelled = false
      @stippled = false
      @client_cursor = nil
      @resize_cursor = nil
      @rectangles = nil
      @proportions = nil
      @bounds = nil
      @cursor_orientation = 0
      @in_event = false
      @window = 0
      @old_x = 0
      @old_y = 0
      super(parent, check_style(style))
      @rectangles = Array.typed(Rectangle).new(0) { nil }
      @proportions = @rectangles
      @cursor_orientation = SWT::NONE
      @in_event = false
      @parent = parent
    end
    
    typesig { [Display, ::Java::Int] }
    # Constructs a new instance of this class given the display
    # to create it on and a style value describing its behavior
    # and appearance.
    # <p>
    # The style value is either one of the style constants defined in
    # class <code>SWT</code> which is applicable to instances of this
    # class, or must be built by <em>bitwise OR</em>'ing together
    # (that is, using the <code>int</code> "|" operator) two or more
    # of those <code>SWT</code> style constants. The class description
    # lists the style constants that are applicable to the class.
    # Style bits are also inherited from superclasses.
    # </p><p>
    # Note: Currently, null can be passed in for the display argument.
    # This has the effect of creating the tracker on the currently active
    # display if there is one. If there is no current display, the
    # tracker is created on a "default" display. <b>Passing in null as
    # the display argument is not considered to be good coding style,
    # and may not be supported in a future release of SWT.</b>
    # </p>
    # 
    # @param display the display to create the tracker on
    # @param style the style of control to construct
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#LEFT
    # @see SWT#RIGHT
    # @see SWT#UP
    # @see SWT#DOWN
    def initialize(display, style)
      @parent = nil
      @tracking = false
      @cancelled = false
      @stippled = false
      @client_cursor = nil
      @resize_cursor = nil
      @rectangles = nil
      @proportions = nil
      @bounds = nil
      @cursor_orientation = 0
      @in_event = false
      @window = 0
      @old_x = 0
      @old_y = 0
      super()
      @rectangles = Array.typed(Rectangle).new(0) { nil }
      @proportions = @rectangles
      @cursor_orientation = SWT::NONE
      @in_event = false
      if ((display).nil?)
        display = Display.get_current
      end
      if ((display).nil?)
        display = Display.get_default
      end
      if (!display.is_valid_thread)
        error(SWT::ERROR_THREAD_INVALID_ACCESS)
      end
      self.attr_style = check_style(style)
      self.attr_display = display
    end
    
    typesig { [ControlListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control is moved or resized, by sending
    # it one of the messages defined in the <code>ControlListener</code>
    # interface.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see ControlListener
    # @see #removeControlListener
    def add_control_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Resize, typed_listener)
      add_listener(SWT::Move, typed_listener)
    end
    
    typesig { [KeyListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when keys are pressed and released on the system keyboard, by sending
    # it one of the messages defined in the <code>KeyListener</code>
    # interface.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see KeyListener
    # @see #removeKeyListener
    def add_key_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::KeyUp, typed_listener)
      add_listener(SWT::KeyDown, typed_listener)
    end
    
    typesig { [] }
    def adjust_move_cursor
      if ((@bounds).nil?)
        return nil
      end
      new_x = @bounds.attr_x + @bounds.attr_width / 2
      new_y = @bounds.attr_y
      # Convert to screen coordinates if needed
      if (!(@parent).nil?)
        pt = @parent.to_display(new_x, new_y)
        new_x = pt.attr_x
        new_y = pt.attr_y
      end
      pt = CGPoint.new
      pt.attr_x = new_x
      pt.attr_y = new_y
      OS._cgwarp_mouse_cursor_position(pt)
      return Point.new(RJava.cast_to_int(pt.attr_x), RJava.cast_to_int(pt.attr_y))
    end
    
    typesig { [::Java::Boolean] }
    def adjust_resize_cursor(move_pointer)
      if ((@bounds).nil?)
        return nil
      end
      new_x = 0
      new_y = 0
      if (!((@cursor_orientation & SWT::LEFT)).equal?(0))
        new_x = @bounds.attr_x
      else
        if (!((@cursor_orientation & SWT::RIGHT)).equal?(0))
          new_x = @bounds.attr_x + @bounds.attr_width
        else
          new_x = @bounds.attr_x + @bounds.attr_width / 2
        end
      end
      if (!((@cursor_orientation & SWT::UP)).equal?(0))
        new_y = @bounds.attr_y
      else
        if (!((@cursor_orientation & SWT::DOWN)).equal?(0))
          new_y = @bounds.attr_y + @bounds.attr_height
        else
          new_y = @bounds.attr_y + @bounds.attr_height / 2
        end
      end
      # Convert to screen coordinates if needed
      if (!(@parent).nil?)
        pt = @parent.to_display(new_x, new_y)
        new_x = pt.attr_x
        new_y = pt.attr_y
      end
      if (move_pointer)
        pt = CGPoint.new
        pt.attr_x = new_x
        pt.attr_y = new_y
        OS._cgwarp_mouse_cursor_position(pt)
      end
      # If the client has not provided a custom cursor then determine
      # the appropriate resize cursor.
      if ((@client_cursor).nil?)
        new_cursor = nil
        case (@cursor_orientation)
        when SWT::UP
          new_cursor = Cursor.new(self.attr_display, SWT::CURSOR_SIZENS)
        when SWT::DOWN
          new_cursor = Cursor.new(self.attr_display, SWT::CURSOR_SIZENS)
        when SWT::LEFT
          new_cursor = Cursor.new(self.attr_display, SWT::CURSOR_SIZEWE)
        when SWT::RIGHT
          new_cursor = Cursor.new(self.attr_display, SWT::CURSOR_SIZEWE)
        when SWT::LEFT | SWT::UP
          new_cursor = Cursor.new(self.attr_display, SWT::CURSOR_SIZENWSE)
        when SWT::RIGHT | SWT::DOWN
          new_cursor = Cursor.new(self.attr_display, SWT::CURSOR_SIZENWSE)
        when SWT::LEFT | SWT::DOWN
          new_cursor = Cursor.new(self.attr_display, SWT::CURSOR_SIZENESW)
        when SWT::RIGHT | SWT::UP
          new_cursor = Cursor.new(self.attr_display, SWT::CURSOR_SIZENESW)
        else
          new_cursor = Cursor.new(self.attr_display, SWT::CURSOR_SIZEALL)
        end
        self.attr_display.set_cursor(new_cursor.attr_handle)
        if (!(@resize_cursor).nil?)
          @resize_cursor.dispose
        end
        @resize_cursor = new_cursor
      end
      return Point.new(new_x, new_y)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        if (((style & (SWT::LEFT | SWT::RIGHT | SWT::UP | SWT::DOWN))).equal?(0))
          style |= SWT::LEFT | SWT::RIGHT | SWT::UP | SWT::DOWN
        end
        return style
      end
    }
    
    typesig { [] }
    # Stops displaying the tracker rectangles.  Note that this is not considered
    # to be a cancelation by the user.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def close
      check_widget
      @tracking = false
    end
    
    typesig { [] }
    def compute_bounds
      if ((@rectangles.attr_length).equal?(0))
        return nil
      end
      x_min = @rectangles[0].attr_x
      y_min = @rectangles[0].attr_y
      x_max = @rectangles[0].attr_x + @rectangles[0].attr_width
      y_max = @rectangles[0].attr_y + @rectangles[0].attr_height
      i = 1
      while i < @rectangles.attr_length
        if (@rectangles[i].attr_x < x_min)
          x_min = @rectangles[i].attr_x
        end
        if (@rectangles[i].attr_y < y_min)
          y_min = @rectangles[i].attr_y
        end
        rect_right = @rectangles[i].attr_x + @rectangles[i].attr_width
        if (rect_right > x_max)
          x_max = rect_right
        end
        rect_bottom = @rectangles[i].attr_y + @rectangles[i].attr_height
        if (rect_bottom > y_max)
          y_max = rect_bottom
        end
        ((i += 1) - 1)
      end
      return Rectangle.new(x_min, y_min, x_max - x_min, y_max - y_min)
    end
    
    typesig { [Array.typed(Rectangle)] }
    def compute_proportions(rects)
      result = Array.typed(Rectangle).new(rects.attr_length) { nil }
      @bounds = compute_bounds
      if (!(@bounds).nil?)
        i = 0
        while i < rects.attr_length
          x = 0
          y = 0
          width = 0
          height = 0
          if (!(@bounds.attr_width).equal?(0))
            x = (rects[i].attr_x - @bounds.attr_x) * 100 / @bounds.attr_width
            width = rects[i].attr_width * 100 / @bounds.attr_width
          else
            width = 100
          end
          if (!(@bounds.attr_height).equal?(0))
            y = (rects[i].attr_y - @bounds.attr_y) * 100 / @bounds.attr_height
            height = rects[i].attr_height * 100 / @bounds.attr_height
          else
            height = 100
          end
          result[i] = Rectangle.new(x, y, width, height)
          ((i += 1) - 1)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, Array.typed(Rectangle), ::Java::Boolean] }
    def draw_rectangles(window, rects, erase)
      context = Array.typed(::Java::Int).new(1) { 0 }
      port = OS._get_window_port(window)
      port_rect = Rect.new
      OS._get_port_bounds(port, port_rect)
      OS._qdbegin_cgcontext(port, context)
      OS._cgcontext_scale_ctm(context[0], 1, -1)
      OS._cgcontext_translate_ctm(context[0], 0, port_rect.attr_top - port_rect.attr_bottom)
      cg_rect = CGRect.new
      parent_origin = nil
      if (!(@parent).nil?)
        parent_origin = self.attr_display.map(@parent, nil, 0, 0)
      else
        parent_origin = Point.new(0, 0)
      end
      i = 0
      while i < rects.attr_length
        rect = rects[i]
        cg_rect.attr_x = rect.attr_x + parent_origin.attr_x
        cg_rect.attr_y = rect.attr_y + parent_origin.attr_y
        cg_rect.attr_width = rect.attr_width
        cg_rect.attr_height = rect.attr_height
        if (erase)
          ((cg_rect.attr_width += 1) - 1)
          ((cg_rect.attr_height += 1) - 1)
          OS._cgcontext_clear_rect(context[0], cg_rect)
        else
          cg_rect.attr_x += 0.5
          cg_rect.attr_y += 0.5
          OS._cgcontext_stroke_rect(context[0], cg_rect)
        end
        ((i += 1) - 1)
      end
      OS._cgcontext_synchronize(context[0])
      OS._qdend_cgcontext(port, context)
    end
    
    typesig { [] }
    # Returns the bounds that are being drawn, expressed relative to the parent
    # widget.  If the parent is a <code>Display</code> then these are screen
    # coordinates.
    # 
    # @return the bounds of the Rectangles being drawn
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_rectangles
      check_widget
      result = Array.typed(Rectangle).new(@rectangles.attr_length) { nil }
      i = 0
      while i < @rectangles.attr_length
        current = @rectangles[i]
        result[i] = Rectangle.new(current.attr_x, current.attr_y, current.attr_width, current.attr_height)
        ((i += 1) - 1)
      end
      return result
    end
    
    typesig { [] }
    # Returns <code>true</code> if the rectangles are drawn with a stippled line, <code>false</code> otherwise.
    # 
    # @return the stippled effect of the rectangles
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_stippled
      check_widget
      return @stippled
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse(event_kind, next_handler, the_event, user_data)
      sizeof = Org::Eclipse::Swt::Internal::Carbon::Point.attr_sizeof
      where = Org::Eclipse::Swt::Internal::Carbon::Point.new
      OS._get_event_parameter(the_event, OS.attr_k_event_param_mouse_location, OS.attr_type_qdpoint, nil, sizeof, nil, where)
      new_x = where.attr_h
      new_y = where.attr_v
      if (!(new_x).equal?(@old_x) || !(new_y).equal?(@old_y))
        old_rectangles = @rectangles
        rects_to_erase = Array.typed(Rectangle).new(@rectangles.attr_length) { nil }
        i = 0
        while i < @rectangles.attr_length
          current = @rectangles[i]
          rects_to_erase[i] = Rectangle.new(current.attr_x, current.attr_y, current.attr_width, current.attr_height)
          ((i += 1) - 1)
        end
        event = Event.new
        event.attr_x = new_x
        event.attr_y = new_y
        if (!((self.attr_style & SWT::RESIZE)).equal?(0))
          orientation_init = resize_rectangles(new_x - @old_x, new_y - @old_y)
          @in_event = true
          send_event(SWT::Resize, event)
          @in_event = false
          # It is possible (but unlikely), that application
          # code could have disposed the widget in the move
          # event.  If this happens, return false to indicate
          # that the tracking has failed.
          if (is_disposed)
            @cancelled = true
            return OS.attr_no_err
          end
          draw = false
          # It is possible that application code could have
          # changed the rectangles in the resize event.  If this
          # happens then only redraw the tracker if the rectangle
          # values have changed.
          if (!(@rectangles).equal?(old_rectangles))
            length = @rectangles.attr_length
            if (!(length).equal?(rects_to_erase.attr_length))
              draw = true
            else
              i_ = 0
              while i_ < length
                if (!(@rectangles[i_] == rects_to_erase[i_]))
                  draw = true
                  break
                end
                ((i_ += 1) - 1)
              end
            end
          else
            draw = true
          end
          if (draw)
            draw_rectangles(@window, rects_to_erase, true)
            draw_rectangles(@window, @rectangles, false)
          end
          cursor_pos = adjust_resize_cursor(orientation_init)
          if (!(cursor_pos).nil?)
            new_x = cursor_pos.attr_x
            new_y = cursor_pos.attr_y
          end
        else
          move_rectangles(new_x - @old_x, new_y - @old_y)
          @in_event = true
          send_event(SWT::Move, event)
          @in_event = false
          # It is possible (but unlikely), that application
          # code could have disposed the widget in the move
          # event.  If this happens, return false to indicate
          # that the tracking has failed.
          if (is_disposed)
            @cancelled = true
            return OS.attr_no_err
          end
          draw = false
          # It is possible that application code could have
          # changed the rectangles in the move event.  If this
          # happens then only redraw the tracker if the rectangle
          # values have changed.
          if (!(@rectangles).equal?(old_rectangles))
            length = @rectangles.attr_length
            if (!(length).equal?(rects_to_erase.attr_length))
              draw = true
            else
              i_ = 0
              while i_ < length
                if (!(@rectangles[i_] == rects_to_erase[i_]))
                  draw = true
                  break
                end
                ((i_ += 1) - 1)
              end
            end
          else
            draw = true
          end
          if (draw)
            draw_rectangles(@window, rects_to_erase, true)
            draw_rectangles(@window, @rectangles, false)
          end
        end
        @old_x = new_x
        @old_y = new_y
      end
      @tracking = !(event_kind).equal?(OS.attr_k_event_mouse_up)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_dragged(next_handler, the_event, user_data)
      return k_event_mouse(OS.attr_k_event_mouse_dragged, next_handler, the_event, user_data)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_raw_key_pressed(next_handler, the_event, user_data)
      if (!send_key_event(SWT::KeyDown, the_event))
        return OS.attr_no_err
      end
      key_code = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_key_code, OS.attr_type_uint32, nil, key_code.attr_length * 4, nil, key_code)
      modifiers = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, 4, nil, modifiers)
      step_size = !((modifiers[0] & OS.attr_control_key)).equal?(0) ? STEPSIZE_SMALL : STEPSIZE_LARGE
      x_change = 0
      y_change = 0
      case (key_code[0])
      # KP Enter
      when 53
        # Esc
        @cancelled = true
        @tracking = false
      when 76, 36
        # Return
        @tracking = false
      when 123
        # Left arrow
        x_change = -step_size
      when 124
        # Right arrow
        x_change = step_size
      when 126
        # Up arrow
        y_change = -step_size
      when 125
        # Down arrow
        y_change = step_size
      end
      if (!(x_change).equal?(0) || !(y_change).equal?(0))
        old_rectangles = @rectangles
        rects_to_erase = Array.typed(Rectangle).new(@rectangles.attr_length) { nil }
        i = 0
        while i < @rectangles.attr_length
          current = @rectangles[i]
          rects_to_erase[i] = Rectangle.new(current.attr_x, current.attr_y, current.attr_width, current.attr_height)
          ((i += 1) - 1)
        end
        event = Event.new
        new_x = @old_x + x_change
        new_y = @old_y + y_change
        event.attr_x = new_x
        event.attr_y = new_y
        cursor_pos = nil
        if (!((self.attr_style & SWT::RESIZE)).equal?(0))
          resize_rectangles(x_change, y_change)
          @in_event = true
          send_event(SWT::Resize, event)
          @in_event = false
          # It is possible (but unlikely) that application
          # code could have disposed the widget in the move
          # event.  If this happens return false to indicate
          # that the tracking has failed.
          if (is_disposed)
            @cancelled = true
            return OS.attr_no_err
          end
          draw = false
          # It is possible that application code could have
          # changed the rectangles in the resize event.  If this
          # happens then only redraw the tracker if the rectangle
          # values have changed.
          if (!(@rectangles).equal?(old_rectangles))
            length = @rectangles.attr_length
            if (!(length).equal?(rects_to_erase.attr_length))
              draw = true
            else
              i_ = 0
              while i_ < length
                if (!(@rectangles[i_] == rects_to_erase[i_]))
                  draw = true
                  break
                end
                ((i_ += 1) - 1)
              end
            end
          else
            draw = true
          end
          if (draw)
            draw_rectangles(@window, rects_to_erase, true)
            draw_rectangles(@window, @rectangles, false)
          end
          cursor_pos = adjust_resize_cursor(true)
        else
          move_rectangles(x_change, y_change)
          @in_event = true
          send_event(SWT::Move, event)
          @in_event = false
          # It is possible (but unlikely) that application
          # code could have disposed the widget in the move
          # event.  If this happens return false to indicate
          # that the tracking has failed.
          if (is_disposed)
            @cancelled = true
            return OS.attr_no_err
          end
          draw = false
          # It is possible that application code could have
          # changed the rectangles in the move event.  If this
          # happens then only redraw the tracker if the rectangle
          # values have changed.
          if (!(@rectangles).equal?(old_rectangles))
            length = @rectangles.attr_length
            if (!(length).equal?(rects_to_erase.attr_length))
              draw = true
            else
              i_ = 0
              while i_ < length
                if (!(@rectangles[i_] == rects_to_erase[i_]))
                  draw = true
                  break
                end
                ((i_ += 1) - 1)
              end
            end
          else
            draw = true
          end
          if (draw)
            draw_rectangles(@window, rects_to_erase, true)
            draw_rectangles(@window, @rectangles, false)
          end
          cursor_pos = adjust_move_cursor
        end
        if (!(cursor_pos).nil?)
          @old_x = cursor_pos.attr_x
          @old_y = cursor_pos.attr_y
        end
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_moved(next_handler, the_event, user_data)
      return k_event_mouse(OS.attr_k_event_mouse_moved, next_handler, the_event, user_data)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_up(next_handler, the_event, user_data)
      return k_event_mouse(OS.attr_k_event_mouse_up, next_handler, the_event, user_data)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def move_rectangles(x_change, y_change)
      if ((@bounds).nil?)
        return
      end
      if (x_change < 0 && (((self.attr_style & SWT::LEFT)).equal?(0)))
        x_change = 0
      end
      if (x_change > 0 && (((self.attr_style & SWT::RIGHT)).equal?(0)))
        x_change = 0
      end
      if (y_change < 0 && (((self.attr_style & SWT::UP)).equal?(0)))
        y_change = 0
      end
      if (y_change > 0 && (((self.attr_style & SWT::DOWN)).equal?(0)))
        y_change = 0
      end
      if ((x_change).equal?(0) && (y_change).equal?(0))
        return
      end
      @bounds.attr_x += x_change
      @bounds.attr_y += y_change
      i = 0
      while i < @rectangles.attr_length
        @rectangles[i].attr_x += x_change
        @rectangles[i].attr_y += y_change
        ((i += 1) - 1)
      end
    end
    
    typesig { [] }
    # Displays the Tracker rectangles for manipulation by the user.  Returns when
    # the user has either finished manipulating the rectangles or has cancelled the
    # Tracker.
    # 
    # @return <code>true</code> if the user did not cancel the Tracker, <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def open
      check_widget
      @cancelled = false
      @tracking = true
      @window = self.attr_display.create_overlay_window
      OS._show_window(@window)
      draw_rectangles(@window, @rectangles, false)
      # If exactly one of UP/DOWN is specified as a style then set the cursor
      # orientation accordingly (the same is done for LEFT/RIGHT styles below).
      v_style = self.attr_style & (SWT::UP | SWT::DOWN)
      if ((v_style).equal?(SWT::UP) || (v_style).equal?(SWT::DOWN))
        @cursor_orientation |= v_style
      end
      h_style = self.attr_style & (SWT::LEFT | SWT::RIGHT)
      if ((h_style).equal?(SWT::LEFT) || (h_style).equal?(SWT::RIGHT))
        @cursor_orientation |= h_style
      end
      cursor_pos = nil
      if (OS._still_down)
        pt = Org::Eclipse::Swt::Internal::Carbon::Point.new
        OS._get_global_mouse(pt)
        cursor_pos = Point.new(pt.attr_h, pt.attr_v)
      else
        if (!((self.attr_style & SWT::RESIZE)).equal?(0))
          cursor_pos = adjust_resize_cursor(true)
        else
          cursor_pos = adjust_move_cursor
        end
      end
      if (!(cursor_pos).nil?)
        @old_x = cursor_pos.attr_x
        @old_y = cursor_pos.attr_y
      end
      # Tracker behaves like a Dialog with its own OS event loop.
      out_event = Array.typed(::Java::Int).new(1) { 0 }
      while (@tracking && !@cancelled)
        status = OS._receive_next_event(0, nil, OS.attr_k_event_duration_no_wait, true, out_event)
        if (!(status).equal?(OS.attr_no_err))
          next
        end
        event = out_event[0]
        event_class = OS._get_event_class(event)
        event_kind = OS._get_event_kind(event)
        next_handler = 0
        case (event_class)
        when OS.attr_k_event_class_mouse
          case (event_kind)
          when OS.attr_k_event_mouse_up
            k_event_mouse_up(next_handler, event, 0)
          when OS.attr_k_event_mouse_moved
            k_event_mouse_moved(next_handler, event, 0)
          when OS.attr_k_event_mouse_dragged
            k_event_mouse_dragged(next_handler, event, 0)
          end
        when OS.attr_k_event_class_keyboard
          case (event_kind)
          when OS.attr_k_event_raw_key_down
            k_event_raw_key_down(next_handler, event, 0)
          when OS.attr_k_event_raw_key_modifiers_changed
            k_event_raw_key_modifiers_changed(next_handler, event, 0)
          when OS.attr_k_event_raw_key_repeat
            k_event_raw_key_repeat(next_handler, event, 0)
          when OS.attr_k_event_raw_key_up
            k_event_raw_key_up(next_handler, event, 0)
          end
        end
        # Don't dispatch mouse and key events in general, EXCEPT once this
        # tracker has finished its work.
        dispatch = true
        if (@tracking && !@cancelled)
          if ((event_class).equal?(OS.attr_k_event_class_mouse))
            dispatch = false
          end
          if ((event_class).equal?(OS.attr_k_event_class_keyboard))
            dispatch = false
          end
        end
        if (dispatch)
          OS._send_event_to_event_target(event, OS._get_event_dispatcher_target)
        end
        OS._release_event(event)
        if (!(@client_cursor).nil? && (@resize_cursor).nil?)
          self.attr_display.set_cursor(@client_cursor.attr_handle)
        end
      end
      if (!is_disposed)
        draw_rectangles(@window, @rectangles, true)
      end
      OS._dispose_window(@window)
      @tracking = false
      @window = 0
      return !@cancelled
    end
    
    typesig { [] }
    def release_widget
      super
      @parent = nil
      @rectangles = @proportions = nil
      @bounds = nil
    end
    
    typesig { [ControlListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the control is moved or resized.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see ControlListener
    # @see #addControlListener
    def remove_control_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Resize, listener)
      self.attr_event_table.unhook(SWT::Move, listener)
    end
    
    typesig { [KeyListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when keys are pressed and released on the system keyboard.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see KeyListener
    # @see #addKeyListener
    def remove_key_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::KeyUp, listener)
      self.attr_event_table.unhook(SWT::KeyDown, listener)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns true if the pointer's orientation was initialized in some dimension,
    # and false otherwise.
    def resize_rectangles(x_change, y_change)
      if ((@bounds).nil?)
        return false
      end
      orientation_init = false
      # If the cursor orientation has not been set in the orientation of
      # this change then try to set it here.
      if (x_change < 0 && (!((self.attr_style & SWT::LEFT)).equal?(0)) && (((@cursor_orientation & SWT::RIGHT)).equal?(0)))
        if (((@cursor_orientation & SWT::LEFT)).equal?(0))
          @cursor_orientation |= SWT::LEFT
          orientation_init = true
        end
      end
      if (x_change > 0 && (!((self.attr_style & SWT::RIGHT)).equal?(0)) && (((@cursor_orientation & SWT::LEFT)).equal?(0)))
        if (((@cursor_orientation & SWT::RIGHT)).equal?(0))
          @cursor_orientation |= SWT::RIGHT
          orientation_init = true
        end
      end
      if (y_change < 0 && (!((self.attr_style & SWT::UP)).equal?(0)) && (((@cursor_orientation & SWT::DOWN)).equal?(0)))
        if (((@cursor_orientation & SWT::UP)).equal?(0))
          @cursor_orientation |= SWT::UP
          orientation_init = true
        end
      end
      if (y_change > 0 && (!((self.attr_style & SWT::DOWN)).equal?(0)) && (((@cursor_orientation & SWT::UP)).equal?(0)))
        if (((@cursor_orientation & SWT::DOWN)).equal?(0))
          @cursor_orientation |= SWT::DOWN
          orientation_init = true
        end
      end
      # If the bounds will flip about the x or y axis then apply the adjustment
      # up to the axis (ie.- where bounds width/height becomes 0), change the
      # cursor's orientation accordingly, and flip each Rectangle's origin (only
      # necessary for > 1 Rectangles)
      if (!((@cursor_orientation & SWT::LEFT)).equal?(0))
        if (x_change > @bounds.attr_width)
          if (((self.attr_style & SWT::RIGHT)).equal?(0))
            return orientation_init
          end
          @cursor_orientation |= SWT::RIGHT
          @cursor_orientation &= ~SWT::LEFT
          @bounds.attr_x += @bounds.attr_width
          x_change -= @bounds.attr_width
          @bounds.attr_width = 0
          if (@proportions.attr_length > 1)
            i = 0
            while i < @proportions.attr_length
              proportion = @proportions[i]
              proportion.attr_x = 100 - proportion.attr_x - proportion.attr_width
              ((i += 1) - 1)
            end
          end
        end
      else
        if (!((@cursor_orientation & SWT::RIGHT)).equal?(0))
          if (@bounds.attr_width < -x_change)
            if (((self.attr_style & SWT::LEFT)).equal?(0))
              return orientation_init
            end
            @cursor_orientation |= SWT::LEFT
            @cursor_orientation &= ~SWT::RIGHT
            x_change += @bounds.attr_width
            @bounds.attr_width = 0
            if (@proportions.attr_length > 1)
              i = 0
              while i < @proportions.attr_length
                proportion = @proportions[i]
                proportion.attr_x = 100 - proportion.attr_x - proportion.attr_width
                ((i += 1) - 1)
              end
            end
          end
        end
      end
      if (!((@cursor_orientation & SWT::UP)).equal?(0))
        if (y_change > @bounds.attr_height)
          if (((self.attr_style & SWT::DOWN)).equal?(0))
            return orientation_init
          end
          @cursor_orientation |= SWT::DOWN
          @cursor_orientation &= ~SWT::UP
          @bounds.attr_y += @bounds.attr_height
          y_change -= @bounds.attr_height
          @bounds.attr_height = 0
          if (@proportions.attr_length > 1)
            i = 0
            while i < @proportions.attr_length
              proportion = @proportions[i]
              proportion.attr_y = 100 - proportion.attr_y - proportion.attr_height
              ((i += 1) - 1)
            end
          end
        end
      else
        if (!((@cursor_orientation & SWT::DOWN)).equal?(0))
          if (@bounds.attr_height < -y_change)
            if (((self.attr_style & SWT::UP)).equal?(0))
              return orientation_init
            end
            @cursor_orientation |= SWT::UP
            @cursor_orientation &= ~SWT::DOWN
            y_change += @bounds.attr_height
            @bounds.attr_height = 0
            if (@proportions.attr_length > 1)
              i = 0
              while i < @proportions.attr_length
                proportion = @proportions[i]
                proportion.attr_y = 100 - proportion.attr_y - proportion.attr_height
                ((i += 1) - 1)
              end
            end
          end
        end
      end
      # apply the bounds adjustment
      if (!((@cursor_orientation & SWT::LEFT)).equal?(0))
        @bounds.attr_x += x_change
        @bounds.attr_width -= x_change
      else
        if (!((@cursor_orientation & SWT::RIGHT)).equal?(0))
          @bounds.attr_width += x_change
        end
      end
      if (!((@cursor_orientation & SWT::UP)).equal?(0))
        @bounds.attr_y += y_change
        @bounds.attr_height -= y_change
      else
        if (!((@cursor_orientation & SWT::DOWN)).equal?(0))
          @bounds.attr_height += y_change
        end
      end
      new_rects = Array.typed(Rectangle).new(@rectangles.attr_length) { nil }
      i = 0
      while i < @rectangles.attr_length
        proportion = @proportions[i]
        new_rects[i] = Rectangle.new(proportion.attr_x * @bounds.attr_width / 100 + @bounds.attr_x, proportion.attr_y * @bounds.attr_height / 100 + @bounds.attr_y, proportion.attr_width * @bounds.attr_width / 100, proportion.attr_height * @bounds.attr_height / 100)
        ((i += 1) - 1)
      end
      @rectangles = new_rects
      return orientation_init
    end
    
    typesig { [Cursor] }
    # Sets the <code>Cursor</code> of the Tracker.  If this cursor is <code>null</code>
    # then the cursor reverts to the default.
    # 
    # @param newCursor the new <code>Cursor</code> to display
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_cursor(new_cursor)
      check_widget
      @client_cursor = new_cursor
      if (!(new_cursor).nil?)
        if (@in_event)
          self.attr_display.set_cursor(new_cursor.attr_handle)
        end
      end
    end
    
    typesig { [Array.typed(Rectangle)] }
    # Specifies the rectangles that should be drawn, expressed relative to the parent
    # widget.  If the parent is a Display then these are screen coordinates.
    # 
    # @param rectangles the bounds of the rectangles to be drawn
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the set of rectangles is null or contains a null rectangle</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_rectangles(rectangles)
      check_widget
      if ((rectangles).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      length = rectangles.attr_length
      @rectangles = Array.typed(Rectangle).new(length) { nil }
      i = 0
      while i < length
        current = rectangles[i]
        if ((current).nil?)
          error(SWT::ERROR_NULL_ARGUMENT)
        end
        @rectangles[i] = Rectangle.new(current.attr_x, current.attr_y, current.attr_width, current.attr_height)
        ((i += 1) - 1)
      end
      @proportions = compute_proportions(rectangles)
    end
    
    typesig { [::Java::Boolean] }
    # Changes the appearance of the line used to draw the rectangles.
    # 
    # @param stippled <code>true</code> if rectangle should appear stippled
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_stippled(stippled)
      check_widget
      @stippled = stippled
    end
    
    private
    alias_method :initialize__tracker, :initialize
  end
  
end
