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
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
    
    attr_accessor :text_view
    alias_method :attr_text_view, :text_view
    undef_method :text_view
    alias_method :attr_text_view=, :text_view=
    undef_method :text_view=
    
    attr_accessor :text_formatter
    alias_method :attr_text_formatter, :text_formatter
    undef_method :text_formatter
    alias_method :attr_text_formatter=, :text_formatter=
    undef_method :text_formatter=
    
    attr_accessor :button_view
    alias_method :attr_button_view, :button_view
    undef_method :button_view
    alias_method :attr_button_view=, :button_view=
    undef_method :button_view=
    
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
        defined?(@@gap) ? @@gap : @@gap= 0
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
      @text_view = nil
      @text_formatter = nil
      @button_view = nil
      @page_increment = 0
      @digits = 0
      @text_limit = 0
      super(parent, check_style(style))
      @page_increment = 10
      @digits = 0
      @text_limit = LIMIT
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def accepts_first_responder(id, sel)
      if ((id).equal?(self.attr_view.attr_id))
        return false
      end
      return super(id, sel)
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
      # double
      width = 0
      height = 0
      string = Double.to_s(@button_view.max_value)
      font_ = Font.cocoa_new(self.attr_display, @text_view.font)
      str = self.attr_parent.create_string(string, font_, nil, 0, true, false)
      size_ = str.size
      str.release
      # 64
      width = (size_.attr_width).to_f
      # 64
      height = (size_.attr_height).to_f
      frame_rect = @text_view.frame
      cell_ = NSCell.new(@text_view.cell)
      cell_rect = cell_.drawing_rect_for_bounds(frame_rect)
      width += frame_rect.attr_width - cell_rect.attr_width
      height += frame_rect.attr_height - cell_rect.attr_height
      width += self.attr_gap
      size_ = @button_view.cell.cell_size
      # 64
      width += RJava.cast_to_int(size_.attr_width)
      height = Math.max(height, size_.attr_height)
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      trim = compute_trim(0, 0, RJava.cast_to_int(Math.ceil(width)), RJava.cast_to_int(Math.ceil(height)))
      return Point.new(trim.attr_width, trim.attr_height)
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
      field_editor = @text_view.current_editor
      if (!(field_editor).nil?)
        field_editor.copy(nil)
      else
        # TODO
      end
    end
    
    typesig { [] }
    def create_handle
      widget = SWTView.new.alloc
      widget.init
      # widget.setDrawsBackground(false);
      button_widget = SWTStepper.new.alloc
      button_widget.init
      button_widget.set_value_wraps(!((self.attr_style & SWT::WRAP)).equal?(0))
      button_widget.set_target(button_widget)
      button_widget.set_action(OS.attr_sel_send_selection)
      button_widget.set_max_value(100)
      text_widget = SWTTextField.new.alloc
      text_widget.init
      # textWidget.setTarget(widget);
      text_widget.set_editable(((self.attr_style & SWT::READ_ONLY)).equal?(0))
      @text_formatter = NSNumberFormatter.new.alloc
      @text_formatter.init
      widget.add_subview(text_widget)
      widget.add_subview(button_widget)
      @button_view = button_widget
      @text_view = text_widget
      self.attr_view = widget
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
      field_editor = @text_view.current_editor
      if (!(field_editor).nil?)
        field_editor.cut(nil)
      else
        # TODO
      end
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      super(enabled)
      @button_view.set_enabled(enabled)
      @text_view.set_enabled(enabled)
    end
    
    typesig { [] }
    def default_nsfont
      return self.attr_display.attr_text_field_font
    end
    
    typesig { [] }
    def deregister
      super
      if (!(@text_view).nil?)
        self.attr_display.remove_widget(@text_view)
        self.attr_display.remove_widget(@text_view.cell)
      end
      if (!(@button_view).nil?)
        self.attr_display.remove_widget(@button_view)
        self.attr_display.remove_widget(@button_view.cell)
      end
    end
    
    typesig { [] }
    def focus_view
      return @text_view
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
      return RJava.cast_to_int(@button_view.increment)
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
      return RJava.cast_to_int(@button_view.max_value)
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
      return RJava.cast_to_int(@button_view.min_value)
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
      return RJava.cast_to_int((@button_view).double_value)
    end
    
    typesig { [Array.typed(::Java::Boolean)] }
    def get_selection_text(parse_fail)
      string = @text_view.string_value.get_string
      begin
        value = 0
        if (@digits > 0)
          decimal_separator_ = @text_formatter.decimal_separator.get_string
          index = string.index_of(decimal_separator_)
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
        max_ = get_maximum
        min = get_minimum
        if (min <= value && value <= max_)
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
      str = NSTextFieldCell.new(@text_view.cell).title
      return str.get_string
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
    
    typesig { [::Java::Int] }
    # long
    def is_event_view(id)
      return true
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
      field_editor = @text_view.current_editor
      if (!(field_editor).nil?)
        field_editor.paste(nil)
      else
        # TODO
      end
    end
    
    typesig { [] }
    def register
      super
      if (!(@text_view).nil?)
        self.attr_display.add_widget(@text_view, self)
        self.attr_display.add_widget(@text_view.cell, self)
      end
      if (!(@button_view).nil?)
        self.attr_display.add_widget(@button_view, self)
        self.attr_display.add_widget(@button_view.cell, self)
      end
    end
    
    typesig { [] }
    def release_handle
      super
      if (!(@text_formatter).nil?)
        @text_formatter.release
      end
      if (!(@button_view).nil?)
        @button_view.release
      end
      if (!(@text_view).nil?)
        @text_view.release
      end
      @text_formatter = nil
      @button_view = nil
      @text_view = nil
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@text_view).nil?)
        @text_view.abort_editing
      end
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
    
    typesig { [] }
    def resized
      super
      @button_view.size_to_fit
      text_size = @text_view.cell.cell_size
      button_frame = @button_view.bounds
      frame_ = self.attr_view.frame
      button_frame.attr_x = frame_.attr_width - button_frame.attr_width
      button_frame.attr_y = (frame_.attr_height - button_frame.attr_height) / 2
      text_height = RJava.cast_to_int(Math.min(text_size.attr_height, frame_.attr_height))
      frame_.attr_x = 0
      frame_.attr_y = (frame_.attr_height - text_height) / 2
      frame_.attr_width -= button_frame.attr_width + self.attr_gap
      frame_.attr_height = text_height
      @text_view.set_frame(frame_)
      @button_view.set_frame(button_frame)
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
      delta = 0
      key_code_ = ns_event.key_code
      case (key_code_)
      # KP Enter
      # Page Up
      # Page Down
      # Down arrow
      when 76, 36
        # Return
        post_event(SWT::DefaultSelection)
        return true
      when 116
        delta = @page_increment
      when 121
        delta = -@page_increment
      when 125
        delta = -get_increment
      when 126
        delta = get_increment
      end
      # Up arrow
      if (!(delta).equal?(0))
        parse_fail = Array.typed(::Java::Boolean).new(1) { false }
        value = get_selection_text(parse_fail)
        if (parse_fail[0])
          value = RJava.cast_to_int(@button_view.double_value)
        end
        new_value = value + delta
        max_ = RJava.cast_to_int(@button_view.max_value)
        min_ = RJava.cast_to_int(@button_view.min_value)
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
        # Prevent the arrow or page up/down from being handled by the text field.
        result = false
      else
        parse_fail = Array.typed(::Java::Boolean).new(1) { false }
        value = get_selection_text(parse_fail)
        if (!parse_fail[0])
          pos = RJava.cast_to_int(@button_view.double_value)
          if (!(pos).equal?(value))
            set_selection(value, true, false, true)
          end
        end
      end
      return result
    end
    
    typesig { [] }
    def send_selection
      set_selection(get_selection, false, true, true)
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
          ns_color = NSColor.text_background_color
        end
      end
      (@text_view).set_background_color(ns_color)
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
      pos = RJava.cast_to_int(@button_view.double_value)
      set_selection(pos, false, true, false)
    end
    
    typesig { [NSFont] }
    def set_font(font_)
      @text_view.set_font(font_)
    end
    
    typesig { [Array.typed(::Java::Float)] }
    # double
    def set_foreground(color)
      ns_color = nil
      if ((color).nil?)
        ns_color = NSColor.text_color
      else
        ns_color = NSColor.color_with_device_red(color[0], color[1], color[2], 1)
      end
      (@text_view).set_text_color(ns_color)
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
      @button_view.set_increment(value)
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
      min_ = get_minimum
      if (value <= min_)
        return
      end
      pos = get_selection
      @button_view.set_max_value(value)
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
      max_ = get_maximum
      if (value >= max_)
        return
      end
      pos = get_selection
      @button_view.set_min_value(value)
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
      min_ = get_minimum
      max_ = get_maximum
      value = Math.min(Math.max(min_, value), max_)
      set_selection(value, true, true, false)
    end
    
    typesig { [::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def set_selection(value, set_pos, set_text, notify)
      if (set_pos)
        (@button_view).set_double_value(value)
      end
      if (set_text)
        string = String.value_of(value)
        if (@digits > 0)
          decimal_separator_ = @text_formatter.decimal_separator.get_string
          index = string.length - @digits
          buffer = StringBuffer.new
          if (index > 0)
            buffer.append(string.substring(0, index))
            buffer.append(decimal_separator_)
            buffer.append(string.substring(index))
          else
            buffer.append("0")
            buffer.append(decimal_separator_)
            while (((index += 1) - 1) < 0)
              buffer.append("0")
            end
            buffer.append(string)
          end
          string = RJava.cast_to_string(buffer.to_s)
        end
        cell_ = NSCell.new(@text_view.cell)
        if (hooks(SWT::Verify) || filters(SWT::Verify))
          # 64
          length_ = RJava.cast_to_int(cell_.title.length)
          string = RJava.cast_to_string(verify_text(string, 0, length_, nil))
          if ((string).nil?)
            return
          end
        end
        @text_view.set_string_value(NSString.string_with(string))
        selection = NSRange.new
        selection.attr_location = 0
        selection.attr_length = string.length
        field_editor = @text_view.current_editor
        if (!(field_editor).nil?)
          field_editor.set_selected_range(selection)
        end
        send_event(SWT::Modify)
      end
      if (notify)
        post_event(SWT::Selection)
      end
    end
    
    typesig { [] }
    def set_small_size
      @text_view.cell.set_control_size(OS::NSSmallControlSize)
      @button_view.cell.set_control_size(OS::NSSmallControlSize)
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
    def set_values(selection, minimum, maximum, digits, increment_, page_increment)
      check_widget
      if (maximum <= minimum)
        return
      end
      if (digits < 0)
        return
      end
      if (increment_ < 1)
        return
      end
      if (page_increment < 1)
        return
      end
      selection = Math.min(Math.max(minimum, selection), maximum)
      @page_increment = page_increment
      @digits = digits
      @button_view.set_increment(increment_)
      @button_view.set_max_value(maximum)
      @button_view.set_min_value(minimum)
      set_selection(selection, true, true, false)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def should_change_text_in_range_replacement_string(id, sel, affected_char_range, replacement_string)
      range = NSRange.new
      OS.memmove___org_eclipse_swt_widgets_spinner_1(range, affected_char_range, NSRange.attr_sizeof)
      result = call_super_boolean(id, sel, range, replacement_string)
      if (hooks(SWT::Verify))
        text = NSString.new(replacement_string).get_string
        current_event_ = self.attr_display.attr_application.current_event
        # long
        type_ = current_event_.type
        if (!(type_).equal?(OS::NSKeyDown) && !(type_).equal?(OS::NSKeyUp))
          current_event_ = nil
        end
        # 64
        # 64
        new_text = verify_text(text, RJava.cast_to_int(range.attr_location), RJava.cast_to_int((range.attr_location + range.attr_length)), current_event_)
        if ((new_text).nil?)
          return false
        end
        if (!(text).equal?(new_text))
          length_ = new_text.length
          field_editor = @text_view.current_editor
          if (!(field_editor).nil?)
            selected_range_ = field_editor.selected_range
            if (!(@text_limit).equal?(LIMIT))
              # long
              char_count = field_editor.string.length
              if (char_count - selected_range_.attr_length + length_ > @text_limit)
                # 64
                length_ = RJava.cast_to_int((@text_limit - char_count + selected_range_.attr_length))
              end
            end
            buffer = CharArray.new(length_)
            new_text.get_chars(0, buffer.attr_length, buffer, 0)
            nsstring = NSString.string_with_characters(buffer, buffer.attr_length)
            field_editor.replace_characters_in_range(field_editor.selected_range, nsstring)
            result = false
          end
        end
        if (!result)
          send_event(SWT::Modify)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def text_did_change(id, sel, a_notification)
      super(id, sel, a_notification)
      parse_fail = Array.typed(::Java::Boolean).new(1) { false }
      value = get_selection_text(parse_fail)
      if (!parse_fail[0])
        pos = RJava.cast_to_int(@button_view.double_value)
        if (!(value).equal?(pos))
          set_selection(value, true, false, true)
        end
      end
      post_event(SWT::Modify)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def text_view_will_change_selection_from_character_range_to_character_range(id, sel, a_text_view, old_selected_char_range, new_selected_char_range)
      # allow the selection change to proceed
      result = NSRange.new
      OS.memmove___org_eclipse_swt_widgets_spinner_3(result, new_selected_char_range, NSRange.attr_sizeof)
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def text_did_end_editing(id, sel, a_notification)
      parse_fail = Array.typed(::Java::Boolean).new(1) { false }
      value = get_selection_text(parse_fail)
      if (parse_fail[0])
        value = RJava.cast_to_int(@button_view.double_value)
        set_selection(value, false, true, false)
      end
      super(id, sel, a_notification)
    end
    
    typesig { [::Java::Boolean] }
    def update_cursor_rects(enabled)
      super(enabled)
      update_cursor_rects(enabled, @text_view)
      update_cursor_rects(enabled, @button_view)
    end
    
    typesig { [String, ::Java::Int, ::Java::Int, NSEvent] }
    def verify_text(string_, start, end_, key_event)
      event = Event.new
      if (!(key_event).nil?)
        set_key_state(event, SWT::MouseDown, key_event)
      end
      event.attr_text = string_
      event.attr_start = start
      event.attr_end = end_
      index = 0
      if (@digits > 0)
        decimal_separator_ = "." # getDecimalSeparator ();
        index = string_.index_of(decimal_separator_)
        if (!(index).equal?(-1))
          string_ = RJava.cast_to_string(string_.substring(0, index) + string_.substring(index + 1))
        end
        index = 0
      end
      while (index < string_.length)
        if (!Character.is_digit(string_.char_at(index)))
          break
        end
        index += 1
      end
      event.attr_doit = (index).equal?(string_.length)
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
