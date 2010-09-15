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
      include_const ::Java::Text, :DateFormatSymbols
      include_const ::Java::Util, :Calendar
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal::Gtk, :OS
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
    
    attr_accessor :day
    alias_method :attr_day, :day
    undef_method :day
    alias_method :attr_day=, :day=
    undef_method :day=
    
    attr_accessor :month
    alias_method :attr_month, :month
    undef_method :month
    alias_method :attr_month=, :month=
    undef_method :month=
    
    attr_accessor :year
    alias_method :attr_year, :year
    undef_method :year
    alias_method :attr_year=, :year=
    undef_method :year=
    
    attr_accessor :hours
    alias_method :attr_hours, :hours
    undef_method :hours
    alias_method :attr_hours=, :hours=
    undef_method :hours=
    
    attr_accessor :minutes
    alias_method :attr_minutes, :minutes
    undef_method :minutes
    alias_method :attr_minutes=, :minutes=
    undef_method :minutes=
    
    attr_accessor :seconds
    alias_method :attr_seconds, :seconds
    undef_method :seconds
    alias_method :attr_seconds=, :seconds=
    undef_method :seconds=
    
    class_module.module_eval {
      const_set_lazy(:MIN_YEAR) { 1752 }
      const_attr_reader  :MIN_YEAR
      
      # Gregorian switchover in North America: September 19, 1752
      const_set_lazy(:MAX_YEAR) { 9999 }
      const_attr_reader  :MAX_YEAR
    }
    
    # Emulated DATE and TIME variables
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
    
    attr_accessor :down
    alias_method :attr_down, :down
    undef_method :down
    alias_method :attr_down=, :down=
    undef_method :down=
    
    attr_accessor :up
    alias_method :attr_up, :up
    undef_method :up
    alias_method :attr_up=, :up=
    undef_method :up=
    
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    attr_accessor :format
    alias_method :attr_format, :format
    undef_method :format
    alias_method :attr_format=, :format=
    undef_method :format=
    
    attr_accessor :field_indices
    alias_method :attr_field_indices, :field_indices
    undef_method :field_indices
    alias_method :attr_field_indices=, :field_indices=
    undef_method :field_indices=
    
    attr_accessor :field_names
    alias_method :attr_field_names, :field_names
    undef_method :field_names
    alias_method :attr_field_names=, :field_names=
    undef_method :field_names=
    
    attr_accessor :field_count
    alias_method :attr_field_count, :field_count
    undef_method :field_count
    alias_method :attr_field_count=, :field_count=
    undef_method :field_count=
    
    attr_accessor :current_field
    alias_method :attr_current_field, :current_field
    undef_method :current_field
    alias_method :attr_current_field=, :current_field=
    undef_method :current_field=
    
    attr_accessor :character_count
    alias_method :attr_character_count, :character_count
    undef_method :character_count
    alias_method :attr_character_count=, :character_count=
    undef_method :character_count=
    
    attr_accessor :ignore_verify
    alias_method :attr_ignore_verify, :ignore_verify
    undef_method :ignore_verify
    alias_method :attr_ignore_verify=, :ignore_verify=
    undef_method :ignore_verify=
    
    class_module.module_eval {
      const_set_lazy(:DEFAULT_SHORT_DATE_FORMAT) { "MM/YYYY" }
      const_attr_reader  :DEFAULT_SHORT_DATE_FORMAT
      
      const_set_lazy(:DEFAULT_MEDIUM_DATE_FORMAT) { "MM/DD/YYYY" }
      const_attr_reader  :DEFAULT_MEDIUM_DATE_FORMAT
      
      const_set_lazy(:DEFAULT_LONG_DATE_FORMAT) { "MM/DD/YYYY" }
      const_attr_reader  :DEFAULT_LONG_DATE_FORMAT
      
      const_set_lazy(:DEFAULT_SHORT_TIME_FORMAT) { "HH:MM AM" }
      const_attr_reader  :DEFAULT_SHORT_TIME_FORMAT
      
      const_set_lazy(:DEFAULT_MEDIUM_TIME_FORMAT) { "HH:MM:SS AM" }
      const_attr_reader  :DEFAULT_MEDIUM_TIME_FORMAT
      
      const_set_lazy(:DEFAULT_LONG_TIME_FORMAT) { "HH:MM:SS AM" }
      const_attr_reader  :DEFAULT_LONG_TIME_FORMAT
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
      @day = 0
      @month = 0
      @year = 0
      @hours = 0
      @minutes = 0
      @seconds = 0
      @calendar = nil
      @format_symbols = nil
      @down = nil
      @up = nil
      @text = nil
      @format = nil
      @field_indices = nil
      @field_names = nil
      @field_count = 0
      @current_field = 0
      @character_count = 0
      @ignore_verify = false
      super(parent, check_style(style))
      @current_field = 0
      @character_count = 0
      @ignore_verify = false
      if (((self.attr_style & SWT::CALENDAR)).equal?(0))
        # SWT.DATE and SWT.TIME
        @calendar = Calendar.get_instance
        @format_symbols = DateFormatSymbols.new
        @text = Text.new(self, SWT::SINGLE)
        # disable the native drag and drop for the date/time text field
        OS.gtk_drag_dest_unset(@text.attr_handle)
        if (!((self.attr_style & SWT::DATE)).equal?(0))
          set_format(!((self.attr_style & SWT::SHORT)).equal?(0) ? DEFAULT_SHORT_DATE_FORMAT : !((self.attr_style & SWT::LONG)).equal?(0) ? DEFAULT_LONG_DATE_FORMAT : DEFAULT_MEDIUM_DATE_FORMAT)
        else
          # SWT.TIME
          set_format(!((self.attr_style & SWT::SHORT)).equal?(0) ? DEFAULT_SHORT_TIME_FORMAT : !((self.attr_style & SWT::LONG)).equal?(0) ? DEFAULT_LONG_TIME_FORMAT : DEFAULT_MEDIUM_TIME_FORMAT)
        end
        @text.set_text(get_formatted_string(self.attr_style))
        listener = Class.new(Listener.class == Class ? Listener : Object) do
          local_class_in DateTime
          include_class_members DateTime
          include Listener if Listener.class == Module
          
          typesig { [Event] }
          define_method :handle_event do |event|
            case (event.attr_type)
            when SWT::KeyDown
              on_key_down(event)
            when SWT::FocusIn
              on_focus_in(event)
            when SWT::FocusOut
              on_focus_out(event)
            when SWT::MouseDown
              on_mouse_click(event)
            when SWT::MouseUp
              on_mouse_click(event)
            when SWT::Verify
              on_verify(event)
            end
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        @text.add_listener(SWT::KeyDown, listener)
        @text.add_listener(SWT::FocusIn, listener)
        @text.add_listener(SWT::FocusOut, listener)
        @text.add_listener(SWT::MouseDown, listener)
        @text.add_listener(SWT::MouseUp, listener)
        @text.add_listener(SWT::Verify, listener)
        @up = Button.new(self, SWT::ARROW | SWT::UP)
        # up.setToolTipText(SWT.getMessage ("SWT_Up")); //$NON-NLS-1$
        @down = Button.new(self, SWT::ARROW | SWT::DOWN)
        @up.add_listener(SWT::Selection, # down.setToolTipText(SWT.getMessage ("SWT_Down")); //$NON-NLS-1$
        Class.new(Listener.class == Class ? Listener : Object) do
          local_class_in DateTime
          include_class_members DateTime
          include Listener if Listener.class == Module
          
          typesig { [Event] }
          define_method :handle_event do |event|
            increment_field(+1)
            self.attr_text.set_focus
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
        @down.add_listener(SWT::Selection, Class.new(Listener.class == Class ? Listener : Object) do
          local_class_in DateTime
          include_class_members DateTime
          include Listener if Listener.class == Module
          
          typesig { [Event] }
          define_method :handle_event do |event|
            increment_field(-1)
            self.attr_text.set_focus
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
        add_listener(SWT::Resize, Class.new(Listener.class == Class ? Listener : Object) do
          local_class_in DateTime
          include_class_members DateTime
          include Listener if Listener.class == Module
          
          typesig { [Event] }
          define_method :handle_event do |event|
            on_resize(event)
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
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
        style = check_bits(style, SWT::DATE, SWT::TIME, SWT::CALENDAR, 0, 0, 0)
        return check_bits(style, SWT::MEDIUM, SWT::SHORT, SWT::LONG, 0, 0, 0)
      end
    }
    
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
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = 0
      height = 0
      if ((w_hint).equal?(SWT::DEFAULT) || (h_hint).equal?(SWT::DEFAULT))
        if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
          # TODO: CALENDAR computeSize
          width = 300
          height = 200
        else
          # SWT.DATE and SWT.TIME
          gc = SwtGC.new(@text)
          text_size = gc.string_extent(get_compute_size_string(self.attr_style))
          gc.dispose
          trim = @text.compute_trim(0, 0, text_size.attr_x, text_size.attr_y)
          button_size = @up.compute_size(SWT::DEFAULT, SWT::DEFAULT, changed)
          width = trim.attr_width + button_size.attr_x
          height = Math.max(trim.attr_height, button_size.attr_y)
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
    
    typesig { [::Java::Int] }
    def create_handle(index)
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        self.attr_state |= HANDLE
        self.attr_fixed_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
        if ((self.attr_fixed_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_fixed_set_has_window(self.attr_fixed_handle, true)
        self.attr_handle = OS.gtk_calendar_new
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_container_add(self.attr_fixed_handle, self.attr_handle)
        if (OS::GTK_VERSION >= OS._version(2, 4, 0))
          OS.gtk_calendar_set_display_options(self.attr_handle, OS::GTK_CALENDAR_SHOW_HEADING | OS::GTK_CALENDAR_SHOW_DAY_NAMES)
        else
          OS.gtk_calendar_display_options(self.attr_handle, OS::GTK_CALENDAR_SHOW_HEADING | OS::GTK_CALENDAR_SHOW_DAY_NAMES)
        end
      else
        super(index)
      end
    end
    
    typesig { [] }
    def check_subwindow
      return false
    end
    
    typesig { [::Java::Int] }
    def create_widget(index)
      super(index)
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        get_date
      end
    end
    
    typesig { [] }
    def commit_current_field
      if (@character_count > 0)
        @character_count = 0
        field_name = @field_names[@current_field]
        start = @field_indices[@current_field].attr_x
        end_ = @field_indices[@current_field].attr_y
        value = @text.get_text(start, end_ - 1)
        s = value.last_index_of(Character.new(?\s.ord))
        if (!(s).equal?(-1))
          value = RJava.cast_to_string(value.substring(s + 1))
        end
        new_value = unformatted_int_value(field_name, value, (@character_count).equal?(0), @calendar.get_actual_maximum(field_name))
        if (!(new_value).equal?(-1))
          set_text_field(field_name, new_value, true, true)
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def formatted_string_value(field_name, value, adjust)
      if ((field_name).equal?(Calendar::AM_PM))
        ampm = @format_symbols.get_am_pm_strings
        return ampm[value]
      end
      if (adjust)
        if ((field_name).equal?(Calendar::HOUR) && (value).equal?(0))
          return String.value_of(12)
        end
        if ((field_name).equal?(Calendar::MONTH))
          return String.value_of(value + 1)
        end
      end
      return String.value_of(value)
    end
    
    typesig { [::Java::Int] }
    def get_compute_size_string(style)
      if (!((style & SWT::DATE)).equal?(0))
        return !((style & SWT::SHORT)).equal?(0) ? DEFAULT_SHORT_DATE_FORMAT : !((style & SWT::LONG)).equal?(0) ? DEFAULT_LONG_DATE_FORMAT : DEFAULT_MEDIUM_DATE_FORMAT
      end
      # SWT.TIME
      return !((style & SWT::SHORT)).equal?(0) ? DEFAULT_SHORT_TIME_FORMAT : !((style & SWT::LONG)).equal?(0) ? DEFAULT_LONG_TIME_FORMAT : DEFAULT_MEDIUM_TIME_FORMAT
    end
    
    typesig { [::Java::Int] }
    def get_field_index(field_name)
      i = 0
      while i < @field_count
        if ((@field_names[i]).equal?(field_name))
          return i
        end
        i += 1
      end
      return -1
    end
    
    typesig { [::Java::Int] }
    def get_formatted_string(style)
      if (!((style & SWT::TIME)).equal?(0))
        ampm = @format_symbols.get_am_pm_strings
        h = @calendar.get(Calendar::HOUR)
        if ((h).equal?(0))
          h = 12
        end
        m = @calendar.get(Calendar::MINUTE)
        s = @calendar.get(Calendar::SECOND)
        a = @calendar.get(Calendar::AM_PM)
        if (!((style & SWT::SHORT)).equal?(0))
          return "" + RJava.cast_to_string((h < 10 ? " " : "")) + RJava.cast_to_string(h) + ":" + RJava.cast_to_string((m < 10 ? "0" : "")) + RJava.cast_to_string(m) + " " + RJava.cast_to_string(ampm[a])
        end
        return "" + RJava.cast_to_string((h < 10 ? " " : "")) + RJava.cast_to_string(h) + ":" + RJava.cast_to_string((m < 10 ? "0" : "")) + RJava.cast_to_string(m) + ":" + RJava.cast_to_string((s < 10 ? "0" : "")) + RJava.cast_to_string(s) + " " + RJava.cast_to_string(ampm[a])
      end
      # SWT.DATE
      y = @calendar.get(Calendar::YEAR)
      m = @calendar.get(Calendar::MONTH) + 1
      d = @calendar.get(Calendar::DAY_OF_MONTH)
      if (!((style & SWT::SHORT)).equal?(0))
        return "" + RJava.cast_to_string((m < 10 ? " " : "")) + RJava.cast_to_string(m) + "/" + RJava.cast_to_string(y)
      end
      return "" + RJava.cast_to_string((m < 10 ? " " : "")) + RJava.cast_to_string(m) + "/" + RJava.cast_to_string((d < 10 ? " " : "")) + RJava.cast_to_string(d) + "/" + RJava.cast_to_string(y)
    end
    
    typesig { [] }
    def get_date
      y = Array.typed(::Java::Int).new(1) { 0 }
      m = Array.typed(::Java::Int).new(1) { 0 }
      d = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_calendar_get_date(self.attr_handle, y, m, d)
      @year = y[0]
      @month = m[0]
      @day = d[0]
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
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        get_date
        return @day
      else
        return @calendar.get(Calendar::DAY_OF_MONTH)
      end
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
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        return @hours
      else
        return @calendar.get(Calendar::HOUR_OF_DAY)
      end
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
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        return @minutes
      else
        return @calendar.get(Calendar::MINUTE)
      end
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
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        get_date
        return @month
      else
        return @calendar.get(Calendar::MONTH)
      end
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
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        return @seconds
      else
        return @calendar.get(Calendar::SECOND)
      end
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
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        get_date
        return @year
      else
        return @calendar.get(Calendar::YEAR)
      end
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_day_selected(widget)
      send_selection_event
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_day_selected_double_click(widget)
      post_event___org_eclipse_swt_widgets_date_time_1(SWT::DefaultSelection)
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_month_changed(widget)
      send_selection_event
      return 0
    end
    
    typesig { [] }
    def hook_events
      super
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        OS.g_signal_connect_closure(self.attr_handle, OS.attr_day_selected, self.attr_display.attr_closures[DAY_SELECTED], false)
        OS.g_signal_connect_closure(self.attr_handle, OS.attr_day_selected_double_click, self.attr_display.attr_closures[DAY_SELECTED_DOUBLE_CLICK], false)
        OS.g_signal_connect_closure(self.attr_handle, OS.attr_month_changed, self.attr_display.attr_closures[MONTH_CHANGED], false)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def is_valid_time(field_name, value)
      valid_calendar = nil
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        valid_calendar = Calendar.get_instance
      else
        valid_calendar = @calendar
      end
      min = valid_calendar.get_actual_minimum(field_name)
      max_ = valid_calendar.get_actual_maximum(field_name)
      return value >= min && value <= max_
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def is_valid_date(year, month, day)
      if (year < MIN_YEAR || year > MAX_YEAR)
        return false
      end
      valid = Calendar.get_instance
      valid.set(year, month, day)
      return (valid.get(Calendar::YEAR)).equal?(year) && (valid.get(Calendar::MONTH)).equal?(month) && (valid.get(Calendar::DAY_OF_MONTH)).equal?(day)
    end
    
    typesig { [::Java::Int] }
    def increment_field(amount)
      field_name = @field_names[@current_field]
      value = @calendar.get(field_name)
      if ((field_name).equal?(Calendar::HOUR))
        max_ = @calendar.get_maximum(Calendar::HOUR)
        min = @calendar.get_minimum(Calendar::HOUR)
        if (((value).equal?(max_) && (amount).equal?(1)) || ((value).equal?(min) && (amount).equal?(-1)))
          temp = @current_field
          @current_field = get_field_index(Calendar::AM_PM)
          set_text_field(Calendar::AM_PM, (@calendar.get(Calendar::AM_PM) + 1) % 2, true, true)
          @current_field = temp
        end
      end
      set_text_field(field_name, value + amount, true, true)
    end
    
    typesig { [Event] }
    def on_key_down(event)
      field_name = 0
      case (event.attr_key_code)
      when SWT::ARROW_RIGHT, SWT::KEYPAD_DIVIDE
        # a right arrow or a valid separator navigates to the field on the right, with wraping
        select_field((@current_field + 1) % @field_count)
      when SWT::ARROW_LEFT
        # navigate to the field on the left, with wrapping
        index = @current_field - 1
        select_field(index < 0 ? @field_count - 1 : index)
      when SWT::ARROW_UP, SWT::KEYPAD_ADD
        # set the value of the current field to value + 1, with wrapping
        commit_current_field
        increment_field(+1)
      when SWT::ARROW_DOWN, SWT::KEYPAD_SUBTRACT
        # set the value of the current field to value - 1, with wrapping
        commit_current_field
        increment_field(-1)
      when SWT::HOME
        # set the value of the current field to its minimum
        field_name = @field_names[@current_field]
        set_text_field(field_name, @calendar.get_actual_minimum(field_name), true, true)
      when SWT::END_
        # set the value of the current field to its maximum
        field_name = @field_names[@current_field]
        set_text_field(field_name, @calendar.get_actual_maximum(field_name), true, true)
      when SWT::CR
        post_event___org_eclipse_swt_widgets_date_time_3(SWT::DefaultSelection)
      else
        case (event.attr_character)
        when Character.new(?/.ord), Character.new(?:.ord), Character.new(?-.ord), Character.new(?..ord)
          # a valid separator navigates to the field on the right, with wraping
          select_field((@current_field + 1) % @field_count)
        end
      end
    end
    
    typesig { [Event] }
    def on_focus_in(event)
      select_field(@current_field)
    end
    
    typesig { [Event] }
    def on_focus_out(event)
      commit_current_field
    end
    
    typesig { [Event] }
    def on_mouse_click(event)
      if (!(event.attr_button).equal?(1))
        return
      end
      sel = @text.get_selection
      i = 0
      while i < @field_count
        if (@field_indices[i].attr_x <= sel.attr_x && sel.attr_x <= @field_indices[i].attr_y)
          select_field(i)
          break
        end
        i += 1
      end
    end
    
    typesig { [Event] }
    def on_resize(event)
      rect = get_client_area
      width = rect.attr_width
      height = rect.attr_height
      button_size = @up.compute_size(SWT::DEFAULT, height)
      button_height = button_size.attr_y / 2
      @text.set_bounds(0, 0, width - button_size.attr_x, height)
      @up.set_bounds(width - button_size.attr_x, 0, button_size.attr_x, button_height)
      @down.set_bounds(width - button_size.attr_x, button_height, button_size.attr_x, button_height)
    end
    
    typesig { [Event] }
    def on_verify(event)
      if (@ignore_verify)
        return
      end
      event.attr_doit = false
      field_name = @field_names[@current_field]
      start = @field_indices[@current_field].attr_x
      end_ = @field_indices[@current_field].attr_y
      length = end_ - start
      new_text = event.attr_text
      if ((field_name).equal?(Calendar::AM_PM))
        ampm = @format_symbols.get_am_pm_strings
        if (new_text.equals_ignore_case(ampm[Calendar::AM].substring(0, 1)) || new_text.equals_ignore_case(ampm[Calendar::AM]))
          set_text_field(field_name, Calendar::AM, true, false)
        else
          if (new_text.equals_ignore_case(ampm[Calendar::PM].substring(0, 1)) || new_text.equals_ignore_case(ampm[Calendar::PM]))
            set_text_field(field_name, Calendar::PM, true, false)
          end
        end
        return
      end
      if (@character_count > 0)
        begin
          JavaInteger.parse_int(new_text)
        rescue NumberFormatException => ex
          return
        end
        value = @text.get_text(start, end_ - 1)
        s = value.last_index_of(Character.new(?\s.ord))
        if (!(s).equal?(-1))
          value = RJava.cast_to_string(value.substring(s + 1))
        end
        new_text = "" + value + new_text
      end
      new_text_length = new_text.length
      first = (@character_count).equal?(0)
      @character_count = (new_text_length < length) ? new_text_length : 0
      max_ = @calendar.get_actual_maximum(field_name)
      min = @calendar.get_actual_minimum(field_name)
      new_value = unformatted_int_value(field_name, new_text, (@character_count).equal?(0), max_)
      if ((new_value).equal?(-1))
        @character_count = 0
        return
      end
      if (first && (new_value).equal?(0) && length > 1)
        set_text_field(field_name, new_value, false, false)
      else
        if (min <= new_value && new_value <= max_)
          set_text_field(field_name, new_value, (@character_count).equal?(0), (@character_count).equal?(0))
        else
          if (new_text_length >= length)
            new_text = RJava.cast_to_string(new_text.substring(new_text_length - length + 1))
            new_value = unformatted_int_value(field_name, new_text, (@character_count).equal?(0), max_)
            if (!(new_value).equal?(-1))
              @character_count = length - 1
              if (min <= new_value && new_value <= max_)
                set_text_field(field_name, new_value, (@character_count).equal?(0), true)
              end
            end
          end
        end
      end
    end
    
    typesig { [] }
    def release_widget
      super
      # TODO: need to do anything here?
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
    
    typesig { [::Java::Int] }
    def select_field(index)
      if (!(index).equal?(@current_field))
        commit_current_field
      end
      start = @field_indices[index].attr_x
      end_ = @field_indices[index].attr_y
      pt = @text.get_selection
      if ((index).equal?(@current_field) && (start).equal?(pt.attr_x) && (end_).equal?(pt.attr_y))
        return
      end
      @current_field = index
      self.attr_display.async_exec(Class.new(Runnable.class == Class ? Runnable : Object) do
        local_class_in DateTime
        include_class_members DateTime
        include Runnable if Runnable.class == Module
        
        typesig { [] }
        define_method :run do
          if (!self.attr_text.is_disposed)
            value = self.attr_text.get_text(start, end_ - 1)
            s = value.last_index_of(Character.new(?\s.ord))
            if ((s).equal?(-1))
              s = start
            else
              s = start + s + 1
            end
            self.attr_text.set_selection(s, end_)
          end
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
    end
    
    typesig { [] }
    def send_selection_event
      y = Array.typed(::Java::Int).new(1) { 0 }
      m = Array.typed(::Java::Int).new(1) { 0 }
      d = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_calendar_get_date(self.attr_handle, y, m, d)
      # TODO: hours, minutes, seconds?
      if (!(d[0]).equal?(@day) || !(m[0]).equal?(@month) || !(y[0]).equal?(@year))
        @year = y[0]
        @month = m[0]
        @day = d[0]
        post_event___org_eclipse_swt_widgets_date_time_5(SWT::Selection)
      end
    end
    
    typesig { [Color] }
    def set_background(color)
      check_widget
      super(color)
      if (!(@text).nil?)
        @text.set_background(color)
      end
    end
    
    typesig { [Font] }
    def set_font(font)
      check_widget
      super(font)
      if (!(@text).nil?)
        @text.set_font(font)
      end
      redraw
    end
    
    typesig { [Color] }
    def set_foreground(color)
      check_widget
      super(color)
      if (!(@text).nil?)
        @text.set_foreground(color)
      end
    end
    
    typesig { [String] }
    # public
    def set_format(string)
      check_widget
      # TODO: this needs to be locale sensitive
      @field_count = !((self.attr_style & SWT::DATE)).equal?(0) ? (!((self.attr_style & SWT::SHORT)).equal?(0) ? 2 : 3) : (!((self.attr_style & SWT::SHORT)).equal?(0) ? 3 : 4)
      @field_indices = Array.typed(Point).new(@field_count) { nil }
      @field_names = Array.typed(::Java::Int).new(@field_count) { 0 }
      if (!((self.attr_style & SWT::DATE)).equal?(0))
        @field_names[0] = Calendar::MONTH
        @field_indices[0] = Point.new(0, 2)
        if (!((self.attr_style & SWT::SHORT)).equal?(0))
          @field_names[1] = Calendar::YEAR
          @field_indices[1] = Point.new(3, 7)
        else
          @field_names[1] = Calendar::DAY_OF_MONTH
          @field_indices[1] = Point.new(3, 5)
          @field_names[2] = Calendar::YEAR
          @field_indices[2] = Point.new(6, 10)
        end
      else
        # SWT.TIME
        @field_names[0] = Calendar::HOUR
        @field_indices[0] = Point.new(0, 2)
        @field_names[1] = Calendar::MINUTE
        @field_indices[1] = Point.new(3, 5)
        if (!((self.attr_style & SWT::SHORT)).equal?(0))
          @field_names[2] = Calendar::AM_PM
          @field_indices[2] = Point.new(6, 8)
        else
          @field_names[2] = Calendar::SECOND
          @field_indices[2] = Point.new(6, 8)
          @field_names[3] = Calendar::AM_PM
          @field_indices[3] = Point.new(9, 11)
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def set_field(field_name, value)
      if ((@calendar.get(field_name)).equal?(value))
        return
      end
      if ((field_name).equal?(Calendar::AM_PM))
        @calendar.roll(Calendar::HOUR_OF_DAY, 12) # TODO: needs more work for setFormat and locale
      end
      @calendar.set(field_name, value)
      post_event___org_eclipse_swt_widgets_date_time_7(SWT::Selection)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_text_field(field_name, value, commit, adjust)
      if (commit)
        max_ = @calendar.get_actual_maximum(field_name)
        min = @calendar.get_actual_minimum(field_name)
        if ((field_name).equal?(Calendar::YEAR))
          max_ = MAX_YEAR
          min = MIN_YEAR
          # Special case: convert 1 or 2-digit years into reasonable 4-digit years.
          current_year = Calendar.get_instance.get(Calendar::YEAR)
          current_century = (current_year / 100) * 100
          if (value < (current_year + 30) % 100)
            value += current_century
          else
            if (value < 100)
              value += current_century - 100
            end
          end
        end
        if (value > max_)
          value = min
        end # wrap
        if (value < min)
          value = max_
        end # wrap
      end
      start = @field_indices[@current_field].attr_x
      end_ = @field_indices[@current_field].attr_y
      @text.set_selection(start, end_)
      new_value = formatted_string_value(field_name, value, adjust)
      buffer = StringBuffer.new(new_value)
      # Convert leading 0's into spaces.
      prepend_count = end_ - start - buffer.length
      i = 0
      while i < prepend_count
        case (field_name)
        when Calendar::MINUTE, Calendar::SECOND
          buffer.insert(0, 0)
        else
          buffer.insert(0, Character.new(?\s.ord))
        end
        i += 1
      end
      new_value = RJava.cast_to_string(buffer.to_s)
      @ignore_verify = true
      @text.insert(new_value)
      @ignore_verify = false
      select_field(@current_field)
      if (commit)
        set_field(field_name, value)
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
        @year = year
        @month = month
        @day = day
        OS.gtk_calendar_select_month(self.attr_handle, month, year)
        OS.gtk_calendar_select_day(self.attr_handle, day)
      else
        @calendar.set(year, month, day)
        update_control
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
      if (!is_valid_date(get_year, get_month, day))
        return
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        @day = day
        OS.gtk_calendar_select_day(self.attr_handle, day)
      else
        @calendar.set(Calendar::DAY_OF_MONTH, day)
        update_control
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
      if (!is_valid_time(Calendar::HOUR_OF_DAY, hours))
        return
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        @hours = hours
      else
        @calendar.set(Calendar::HOUR_OF_DAY, hours)
        update_control
      end
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
      if (!is_valid_time(Calendar::MINUTE, minutes))
        return
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        @minutes = minutes
      else
        @calendar.set(Calendar::MINUTE, minutes)
        update_control
      end
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
      if (!is_valid_date(get_year, month, get_day))
        return
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        @month = month
        OS.gtk_calendar_select_month(self.attr_handle, month, @year)
      else
        @calendar.set(Calendar::MONTH, month)
        update_control
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
      if (!is_valid_time(Calendar::SECOND, seconds))
        return
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        @seconds = seconds
      else
        @calendar.set(Calendar::SECOND, seconds)
        update_control
      end
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
      if (!is_valid_time(Calendar::HOUR_OF_DAY, hours))
        return
      end
      if (!is_valid_time(Calendar::MINUTE, minutes))
        return
      end
      if (!is_valid_time(Calendar::SECOND, seconds))
        return
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        @hours = hours
        @minutes = minutes
        @seconds = seconds
      else
        @calendar.set(Calendar::HOUR_OF_DAY, hours)
        @calendar.set(Calendar::MINUTE, minutes)
        @calendar.set(Calendar::SECOND, seconds)
        update_control
      end
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
      if (!is_valid_date(year, get_month, get_day))
        return
      end
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        @year = year
        OS.gtk_calendar_select_month(self.attr_handle, @month, year)
      else
        @calendar.set(Calendar::YEAR, year)
        update_control
      end
    end
    
    typesig { [::Java::Int, String, ::Java::Boolean, ::Java::Int] }
    def unformatted_int_value(field_name, new_text, adjust, max_)
      new_value = 0
      begin
        new_value = JavaInteger.parse_int(new_text)
      rescue NumberFormatException => ex
        return -1
      end
      if ((field_name).equal?(Calendar::MONTH) && adjust)
        new_value -= 1
        if ((new_value).equal?(-1))
          new_value = max_
        end
      end
      if ((field_name).equal?(Calendar::HOUR) && adjust)
        if ((new_value).equal?(12))
          new_value = 0
        end # TODO: needs more work for setFormat and locale
      end
      return new_value
    end
    
    typesig { [] }
    def update_control
      if (!(@text).nil?)
        string = get_formatted_string(self.attr_style)
        @ignore_verify = true
        @text.set_text(string)
        @ignore_verify = false
      end
      redraw
    end
    
    private
    alias_method :initialize__date_time, :initialize
  end
  
end
