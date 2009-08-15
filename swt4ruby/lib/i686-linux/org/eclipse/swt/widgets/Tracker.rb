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
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
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
    
    attr_accessor :cursor
    alias_method :attr_cursor, :cursor
    undef_method :cursor
    alias_method :attr_cursor=, :cursor=
    undef_method :cursor=
    
    # long
    attr_accessor :last_cursor
    alias_method :attr_last_cursor, :last_cursor
    undef_method :last_cursor
    alias_method :attr_last_cursor=, :last_cursor=
    undef_method :last_cursor=
    
    attr_accessor :window
    alias_method :attr_window, :window
    undef_method :window
    alias_method :attr_window=, :window=
    undef_method :window=
    
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
    
    attr_accessor :grabbed
    alias_method :attr_grabbed, :grabbed
    undef_method :grabbed
    alias_method :attr_grabbed=, :grabbed=
    undef_method :grabbed=
    
    attr_accessor :stippled
    alias_method :attr_stippled, :stippled
    undef_method :stippled
    alias_method :attr_stippled=, :stippled=
    undef_method :stippled=
    
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
      @cursor = nil
      @last_cursor = 0
      @window = 0
      @tracking = false
      @cancelled = false
      @grabbed = false
      @stippled = false
      @rectangles = nil
      @proportions = nil
      @bounds = nil
      @cursor_orientation = 0
      @old_x = 0
      @old_y = 0
      super(parent, check_style(style))
      @rectangles = Array.typed(Rectangle).new(0) { nil }
      @proportions = @rectangles
      @cursor_orientation = SWT::NONE
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
      @cursor = nil
      @last_cursor = 0
      @window = 0
      @tracking = false
      @cancelled = false
      @grabbed = false
      @stippled = false
      @rectangles = nil
      @proportions = nil
      @bounds = nil
      @cursor_orientation = 0
      @old_x = 0
      @old_y = 0
      super()
      @rectangles = Array.typed(Rectangle).new(0) { nil }
      @proportions = @rectangles
      @cursor_orientation = SWT::NONE
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
      point = self.attr_display.map(@parent, nil, new_x, new_y)
      self.attr_display.set_cursor_location(point)
      # The call to XWarpPointer does not always place the pointer on the
      # exact location that is specified, so do a query (below) to get the
      # actual location of the pointer after it has been moved.
      actual_x = Array.typed(::Java::Int).new(1) { 0 }
      actual_y = Array.typed(::Java::Int).new(1) { 0 }
      state = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_pointer(@window, actual_x, actual_y, state)
      return Point.new(actual_x[0], actual_y[0])
    end
    
    typesig { [] }
    def adjust_resize_cursor
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
      point = self.attr_display.map(@parent, nil, new_x, new_y)
      self.attr_display.set_cursor_location(point)
      # The call to XWarpPointer does not always place the pointer on the
      # exact location that is specified, so do a query (below) to get the
      # actual location of the pointer after it has been moved.
      actual_x = Array.typed(::Java::Int).new(1) { 0 }
      actual_y = Array.typed(::Java::Int).new(1) { 0 }
      state = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_pointer(@window, actual_x, actual_y, state)
      return Point.new(actual_x[0], actual_y[0])
    end
    
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
    
    typesig { [Array.typed(Rectangle)] }
    def draw_rectangles(rects)
      # long
      window = OS._gdk_root_parent
      if (!(@parent).nil?)
        window = OS._gtk_widget_window(@parent.paint_handle)
      end
      if ((window).equal?(0))
        return
      end
      # long
      gc = OS.gdk_gc_new(window)
      if ((gc).equal?(0))
        return
      end
      # long
      colormap = OS.gdk_colormap_get_system
      color = GdkColor.new
      OS.gdk_color_white(colormap, color)
      OS.gdk_gc_set_foreground(gc, color)
      OS.gdk_gc_set_subwindow(gc, OS::GDK_INCLUDE_INFERIORS)
      OS.gdk_gc_set_function(gc, OS::GDK_XOR)
      i = 0
      while i < rects.attr_length
        rect = rects[i]
        x = rect.attr_x
        if (!(@parent).nil? && !((@parent.attr_style & SWT::MIRRORED)).equal?(0))
          x = @parent.get_client_width - rect.attr_width - x
        end
        OS.gdk_draw_rectangle(window, gc, 0, x, rect.attr_y, rect.attr_width, rect.attr_height)
        i += 1
      end
      OS.g_object_unref(gc)
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
    
    typesig { [] }
    def grab
      # long
      cursor = !(@cursor).nil? ? @cursor.attr_handle : 0
      result = OS.gdk_pointer_grab(@window, false, OS::GDK_POINTER_MOTION_MASK | OS::GDK_BUTTON_RELEASE_MASK, @window, cursor, OS::GDK_CURRENT_TIME)
      return (result).equal?(OS::GDK_GRAB_SUCCESS)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_button_release_event(widget, event)
      return gtk_mouse(OS::GDK_BUTTON_RELEASE, widget, event)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_key_press_event(widget, event_ptr)
      # long
      result = super(widget, event_ptr)
      if (!(result).equal?(0))
        return result
      end
      key_event = GdkEventKey.new
      OS.memmove(key_event, event_ptr, GdkEventKey.attr_sizeof)
      step_size = (!((key_event.attr_state & OS::GDK_CONTROL_MASK)).equal?(0)) ? STEPSIZE_SMALL : STEPSIZE_LARGE
      x_change = 0
      y_change = 0
      case (key_event.attr_keyval)
      # fallthrough
      when OS::GDK_Escape
        @cancelled = true
        @tracking = false
      when OS::GDK_Return
        @tracking = false
      when OS::GDK_Left
        x_change = -step_size
      when OS::GDK_Right
        x_change = step_size
      when OS::GDK_Up
        y_change = -step_size
      when OS::GDK_Down
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
        event.attr_x = @old_x + x_change
        event.attr_y = @old_y + y_change
        if (!(@parent).nil? && !((@parent.attr_style & SWT::MIRRORED)).equal?(0))
          event.attr_x = @parent.get_client_width - event.attr_width - event.attr_x
        end
        if (!((self.attr_style & SWT::RESIZE)).equal?(0))
          resize_rectangles(x_change, y_change)
          send_event(SWT::Resize, event)
          # It is possible (but unlikely) that application
          # code could have disposed the widget in the resize
          # event.  If this happens return false to indicate
          # that the tracking has failed.
          if (is_disposed)
            @cancelled = true
            return 1
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
            draw_rectangles(rects_to_erase)
            update
            draw_rectangles(@rectangles)
          end
          cursor_pos = adjust_resize_cursor
          if (!(cursor_pos).nil?)
            @old_x = cursor_pos.attr_x
            @old_y = cursor_pos.attr_y
          end
        else
          move_rectangles(x_change, y_change)
          send_event(SWT::Move, event)
          # It is possible (but unlikely) that application
          # code could have disposed the widget in the move
          # event.  If this happens return false to indicate
          # that the tracking has failed.
          if (is_disposed)
            @cancelled = true
            return 1
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
            draw_rectangles(rects_to_erase)
            update
            draw_rectangles(@rectangles)
          end
          cursor_pos = adjust_move_cursor
          if (!(cursor_pos).nil?)
            @old_x = cursor_pos.attr_x
            @old_y = cursor_pos.attr_y
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_motion_notify_event(widget, event_ptr)
      # long
      cursor = !(@cursor).nil? ? @cursor.attr_handle : 0
      if (!(cursor).equal?(@last_cursor))
        ungrab
        @grabbed = grab
        @last_cursor = cursor
      end
      return gtk_mouse(OS::GDK_MOTION_NOTIFY, widget, event_ptr)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_mouse(event_type, widget, event_ptr)
      new_x = Array.typed(::Java::Int).new(1) { 0 }
      new_y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_pointer(@window, new_x, new_y, nil)
      if (!(@old_x).equal?(new_x[0]) || !(@old_y).equal?(new_y[0]))
        old_rectangles = @rectangles
        rects_to_erase = Array.typed(Rectangle).new(@rectangles.attr_length) { nil }
        i = 0
        while i < @rectangles.attr_length
          current = @rectangles[i]
          rects_to_erase[i] = Rectangle.new(current.attr_x, current.attr_y, current.attr_width, current.attr_height)
          i += 1
        end
        event = Event.new
        if ((@parent).nil?)
          event.attr_x = new_x[0]
          event.attr_y = new_y[0]
        else
          screen_coord = self.attr_display.map(@parent, nil, new_x[0], new_y[0])
          event.attr_x = screen_coord.attr_x
          event.attr_y = screen_coord.attr_y
        end
        if (!((self.attr_style & SWT::RESIZE)).equal?(0))
          resize_rectangles(new_x[0] - @old_x, new_y[0] - @old_y)
          send_event(SWT::Resize, event)
          # It is possible (but unlikely), that application
          # code could have disposed the widget in the resize
          # event.  If this happens, return false to indicate
          # that the tracking has failed.
          if (is_disposed)
            @cancelled = true
            return 1
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
            draw_rectangles(rects_to_erase)
            update
            draw_rectangles(@rectangles)
          end
          cursor_pos = adjust_resize_cursor
          if (!(cursor_pos).nil?)
            new_x[0] = cursor_pos.attr_x
            new_y[0] = cursor_pos.attr_y
          end
        else
          move_rectangles(new_x[0] - @old_x, new_y[0] - @old_y)
          send_event(SWT::Move, event)
          # It is possible (but unlikely), that application
          # code could have disposed the widget in the move
          # event.  If this happens, return false to indicate
          # that the tracking has failed.
          if (is_disposed)
            @cancelled = true
            return 1
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
            draw_rectangles(rects_to_erase)
            update
            draw_rectangles(@rectangles)
          end
        end
        @old_x = new_x[0]
        @old_y = new_y[0]
      end
      @tracking = !(event_type).equal?(OS::GDK_BUTTON_RELEASE)
      return 0
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
      if (!(@parent).nil? && !((@parent.attr_style & SWT::MIRRORED)).equal?(0))
        x_change *= -1
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
      @window = OS._gdk_root_parent
      if (!(@parent).nil?)
        @window = OS._gtk_widget_window(@parent.paint_handle)
      end
      if ((@window).equal?(0))
        return false
      end
      @cancelled = false
      @tracking = true
      update
      draw_rectangles(@rectangles)
      old_x = Array.typed(::Java::Int).new(1) { 0 }
      old_y = Array.typed(::Java::Int).new(1) { 0 }
      state = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_pointer(@window, old_x, old_y, state)
      # if exactly one of UP/DOWN is specified as a style then set the cursor
      # orientation accordingly (the same is done for LEFT/RIGHT styles below)
      v_style = self.attr_style & (SWT::UP | SWT::DOWN)
      if ((v_style).equal?(SWT::UP) || (v_style).equal?(SWT::DOWN))
        @cursor_orientation |= v_style
      end
      h_style = self.attr_style & (SWT::LEFT | SWT::RIGHT)
      if ((h_style).equal?(SWT::LEFT) || (h_style).equal?(SWT::RIGHT))
        @cursor_orientation |= h_style
      end
      mask = OS::GDK_BUTTON1_MASK | OS::GDK_BUTTON2_MASK | OS::GDK_BUTTON3_MASK
      mouse_down = !((state[0] & mask)).equal?(0)
      if (!mouse_down)
        cursor_pos = nil
        if (!((self.attr_style & SWT::RESIZE)).equal?(0))
          cursor_pos = adjust_resize_cursor
        else
          cursor_pos = adjust_move_cursor
        end
        if (!(cursor_pos).nil?)
          old_x[0] = cursor_pos.attr_x
          old_y[0] = cursor_pos.attr_y
        end
      end
      @old_x = old_x[0]
      @old_y = old_y[0]
      @grabbed = grab
      @last_cursor = !(@cursor).nil? ? @cursor.attr_handle : 0
      # Tracker behaves like a Dialog with its own OS event loop.
      gdk_event = GdkEvent.new
      while (@tracking)
        if (!(@parent).nil? && @parent.is_disposed)
          break
        end
        # long
        event_ptr = 0
        while (true)
          event_ptr = OS.gdk_event_get
          if (!(event_ptr).equal?(0))
            break
          else
            begin
              JavaThread.sleep(50)
            rescue JavaException => ex
            end
          end
        end
        OS.memmove(gdk_event, event_ptr, GdkEvent.attr_sizeof)
        # long
        widget = OS.gtk_get_event_widget(event_ptr)
        case (gdk_event.attr_type)
        when OS::GDK_MOTION_NOTIFY
          gtk_motion_notify_event(widget, event_ptr)
        when OS::GDK_BUTTON_RELEASE
          gtk_button_release_event(widget, event_ptr)
        when OS::GDK_KEY_PRESS
          gtk_key_press_event(widget, event_ptr)
        when OS::GDK_KEY_RELEASE
          gtk_key_release_event(widget, event_ptr)
        when OS::GDK_BUTTON_PRESS, OS::GDK_2BUTTON_PRESS, OS::GDK_3BUTTON_PRESS, OS::GDK_ENTER_NOTIFY, OS::GDK_LEAVE_NOTIFY
          # Do not dispatch these
        when OS::GDK_EXPOSE
          update
          draw_rectangles(@rectangles)
          OS.gtk_main_do_event(event_ptr)
          draw_rectangles(@rectangles)
        else
          OS.gtk_main_do_event(event_ptr)
        end
        OS.gdk_event_free(event_ptr)
      end
      if (!is_disposed)
        update
        draw_rectangles(@rectangles)
      end
      ungrab
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
    def resize_rectangles(x_change, y_change)
      if ((@bounds).nil?)
        return
      end
      if (!(@parent).nil? && !((@parent.attr_style & SWT::MIRRORED)).equal?(0))
        x_change *= -1
      end
      # If the cursor orientation has not been set in the orientation of
      # this change then try to set it here.
      if (x_change < 0 && (!((self.attr_style & SWT::LEFT)).equal?(0)) && (((@cursor_orientation & SWT::RIGHT)).equal?(0)))
        @cursor_orientation |= SWT::LEFT
      end
      if (x_change > 0 && (!((self.attr_style & SWT::RIGHT)).equal?(0)) && (((@cursor_orientation & SWT::LEFT)).equal?(0)))
        @cursor_orientation |= SWT::RIGHT
      end
      if (y_change < 0 && (!((self.attr_style & SWT::UP)).equal?(0)) && (((@cursor_orientation & SWT::DOWN)).equal?(0)))
        @cursor_orientation |= SWT::UP
      end
      if (y_change > 0 && (!((self.attr_style & SWT::DOWN)).equal?(0)) && (((@cursor_orientation & SWT::UP)).equal?(0)))
        @cursor_orientation |= SWT::DOWN
      end
      # If the bounds will flip about the x or y axis then apply the adjustment
      # up to the axis (ie.- where bounds width/height becomes 0), change the
      # cursor's orientation accordingly, and flip each Rectangle's origin (only
      # necessary for > 1 Rectangles)
      if (!((@cursor_orientation & SWT::LEFT)).equal?(0))
        if (x_change > @bounds.attr_width)
          if (((self.attr_style & SWT::RIGHT)).equal?(0))
            return
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
              return
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
            return
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
              return
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
    def set_cursor(value)
      check_widget
      @cursor = value
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
    
    typesig { [] }
    def ungrab
      if (@grabbed)
        OS.gdk_pointer_ungrab(OS::GDK_CURRENT_TIME)
      end
    end
    
    typesig { [] }
    def update
      if (!(@parent).nil?)
        if (@parent.is_disposed)
          return
        end
        @parent.get_shell.update
      else
        self.attr_display.update
      end
    end
    
    private
    alias_method :initialize__tracker, :initialize
  end
  
end
