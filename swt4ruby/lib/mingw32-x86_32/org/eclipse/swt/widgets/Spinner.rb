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
  module SpinnerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # Instances of this class are selectable user interface
  # objects that allow the user to enter and modify numeric
  # values.
  # <p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not make sense to add children to it, or set a layout on it.
  # </p><p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>READ_ONLY, WRAP</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection, Modify, Verify</dd>
  # </dl>
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#spinner">Spinner snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.1
  # @noextend This class is not intended to be subclassed by clients.
  class Spinner < SpinnerImports.const_get :Composite
    include_class_members SpinnerImports
    
    # long
    attr_accessor :hwnd_text
    alias_method :attr_hwnd_text, :hwnd_text
    undef_method :hwnd_text
    alias_method :attr_hwnd_text=, :hwnd_text=
    undef_method :hwnd_text=
    
    attr_accessor :hwnd_up_down
    alias_method :attr_hwnd_up_down, :hwnd_up_down
    undef_method :hwnd_up_down
    alias_method :attr_hwnd_up_down=, :hwnd_up_down=
    undef_method :hwnd_up_down=
    
    attr_accessor :ignore_modify
    alias_method :attr_ignore_modify, :ignore_modify
    undef_method :ignore_modify
    alias_method :attr_ignore_modify=, :ignore_modify=
    undef_method :ignore_modify=
    
    attr_accessor :page_increment
    alias_method :attr_page_increment, :page_increment
    undef_method :page_increment
    alias_method :attr_page_increment=, :page_increment=
    undef_method :page_increment=
    
    attr_accessor :digits
    alias_method :attr_digits, :digits
    undef_method :digits
    alias_method :attr_digits=, :digits=
    undef_method :digits=
    
    class_module.module_eval {
      const_set_lazy(:EditClass) { TCHAR.new(0, "EDIT", true) }
      const_attr_reader  :EditClass
      
      const_set_lazy(:UpDownClass) { TCHAR.new(0, OS::UPDOWN_CLASS, true) }
      const_attr_reader  :UpDownClass
      
      when_class_loaded do
        lp_wnd_class = WNDCLASS.new
        OS._get_class_info(0, EditClass, lp_wnd_class)
        const_set :EditProc, lp_wnd_class.attr_lpfn_wnd_proc
        OS._get_class_info(0, UpDownClass, lp_wnd_class)
        const_set :UpDownProc, lp_wnd_class.attr_lpfn_wnd_proc
      end
      
      # These values can be different on different platforms.
      # Therefore they are not initialized in the declaration
      # to stop the compiler from inlining.
      when_class_loaded do
        const_set :LIMIT, OS::IsWinNT ? 0x7fffffff : 0x7fff
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
    # @see SWT#READ_ONLY
    # @see SWT#WRAP
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @hwnd_text = 0
      @hwnd_up_down = 0
      @ignore_modify = false
      @page_increment = 0
      @digits = 0
      super(parent, check_style(style))
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
      if ((hwnd).equal?(@hwnd_text))
        return OS._call_window_proc(EditProc, hwnd, msg, w_param, l_param)
      end
      if ((hwnd).equal?(@hwnd_up_down))
        return OS._call_window_proc(UpDownProc, hwnd, msg, w_param, l_param)
      end
      return OS._def_window_proc(self.attr_handle, msg, w_param, l_param)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        # Even though it is legal to create this widget
        # with scroll bars, they serve no useful purpose
        # because they do not automatically scroll the
        # widget's client area.  The fix is to clear
        # the SWT style.
        return style & ~(SWT::H_SCROLL | SWT::V_SCROLL)
      end
    }
    
    typesig { [::Java::Int] }
    # long
    def check_handle(hwnd)
      return (hwnd).equal?(self.attr_handle) || (hwnd).equal?(@hwnd_text) || (hwnd).equal?(@hwnd_up_down)
    end
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [] }
    def create_handle
      super
      self.attr_state &= ~(CANVAS | THEME_BACKGROUND)
      # long
      h_instance = OS._get_module_handle(nil)
      text_ex_style = !((self.attr_style & SWT::BORDER)).equal?(0) ? OS::WS_EX_CLIENTEDGE : 0
      text_style = OS::WS_CHILD | OS::WS_VISIBLE | OS::ES_AUTOHSCROLL | OS::WS_CLIPSIBLINGS
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        text_style |= OS::ES_READONLY
      end
      if (OS::WIN32_VERSION >= OS._version(4, 10))
        if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
          text_ex_style |= OS::WS_EX_LAYOUTRTL
        end
      end
      @hwnd_text = OS._create_window_ex(text_ex_style, EditClass, nil, text_style, 0, 0, 0, 0, self.attr_handle, 0, h_instance, nil)
      if ((@hwnd_text).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS._set_window_long_ptr(@hwnd_text, OS::GWLP_ID, @hwnd_text)
      up_down_style = OS::WS_CHILD | OS::WS_VISIBLE | OS::UDS_AUTOBUDDY
      if (!((self.attr_style & SWT::WRAP)).equal?(0))
        up_down_style |= OS::UDS_WRAP
      end
      if (!((self.attr_style & SWT::BORDER)).equal?(0))
        if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
          up_down_style |= OS::UDS_ALIGNLEFT
        else
          up_down_style |= OS::UDS_ALIGNRIGHT
        end
      end
      @hwnd_up_down = OS._create_window_ex(0, UpDownClass, nil, up_down_style, 0, 0, 0, 0, self.attr_handle, 0, h_instance, nil)
      if ((@hwnd_up_down).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      flags = OS::SWP_NOSIZE | OS::SWP_NOMOVE | OS::SWP_NOACTIVATE
      _set_window_pos(@hwnd_text, @hwnd_up_down, 0, 0, 0, 0, flags)
      OS._set_window_long_ptr(@hwnd_up_down, OS::GWLP_ID, @hwnd_up_down)
      if (OS::IsDBLocale)
        # long
        h_imc = OS._imm_get_context(self.attr_handle)
        OS._imm_associate_context(@hwnd_text, h_imc)
        OS._imm_associate_context(@hwnd_up_down, h_imc)
        OS._imm_release_context(self.attr_handle, h_imc)
      end
      OS._send_message(@hwnd_up_down, OS::UDM_SETRANGE32, 0, 100)
      OS._send_message(@hwnd_up_down, OS::IsWinCE ? OS::UDM_SETPOS : OS::UDM_SETPOS32, 0, 0)
      @page_increment = 10
      @digits = 0
      buffer = TCHAR.new(get_code_page, "0", true)
      OS._set_window_text(@hwnd_text, buffer)
    end
    
    typesig { [ModifyListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the receiver's text is modified, by sending
    # it one of the messages defined in the <code>ModifyListener</code>
    # interface.
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
    # @see ModifyListener
    # @see #removeModifyListener
    def add_modify_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Modify, typed_listener)
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is not called for texts.
    # <code>widgetDefaultSelected</code> is typically called when ENTER is pressed in a single-line text.
    # </p>
    # 
    # @param listener the listener which should be notified when the control is selected by the user
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
    
    typesig { [VerifyListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the receiver's text is verified, by sending
    # it one of the messages defined in the <code>VerifyListener</code>
    # interface.
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
    # @see VerifyListener
    # @see #removeVerifyListener
    def add_verify_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Verify, typed_listener)
    end
    
    typesig { [] }
    # long
    def border_handle
      return @hwnd_text
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = 0
      height = 0
      if ((w_hint).equal?(SWT::DEFAULT) || (h_hint).equal?(SWT::DEFAULT))
        # long
        new_font = 0
        old_font = 0
        # long
        h_dc = OS._get_dc(@hwnd_text)
        new_font = OS._send_message(@hwnd_text, OS::WM_GETFONT, 0, 0)
        if (!(new_font).equal?(0))
          old_font = OS._select_object(h_dc, new_font)
        end
        tm = OS::IsUnicode ? TEXTMETRICW.new : TEXTMETRICA.new
        OS._get_text_metrics(h_dc, tm)
        height = tm.attr_tm_height
        rect = RECT.new
        max = Array.typed(::Java::Int).new(1) { 0 }
        OS._send_message(@hwnd_up_down, OS::UDM_GETRANGE32, nil, max)
        string = String.value_of(max[0])
        if (@digits > 0)
          buffer = StringBuffer.new
          buffer.append(string)
          buffer.append(get_decimal_separator)
          count = @digits - string.length
          while (count >= 0)
            buffer.append("0")
            count -= 1
          end
          string = RJava.cast_to_string(buffer.to_s)
        end
        buffer = TCHAR.new(get_code_page, string, false)
        flags = OS::DT_CALCRECT | OS::DT_EDITCONTROL | OS::DT_NOPREFIX
        OS._draw_text(h_dc, buffer, buffer.length, rect, flags)
        width = rect.attr_right - rect.attr_left
        if (!(new_font).equal?(0))
          OS._select_object(h_dc, old_font)
        end
        OS._release_dc(@hwnd_text, h_dc)
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
      trim = compute_trim(0, 0, width, height)
      if ((h_hint).equal?(SWT::DEFAULT))
        up_down_height = OS._get_system_metrics(OS::SM_CYVSCROLL) + 2 * get_border_width
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
          up_down_height += !((self.attr_style & SWT::BORDER)).equal?(0) ? 1 : 3
        end
        trim.attr_height = Math.max(trim.attr_height, up_down_height)
      end
      return Point.new(trim.attr_width, trim.attr_height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      # Get the trim of the text control
      rect = RECT.new
      OS._set_rect(rect, x, y, x + width, y + height)
      bits0 = OS._get_window_long(@hwnd_text, OS::GWL_STYLE)
      bits1 = OS._get_window_long(@hwnd_text, OS::GWL_EXSTYLE)
      OS._adjust_window_rect_ex(rect, bits0, false, bits1)
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      # The preferred height of a single-line text widget
      # has been hand-crafted to be the same height as
      # the single-line text widget in an editable combo
      # box.
      # 
      # long
      margins = OS._send_message(@hwnd_text, OS::EM_GETMARGINS, 0, 0)
      x -= OS._loword(margins)
      width += OS._loword(margins) + OS._hiword(margins)
      if (!((self.attr_style & SWT::BORDER)).equal?(0))
        x -= 1
        y -= 1
        width += 2
        height += 2
      end
      width += OS._get_system_metrics(OS::SM_CXVSCROLL)
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [] }
    # Copies the selected text.
    # <p>
    # The current selection is copied to the clipboard.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def copy
      check_widget
      OS._send_message(@hwnd_text, OS::WM_COPY, 0, 0)
    end
    
    typesig { [] }
    # Cuts the selected text.
    # <p>
    # The current selection is first copied to the
    # clipboard and then deleted from the widget.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def cut
      check_widget
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return
      end
      OS._send_message(@hwnd_text, OS::WM_CUT, 0, 0)
    end
    
    typesig { [] }
    def default_background
      return OS._get_sys_color(OS::COLOR_WINDOW)
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      super(enabled)
      OS._enable_window(@hwnd_text, enabled)
      OS._enable_window(@hwnd_up_down, enabled)
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_control(@hwnd_text)
      self.attr_display.remove_control(@hwnd_up_down)
    end
    
    typesig { [] }
    def has_focus
      # long
      hwnd_focus = OS._get_focus
      if ((hwnd_focus).equal?(self.attr_handle))
        return true
      end
      if ((hwnd_focus).equal?(@hwnd_text))
        return true
      end
      if ((hwnd_focus).equal?(@hwnd_up_down))
        return true
      end
      return false
    end
    
    typesig { [] }
    # Returns the number of decimal places used by the receiver.
    # 
    # @return the digits
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_digits
      check_widget
      return @digits
    end
    
    typesig { [] }
    def get_decimal_separator
      tchar = TCHAR.new(get_code_page, 4)
      size = OS._get_locale_info(OS::LOCALE_USER_DEFAULT, OS::LOCALE_SDECIMAL, tchar, 4)
      return !(size).equal?(0) ? tchar.to_s(0, size - 1) : "."
    end
    
    typesig { [] }
    # Returns the amount that the receiver's value will be
    # modified by when the up/down arrows are pressed.
    # 
    # @return the increment
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_increment
      check_widget
      udaccel = UDACCEL.new
      OS._send_message(@hwnd_up_down, OS::UDM_GETACCEL, 1, udaccel)
      return udaccel.attr_n_inc
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
      max_ = Array.typed(::Java::Int).new(1) { 0 }
      OS._send_message(@hwnd_up_down, OS::UDM_GETRANGE32, nil, max_)
      return max_[0]
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
      min = Array.typed(::Java::Int).new(1) { 0 }
      OS._send_message(@hwnd_up_down, OS::UDM_GETRANGE32, min, nil)
      return min[0]
    end
    
    typesig { [] }
    # Returns the amount that the receiver's position will be
    # modified by when the page up/down keys are pressed.
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
    # Returns the <em>selection</em>, which is the receiver's position.
    # 
    # @return the selection
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      if (OS::IsWinCE)
        return OS._loword(OS._send_message(@hwnd_up_down, OS::UDM_GETPOS, 0, 0))
      else
        # 64
        return RJava.cast_to_int(OS._send_message(@hwnd_up_down, OS::UDM_GETPOS32, 0, 0))
      end
    end
    
    typesig { [Array.typed(::Java::Boolean)] }
    def get_selection_text(parse_fail)
      length_ = OS._get_window_text_length(@hwnd_text)
      buffer = TCHAR.new(get_code_page, length_ + 1)
      OS._get_window_text(@hwnd_text, buffer, length_ + 1)
      string = buffer.to_s(0, length_)
      begin
        value = 0
        if (@digits > 0)
          decimal_separator = get_decimal_separator
          index = string.index_of(decimal_separator)
          if (!(index).equal?(-1))
            start_index = string.starts_with("+") || string.starts_with("-") ? 1 : 0
            whole_part = !(start_index).equal?(index) ? string.substring(start_index, index) : "0"
            decimal_part = string.substring(index + 1)
            if (decimal_part.length > @digits)
              decimal_part = RJava.cast_to_string(decimal_part.substring(0, @digits))
            else
              i = @digits - decimal_part.length
              j = 0
              while j < i
                decimal_part = decimal_part + "0"
                j += 1
              end
            end
            whole_value = JavaInteger.parse_int(whole_part)
            decimal_value = JavaInteger.parse_int(decimal_part)
            i = 0
            while i < @digits
              whole_value *= 10
              i += 1
            end
            value = whole_value + decimal_value
            if (string.starts_with("-"))
              value = -value
            end
          else
            value = JavaInteger.parse_int(string)
            i = 0
            while i < @digits
              value *= 10
              i += 1
            end
          end
        else
          value = JavaInteger.parse_int(string)
        end
        max_ = Array.typed(::Java::Int).new(1) { 0 }
        min = Array.typed(::Java::Int).new(1) { 0 }
        OS._send_message(@hwnd_up_down, OS::UDM_GETRANGE32, min, max_)
        if (min[0] <= value && value <= max_[0])
          return value
        end
      rescue NumberFormatException => e
      end
      parse_fail[0] = true
      return -1
    end
    
    typesig { [] }
    # Returns a string containing a copy of the contents of the
    # receiver's text field, or an empty string if there are no
    # contents.
    # 
    # @return the receiver's text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_text
      check_widget
      length_ = OS._get_window_text_length(@hwnd_text)
      if ((length_).equal?(0))
        return ""
      end
      buffer = TCHAR.new(get_code_page, length_ + 1)
      OS._get_window_text(@hwnd_text, buffer, length_ + 1)
      return buffer.to_s(0, length_)
    end
    
    typesig { [] }
    # Returns the maximum number of characters that the receiver's
    # text field is capable of holding. If this has not been changed
    # by <code>setTextLimit()</code>, it will be the constant
    # <code>Spinner.LIMIT</code>.
    # 
    # @return the text limit
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #LIMIT
    # 
    # @since 3.4
    def get_text_limit
      check_widget
      # 64
      return RJava.cast_to_int(OS._send_message(@hwnd_text, OS::EM_GETLIMITTEXT, 0, 0)) & 0x7fffffff
    end
    
    typesig { [::Java::Int] }
    def mbcs_to_wcs_pos(mbcs_pos)
      if (mbcs_pos <= 0)
        return 0
      end
      if (OS::IsUnicode)
        return mbcs_pos
      end
      mbcs_size = OS._get_window_text_length_a(@hwnd_text)
      if ((mbcs_size).equal?(0))
        return 0
      end
      if (mbcs_pos >= mbcs_size)
        return mbcs_size
      end
      buffer = Array.typed(::Java::Byte).new(mbcs_size + 1) { 0 }
      OS._get_window_text_a(@hwnd_text, buffer, mbcs_size + 1)
      return OS._multi_byte_to_wide_char(get_code_page, OS::MB_PRECOMPOSED, buffer, mbcs_pos, nil, 0)
    end
    
    typesig { [] }
    # Pastes text from clipboard.
    # <p>
    # The selected text is deleted from the widget
    # and new text inserted from the clipboard.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def paste
      check_widget
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return
      end
      OS._send_message(@hwnd_text, OS::WM_PASTE, 0, 0)
    end
    
    typesig { [] }
    def register
      super
      self.attr_display.add_control(@hwnd_text, self)
      self.attr_display.add_control(@hwnd_up_down, self)
    end
    
    typesig { [] }
    def release_handle
      super
      @hwnd_text = @hwnd_up_down = 0
    end
    
    typesig { [ModifyListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the receiver's text is modified.
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
    # @see ModifyListener
    # @see #addModifyListener
    def remove_modify_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Modify, listener)
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
    
    typesig { [VerifyListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the control is verified.
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
    # @see VerifyListener
    # @see #addVerifyListener
    def remove_verify_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Verify, listener)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Event] }
    # long
    # long
    def send_key_event(type, msg, w_param, l_param, event)
      if (!super(type, msg, w_param, l_param, event))
        return false
      end
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return true
      end
      if (!(type).equal?(SWT::KeyDown))
        return true
      end
      if (!(msg).equal?(OS::WM_CHAR) && !(msg).equal?(OS::WM_KEYDOWN) && !(msg).equal?(OS::WM_IME_CHAR))
        return true
      end
      if ((event.attr_character).equal?(0))
        return true
      end
      # if (!hooks (SWT.Verify) && !filters (SWT.Verify)) return true;
      key = event.attr_character
      state_mask = event.attr_state_mask
      # Disable all magic keys that could modify the text
      # and don't send events when Alt, Shift or Ctrl is
      # pressed.
      case (msg)
      # FALL THROUGH
      when OS::WM_CHAR
        if (!(key).equal?(0x8) && !(key).equal?(0x7f) && !(key).equal?(Character.new(?\r.ord)) && !(key).equal?(Character.new(?\t.ord)) && !(key).equal?(Character.new(?\n.ord)))
        end
      when OS::WM_KEYDOWN
        if (!((state_mask & (SWT::ALT | SWT::SHIFT | SWT::CONTROL))).equal?(0))
          return false
        end
      end
      # If the left button is down, the text widget refuses the character.
      if (OS._get_key_state(OS::VK_LBUTTON) < 0)
        return true
      end
      # Verify the character
      old_text = ""
      start = Array.typed(::Java::Int).new(1) { 0 }
      end_ = Array.typed(::Java::Int).new(1) { 0 }
      OS._send_message(@hwnd_text, OS::EM_GETSEL, start, end_)
      case (key)
      when 0x8
        # Bs
        if ((start[0]).equal?(end_[0]))
          if ((start[0]).equal?(0))
            return true
          end
          start[0] = start[0] - 1
          if (!OS::IsUnicode && OS::IsDBLocale)
            new_start = Array.typed(::Java::Int).new(1) { 0 }
            new_end = Array.typed(::Java::Int).new(1) { 0 }
            OS._send_message(@hwnd_text, OS::EM_SETSEL, start[0], end_[0])
            OS._send_message(@hwnd_text, OS::EM_GETSEL, new_start, new_end)
            if (!(start[0]).equal?(new_start[0]))
              start[0] = start[0] - 1
            end
          end
          start[0] = Math.max(start[0], 0)
        end
      when 0x7f
        # Del
        if ((start[0]).equal?(end_[0]))
          length_ = OS._get_window_text_length(@hwnd_text)
          if ((start[0]).equal?(length_))
            return true
          end
          end_[0] = end_[0] + 1
          if (!OS::IsUnicode && OS::IsDBLocale)
            new_start = Array.typed(::Java::Int).new(1) { 0 }
            new_end = Array.typed(::Java::Int).new(1) { 0 }
            OS._send_message(@hwnd_text, OS::EM_SETSEL, start[0], end_[0])
            OS._send_message(@hwnd_text, OS::EM_GETSEL, new_start, new_end)
            if (!(end_[0]).equal?(new_end[0]))
              end_[0] = end_[0] + 1
            end
          end
          end_[0] = Math.min(end_[0], length_)
        end
      when Character.new(?\r.ord)
        # Return
        return true
      else
        # Tab and other characters
        if (!(key).equal?(Character.new(?\t.ord)) && key < 0x20)
          return true
        end
        old_text = RJava.cast_to_string(String.new(Array.typed(::Java::Char).new([key])))
      end
      new_text = verify_text(old_text, start[0], end_[0], event)
      if ((new_text).nil?)
        return false
      end
      if ((new_text).equal?(old_text))
        return true
      end
      buffer = TCHAR.new(get_code_page, new_text, true)
      OS._send_message(@hwnd_text, OS::EM_SETSEL, start[0], end_[0])
      OS._send_message(@hwnd_text, OS::EM_REPLACESEL, 0, buffer)
      return false
    end
    
    typesig { [::Java::Int] }
    # long
    def set_background_image(h_bitmap)
      super(h_bitmap)
      OS._invalidate_rect(@hwnd_text, nil, true)
    end
    
    typesig { [::Java::Int] }
    def set_background_pixel(pixel)
      super(pixel)
      OS._invalidate_rect(@hwnd_text, nil, true)
    end
    
    typesig { [::Java::Int] }
    # Sets the number of decimal places used by the receiver.
    # <p>
    # The digit setting is used to allow for floating point values in the receiver.
    # For example, to set the selection to a floating point value of 1.37 call setDigits() with
    # a value of 2 and setSelection() with a value of 137. Similarly, if getDigits() has a value
    # of 2 and getSelection() returns 137 this should be interpreted as 1.37. This applies to all
    # numeric APIs.
    # </p>
    # 
    # @param value the new digits (must be greater than or equal to zero)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the value is less than zero</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_digits(value)
      check_widget
      if (value < 0)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((value).equal?(@digits))
        return
      end
      @digits = value
      pos = 0
      if (OS::IsWinCE)
        pos = OS._loword(OS._send_message(@hwnd_up_down, OS::UDM_GETPOS, 0, 0))
      else
        # 64
        pos = RJava.cast_to_int(OS._send_message(@hwnd_up_down, OS::UDM_GETPOS32, 0, 0))
      end
      set_selection(pos, false, true, false)
    end
    
    typesig { [::Java::Int] }
    def set_foreground_pixel(pixel)
      super(pixel)
      OS._invalidate_rect(@hwnd_text, nil, true)
    end
    
    typesig { [::Java::Int] }
    # Sets the amount that the receiver's value will be
    # modified by when the up/down arrows are pressed to
    # the argument, which must be at least one.
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
      # long
      h_heap = OS._get_process_heap
      # 64
      count = RJava.cast_to_int(OS._send_message(@hwnd_up_down, OS::UDM_GETACCEL, 0, nil))
      # long
      udaccels = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, UDACCEL.attr_sizeof * count)
      OS._send_message(@hwnd_up_down, OS::UDM_GETACCEL, count, udaccels)
      first = -1
      udaccel = UDACCEL.new
      i = 0
      while i < count
        # long
        offset = udaccels + (i * UDACCEL.attr_sizeof)
        OS._move_memory(udaccel, offset, UDACCEL.attr_sizeof)
        if ((first).equal?(-1))
          first = udaccel.attr_n_inc
        end
        udaccel.attr_n_inc = udaccel.attr_n_inc * value / first
        OS._move_memory(offset, udaccel, UDACCEL.attr_sizeof)
        i += 1
      end
      OS._send_message(@hwnd_up_down, OS::UDM_SETACCEL, count, udaccels)
      OS._heap_free(h_heap, 0, udaccels)
    end
    
    typesig { [::Java::Int] }
    # Sets the maximum value that the receiver will allow.  This new
    # value will be ignored if it is not greater than the receiver's current
    # minimum value.  If the new maximum is applied then the receiver's
    # selection value will be adjusted if necessary to fall within its new range.
    # 
    # @param value the new maximum, which must be greater than the current minimum
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_maximum(value)
      check_widget
      min_ = Array.typed(::Java::Int).new(1) { 0 }
      OS._send_message(@hwnd_up_down, OS::UDM_GETRANGE32, min_, nil)
      if (value <= min_[0])
        return
      end
      pos = 0
      if (OS::IsWinCE)
        pos = OS._loword(OS._send_message(@hwnd_up_down, OS::UDM_GETPOS, 0, 0))
      else
        # 64
        pos = RJava.cast_to_int(OS._send_message(@hwnd_up_down, OS::UDM_GETPOS32, 0, 0))
      end
      OS._send_message(@hwnd_up_down, OS::UDM_SETRANGE32, min_[0], value)
      if (pos > value)
        set_selection(value, true, true, false)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the minimum value that the receiver will allow.  This new
    # value will be ignored if it is not less than the receiver's
    # current maximum value.  If the new minimum is applied then the receiver's
    # selection value will be adjusted if necessary to fall within its new range.
    # 
    # @param value the new minimum, which must be less than the current maximum
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_minimum(value)
      check_widget
      max_ = Array.typed(::Java::Int).new(1) { 0 }
      OS._send_message(@hwnd_up_down, OS::UDM_GETRANGE32, nil, max_)
      if (value >= max_[0])
        return
      end
      pos = 0
      if (OS::IsWinCE)
        pos = OS._loword(OS._send_message(@hwnd_up_down, OS::UDM_GETPOS, 0, 0))
      else
        # 64
        pos = RJava.cast_to_int(OS._send_message(@hwnd_up_down, OS::UDM_GETPOS32, 0, 0))
      end
      OS._send_message(@hwnd_up_down, OS::UDM_SETRANGE32, value, max_[0])
      if (pos < value)
        set_selection(value, true, true, false)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the amount that the receiver's position will be
    # modified by when the page up/down keys are pressed
    # to the argument, which must be at least one.
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
    # Sets the <em>selection</em>, which is the receiver's
    # position, to the argument. If the argument is not within
    # the range specified by minimum and maximum, it will be
    # adjusted to fall within this range.
    # 
    # @param value the new selection (must be zero or greater)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(value)
      check_widget
      max_ = Array.typed(::Java::Int).new(1) { 0 }
      min_ = Array.typed(::Java::Int).new(1) { 0 }
      OS._send_message(@hwnd_up_down, OS::UDM_GETRANGE32, min_, max_)
      value = Math.min(Math.max(min_[0], value), max_[0])
      set_selection(value, true, true, false)
    end
    
    typesig { [::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def set_selection(value, set_pos, set_text, notify)
      if (set_pos)
        OS._send_message(@hwnd_up_down, OS::IsWinCE ? OS::UDM_SETPOS : OS::UDM_SETPOS32, 0, value)
      end
      if (set_text)
        string = nil
        if ((@digits).equal?(0))
          string = RJava.cast_to_string(String.value_of(value))
        else
          string = RJava.cast_to_string(String.value_of(Math.abs(value)))
          decimal_separator = get_decimal_separator
          index = string.length - @digits
          buffer = StringBuffer.new
          if (value < 0)
            buffer.append("-")
          end
          if (index > 0)
            buffer.append(string.substring(0, index))
            buffer.append(decimal_separator)
            buffer.append(string.substring(index))
          else
            buffer.append("0")
            buffer.append(decimal_separator)
            while (((index += 1) - 1) < 0)
              buffer.append("0")
            end
            buffer.append(string)
          end
          string = RJava.cast_to_string(buffer.to_s)
        end
        if (hooks(SWT::Verify) || filters(SWT::Verify))
          length_ = OS._get_window_text_length(@hwnd_text)
          string = RJava.cast_to_string(verify_text(string, 0, length_, nil))
          if ((string).nil?)
            return
          end
        end
        buffer = TCHAR.new(get_code_page, string, true)
        OS._set_window_text(@hwnd_text, buffer)
        OS._send_message(@hwnd_text, OS::EM_SETSEL, 0, -1)
        if (!OS::IsWinCE)
          OS._notify_win_event(OS::EVENT_OBJECT_FOCUS, @hwnd_text, OS::OBJID_CLIENT, 0)
        end
      end
      if (notify)
        post_event___org_eclipse_swt_widgets_spinner_1(SWT::Selection)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the maximum number of characters that the receiver's
    # text field is capable of holding to be the argument.
    # <p>
    # To reset this value to the default, use <code>setTextLimit(Spinner.LIMIT)</code>.
    # Specifying a limit value larger than <code>Spinner.LIMIT</code> sets the
    # receiver's limit to <code>Spinner.LIMIT</code>.
    # </p>
    # @param limit new text limit
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_CANNOT_BE_ZERO - if the limit is zero</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #LIMIT
    # 
    # @since 3.4
    def set_text_limit(limit)
      check_widget
      if ((limit).equal?(0))
        error(SWT::ERROR_CANNOT_BE_ZERO)
      end
      OS._send_message(@hwnd_text, OS::EM_SETLIMITTEXT, limit, 0)
    end
    
    typesig { [Shell, String] }
    def set_tool_tip_text(shell, string)
      shell.set_tool_tip_text(@hwnd_text, string)
      shell.set_tool_tip_text(@hwnd_up_down, string)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Sets the receiver's selection, minimum value, maximum
    # value, digits, increment and page increment all at once.
    # <p>
    # Note: This is similar to setting the values individually
    # using the appropriate methods, but may be implemented in a
    # more efficient fashion on some platforms.
    # </p>
    # 
    # @param selection the new selection value
    # @param minimum the new minimum value
    # @param maximum the new maximum value
    # @param digits the new digits value
    # @param increment the new increment value
    # @param pageIncrement the new pageIncrement value
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def set_values(selection, minimum, maximum, digits, increment, page_increment)
      check_widget
      if (maximum <= minimum)
        return
      end
      if (digits < 0)
        return
      end
      if (increment < 1)
        return
      end
      if (page_increment < 1)
        return
      end
      selection = Math.min(Math.max(minimum, selection), maximum)
      set_increment(increment)
      @page_increment = page_increment
      @digits = digits
      OS._send_message(@hwnd_up_down, OS::UDM_SETRANGE32, minimum, maximum)
      set_selection(selection, true, true, false)
    end
    
    typesig { [] }
    def subclass
      super
      # long
      new_proc = self.attr_display.attr_window_proc
      OS._set_window_long_ptr(@hwnd_text, OS::GWLP_WNDPROC, new_proc)
      OS._set_window_long_ptr(@hwnd_up_down, OS::GWLP_WNDPROC, new_proc)
    end
    
    typesig { [] }
    def unsubclass
      super
      OS._set_window_long_ptr(@hwnd_text, OS::GWLP_WNDPROC, EditProc)
      OS._set_window_long_ptr(@hwnd_up_down, OS::GWLP_WNDPROC, UpDownProc)
    end
    
    typesig { [String, ::Java::Int, ::Java::Int, Event] }
    def verify_text(string, start, end_, key_event)
      event = Event.new
      event.attr_text = string
      event.attr_start = start
      event.attr_end = end_
      if (!(key_event).nil?)
        event.attr_character = key_event.attr_character
        event.attr_key_code = key_event.attr_key_code
        event.attr_state_mask = key_event.attr_state_mask
      end
      index = 0
      if (@digits > 0)
        decimal_separator = get_decimal_separator
        index = string.index_of(decimal_separator)
        if (!(index).equal?(-1))
          string = RJava.cast_to_string(string.substring(0, index) + string.substring(index + 1))
        end
        index = 0
      end
      if (string.length > 0)
        min_ = Array.typed(::Java::Int).new(1) { 0 }
        OS._send_message(@hwnd_up_down, OS::UDM_GETRANGE32, min_, nil)
        if (min_[0] < 0 && (string.char_at(0)).equal?(Character.new(?-.ord)))
          index += 1
        end
      end
      while (index < string.length)
        if (!Character.is_digit(string.char_at(index)))
          break
        end
        index += 1
      end
      event.attr_doit = (index).equal?(string.length)
      if (!OS::IsUnicode && OS::IsDBLocale)
        event.attr_start = mbcs_to_wcs_pos(start)
        event.attr_end = mbcs_to_wcs_pos(end_)
      end
      send_event___org_eclipse_swt_widgets_spinner_3(SWT::Verify, event)
      if (!event.attr_doit || is_disposed)
        return nil
      end
      return event.attr_text
    end
    
    typesig { [] }
    def widget_ext_style
      return super & ~OS::WS_EX_CLIENTEDGE
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def window_proc(hwnd, msg, w_param, l_param)
      if ((hwnd).equal?(@hwnd_text) || (hwnd).equal?(@hwnd_up_down))
        result = nil
        case (msg)
        # Keyboard messages
        # Mouse Messages
        # case OS.WM_MOUSEWHEEL:		result = wmMouseWheel (hwnd, wParam, lParam); break;
        # Focus Messages
        # Paint messages
        # Menu messages
        # Clipboard messages
        when OS::WM_CHAR
          result = wm_char(hwnd, w_param, l_param)
        when OS::WM_IME_CHAR
          result = wm_imechar(hwnd, w_param, l_param)
        when OS::WM_KEYDOWN
          result = wm_key_down(hwnd, w_param, l_param)
        when OS::WM_KEYUP
          result = wm_key_up(hwnd, w_param, l_param)
        when OS::WM_SYSCHAR
          result = wm_sys_char(hwnd, w_param, l_param)
        when OS::WM_SYSKEYDOWN
          result = wm_sys_key_down(hwnd, w_param, l_param)
        when OS::WM_SYSKEYUP
          result = wm_sys_key_up(hwnd, w_param, l_param)
        when OS::WM_CAPTURECHANGED
          result = wm_capture_changed(hwnd, w_param, l_param)
        when OS::WM_LBUTTONDBLCLK
          result = wm_lbutton_dbl_clk(hwnd, w_param, l_param)
        when OS::WM_LBUTTONDOWN
          result = wm_lbutton_down(hwnd, w_param, l_param)
        when OS::WM_LBUTTONUP
          result = wm_lbutton_up(hwnd, w_param, l_param)
        when OS::WM_MBUTTONDBLCLK
          result = wm_mbutton_dbl_clk(hwnd, w_param, l_param)
        when OS::WM_MBUTTONDOWN
          result = wm_mbutton_down(hwnd, w_param, l_param)
        when OS::WM_MBUTTONUP
          result = wm_mbutton_up(hwnd, w_param, l_param)
        when OS::WM_MOUSEHOVER
          result = wm_mouse_hover(hwnd, w_param, l_param)
        when OS::WM_MOUSELEAVE
          result = wm_mouse_leave(hwnd, w_param, l_param)
        when OS::WM_MOUSEMOVE
          result = wm_mouse_move(hwnd, w_param, l_param)
        when OS::WM_RBUTTONDBLCLK
          result = wm_rbutton_dbl_clk(hwnd, w_param, l_param)
        when OS::WM_RBUTTONDOWN
          result = wm_rbutton_down(hwnd, w_param, l_param)
        when OS::WM_RBUTTONUP
          result = wm_rbutton_up(hwnd, w_param, l_param)
        when OS::WM_XBUTTONDBLCLK
          result = wm_xbutton_dbl_clk(hwnd, w_param, l_param)
        when OS::WM_XBUTTONDOWN
          result = wm_xbutton_down(hwnd, w_param, l_param)
        when OS::WM_XBUTTONUP
          result = wm_xbutton_up(hwnd, w_param, l_param)
        when OS::WM_SETFOCUS
          result = wm_set_focus(hwnd, w_param, l_param)
        when OS::WM_KILLFOCUS
          result = wm_kill_focus(hwnd, w_param, l_param)
        when OS::WM_PAINT
          result = wm_paint(hwnd, w_param, l_param)
        when OS::WM_PRINT
          result = wm_print(hwnd, w_param, l_param)
        when OS::WM_CONTEXTMENU
          result = wm_context_menu(hwnd, w_param, l_param)
        when OS::WM_CLEAR, OS::WM_CUT, OS::WM_PASTE, OS::WM_UNDO, OS::EM_UNDO
          if ((hwnd).equal?(@hwnd_text))
            result = wm_clipboard(hwnd, msg, w_param, l_param)
          end
        end
        if (!(result).nil?)
          return result.attr_value
        end
        return call_window_proc(hwnd, msg, w_param, l_param)
      end
      return super(hwnd, msg, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_erasebkgnd(w_param, l_param)
      super(w_param, l_param)
      draw_background(w_param)
      return LRESULT::ONE
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_killfocus(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setfocus(w_param, l_param)
      OS._set_focus(@hwnd_text)
      OS._send_message(@hwnd_text, OS::EM_SETSEL, 0, -1)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setfont(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      OS._send_message(@hwnd_text, OS::WM_SETFONT, w_param, l_param)
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_size(w_param, l_param)
      result = super(w_param, l_param)
      if (is_disposed)
        return result
      end
      width = OS._loword(l_param)
      height = OS._hiword(l_param)
      up_down_width = OS._get_system_metrics(OS::SM_CXVSCROLL)
      text_width = width - up_down_width
      border = OS._get_system_metrics(OS::SM_CXEDGE)
      flags = OS::SWP_NOZORDER | OS::SWP_DRAWFRAME | OS::SWP_NOACTIVATE
      _set_window_pos(@hwnd_text, 0, 0, 0, text_width + border, height, flags)
      _set_window_pos(@hwnd_up_down, 0, text_width, 0, up_down_width, height, flags)
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_char(hwnd, w_param, l_param)
      result = super(hwnd, w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows.  For some reason, when the
      # widget is a single line text widget, when the
      # user presses tab, return or escape, Windows beeps.
      # The fix is to look for these keys and not call
      # the window proc.
      # 
      # 64
      case (RJava.cast_to_int(w_param))
      # FALL THROUGH
      when SWT::CR
        post_event___org_eclipse_swt_widgets_spinner_5(SWT::DefaultSelection)
        return LRESULT::ZERO
      when SWT::TAB, SWT::ESC
        return LRESULT::ZERO
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_clipboard(hwnd_text, msg, w_param, l_param)
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return nil
      end
      # if (!hooks (SWT.Verify) && !filters (SWT.Verify)) return null;
      call = false
      start = Array.typed(::Java::Int).new(1) { 0 }
      end_ = Array.typed(::Java::Int).new(1) { 0 }
      new_text = nil
      case (msg)
      when OS::WM_CLEAR, OS::WM_CUT
        OS._send_message(hwnd_text, OS::EM_GETSEL, start, end_)
        if (!(start[0]).equal?(end_[0]))
          new_text = ""
          call = true
        end
      when OS::WM_PASTE
        OS._send_message(hwnd_text, OS::EM_GETSEL, start, end_)
        new_text = RJava.cast_to_string(get_clipboard_text)
      when OS::EM_UNDO, OS::WM_UNDO
        if (!(OS._send_message(hwnd_text, OS::EM_CANUNDO, 0, 0)).equal?(0))
          @ignore_modify = true
          OS._call_window_proc(EditProc, hwnd_text, msg, w_param, l_param)
          length_ = OS._get_window_text_length(hwnd_text)
          new_start = Array.typed(::Java::Int).new(1) { 0 }
          new_end = Array.typed(::Java::Int).new(1) { 0 }
          OS._send_message(hwnd_text, OS::EM_GETSEL, new_start, new_end)
          if (!(length_).equal?(0) && !(new_start[0]).equal?(new_end[0]))
            buffer = TCHAR.new(get_code_page, length_ + 1)
            OS._get_window_text(hwnd_text, buffer, length_ + 1)
            new_text = RJava.cast_to_string(buffer.to_s(new_start[0], new_end[0] - new_start[0]))
          else
            new_text = ""
          end
          OS._call_window_proc(EditProc, hwnd_text, msg, w_param, l_param)
          OS._send_message(hwnd_text, OS::EM_GETSEL, start, end_)
          @ignore_modify = false
        end
      end
      if (!(new_text).nil?)
        old_text = new_text
        new_text = RJava.cast_to_string(verify_text(new_text, start[0], end_[0], nil))
        if ((new_text).nil?)
          return LRESULT::ZERO
        end
        if (!(new_text == old_text))
          if (call)
            OS._call_window_proc(EditProc, hwnd_text, msg, w_param, l_param)
          end
          buffer = TCHAR.new(get_code_page, new_text, true)
          if ((msg).equal?(OS::WM_SETTEXT))
            # long
            h_heap = OS._get_process_heap
            byte_count = buffer.length * TCHAR.attr_sizeof
            # long
            psz_text = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
            OS._move_memory(psz_text, buffer, byte_count)
            # long
            code = OS._call_window_proc(EditProc, hwnd_text, msg, w_param, psz_text)
            OS._heap_free(h_heap, 0, psz_text)
            return LRESULT.new(code)
          else
            OS._send_message(hwnd_text, OS::EM_REPLACESEL, 0, buffer)
            return LRESULT::ZERO
          end
        end
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_command_child(w_param, l_param)
      code = OS._hiword(w_param)
      catch(:break_case) do
        case (code)
        when OS::EN_CHANGE
          if (@ignore_modify)
            throw :break_case, :thrown
          end
          parse_fail = Array.typed(::Java::Boolean).new(1) { false }
          value = get_selection_text(parse_fail)
          if (!parse_fail[0])
            pos = 0
            if (OS::IsWinCE)
              pos = OS._loword(OS._send_message(@hwnd_up_down, OS::UDM_GETPOS, 0, 0))
            else
              # 64
              pos = RJava.cast_to_int(OS._send_message(@hwnd_up_down, OS::UDM_GETPOS32, 0, 0))
            end
            if (!(pos).equal?(value))
              set_selection(value, true, false, true)
            end
          end
          send_event___org_eclipse_swt_widgets_spinner_7(SWT::Modify)
          if (is_disposed)
            return LRESULT::ZERO
          end
        end
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_key_down(hwnd, w_param, l_param)
      result = super(hwnd, w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Increment the value
      udaccel = UDACCEL.new
      OS._send_message(@hwnd_up_down, OS::UDM_GETACCEL, 1, udaccel)
      delta = 0
      # 64
      case (RJava.cast_to_int(w_param))
      when OS::VK_UP
        delta = udaccel.attr_n_inc
      when OS::VK_DOWN
        delta = -udaccel.attr_n_inc
      when OS::VK_PRIOR
        delta = @page_increment
      when OS::VK_NEXT
        delta = -@page_increment
      end
      if (!(delta).equal?(0))
        parse_fail = Array.typed(::Java::Boolean).new(1) { false }
        value = get_selection_text(parse_fail)
        if (parse_fail[0])
          if (OS::IsWinCE)
            value = OS._loword(OS._send_message(@hwnd_up_down, OS::UDM_GETPOS, 0, 0))
          else
            # 64
            value = RJava.cast_to_int(OS._send_message(@hwnd_up_down, OS::UDM_GETPOS32, 0, 0))
          end
        end
        new_value = value + delta
        max_ = Array.typed(::Java::Int).new(1) { 0 }
        min_ = Array.typed(::Java::Int).new(1) { 0 }
        OS._send_message(@hwnd_up_down, OS::UDM_GETRANGE32, min_, max_)
        if (!((self.attr_style & SWT::WRAP)).equal?(0))
          if (new_value < min_[0])
            new_value = max_[0]
          end
          if (new_value > max_[0])
            new_value = min_[0]
          end
        end
        new_value = Math.min(Math.max(min_[0], new_value), max_[0])
        if (!(value).equal?(new_value))
          set_selection(new_value, true, true, true)
        end
      end
      # Stop the edit control from moving the caret
      # 64
      case (RJava.cast_to_int(w_param))
      when OS::VK_UP, OS::VK_DOWN
        return LRESULT::ZERO
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_kill_focus(hwnd, w_param, l_param)
      parse_fail = Array.typed(::Java::Boolean).new(1) { false }
      value = get_selection_text(parse_fail)
      if (parse_fail[0])
        if (OS::IsWinCE)
          value = OS._loword(OS._send_message(@hwnd_up_down, OS::UDM_GETPOS, 0, 0))
        else
          # 64
          value = RJava.cast_to_int(OS._send_message(@hwnd_up_down, OS::UDM_GETPOS32, 0, 0))
        end
        set_selection(value, false, true, false)
      end
      return super(hwnd, w_param, l_param)
    end
    
    typesig { [NMHDR, ::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_notify_child(hdr, w_param, l_param)
      case (hdr.attr_code)
      when OS::UDN_DELTAPOS
        lpnmud = NMUPDOWN.new
        OS._move_memory(lpnmud, l_param, NMUPDOWN.attr_sizeof)
        value = lpnmud.attr_i_pos + lpnmud.attr_i_delta
        max_ = Array.typed(::Java::Int).new(1) { 0 }
        min_ = Array.typed(::Java::Int).new(1) { 0 }
        OS._send_message(@hwnd_up_down, OS::UDM_GETRANGE32, min_, max_)
        if (!((self.attr_style & SWT::WRAP)).equal?(0))
          if (value < min_[0])
            value = max_[0]
          end
          if (value > max_[0])
            value = min_[0]
          end
        end
        # The SWT.Modify event is sent after the widget has been
        # updated with the new state.  Rather than allowing
        # the default updown window proc to set the value
        # when the user clicks on the updown control, set
        # the value explicitly and stop the window proc
        # from running.
        value = Math.min(Math.max(min_[0], value), max_[0])
        if (!(value).equal?(lpnmud.attr_i_pos))
          set_selection(value, true, true, true)
        end
        return LRESULT::ONE
      end
      return super(hdr, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_scroll_child(w_param, l_param)
      code = OS._loword(w_param)
      case (code)
      when OS::SB_THUMBPOSITION
        post_event___org_eclipse_swt_widgets_spinner_9(SWT::Selection)
      end
      return super(w_param, l_param)
    end
    
    private
    alias_method :initialize__spinner, :initialize
  end
  
end
