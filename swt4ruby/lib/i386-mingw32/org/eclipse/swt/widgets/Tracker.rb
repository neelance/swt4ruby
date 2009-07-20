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
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
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
    
    # long
    attr_accessor :resize_cursor
    alias_method :attr_resize_cursor, :resize_cursor
    undef_method :resize_cursor
    alias_method :attr_resize_cursor=, :resize_cursor=
    undef_method :resize_cursor=
    
    attr_accessor :client_cursor
    alias_method :attr_client_cursor, :client_cursor
    undef_method :client_cursor
    alias_method :attr_client_cursor=, :client_cursor=
    undef_method :client_cursor=
    
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
    
    # long
    attr_accessor :hwnd_transparent
    alias_method :attr_hwnd_transparent, :hwnd_transparent
    undef_method :hwnd_transparent
    alias_method :attr_hwnd_transparent=, :hwnd_transparent=
    undef_method :hwnd_transparent=
    
    attr_accessor :old_proc
    alias_method :attr_old_proc, :old_proc
    undef_method :old_proc
    alias_method :attr_old_proc=, :old_proc=
    undef_method :old_proc=
    
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
      @rectangles = nil
      @proportions = nil
      @bounds = nil
      @resize_cursor = 0
      @client_cursor = nil
      @cursor_orientation = 0
      @in_event = false
      @hwnd_transparent = 0
      @old_proc = 0
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
      @rectangles = nil
      @proportions = nil
      @bounds = nil
      @resize_cursor = 0
      @client_cursor = nil
      @cursor_orientation = 0
      @in_event = false
      @hwnd_transparent = 0
      @old_proc = 0
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
      pt = POINT.new
      pt.attr_x = new_x
      pt.attr_y = new_y
      # Convert to screen coordinates iff needed
      if (!(@parent).nil?)
        OS._client_to_screen(@parent.attr_handle, pt)
      end
      OS._set_cursor_pos(pt.attr_x, pt.attr_y)
      return Point.new(pt.attr_x, pt.attr_y)
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
      pt = POINT.new
      pt.attr_x = new_x
      pt.attr_y = new_y
      # Convert to screen coordinates iff needed
      if (!(@parent).nil?)
        OS._client_to_screen(@parent.attr_handle, pt)
      end
      OS._set_cursor_pos(pt.attr_x, pt.attr_y)
      # If the client has not provided a custom cursor then determine
      # the appropriate resize cursor.
      if ((@client_cursor).nil?)
        # long
        new_cursor = 0
        case (@cursor_orientation)
        when SWT::UP
          new_cursor = OS._load_cursor(0, OS::IDC_SIZENS)
        when SWT::DOWN
          new_cursor = OS._load_cursor(0, OS::IDC_SIZENS)
        when SWT::LEFT
          new_cursor = OS._load_cursor(0, OS::IDC_SIZEWE)
        when SWT::RIGHT
          new_cursor = OS._load_cursor(0, OS::IDC_SIZEWE)
        when SWT::LEFT | SWT::UP
          new_cursor = OS._load_cursor(0, OS::IDC_SIZENWSE)
        when SWT::RIGHT | SWT::DOWN
          new_cursor = OS._load_cursor(0, OS::IDC_SIZENWSE)
        when SWT::LEFT | SWT::DOWN
          new_cursor = OS._load_cursor(0, OS::IDC_SIZENESW)
        when SWT::RIGHT | SWT::UP
          new_cursor = OS._load_cursor(0, OS::IDC_SIZENESW)
        else
          new_cursor = OS._load_cursor(0, OS::IDC_SIZEALL)
        end
        OS._set_cursor(new_cursor)
        if (!(@resize_cursor).equal?(0))
          OS._destroy_cursor(@resize_cursor)
        end
        @resize_cursor = new_cursor
      end
      return Point.new(pt.attr_x, pt.attr_y)
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
    
    typesig { [Array.typed(Rectangle), ::Java::Boolean] }
    # Draw the rectangles displayed by the tracker.
    def draw_rectangles(rects, stippled)
      if ((@parent).nil? && !OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
        rect1 = RECT.new
        band_width = stippled ? 3 : 1
        i = 0
        while i < rects.attr_length
          rect = rects[i]
          rect1.attr_left = rect.attr_x - band_width
          rect1.attr_top = rect.attr_y - band_width
          rect1.attr_right = rect.attr_x + rect.attr_width + band_width * 2
          rect1.attr_bottom = rect.attr_y + rect.attr_height + band_width * 2
          OS._redraw_window(@hwnd_transparent, rect1, 0, OS::RDW_INVALIDATE)
          i += 1
        end
        return
      end
      band_width = 1
      # long
      hwnd_track = OS._get_desktop_window
      if (!(@parent).nil?)
        hwnd_track = @parent.attr_handle
      end
      # long
      h_dc = OS._get_dcex(hwnd_track, 0, OS::DCX_CACHE)
      # long
      h_bitmap = 0
      h_brush = 0
      old_brush = 0
      if (stippled)
        band_width = 3
        bits = Array.typed(::Java::Byte).new([-86, 0, 85, 0, -86, 0, 85, 0, -86, 0, 85, 0, -86, 0, 85, 0])
        h_bitmap = OS._create_bitmap(8, 8, 1, 1, bits)
        h_brush = OS._create_pattern_brush(h_bitmap)
        old_brush = OS._select_object(h_dc, h_brush)
      end
      i = 0
      while i < rects.attr_length
        rect = rects[i]
        OS._pat_blt(h_dc, rect.attr_x, rect.attr_y, rect.attr_width, band_width, OS::PATINVERT)
        OS._pat_blt(h_dc, rect.attr_x, rect.attr_y + band_width, band_width, rect.attr_height - (band_width * 2), OS::PATINVERT)
        OS._pat_blt(h_dc, rect.attr_x + rect.attr_width - band_width, rect.attr_y + band_width, band_width, rect.attr_height - (band_width * 2), OS::PATINVERT)
        OS._pat_blt(h_dc, rect.attr_x, rect.attr_y + rect.attr_height - band_width, rect.attr_width, band_width, OS::PATINVERT)
        i += 1
      end
      if (stippled)
        OS._select_object(h_dc, old_brush)
        OS._delete_object(h_brush)
        OS._delete_object(h_bitmap)
      end
      OS._release_dc(hwnd_track, h_dc)
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
      @cancelled = false
      @tracking = true
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
      # If this tracker is being created without a mouse drag then
      # we need to create a transparent window that fills the screen
      # in order to get all mouse/keyboard events that occur
      # outside of our visible windows (ie.- over the desktop).
      new_proc = nil
      mouse_down = OS._get_key_state(OS::VK_LBUTTON) < 0
      is_vista = !OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0)
      if (((@parent).nil? && is_vista) || !mouse_down)
        width = OS._get_system_metrics(OS::SM_CXSCREEN)
        height = OS._get_system_metrics(OS::SM_CYSCREEN)
        @hwnd_transparent = OS._create_window_ex(is_vista ? OS::WS_EX_LAYERED | OS::WS_EX_NOACTIVATE : OS::WS_EX_TRANSPARENT, self.attr_display.attr_window_class, nil, OS::WS_POPUP, 0, 0, width, height, 0, 0, OS._get_module_handle(nil), nil)
        @old_proc = OS._get_window_long_ptr(@hwnd_transparent, OS::GWLP_WNDPROC)
        new_proc = Callback.new(self, "transparentProc", 4) # $NON-NLS-1$
        # long
        new_proc_address = new_proc.get_address
        if ((new_proc_address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        OS._set_window_long_ptr(@hwnd_transparent, OS::GWLP_WNDPROC, new_proc_address)
        if (is_vista)
          OS._set_layered_window_attributes(@hwnd_transparent, 0xffffff, 0xff, OS::LWA_COLORKEY | OS::LWA_ALPHA)
        end
        OS._show_window(@hwnd_transparent, OS::SW_SHOWNOACTIVATE)
      end
      update
      draw_rectangles(@rectangles, @stippled)
      cursor_pos = nil
      if (mouse_down)
        pt = POINT.new
        OS._get_cursor_pos(pt)
        cursor_pos = Point.new(pt.attr_x, pt.attr_y)
      else
        if (!((self.attr_style & SWT::RESIZE)).equal?(0))
          cursor_pos = adjust_resize_cursor
        else
          cursor_pos = adjust_move_cursor
        end
      end
      if (!(cursor_pos).nil?)
        @old_x = cursor_pos.attr_x
        @old_y = cursor_pos.attr_y
      end
      begin
        # Tracker behaves like a Dialog with its own OS event loop.
        msg = MSG.new
        while (@tracking && !@cancelled)
          if (!(@parent).nil? && @parent.is_disposed)
            break
          end
          OS._get_message(msg, 0, 0, 0)
          OS._translate_message(msg)
          case (msg.attr_message)
          when OS::WM_LBUTTONUP, OS::WM_MOUSEMOVE
            wm_mouse(msg.attr_message, msg.attr_w_param, msg.attr_l_param)
          when OS::WM_IME_CHAR
            wm_imechar(msg.attr_hwnd, msg.attr_w_param, msg.attr_l_param)
          when OS::WM_CHAR
            wm_char(msg.attr_hwnd, msg.attr_w_param, msg.attr_l_param)
          when OS::WM_KEYDOWN
            wm_key_down(msg.attr_hwnd, msg.attr_w_param, msg.attr_l_param)
          when OS::WM_KEYUP
            wm_key_up(msg.attr_hwnd, msg.attr_w_param, msg.attr_l_param)
          when OS::WM_SYSCHAR
            wm_sys_char(msg.attr_hwnd, msg.attr_w_param, msg.attr_l_param)
          when OS::WM_SYSKEYDOWN
            wm_sys_key_down(msg.attr_hwnd, msg.attr_w_param, msg.attr_l_param)
          when OS::WM_SYSKEYUP
            wm_sys_key_up(msg.attr_hwnd, msg.attr_w_param, msg.attr_l_param)
          end
          if (OS::WM_KEYFIRST <= msg.attr_message && msg.attr_message <= OS::WM_KEYLAST)
            next
          end
          if (OS::WM_MOUSEFIRST <= msg.attr_message && msg.attr_message <= OS::WM_MOUSELAST)
            next
          end
          if (!((@parent).nil? && is_vista))
            if ((msg.attr_message).equal?(OS::WM_PAINT))
              update
              draw_rectangles(@rectangles, @stippled)
            end
          end
          OS._dispatch_message(msg)
          if (!((@parent).nil? && is_vista))
            if ((msg.attr_message).equal?(OS::WM_PAINT))
              draw_rectangles(@rectangles, @stippled)
            end
          end
        end
        if (mouse_down)
          OS._release_capture
        end
        if (!is_disposed)
          update
          draw_rectangles(@rectangles, @stippled)
        end
      ensure
        # Cleanup: If a transparent window was created in order to capture events then
        # destroy it and its callback object now.
        if (!(@hwnd_transparent).equal?(0))
          OS._destroy_window(@hwnd_transparent)
          @hwnd_transparent = 0
        end
        if (!(new_proc).nil?)
          new_proc.dispose
          @old_proc = 0
        end
        # Cleanup: If this tracker was resizing then the last cursor that it created
        # needs to be destroyed.
        if (!(@resize_cursor).equal?(0))
          OS._destroy_cursor(@resize_cursor)
          @resize_cursor = 0
        end
      end
      @tracking = false
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
    def set_cursor(new_cursor)
      check_widget
      @client_cursor = new_cursor
      if (!(new_cursor).nil?)
        if (@in_event)
          OS._set_cursor(@client_cursor.attr_handle)
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
      @rectangles = Array.typed(Rectangle).new(rectangles.attr_length) { nil }
      i = 0
      while i < rectangles.attr_length
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def transparent_proc(hwnd, msg, w_param, l_param)
      # 64
      case (RJava.cast_to_int(msg))
      # We typically do not want to answer that the transparent window is
      # transparent to hits since doing so negates the effect of having it
      # to grab events.  However, clients of the tracker should not be aware
      # of this transparent window.  Therefore if there is a hit query
      # performed as a result of client code then answer that the transparent
      # window is transparent to hits so that its existence will not impact
      # the client.
      when OS::WM_NCHITTEST
        if (@in_event)
          return OS::HTTRANSPARENT
        end
      when OS::WM_SETCURSOR
        if (!(@client_cursor).nil?)
          OS._set_cursor(@client_cursor.attr_handle)
          return 1
        end
        if (!(@resize_cursor).equal?(0))
          OS._set_cursor(@resize_cursor)
          return 1
        end
      when OS::WM_PAINT
        if ((@parent).nil? && !OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
          ps = PAINTSTRUCT.new
          # long
          h_dc = OS._begin_paint(hwnd, ps)
          # long
          h_bitmap = 0
          h_brush = 0
          old_brush = 0
          # long
          transparent_brush = OS._create_solid_brush(0xffffff)
          old_brush = OS._select_object(h_dc, transparent_brush)
          OS._pat_blt(h_dc, ps.attr_left, ps.attr_top, ps.attr_right - ps.attr_left, ps.attr_bottom - ps.attr_top, OS::PATCOPY)
          OS._select_object(h_dc, old_brush)
          OS._delete_object(transparent_brush)
          band_width = 1
          if (@stippled)
            band_width = 3
            bits = Array.typed(::Java::Byte).new([-86, 0, 85, 0, -86, 0, 85, 0, -86, 0, 85, 0, -86, 0, 85, 0])
            h_bitmap = OS._create_bitmap(8, 8, 1, 1, bits)
            h_brush = OS._create_pattern_brush(h_bitmap)
            old_brush = OS._select_object(h_dc, h_brush)
            OS._set_bk_color(h_dc, 0xf0f0f0)
          else
            old_brush = OS._select_object(h_dc, OS._get_stock_object(OS::BLACK_BRUSH))
          end
          rects = @rectangles
          i = 0
          while i < rects.attr_length
            rect = rects[i]
            OS._pat_blt(h_dc, rect.attr_x, rect.attr_y, rect.attr_width, band_width, OS::PATCOPY)
            OS._pat_blt(h_dc, rect.attr_x, rect.attr_y + band_width, band_width, rect.attr_height - (band_width * 2), OS::PATCOPY)
            OS._pat_blt(h_dc, rect.attr_x + rect.attr_width - band_width, rect.attr_y + band_width, band_width, rect.attr_height - (band_width * 2), OS::PATCOPY)
            OS._pat_blt(h_dc, rect.attr_x, rect.attr_y + rect.attr_height - band_width, rect.attr_width, band_width, OS::PATCOPY)
            i += 1
          end
          OS._select_object(h_dc, old_brush)
          if (@stippled)
            OS._delete_object(h_brush)
            OS._delete_object(h_bitmap)
          end
          OS._end_paint(hwnd, ps)
          return 0
        end
      end
      # 64
      return OS._call_window_proc(@old_proc, hwnd, RJava.cast_to_int(msg), w_param, l_param)
    end
    
    typesig { [] }
    def update
      if ((@parent).nil? && !OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
        return
      end
      if (!(@parent).nil?)
        if (@parent.is_disposed)
          return
        end
        shell = @parent.get_shell
        shell.update(true)
      else
        self.attr_display.update
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_key_down(hwnd, w_param, l_param)
      result = super(hwnd, w_param, l_param)
      if (!(result).nil?)
        return result
      end
      is_mirrored = !(@parent).nil? && !((@parent.attr_style & SWT::MIRRORED)).equal?(0)
      step_size = OS._get_key_state(OS::VK_CONTROL) < 0 ? STEPSIZE_SMALL : STEPSIZE_LARGE
      x_change = 0
      y_change = 0
      # 64
      case (RJava.cast_to_int(w_param))
      when OS::VK_ESCAPE
        @cancelled = true
        @tracking = false
      when OS::VK_RETURN
        @tracking = false
      when OS::VK_LEFT
        x_change = is_mirrored ? step_size : -step_size
      when OS::VK_RIGHT
        x_change = is_mirrored ? -step_size : step_size
      when OS::VK_UP
        y_change = -step_size
      when OS::VK_DOWN
        y_change = step_size
      end
      if (!(x_change).equal?(0) || !(y_change).equal?(0))
        old_rectangles = @rectangles
        old_stippled = @stippled
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
        cursor_pos = nil
        if (!((self.attr_style & SWT::RESIZE)).equal?(0))
          resize_rectangles(x_change, y_change)
          @in_event = true
          send_event(SWT::Resize, event)
          @in_event = false
          # It is possible (but unlikely) that application
          # code could have disposed the widget in the resize
          # event.  If this happens return false to indicate
          # that the tracking has failed.
          if (is_disposed)
            @cancelled = true
            return LRESULT::ONE
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
            draw_rectangles(rects_to_erase, old_stippled)
            update
            draw_rectangles(@rectangles, @stippled)
          end
          cursor_pos = adjust_resize_cursor
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
            return LRESULT::ONE
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
            draw_rectangles(rects_to_erase, old_stippled)
            update
            draw_rectangles(@rectangles, @stippled)
          end
          cursor_pos = adjust_move_cursor
        end
        if (!(cursor_pos).nil?)
          @old_x = cursor_pos.attr_x
          @old_y = cursor_pos.attr_y
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_sys_key_down(hwnd, w_param, l_param)
      result = super(hwnd, w_param, l_param)
      if (!(result).nil?)
        return result
      end
      @cancelled = true
      @tracking = false
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_mouse(message, w_param, l_param)
      is_mirrored = !(@parent).nil? && !((@parent.attr_style & SWT::MIRRORED)).equal?(0)
      new_pos = OS._get_message_pos
      new_x = OS._get_x_lparam(new_pos)
      new_y = OS._get_y_lparam(new_pos)
      if (!(new_x).equal?(@old_x) || !(new_y).equal?(@old_y))
        old_rectangles = @rectangles
        old_stippled = @stippled
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
          if (is_mirrored)
            resize_rectangles(@old_x - new_x, new_y - @old_y)
          else
            resize_rectangles(new_x - @old_x, new_y - @old_y)
          end
          @in_event = true
          send_event(SWT::Resize, event)
          @in_event = false
          # It is possible (but unlikely), that application
          # code could have disposed the widget in the resize
          # event.  If this happens, return false to indicate
          # that the tracking has failed.
          if (is_disposed)
            @cancelled = true
            return LRESULT::ONE
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
            draw_rectangles(rects_to_erase, old_stippled)
            update
            draw_rectangles(@rectangles, @stippled)
          end
          cursor_pos = adjust_resize_cursor
          if (!(cursor_pos).nil?)
            new_x = cursor_pos.attr_x
            new_y = cursor_pos.attr_y
          end
        else
          if (is_mirrored)
            move_rectangles(@old_x - new_x, new_y - @old_y)
          else
            move_rectangles(new_x - @old_x, new_y - @old_y)
          end
          @in_event = true
          send_event(SWT::Move, event)
          @in_event = false
          # It is possible (but unlikely), that application
          # code could have disposed the widget in the move
          # event.  If this happens, return false to indicate
          # that the tracking has failed.
          if (is_disposed)
            @cancelled = true
            return LRESULT::ONE
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
            draw_rectangles(rects_to_erase, old_stippled)
            update
            draw_rectangles(@rectangles, @stippled)
          end
        end
        @old_x = new_x
        @old_y = new_y
      end
      @tracking = !(message).equal?(OS::WM_LBUTTONUP)
      return nil
    end
    
    private
    alias_method :initialize__tracker, :initialize
  end
  
end
