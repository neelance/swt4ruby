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
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
  # @noextend This class is not intended to be subclassed by clients.
  class ScrollBar < ScrollBarImports.const_get :Widget
    include_class_members ScrollBarImports
    
    attr_accessor :view
    alias_method :attr_view, :view
    undef_method :view
    alias_method :attr_view=, :view=
    undef_method :view=
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :minimum
    alias_method :attr_minimum, :minimum
    undef_method :minimum
    alias_method :attr_minimum=, :minimum=
    undef_method :minimum=
    
    attr_accessor :maximum
    alias_method :attr_maximum, :maximum
    undef_method :maximum
    alias_method :attr_maximum=, :maximum=
    undef_method :maximum=
    
    attr_accessor :thumb
    alias_method :attr_thumb, :thumb
    undef_method :thumb
    alias_method :attr_thumb=, :thumb=
    undef_method :thumb=
    
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
    
    attr_accessor :target
    alias_method :attr_target, :target
    undef_method :target
    alias_method :attr_target=, :target=
    undef_method :target=
    
    # long
    attr_accessor :action_selector
    alias_method :attr_action_selector, :action_selector
    undef_method :action_selector
    alias_method :attr_action_selector=, :action_selector=
    undef_method :action_selector=
    
    typesig { [] }
    def initialize
      @view = nil
      @parent = nil
      @minimum = 0
      @maximum = 0
      @thumb = 0
      @increment = 0
      @page_increment = 0
      @target = nil
      @action_selector = 0
      super()
      @maximum = 100
      @thumb = 10
      @increment = 1
      @page_increment = 10
      # Do nothing
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
      self.attr_display.remove_widget(@view)
    end
    
    typesig { [] }
    def get_drawing
      return @parent.get_drawing
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
      return @maximum
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
      return @minimum
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
      widget = @view
      value = widget.double_value
      return RJava.cast_to_int((0.5 + ((@maximum - @thumb - @minimum) * value + @minimum)))
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
      rect = (@view).frame
      return Point.new(RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
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
      return @thumb
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
    def is_drawing
      return get_drawing && @parent.is_drawing
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
      self.attr_display.add_widget(@view, self)
    end
    
    typesig { [] }
    def release_handle
      super
      if (!(@view).nil?)
        @view.release
      end
      @view = nil
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
      @parent = nil
    end
    
    typesig { [] }
    def send_selection
      value = 0
      if (!(@target).nil?)
        @view.send_action(@action_selector, @target)
      else
        value = get_selection
      end
      event = Event.new
      # 64
      hit_part = RJava.cast_to_int((@view).hit_part)
      case (hit_part)
      when OS::NSScrollerDecrementLine
        value -= @increment
        event.attr_detail = SWT::ARROW_UP
      when OS::NSScrollerDecrementPage
        value -= @page_increment
        event.attr_detail = SWT::PAGE_UP
      when OS::NSScrollerIncrementLine
        value += @increment
        event.attr_detail = SWT::ARROW_DOWN
      when OS::NSScrollerIncrementPage
        value += @page_increment
        event.attr_detail = SWT::PAGE_DOWN
      when OS::NSScrollerKnob
        event.attr_detail = SWT::DRAG
      end
      if ((@target).nil?)
        if (!(event.attr_detail).equal?(SWT::DRAG))
          set_selection(value)
        end
      end
      send_event___org_eclipse_swt_widgets_scroll_bar_1(SWT::Selection, event)
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
    
    typesig { [::Java::Float, ::Java::Float] }
    # double
    # double
    def set_clip_region(x, y)
      frame_ = @view.frame
      @parent.set_clip_region(frame_.attr_x + x, frame_.attr_y + y)
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
      else
        if (!((self.attr_state & DISABLED)).equal?(0))
          return
        end
        self.attr_state |= DISABLED
      end
      enable_widget(enabled)
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      if (!enabled || ((self.attr_state & DISABLED)).equal?(0))
        @view.set_enabled(enabled)
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
      if (value <= @minimum)
        return
      end
      if (value - @minimum < @thumb)
        @thumb = value - @minimum
      end
      selection = Math.max(@minimum, Math.min(get_selection, value - @thumb))
      @maximum = value
      update_bar(selection, @minimum, value, @thumb)
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
      if (value >= @maximum)
        return
      end
      if (@maximum - value < @thumb)
        @thumb = @maximum - value
      end
      selection = Math.min(@maximum - @thumb, Math.max(get_selection, value))
      @minimum = value
      update_bar(selection, value, @maximum, @thumb)
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
      update_bar(value, @minimum, @maximum, @thumb)
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
      value = Math.min(value, @maximum - @minimum)
      update_bar(get_selection, @minimum, @maximum, value)
      @thumb = value
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
      @thumb = thumb = Math.min(thumb, maximum - minimum)
      @maximum = maximum
      @minimum = minimum
      @increment = increment
      @page_increment = page_increment
      update_bar(selection, minimum, maximum, thumb)
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
      @parent.set_scroll_bar_visible(self, visible)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def update_bar(selection, minimum, maximum, thumb)
      widget = @view
      selection = Math.max(minimum, Math.min(maximum - thumb, selection))
      range = maximum - thumb - minimum
      fraction = range <= 0 ? 1 : ((selection - minimum)).to_f / range
      knob = range <= 0 ? 1 : (thumb).to_f / (maximum - minimum)
      widget.set_float_value(fraction, knob)
      widget.set_enabled(range > 0)
    end
    
    private
    alias_method :initialize__scroll_bar, :initialize
  end
  
end
