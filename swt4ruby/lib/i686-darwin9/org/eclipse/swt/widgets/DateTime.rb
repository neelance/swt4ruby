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
  module DateTimeImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  # Instances of this class are selectable user interface
  # objects that allow the user to enter and modify date
  # or time values.
  # <p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not make sense to add children to it, or set a layout on it.
  # </p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>DATE, TIME, CALENDAR, SHORT, MEDIUM, LONG, DROP_DOWN</dd>
  # <dt><b>Events:</b></dt>
  # <dd>DefaultSelection, Selection</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles DATE, TIME, or CALENDAR may be specified,
  # and only one of the styles SHORT, MEDIUM, or LONG may be specified.
  # The DROP_DOWN style is a <em>HINT</em>, and it is only valid with the DATE style.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#datetime">DateTime snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.3
  # @noextend This class is not intended to be subclassed by clients.
  class DateTime < DateTimeImports.const_get :Composite
    include_class_members DateTimeImports
    
    class_module.module_eval {
      const_set_lazy(:MIN_YEAR) { 1752 }
      const_attr_reader  :MIN_YEAR
      
      # Gregorian switchover in North America: September 19, 1752
      const_set_lazy(:MAX_YEAR) { 9999 }
      const_attr_reader  :MAX_YEAR
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
    # @see SWT#DATE
    # @see SWT#TIME
    # @see SWT#CALENDAR
    # @see SWT#SHORT
    # @see SWT#MEDIUM
    # @see SWT#LONG
    # @see SWT#DROP_DOWN
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      super(parent, check_style(style))
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        # Even though it is legal to create this widget
        # with scroll bars, they serve no useful purpose
        # because they do not automatically scroll the
        # widget's client area.  The fix is to clear
        # the SWT style.
        style &= ~(SWT::H_SCROLL | SWT::V_SCROLL)
        style = check_bits(style, SWT::MEDIUM, SWT::SHORT, SWT::LONG, 0, 0, 0)
        return check_bits(style, SWT::DATE, SWT::TIME, SWT::CALENDAR, 0, 0, 0)
      end
    }
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is called when the user changes the control's value.
    # <code>widgetDefaultSelected</code> is typically called when ENTER is pressed.
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = 0
      height = 0
      widget = self.attr_view
      size = widget.cell.cell_size
      width = RJava.cast_to_int(Math.ceil(size.attr_width))
      height = RJava.cast_to_int(Math.ceil(size.attr_height))
      if ((width).equal?(0))
        width = DEFAULT_WIDTH
      end
      if ((height).equal?(0))
        height = DEFAULT_HEIGHT
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      border = get_border_width
      width += border * 2
      height += border * 2
      return Point.new(width, height)
    end
    
    typesig { [] }
    def create_handle
      widget = SWTDatePicker.new.alloc
      widget.init
      picker_style = OS::NSTextFieldAndStepperDatePickerStyle
      element_flags = 0
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        picker_style = OS::NSClockAndCalendarDatePickerStyle
        element_flags = OS::NSYearMonthDayDatePickerElementFlag
      else
        if (!((self.attr_style & SWT::TIME)).equal?(0))
          element_flags = !((self.attr_style & SWT::SHORT)).equal?(0) ? OS::NSHourMinuteDatePickerElementFlag : OS::NSHourMinuteSecondDatePickerElementFlag
        end
        if (!((self.attr_style & SWT::DATE)).equal?(0))
          element_flags = !((self.attr_style & SWT::SHORT)).equal?(0) ? OS::NSYearMonthDatePickerElementFlag : OS::NSYearMonthDayDatePickerElementFlag
        end
      end
      widget.set_draws_background(true)
      widget.set_date_picker_style(picker_style)
      widget.set_date_picker_elements(element_flags)
      date = NSCalendarDate.calendar_date
      widget.set_date_value(date)
      widget.set_target(widget)
      widget.set_action(OS.attr_sel_send_selection)
      self.attr_view = widget
    end
    
    typesig { [] }
    def default_nsfont
      return self.attr_display.attr_date_picker_font
    end
    
    typesig { [] }
    def get_calendar_date
      date = (self.attr_view).date_value
      return date.date_with_calendar_format(nil, nil)
    end
    
    typesig { [] }
    # Returns the receiver's date, or day of the month.
    # <p>
    # The first day of the month is 1, and the last day depends on the month and year.
    # </p>
    # 
    # @return a positive integer beginning with 1
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_day
      check_widget
      # 64
      return RJava.cast_to_int(get_calendar_date.day_of_month)
    end
    
    typesig { [] }
    # Returns the receiver's hours.
    # <p>
    # Hours is an integer between 0 and 23.
    # </p>
    # 
    # @return an integer between 0 and 23
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_hours
      check_widget
      # 64
      return RJava.cast_to_int(get_calendar_date.hour_of_day)
    end
    
    typesig { [] }
    # Returns the receiver's minutes.
    # <p>
    # Minutes is an integer between 0 and 59.
    # </p>
    # 
    # @return an integer between 0 and 59
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_minutes
      check_widget
      # 64
      return RJava.cast_to_int(get_calendar_date.minute_of_hour)
    end
    
    typesig { [] }
    # Returns the receiver's month.
    # <p>
    # The first month of the year is 0, and the last month is 11.
    # </p>
    # 
    # @return an integer between 0 and 11
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_month
      check_widget
      # 64
      return RJava.cast_to_int(get_calendar_date.month_of_year) - 1
    end
    
    typesig { [] }
    def get_name_text
      return !((self.attr_style & SWT::TIME)).equal?(0) ? RJava.cast_to_string(get_hours) + ":" + RJava.cast_to_string(get_minutes) + ":" + RJava.cast_to_string(get_seconds) : RJava.cast_to_string((get_month + 1)) + "/" + RJava.cast_to_string(get_day) + "/" + RJava.cast_to_string(get_year)
    end
    
    typesig { [] }
    # Returns the receiver's seconds.
    # <p>
    # Seconds is an integer between 0 and 59.
    # </p>
    # 
    # @return an integer between 0 and 59
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_seconds
      check_widget
      # 64
      return RJava.cast_to_int(get_calendar_date.second_of_minute)
    end
    
    typesig { [] }
    # Returns the receiver's year.
    # <p>
    # The first year is 1752 and the last year is 9999.
    # </p>
    # 
    # @return an integer between 1752 and 9999
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_year
      check_widget
      # 64
      return RJava.cast_to_int(get_calendar_date.year_of_common_era)
    end
    
    typesig { [::Java::Int] }
    # long
    def is_event_view(id)
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def is_flipped(id, sel)
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        return super(id, sel)
      end
      return true
    end
    
    typesig { [SelectionListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the control is selected by the user.
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
    
    typesig { [NSEvent, ::Java::Int] }
    def send_key_event(ns_event, type)
      result = super(ns_event, type)
      if (!result)
        return result
      end
      if (!(type).equal?(SWT::KeyDown))
        return result
      end
      if (((self.attr_style & SWT::CALENDAR)).equal?(0))
        key_code_ = ns_event.key_code
        case (key_code_)
        # KP Enter
        when 76, 36
          # Return
          post_event(SWT::DefaultSelection)
        end
      end
      return result
    end
    
    typesig { [] }
    def send_selection
      event = NSApplication.shared_application.current_event
      if (!(event).nil? && !((self.attr_style & SWT::CALENDAR)).equal?(0))
        if ((event.click_count).equal?(2))
          post_event(SWT::DefaultSelection)
        else
          if ((event.type).equal?(OS::NSLeftMouseUp))
            post_event(SWT::Selection)
          end
        end
      else
        # SWT.DATE or SWT.TIME
        post_event(SWT::Selection)
      end
    end
    
    typesig { [] }
    def update_background
      ns_color = nil
      if (!(self.attr_background_image).nil?)
        ns_color = NSColor.color_with_pattern_image(self.attr_background_image.attr_handle)
      else
        if (!(self.attr_background).nil?)
          ns_color = NSColor.color_with_device_red(self.attr_background[0], self.attr_background[1], self.attr_background[2], self.attr_background[3])
        else
          if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
            ns_color = NSColor.control_background_color
          else
            ns_color = NSColor.text_background_color
          end
        end
      end
      (self.attr_view).set_background_color(ns_color)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Sets the receiver's year, month, and day in a single operation.
    # <p>
    # This is the recommended way to set the date, because setting the year,
    # month, and day separately may result in invalid intermediate dates.
    # </p>
    # 
    # @param year an integer between 1752 and 9999
    # @param month an integer between 0 and 11
    # @param day a positive integer beginning with 1
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def set_date(year, month, day)
      check_widget
      if (year < MIN_YEAR || year > MAX_YEAR)
        return
      end
      date = get_calendar_date
      new_date = NSCalendarDate.date_with_year(year, month + 1, day, date.hour_of_day, date.minute_of_hour, date.second_of_minute, date.time_zone)
      if ((new_date.year_of_common_era).equal?(year) && (new_date.month_of_year).equal?(month + 1) && (new_date.day_of_month).equal?(day))
        (self.attr_view).set_date_value(new_date)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's date, or day of the month, to the specified day.
    # <p>
    # The first day of the month is 1, and the last day depends on the month and year.
    # If the specified day is not valid for the receiver's month and year, then it is ignored.
    # </p>
    # 
    # @param day a positive integer beginning with 1
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setDate
    def set_day(day)
      check_widget
      date = get_calendar_date
      new_date = NSCalendarDate.date_with_year(date.year_of_common_era, date.month_of_year, day, date.hour_of_day, date.minute_of_hour, date.second_of_minute, date.time_zone)
      if ((new_date.year_of_common_era).equal?(date.year_of_common_era) && (new_date.month_of_year).equal?(date.month_of_year) && (new_date.day_of_month).equal?(day))
        (self.attr_view).set_date_value(new_date)
      end
    end
    
    typesig { [Array.typed(::Java::Float)] }
    # double
    def set_foreground(color)
      ns_color = nil
      if ((color).nil?)
        if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
          ns_color = NSColor.control_text_color
        else
          ns_color = NSColor.text_color
        end
      else
        ns_color = NSColor.color_with_device_red(color[0], color[1], color[2], 1)
      end
      (self.attr_view).set_text_color(ns_color)
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's hours.
    # <p>
    # Hours is an integer between 0 and 23.
    # </p>
    # 
    # @param hours an integer between 0 and 23
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_hours(hours)
      check_widget
      if (hours < 0 || hours > 23)
        return
      end
      date = get_calendar_date
      new_date = NSCalendarDate.date_with_year(date.year_of_common_era, date.month_of_year, date.day_of_month, hours, date.minute_of_hour, date.second_of_minute, date.time_zone)
      (self.attr_view).set_date_value(new_date)
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's minutes.
    # <p>
    # Minutes is an integer between 0 and 59.
    # </p>
    # 
    # @param minutes an integer between 0 and 59
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_minutes(minutes)
      check_widget
      if (minutes < 0 || minutes > 59)
        return
      end
      date = get_calendar_date
      new_date = NSCalendarDate.date_with_year(date.year_of_common_era, date.month_of_year, date.day_of_month, date.hour_of_day, minutes, date.second_of_minute, date.time_zone)
      (self.attr_view).set_date_value(new_date)
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's month.
    # <p>
    # The first month of the year is 0, and the last month is 11.
    # If the specified month is not valid for the receiver's day and year, then it is ignored.
    # </p>
    # 
    # @param month an integer between 0 and 11
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setDate
    def set_month(month)
      check_widget
      date = get_calendar_date
      new_date = NSCalendarDate.date_with_year(date.year_of_common_era, month + 1, date.day_of_month, date.hour_of_day, date.minute_of_hour, date.second_of_minute, date.time_zone)
      if ((new_date.year_of_common_era).equal?(date.year_of_common_era) && (new_date.month_of_year).equal?(month + 1) && (new_date.day_of_month).equal?(date.day_of_month))
        (self.attr_view).set_date_value(new_date)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's seconds.
    # <p>
    # Seconds is an integer between 0 and 59.
    # </p>
    # 
    # @param seconds an integer between 0 and 59
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_seconds(seconds)
      check_widget
      if (seconds < 0 || seconds > 59)
        return
      end
      date = get_calendar_date
      new_date = NSCalendarDate.date_with_year(date.year_of_common_era, date.month_of_year, date.day_of_month, date.hour_of_day, date.minute_of_hour, seconds, date.time_zone)
      (self.attr_view).set_date_value(new_date)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Sets the receiver's hours, minutes, and seconds in a single operation.
    # 
    # @param hours an integer between 0 and 23
    # @param minutes an integer between 0 and 59
    # @param seconds an integer between 0 and 59
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def set_time(hours, minutes, seconds)
      check_widget
      if (hours < 0 || hours > 23 || minutes < 0 || minutes > 59 || seconds < 0 || seconds > 59)
        return
      end
      date = get_calendar_date
      new_date = NSCalendarDate.date_with_year(date.year_of_common_era, date.month_of_year, date.day_of_month, hours, minutes, seconds, date.time_zone)
      (self.attr_view).set_date_value(new_date)
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's year.
    # <p>
    # The first year is 1752 and the last year is 9999.
    # If the specified year is not valid for the receiver's day and month, then it is ignored.
    # </p>
    # 
    # @param year an integer between 1752 and 9999
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setDate
    def set_year(year)
      check_widget
      if (year < MIN_YEAR || year > MAX_YEAR)
        return
      end
      date = get_calendar_date
      new_date = NSCalendarDate.date_with_year(year, date.month_of_year, date.day_of_month, date.hour_of_day, date.minute_of_hour, date.second_of_minute, date.time_zone)
      if ((new_date.year_of_common_era).equal?(year) && (new_date.month_of_year).equal?(date.month_of_year) && (new_date.day_of_month).equal?(date.day_of_month))
        (self.attr_view).set_date_value(new_date)
      end
    end
    
    private
    alias_method :initialize__date_time, :initialize
  end
  
end
