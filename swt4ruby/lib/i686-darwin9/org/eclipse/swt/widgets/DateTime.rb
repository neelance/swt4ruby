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
  module DateTimeImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Java::Text, :DateFormatSymbols
      include_const ::Java::Util, :Calendar
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :LongDateRec
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
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
  # <dd>DATE, TIME, CALENDAR, SHORT, MEDIUM, LONG</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles DATE, TIME, or CALENDAR may be specified,
  # and only one of the styles SHORT, MEDIUM, or LONG may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#datetime">DateTime snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.3
  class DateTime < DateTimeImports.const_get :Composite
    include_class_members DateTimeImports
    
    attr_accessor :date_rec
    alias_method :attr_date_rec, :date_rec
    undef_method :date_rec
    alias_method :attr_date_rec=, :date_rec=
    undef_method :date_rec=
    
    attr_accessor :date_and_time
    alias_method :attr_date_and_time, :date_and_time
    undef_method :date_and_time
    alias_method :attr_date_and_time=, :date_and_time=
    undef_method :date_and_time=
    
    class_module.module_eval {
      # copy of date for a kControlClockTypeHourMinuteSecond or time for a kControlClockTypeMonthDayYear
      const_set_lazy(:MIN_YEAR) { 1752 }
      const_attr_reader  :MIN_YEAR
      
      # Gregorian switchover in North America: September 19, 1752
      const_set_lazy(:MAX_YEAR) { 9999 }
      const_attr_reader  :MAX_YEAR
    }
    
    # Emulated Calendar variables
    attr_accessor :fg
    alias_method :attr_fg, :fg
    undef_method :fg
    alias_method :attr_fg=, :fg=
    undef_method :fg=
    
    attr_accessor :bg
    alias_method :attr_bg, :bg
    undef_method :bg
    alias_method :attr_bg=, :bg=
    undef_method :bg=
    
    attr_accessor :calendar
    alias_method :attr_calendar, :calendar
    undef_method :calendar
    alias_method :attr_calendar=, :calendar=
    undef_method :calendar=
    
    attr_accessor :format_symbols
    alias_method :attr_format_symbols, :format_symbols
    undef_method :format_symbols
    alias_method :attr_format_symbols=, :format_symbols=
    undef_method :format_symbols=
    
    attr_accessor :month_down
    alias_method :attr_month_down, :month_down
    undef_method :month_down
    alias_method :attr_month_down=, :month_down=
    undef_method :month_down=
    
    attr_accessor :month_up
    alias_method :attr_month_up, :month_up
    undef_method :month_up
    alias_method :attr_month_up=, :month_up=
    undef_method :month_up=
    
    attr_accessor :year_down
    alias_method :attr_year_down, :year_down
    undef_method :year_down
    alias_method :attr_year_down=, :year_down=
    undef_method :year_down=
    
    attr_accessor :year_up
    alias_method :attr_year_up, :year_up
    undef_method :year_up
    alias_method :attr_year_up=, :year_up=
    undef_method :year_up=
    
    class_module.module_eval {
      const_set_lazy(:MARGIN_WIDTH) { 2 }
      const_attr_reader  :MARGIN_WIDTH
      
      const_set_lazy(:MARGIN_HEIGHT) { 1 }
      const_attr_reader  :MARGIN_HEIGHT
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
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @date_rec = nil
      @date_and_time = nil
      @fg = nil
      @bg = nil
      @calendar = nil
      @format_symbols = nil
      @month_down = nil
      @month_up = nil
      @year_down = nil
      @year_up = nil
      super(parent, check_style(style) | (!((style & SWT::CALENDAR)).equal?(0) ? SWT::NO_REDRAW_RESIZE : 0))
      @date_and_time = LongDateRec.new
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        @calendar = Calendar.get_instance
        @format_symbols = DateFormatSymbols.new
        listener = Class.new(Listener.class == Class ? Listener : Object) do
          extend LocalClass
          include_class_members DateTime
          include Listener if Listener.class == Module
          
          typesig { [Event] }
          define_method :handle_event do |event|
            case (event.attr_type)
            when SWT::Paint
              handle_paint(event)
            when SWT::Resize
              handle_resize(event)
            when SWT::MouseDown
              handle_mouse_down(event)
            when SWT::KeyDown
              handle_key_down(event)
            when SWT::Traverse
              handle_traverse(event)
            end
          end
          
          typesig { [Object] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        add_listener(SWT::Paint, listener)
        add_listener(SWT::Resize, listener)
        add_listener(SWT::MouseDown, listener)
        add_listener(SWT::KeyDown, listener)
        add_listener(SWT::Traverse, listener)
        @year_down = Button.new(self, SWT::ARROW | SWT::LEFT)
        # yearDown.setToolTipText(SWT.getMessage ("SWT_Last_Year")); //$NON-NLS-1$
        @month_down = Button.new(self, SWT::ARROW | SWT::LEFT)
        # monthDown.setToolTipText(SWT.getMessage ("SWT_Last_Month")); //$NON-NLS-1$
        @month_up = Button.new(self, SWT::ARROW | SWT::RIGHT)
        # monthUp.setToolTipText(SWT.getMessage ("SWT_Next_Month")); //$NON-NLS-1$
        @year_up = Button.new(self, SWT::ARROW | SWT::RIGHT)
        listener = # yearUp.setToolTipText(SWT.getMessage ("SWT_Next_Year")); //$NON-NLS-1$
        Class.new(Listener.class == Class ? Listener : Object) do
          extend LocalClass
          include_class_members DateTime
          include Listener if Listener.class == Module
          
          typesig { [Event] }
          define_method :handle_event do |event|
            handle_selection(event)
          end
          
          typesig { [Object] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        @year_down.add_listener(SWT::Selection, listener)
        @month_down.add_listener(SWT::Selection, listener)
        @month_up.add_listener(SWT::Selection, listener)
        @year_up.add_listener(SWT::Selection, listener)
      end
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
      if ((w_hint).equal?(SWT::DEFAULT) || (h_hint).equal?(SWT::DEFAULT))
        if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
          cell_size = get_cell_size(nil)
          button_size = @month_down.compute_size(SWT::DEFAULT, SWT::DEFAULT, changed)
          width = cell_size.attr_x * 7
          height = cell_size.attr_y * 7 + Math.max(cell_size.attr_y, button_size.attr_y)
        else
          rect = Rect.new
          OS._get_best_control_rect(self.attr_handle, rect, nil)
          width = rect.attr_right - rect.attr_left
          height = rect.attr_bottom - rect.attr_top
        end
      end
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
      clock_type = -1
      if (!((self.attr_style & SWT::TIME)).equal?(0))
        clock_type = !((self.attr_style & SWT::SHORT)).equal?(0) ? OS.attr_k_control_clock_type_hour_minute : OS.attr_k_control_clock_type_hour_minute_second
      end
      if (!((self.attr_style & SWT::DATE)).equal?(0))
        clock_type = !((self.attr_style & SWT::SHORT)).equal?(0) ? OS.attr_k_control_clock_type_month_year : OS.attr_k_control_clock_type_month_day_year
      end
      if (!(clock_type).equal?(-1))
        # SWT.DATE and SWT.TIME
        clock_flags = OS.attr_k_control_clock_flag_standard
        out_control = Array.typed(::Java::Int).new(1) { 0 }
        window = OS._get_control_owner(self.attr_parent.attr_handle)
        OS._create_clock_control(window, nil, clock_type, clock_flags, out_control)
        if ((out_control[0]).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        self.attr_handle = out_control[0]
      else
        # SWT.CALENDAR
        # TODO: on Cocoa, can use NSDatePicker - otherwise, use emulated:
        super
      end
    end
    
    typesig { [] }
    def create_widget
      super
      get_date
    end
    
    typesig { [SwtGC, Point, ::Java::Int] }
    def draw_day(gc, cell_size, day)
      cell = get_cell(day)
      location = get_cell_location(cell, cell_size)
      str = String.value_of(day)
      extent = gc.string_extent(str)
      date = @calendar.get(Calendar::DAY_OF_MONTH)
      if ((day).equal?(date))
        display = get_display
        gc.set_background(display.get_system_color(SWT::COLOR_LIST_SELECTION))
        gc.set_foreground(display.get_system_color(SWT::COLOR_LIST_SELECTION_TEXT))
        gc.fill_rectangle(location.attr_x, location.attr_y, cell_size.attr_x, cell_size.attr_y)
      end
      gc.draw_string(str, location.attr_x + (cell_size.attr_x - extent.attr_x) / 2, location.attr_y + (cell_size.attr_y - extent.attr_y) / 2, true)
      if ((day).equal?(date))
        gc.set_background(get_background)
        gc.set_foreground(get_foreground)
      end
    end
    
    typesig { [SwtGC, Point, Rectangle] }
    def draw_days(gc, cell_size, client)
      gc.set_background(get_background)
      gc.set_foreground(get_foreground)
      gc.fill_rectangle(0, cell_size.attr_y, client.attr_width, cell_size.attr_y * 7)
      first_day = @calendar.get_actual_minimum(Calendar::DAY_OF_MONTH)
      last_day = @calendar.get_actual_maximum(Calendar::DAY_OF_MONTH)
      day = first_day
      while day <= last_day
        draw_day(gc, cell_size, day)
        day += 1
      end
    end
    
    typesig { [SwtGC, Point, Rectangle] }
    def draw_days_of_week(gc, cell_size, client)
      display = get_display
      gc.set_background(display.get_system_color(SWT::COLOR_WIDGET_BACKGROUND))
      gc.set_foreground(display.get_system_color(SWT::COLOR_WIDGET_FOREGROUND))
      gc.fill_rectangle(0, 0, client.attr_width, cell_size.attr_y)
      days = @format_symbols.get_short_weekdays
      x = 0
      y = 0
      i = 1
      while i < days.attr_length
        day = days[i]
        extent = gc.string_extent(day)
        gc.draw_string(day, x + (cell_size.attr_x - extent.attr_x) / 2, y + (cell_size.attr_y - extent.attr_y) / 2, true)
        x += cell_size.attr_x
        i += 1
      end
      gc.draw_line(0, cell_size.attr_y - 1, client.attr_width, cell_size.attr_y - 1)
    end
    
    typesig { [SwtGC, Point, Rectangle] }
    def draw_month(gc, cell_size, client)
      display = get_display
      gc.set_background(display.get_system_color(SWT::COLOR_WIDGET_BACKGROUND))
      gc.set_foreground(display.get_system_color(SWT::COLOR_WIDGET_FOREGROUND))
      y = cell_size.attr_y * 7
      gc.fill_rectangle(0, y, client.attr_width, cell_size.attr_y)
      gc.draw_line(0, y - 1, client.attr_width, y - 1)
      str = RJava.cast_to_string(@format_symbols.get_short_months[@calendar.get(Calendar::MONTH)]) + ", " + RJava.cast_to_string(@calendar.get(Calendar::YEAR))
      extent = gc.string_extent(str)
      gc.draw_string(str, (cell_size.attr_x * 7 - extent.attr_x) / 2, y + (cell_size.attr_y - extent.attr_y) / 2, true)
    end
    
    typesig { [Event] }
    def handle_key_down(event)
      new_day = @calendar.get(Calendar::DAY_OF_MONTH)
      case (event.attr_key_code)
      when SWT::ARROW_DOWN
        new_day += 7
      when SWT::ARROW_UP
        new_day -= 7
      when SWT::ARROW_RIGHT
        new_day += 1
      when SWT::ARROW_LEFT
        new_day -= 1
      end
      set_day(new_day, true)
    end
    
    typesig { [Event] }
    def handle_mouse_down(event)
      set_focus
      cell_size = get_cell_size(nil)
      column = event.attr_x / cell_size.attr_x
      row = event.attr_y / cell_size.attr_y
      cell = row * 7 + column
      new_day = get_date(cell)
      set_day(new_day, true)
    end
    
    typesig { [Event] }
    def handle_paint(event)
      gc = event.attr_gc
      client = get_client_area
      cell_size = get_cell_size(gc)
      draw_days_of_week(gc, cell_size, client)
      draw_days(gc, cell_size, client)
      draw_month(gc, cell_size, client)
    end
    
    typesig { [Event] }
    def handle_resize(event)
      @year_down.pack
      @month_down.pack
      @month_up.pack
      @year_up.pack
      cell_size = get_cell_size(nil)
      size = @month_down.get_size
      height = Math.max(cell_size.attr_y, size.attr_y)
      y = cell_size.attr_y * 7 + (height - size.attr_y) / 2
      @year_down.set_location(0, y)
      @month_down.set_location(size.attr_x, y)
      x = cell_size.attr_x * 7 - size.attr_x
      @month_up.set_location(x - size.attr_x, y)
      @year_up.set_location(x, y)
    end
    
    typesig { [Event] }
    def handle_selection(event)
      if ((event.attr_widget).equal?(@month_down))
        @calendar.add(Calendar::MONTH, -1)
      else
        if ((event.attr_widget).equal?(@month_up))
          @calendar.add(Calendar::MONTH, 1)
        else
          if ((event.attr_widget).equal?(@year_down))
            @calendar.add(Calendar::YEAR, -1)
          else
            if ((event.attr_widget).equal?(@year_up))
              @calendar.add(Calendar::YEAR, 1)
            else
              return
            end
          end
        end
      end
      redraw
      post_event(SWT::Selection)
    end
    
    typesig { [Event] }
    def handle_traverse(event)
      case (event.attr_detail)
      when SWT::TRAVERSE_ESCAPE, SWT::TRAVERSE_PAGE_NEXT, SWT::TRAVERSE_PAGE_PREVIOUS, SWT::TRAVERSE_RETURN, SWT::TRAVERSE_TAB_NEXT, SWT::TRAVERSE_TAB_PREVIOUS
        event.attr_doit = true
      end
    end
    
    typesig { [SwtGC] }
    def get_cell_size(gc)
      dispose = (gc).nil?
      if ((gc).nil?)
        gc = SwtGC.new(self)
      end
      width = 0
      height = 0
      days = @format_symbols.get_short_weekdays
      i = 0
      while i < days.attr_length
        extent = gc.string_extent(days[i])
        width = Math.max(width, extent.attr_x)
        height = Math.max(height, extent.attr_y)
        i += 1
      end
      first_day = @calendar.get_minimum(Calendar::DAY_OF_MONTH)
      last_day = @calendar.get_maximum(Calendar::DAY_OF_MONTH)
      day = first_day
      while day <= last_day
        extent = gc.string_extent(String.value_of(day))
        width = Math.max(width, extent.attr_x)
        height = Math.max(height, extent.attr_y)
        day += 1
      end
      if (dispose)
        gc.dispose
      end
      return Point.new(width + MARGIN_WIDTH * 2, height + MARGIN_HEIGHT * 2)
    end
    
    typesig { [::Java::Int, Point] }
    def get_cell_location(cell, cell_size)
      return Point.new(cell % 7 * cell_size.attr_x, cell / 7 * cell_size.attr_y)
    end
    
    typesig { [::Java::Int] }
    def get_cell(date)
      day = @calendar.get(Calendar::DAY_OF_MONTH)
      @calendar.set(Calendar::DAY_OF_MONTH, 1)
      result = date + @calendar.get(Calendar::DAY_OF_WEEK) + 5
      @calendar.set(Calendar::DAY_OF_MONTH, day)
      return result
    end
    
    typesig { [] }
    def get_date
      @date_rec = LongDateRec.new
      OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_clock_long_date_tag, LongDateRec.attr_sizeof, @date_rec, nil)
    end
    
    typesig { [::Java::Int] }
    def get_date(cell)
      day = @calendar.get(Calendar::DAY_OF_MONTH)
      @calendar.set(Calendar::DAY_OF_MONTH, 1)
      result = cell - @calendar.get(Calendar::DAY_OF_WEEK) - 5
      @calendar.set(Calendar::DAY_OF_MONTH, day)
      return result
    end
    
    typesig { [] }
    def get_background
      check_widget
      if ((@bg).nil?)
        return get_display.get_system_color(SWT::COLOR_LIST_BACKGROUND)
      end
      return @bg
    end
    
    typesig { [] }
    def get_foreground
      check_widget
      if ((@fg).nil?)
        return get_display.get_system_color(SWT::COLOR_LIST_FOREGROUND)
      end
      return @fg
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
      if (!((self.attr_style & SWT::TIME)).equal?(0))
        return @date_and_time.attr_day
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        return @calendar.get(Calendar::DAY_OF_MONTH)
      end
      get_date
      return @date_rec.attr_day
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
      if (!((self.attr_style & SWT::DATE)).equal?(0))
        return @date_and_time.attr_hour
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        return @calendar.get(Calendar::HOUR_OF_DAY)
      end
      get_date
      return @date_rec.attr_hour
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
      if (!((self.attr_style & SWT::DATE)).equal?(0))
        return @date_and_time.attr_minute
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        return @calendar.get(Calendar::MINUTE)
      end
      get_date
      return @date_rec.attr_minute
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
      if (!((self.attr_style & SWT::TIME)).equal?(0))
        return @date_and_time.attr_month - 1
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        return @calendar.get(Calendar::MONTH)
      end
      get_date
      return @date_rec.attr_month - 1
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
      if (!((self.attr_style & SWT::DATE)).equal?(0))
        return @date_and_time.attr_second
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        return @calendar.get(Calendar::SECOND)
      end
      get_date
      return @date_rec.attr_second
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
      if (!((self.attr_style & SWT::TIME)).equal?(0))
        return @date_and_time.attr_year
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        return @calendar.get(Calendar::YEAR)
      end
      get_date
      return @date_rec.attr_year
    end
    
    typesig { [] }
    def hook_events
      super
      if (OS::VERSION >= 0x1040)
        clock_proc = self.attr_display.attr_clock_proc
        mask = Array.typed(::Java::Int).new([OS.attr_k_event_class_clock_view, OS.attr_k_event_clock_date_or_time_changed, ])
        control_target = OS._get_control_event_target(self.attr_handle)
        OS._install_event_handler(control_target, clock_proc, mask.attr_length / 2, mask, self.attr_handle, nil)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def is_valid(field_name, value)
      year = !((self.attr_style & SWT::TIME)).equal?(0) ? @date_and_time.attr_year : @date_rec.attr_year
      month = !((self.attr_style & SWT::TIME)).equal?(0) ? @date_and_time.attr_month : @date_rec.attr_month
      calendar = Calendar.get_instance
      calendar.set(Calendar::YEAR, year)
      calendar.set(Calendar::MONTH, month - 1)
      min = calendar.get_actual_minimum(field_name)
      max_ = calendar.get_actual_maximum(field_name)
      return value >= min && value <= max_
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def is_valid_date(year, month, day)
      calendar = Calendar.get_instance
      calendar.set(Calendar::YEAR, year)
      calendar.set(Calendar::MONTH, month)
      calendar.set(Calendar::DAY_OF_MONTH, day)
      return (calendar.get(Calendar::YEAR)).equal?(year) && (calendar.get(Calendar::MONTH)).equal?(month) && (calendar.get(Calendar::DAY_OF_MONTH)).equal?(day)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_clock_date_or_time_changed(next_handler, the_event, user_data)
      send_selection_event
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_hit(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      if (OS::VERSION < 0x1040)
        send_selection_event
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_text_input_unicode_for_key_event(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      if (OS::VERSION < 0x1040)
        send_selection_event
      end
      return result
    end
    
    typesig { [] }
    def poll_track_event
      return (!((self.attr_style & SWT::DATE)).equal?(0)) || (!((self.attr_style & SWT::TIME)).equal?(0))
    end
    
    typesig { [::Java::Int, Point] }
    def redraw(cell, cell_size)
      location = get_cell_location(cell, cell_size)
      redraw(location.attr_x, location.attr_y, cell_size.attr_x, cell_size.attr_y, false)
    end
    
    typesig { [] }
    def release_widget
      super
      @date_rec = nil
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
    
    typesig { [] }
    def send_selection_event
      rec = LongDateRec.new
      OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_clock_long_date_tag, LongDateRec.attr_sizeof, rec, nil)
      if (!(rec.attr_second).equal?(@date_rec.attr_second) || !(rec.attr_minute).equal?(@date_rec.attr_minute) || !(rec.attr_hour).equal?(@date_rec.attr_hour) || !(rec.attr_day).equal?(@date_rec.attr_day) || !(rec.attr_month).equal?(@date_rec.attr_month) || !(rec.attr_year).equal?(@date_rec.attr_year))
        @date_rec = rec
        post_event(SWT::Selection)
      end
    end
    
    typesig { [Color] }
    def set_background(color)
      check_widget
      super(color)
      @bg = color
    end
    
    typesig { [Color] }
    def set_foreground(color)
      check_widget
      super(color)
      @fg = color
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def set_day(new_day, notify)
      first_day = @calendar.get_actual_minimum(Calendar::DAY_OF_MONTH)
      last_day = @calendar.get_actual_maximum(Calendar::DAY_OF_MONTH)
      if (!(first_day <= new_day && new_day <= last_day))
        return
      end
      cell_size = get_cell_size(nil)
      redraw(get_cell(@calendar.get(Calendar::DAY_OF_MONTH)), cell_size)
      @calendar.set(Calendar::DAY_OF_MONTH, new_day)
      redraw(get_cell(@calendar.get(Calendar::DAY_OF_MONTH)), cell_size)
      if (notify)
        post_event(SWT::Selection)
      end
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
      if (!is_valid_date(year, month, day))
        return
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        @calendar.set(Calendar::YEAR, year)
        @calendar.set(Calendar::MONTH, month)
        redraw
        set_day(day, false)
      else
        @date_rec.attr_year = RJava.cast_to_short(year)
        @date_rec.attr_month = RJava.cast_to_short((month + 1))
        @date_rec.attr_day = RJava.cast_to_short(day)
        OS._set_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_clock_long_date_tag, LongDateRec.attr_sizeof, @date_rec)
        OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_clock_long_date_tag, LongDateRec.attr_sizeof, @date_rec, nil)
        redraw
        if (!((self.attr_style & SWT::TIME)).equal?(0))
          @date_and_time.attr_year = RJava.cast_to_short(year)
          @date_and_time.attr_month = RJava.cast_to_short((month + 1))
          @date_and_time.attr_day = RJava.cast_to_short(day)
        end
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's date, or day of the month, to the specified day.
    # <p>
    # The first day of the month is 1, and the last day depends on the month and year.
    # </p>
    # 
    # @param day a positive integer beginning with 1
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_day(day)
      check_widget
      if (!is_valid(Calendar::DAY_OF_MONTH, day))
        return
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        set_day(day, false)
      else
        @date_rec.attr_day = RJava.cast_to_short(day)
        OS._set_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_clock_long_date_tag, LongDateRec.attr_sizeof, @date_rec)
        OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_clock_long_date_tag, LongDateRec.attr_sizeof, @date_rec, nil)
        if (!((self.attr_style & SWT::TIME)).equal?(0))
          @date_and_time.attr_day = RJava.cast_to_short(day)
        end
        redraw
      end
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
      if (!is_valid(Calendar::HOUR_OF_DAY, hours))
        return
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        @calendar.set(Calendar::HOUR_OF_DAY, hours)
      else
        @date_rec.attr_hour = RJava.cast_to_short(hours)
        OS._set_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_clock_long_date_tag, LongDateRec.attr_sizeof, @date_rec)
        OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_clock_long_date_tag, LongDateRec.attr_sizeof, @date_rec, nil)
        if (!((self.attr_style & SWT::DATE)).equal?(0))
          @date_and_time.attr_hour = RJava.cast_to_short(hours)
        end
      end
      redraw
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
      if (!is_valid(Calendar::MINUTE, minutes))
        return
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        @calendar.set(Calendar::MINUTE, minutes)
      else
        @date_rec.attr_minute = RJava.cast_to_short(minutes)
        OS._set_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_clock_long_date_tag, LongDateRec.attr_sizeof, @date_rec)
        OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_clock_long_date_tag, LongDateRec.attr_sizeof, @date_rec, nil)
        if (!((self.attr_style & SWT::DATE)).equal?(0))
          @date_and_time.attr_minute = RJava.cast_to_short(minutes)
        end
      end
      redraw
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's month.
    # <p>
    # The first month of the year is 0, and the last month is 11.
    # </p>
    # 
    # @param month an integer between 0 and 11
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_month(month)
      check_widget
      if (!is_valid(Calendar::MONTH, month))
        return
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        @calendar.set(Calendar::MONTH, month)
      else
        @date_rec.attr_month = RJava.cast_to_short((month + 1))
        OS._set_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_clock_long_date_tag, LongDateRec.attr_sizeof, @date_rec)
        OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_clock_long_date_tag, LongDateRec.attr_sizeof, @date_rec, nil)
        if (!((self.attr_style & SWT::TIME)).equal?(0))
          @date_and_time.attr_month = RJava.cast_to_short((month + 1))
        end
      end
      redraw
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
      if (!is_valid(Calendar::SECOND, seconds))
        return
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        @calendar.set(Calendar::SECOND, seconds)
      else
        @date_rec.attr_second = RJava.cast_to_short(seconds)
        OS._set_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_clock_long_date_tag, LongDateRec.attr_sizeof, @date_rec)
        OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_clock_long_date_tag, LongDateRec.attr_sizeof, @date_rec, nil)
        if (!((self.attr_style & SWT::DATE)).equal?(0))
          @date_and_time.attr_second = RJava.cast_to_short(seconds)
        end
      end
      redraw
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
      if (!is_valid(Calendar::HOUR_OF_DAY, hours))
        return
      end
      if (!is_valid(Calendar::MINUTE, minutes))
        return
      end
      if (!is_valid(Calendar::SECOND, seconds))
        return
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        @calendar.set(Calendar::HOUR_OF_DAY, hours)
        @calendar.set(Calendar::MINUTE, minutes)
        @calendar.set(Calendar::SECOND, seconds)
      else
        @date_rec.attr_hour = RJava.cast_to_short(hours)
        @date_rec.attr_minute = RJava.cast_to_short(minutes)
        @date_rec.attr_second = RJava.cast_to_short(seconds)
        OS._set_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_clock_long_date_tag, LongDateRec.attr_sizeof, @date_rec)
        OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_clock_long_date_tag, LongDateRec.attr_sizeof, @date_rec, nil)
        if (!((self.attr_style & SWT::DATE)).equal?(0))
          @date_and_time.attr_hour = RJava.cast_to_short(hours)
          @date_and_time.attr_minute = RJava.cast_to_short(minutes)
          @date_and_time.attr_second = RJava.cast_to_short(seconds)
        end
      end
      redraw
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's year.
    # <p>
    # The first year is 1752 and the last year is 9999.
    # </p>
    # 
    # @param year an integer between 1752 and 9999
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_year(year)
      check_widget
      # if (!isValid(Calendar.YEAR, year)) return;
      if (year < MIN_YEAR || year > MAX_YEAR)
        return
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        @calendar.set(Calendar::YEAR, year)
      else
        @date_rec.attr_year = RJava.cast_to_short(year)
        OS._set_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_clock_long_date_tag, LongDateRec.attr_sizeof, @date_rec)
        OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_clock_long_date_tag, LongDateRec.attr_sizeof, @date_rec, nil)
        if (!((self.attr_style & SWT::TIME)).equal?(0))
          @date_and_time.attr_year = RJava.cast_to_short(year)
        end
      end
      redraw
    end
    
    private
    alias_method :initialize__date_time, :initialize
  end
  
end
