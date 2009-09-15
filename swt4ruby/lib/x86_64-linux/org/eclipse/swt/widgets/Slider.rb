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
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Gtk
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
      @detail = 0
      @drag_sent = false
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
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        return check_bits(style, SWT::HORIZONTAL, SWT::VERTICAL, 0, 0, 0, 0)
      end
    }
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE
      self.attr_fixed_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
      if ((self.attr_fixed_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_fixed_set_has_window(self.attr_fixed_handle, true)
      # int
      h_adjustment = OS.gtk_adjustment_new(0, 0, 100, 1, 10, 10)
      if ((h_adjustment).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
        self.attr_handle = OS.gtk_hscrollbar_new(h_adjustment)
      else
        self.attr_handle = OS.gtk_vscrollbar_new(h_adjustment)
      end
      if ((self.attr_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      # Bug in GTK. In GTK 2.10, the buttons on either end of
      # a horizontal slider are created taller then the slider bar
      # when the GTK_CAN_FOCUS flag is set. The fix is not to set
      # the flag for horizontal bars in all versions of 2.10. Note
      # that a bug has been logged with GTK about this issue.
      # (http://bugzilla.gnome.org/show_bug.cgi?id=475909)
      if (OS::GTK_VERSION < OS._version(2, 10, 0) || !((self.attr_style & SWT::VERTICAL)).equal?(0))
        OS._gtk_widget_set_flags(self.attr_handle, OS::GTK_CAN_FOCUS)
      end
      OS.gtk_container_add(self.attr_fixed_handle, self.attr_handle)
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
      if (!@drag_sent)
        @detail = OS::GTK_SCROLL_NONE
      end
      post_event___org_eclipse_swt_widgets_slider_1(SWT::Selection, event)
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_event_after(widget, gdk_event)
      gtk_event = GdkEvent.new
      OS.memmove___org_eclipse_swt_widgets_slider_3(gtk_event, gdk_event, GdkEvent.attr_sizeof)
      case (gtk_event.attr_type)
      when OS::GDK_BUTTON_RELEASE
        gdk_event_button = GdkEventButton.new
        OS.memmove___org_eclipse_swt_widgets_slider_5(gdk_event_button, gdk_event, GdkEventButton.attr_sizeof)
        if ((gdk_event_button.attr_button).equal?(1) && (@detail).equal?(SWT::DRAG))
          if (!@drag_sent)
            event = Event.new
            event.attr_detail = SWT::DRAG
            post_event___org_eclipse_swt_widgets_slider_7(SWT::Selection, event)
          end
          post_event___org_eclipse_swt_widgets_slider_9(SWT::Selection)
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
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_value_changed, self.attr_display.attr_closures[VALUE_CHANGED], false)
    end
    
    typesig { [] }
    def register
      super
      # int
      h_adjustment = OS.gtk_range_get_adjustment(self.attr_handle)
      self.attr_display.add_widget(h_adjustment, self)
    end
    
    typesig { [] }
    def deregister
      super
      # int
      h_adjustment = OS.gtk_range_get_adjustment(self.attr_handle)
      self.attr_display.remove_widget(h_adjustment)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      if (!(w_hint).equal?(SWT::DEFAULT) && w_hint < 0)
        w_hint = 0
      end
      if (!(h_hint).equal?(SWT::DEFAULT) && h_hint < 0)
        h_hint = 0
      end
      size = compute_native_size(self.attr_handle, w_hint, h_hint, changed)
      if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
        if ((w_hint).equal?(SWT::DEFAULT))
          size.attr_x = 2 * size.attr_x
        end
      else
        if ((h_hint).equal?(SWT::DEFAULT))
          size.attr_y = 2 * size.attr_y
        end
      end
      return size
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
      # int
      h_adjustment = OS.gtk_range_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_slider_11(adjustment, h_adjustment)
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
      # int
      h_adjustment = OS.gtk_range_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_slider_13(adjustment, h_adjustment)
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
      # int
      h_adjustment = OS.gtk_range_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_slider_15(adjustment, h_adjustment)
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
      # int
      h_adjustment = OS.gtk_range_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_slider_17(adjustment, h_adjustment)
      return RJava.cast_to_int(adjustment.attr_page_increment)
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
      # int
      h_adjustment = OS.gtk_range_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_slider_19(adjustment, h_adjustment)
      return RJava.cast_to_int(adjustment.attr_value)
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
      # int
      h_adjustment = OS.gtk_range_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_slider_21(adjustment, h_adjustment)
      return RJava.cast_to_int(adjustment.attr_page_size)
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
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_range_set_increments(self.attr_handle, value, get_page_increment)
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
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
      # int
      h_adjustment = OS.gtk_range_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_slider_23(adjustment, h_adjustment)
      minimum = RJava.cast_to_int(adjustment.attr_lower)
      if (value <= minimum)
        return
      end
      adjustment.attr_upper = value
      adjustment.attr_page_size = Math.min(RJava.cast_to_int(adjustment.attr_page_size), value - minimum)
      adjustment.attr_value = Math.min(RJava.cast_to_int(adjustment.attr_value), RJava.cast_to_int((value - adjustment.attr_page_size)))
      OS.memmove___org_eclipse_swt_widgets_slider_25(h_adjustment, adjustment)
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_adjustment_changed(h_adjustment)
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
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
      # int
      h_adjustment = OS.gtk_range_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_slider_27(adjustment, h_adjustment)
      maximum = RJava.cast_to_int(adjustment.attr_upper)
      if (value >= maximum)
        return
      end
      adjustment.attr_lower = value
      adjustment.attr_page_size = Math.min(RJava.cast_to_int(adjustment.attr_page_size), maximum - value)
      adjustment.attr_value = Math.max(RJava.cast_to_int(adjustment.attr_value), value)
      OS.memmove___org_eclipse_swt_widgets_slider_29(h_adjustment, adjustment)
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_adjustment_changed(h_adjustment)
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
    end
    
    typesig { [] }
    def set_orientation
      super
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
          OS.gtk_range_set_inverted(self.attr_handle, true)
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
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_range_set_increments(self.attr_handle, get_increment, value)
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
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
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_range_set_value(self.attr_handle, value)
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
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
      # int
      h_adjustment = OS.gtk_range_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_slider_31(adjustment, h_adjustment)
      value = RJava.cast_to_int(Math.min(value, RJava.cast_to_int((adjustment.attr_upper - adjustment.attr_lower))))
      adjustment.attr_page_size = (value).to_f
      adjustment.attr_value = Math.min(RJava.cast_to_int(adjustment.attr_value), RJava.cast_to_int((adjustment.attr_upper - value)))
      OS.memmove___org_eclipse_swt_widgets_slider_33(h_adjustment, adjustment)
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_adjustment_changed(h_adjustment)
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
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
      # int
      h_adjustment = OS.gtk_range_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_slider_35(adjustment, h_adjustment)
      adjustment.attr_value = Math.min(Math.max(selection, minimum), maximum - thumb)
      adjustment.attr_lower = (minimum).to_f
      adjustment.attr_upper = (maximum).to_f
      adjustment.attr_page_size = (thumb).to_f
      adjustment.attr_step_increment = (increment).to_f
      adjustment.attr_page_increment = (page_increment).to_f
      OS.memmove___org_eclipse_swt_widgets_slider_37(h_adjustment, adjustment)
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_adjustment_changed(h_adjustment)
      OS.gtk_adjustment_value_changed(h_adjustment)
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
    end
    
    private
    alias_method :initialize__slider, :initialize
  end
  
end
