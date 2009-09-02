require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module TrackerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
  # @noextend This class is not intended to be subclassed by clients.
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
      @window = nil
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
    # @see SWT#RESIZE
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
      @window = nil
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
      self.attr_display.set_cursor_location(new_x, new_y)
      return Point.new(new_x, new_y)
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
        self.attr_display.set_cursor_location(new_x, new_y)
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
        self.attr_display.attr_lock_cursor = false
        new_cursor.attr_handle.set
        self.attr_display.attr_lock_cursor = true
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
        i += 1
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
          i += 1
        end
      end
      return result
    end
    
    typesig { [NSWindow, Array.typed(Rectangle), ::Java::Boolean] }
    def draw_rectangles(window, rects, erase)
      context = window.graphics_context
      NSGraphicsContext.static_save_graphics_state
      NSGraphicsContext.set_current_context(context)
      context.save_graphics_state
      parent_origin = nil
      if (!(@parent).nil?)
        parent_origin = self.attr_display.map(@parent, nil, 0, 0)
      else
        parent_origin = Point.new(0, 0)
      end
      context.set_compositing_operation(erase ? OS::NSCompositeClear : OS::NSCompositeSourceOver)
      rect_frame = NSRect.new
      global_point = NSPoint.new
      # double
      screen_height = self.attr_display.get_primary_frame.attr_height
      i = 0
      while i < rects.attr_length
        rect = rects[i]
        rect_frame.attr_x = rect.attr_x + parent_origin.attr_x
        rect_frame.attr_y = screen_height - RJava.cast_to_int(((rect.attr_y + parent_origin.attr_y) + rect.attr_height))
        rect_frame.attr_width = rect.attr_width
        rect_frame.attr_height = rect.attr_height
        global_point.attr_x = rect_frame.attr_x
        global_point.attr_y = rect_frame.attr_y
        global_point = window.convert_screen_to_base(global_point)
        rect_frame.attr_x = global_point.attr_x
        rect_frame.attr_y = global_point.attr_y
        if (erase)
          rect_frame.attr_width += 1
          rect_frame.attr_height += 1
          NSBezierPath.fill_rect(rect_frame)
        else
          rect_frame.attr_x += 0.5
          rect_frame.attr_y += 0.5
          NSBezierPath.stroke_rect(rect_frame)
        end
        i += 1
      end
      if (!erase)
        context.flush_graphics
      end
      context.restore_graphics_state
      NSGraphicsContext.static_restore_graphics_state
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
        i += 1
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
    
    typesig { [NSEvent] }
    def mouse(ns_event)
      location = nil
      if ((ns_event).nil? || (ns_event.type).equal?(OS::NSMouseMoved))
        location = NSEvent.mouse_location
      else
        location = ns_event.location_in_window
        location = ns_event.window.convert_base_to_screen(location)
      end
      location.attr_y = self.attr_display.get_primary_frame.attr_height - location.attr_y
      new_x = RJava.cast_to_int(location.attr_x)
      new_y = RJava.cast_to_int(location.attr_y)
      if (!(new_x).equal?(@old_x) || !(new_y).equal?(@old_y))
        old_rectangles = @rectangles
        rects_to_erase = Array.typed(Rectangle).new(@rectangles.attr_length) { nil }
        i = 0
        while i < @rectangles.attr_length
          current = @rectangles[i]
          rects_to_erase[i] = Rectangle.new(current.attr_x, current.attr_y, current.attr_width, current.attr_height)
          i += 1
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
            return
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
                i_ += 1
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
            return
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
                i_ += 1
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
      # 64
      case (RJava.cast_to_int(ns_event.type))
      when OS::NSLeftMouseUp, OS::NSRightMouseUp, OS::NSOtherMouseUp
        @tracking = false
      end
    end
    
    typesig { [NSEvent] }
    def key(ns_event)
      # TODO send event
      # if (!sendKeyEvent (SWT.KeyDown, theEvent)) return OS.noErr;
      # long
      modifier_flags_ = ns_event.modifier_flags
      step_size = !((modifier_flags_ & OS::NSControlKeyMask)).equal?(0) ? STEPSIZE_SMALL : STEPSIZE_LARGE
      x_change = 0
      y_change = 0
      case (ns_event.key_code)
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
          i += 1
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
            return
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
                i_ += 1
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
            return
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
                i_ += 1
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
        i += 1
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
      display = self.attr_display
      @cancelled = false
      @tracking = true
      @window = NSWindow.new.alloc
      screens_ = NSScreen.screens
      # double
      min_x = Float::MAX_VALUE
      max_x = Float::MIN_VALUE
      # double
      min_y = Float::MAX_VALUE
      max_y = Float::MIN_VALUE
      # 64
      count_ = RJava.cast_to_int(screens_.count)
      i = 0
      while i < count_
        screen = NSScreen.new(screens_.object_at_index(i))
        frame_ = screen.frame
        # double
        x1 = frame_.attr_x
        x2 = frame_.attr_x + frame_.attr_width
        # double
        y1 = frame_.attr_y
        y2 = frame_.attr_y + frame_.attr_height
        if (x1 < min_x)
          min_x = x1
        end
        if (x2 < min_x)
          min_x = x2
        end
        if (x1 > max_x)
          max_x = x1
        end
        if (x2 > max_x)
          max_x = x2
        end
        if (y1 < min_y)
          min_y = y1
        end
        if (y2 < min_y)
          min_y = y2
        end
        if (y1 > max_y)
          max_y = y1
        end
        if (y2 > max_y)
          max_y = y2
        end
        i += 1
      end
      frame_ = NSRect.new
      frame_.attr_x = min_x
      frame_.attr_y = min_y
      frame_.attr_width = max_x - min_x
      frame_.attr_height = max_y - min_y
      @window = @window.init_with_content_rect(frame_, OS::NSBorderlessWindowMask, OS::NSBackingStoreBuffered, false)
      @window.set_opaque(false)
      @window.set_content_view(nil)
      @window.set_background_color(NSColor.clear_color)
      context = @window.graphics_context
      NSGraphicsContext.static_save_graphics_state
      NSGraphicsContext.set_current_context(context)
      context.set_compositing_operation(OS::NSCompositeClear)
      frame_.attr_x = frame_.attr_y = 0
      NSBezierPath.fill_rect(frame_)
      NSGraphicsContext.static_restore_graphics_state
      @window.order_front_regardless
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
      down = false
      application = NSApplication.shared_application
      current_event_ = application.current_event
      if (!(current_event_).nil?)
        # 64
        case (RJava.cast_to_int(current_event_.type))
        when OS::NSLeftMouseDown, OS::NSLeftMouseDragged, OS::NSRightMouseDown, OS::NSRightMouseDragged, OS::NSOtherMouseDown, OS::NSOtherMouseDragged
          down = true
        end
      end
      if (down)
        cursor_pos = display.get_cursor_location
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
      old_tracking_control = display.attr_tracking_control
      display.attr_tracking_control = nil
      # Tracker behaves like a Dialog with its own OS event loop.
      while (@tracking && !@cancelled)
        display.add_pool
        begin
          event = application.next_event_matching_mask(0, NSDate.distant_future, OS::NSDefaultRunLoopMode, true)
          if ((event).nil?)
            next
          end
          # 64
          type_ = RJava.cast_to_int(event.type)
          case (type_)
          # case OS.NSKeyUp:
          when OS::NSLeftMouseUp, OS::NSRightMouseUp, OS::NSOtherMouseUp, OS::NSMouseMoved, OS::NSLeftMouseDragged, OS::NSRightMouseDragged, OS::NSOtherMouseDragged
            mouse(event)
          when OS::NSKeyDown, OS::NSFlagsChanged
            key(event)
          end
          dispatch = true
          case (type_)
          when OS::NSLeftMouseDown, OS::NSLeftMouseUp, OS::NSRightMouseDown, OS::NSRightMouseUp, OS::NSOtherMouseDown, OS::NSOtherMouseUp, OS::NSMouseMoved, OS::NSLeftMouseDragged, OS::NSRightMouseDragged, OS::NSOtherMouseDragged, OS::NSMouseEntered, OS::NSMouseExited, OS::NSKeyDown, OS::NSKeyUp, OS::NSFlagsChanged
            dispatch = false
          end
          if (dispatch)
            application.send_event(event)
          end
          if (!(@client_cursor).nil? && (@resize_cursor).nil?)
            display.attr_lock_cursor = false
            @client_cursor.attr_handle.set
            display.attr_lock_cursor = true
          end
        ensure
          display.remove_pool
        end
      end
      if (!(old_tracking_control).nil? && !old_tracking_control.is_disposed)
        display.attr_tracking_control = old_tracking_control
      end
      display.set_cursor(display.find_control(true))
      if (!is_disposed)
        draw_rectangles(@window, @rectangles, true)
      end
      if (!(@window).nil?)
        @window.close
      end
      @tracking = false
      @window = nil
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
              i += 1
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
                i += 1
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
              i += 1
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
                i += 1
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
        i += 1
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
        self.attr_display.attr_lock_cursor = false
        if (@in_event)
          new_cursor.attr_handle.set
        end
        self.attr_display.attr_lock_cursor = true
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
        i += 1
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
