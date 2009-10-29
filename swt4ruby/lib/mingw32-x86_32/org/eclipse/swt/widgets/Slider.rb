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
  module SliderImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # Instances of this class are selectable user interface
  # objects that represent a range of positive, numeric values.
  # <p>
  # At any given moment, a given slider will have a
  # single 'selection' that is considered to be its
  # value, which is constrained to be within the range of
  # values the slider represents (that is, between its
  # <em>minimum</em> and <em>maximum</em> values).
  # </p><p>
  # Typically, sliders will be made up of five areas:
  # <ol>
  # <li>an arrow button for decrementing the value</li>
  # <li>a page decrement area for decrementing the value by a larger amount</li>
  # <li>a <em>thumb</em> for modifying the value by mouse dragging</li>
  # <li>a page increment area for incrementing the value by a larger amount</li>
  # <li>an arrow button for incrementing the value</li>
  # </ol>
  # Based on their style, sliders are either <code>HORIZONTAL</code>
  # (which have a left facing button for decrementing the value and a
  # right facing button for incrementing it) or <code>VERTICAL</code>
  # (which have an upward facing button for decrementing the value
  # and a downward facing buttons for incrementing it).
  # </p><p>
  # On some platforms, the size of the slider's thumb can be
  # varied relative to the magnitude of the range of values it
  # represents (that is, relative to the difference between its
  # maximum and minimum values). Typically, this is used to
  # indicate some proportional value such as the ratio of the
  # visible area of a document to the total amount of space that
  # it would take to display it. SWT supports setting the thumb
  # size even if the underlying platform does not, but in this
  # case the appearance of the slider will not change.
  # </p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>HORIZONTAL, VERTICAL</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles HORIZONTAL and VERTICAL may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see ScrollBar
  # @see <a href="http://www.eclipse.org/swt/snippets/#slider">Slider snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class Slider < SliderImports.const_get :Control
    include_class_members SliderImports
    
    attr_accessor :increment
    alias_method :attr_increment, :increment
    undef_method :increment
    alias_method :attr_increment=, :increment=
    undef_method :increment=
    
    attr_accessor :page_increment
    alias_method :attr_page_increment, :page_increment
    undef_method :page_increment
    alias_method :attr_page_increment=, :page_increment=
    undef_method :page_increment=
    
    attr_accessor :ignore_focus
    alias_method :attr_ignore_focus, :ignore_focus
    undef_method :ignore_focus
    alias_method :attr_ignore_focus=, :ignore_focus=
    undef_method :ignore_focus=
    
    class_module.module_eval {
      const_set_lazy(:ScrollBarClass) { TCHAR.new(0, "SCROLLBAR", true) }
      const_attr_reader  :ScrollBarClass
      
      when_class_loaded do
        lp_wnd_class = WNDCLASS.new
        OS._get_class_info(0, ScrollBarClass, lp_wnd_class)
        const_set :ScrollBarProc, lp_wnd_class.attr_lpfn_wnd_proc
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
      @increment = 0
      @page_increment = 0
      @ignore_focus = false
      super(parent, check_style(style))
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the user changes the receiver's value, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # When <code>widgetSelected</code> is called, the event object detail field contains one of the following values:
    # <code>SWT.NONE</code> - for the end of a drag.
    # <code>SWT.DRAG</code>.
    # <code>SWT.HOME</code>.
    # <code>SWT.END</code>.
    # <code>SWT.ARROW_DOWN</code>.
    # <code>SWT.ARROW_UP</code>.
    # <code>SWT.PAGE_DOWN</code>.
    # <code>SWT.PAGE_UP</code>.
    # <code>widgetDefaultSelected</code> is not called.
    # </p>
    # 
    # @param listener the listener which should be notified when the user changes the receiver's value
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
    # @see SelectionEvent
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
      # Feature in Windows.  Windows runs a modal message
      # loop when the user drags a scroll bar.  This means
      # that mouse down events won't get delivered until
      # after the loop finishes.  The fix is to run any
      # deferred messages, including mouse down messages
      # before calling the scroll bar window proc.
      case (msg)
      when OS::WM_LBUTTONDOWN, OS::WM_LBUTTONDBLCLK
        self.attr_display.run_deferred_events
      end
      return OS._call_window_proc(ScrollBarProc, hwnd, msg, w_param, l_param)
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
      if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
        width += OS._get_system_metrics(OS::SM_CXHSCROLL) * 10
        height += OS._get_system_metrics(OS::SM_CYHSCROLL)
      else
        width += OS._get_system_metrics(OS::SM_CXVSCROLL)
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
    def create_widget
      super
      @increment = 1
      @page_increment = 10
      # Set the initial values of the maximum
      # to 100 and the thumb to 10.  Note that
      # info.nPage needs to be 11 in order to
      # get a thumb that is 10.
      info = SCROLLINFO.new
      info.attr_cb_size = SCROLLINFO.attr_sizeof
      info.attr_f_mask = OS::SIF_ALL
      info.attr_n_max = 100
      info.attr_n_page = 11
      OS._set_scroll_info(self.attr_handle, OS::SB_CTL, info, true)
    end
    
    typesig { [] }
    def default_background
      return OS._get_sys_color(OS::COLOR_SCROLLBAR)
    end
    
    typesig { [] }
    def default_foreground
      return OS._get_sys_color(OS::COLOR_BTNFACE)
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      super(enabled)
      if (!OS::IsWinCE)
        flags = enabled ? OS::ESB_ENABLE_BOTH : OS::ESB_DISABLE_BOTH
        OS._enable_scroll_bar(self.attr_handle, OS::SB_CTL, flags)
      end
      if (enabled)
        self.attr_state &= ~DISABLED
      else
        self.attr_state |= DISABLED
      end
    end
    
    typesig { [] }
    def get_enabled
      check_widget
      return ((self.attr_state & DISABLED)).equal?(0)
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
      return @increment
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
      info = SCROLLINFO.new
      info.attr_cb_size = SCROLLINFO.attr_sizeof
      info.attr_f_mask = OS::SIF_RANGE
      OS._get_scroll_info(self.attr_handle, OS::SB_CTL, info)
      return info.attr_n_max
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
      info = SCROLLINFO.new
      info.attr_cb_size = SCROLLINFO.attr_sizeof
      info.attr_f_mask = OS::SIF_RANGE
      OS._get_scroll_info(self.attr_handle, OS::SB_CTL, info)
      return info.attr_n_min
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
      return @page_increment
    end
    
    typesig { [] }
    # Returns the 'selection', which is the receiver's value.
    # 
    # @return the selection
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      info = SCROLLINFO.new
      info.attr_cb_size = SCROLLINFO.attr_sizeof
      info.attr_f_mask = OS::SIF_POS
      OS._get_scroll_info(self.attr_handle, OS::SB_CTL, info)
      return info.attr_n_pos
    end
    
    typesig { [] }
    # Returns the size of the receiver's thumb relative to the
    # difference between its maximum and minimum values.
    # 
    # @return the thumb value
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_thumb
      check_widget
      info = SCROLLINFO.new
      info.attr_cb_size = SCROLLINFO.attr_sizeof
      info.attr_f_mask = OS::SIF_PAGE
      OS._get_scroll_info(self.attr_handle, OS::SB_CTL, info)
      if (!(info.attr_n_page).equal?(0))
        (info.attr_n_page -= 1)
      end
      return info.attr_n_page
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def set_bounds(x, y, width, height, flags)
      super(x, y, width, height, flags)
      # Bug in Windows.  If the scroll bar is resized when it has focus,
      # the flashing cursor that is used to show that the scroll bar has
      # focus is not moved.  The fix is to send a fake WM_SETFOCUS to
      # get the scroll bar to recompute the size of the flashing cursor.
      if ((OS._get_focus).equal?(self.attr_handle))
        @ignore_focus = true
        OS._send_message(self.attr_handle, OS::WM_SETFOCUS, 0, 0)
        @ignore_focus = false
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the amount that the receiver's value will be
    # modified by when the up/down (or right/left) arrows
    # are pressed to the argument, which must be at least
    # one.
    # 
    # @param value the new increment (must be greater than zero)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_increment(value)
      check_widget
      if (value < 1)
        return
      end
      @increment = value
    end
    
    typesig { [::Java::Int] }
    # Sets the maximum. If this value is negative or less than or
    # equal to the minimum, the value is ignored. If necessary, first
    # the thumb and then the selection are adjusted to fit within the
    # new range.
    # 
    # @param value the new maximum, which must be greater than the current minimum
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_maximum(value)
      check_widget
      if (value < 0)
        return
      end
      info = SCROLLINFO.new
      info.attr_cb_size = SCROLLINFO.attr_sizeof
      info.attr_f_mask = OS::SIF_RANGE | OS::SIF_DISABLENOSCROLL
      OS._get_scroll_info(self.attr_handle, OS::SB_CTL, info)
      if (value - info.attr_n_min - info.attr_n_page < 1)
        return
      end
      info.attr_n_max = value
      _set_scroll_info(self.attr_handle, OS::SB_CTL, info, true)
    end
    
    typesig { [::Java::Int] }
    # Sets the minimum value. If this value is negative or greater
    # than or equal to the maximum, the value is ignored. If necessary,
    # first the thumb and then the selection are adjusted to fit within
    # the new range.
    # 
    # @param value the new minimum
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_minimum(value)
      check_widget
      if (value < 0)
        return
      end
      info = SCROLLINFO.new
      info.attr_cb_size = SCROLLINFO.attr_sizeof
      info.attr_f_mask = OS::SIF_RANGE | OS::SIF_DISABLENOSCROLL
      OS._get_scroll_info(self.attr_handle, OS::SB_CTL, info)
      if (info.attr_n_max - value - info.attr_n_page < 1)
        return
      end
      info.attr_n_min = value
      _set_scroll_info(self.attr_handle, OS::SB_CTL, info, true)
    end
    
    typesig { [::Java::Int] }
    # Sets the amount that the receiver's value will be
    # modified by when the page increment/decrement areas
    # are selected to the argument, which must be at least
    # one.
    # 
    # @param value the page increment (must be greater than zero)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_page_increment(value)
      check_widget
      if (value < 1)
        return
      end
      @page_increment = value
    end
    
    typesig { [::Java::Int, ::Java::Int, SCROLLINFO, ::Java::Boolean] }
    # long
    def _set_scroll_info(hwnd, flags, info, f_redraw)
      # Feature in Windows.  Using SIF_DISABLENOSCROLL,
      # SetScrollInfo () can change enabled and disabled
      # state of the scroll bar causing a scroll bar that
      # was disabled by the application to become enabled.
      # The fix is to disable the scroll bar (again) when
      # the application has disabled the scroll bar.
      if (!((self.attr_state & DISABLED)).equal?(0))
        f_redraw = false
      end
      result = OS._set_scroll_info(hwnd, flags, info, f_redraw)
      if (!((self.attr_state & DISABLED)).equal?(0))
        OS._enable_window(self.attr_handle, false)
        if (!OS::IsWinCE)
          OS._enable_scroll_bar(self.attr_handle, OS::SB_CTL, OS::ESB_DISABLE_BOTH)
        end
      end
      # Bug in Windows.  If the thumb is resized when it has focus,
      # the flashing cursor that is used to show that the scroll bar
      # has focus is not moved.  The fix is to send a fake WM_SETFOCUS
      # to get the scroll bar to recompute the size of the flashing
      # cursor.
      if ((OS._get_focus).equal?(self.attr_handle))
        @ignore_focus = true
        OS._send_message(self.attr_handle, OS::WM_SETFOCUS, 0, 0)
        @ignore_focus = false
      end
      return result
    end
    
    typesig { [::Java::Int] }
    # Sets the 'selection', which is the receiver's
    # value, to the argument which must be greater than or equal
    # to zero.
    # 
    # @param value the new selection (must be zero or greater)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(value)
      check_widget
      info = SCROLLINFO.new
      info.attr_cb_size = SCROLLINFO.attr_sizeof
      info.attr_f_mask = OS::SIF_POS
      info.attr_n_pos = value
      _set_scroll_info(self.attr_handle, OS::SB_CTL, info, true)
    end
    
    typesig { [::Java::Int] }
    # Sets the size of the receiver's thumb relative to the
    # difference between its maximum and minimum values.  This new
    # value will be ignored if it is less than one, and will be
    # clamped if it exceeds the receiver's current range.
    # 
    # @param value the new thumb value, which must be at least one and not
    # larger than the size of the current range
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_thumb(value)
      check_widget
      if (value < 1)
        return
      end
      info = SCROLLINFO.new
      info.attr_cb_size = SCROLLINFO.attr_sizeof
      info.attr_f_mask = OS::SIF_PAGE | OS::SIF_RANGE | OS::SIF_DISABLENOSCROLL
      OS._get_scroll_info(self.attr_handle, OS::SB_CTL, info)
      info.attr_n_page = value
      if (!(info.attr_n_page).equal?(0))
        info.attr_n_page += 1
      end
      _set_scroll_info(self.attr_handle, OS::SB_CTL, info, true)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Sets the receiver's selection, minimum value, maximum
    # value, thumb, increment and page increment all at once.
    # <p>
    # Note: This is similar to setting the values individually
    # using the appropriate methods, but may be implemented in a
    # more efficient fashion on some platforms.
    # </p>
    # 
    # @param selection the new selection value
    # @param minimum the new minimum value
    # @param maximum the new maximum value
    # @param thumb the new thumb value
    # @param increment the new increment value
    # @param pageIncrement the new pageIncrement value
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_values(selection, minimum, maximum, thumb, increment, page_increment)
      check_widget
      if (minimum < 0)
        return
      end
      if (maximum < 0)
        return
      end
      if (thumb < 1)
        return
      end
      if (increment < 1)
        return
      end
      if (page_increment < 1)
        return
      end
      @increment = increment
      @page_increment = page_increment
      info = SCROLLINFO.new
      info.attr_cb_size = SCROLLINFO.attr_sizeof
      info.attr_f_mask = OS::SIF_POS | OS::SIF_PAGE | OS::SIF_RANGE | OS::SIF_DISABLENOSCROLL
      info.attr_n_pos = selection
      info.attr_n_min = minimum
      info.attr_n_max = maximum
      info.attr_n_page = thumb
      if (!(info.attr_n_page).equal?(0))
        info.attr_n_page += 1
      end
      _set_scroll_info(self.attr_handle, OS::SB_CTL, info, true)
    end
    
    typesig { [] }
    def widget_ext_style
      # Bug in Windows.  If a scroll bar control is given a border,
      # dragging the scroll bar thumb eats away parts of the border
      # while the thumb is dragged.  The fix is to clear border for
      # all scroll bars.
      bits = super
      if (!((self.attr_style & SWT::BORDER)).equal?(0))
        bits &= ~OS::WS_EX_CLIENTEDGE
      end
      return bits
    end
    
    typesig { [] }
    def widget_style
      bits = super | OS::WS_TABSTOP
      # Bug in Windows.  If a scroll bar control is given a border,
      # dragging the scroll bar thumb eats away parts of the border
      # while the thumb is dragged.  The fix is to clear WS_BORDER.
      if (!((self.attr_style & SWT::BORDER)).equal?(0))
        bits &= ~OS::WS_BORDER
      end
      if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
        return bits | OS::SBS_HORZ
      end
      return bits | OS::SBS_VERT
    end
    
    typesig { [] }
    def window_class
      return ScrollBarClass
    end
    
    typesig { [] }
    # long
    def window_proc
      return ScrollBarProc
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_keydown(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        return result
      end
      # Bug in Windows.  When a horizontal scroll bar is mirrored,
      # the native control does not correctly swap the arrow keys.
      # The fix is to swap them before calling the scroll bar window
      # proc.
      # 
      # NOTE: This fix is not ideal.  It breaks when the bug is fixed
      # in the operating system.
      if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
        # 64
        case (RJava.cast_to_int(w_param))
        when OS::VK_LEFT, OS::VK_RIGHT
          key = (w_param).equal?(OS::VK_LEFT) ? OS::VK_RIGHT : OS::VK_LEFT
          # long
          code = call_window_proc(self.attr_handle, OS::WM_KEYDOWN, key, l_param)
          return LRESULT.new(code)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondblclk(w_param, l_param)
      # Feature in Windows.  Windows uses the WS_TABSTOP
      # style for the scroll bar to decide that focus
      # should be set during WM_LBUTTONDBLCLK.  This is
      # not the desired behavior.  The fix is to clear
      # and restore WS_TABSTOP so that Windows will not
      # assign focus.
      old_bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      new_bits = old_bits & ~OS::WS_TABSTOP
      OS._set_window_long(self.attr_handle, OS::GWL_STYLE, new_bits)
      result = super(w_param, l_param)
      if (is_disposed)
        return LRESULT::ZERO
      end
      OS._set_window_long(self.attr_handle, OS::GWL_STYLE, old_bits)
      if ((result).equal?(LRESULT::ZERO))
        return result
      end
      # Feature in Windows.  Windows runs a modal message loop
      # when the user drags a scroll bar that terminates when
      # it sees an WM_LBUTTONUP.  Unfortunately the WM_LBUTTONUP
      # is consumed.  The fix is to send a fake mouse up and
      # release the automatic capture.
      if (!OS::IsWinCE)
        if ((OS._get_capture).equal?(self.attr_handle))
          OS._release_capture
        end
        if (!send_mouse_event___org_eclipse_swt_widgets_slider_1(SWT::MouseUp, 1, self.attr_handle, OS::WM_LBUTTONUP, w_param, l_param))
          return LRESULT::ZERO
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondown(w_param, l_param)
      # Feature in Windows.  Windows uses the WS_TABSTOP
      # style for the scroll bar to decide that focus
      # should be set during WM_LBUTTONDOWN.  This is
      # not the desired behavior.  The fix is to clear
      # and restore WS_TABSTOP so that Windows will not
      # assign focus.
      old_bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      new_bits = old_bits & ~OS::WS_TABSTOP
      OS._set_window_long(self.attr_handle, OS::GWL_STYLE, new_bits)
      result = super(w_param, l_param)
      if (is_disposed)
        return LRESULT::ZERO
      end
      OS._set_window_long(self.attr_handle, OS::GWL_STYLE, old_bits)
      if ((result).equal?(LRESULT::ZERO))
        return result
      end
      # Feature in Windows.  Windows runs a modal message loop
      # when the user drags a scroll bar that terminates when
      # it sees an WM_LBUTTONUP.  Unfortunately the WM_LBUTTONUP
      # is consumed.  The fix is to send a fake mouse up and
      # release the automatic capture.
      if (!OS::IsWinCE)
        if ((OS._get_capture).equal?(self.attr_handle))
          OS._release_capture
        end
        if (!send_mouse_event___org_eclipse_swt_widgets_slider_3(SWT::MouseUp, 1, self.attr_handle, OS::WM_LBUTTONUP, w_param, l_param))
          return LRESULT::ONE
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setfocus(w_param, l_param)
      if (@ignore_focus)
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
      if ((code).equal?(OS::SB_ENDSCROLL))
        return nil
      end
      # Move the thumb
      event = Event.new
      info = SCROLLINFO.new
      info.attr_cb_size = SCROLLINFO.attr_sizeof
      info.attr_f_mask = OS::SIF_TRACKPOS | OS::SIF_POS | OS::SIF_RANGE
      OS._get_scroll_info(self.attr_handle, OS::SB_CTL, info)
      info.attr_f_mask = OS::SIF_POS
      case (code)
      when OS::SB_THUMBPOSITION
        event.attr_detail = SWT::NONE
        info.attr_n_pos = info.attr_n_track_pos
      when OS::SB_THUMBTRACK
        event.attr_detail = SWT::DRAG
        info.attr_n_pos = info.attr_n_track_pos
      when OS::SB_TOP
        event.attr_detail = SWT::HOME
        info.attr_n_pos = info.attr_n_min
      when OS::SB_BOTTOM
        event.attr_detail = SWT::END_
        info.attr_n_pos = info.attr_n_max
      when OS::SB_LINEDOWN
        event.attr_detail = SWT::ARROW_DOWN
        info.attr_n_pos += @increment
      when OS::SB_LINEUP
        event.attr_detail = SWT::ARROW_UP
        info.attr_n_pos = Math.max(info.attr_n_min, info.attr_n_pos - @increment)
      when OS::SB_PAGEDOWN
        event.attr_detail = SWT::PAGE_DOWN
        info.attr_n_pos += @page_increment
      when OS::SB_PAGEUP
        event.attr_detail = SWT::PAGE_UP
        info.attr_n_pos = Math.max(info.attr_n_min, info.attr_n_pos - @page_increment)
      end
      OS._set_scroll_info(self.attr_handle, OS::SB_CTL, info, true)
      # Feature in Windows.  Windows runs a modal message
      # loop when the user drags a scroll bar.  This means
      # that selection event must be sent because WM_HSCROLL
      # and WM_VSCROLL are sent from the modal message loop
      # so that they are delivered during inside the loop.
      send_event___org_eclipse_swt_widgets_slider_5(SWT::Selection, event)
      # the widget could be destroyed at this point
      return nil
    end
    
    private
    alias_method :initialize__slider, :initialize
  end
  
end
