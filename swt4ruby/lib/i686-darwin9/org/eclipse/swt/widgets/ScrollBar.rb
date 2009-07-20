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
  module ScrollBarImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
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
  class ScrollBar < ScrollBarImports.const_get :Widget
    include_class_members ScrollBarImports
    
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    attr_accessor :visible_rgn
    alias_method :attr_visible_rgn, :visible_rgn
    undef_method :visible_rgn
    alias_method :attr_visible_rgn=, :visible_rgn=
    undef_method :visible_rgn=
    
    attr_accessor :old_action_proc
    alias_method :attr_old_action_proc, :old_action_proc
    undef_method :old_action_proc
    alias_method :attr_old_action_proc=, :old_action_proc=
    undef_method :old_action_proc=
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :dragging
    alias_method :attr_dragging, :dragging
    undef_method :dragging
    alias_method :attr_dragging=, :dragging=
    undef_method :dragging=
    
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
    
    typesig { [] }
    def initialize
      @handle = 0
      @visible_rgn = 0
      @old_action_proc = 0
      @parent = nil
      @dragging = false
      @increment = 0
      @page_increment = 0
      super()
      @increment = 1
      @page_increment = 10
      # Do nothing
    end
    
    typesig { [Scrollable, ::Java::Int] }
    def initialize(parent, style)
      @handle = 0
      @visible_rgn = 0
      @old_action_proc = 0
      @parent = nil
      @dragging = false
      @increment = 0
      @page_increment = 0
      super(parent, check_style(style))
      @increment = 1
      @page_increment = 10
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
    
    typesig { [::Java::Int, ::Java::Int] }
    def action_proc(the_control, part_code)
      result = super(the_control, part_code)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      event = Event.new
      inc = 0
      case (part_code)
      when OS.attr_k_control_up_button_part
        inc -= @increment
        event.attr_detail = SWT::ARROW_UP
      when OS.attr_k_control_page_up_part
        inc -= @page_increment
        event.attr_detail = SWT::PAGE_UP
      when OS.attr_k_control_page_down_part
        inc += @page_increment
        event.attr_detail = SWT::PAGE_DOWN
      when OS.attr_k_control_down_button_part
        inc += @increment
        event.attr_detail = SWT::ARROW_DOWN
      when OS.attr_k_control_indicator_part
        @dragging = true
        event.attr_detail = SWT::DRAG
      else
        return result
      end
      if (!(@old_action_proc).equal?(0))
        OS._call(@old_action_proc, the_control, part_code)
        @parent.redraw_background_image
      else
        value = OS._get_control32bit_value(@handle) + inc
        OS._set_control32bit_value(@handle, value)
      end
      send_event(SWT::Selection, event)
      return result
    end
    
    typesig { [] }
    def destroy_handle
      the_control = @handle
      release_handle
      if (!(the_control).equal?(0))
        OS._dispose_control(the_control)
      end
    end
    
    typesig { [] }
    def destroy_widget
      @parent.destroy_scroll_bar(self)
      release_handle
      # parent.sendEvent (SWT.Resize);
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      if (enabled)
        OS._enable_control(@handle)
      else
        OS._disable_control(@handle)
      end
    end
    
    typesig { [] }
    def create_handle
      action_proc = self.attr_display.attr_action_proc
      out_control = Array.typed(::Java::Int).new(1) { 0 }
      window = OS._get_control_owner(@parent.attr_scrolled_handle)
      OS._create_scroll_bar_control(window, nil, 0, 0, 90, 10, true, action_proc, out_control)
      if ((out_control[0]).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      @handle = out_control[0]
    end
    
    typesig { [] }
    def create_widget
      super
      set_zorder
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(@handle)
    end
    
    typesig { [::Java::Int] }
    def get_draw_count(control)
      return @parent.get_draw_count(control)
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
      maximum = OS._get_control32bit_maximum(@handle) & 0x7fffffff
      view_size = OS._get_control_view_size(@handle)
      return maximum + view_size
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
      return OS._get_control32bit_minimum(@handle) & 0x7fffffff
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
      return OS._get_control32bit_value(@handle) & 0x7fffffff
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
      return get_control_size(@handle)
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
      return OS._get_control_view_size(@handle)
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
      return ((self.attr_state & HIDDEN)).equal?(0)
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def get_visible_region(control, clip_children)
      if ((@visible_rgn).equal?(0))
        @visible_rgn = OS._new_rgn
        calculate_visible_region(control, @visible_rgn, clip_children)
      end
      result = OS._new_rgn
      OS._copy_rgn(@visible_rgn, result)
      return result
    end
    
    typesig { [] }
    def hook_events
      super
      control_proc = self.attr_display.attr_control_proc
      mask = Array.typed(::Java::Int).new([OS.attr_k_event_class_control, OS.attr_k_event_control_track, ])
      control_target = OS._get_control_event_target(@handle)
      OS._install_event_handler(control_target, control_proc, mask.attr_length / 2, mask, @handle, nil)
      if (((@parent.attr_state & CANVAS)).equal?(0))
        @old_action_proc = OS._get_control_action(@handle)
        OS._set_control_action(@handle, self.attr_display.attr_action_proc)
      end
    end
    
    typesig { [::Java::Int] }
    def invalidate_visible_region(control)
      reset_visible_region(control)
      @parent.reset_visible_region(control)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def inval_window_rgn(window, rgn)
      @parent.inval_window_rgn(window, rgn)
    end
    
    typesig { [::Java::Int] }
    def is_drawing(control)
      # Feature in the Macintosh.  The scroll bars in a DataBrowser are
      # always invisible according to IsControlVisible(), despite the fact
      # that they are drawn.  The fix is to check our visibility flag
      # instead of calling IsControlVisible().
      # 
      # Note: During resize IsControlVisible() returns true allowing the
      # clipping to be properly calculated.
      return is_visible && (get_draw_count(control)).equal?(0)
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
    
    typesig { [::Java::Int] }
    def is_trim_handle(trim_handle)
      return (@handle).equal?(trim_handle)
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_down(next_handler, the_event, user_data)
      status = super(next_handler, the_event, user_data)
      if ((status).equal?(OS.attr_no_err))
        return status
      end
      @dragging = false
      status = OS._call_next_event_handler(next_handler, the_event)
      if (@dragging)
        event = Event.new
        send_event(SWT::Selection, event)
      end
      @dragging = false
      return status
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_wheel_moved(next_handler, the_event, user_data)
      old_selection = get_selection
      result = OS._call_next_event_handler(next_handler, the_event)
      new_selection = get_selection
      if (!(old_selection).equal?(new_selection))
        event = Event.new
        event.attr_detail = new_selection < old_selection ? SWT::PAGE_UP : SWT::PAGE_DOWN
        send_event(SWT::Selection, event)
        @parent.redraw_background_image
      end
      return result
    end
    
    typesig { [] }
    def redraw
      redraw_widget(@handle, false)
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
    def register
      super
      self.attr_display.add_widget(@handle, self)
    end
    
    typesig { [] }
    def release_handle
      super
      @handle = 0
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
      @parent.resize_client_area
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@visible_rgn).equal?(0))
        OS._dispose_rgn(@visible_rgn)
      end
      @visible_rgn = 0
    end
    
    typesig { [::Java::Int] }
    def reset_visible_region(control)
      if (!(@visible_rgn).equal?(0))
        OS._dispose_rgn(@visible_rgn)
        @visible_rgn = 0
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
      if (enabled)
        if (((self.attr_state & DISABLED)).equal?(0))
          return
        end
        self.attr_state &= ~DISABLED
        OS._enable_control(@handle)
      else
        if (!((self.attr_state & DISABLED)).equal?(0))
          return
        end
        self.attr_state |= DISABLED
        OS._disable_control(@handle)
      end
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
      minimum = OS._get_control32bit_minimum(@handle)
      if (value <= minimum)
        return
      end
      view_size = OS._get_control_view_size(@handle)
      if (value - minimum < view_size)
        view_size = value - minimum
        OS._set_control_view_size(@handle, view_size)
      end
      OS._set_control32bit_maximum(@handle, value - view_size)
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
      view_size = OS._get_control_view_size(@handle)
      maximum = OS._get_control32bit_maximum(@handle) + view_size
      if (value >= maximum)
        return
      end
      if (maximum - value < view_size)
        view_size = maximum - value
        OS._set_control32bit_maximum(@handle, maximum - view_size)
        OS._set_control_view_size(@handle, view_size)
      end
      OS._set_control32bit_minimum(@handle, value)
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
    def set_selection(value)
      check_widget
      OS._set_control32bit_value(@handle, value)
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
      minimum = OS._get_control32bit_minimum(@handle)
      view_size = OS._get_control_view_size(@handle)
      maximum = OS._get_control32bit_maximum(@handle) + view_size
      value = Math.min(value, maximum - minimum)
      OS._set_control32bit_maximum(@handle, maximum - value)
      OS._set_control_view_size(@handle, value)
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
      thumb = Math.min(thumb, maximum - minimum)
      OS._set_control32bit_minimum(@handle, minimum)
      OS._set_control32bit_maximum(@handle, maximum - thumb)
      OS._set_control_view_size(@handle, thumb)
      OS._set_control32bit_value(@handle, selection)
      @increment = increment
      @page_increment = page_increment
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
      if (visible)
        if (((self.attr_state & HIDDEN)).equal?(0))
          return
        end
        self.attr_state &= ~HIDDEN
      else
        if (!((self.attr_state & HIDDEN)).equal?(0))
          return
        end
        self.attr_state |= HIDDEN
      end
      if (@parent.set_scroll_bar_visible(self, visible))
        send_event(visible ? SWT::Show : SWT::Hide)
        @parent.send_event(SWT::Resize)
      end
    end
    
    typesig { [] }
    def set_zorder
      OS._hiview_add_subview(@parent.attr_scrolled_handle, @handle)
    end
    
    private
    alias_method :initialize__scroll_bar, :initialize
  end
  
end
