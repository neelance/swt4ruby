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
  module DateTimeImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # TODO - features not yet implemented: read-only, drop-down calendar for date
  # TODO - font, colors, background image not yet implemented (works on some platforms)
  # 
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
    
    attr_accessor :ignore_selection
    alias_method :attr_ignore_selection, :ignore_selection
    undef_method :ignore_selection
    alias_method :attr_ignore_selection=, :ignore_selection=
    undef_method :ignore_selection=
    
    attr_accessor :last_system_time
    alias_method :attr_last_system_time, :last_system_time
    undef_method :last_system_time
    alias_method :attr_last_system_time=, :last_system_time=
    undef_method :last_system_time=
    
    attr_accessor :time
    alias_method :attr_time, :time
    undef_method :time
    alias_method :attr_time=, :time=
    undef_method :time=
    
    class_module.module_eval {
      const_set_lazy(:DateTimeClass) { TCHAR.new(0, OS::DATETIMEPICK_CLASS, true) }
      const_attr_reader  :DateTimeClass
      
      const_set_lazy(:CalendarClass) { TCHAR.new(0, OS::MONTHCAL_CLASS, true) }
      const_attr_reader  :CalendarClass
      
      when_class_loaded do
        icex = INITCOMMONCONTROLSEX.new
        icex.attr_dw_size = INITCOMMONCONTROLSEX.attr_sizeof
        icex.attr_dw_icc = OS::ICC_DATE_CLASSES
        OS._init_common_controls_ex(icex)
      end
      
      when_class_loaded do
        lp_wnd_class = WNDCLASS.new
        OS._get_class_info(0, DateTimeClass, lp_wnd_class)
        const_set :DateTimeProc, lp_wnd_class.attr_lpfn_wnd_proc
        # Feature in Windows.  The date time window class
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
        byte_count = DateTimeClass.length * TCHAR.attr_sizeof
        # long
        lpsz_class_name = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
        OS._move_memory(lpsz_class_name, DateTimeClass, byte_count)
        lp_wnd_class.attr_lpsz_class_name = lpsz_class_name
        OS._register_class(lp_wnd_class)
        OS._heap_free(h_heap, 0, lpsz_class_name)
      end
      
      when_class_loaded do
        lp_wnd_class = WNDCLASS.new
        OS._get_class_info(0, CalendarClass, lp_wnd_class)
        const_set :CalendarProc, lp_wnd_class.attr_lpfn_wnd_proc
        # Feature in Windows.  The date time window class
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
        byte_count = CalendarClass.length * TCHAR.attr_sizeof
        # long
        lpsz_class_name = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
        OS._move_memory(lpsz_class_name, CalendarClass, byte_count)
        lp_wnd_class.attr_lpsz_class_name = lpsz_class_name
        OS._register_class(lp_wnd_class)
        OS._heap_free(h_heap, 0, lpsz_class_name)
      end
      
      const_set_lazy(:MARGIN) { 4 }
      const_attr_reader  :MARGIN
      
      const_set_lazy(:MAX_DIGIT) { 9 }
      const_attr_reader  :MAX_DIGIT
      
      const_set_lazy(:MAX_DAY) { 31 }
      const_attr_reader  :MAX_DAY
      
      const_set_lazy(:MAX_12HOUR) { 12 }
      const_attr_reader  :MAX_12HOUR
      
      const_set_lazy(:MAX_24HOUR) { 24 }
      const_attr_reader  :MAX_24HOUR
      
      const_set_lazy(:MAX_MINUTE) { 60 }
      const_attr_reader  :MAX_MINUTE
      
      const_set_lazy(:MONTH_DAY_YEAR) { 0 }
      const_attr_reader  :MONTH_DAY_YEAR
      
      const_set_lazy(:DAY_MONTH_YEAR) { 1 }
      const_attr_reader  :DAY_MONTH_YEAR
      
      const_set_lazy(:YEAR_MONTH_DAY) { 2 }
      const_attr_reader  :YEAR_MONTH_DAY
      
      const_set_lazy(:SINGLE_QUOTE) { Character.new(?\'.ord) }
      const_attr_reader  :SINGLE_QUOTE
      
      # $NON-NLS-1$ short date format may include quoted text
      const_set_lazy(:DAY_FORMAT_CONSTANT) { Character.new(?d.ord) }
      const_attr_reader  :DAY_FORMAT_CONSTANT
      
      # $NON-NLS-1$ 1-4 lowercase 'd's represent day
      const_set_lazy(:MONTH_FORMAT_CONSTANT) { Character.new(?M.ord) }
      const_attr_reader  :MONTH_FORMAT_CONSTANT
      
      # $NON-NLS-1$ 1-4 uppercase 'M's represent month
      const_set_lazy(:YEAR_FORMAT_CONSTANT) { Character.new(?y.ord) }
      const_attr_reader  :YEAR_FORMAT_CONSTANT
      
      # $NON-NLS-1$ 1-5 lowercase 'y's represent year
      const_set_lazy(:HOURS_FORMAT_CONSTANT) { Character.new(?h.ord) }
      const_attr_reader  :HOURS_FORMAT_CONSTANT
      
      # $NON-NLS-1$ 1-2 upper or lowercase 'h's represent hours
      const_set_lazy(:MINUTES_FORMAT_CONSTANT) { Character.new(?m.ord) }
      const_attr_reader  :MINUTES_FORMAT_CONSTANT
      
      # $NON-NLS-1$ 1-2 lowercase 'm's represent minutes
      const_set_lazy(:SECONDS_FORMAT_CONSTANT) { Character.new(?s.ord) }
      const_attr_reader  :SECONDS_FORMAT_CONSTANT
      
      # $NON-NLS-1$ 1-2 lowercase 's's represent seconds
      const_set_lazy(:AMPM_FORMAT_CONSTANT) { Character.new(?t.ord) }
      const_attr_reader  :AMPM_FORMAT_CONSTANT
      
      # $NON-NLS-1$ 1-2 lowercase 't's represent am/pm
      const_set_lazy(:MONTH_NAMES) { Array.typed(::Java::Int).new([OS::LOCALE_SMONTHNAME1, OS::LOCALE_SMONTHNAME2, OS::LOCALE_SMONTHNAME3, OS::LOCALE_SMONTHNAME4, OS::LOCALE_SMONTHNAME5, OS::LOCALE_SMONTHNAME6, OS::LOCALE_SMONTHNAME7, OS::LOCALE_SMONTHNAME8, OS::LOCALE_SMONTHNAME9, OS::LOCALE_SMONTHNAME10, OS::LOCALE_SMONTHNAME11, OS::LOCALE_SMONTHNAME12]) }
      const_attr_reader  :MONTH_NAMES
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
      @ignore_selection = false
      @last_system_time = nil
      @time = nil
      super(parent, check_style(style))
      @time = SYSTEMTIME.new
      if (!((self.attr_style & SWT::SHORT)).equal?(0))
        buffer = (!((self.attr_style & SWT::DATE)).equal?(0)) ? get_custom_short_date_format : get_custom_short_time_format
        lpsz_format = TCHAR.new(0, buffer, true)
        OS._send_message(self.attr_handle, OS::DTM_SETFORMAT, 0, lpsz_format)
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def call_window_proc(hwnd, msg, w_param, l_param)
      if ((self.attr_handle).equal?(0))
        return 0
      end
      return OS._call_window_proc(window_proc, hwnd, msg, w_param, l_param)
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
          rect = RECT.new
          OS._send_message(self.attr_handle, OS::MCM_GETMINREQRECT, 0, rect)
          width = rect.attr_right
          height = rect.attr_bottom
        else
          buffer = TCHAR.new(get_code_page, 128)
          # long
          new_font = 0
          old_font = 0
          # long
          h_dc = OS._get_dc(self.attr_handle)
          new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
          if (!(new_font).equal?(0))
            old_font = OS._select_object(h_dc, new_font)
          end
          rect = RECT.new
          flags = OS::DT_CALCRECT | OS::DT_EDITCONTROL | OS::DT_NOPREFIX
          systime = SYSTEMTIME.new
          if (!((self.attr_style & SWT::DATE)).equal?(0))
            # Determine the widest/tallest year string.
            systime.attr_w_month = 1
            systime.attr_w_day = 1
            widest = 0
            second_widest = 0
            third_widest = 0
            i = 0
            while i <= MAX_DIGIT
              systime.attr_w_year = RJava.cast_to_short((2000 + i)) # year 2000 + i is guaranteed to exist
              size = OS._get_date_format(OS::LOCALE_USER_DEFAULT, OS::DATE_SHORTDATE, systime, nil, buffer, buffer.length)
              if ((size).equal?(0))
                buffer = TCHAR.new(get_code_page, size)
                OS._get_date_format(OS::LOCALE_USER_DEFAULT, OS::DATE_SHORTDATE, systime, nil, buffer, buffer.length)
              end
              rect.attr_left = rect.attr_top = rect.attr_right = rect.attr_bottom = 0
              OS._draw_text(h_dc, buffer, size, rect, flags)
              if (rect.attr_right - rect.attr_left >= width)
                width = rect.attr_right - rect.attr_left
                third_widest = second_widest
                second_widest = widest
                widest = i
              end
              height = Math.max(height, rect.attr_bottom - rect.attr_top)
              i += 1
            end
            if (widest > 1)
              widest = widest * 1000 + widest * 100 + widest * 10 + widest
            else
              if (second_widest > 1)
                widest = second_widest * 1000 + widest * 100 + widest * 10 + widest
              else
                widest = third_widest * 1000 + widest * 100 + widest * 10 + widest
              end
            end
            systime.attr_w_year = RJava.cast_to_short(widest)
            # Determine the widest/tallest month name string.
            width = widest = 0
            i_ = 0
            while i_ < MONTH_NAMES.attr_length
              name = MONTH_NAMES[i_]
              size = OS._get_locale_info(OS::LOCALE_USER_DEFAULT, name, buffer, buffer.length)
              if ((size).equal?(0))
                buffer = TCHAR.new(get_code_page, size)
                OS._get_locale_info(OS::LOCALE_USER_DEFAULT, name, buffer, buffer.length)
              end
              rect.attr_left = rect.attr_top = rect.attr_right = rect.attr_bottom = 0
              OS._draw_text(h_dc, buffer, size, rect, flags)
              if (rect.attr_right - rect.attr_left > width)
                width = rect.attr_right - rect.attr_left
                widest = i_
              end
              height = Math.max(height, rect.attr_bottom - rect.attr_top)
              i_ += 1
            end
            systime.attr_w_month = RJava.cast_to_short((widest + 1))
            # Determine the widest/tallest date string in the widest month of the widest year.
            dw_flags = (!((self.attr_style & SWT::MEDIUM)).equal?(0)) ? OS::DATE_SHORTDATE : (!((self.attr_style & SWT::SHORT)).equal?(0)) ? OS::DATE_YEARMONTH : OS::DATE_LONGDATE
            width = 0
            i__ = 1
            while i__ <= MAX_DAY
              systime.attr_w_day = i__
              size = OS._get_date_format(OS::LOCALE_USER_DEFAULT, dw_flags, systime, nil, buffer, buffer.length)
              if ((size).equal?(0))
                buffer = TCHAR.new(get_code_page, size)
                OS._get_date_format(OS::LOCALE_USER_DEFAULT, dw_flags, systime, nil, buffer, buffer.length)
              end
              rect.attr_left = rect.attr_top = rect.attr_right = rect.attr_bottom = 0
              OS._draw_text(h_dc, buffer, size, rect, flags)
              width = Math.max(width, rect.attr_right - rect.attr_left)
              height = Math.max(height, rect.attr_bottom - rect.attr_top)
              if (!((self.attr_style & SWT::SHORT)).equal?(0))
                break
              end
              i__ += 1
            end
          else
            if (!((self.attr_style & SWT::TIME)).equal?(0))
              # Determine the widest/tallest hour string. This code allows for the possibility of ligatures.
              dw_flags = (!((self.attr_style & SWT::SHORT)).equal?(0)) ? OS::TIME_NOSECONDS : 0
              widest = 0
              max_ = is24_hour_time ? MAX_24HOUR : MAX_12HOUR
              i = 0
              while i < max_
                systime.attr_w_hour = i
                size = OS._get_time_format(OS::LOCALE_USER_DEFAULT, dw_flags, systime, nil, buffer, buffer.length)
                if ((size).equal?(0))
                  buffer = TCHAR.new(get_code_page, size)
                  OS._get_time_format(OS::LOCALE_USER_DEFAULT, dw_flags, systime, nil, buffer, buffer.length)
                end
                rect.attr_left = rect.attr_top = rect.attr_right = rect.attr_bottom = 0
                OS._draw_text(h_dc, buffer, size, rect, flags)
                if (rect.attr_right - rect.attr_left > width)
                  width = rect.attr_right - rect.attr_left
                  widest = i
                end
                height = Math.max(height, rect.attr_bottom - rect.attr_top)
                i += 1
              end
              systime.attr_w_hour = widest
              # Determine the widest/tallest minute and second string.
              width = widest = 0
              i_ = 0
              while i_ < MAX_MINUTE
                systime.attr_w_minute = i_
                size = OS._get_time_format(OS::LOCALE_USER_DEFAULT, dw_flags, systime, nil, buffer, buffer.length)
                if ((size).equal?(0))
                  buffer = TCHAR.new(get_code_page, size)
                  OS._get_time_format(OS::LOCALE_USER_DEFAULT, dw_flags, systime, nil, buffer, buffer.length)
                end
                rect.attr_left = rect.attr_top = rect.attr_right = rect.attr_bottom = 0
                OS._draw_text(h_dc, buffer, size, rect, flags)
                if (rect.attr_right - rect.attr_left > width)
                  width = rect.attr_right - rect.attr_left
                  widest = i_
                end
                height = Math.max(height, rect.attr_bottom - rect.attr_top)
                i_ += 1
              end
              systime.attr_w_minute = widest
              systime.attr_w_second = widest
              # Determine the widest/tallest time string for the widest hour, widest minute, and if applicable, widest second.
              size = OS._get_time_format(OS::LOCALE_USER_DEFAULT, dw_flags, systime, nil, buffer, buffer.length)
              if ((size).equal?(0))
                buffer = TCHAR.new(get_code_page, size)
                OS._get_time_format(OS::LOCALE_USER_DEFAULT, dw_flags, systime, nil, buffer, buffer.length)
              end
              rect.attr_left = rect.attr_top = rect.attr_right = rect.attr_bottom = 0
              OS._draw_text(h_dc, buffer, size, rect, flags)
              width = rect.attr_right - rect.attr_left
              height = Math.max(height, rect.attr_bottom - rect.attr_top)
            end
          end
          if (!(new_font).equal?(0))
            OS._select_object(h_dc, old_font)
          end
          OS._release_dc(self.attr_handle, h_dc)
          up_down_width = OS._get_system_metrics(OS::SM_CXVSCROLL)
          width += up_down_width + MARGIN
          up_down_height = OS._get_system_metrics(OS::SM_CYVSCROLL)
          # TODO: On Vista, can send DTM_GETDATETIMEPICKERINFO to ask the Edit control what its margins are
          if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
            up_down_height += 7
          end
          height = Math.max(height, up_down_height)
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
      super
      self.attr_state &= ~(CANVAS | THEME_BACKGROUND)
      if (((self.attr_style & SWT::BORDER)).equal?(0))
        bits = OS._get_window_long(self.attr_handle, OS::GWL_EXSTYLE)
        bits &= ~(OS::WS_EX_CLIENTEDGE | OS::WS_EX_STATICEDGE)
        OS._set_window_long(self.attr_handle, OS::GWL_EXSTYLE, bits)
      end
    end
    
    typesig { [] }
    def default_background
      return OS._get_sys_color(OS::COLOR_WINDOW)
    end
    
    typesig { [] }
    def get_compute_size_string
      # TODO: Not currently used but might need for WinCE
      if (!((self.attr_style & SWT::DATE)).equal?(0))
        if (!((self.attr_style & SWT::SHORT)).equal?(0))
          return get_custom_short_date_format
        end
        if (!((self.attr_style & SWT::MEDIUM)).equal?(0))
          return get_short_date_format
        end
        if (!((self.attr_style & SWT::LONG)).equal?(0))
          return get_long_date_format
        end
      end
      if (!((self.attr_style & SWT::TIME)).equal?(0))
        if (!((self.attr_style & SWT::SHORT)).equal?(0))
          return get_custom_short_time_format
        end
        return get_time_format
      end
      return ""
    end
    
    typesig { [] }
    def get_custom_short_date_format
      if (true)
        tchar = TCHAR.new(get_code_page, 80)
        size = OS._get_locale_info(OS::LOCALE_USER_DEFAULT, OS::LOCALE_SYEARMONTH, tchar, 80)
        return !(size).equal?(0) ? tchar.to_s(0, size - 1) : "M/yyyy" # $NON-NLS-1$
      end
      # TODO: Not currently used, but may need for WinCE (or if numeric short date is required)
      buffer = StringBuffer.new(get_short_date_format)
      length_ = buffer.length
      in_quotes = false
      start = 0
      end_ = 0
      while (start < length_)
        ch = buffer.char_at(start)
        if ((ch).equal?(SINGLE_QUOTE))
          in_quotes = !in_quotes
        else
          if ((ch).equal?(DAY_FORMAT_CONSTANT) && !in_quotes)
            end_ = start + 1
            while (end_ < length_ && (buffer.char_at(end_)).equal?(DAY_FORMAT_CONSTANT))
              end_ += 1
            end
            ordering = get_short_date_format_ordering
            case (ordering)
            when MONTH_DAY_YEAR
              # skip the following separator
              while (end_ < length_ && !(buffer.char_at(end_)).equal?(YEAR_FORMAT_CONSTANT))
                end_ += 1
              end
            when DAY_MONTH_YEAR
              # skip the following separator
              while (end_ < length_ && !(buffer.char_at(end_)).equal?(MONTH_FORMAT_CONSTANT))
                end_ += 1
              end
            when YEAR_MONTH_DAY
              # skip the preceding separator
              while (start > 0 && !(buffer.char_at(start)).equal?(MONTH_FORMAT_CONSTANT))
                start -= 1
              end
            end
            break
          end
        end
        start += 1
      end
      if (start < end_)
        buffer.delete(start, end_)
      end
      return buffer.to_s
    end
    
    typesig { [] }
    def get_custom_short_time_format
      buffer = StringBuffer.new(get_time_format)
      length_ = buffer.length
      in_quotes = false
      start = 0
      end_ = 0
      while (start < length_)
        ch = buffer.char_at(start)
        if ((ch).equal?(SINGLE_QUOTE))
          in_quotes = !in_quotes
        else
          if ((ch).equal?(SECONDS_FORMAT_CONSTANT) && !in_quotes)
            end_ = start + 1
            while (end_ < length_ && (buffer.char_at(end_)).equal?(SECONDS_FORMAT_CONSTANT))
              end_ += 1
            end
            # skip the preceding separator
            while (start > 0 && !(buffer.char_at(start)).equal?(MINUTES_FORMAT_CONSTANT))
              start -= 1
            end
            start += 1
            break
          end
        end
        start += 1
      end
      if (start < end_)
        buffer.delete(start, end_)
      end
      return buffer.to_s
    end
    
    typesig { [] }
    def get_long_date_format
      # TODO: Not currently used, but may need for WinCE
      tchar = TCHAR.new(get_code_page, 80)
      size = OS._get_locale_info(OS::LOCALE_USER_DEFAULT, OS::LOCALE_SLONGDATE, tchar, 80)
      return size > 0 ? tchar.to_s(0, size - 1) : "dddd, MMMM dd, yyyy" # $NON-NLS-1$
    end
    
    typesig { [] }
    def get_short_date_format
      # TODO: Not currently used, but may need for WinCE
      tchar = TCHAR.new(get_code_page, 80)
      # TODO: May need to OR with LOCALE_ICENTURY
      size = OS._get_locale_info(OS::LOCALE_USER_DEFAULT, OS::LOCALE_SSHORTDATE, tchar, 80)
      return size > 0 ? tchar.to_s(0, size - 1) : "M/d/yyyy" # $NON-NLS-1$
    end
    
    typesig { [] }
    def get_short_date_format_ordering
      # TODO: Not currently used, but may need for WinCE
      tchar = TCHAR.new(get_code_page, 4)
      size = OS._get_locale_info(OS::LOCALE_USER_DEFAULT, OS::LOCALE_IDATE, tchar, 4)
      if (size > 0)
        number = tchar.to_s(0, size - 1)
        return JavaInteger.parse_int(number)
      end
      return 0
    end
    
    typesig { [] }
    def get_time_format
      tchar = TCHAR.new(get_code_page, 80)
      size = OS._get_locale_info(OS::LOCALE_USER_DEFAULT, OS::LOCALE_STIMEFORMAT, tchar, 80)
      return size > 0 ? tchar.to_s(0, size - 1) : "h:mm:ss tt" # $NON-NLS-1$
    end
    
    typesig { [] }
    def is24_hour_time
      tchar = TCHAR.new(get_code_page, 4)
      size = OS._get_locale_info(OS::LOCALE_USER_DEFAULT, OS::LOCALE_ITIME, tchar, 4)
      if (size > 0)
        number = tchar.to_s(0, size - 1)
        return !(JavaInteger.parse_int(number)).equal?(0)
      end
      return true
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
      systime = SYSTEMTIME.new
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_GETCURSEL : OS::DTM_GETSYSTEMTIME
      OS._send_message(self.attr_handle, msg, 0, systime)
      return systime.attr_w_day
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
        return @time.attr_w_hour
      end
      systime = SYSTEMTIME.new
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_GETCURSEL : OS::DTM_GETSYSTEMTIME
      OS._send_message(self.attr_handle, msg, 0, systime)
      return systime.attr_w_hour
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
        return @time.attr_w_minute
      end
      systime = SYSTEMTIME.new
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_GETCURSEL : OS::DTM_GETSYSTEMTIME
      OS._send_message(self.attr_handle, msg, 0, systime)
      return systime.attr_w_minute
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
      systime = SYSTEMTIME.new
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_GETCURSEL : OS::DTM_GETSYSTEMTIME
      OS._send_message(self.attr_handle, msg, 0, systime)
      return systime.attr_w_month - 1
    end
    
    typesig { [] }
    def get_name_text
      return !((self.attr_style & SWT::TIME)).equal?(0) ? (get_hours).to_s + ":" + (get_minutes).to_s + ":" + (get_seconds).to_s : ((get_month + 1)).to_s + "/" + (get_day).to_s + "/" + (get_year).to_s
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
        return @time.attr_w_second
      end
      systime = SYSTEMTIME.new
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_GETCURSEL : OS::DTM_GETSYSTEMTIME
      OS._send_message(self.attr_handle, msg, 0, systime)
      return systime.attr_w_second
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
      systime = SYSTEMTIME.new
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_GETCURSEL : OS::DTM_GETSYSTEMTIME
      OS._send_message(self.attr_handle, msg, 0, systime)
      return systime.attr_w_year
    end
    
    typesig { [] }
    def release_widget
      super
      @last_system_time = nil
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
      systime = SYSTEMTIME.new
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_GETCURSEL : OS::DTM_GETSYSTEMTIME
      OS._send_message(self.attr_handle, msg, 0, systime)
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_SETCURSEL : OS::DTM_SETSYSTEMTIME
      systime.attr_w_year = RJava.cast_to_short(year)
      systime.attr_w_month = RJava.cast_to_short((month + 1))
      systime.attr_w_day = RJava.cast_to_short(day)
      OS._send_message(self.attr_handle, msg, 0, systime)
      @last_system_time = nil
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
      systime = SYSTEMTIME.new
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_GETCURSEL : OS::DTM_GETSYSTEMTIME
      OS._send_message(self.attr_handle, msg, 0, systime)
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_SETCURSEL : OS::DTM_SETSYSTEMTIME
      systime.attr_w_day = RJava.cast_to_short(day)
      OS._send_message(self.attr_handle, msg, 0, systime)
      @last_system_time = nil
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
      systime = SYSTEMTIME.new
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_GETCURSEL : OS::DTM_GETSYSTEMTIME
      OS._send_message(self.attr_handle, msg, 0, systime)
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_SETCURSEL : OS::DTM_SETSYSTEMTIME
      systime.attr_w_hour = RJava.cast_to_short(hours)
      OS._send_message(self.attr_handle, msg, 0, systime)
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0) && hours >= 0 && hours <= 23)
        @time.attr_w_hour = RJava.cast_to_short(hours)
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
      systime = SYSTEMTIME.new
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_GETCURSEL : OS::DTM_GETSYSTEMTIME
      OS._send_message(self.attr_handle, msg, 0, systime)
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_SETCURSEL : OS::DTM_SETSYSTEMTIME
      systime.attr_w_minute = RJava.cast_to_short(minutes)
      OS._send_message(self.attr_handle, msg, 0, systime)
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0) && minutes >= 0 && minutes <= 59)
        @time.attr_w_minute = RJava.cast_to_short(minutes)
      end
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
      systime = SYSTEMTIME.new
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_GETCURSEL : OS::DTM_GETSYSTEMTIME
      OS._send_message(self.attr_handle, msg, 0, systime)
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_SETCURSEL : OS::DTM_SETSYSTEMTIME
      systime.attr_w_month = RJava.cast_to_short((month + 1))
      OS._send_message(self.attr_handle, msg, 0, systime)
      @last_system_time = nil
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
      systime = SYSTEMTIME.new
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_GETCURSEL : OS::DTM_GETSYSTEMTIME
      OS._send_message(self.attr_handle, msg, 0, systime)
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_SETCURSEL : OS::DTM_SETSYSTEMTIME
      systime.attr_w_second = RJava.cast_to_short(seconds)
      OS._send_message(self.attr_handle, msg, 0, systime)
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0) && seconds >= 0 && seconds <= 59)
        @time.attr_w_second = RJava.cast_to_short(seconds)
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
      systime = SYSTEMTIME.new
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_GETCURSEL : OS::DTM_GETSYSTEMTIME
      OS._send_message(self.attr_handle, msg, 0, systime)
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_SETCURSEL : OS::DTM_SETSYSTEMTIME
      systime.attr_w_hour = RJava.cast_to_short(hours)
      systime.attr_w_minute = RJava.cast_to_short(minutes)
      systime.attr_w_second = RJava.cast_to_short(seconds)
      OS._send_message(self.attr_handle, msg, 0, systime)
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0) && hours >= 0 && hours <= 23 && minutes >= 0 && minutes <= 59 && seconds >= 0 && seconds <= 59)
        @time.attr_w_hour = RJava.cast_to_short(hours)
        @time.attr_w_minute = RJava.cast_to_short(minutes)
        @time.attr_w_second = RJava.cast_to_short(seconds)
      end
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
      systime = SYSTEMTIME.new
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_GETCURSEL : OS::DTM_GETSYSTEMTIME
      OS._send_message(self.attr_handle, msg, 0, systime)
      msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_SETCURSEL : OS::DTM_SETSYSTEMTIME
      systime.attr_w_year = RJava.cast_to_short(year)
      OS._send_message(self.attr_handle, msg, 0, systime)
      @last_system_time = nil
    end
    
    typesig { [] }
    def widget_style
      bits = super | OS::WS_TABSTOP
      if (!((self.attr_style & SWT::CALENDAR)).equal?(0))
        return bits | OS::MCS_NOTODAY
      end
      # Bug in Windows: When WS_CLIPCHILDREN is set in a
      # Date and Time Picker, the widget draws on top of
      # the updown control. The fix is to clear the bits.
      bits &= ~OS::WS_CLIPCHILDREN
      if (!((self.attr_style & SWT::TIME)).equal?(0))
        bits |= OS::DTS_TIMEFORMAT
      end
      if (!((self.attr_style & SWT::DATE)).equal?(0))
        bits |= (!((self.attr_style & SWT::MEDIUM)).equal?(0) ? OS::DTS_SHORTDATECENTURYFORMAT : OS::DTS_LONGDATEFORMAT) | OS::DTS_UPDOWN
      end
      return bits
    end
    
    typesig { [] }
    def window_class
      return !((self.attr_style & SWT::CALENDAR)).equal?(0) ? CalendarClass : DateTimeClass
    end
    
    typesig { [] }
    # long
    def window_proc
      return !((self.attr_style & SWT::CALENDAR)).equal?(0) ? CalendarProc : DateTimeProc
    end
    
    typesig { [NMHDR, ::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_notify_child(hdr, w_param, l_param)
      catch(:break_case) do
        case (hdr.attr_code)
        when OS::MCN_SELCHANGE, OS::DTN_DATETIMECHANGE
          if (@ignore_selection)
            throw :break_case, :thrown
          end
          systime = SYSTEMTIME.new
          msg = !((self.attr_style & SWT::CALENDAR)).equal?(0) ? OS::MCM_GETCURSEL : OS::DTM_GETSYSTEMTIME
          OS._send_message(self.attr_handle, msg, 0, systime)
          if ((@last_system_time).nil? || !(systime.attr_w_day).equal?(@last_system_time.attr_w_day) || !(systime.attr_w_month).equal?(@last_system_time.attr_w_month) || !(systime.attr_w_year).equal?(@last_system_time.attr_w_year))
            post_event(SWT::Selection)
            if (((self.attr_style & SWT::TIME)).equal?(0))
              @last_system_time = systime
            end
          end
        end
      end
      return super(hdr, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_timer(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows. For some reason, Windows sends WM_NOTIFY with
      # MCN_SELCHANGE at regular intervals. This is unexpected. The fix is
      # to ignore MCN_SELCHANGE during WM_TIMER.
      @ignore_selection = true
      # long
      code = call_window_proc(self.attr_handle, OS::WM_TIMER, w_param, l_param)
      @ignore_selection = false
      return (code).equal?(0) ? LRESULT::ZERO : LRESULT.new(code)
    end
    
    private
    alias_method :initialize__date_time, :initialize
  end
  
end
