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
  module ScrollBarImports #:nodoc:
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
  # At any given moment, a given scroll bar will have a
  # single 'selection' that is considered to be its
  # value, which is constrained to be within the range of
  # values the scroll bar represents (that is, between its
  # <em>minimum</em> and <em>maximum</em> values).
  # </p><p>
  # Typically, scroll bars will be made up of five areas:
  # <ol>
  # <li>an arrow button for decrementing the value</li>
  # <li>a page decrement area for decrementing the value by a larger amount</li>
  # <li>a <em>thumb</em> for modifying the value by mouse dragging</li>
  # <li>a page increment area for incrementing the value by a larger amount</li>
  # <li>an arrow button for incrementing the value</li>
  # </ol>
  # Based on their style, scroll bars are either <code>HORIZONTAL</code>
  # (which have a left facing button for decrementing the value and a
  # right facing button for incrementing it) or <code>VERTICAL</code>
  # (which have an upward facing button for decrementing the value
  # and a downward facing buttons for incrementing it).
  # </p><p>
  # On some platforms, the size of the scroll bar's thumb can be
  # varied relative to the magnitude of the range of values it
  # represents (that is, relative to the difference between its
  # maximum and minimum values). Typically, this is used to
  # indicate some proportional value such as the ratio of the
  # visible area of a document to the total amount of space that
  # it would take to display it. SWT supports setting the thumb
  # size even if the underlying platform does not, but in this
  # case the appearance of the scroll bar will not change.
  # </p><p>
  # Scroll bars are created by specifying either <code>H_SCROLL</code>,
  # <code>V_SCROLL</code> or both when creating a <code>Scrollable</code>.
  # They are accessed from the <code>Scrollable</code> using
  # <code>getHorizontalBar</code> and <code>getVerticalBar</code>.
  # </p><p>
  # Note: Scroll bars are not Controls.  On some platforms, scroll bars
  # that appear as part of some standard controls such as a text or list
  # have no operating system resources and are not children of the control.
  # For this reason, scroll bars are treated specially.  To create a control
  # that looks like a scroll bar but has operating system resources, use
  # <code>Slider</code>.
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
  # @see Slider
  # @see Scrollable
  # @see Scrollable#getHorizontalBar
  # @see Scrollable#getVerticalBar
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class ScrollBar < ScrollBarImports.const_get :Widget
    include_class_members ScrollBarImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
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
    
    typesig { [Scrollable, ::Java::Int] }
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
      @parent = nil
      @increment = 0
      @page_increment = 0
      super(parent, check_style(style))
      @parent = parent
      create_widget
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
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        return check_bits(style, SWT::HORIZONTAL, SWT::VERTICAL, 0, 0, 0, 0)
      end
    }
    
    typesig { [] }
    def create_widget
      @increment = 1
      @page_increment = 10
      # Do not set the initial values of the maximum
      # or the thumb.  These values normally default
      # to 100 and 10 but may have been set already
      # by the widget that owns the scroll bar.  For
      # example, a scroll bar that is created for a
      # list widget, setting these defaults would
      # override the initial values provided by the
      # list widget.
    end
    
    typesig { [] }
    def destroy_widget
      # long
      hwnd = hwnd_scroll_bar
      type = scroll_bar_type
      if (OS::IsWinCE)
        info = SCROLLINFO.new
        info.attr_cb_size = SCROLLINFO.attr_sizeof
        info.attr_f_mask = OS::SIF_RANGE | OS::SIF_PAGE
        info.attr_n_page = 101
        info.attr_n_max = 100
        info.attr_n_min = 0
        OS._set_scroll_info(hwnd, type, info, true)
      else
        OS._show_scroll_bar(hwnd, type, false)
      end
      @parent.destroy_scroll_bar(self.attr_style)
      release_handle
      # This code is intentionally commented
      # parent.sendEvent (SWT.Resize);
    end
    
    typesig { [] }
    def get_bounds
      # checkWidget ();
      @parent.force_resize
      rect = RECT.new
      OS._get_client_rect(@parent.scrolled_handle, rect)
      x = 0
      y = 0
      width = 0
      height = 0
      if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
        y = rect.attr_bottom - rect.attr_top
        width = rect.attr_right - rect.attr_left
        height = OS._get_system_metrics(OS::SM_CYHSCROLL)
      else
        x = rect.attr_right - rect.attr_left
        width = OS._get_system_metrics(OS::SM_CXVSCROLL)
        height = rect.attr_bottom - rect.attr_top
      end
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled, and
    # <code>false</code> otherwise. A disabled control is typically
    # not selectable from the user interface and draws with an
    # inactive or "grayed" look.
    # 
    # @return the receiver's enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #isEnabled
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
      # long
      hwnd = hwnd_scroll_bar
      type = scroll_bar_type
      OS._get_scroll_info(hwnd, type, info)
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
      # long
      hwnd = hwnd_scroll_bar
      type = scroll_bar_type
      OS._get_scroll_info(hwnd, type, info)
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
    # Returns the receiver's parent, which must be a Scrollable.
    # 
    # @return the receiver's parent
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_parent
      check_widget
      return @parent
    end
    
    typesig { [] }
    # Returns the single 'selection' that is the receiver's value.
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
      # long
      hwnd = hwnd_scroll_bar
      type = scroll_bar_type
      OS._get_scroll_info(hwnd, type, info)
      return info.attr_n_pos
    end
    
    typesig { [] }
    # Returns a point describing the receiver's size. The
    # x coordinate of the result is the width of the receiver.
    # The y coordinate of the result is the height of the
    # receiver.
    # 
    # @return the receiver's size
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_size
      check_widget
      @parent.force_resize
      rect = RECT.new
      OS._get_client_rect(@parent.scrolled_handle, rect)
      width = 0
      height = 0
      if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
        width = rect.attr_right - rect.attr_left
        height = OS._get_system_metrics(OS::SM_CYHSCROLL)
      else
        width = OS._get_system_metrics(OS::SM_CXVSCROLL)
        height = rect.attr_bottom - rect.attr_top
      end
      return Point.new(width, height)
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
    # 
    # @see ScrollBar
    def get_thumb
      check_widget
      info = SCROLLINFO.new
      info.attr_cb_size = SCROLLINFO.attr_sizeof
      info.attr_f_mask = OS::SIF_PAGE
      # long
      hwnd = hwnd_scroll_bar
      type = scroll_bar_type
      OS._get_scroll_info(hwnd, type, info)
      if (!(info.attr_n_page).equal?(0))
        (info.attr_n_page -= 1)
      end
      return info.attr_n_page
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is visible, and
    # <code>false</code> otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, this method
    # may still indicate that it is considered visible even though
    # it may not actually be showing.
    # </p>
    # 
    # @return the receiver's visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_visible
      check_widget
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(4, 10))
        psbi = SCROLLBARINFO.new
        psbi.attr_cb_size = SCROLLBARINFO.attr_sizeof
        id_object = !((self.attr_style & SWT::VERTICAL)).equal?(0) ? OS::OBJID_VSCROLL : OS::OBJID_HSCROLL
        OS._get_scroll_bar_info(hwnd_scroll_bar, id_object, psbi)
        return ((psbi.attr_rgstate[0] & OS::STATE_SYSTEM_INVISIBLE)).equal?(0)
      end
      return ((self.attr_state & HIDDEN)).equal?(0)
    end
    
    typesig { [] }
    # long
    def hwnd_scroll_bar
      return @parent.scrolled_handle
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled and all
    # of the receiver's ancestors are enabled, and <code>false</code>
    # otherwise. A disabled control is typically not selectable from the
    # user interface and draws with an inactive or "grayed" look.
    # 
    # @return the receiver's enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getEnabled
    def is_enabled
      check_widget
      return get_enabled && @parent.is_enabled
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is visible and all
    # of the receiver's ancestors are visible and <code>false</code>
    # otherwise.
    # 
    # @return the receiver's visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getVisible
    def is_visible
      check_widget
      return get_visible && @parent.is_visible
    end
    
    typesig { [] }
    def release_handle
      super
      @parent = nil
    end
    
    typesig { [] }
    def release_parent
      super
      if ((@parent.attr_horizontal_bar).equal?(self))
        @parent.attr_horizontal_bar = nil
      end
      if ((@parent.attr_vertical_bar).equal?(self))
        @parent.attr_vertical_bar = nil
      end
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
    
    typesig { [] }
    def scroll_bar_type
      return !((self.attr_style & SWT::VERTICAL)).equal?(0) ? OS::SB_VERT : OS::SB_HORZ
    end
    
    typesig { [::Java::Boolean] }
    # Enables the receiver if the argument is <code>true</code>,
    # and disables it otherwise. A disabled control is typically
    # not selectable from the user interface and draws with an
    # inactive or "grayed" look.
    # 
    # @param enabled the new enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_enabled(enabled)
      check_widget
      # This line is intentionally commented.  Currently
      # always show scrollbar as being enabled and visible.
      # 
      # if (OS.IsWinCE) error (SWT.ERROR_NOT_IMPLEMENTED);
      if (!OS::IsWinCE)
        # long
        hwnd = hwnd_scroll_bar
        type = scroll_bar_type
        flags = enabled ? OS::ESB_ENABLE_BOTH : OS::ESB_DISABLE_BOTH
        OS._enable_scroll_bar(hwnd, type, flags)
        if (enabled)
          self.attr_state &= ~DISABLED
        else
          self.attr_state |= DISABLED
        end
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
    # @param value the new maximum
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
      # long
      hwnd = hwnd_scroll_bar
      type = scroll_bar_type
      info.attr_f_mask = OS::SIF_RANGE | OS::SIF_DISABLENOSCROLL
      OS._get_scroll_info(hwnd, type, info)
      if (value - info.attr_n_min - info.attr_n_page < 1)
        return
      end
      info.attr_n_max = value
      _set_scroll_info(hwnd, type, info, true)
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
      # long
      hwnd = hwnd_scroll_bar
      type = scroll_bar_type
      info.attr_f_mask = OS::SIF_RANGE | OS::SIF_DISABLENOSCROLL
      OS._get_scroll_info(hwnd, type, info)
      if (info.attr_n_max - value - info.attr_n_page < 1)
        return
      end
      info.attr_n_min = value
      _set_scroll_info(hwnd, type, info, true)
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
      # Bug in Windows.  For some reason, when SetScrollInfo()
      # is used with SIF_POS and the scroll bar is hidden,
      # the opposite scroll bar is incorrectly made visible
      # so that the next time the parent is resized (or another
      # scroll bar operation is performed), the opposite scroll
      # bar draws.  The fix is to hide both scroll bars.
      bar_visible = false
      visible = get_visible
      # This line is intentionally commented.  Currently
      # always show scrollbar as being enabled and visible.
      # 
      # if (OS.IsWinCE) error (SWT.ERROR_NOT_IMPLEMENTED);
      bar = nil
      if (!OS::IsWinCE)
        case (flags)
        when OS::SB_HORZ
          bar = @parent.get_vertical_bar
        when OS::SB_VERT
          bar = @parent.get_horizontal_bar
        end
        bar_visible = !(bar).nil? && bar.get_visible
      end
      if (!visible || !((self.attr_state & DISABLED)).equal?(0))
        f_redraw = false
      end
      result = OS._set_scroll_info(hwnd, flags, info, f_redraw)
      # Bug in Windows.  For some reason, when the widget
      # is a standard scroll bar, and SetScrollInfo() is
      # called with SIF_RANGE or SIF_PAGE, the widget is
      # incorrectly made visible so that the next time the
      # parent is resized (or another scroll bar operation
      # is performed), the scroll bar draws.  The fix is
      # to hide the scroll bar (again) when already hidden.
      if (!visible)
        # This line is intentionally commented.  Currently
        # always show scrollbar as being enabled and visible.
        # 
        # if (OS.IsWinCE) error (SWT.ERROR_NOT_IMPLEMENTED);
        if (!OS::IsWinCE)
          OS._show_scroll_bar(hwnd, !bar_visible ? OS::SB_BOTH : flags, false)
        end
      end
      # Bug in Windows.  When only one scroll bar is visible,
      # and the thumb changes using SIF_RANGE or SIF_PAGE
      # from being visible to hidden, the opposite scroll
      # bar is incorrectly made visible.  The next time the
      # parent is resized (or another scroll bar operation
      # is performed), the opposite scroll bar draws.  The
      # fix is to hide the opposite scroll bar again.
      # 
      # NOTE: This problem only happens on Vista
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
        if (visible && !(bar).nil? && !bar_visible)
          OS._show_scroll_bar(hwnd, (flags).equal?(OS::SB_HORZ) ? OS::SB_VERT : OS::SB_HORZ, false)
        end
      end
      # Feature in Windows.  Using SIF_DISABLENOSCROLL,
      # SetScrollInfo () can change enabled and disabled
      # state of the scroll bar causing a scroll bar that
      # was disabled by the application to become enabled.
      # The fix is to disable the scroll bar (again) when
      # the application has disabled the scroll bar.
      if (!((self.attr_state & DISABLED)).equal?(0))
        # This line is intentionally commented.  Currently
        # always show scrollbar as being enabled and visible.
        # 
        # if (OS.IsWinCE) error (SWT.ERROR_NOT_IMPLEMENTED);
        if (!OS::IsWinCE)
          OS._enable_scroll_bar(hwnd, flags, OS::ESB_DISABLE_BOTH)
        end
      end
      return result
    end
    
    typesig { [::Java::Int] }
    # Sets the single <em>selection</em> that is the receiver's
    # value to the argument which must be greater than or equal
    # to zero.
    # 
    # @param selection the new selection (must be zero or greater)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(selection)
      check_widget
      info = SCROLLINFO.new
      info.attr_cb_size = SCROLLINFO.attr_sizeof
      # long
      hwnd = hwnd_scroll_bar
      type = scroll_bar_type
      info.attr_f_mask = OS::SIF_POS
      info.attr_n_pos = selection
      _set_scroll_info(hwnd, type, info, true)
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
      # long
      hwnd = hwnd_scroll_bar
      type = scroll_bar_type
      info.attr_f_mask = OS::SIF_PAGE | OS::SIF_RANGE | OS::SIF_DISABLENOSCROLL
      OS._get_scroll_info(hwnd, type, info)
      info.attr_n_page = value
      if (!(info.attr_n_page).equal?(0))
        info.attr_n_page += 1
      end
      _set_scroll_info(hwnd, type, info, true)
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
      # long
      hwnd = hwnd_scroll_bar
      type = scroll_bar_type
      _set_scroll_info(hwnd, type, info, true)
    end
    
    typesig { [::Java::Boolean] }
    # Marks the receiver as visible if the argument is <code>true</code>,
    # and marks it invisible otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, marking
    # it visible may not actually cause it to be displayed.
    # </p>
    # 
    # @param visible the new visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_visible(visible)
      check_widget
      if ((visible).equal?(get_visible))
        return
      end
      # On Windows CE, use SIF_DISABLENOSCROLL to show and
      # hide the scroll bar when the page size is equal to
      # the range.
      if (OS::IsWinCE)
        info = SCROLLINFO.new
        info.attr_cb_size = SCROLLINFO.attr_sizeof
        # long
        hwnd = hwnd_scroll_bar
        type = scroll_bar_type
        info.attr_f_mask = OS::SIF_RANGE | OS::SIF_PAGE
        if (visible)
          info.attr_f_mask |= OS::SIF_DISABLENOSCROLL
        end
        OS._get_scroll_info(hwnd, type, info)
        if ((info.attr_n_page).equal?(info.attr_n_max - info.attr_n_min + 1))
          # Bug in Windows.  When the only changed flag to
          # SetScrollInfo () is OS.SIF_DISABLENOSCROLL,
          # Windows does not update the scroll bar state.
          # The fix is to increase and then decrease the
          # maximum, causing Windows to honour the flag.
          max = info.attr_n_max
          info.attr_n_max += 1
          OS._set_scroll_info(hwnd, type, info, false)
          info.attr_n_max = max
          OS._set_scroll_info(hwnd, type, info, true)
        else
          # This line is intentionally commented.  Currently
          # always show scrollbar as being enabled and visible.
          # 
          # if (OS.IsWinCE) error (SWT.ERROR_NOT_IMPLEMENTED);
        end
        return
      end
      # Set the state bits before calling ShowScrollBar ()
      # because hiding and showing the scroll bar can cause
      # WM_SIZE messages when the client area is resized.
      # Setting the state before the call means that code
      # that runs during WM_SIZE that queries the visibility
      # of the scroll bar will get the correct value.
      self.attr_state = visible ? self.attr_state & ~HIDDEN : self.attr_state | HIDDEN
      # long
      hwnd = hwnd_scroll_bar
      type = scroll_bar_type
      if (OS._show_scroll_bar(hwnd, type, visible))
        # Bug in Windows.  For some reason, when the widget
        # is a standard scroll bar, and SetScrollInfo () is
        # called with SIF_RANGE or SIF_PAGE while the widget
        # is not visible, the widget is incorrectly disabled
        # even though the values for SIF_RANGE and SIF_PAGE,
        # when set for a visible scroll bar would not disable
        # the scroll bar.  The fix is to enable the scroll bar
        # when not disabled by the application and the current
        # scroll bar ranges would cause the scroll bar to be
        # enabled had they been set when the scroll bar was
        # visible.
        if (((self.attr_state & DISABLED)).equal?(0))
          info = SCROLLINFO.new
          info.attr_cb_size = SCROLLINFO.attr_sizeof
          info.attr_f_mask = OS::SIF_RANGE | OS::SIF_PAGE
          OS._get_scroll_info(hwnd, type, info)
          if (info.attr_n_max - info.attr_n_min - info.attr_n_page >= 0)
            OS._enable_scroll_bar(hwnd, type, OS::ESB_ENABLE_BOTH)
          end
        end
        send_event(visible ? SWT::Show : SWT::Hide)
        # widget could be disposed at this point
      end
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
      # Send the event because WM_HSCROLL and
      # WM_VSCROLL are sent from a modal message
      # loop in Windows that is active when the
      # user is scrolling.
      event = Event.new
      case (code)
      when OS::SB_THUMBPOSITION
        event.attr_detail = SWT::NONE
      when OS::SB_THUMBTRACK
        event.attr_detail = SWT::DRAG
      when OS::SB_TOP
        event.attr_detail = SWT::HOME
      when OS::SB_BOTTOM
        event.attr_detail = SWT::END_
      when OS::SB_LINEDOWN
        event.attr_detail = SWT::ARROW_DOWN
      when OS::SB_LINEUP
        event.attr_detail = SWT::ARROW_UP
      when OS::SB_PAGEDOWN
        event.attr_detail = SWT::PAGE_DOWN
      when OS::SB_PAGEUP
        event.attr_detail = SWT::PAGE_UP
      end
      send_event(SWT::Selection, event)
      # the widget could be destroyed at this point
      return nil
    end
    
    private
    alias_method :initialize__scroll_bar, :initialize
  end
  
end
