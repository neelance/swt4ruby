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
  module SpinnerImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CFRange
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
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
  class Spinner < SpinnerImports.const_get :Composite
    include_class_members SpinnerImports
    
    attr_accessor :text_handle
    alias_method :attr_text_handle, :text_handle
    undef_method :text_handle
    alias_method :attr_text_handle=, :text_handle=
    undef_method :text_handle=
    
    attr_accessor :button_handle
    alias_method :attr_button_handle, :button_handle
    undef_method :button_handle
    alias_method :attr_button_handle=, :button_handle=
    undef_method :button_handle=
    
    attr_accessor :text_visible_rgn
    alias_method :attr_text_visible_rgn, :text_visible_rgn
    undef_method :text_visible_rgn
    alias_method :attr_text_visible_rgn=, :text_visible_rgn=
    undef_method :text_visible_rgn=
    
    attr_accessor :button_visible_rgn
    alias_method :attr_button_visible_rgn, :button_visible_rgn
    undef_method :button_visible_rgn
    alias_method :attr_button_visible_rgn=, :button_visible_rgn=
    undef_method :button_visible_rgn=
    
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
    
    attr_accessor :digits
    alias_method :attr_digits, :digits
    undef_method :digits
    alias_method :attr_digits=, :digits=
    undef_method :digits=
    
    attr_accessor :text_limit
    alias_method :attr_text_limit, :text_limit
    undef_method :text_limit
    alias_method :attr_text_limit=, :text_limit=
    undef_method :text_limit=
    
    class_module.module_eval {
      
      def gap
        defined?(@@gap) ? @@gap : @@gap= 3
      end
      alias_method :attr_gap, :gap
      
      def gap=(value)
        @@gap = value
      end
      alias_method :attr_gap=, :gap=
      
      # These values can be different on different platforms.
      # Therefore they are not initialized in the declaration
      # to stop the compiler from inlining.
      when_class_loaded do
        const_set :LIMIT, 0x7fffffff
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
      @text_handle = 0
      @button_handle = 0
      @text_visible_rgn = 0
      @button_visible_rgn = 0
      @increment = 0
      @page_increment = 0
      @digits = 0
      @text_limit = 0
      super(parent, check_style(style))
      @increment = 1
      @page_increment = 10
      @digits = 0
      @text_limit = LIMIT
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def action_proc(the_control, part_code)
      result = super(the_control, part_code)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      if ((the_control).equal?(@button_handle))
        parse_fail = Array.typed(::Java::Boolean).new(1) { false }
        value = get_selection_text(parse_fail)
        if (parse_fail[0])
          value = OS._get_control32bit_value(@button_handle)
        end
        new_value = value
        case (part_code)
        when OS.attr_k_control_up_button_part
          new_value += @increment
        when OS.attr_k_control_down_button_part
          new_value -= @increment
        end
        max = OS._get_control32bit_maximum(@button_handle)
        min = OS._get_control32bit_minimum(@button_handle)
        if (!((self.attr_style & SWT::WRAP)).equal?(0))
          if (new_value > max)
            new_value = min
          end
          if (new_value < min)
            new_value = max
          end
        end
        new_value = Math.min(Math.max(min, new_value), max)
        if (!(value).equal?(new_value))
          set_selection(new_value, true, true, true)
        end
      end
      return result
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
      max_ = OS._get_control32bit_maximum(@button_handle)
      string = String.value_of(max_)
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
      buffer = CharArray.new(string.length)
      string.get_chars(0, buffer.attr_length, buffer, 0)
      ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      size = text_extent(ptr, 0)
      if (!(ptr).equal?(0))
        OS._cfrelease(ptr)
      end
      width = Math.max(width, size.attr_x)
      height = Math.max(height, size.attr_y)
      metric = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_theme_metric(OS.attr_k_theme_metric_edit_text_whitespace, metric)
      width += metric[0] * 2
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      trim = compute_trim(0, 0, width, height)
      OS._get_theme_metric(OS.attr_k_theme_metric_little_arrows_height, metric)
      trim.attr_height = Math.max(trim.attr_height, metric[0])
      return Point.new(trim.attr_width, trim.attr_height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      inset_ = inset
      width += inset_.attr_left + inset_.attr_right
      height += inset_.attr_top + inset_.attr_bottom
      out_metric = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_theme_metric(OS.attr_k_theme_metric_little_arrows_width, out_metric)
      width += out_metric[0] + self.attr_gap
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
      selection = Array.typed(::Java::Short).new(2) { 0 }
      if (!(OS._get_control_data(@text_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_selection_tag, 4, selection, nil)).equal?(OS.attr_no_err))
        return
      end
      if ((selection[0]).equal?(selection[1]))
        return
      end
      actual_size = Array.typed(::Java::Int).new(1) { 0 }
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      if (!(OS._get_control_data(@text_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_cfstring_tag, 4, ptr, actual_size)).equal?(OS.attr_no_err))
        return
      end
      range = CFRange.new
      range.attr_location = selection[0]
      range.attr_length = selection[1] - selection[0]
      buffer = CharArray.new(range.attr_length)
      OS._cfstring_get_characters(ptr[0], range, buffer)
      OS._cfrelease(ptr[0])
      copy_to_clipboard(buffer)
    end
    
    typesig { [] }
    def create_handle
      window = OS._get_control_owner(self.attr_parent.attr_handle)
      action_proc = self.attr_display.attr_action_proc
      features = OS.attr_k_control_supports_embedding | OS.attr_k_control_supports_focus
      out_control = Array.typed(::Java::Int).new(1) { 0 }
      OS._create_user_pane_control(window, nil, features, out_control)
      if ((out_control[0]).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      self.attr_handle = out_control[0]
      OS._create_little_arrows_control(window, nil, 0, 0, 100, 1, out_control)
      if ((out_control[0]).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      @button_handle = out_control[0]
      OS._set_control_action(@button_handle, action_proc)
      OS._create_edit_unicode_text_control(window, nil, 0, false, nil, out_control)
      if ((out_control[0]).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      @text_handle = out_control[0]
      OS._set_control_data(@text_handle, OS.attr_k_control_entire_control, OS.attr_k_control_edit_text_single_line_tag, 1, Array.typed(::Java::Byte).new([1]))
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        OS._set_control_data(@text_handle, OS.attr_k_control_entire_control, OS.attr_k_control_edit_text_locked_tag, 1, Array.typed(::Java::Byte).new([1]))
      end
      set_selection(0, false, true, false)
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
      selection = Array.typed(::Java::Short).new(2) { 0 }
      if (!(OS._get_control_data(@text_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_selection_tag, 4, selection, nil)).equal?(OS.attr_no_err))
        return
      end
      if ((selection[0]).equal?(selection[1]))
        return
      end
      buffer = set_text("", selection[0], selection[1], true)
      if (!(buffer).nil?)
        copy_to_clipboard(buffer)
      end
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(@text_handle)
      self.attr_display.remove_widget(@button_handle)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def draw_background(control, context)
      if ((control).equal?(@text_handle))
        fill_background(control, context, nil)
      else
        self.attr_parent.fill_background(control, context, nil)
      end
    end
    
    typesig { [] }
    def focus_handle
      return @text_handle
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
      locale = OS._cflocale_copy_current
      formatter = OS._cfnumber_formatter_create(OS.attr_k_cfallocator_default, locale, OS.attr_k_cfnumber_formatter_decimal_style)
      key = OS.k_cfnumber_formatter_decimal_separator
      result = OS._cfnumber_formatter_copy_property(formatter, key)
      range = CFRange.new
      range.attr_location = 0
      range.attr_length = OS._cfstring_get_length(result)
      buffer = CharArray.new(range.attr_length)
      OS._cfstring_get_characters(result, range, buffer)
      OS._cfrelease(result)
      OS._cfrelease(formatter)
      OS._cfrelease(locale)
      return String.new(buffer)
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
      return OS._get_control32bit_maximum(@button_handle)
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
      return OS._get_control32bit_minimum(@button_handle)
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
      return OS._get_control32bit_value(@button_handle)
    end
    
    typesig { [Array.typed(::Java::Boolean)] }
    def get_selection_text(parse_fail)
      actual_size = Array.typed(::Java::Int).new(1) { 0 }
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      if ((OS._get_control_data(@text_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_cfstring_tag, 4, ptr, actual_size)).equal?(OS.attr_no_err))
        range = CFRange.new
        range.attr_location = 0
        range.attr_length = OS._cfstring_get_length(ptr[0])
        buffer = CharArray.new(range.attr_length)
        OS._cfstring_get_characters(ptr[0], range, buffer)
        OS._cfrelease(ptr[0])
        string = String.new(buffer)
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
          max_ = OS._get_control32bit_maximum(@button_handle)
          min_ = OS._get_control32bit_minimum(@button_handle)
          if (min_ <= value && value <= max_)
            return value
          end
        rescue NumberFormatException => e
        end
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
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      actual_size = Array.typed(::Java::Int).new(1) { 0 }
      result = OS._get_control_data(@text_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_cfstring_tag, 4, ptr, actual_size)
      if (!(result).equal?(OS.attr_no_err))
        return ""
      end
      range = CFRange.new
      range.attr_length = OS._cfstring_get_length(ptr[0])
      buffer = CharArray.new(range.attr_length)
      OS._cfstring_get_characters(ptr[0], range, buffer)
      OS._cfrelease(ptr[0])
      return String.new(buffer)
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
      return @text_limit
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def get_visible_region(control, clip_children)
      if ((control).equal?(@text_handle))
        if (!clip_children)
          return super(control, clip_children)
        end
        if ((@text_visible_rgn).equal?(0))
          @text_visible_rgn = OS._new_rgn
          calculate_visible_region(control, @text_visible_rgn, clip_children)
        end
        result = OS._new_rgn
        OS._copy_rgn(@text_visible_rgn, result)
        return result
      end
      if ((control).equal?(@button_handle))
        if (!clip_children)
          return super(control, clip_children)
        end
        if ((@button_visible_rgn).equal?(0))
          @button_visible_rgn = OS._new_rgn
          calculate_visible_region(control, @button_visible_rgn, clip_children)
        end
        result = OS._new_rgn
        OS._copy_rgn(@button_visible_rgn, result)
        return result
      end
      return super(control, clip_children)
    end
    
    typesig { [] }
    def hook_events
      super
      control_proc = self.attr_display.attr_control_proc
      mask = Array.typed(::Java::Int).new([OS.attr_k_event_class_control, OS.attr_k_event_control_draw, OS.attr_k_event_class_control, OS.attr_k_event_control_set_focus_part, OS.attr_k_event_class_control, OS.attr_k_event_control_track, OS.attr_k_event_class_control, OS.attr_k_event_control_get_click_activation, ])
      control_target = OS._get_control_event_target(@text_handle)
      OS._install_event_handler(control_target, control_proc, mask.attr_length / 2, mask, self.attr_handle, nil)
      control_target = OS._get_control_event_target(@button_handle)
      OS._install_event_handler(control_target, control_proc, mask.attr_length / 2, mask, self.attr_handle, nil)
    end
    
    typesig { [] }
    def inset
      return self.attr_display.attr_edit_text_inset
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_accessible_get_named_attribute(next_handler, the_event, user_data)
      code = OS.attr_event_not_handled_err
      string_ref = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_name, OS.attr_type_cfstring_ref, nil, 4, nil, string_ref)
      length_ = 0
      if (!(string_ref[0]).equal?(0))
        length_ = OS._cfstring_get_length(string_ref[0])
      end
      buffer = CharArray.new(length_)
      range = CFRange.new
      range.attr_length = length_
      OS._cfstring_get_characters(string_ref[0], range, buffer)
      attribute_name = String.new(buffer)
      if ((attribute_name == OS.attr_k_axrole_attribute) || (attribute_name == OS.attr_k_axrole_description_attribute))
        role_text = OS.attr_k_axgroup_role
        buffer = CharArray.new(role_text.length)
        role_text.get_chars(0, buffer.attr_length, buffer, 0)
        string_ref[0] = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
        if (!(string_ref[0]).equal?(0))
          if ((attribute_name == OS.attr_k_axrole_attribute))
            OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, string_ref)
          else
            # kAXRoleDescriptionAttribute
            string_ref2 = OS._hicopy_accessibility_role_description(string_ref[0], 0)
            OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, Array.typed(::Java::Int).new([string_ref2]))
            OS._cfrelease(string_ref2)
          end
          OS._cfrelease(string_ref[0])
          code = OS.attr_no_err
        end
      end
      if (!(self.attr_accessible).nil?)
        code = self.attr_accessible.internal_k_event_accessible_get_named_attribute(next_handler, the_event, code)
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_set_focus_part(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        part = Array.typed(::Java::Short).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_control_part, OS.attr_type_control_part_code, nil, 2, nil, part)
        if ((part[0]).equal?(OS.attr_k_control_focus_no_part))
          parse_fail = Array.typed(::Java::Boolean).new(1) { false }
          value = get_selection_text(parse_fail)
          if (parse_fail[0])
            value = OS._get_control32bit_value(@button_handle)
            set_selection(value, false, true, false)
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_unicode_key_pressed(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      keyboard_event = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_text_input_send_keyboard_event, OS.attr_type_event_ref, nil, keyboard_event.attr_length * 4, nil, keyboard_event)
      key_code = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(keyboard_event[0], OS.attr_k_event_param_key_code, OS.attr_type_uint32, nil, key_code.attr_length * 4, nil, key_code)
      modifiers = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(keyboard_event[0], OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, 4, nil, modifiers)
      if ((modifiers[0]).equal?(OS.attr_cmd_key))
        case (key_code[0])
        when 7
          # X
          cut
          return OS.attr_no_err
        when 8
          # C
          copy
          return OS.attr_no_err
        when 9
          # V
          paste
          return OS.attr_no_err
        end
      end
      delta = 0
      case (key_code[0])
      # KP Enter
      when 76, 36
        # Return
        post_event(SWT::DefaultSelection)
        return OS.attr_no_err
      when 116
        # Page Up
        delta = @page_increment
      when 121
        # Page Down
        delta = -@page_increment
      when 125
        # Down
        delta = -@increment
      when 126
        # Up
        delta = @increment
      end
      if (!(delta).equal?(0))
        parse_fail = Array.typed(::Java::Boolean).new(1) { false }
        value = get_selection_text(parse_fail)
        if (parse_fail[0])
          value = OS._get_control32bit_value(@button_handle)
        end
        new_value = value + delta
        max_ = OS._get_control32bit_maximum(@button_handle)
        min_ = OS._get_control32bit_minimum(@button_handle)
        if (!((self.attr_style & SWT::WRAP)).equal?(0))
          if (new_value > max_)
            new_value = min_
          end
          if (new_value < min_)
            new_value = max_
          end
        end
        new_value = Math.min(Math.max(min_, new_value), max_)
        if (!(value).equal?(new_value))
          set_selection(new_value, true, true, true)
        end
        return OS.attr_no_err
      else
        result = OS._call_next_event_handler(next_handler, the_event)
        parse_fail = Array.typed(::Java::Boolean).new(1) { false }
        value = get_selection_text(parse_fail)
        if (!parse_fail[0])
          pos = OS._get_control32bit_value(@button_handle)
          if (!(pos).equal?(value))
            set_selection(value, true, false, true)
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_text_input_update_active_input_area(next_handler, the_event, user_data)
      length_ = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_text_input_send_text, OS.attr_type_unicode_text, nil, 0, length_, nil)
      fixed_length = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_text_input_send_fix_len, OS.attr_type_long_integer, nil, 4, nil, fixed_length)
      if ((fixed_length[0]).equal?(-1) || (fixed_length[0]).equal?(length_[0]))
        post_event(SWT::Modify)
      end
      return OS.attr_event_not_handled_err
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
      text = get_clipboard_text
      selection = Array.typed(::Java::Short).new(2) { 0 }
      if (!(OS._get_control_data(@text_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_selection_tag, 4, selection, nil)).equal?(OS.attr_no_err))
        return
      end
      set_text(text, selection[0], selection[1], true)
    end
    
    typesig { [] }
    def poll_track_event
      return true
    end
    
    typesig { [] }
    def redraw
      check_widget
      super
      redraw_widget(@text_handle, false)
      redraw_widget(@button_handle, false)
    end
    
    typesig { [] }
    def register
      super
      self.attr_display.add_widget(@text_handle, self)
      self.attr_display.add_widget(@button_handle, self)
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
    
    typesig { [::Java::Int] }
    def reset_visible_region(control)
      if (!(@text_visible_rgn).equal?(0))
        OS._dispose_rgn(@text_visible_rgn)
        @text_visible_rgn = 0
      end
      if (!(@button_visible_rgn).equal?(0))
        OS._dispose_rgn(@button_visible_rgn)
        @button_visible_rgn = 0
      end
      super(control)
    end
    
    typesig { [] }
    def resize_client_area
      out_metric = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_theme_metric(OS.attr_k_theme_metric_little_arrows_width, out_metric)
      button_width = out_metric[0] + self.attr_gap
      OS._get_theme_metric(OS.attr_k_theme_metric_little_arrows_height, out_metric)
      button_height = out_metric[0]
      rect = Rect.new
      OS._get_control_bounds(self.attr_handle, rect)
      inset_ = inset
      width = Math.max(0, rect.attr_right - rect.attr_left - inset_.attr_left - inset_.attr_right - button_width)
      height = Math.max(0, rect.attr_bottom - rect.attr_top - inset_.attr_top - inset_.attr_bottom)
      button_height = Math.min(button_height, rect.attr_bottom - rect.attr_top)
      set_bounds(@text_handle, inset_.attr_left, inset_.attr_top, width, height, true, true, false)
      set_bounds(@button_handle, inset_.attr_left + inset_.attr_right + width + self.attr_gap, inset_.attr_top + (height - button_height) / 2, button_width, button_height, true, true, false)
    end
    
    typesig { [::Java::Int, Event] }
    def send_key_event(type, event)
      if (!super(type, event))
        return false
      end
      if (!(type).equal?(SWT::KeyDown))
        return true
      end
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return true
      end
      if ((event.attr_character).equal?(0))
        return true
      end
      if (!((event.attr_state_mask & SWT::COMMAND)).equal?(0))
        return true
      end
      # if (!hooks (SWT.Verify) && !filters (SWT.Verify)) return true;
      old_text = ""
      new_text = ""
      actual_size = Array.typed(::Java::Int).new(1) { 0 }
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      char_count = 0
      if ((OS._get_control_data(@text_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_cfstring_tag, 4, ptr, actual_size)).equal?(OS.attr_no_err))
        char_count = OS._cfstring_get_length(ptr[0])
        OS._cfrelease(ptr[0])
      end
      selection = Array.typed(::Java::Short).new(2) { 0 }
      OS._get_control_data(@text_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_selection_tag, 4, selection, nil)
      start = selection[0]
      end_ = selection[1]
      case (event.attr_character)
      when SWT::BS
        if ((start).equal?(end_))
          if ((start).equal?(0))
            return true
          end
          start = Math.max(0, start - 1)
        end
      when SWT::DEL
        if ((start).equal?(end_))
          if ((start).equal?(char_count))
            return true
          end
          end_ = Math.min(end_ + 1, char_count)
        end
      when SWT::CR
        return true
      else
        if (!(event.attr_character).equal?(Character.new(?\t.ord)) && event.attr_character < 0x20)
          return true
        end
        old_text = RJava.cast_to_string(String.new(Array.typed(::Java::Char).new([event.attr_character])))
      end
      new_text = RJava.cast_to_string(verify_text(old_text, start, end_, event))
      if ((new_text).nil?)
        return false
      end
      if (char_count - (end_ - start) + new_text.length > @text_limit)
        return false
      end
      if (!(new_text).equal?(old_text))
        set_text(new_text, start, end_, false)
        start += new_text.length
        selection = Array.typed(::Java::Short).new([RJava.cast_to_short(start), RJava.cast_to_short(start)])
        OS._set_control_data(@text_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_selection_tag, 4, selection)
      end
      # Post the modify event so that the character will be inserted
      # into the widget when the modify event is delivered.  Normally,
      # modify events are sent but it is safe to post the event here
      # because this method is called from the event loop.
      post_event(SWT::Modify)
      return (new_text).equal?(old_text)
    end
    
    typesig { [Array.typed(::Java::Float)] }
    def set_background(color)
      super(color)
      set_background(@text_handle, color)
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
      pos = OS._get_control32bit_value(@button_handle)
      set_selection(pos, false, true, false)
    end
    
    typesig { [Font] }
    def set_font_style(font)
      super(font)
      set_font_style(@text_handle, font)
    end
    
    typesig { [Array.typed(::Java::Float)] }
    def set_foreground(color)
      super(color)
      set_foreground(@text_handle, color)
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
      @increment = value
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
      min_ = OS._get_control32bit_minimum(@button_handle)
      if (value <= min_)
        return
      end
      pos = OS._get_control32bit_value(@button_handle)
      OS._set_control32bit_maximum(@button_handle, value)
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
      max_ = OS._get_control32bit_maximum(@button_handle)
      if (value >= max_)
        return
      end
      pos = OS._get_control32bit_value(@button_handle)
      OS._set_control32bit_minimum(@button_handle, value)
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
      min_ = OS._get_control32bit_minimum(@button_handle)
      max_ = OS._get_control32bit_maximum(@button_handle)
      value = Math.min(Math.max(min_, value), max_)
      set_selection(value, true, true, false)
    end
    
    typesig { [::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def set_selection(value, set_pos, set_text_, notify)
      if (set_pos)
        OS._set_control32bit_value(@button_handle, value)
      end
      if (set_text_)
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
          actual_size = Array.typed(::Java::Int).new(1) { 0 }
          ptr = Array.typed(::Java::Int).new(1) { 0 }
          length_ = 0
          if ((OS._get_control_data(@text_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_cfstring_tag, 4, ptr, actual_size)).equal?(OS.attr_no_err))
            length_ = OS._cfstring_get_length(ptr[0])
            OS._cfrelease(ptr[0])
          end
          string = RJava.cast_to_string(verify_text(string, 0, length_, nil))
          if ((string).nil?)
            return
          end
        end
        buffer = CharArray.new(string.length)
        string.get_chars(0, buffer.attr_length, buffer, 0)
        ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
        if ((ptr).equal?(0))
          error(SWT::ERROR_CANNOT_SET_TEXT)
        end
        OS._set_control_data(@text_handle, OS.attr_k_control_entire_control, OS.attr_k_control_edit_text_cfstring_tag, 4, Array.typed(::Java::Int).new([ptr]))
        OS._cfrelease(ptr)
        selection = Array.typed(::Java::Short).new([0, RJava.cast_to_short(string.length)])
        OS._set_control_data(@text_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_selection_tag, 4, selection)
        send_event(SWT::Modify)
      end
      if (notify)
        post_event(SWT::Selection)
      end
    end
    
    typesig { [String, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def set_text(string, start, end_, notify)
      if (notify)
        if (hooks(SWT::Verify) || filters(SWT::Verify))
          string = RJava.cast_to_string(verify_text(string, start, end_, nil))
          if ((string).nil?)
            return nil
          end
        end
      end
      actual_size = Array.typed(::Java::Int).new(1) { 0 }
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      if (!(OS._get_control_data(@text_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_cfstring_tag, 4, ptr, actual_size)).equal?(OS.attr_no_err))
        return nil
      end
      char_count = OS._cfstring_get_length(ptr[0])
      length_ = string.length
      if (!(@text_limit).equal?(LIMIT))
        if (char_count - (end_ - start) + length_ > @text_limit)
          length_ = @text_limit - char_count + (end_ - start)
        end
      end
      text = CharArray.new(char_count - (end_ - start) + length_)
      range = CFRange.new
      range.attr_location = 0
      range.attr_length = start
      buffer = CharArray.new(range.attr_length)
      OS._cfstring_get_characters(ptr[0], range, buffer)
      System.arraycopy(buffer, 0, text, 0, range.attr_length)
      string.get_chars(0, length_, text, start)
      range.attr_location = end_
      range.attr_length = char_count - end_
      buffer = CharArray.new(range.attr_length)
      OS._cfstring_get_characters(ptr[0], range, buffer)
      System.arraycopy(buffer, 0, text, start + length_, range.attr_length)
      # Copying the return value to buffer
      range.attr_location = start
      range.attr_length = end_ - start
      buffer = CharArray.new(range.attr_length)
      OS._cfstring_get_characters(ptr[0], range, buffer)
      OS._cfrelease(ptr[0])
      ptr[0] = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, text, text.attr_length)
      if ((ptr[0]).equal?(0))
        error(SWT::ERROR_CANNOT_SET_TEXT)
      end
      OS._set_control_data(@text_handle, OS.attr_k_control_entire_control, OS.attr_k_control_edit_text_cfstring_tag, 4, ptr)
      OS._cfrelease(ptr[0])
      if (notify)
        send_event(SWT::Modify)
      end
      return buffer
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
      @text_limit = limit
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
      @increment = increment
      @page_increment = page_increment
      @digits = digits
      OS._set_control32bit_maximum(@button_handle, maximum)
      OS._set_control32bit_minimum(@button_handle, minimum)
      set_selection(selection, true, true, false)
    end
    
    typesig { [] }
    def set_zorder
      super
      if (!(@text_handle).equal?(0))
        OS._hiview_add_subview(self.attr_handle, @text_handle)
      end
      if (!(@button_handle).equal?(0))
        OS._hiview_add_subview(self.attr_handle, @button_handle)
      end
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
        minimum = OS._get_control32bit_minimum(@button_handle)
        if (minimum < 0 && (string.char_at(0)).equal?(Character.new(?-.ord)))
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
      # It is possible (but unlikely), that application
      # code could have disposed the widget in the verify
      # event.  If this happens, answer null to cancel
      # the operation.
      send_event(SWT::Verify, event)
      if (!event.attr_doit || is_disposed)
        return nil
      end
      return event.attr_text
    end
    
    private
    alias_method :initialize__spinner, :initialize
  end
  
end
