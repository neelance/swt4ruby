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
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Gtk
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
    
    # int
    attr_accessor :adjustment_handle
    alias_method :attr_adjustment_handle, :adjustment_handle
    undef_method :adjustment_handle
    alias_method :attr_adjustment_handle=, :adjustment_handle=
    undef_method :adjustment_handle=
    
    attr_accessor :detail
    alias_method :attr_detail, :detail
    undef_method :detail
    alias_method :attr_detail=, :detail=
    undef_method :detail=
    
    attr_accessor :drag_sent
    alias_method :attr_drag_sent, :drag_sent
    undef_method :drag_sent
    alias_method :attr_drag_sent=, :drag_sent=
    undef_method :drag_sent=
    
    typesig { [] }
    def initialize
      @parent = nil
      @adjustment_handle = 0
      @detail = 0
      @drag_sent = false
      super()
    end
    
    typesig { [Scrollable, ::Java::Int] }
    # Creates a new instance of the widget.
    def initialize(parent, style)
      @parent = nil
      @adjustment_handle = 0
      @detail = 0
      @drag_sent = false
      super(parent, check_style(style))
      @parent = parent
      create_widget(0)
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
    def deregister
      super
      if (!(@adjustment_handle).equal?(0))
        self.attr_display.remove_widget(@adjustment_handle)
      end
    end
    
    typesig { [] }
    def destroy_handle
      Widget.instance_method(:destroy_widget).bind(self).call
    end
    
    typesig { [] }
    def destroy_widget
      @parent.destroy_scroll_bar(self)
      release_handle
      # parent.sendEvent (SWT.Resize);
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
      if (!(self.attr_handle).equal?(0))
        return OS._gtk_widget_sensitive(self.attr_handle)
      end
      return true
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
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_1(adjustment, @adjustment_handle)
      return RJava.cast_to_int(adjustment.attr_step_increment)
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
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_3(adjustment, @adjustment_handle)
      return RJava.cast_to_int(adjustment.attr_upper)
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
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_5(adjustment, @adjustment_handle)
      return RJava.cast_to_int(adjustment.attr_lower)
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
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_7(adjustment, @adjustment_handle)
      return RJava.cast_to_int(adjustment.attr_page_increment)
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
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_9(adjustment, @adjustment_handle)
      return RJava.cast_to_int(adjustment.attr_value)
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
      if ((self.attr_handle).equal?(0))
        return Point.new(0, 0)
      end
      requisition = GtkRequisition.new
      OS.gtk_widget_size_request(self.attr_handle, requisition)
      return Point.new(requisition.attr_width, requisition.attr_height)
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
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_11(adjustment, @adjustment_handle)
      return RJava.cast_to_int(adjustment.attr_page_size)
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
      # int
      scrolled_handle = @parent.attr_scrolled_handle
      hsp = Array.typed(::Java::Int).new(1) { 0 }
      vsp = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_scrolled_window_get_policy(scrolled_handle, hsp, vsp)
      if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
        return !(hsp[0]).equal?(OS::GTK_POLICY_NEVER)
      else
        return !(vsp[0]).equal?(OS::GTK_POLICY_NEVER)
      end
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_button_press_event(widget, event_ptr)
      # int
      result = super(widget, event_ptr)
      if (!(result).equal?(0))
        return result
      end
      @detail = OS::GTK_SCROLL_NONE
      @drag_sent = false
      return result
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    # int
    def gtk_change_value(widget, scroll, value1, value2)
      # 64
      @detail = RJava.cast_to_int(scroll)
      return 0
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def gtk_value_changed(adjustment)
      event = Event.new
      @drag_sent = (@detail).equal?(OS::GTK_SCROLL_JUMP)
      case (@detail)
      when OS::GTK_SCROLL_NONE
        event.attr_detail = SWT::NONE
      when OS::GTK_SCROLL_JUMP
        event.attr_detail = SWT::DRAG
      when OS::GTK_SCROLL_START
        event.attr_detail = SWT::HOME
      when OS::GTK_SCROLL_END
        event.attr_detail = SWT::END_
      when OS::GTK_SCROLL_PAGE_DOWN, OS::GTK_SCROLL_PAGE_RIGHT, OS::GTK_SCROLL_PAGE_FORWARD
        event.attr_detail = SWT::PAGE_DOWN
      when OS::GTK_SCROLL_PAGE_UP, OS::GTK_SCROLL_PAGE_LEFT, OS::GTK_SCROLL_PAGE_BACKWARD
        event.attr_detail = SWT::PAGE_UP
      when OS::GTK_SCROLL_STEP_DOWN, OS::GTK_SCROLL_STEP_RIGHT, OS::GTK_SCROLL_STEP_FORWARD
        event.attr_detail = SWT::ARROW_DOWN
      when OS::GTK_SCROLL_STEP_UP, OS::GTK_SCROLL_STEP_LEFT, OS::GTK_SCROLL_STEP_BACKWARD
        event.attr_detail = SWT::ARROW_UP
      end
      @detail = OS::GTK_SCROLL_NONE
      if (!@drag_sent)
        @detail = OS::GTK_SCROLL_NONE
      end
      post_event___org_eclipse_swt_widgets_scroll_bar_13(SWT::Selection, event)
      @parent.update_scroll_bar_value(self)
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_event_after(widget, gdk_event)
      gtk_event = GdkEvent.new
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_15(gtk_event, gdk_event, GdkEvent.attr_sizeof)
      case (gtk_event.attr_type)
      when OS::GDK_BUTTON_RELEASE
        gdk_event_button = GdkEventButton.new
        OS.memmove___org_eclipse_swt_widgets_scroll_bar_17(gdk_event_button, gdk_event, GdkEventButton.attr_sizeof)
        if ((gdk_event_button.attr_button).equal?(1) && (@detail).equal?(SWT::DRAG))
          if (!@drag_sent)
            event = Event.new
            event.attr_detail = SWT::DRAG
            post_event___org_eclipse_swt_widgets_scroll_bar_19(SWT::Selection, event)
          end
          post_event___org_eclipse_swt_widgets_scroll_bar_21(SWT::Selection)
        end
        @detail = OS::GTK_SCROLL_NONE
        @drag_sent = false
      end
      return super(widget, gdk_event)
    end
    
    typesig { [] }
    def hook_events
      super
      if (OS::GTK_VERSION >= OS._version(2, 6, 0))
        OS.g_signal_connect_closure(self.attr_handle, OS.attr_change_value, self.attr_display.attr_closures[CHANGE_VALUE], false)
      end
      OS.g_signal_connect_closure(@adjustment_handle, OS.attr_value_changed, self.attr_display.attr_closures[VALUE_CHANGED], false)
      OS.g_signal_connect_closure_by_id(self.attr_handle, self.attr_display.attr_signal_ids[EVENT_AFTER], 0, self.attr_display.attr_closures[EVENT_AFTER], false)
      OS.g_signal_connect_closure_by_id(self.attr_handle, self.attr_display.attr_signal_ids[BUTTON_PRESS_EVENT], 0, self.attr_display.attr_closures[BUTTON_PRESS_EVENT], false)
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
      return get_enabled && get_parent.get_enabled
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
      return get_visible && get_parent.is_visible
    end
    
    typesig { [] }
    def register
      super
      if (!(@adjustment_handle).equal?(0))
        self.attr_display.add_widget(@adjustment_handle, self)
      end
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
    
    typesig { [] }
    def release_widget
      super
      # parent = null;
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
      if (!(self.attr_handle).equal?(0))
        OS.gtk_widget_set_sensitive(self.attr_handle, enabled)
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
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_23(adjustment, @adjustment_handle)
      adjustment.attr_step_increment = (value).to_f
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_25(@adjustment_handle, adjustment)
      OS.g_signal_handlers_block_matched(@adjustment_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_adjustment_changed(@adjustment_handle)
      OS.g_signal_handlers_unblock_matched(@adjustment_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
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
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_27(adjustment, @adjustment_handle)
      minimum = RJava.cast_to_int(adjustment.attr_lower)
      if (value <= minimum)
        return
      end
      adjustment.attr_upper = value
      adjustment.attr_page_size = Math.min(RJava.cast_to_int(adjustment.attr_page_size), value - minimum)
      adjustment.attr_value = Math.min(RJava.cast_to_int(adjustment.attr_value), RJava.cast_to_int((value - adjustment.attr_page_size)))
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_29(@adjustment_handle, adjustment)
      OS.g_signal_handlers_block_matched(@adjustment_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_adjustment_changed(@adjustment_handle)
      OS.g_signal_handlers_unblock_matched(@adjustment_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
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
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_31(adjustment, @adjustment_handle)
      maximum = RJava.cast_to_int(adjustment.attr_upper)
      if (value >= maximum)
        return
      end
      adjustment.attr_lower = value
      adjustment.attr_page_size = Math.min(RJava.cast_to_int(adjustment.attr_page_size), maximum - value)
      adjustment.attr_value = Math.max(RJava.cast_to_int(adjustment.attr_value), value)
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_33(@adjustment_handle, adjustment)
      OS.g_signal_handlers_block_matched(@adjustment_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_adjustment_changed(@adjustment_handle)
      OS.g_signal_handlers_unblock_matched(@adjustment_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
    end
    
    typesig { [] }
    def set_orientation
      super
      if (!((@parent.attr_style & SWT::MIRRORED)).equal?(0))
        if (!((@parent.attr_state & CANVAS)).equal?(0))
          if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
            OS.gtk_range_set_inverted(self.attr_handle, true)
          end
        end
      end
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
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_35(adjustment, @adjustment_handle)
      adjustment.attr_page_increment = (value).to_f
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_37(@adjustment_handle, adjustment)
      OS.g_signal_handlers_block_matched(@adjustment_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_adjustment_changed(@adjustment_handle)
      OS.g_signal_handlers_unblock_matched(@adjustment_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
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
      value = Math.min(value, get_maximum - get_thumb)
      OS.g_signal_handlers_block_matched(@adjustment_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_adjustment_set_value(@adjustment_handle, value)
      OS.g_signal_handlers_unblock_matched(@adjustment_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
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
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_39(adjustment, @adjustment_handle)
      value = RJava.cast_to_int(Math.min(value, RJava.cast_to_int((adjustment.attr_upper - adjustment.attr_lower))))
      adjustment.attr_page_size = (value).to_f
      adjustment.attr_value = Math.min(RJava.cast_to_int(adjustment.attr_value), RJava.cast_to_int((adjustment.attr_upper - value)))
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_41(@adjustment_handle, adjustment)
      OS.g_signal_handlers_block_matched(@adjustment_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_adjustment_changed(@adjustment_handle)
      OS.g_signal_handlers_unblock_matched(@adjustment_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
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
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_43(adjustment, @adjustment_handle)
      adjustment.attr_lower = minimum
      adjustment.attr_upper = maximum
      adjustment.attr_step_increment = increment
      adjustment.attr_page_increment = page_increment
      adjustment.attr_page_size = thumb
      adjustment.attr_value = Math.min(Math.max(selection, minimum), maximum - thumb)
      OS.memmove___org_eclipse_swt_widgets_scroll_bar_45(@adjustment_handle, adjustment)
      OS.g_signal_handlers_block_matched(@adjustment_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_adjustment_changed(@adjustment_handle)
      OS.gtk_adjustment_value_changed(@adjustment_handle)
      OS.g_signal_handlers_unblock_matched(@adjustment_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
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
      if (@parent.set_scroll_bar_visible(self, visible))
        send_event(visible ? SWT::Show : SWT::Hide)
        @parent.send_event(SWT::Resize)
      end
    end
    
    private
    alias_method :initialize__scroll_bar, :initialize
  end
  
end
