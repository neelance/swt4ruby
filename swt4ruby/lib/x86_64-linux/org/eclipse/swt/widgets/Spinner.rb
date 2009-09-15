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
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
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
    
    class_module.module_eval {
      const_set_lazy(:MIN_ARROW_WIDTH) { 6 }
      const_attr_reader  :MIN_ARROW_WIDTH
    }
    
    attr_accessor :last_event_time
    alias_method :attr_last_event_time, :last_event_time
    undef_method :last_event_time
    alias_method :attr_last_event_time=, :last_event_time=
    undef_method :last_event_time=
    
    # int
    attr_accessor :gdk_event_key
    alias_method :attr_gdk_event_key, :gdk_event_key
    undef_method :gdk_event_key
    alias_method :attr_gdk_event_key=, :gdk_event_key=
    undef_method :gdk_event_key=
    
    attr_accessor :fix_start
    alias_method :attr_fix_start, :fix_start
    undef_method :fix_start
    alias_method :attr_fix_start=, :fix_start=
    undef_method :fix_start=
    
    attr_accessor :fix_end
    alias_method :attr_fix_end, :fix_end
    undef_method :fix_end
    alias_method :attr_fix_end=, :fix_end=
    undef_method :fix_end=
    
    class_module.module_eval {
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
      @last_event_time = 0
      @gdk_event_key = 0
      @fix_start = 0
      @fix_end = 0
      super(parent, check_style(style))
      @last_event_time = 0
      @gdk_event_key = 0
      @fix_start = -1
      @fix_end = -1
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
      if (!(w_hint).equal?(SWT::DEFAULT) && w_hint < 0)
        w_hint = 0
      end
      if (!(h_hint).equal?(SWT::DEFAULT) && h_hint < 0)
        h_hint = 0
      end
      w = Array.typed(::Java::Int).new(1) { 0 }
      h = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_widget_realize(self.attr_handle)
      # int
      layout = OS.gtk_entry_get_layout(self.attr_handle)
      # int
      h_adjustment = OS.gtk_spin_button_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_spinner_1(adjustment, h_adjustment)
      digits = OS.gtk_spin_button_get_digits(self.attr_handle)
      i = 0
      while i < digits
        adjustment.attr_upper *= 10
        i += 1
      end
      string = String.value_of(RJava.cast_to_int(adjustment.attr_upper))
      if (digits > 0)
        buffer = StringBuffer.new
        buffer.append(string)
        buffer.append(get_decimal_separator)
        count = digits - string.length
        while (count >= 0)
          buffer.append("0")
          count -= 1
        end
        string = RJava.cast_to_string(buffer.to_s)
      end
      buffer1 = Converter.wcs_to_mbcs(nil, string, false)
      # int
      ptr = OS.pango_layout_get_text(layout)
      length_ = OS.strlen(ptr)
      buffer2 = Array.typed(::Java::Byte).new(length_) { 0 }
      OS.memmove___org_eclipse_swt_widgets_spinner_3(buffer2, ptr, length_)
      OS.pango_layout_set_text(layout, buffer1, buffer1.attr_length)
      OS.pango_layout_get_size(layout, w, h)
      OS.pango_layout_set_text(layout, buffer2, buffer2.attr_length)
      width = OS._pango_pixels(w[0])
      height = OS._pango_pixels(h[0])
      width = (w_hint).equal?(SWT::DEFAULT) ? width : w_hint
      height = (h_hint).equal?(SWT::DEFAULT) ? height : h_hint
      trim = compute_trim(0, 0, width, height)
      return Point.new(trim.attr_width, trim.attr_height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      xborder = 0
      yborder = 0
      # int
      style = OS.gtk_widget_get_style(self.attr_handle)
      if (!((self.attr_style & SWT::BORDER)).equal?(0))
        xborder += OS.gtk_style_get_xthickness(style)
        yborder += OS.gtk_style_get_ythickness(style)
      end
      property = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_widget_style_get(self.attr_handle, OS.attr_interior_focus, property, 0)
      if ((property[0]).equal?(0))
        OS.gtk_widget_style_get(self.attr_handle, OS.attr_focus_line_width, property, 0)
        xborder += property[0]
        yborder += property[0]
      end
      # int
      font_desc = OS.gtk_style_get_font_desc(style)
      font_size = OS.pango_font_description_get_size(font_desc)
      arrow_size = Math.max(OS._pango_pixels(font_size), MIN_ARROW_WIDTH)
      arrow_size = arrow_size - arrow_size % 2
      trim = super(x, y, width, height)
      trim.attr_x -= xborder
      trim.attr_y -= yborder
      trim.attr_width += 2 * xborder
      trim.attr_height += 2 * yborder
      trim.attr_width += arrow_size + (2 * OS.gtk_style_get_xthickness(style))
      inner_border = Display.get_entry_inner_border(self.attr_handle)
      trim.attr_x -= inner_border.attr_left
      trim.attr_y -= inner_border.attr_top
      trim.attr_width += inner_border.attr_left + inner_border.attr_right
      trim.attr_height += inner_border.attr_top + inner_border.attr_bottom
      return Rectangle.new(trim.attr_x, trim.attr_y, trim.attr_width, trim.attr_height)
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
      OS.gtk_editable_copy_clipboard(self.attr_handle)
    end
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE | MENU
      self.attr_fixed_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
      if ((self.attr_fixed_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_fixed_set_has_window(self.attr_fixed_handle, true)
      # int
      adjustment = OS.gtk_adjustment_new(0, 0, 100, 1, 10, 0)
      if ((adjustment).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      self.attr_handle = OS.gtk_spin_button_new(adjustment, 1, 0)
      if ((self.attr_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_container_add(self.attr_fixed_handle, self.attr_handle)
      OS.gtk_editable_set_editable(self.attr_handle, ((self.attr_style & SWT::READ_ONLY)).equal?(0))
      OS.gtk_entry_set_has_frame(self.attr_handle, !((self.attr_style & SWT::BORDER)).equal?(0))
      OS.gtk_spin_button_set_wrap(self.attr_handle, !((self.attr_style & SWT::WRAP)).equal?(0))
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
      OS.gtk_editable_cut_clipboard(self.attr_handle)
    end
    
    typesig { [] }
    def deregister
      super
      # int
      im_context_ = im_context
      if (!(im_context_).equal?(0))
        self.attr_display.remove_widget(im_context_)
      end
    end
    
    typesig { [] }
    # int
    def event_window
      return paint_window
    end
    
    typesig { [] }
    # int
    def enter_exit_handle
      return self.attr_fixed_handle
    end
    
    typesig { [::Java::Int, ::Java::Long] }
    # int
    def filter_key(keyval, event)
      time = OS.gdk_event_get_time(event)
      if (!(time).equal?(@last_event_time))
        @last_event_time = time
        # int
        im_context_ = im_context
        if (!(im_context_).equal?(0))
          return OS.gtk_im_context_filter_keypress(im_context_, event)
        end
      end
      @gdk_event_key = event
      return false
    end
    
    typesig { [] }
    def fix_im
      # The IM filter has to be called one time for each key press event.
      # When the IM is open the key events are duplicated. The first event
      # is filtered by SWT and the second event is filtered by GTK.  In some
      # cases the GTK handler does not run (the widget is destroyed, the
      # application code consumes the event, etc), for these cases the IM
      # filter has to be called by SWT.
      if (!(@gdk_event_key).equal?(0) && !(@gdk_event_key).equal?(-1))
        # int
        im_context_ = im_context
        if (!(im_context_).equal?(0))
          OS.gtk_im_context_filter_keypress(im_context_, @gdk_event_key)
          @gdk_event_key = -1
          return
        end
      end
      @gdk_event_key = 0
    end
    
    typesig { [] }
    def get_background_color
      return get_base_color
    end
    
    typesig { [] }
    def get_border_width
      check_widget
      # int
      style = OS.gtk_widget_get_style(self.attr_handle)
      if (!((self.attr_style & SWT::BORDER)).equal?(0))
        return OS.gtk_style_get_xthickness(style)
      end
      return 0
    end
    
    typesig { [] }
    def get_foreground_color
      return get_text_color
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
      # int
      h_adjustment = OS.gtk_spin_button_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_spinner_5(adjustment, h_adjustment)
      digits = OS.gtk_spin_button_get_digits(self.attr_handle)
      value = adjustment.attr_step_increment
      i = 0
      while i < digits
        value *= 10
        i += 1
      end
      return RJava.cast_to_int((value > 0 ? value + 0.5 : value - 0.5))
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
      h_adjustment = OS.gtk_spin_button_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_spinner_7(adjustment, h_adjustment)
      digits = OS.gtk_spin_button_get_digits(self.attr_handle)
      value = adjustment.attr_upper
      i = 0
      while i < digits
        value *= 10
        i += 1
      end
      return RJava.cast_to_int((value > 0 ? value + 0.5 : value - 0.5))
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
      h_adjustment = OS.gtk_spin_button_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_spinner_9(adjustment, h_adjustment)
      digits = OS.gtk_spin_button_get_digits(self.attr_handle)
      value = adjustment.attr_lower
      i = 0
      while i < digits
        value *= 10
        i += 1
      end
      return RJava.cast_to_int((value > 0 ? value + 0.5 : value - 0.5))
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
      # int
      h_adjustment = OS.gtk_spin_button_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_spinner_11(adjustment, h_adjustment)
      digits = OS.gtk_spin_button_get_digits(self.attr_handle)
      value = adjustment.attr_page_increment
      i = 0
      while i < digits
        value *= 10
        i += 1
      end
      return RJava.cast_to_int((value > 0 ? value + 0.5 : value - 0.5))
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
      # int
      h_adjustment = OS.gtk_spin_button_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_spinner_13(adjustment, h_adjustment)
      digits = OS.gtk_spin_button_get_digits(self.attr_handle)
      value = adjustment.attr_value
      i = 0
      while i < digits
        value *= 10
        i += 1
      end
      return RJava.cast_to_int((value > 0 ? value + 0.5 : value - 0.5))
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
      # int
      str = OS.gtk_entry_get_text(self.attr_handle)
      if ((str).equal?(0))
        return ""
      end
      length_ = OS.strlen(str)
      buffer = Array.typed(::Java::Byte).new(length_) { 0 }
      OS.memmove___org_eclipse_swt_widgets_spinner_15(buffer, str, length_)
      return String.new(Converter.mbcs_to_wcs(nil, buffer))
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
      limit = OS.gtk_entry_get_max_length(self.attr_handle)
      return (limit).equal?(0) ? 0xffff : limit
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
      return OS.gtk_spin_button_get_digits(self.attr_handle)
    end
    
    typesig { [] }
    def get_decimal_separator
      # int
      ptr = OS.localeconv_decimal_point
      length_ = OS.strlen(ptr)
      buffer = Array.typed(::Java::Byte).new(length_) { 0 }
      OS.memmove___org_eclipse_swt_widgets_spinner_17(buffer, ptr, length_)
      return String.new(Converter.mbcs_to_wcs(nil, buffer))
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def gtk_activate(widget)
      post_event___org_eclipse_swt_widgets_spinner_19(SWT::DefaultSelection)
      return 0
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def gtk_changed(widget)
      # int
      str = OS.gtk_entry_get_text(self.attr_handle)
      length_ = OS.strlen(str)
      if (length_ > 0)
        # int
        # int
        endptr = Array.typed(::Java::Long).new(1) { 0 }
        value = OS.g_strtod(str, endptr)
        if ((endptr[0]).equal?(str + length_))
          # int
          h_adjustment = OS.gtk_spin_button_get_adjustment(self.attr_handle)
          adjustment = GtkAdjustment.new
          OS.memmove___org_eclipse_swt_widgets_spinner_21(adjustment, h_adjustment)
          if (!(value).equal?(adjustment.attr_value) && adjustment.attr_lower <= value && value <= adjustment.attr_upper)
            OS.gtk_spin_button_update(self.attr_handle)
          end
        end
      end
      # Feature in GTK.  When the user types, GTK positions
      # the caret after sending the changed signal.  This
      # means that application code that attempts to position
      # the caret during a changed signal will fail.  The fix
      # is to post the modify event when the user is typing.
      key_press = false
      # int
      event_ptr = OS.gtk_get_current_event
      if (!(event_ptr).equal?(0))
        gdk_event = GdkEventKey.new
        OS.memmove___org_eclipse_swt_widgets_spinner_23(gdk_event, event_ptr, GdkEventKey.attr_sizeof)
        case (gdk_event.attr_type)
        when OS::GDK_KEY_PRESS
          key_press = true
        end
        OS.gdk_event_free(event_ptr)
      end
      if (key_press)
        post_event___org_eclipse_swt_widgets_spinner_25(SWT::Modify)
      else
        send_event___org_eclipse_swt_widgets_spinner_27(SWT::Modify)
      end
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_commit(im_context_, text)
      if ((text).equal?(0))
        return 0
      end
      if (!OS.gtk_editable_get_editable(self.attr_handle))
        return 0
      end
      length_ = OS.strlen(text)
      if ((length_).equal?(0))
        return 0
      end
      buffer = Array.typed(::Java::Byte).new(length_) { 0 }
      OS.memmove___org_eclipse_swt_widgets_spinner_29(buffer, text, length_)
      chars = Converter.mbcs_to_wcs(nil, buffer)
      new_chars = send_imkey_event(SWT::KeyDown, nil, chars)
      if ((new_chars).nil?)
        return 0
      end
      # Feature in GTK.  For a GtkEntry, during the insert-text signal,
      # GTK allows the programmer to change only the caret location,
      # not the selection.  If the programmer changes the selection,
      # the new selection is lost.  The fix is to detect a selection
      # change and set it after the insert-text signal has completed.
      @fix_start = @fix_end = -1
      OS.g_signal_handlers_block_matched(im_context_, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, COMMIT)
      id = OS.g_signal_lookup(OS.attr_commit, OS.gtk_im_context_get_type)
      mask = OS::G_SIGNAL_MATCH_DATA | OS::G_SIGNAL_MATCH_ID
      OS.g_signal_handlers_unblock_matched(im_context_, mask, id, 0, 0, 0, self.attr_handle)
      if ((new_chars).equal?(chars))
        OS.g_signal_emit_by_name(im_context_, OS.attr_commit, text)
      else
        buffer = Converter.wcs_to_mbcs(nil, new_chars, true)
        OS.g_signal_emit_by_name(im_context_, OS.attr_commit, buffer)
      end
      OS.g_signal_handlers_unblock_matched(im_context_, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, COMMIT)
      OS.g_signal_handlers_block_matched(im_context_, mask, id, 0, 0, 0, self.attr_handle)
      if (!(@fix_start).equal?(-1) && !(@fix_end).equal?(-1))
        OS.gtk_editable_set_position(self.attr_handle, @fix_start)
        OS.gtk_editable_select_region(self.attr_handle, @fix_start, @fix_end)
      end
      @fix_start = @fix_end = -1
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    def gtk_delete_text(widget, start_pos, end_pos)
      if (!hooks(SWT::Verify) && !filters(SWT::Verify))
        return 0
      end
      # 64
      # 64
      new_text = verify_text("", RJava.cast_to_int(start_pos), RJava.cast_to_int(end_pos))
      if ((new_text).nil?)
        OS.g_signal_stop_emission_by_name(self.attr_handle, OS.attr_delete_text)
      else
        if (new_text.length > 0)
          pos = Array.typed(::Java::Int).new(1) { 0 }
          # 64
          pos[0] = RJava.cast_to_int(end_pos)
          buffer = Converter.wcs_to_mbcs(nil, new_text, false)
          OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
          OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, INSERT_TEXT)
          OS.gtk_editable_insert_text(self.attr_handle, buffer, buffer.attr_length, pos)
          OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, INSERT_TEXT)
          OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
          OS.gtk_editable_set_position(self.attr_handle, pos[0])
        end
      end
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_event_after(widget, gdk_event)
      if (!(self.attr_cursor).nil?)
        set_cursor(self.attr_cursor.attr_handle)
      end
      return super(widget, gdk_event)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_focus_out_event(widget, event)
      fix_im
      return super(widget, event)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    # int
    def gtk_insert_text(widget, new_text, new_text_length, position)
      # if (!hooks (SWT.Verify) && !filters (SWT.Verify)) return 0;
      if ((new_text).equal?(0) || (new_text_length).equal?(0))
        return 0
      end
      # 64
      buffer = Array.typed(::Java::Byte).new(RJava.cast_to_int(new_text_length)) { 0 }
      OS.memmove___org_eclipse_swt_widgets_spinner_31(buffer, new_text, buffer.attr_length)
      old_text = String.new(Converter.mbcs_to_wcs(nil, buffer))
      pos = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove___org_eclipse_swt_widgets_spinner_33(pos, position, 4)
      if ((pos[0]).equal?(-1))
        # int
        ptr = OS.gtk_entry_get_text(self.attr_handle)
        # 64
        pos[0] = RJava.cast_to_int(OS.g_utf8_strlen(ptr, -1))
      end
      new_text_ = verify_text(old_text, pos[0], pos[0])
      if (!(new_text_).equal?(old_text))
        new_start = Array.typed(::Java::Int).new(1) { 0 }
        new_end = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_editable_get_selection_bounds(self.attr_handle, new_start, new_end)
        if (!(new_text_).nil?)
          if (!(new_start[0]).equal?(new_end[0]))
            OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, DELETE_TEXT)
            OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
            OS.gtk_editable_delete_selection(self.attr_handle)
            OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, DELETE_TEXT)
            OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
          end
          buffer3 = Converter.wcs_to_mbcs(nil, new_text_, false)
          OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, INSERT_TEXT)
          OS.gtk_editable_insert_text(self.attr_handle, buffer3, buffer3.attr_length, pos)
          OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, INSERT_TEXT)
          new_start[0] = new_end[0] = pos[0]
        end
        pos[0] = new_end[0]
        if (!(new_start[0]).equal?(new_end[0]))
          @fix_start = new_start[0]
          @fix_end = new_end[0]
        end
        OS.memmove___org_eclipse_swt_widgets_spinner_35(position, pos, 4)
        OS.g_signal_stop_emission_by_name(self.attr_handle, OS.attr_insert_text)
      end
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_key_press_event(widget, event)
      # int
      result = super(widget, event)
      if (!(result).equal?(0))
        fix_im
      end
      if ((@gdk_event_key).equal?(-1))
        result = 1
      end
      @gdk_event_key = 0
      return result
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_populate_popup(widget, menu)
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        OS.gtk_widget_set_direction(menu, OS::GTK_TEXT_DIR_RTL)
        OS.gtk_container_forall(menu, self.attr_display.attr_set_direction_proc, OS::GTK_TEXT_DIR_RTL)
      end
      return 0
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def gtk_value_changed(widget)
      post_event___org_eclipse_swt_widgets_spinner_37(SWT::Selection)
      return 0
    end
    
    typesig { [] }
    def hook_events
      super
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_changed, self.attr_display.attr_closures[CHANGED], true)
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_insert_text, self.attr_display.attr_closures[INSERT_TEXT], false)
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_delete_text, self.attr_display.attr_closures[DELETE_TEXT], false)
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_value_changed, self.attr_display.attr_closures[VALUE_CHANGED], false)
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_activate, self.attr_display.attr_closures[ACTIVATE], false)
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_populate_popup, self.attr_display.attr_closures[POPULATE_POPUP], false)
      # int
      im_context_ = im_context
      if (!(im_context_).equal?(0))
        OS.g_signal_connect_closure(im_context_, OS.attr_commit, self.attr_display.attr_closures[COMMIT], false)
        id = OS.g_signal_lookup(OS.attr_commit, OS.gtk_im_context_get_type)
        mask = OS::G_SIGNAL_MATCH_DATA | OS::G_SIGNAL_MATCH_ID
        OS.g_signal_handlers_block_matched(im_context_, mask, id, 0, 0, 0, self.attr_handle)
      end
    end
    
    typesig { [] }
    # int
    def im_context
      return OS._gtk_entry_im_context(self.attr_handle)
    end
    
    typesig { [] }
    # int
    def paint_window
      # int
      window = super
      # int
      children = OS.gdk_window_get_children(window)
      if (!(children).equal?(0))
        window = OS.g_list_data(children)
      end
      OS.g_list_free(children)
      return window
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
      OS.gtk_editable_paste_clipboard(self.attr_handle)
    end
    
    typesig { [] }
    def register
      super
      # int
      im_context_ = im_context
      if (!(im_context_).equal?(0))
        self.attr_display.add_widget(im_context_, self)
      end
    end
    
    typesig { [] }
    def release_widget
      super
      fix_im
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
    
    typesig { [GdkColor] }
    def set_background_color(color)
      super(color)
      OS.gtk_widget_modify_base(self.attr_handle, 0, color)
    end
    
    typesig { [::Java::Long] }
    # int
    def set_cursor(cursor)
      # int
      default_cursor = 0
      if ((cursor).equal?(0))
        default_cursor = OS.gdk_cursor_new(OS::GDK_XTERM)
      end
      super(!(cursor).equal?(0) ? cursor : default_cursor)
      if ((cursor).equal?(0))
        OS.gdk_cursor_destroy(default_cursor)
      end
    end
    
    typesig { [::Java::Long] }
    # int
    def set_font_description(font)
      super(font)
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
      # int
      h_adjustment = OS.gtk_spin_button_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_spinner_39(adjustment, h_adjustment)
      new_value = value
      digits = OS.gtk_spin_button_get_digits(self.attr_handle)
      i = 0
      while i < digits
        new_value /= 10
        i += 1
      end
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_spin_button_set_increments(self.attr_handle, new_value, adjustment.attr_page_increment)
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
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
      # int
      h_adjustment = OS.gtk_spin_button_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_spinner_41(adjustment, h_adjustment)
      new_value = value
      digits = OS.gtk_spin_button_get_digits(self.attr_handle)
      i = 0
      while i < digits
        new_value /= 10
        i += 1
      end
      if (new_value <= adjustment.attr_lower)
        return
      end
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_spin_button_set_range(self.attr_handle, adjustment.attr_lower, new_value)
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
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
      # int
      h_adjustment = OS.gtk_spin_button_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_spinner_43(adjustment, h_adjustment)
      new_value = value
      digits = OS.gtk_spin_button_get_digits(self.attr_handle)
      i = 0
      while i < digits
        new_value /= 10
        i += 1
      end
      if (new_value >= adjustment.attr_upper)
        return
      end
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_spin_button_set_range(self.attr_handle, new_value, adjustment.attr_upper)
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
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
      # int
      h_adjustment = OS.gtk_spin_button_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_spinner_45(adjustment, h_adjustment)
      new_value = value
      digits = OS.gtk_spin_button_get_digits(self.attr_handle)
      i = 0
      while i < digits
        new_value /= 10
        i += 1
      end
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_spin_button_set_increments(self.attr_handle, adjustment.attr_step_increment, new_value)
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
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
      new_value = value
      digits = OS.gtk_spin_button_get_digits(self.attr_handle)
      i = 0
      while i < digits
        new_value /= 10
        i += 1
      end
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_spin_button_set_value(self.attr_handle, new_value)
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
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
      OS.gtk_entry_set_max_length(self.attr_handle, limit)
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
      digits = OS.gtk_spin_button_get_digits(self.attr_handle)
      if ((value).equal?(digits))
        return
      end
      # int
      h_adjustment = OS.gtk_spin_button_get_adjustment(self.attr_handle)
      adjustment = GtkAdjustment.new
      OS.memmove___org_eclipse_swt_widgets_spinner_47(adjustment, h_adjustment)
      diff = Math.abs(value - digits)
      factor = 1
      i = 0
      while i < diff
        factor *= 10
        i += 1
      end
      if (digits > value)
        adjustment.attr_value *= factor
        adjustment.attr_upper *= factor
        adjustment.attr_lower *= factor
        adjustment.attr_step_increment *= factor
        adjustment.attr_page_increment *= factor
      else
        adjustment.attr_value /= factor
        adjustment.attr_upper /= factor
        adjustment.attr_lower /= factor
        adjustment.attr_step_increment /= factor
        adjustment.attr_page_increment /= factor
      end
      OS.memmove___org_eclipse_swt_widgets_spinner_49(h_adjustment, adjustment)
      OS.gtk_spin_button_set_digits(self.attr_handle, value)
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
      factor = 1
      i = 0
      while i < digits
        factor *= 10
        i += 1
      end
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
      OS.gtk_spin_button_set_range(self.attr_handle, minimum / factor, maximum / factor)
      OS.gtk_spin_button_set_increments(self.attr_handle, increment / factor, page_increment / factor)
      OS.gtk_spin_button_set_value(self.attr_handle, selection / factor)
      OS.gtk_spin_button_set_digits(self.attr_handle, digits)
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, VALUE_CHANGED)
    end
    
    typesig { [] }
    def check_subwindow
      return false
    end
    
    typesig { [GdkEventKey] }
    def translate_traversal(key_event)
      key = key_event.attr_keyval
      case (key)
      when OS::GDK_KP_Enter, OS::GDK_Return
        # int
        im_context_ = im_context
        if (!(im_context_).equal?(0))
          # int
          # int
          preedit_string = Array.typed(::Java::Long).new(1) { 0 }
          OS.gtk_im_context_get_preedit_string(im_context_, preedit_string, nil, nil)
          if (!(preedit_string[0]).equal?(0))
            length_ = OS.strlen(preedit_string[0])
            OS.g_free(preedit_string[0])
            if (!(length_).equal?(0))
              return false
            end
          end
        end
      end
      return super(key_event)
    end
    
    typesig { [String, ::Java::Int, ::Java::Int] }
    def verify_text(string, start, end_)
      if ((string.length).equal?(0) && (start).equal?(end_))
        return nil
      end
      event = Event.new
      event.attr_text = string
      event.attr_start = start
      event.attr_end = end_
      # int
      event_ptr = OS.gtk_get_current_event
      if (!(event_ptr).equal?(0))
        gdk_event = GdkEventKey.new
        OS.memmove___org_eclipse_swt_widgets_spinner_51(gdk_event, event_ptr, GdkEventKey.attr_sizeof)
        case (gdk_event.attr_type)
        when OS::GDK_KEY_PRESS
          set_key_state(event, gdk_event)
        end
        OS.gdk_event_free(event_ptr)
      end
      index = 0
      if (OS.gtk_spin_button_get_digits(self.attr_handle) > 0)
        decimal_separator = get_decimal_separator
        index = string.index_of(decimal_separator)
        if (!(index).equal?(-1))
          string = RJava.cast_to_string(string.substring(0, index) + string.substring(index + 1))
        end
        index = 0
      end
      if (string.length > 0)
        # int
        h_adjustment = OS.gtk_spin_button_get_adjustment(self.attr_handle)
        adjustment = GtkAdjustment.new
        OS.memmove___org_eclipse_swt_widgets_spinner_53(adjustment, h_adjustment)
        if (adjustment.attr_lower < 0 && (string.char_at(0)).equal?(Character.new(?-.ord)))
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
      send_event___org_eclipse_swt_widgets_spinner_55(SWT::Verify, event)
      if (!event.attr_doit || is_disposed)
        return nil
      end
      return event.attr_text
    end
    
    private
    alias_method :initialize__spinner, :initialize
  end
  
end
