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
  module ScaleImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # Instances of the receiver represent a selectable user
  # interface object that present a range of continuous
  # numeric values.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>HORIZONTAL, VERTICAL</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles HORIZONTAL and VERTICAL may be specified.
  # </p><p>
  # <p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#scale">Scale snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class Scale < ScaleImports.const_get :Control
    include_class_members ScaleImports
    
    attr_accessor :ignore_resize
    alias_method :attr_ignore_resize, :ignore_resize
    undef_method :ignore_resize
    alias_method :attr_ignore_resize=, :ignore_resize=
    undef_method :ignore_resize=
    
    attr_accessor :ignore_selection
    alias_method :attr_ignore_selection, :ignore_selection
    undef_method :ignore_selection
    alias_method :attr_ignore_selection=, :ignore_selection=
    undef_method :ignore_selection=
    
    class_module.module_eval {
      const_set_lazy(:TrackBarClass) { TCHAR.new(0, OS::TRACKBAR_CLASS, true) }
      const_attr_reader  :TrackBarClass
      
      when_class_loaded do
        lp_wnd_class = WNDCLASS.new
        OS._get_class_info(0, TrackBarClass, lp_wnd_class)
        const_set :TrackBarProc, lp_wnd_class.attr_lpfn_wnd_proc
        # Feature in Windows.  The track bar window class
        # does not include CS_DBLCLKS.  This means that these
        # controls will not get double click messages such as
        # WM_LBUTTONDBLCLK.  The fix is to register a new
        # window class with CS_DBLCLKS.
        # 
        # NOTE:  Screen readers look for the exact class name
        # of the control in order to provide the correct kind
        # of assistance.  Therefore, it is critical that the
        # new window class have the same name.  It is possible
        # to register a local window class with the same name
        # as a global class.  Since bits that affect the class
        # are being changed, it is possible that other native
        # code, other than SWT, could create a control with
        # this class name, and fail unexpectedly.
        # 
        # long
        h_instance = OS._get_module_handle(nil)
        # long
        h_heap = OS._get_process_heap
        lp_wnd_class.attr_h_instance = h_instance
        lp_wnd_class.attr_style &= ~OS::CS_GLOBALCLASS
        lp_wnd_class.attr_style |= OS::CS_DBLCLKS
        byte_count = TrackBarClass.length * TCHAR.attr_sizeof
        # long
        lpsz_class_name = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
        OS._move_memory(lpsz_class_name, TrackBarClass, byte_count)
        lp_wnd_class.attr_lpsz_class_name = lpsz_class_name
        OS._register_class(lp_wnd_class)
        OS._heap_free(h_heap, 0, lpsz_class_name)
      end
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
    # @param parent a composite control which will be the parent of the new instance (cannot be null)
    # @param style the style of control to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#HORIZONTAL
    # @see SWT#VERTICAL
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @ignore_resize = false
      @ignore_selection = false
      super(parent, check_style(style))
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the user changes the receiver's value, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is called when the user changes the receiver's value.
    # <code>widgetDefaultSelected</code> is not called.
    # </p>
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
    # @see SelectionListener
    # @see #removeSelectionListener
    def add_selection_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Selection, typed_listener)
      add_listener(SWT::DefaultSelection, typed_listener)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def call_window_proc(hwnd, msg, w_param, l_param)
      if ((self.attr_handle).equal?(0))
        return 0
      end
      return OS._call_window_proc(TrackBarProc, hwnd, msg, w_param, l_param)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        return check_bits(style, SWT::HORIZONTAL, SWT::VERTICAL, 0, 0, 0, 0)
      end
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      border = get_border_width
      width = border * 2
      height = border * 2
      rect = RECT.new
      OS._send_message(self.attr_handle, OS::TBM_GETTHUMBRECT, 0, rect)
      if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
        width += OS._get_system_metrics(OS::SM_CXHSCROLL) * 10
        scroll_y = OS._get_system_metrics(OS::SM_CYHSCROLL)
        height += (rect.attr_top * 2) + scroll_y + (scroll_y / 3)
      else
        scroll_x = OS._get_system_metrics(OS::SM_CXVSCROLL)
        width += (rect.attr_left * 2) + scroll_x + (scroll_x / 3)
        height += OS._get_system_metrics(OS::SM_CYVSCROLL) * 10
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint + (border * 2)
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint + (border * 2)
      end
      return Point.new(width, height)
    end
    
    typesig { [] }
    def create_handle
      super
      self.attr_state |= THEME_BACKGROUND | DRAW_BACKGROUND
      OS._send_message(self.attr_handle, OS::TBM_SETRANGEMAX, 0, 100)
      OS._send_message(self.attr_handle, OS::TBM_SETPAGESIZE, 0, 10)
      OS._send_message(self.attr_handle, OS::TBM_SETTICFREQ, 10, 0)
    end
    
    typesig { [] }
    def default_foreground
      return OS._get_sys_color(OS::COLOR_BTNFACE)
    end
    
    typesig { [] }
    # Returns the amount that the receiver's value will be
    # modified by when the up/down (or right/left) arrows
    # are pressed.
    # 
    # @return the increment
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_increment
      check_widget
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TBM_GETLINESIZE, 0, 0))
    end
    
    typesig { [] }
    # Returns the maximum value which the receiver will allow.
    # 
    # @return the maximum
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_maximum
      check_widget
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TBM_GETRANGEMAX, 0, 0))
    end
    
    typesig { [] }
    # Returns the minimum value which the receiver will allow.
    # 
    # @return the minimum
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_minimum
      check_widget
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TBM_GETRANGEMIN, 0, 0))
    end
    
    typesig { [] }
    # Returns the amount that the receiver's value will be
    # modified by when the page increment/decrement areas
    # are selected.
    # 
    # @return the page increment
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_page_increment
      check_widget
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TBM_GETPAGESIZE, 0, 0))
    end
    
    typesig { [] }
    # Returns the 'selection', which is the receiver's position.
    # 
    # @return the selection
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TBM_GETPOS, 0, 0))
    end
    
    typesig { [SelectionListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the user changes the receiver's value.
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
    # @see SelectionListener
    # @see #addSelectionListener
    def remove_selection_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Selection, listener)
      self.attr_event_table.unhook(SWT::DefaultSelection, listener)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_background_image(h_image)
      super(h_image)
      # Bug in Windows.  Changing the background color of the Scale
      # widget and calling InvalidateRect() still draws with the old
      # color.  The fix is to send a fake WM_SIZE event to cause
      # it to redraw with the new background color.
      @ignore_resize = true
      OS._send_message(self.attr_handle, OS::WM_SIZE, 0, 0)
      @ignore_resize = false
    end
    
    typesig { [::Java::Int] }
    def set_background_pixel(pixel)
      super(pixel)
      # Bug in Windows.  Changing the background color of the Scale
      # widget and calling InvalidateRect() still draws with the old
      # color.  The fix is to send a fake WM_SIZE event to cause
      # it to redraw with the new background color.
      @ignore_resize = true
      OS._send_message(self.attr_handle, OS::WM_SIZE, 0, 0)
      @ignore_resize = false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def set_bounds(x, y, width, height, flags, defer)
      # Bug in Windows.  If SetWindowPos() is called on a
      # track bar with either SWP_DRAWFRAME, a new size,
      # or both during mouse down, the track bar posts a
      # WM_MOUSEMOVE message when the mouse has not moved.
      # The window proc for the track bar uses WM_MOUSEMOVE
      # to issue WM_HSCROLL or WM_SCROLL events to notify
      # the application that the slider has changed.  The
      # end result is that when the user requests a page
      # scroll and the application resizes the track bar
      # during the change notification, continuous stream
      # of WM_MOUSEMOVE messages are generated and the
      # thumb moves to the mouse position rather than
      # scrolling by a page.  The fix is to clear the
      # SWP_DRAWFRAME flag.
      # 
      # NOTE:  There is no fix for the WM_MOUSEMOVE that
      # is generated by a new size.  Clearing SWP_DRAWFRAME
      # does not fix the problem.  However, it is unlikely
      # that the programmer will resize the control during
      # mouse down.
      flags &= ~OS::SWP_DRAWFRAME
      super(x, y, width, height, flags, true)
    end
    
    typesig { [::Java::Int] }
    # Sets the amount that the receiver's value will be
    # modified by when the up/down (or right/left) arrows
    # are pressed to the argument, which must be at least
    # one.
    # 
    # @param increment the new increment (must be greater than zero)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_increment(increment)
      check_widget
      if (increment < 1)
        return
      end
      # 64
      minimum = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TBM_GETRANGEMIN, 0, 0))
      # 64
      maximum = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TBM_GETRANGEMAX, 0, 0))
      if (increment > maximum - minimum)
        return
      end
      OS._send_message(self.attr_handle, OS::TBM_SETLINESIZE, 0, increment)
    end
    
    typesig { [::Java::Int] }
    # Sets the maximum value that the receiver will allow.  This new
    # value will be ignored if it is not greater than the receiver's current
    # minimum value.  If the new maximum is applied then the receiver's
    # selection value will be adjusted if necessary to fall within its new range.
    # 
    # @param value the new maximum, which must be greater than the current minimum
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_maximum(value)
      check_widget
      # 64
      minimum = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TBM_GETRANGEMIN, 0, 0))
      if (0 <= minimum && minimum < value)
        OS._send_message(self.attr_handle, OS::TBM_SETRANGEMAX, 1, value)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the minimum value that the receiver will allow.  This new
    # value will be ignored if it is negative or is not less than the receiver's
    # current maximum value.  If the new minimum is applied then the receiver's
    # selection value will be adjusted if necessary to fall within its new range.
    # 
    # @param value the new minimum, which must be nonnegative and less than the current maximum
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_minimum(value)
      check_widget
      # 64
      maximum = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TBM_GETRANGEMAX, 0, 0))
      if (0 <= value && value < maximum)
        OS._send_message(self.attr_handle, OS::TBM_SETRANGEMIN, 1, value)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the amount that the receiver's value will be
    # modified by when the page increment/decrement areas
    # are selected to the argument, which must be at least
    # one.
    # 
    # @param pageIncrement the page increment (must be greater than zero)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_page_increment(page_increment)
      check_widget
      if (page_increment < 1)
        return
      end
      # 64
      minimum = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TBM_GETRANGEMIN, 0, 0))
      # 64
      maximum = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TBM_GETRANGEMAX, 0, 0))
      if (page_increment > maximum - minimum)
        return
      end
      OS._send_message(self.attr_handle, OS::TBM_SETPAGESIZE, 0, page_increment)
      OS._send_message(self.attr_handle, OS::TBM_SETTICFREQ, page_increment, 0)
    end
    
    typesig { [::Java::Int] }
    # Sets the 'selection', which is the receiver's value,
    # to the argument which must be greater than or equal to zero.
    # 
    # @param value the new selection (must be zero or greater)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(value)
      check_widget
      OS._send_message(self.attr_handle, OS::TBM_SETPOS, 1, value)
    end
    
    typesig { [] }
    def widget_style
      bits = super | OS::WS_TABSTOP | OS::TBS_BOTH | OS::TBS_AUTOTICKS
      if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
        return bits | OS::TBS_HORZ | OS::TBS_DOWNISLEFT
      end
      return bits | OS::TBS_VERT
    end
    
    typesig { [] }
    def window_class
      return TrackBarClass
    end
    
    typesig { [] }
    # long
    def window_proc
      return TrackBarProc
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mousewheel(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Bug in Windows.  When a track bar slider is changed
      # from WM_MOUSEWHEEL, it does not always send either
      # a WM_VSCROLL or M_HSCROLL to notify the application
      # of the change.  The fix is to detect that the selection
      # has changed and that notification has not been issued
      # and send the selection event.
      # 
      # 64
      old_position = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TBM_GETPOS, 0, 0))
      @ignore_selection = true
      # long
      code = call_window_proc(self.attr_handle, OS::WM_MOUSEWHEEL, w_param, l_param)
      @ignore_selection = false
      # 64
      new_position = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TBM_GETPOS, 0, 0))
      if (!(old_position).equal?(new_position))
        # Send the event because WM_HSCROLL and WM_VSCROLL
        # are sent from a modal message loop in windows that
        # is active when the user is scrolling.
        send_event___org_eclipse_swt_widgets_scale_1(SWT::Selection)
        # widget could be disposed at this point
      end
      return LRESULT.new(code)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_paint(w_param, l_param)
      # Bug in Windows.  For some reason, when WM_CTLCOLORSTATIC
      # is used to implement transparency and returns a NULL brush,
      # Windows doesn't always draw the track bar.  It seems that
      # it is drawn correctly the first time.  It is possible that
      # Windows double buffers the control and the double buffer
      # strategy fails when WM_CTLCOLORSTATIC returns unexpected
      # results.  The fix is to send a fake WM_SIZE to force it
      # to redraw every time there is a WM_PAINT.
      fix_paint = !(find_background_control).nil?
      if (!fix_paint)
        if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
          control = find_theme_control
          fix_paint = !(control).nil?
        end
      end
      if (fix_paint)
        redraw = get_drawing && OS._is_window_visible(self.attr_handle)
        if (redraw)
          OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
        end
        @ignore_resize = true
        OS._send_message(self.attr_handle, OS::WM_SIZE, 0, 0)
        @ignore_resize = false
        if (redraw)
          OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
          OS._invalidate_rect(self.attr_handle, nil, false)
        end
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_size(w_param, l_param)
      if (@ignore_resize)
        return nil
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_scroll_child(w_param, l_param)
      # Do nothing when scrolling is ending
      code = OS._loword(w_param)
      case (code)
      when OS::TB_ENDTRACK, OS::TB_THUMBPOSITION
        return nil
      end
      if (!@ignore_selection)
        event = Event.new
        # This code is intentionally commented.  The event
        # detail field is not currently supported on all
        # platforms.
        # 
        # switch (code) {
        # case OS.TB_TOP: 		event.detail = SWT.HOME;  break;
        # case OS.TB_BOTTOM:		event.detail = SWT.END;  break;
        # case OS.TB_LINEDOWN:	event.detail = SWT.ARROW_DOWN;  break;
        # case OS.TB_LINEUP: 		event.detail = SWT.ARROW_UP;  break;
        # case OS.TB_PAGEDOWN: 	event.detail = SWT.PAGE_DOWN;  break;
        # case OS.TB_PAGEUP: 		event.detail = SWT.PAGE_UP;  break;
        # }
        # 
        # Send the event because WM_HSCROLL and WM_VSCROLL
        # are sent from a modal message loop in windows that
        # is active when the user is scrolling.
        send_event___org_eclipse_swt_widgets_scale_3(SWT::Selection, event)
        # widget could be disposed at this point
      end
      return nil
    end
    
    private
    alias_method :initialize__scale, :initialize
  end
  
end
