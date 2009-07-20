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
  module ComboImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :ControlEditTextSelectionRec
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :MenuTrackingData
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CFRange
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
    }
  end
  
  # Instances of this class are controls that allow the user
  # to choose an item from a list of items, or optionally
  # enter a new value by typing it into an editable text
  # field. Often, <code>Combo</code>s are used in the same place
  # where a single selection <code>List</code> widget could
  # be used but space is limited. A <code>Combo</code> takes
  # less space than a <code>List</code> widget and shows
  # similar information.
  # <p>
  # Note: Since <code>Combo</code>s can contain both a list
  # and an editable text field, it is possible to confuse methods
  # which access one versus the other (compare for example,
  # <code>clearSelection()</code> and <code>deselectAll()</code>).
  # The API documentation is careful to indicate either "the
  # receiver's list" or the "the receiver's text field" to
  # distinguish between the two cases.
  # </p><p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not make sense to add children to it, or set a layout on it.
  # </p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>DROP_DOWN, READ_ONLY, SIMPLE</dd>
  # <dt><b>Events:</b></dt>
  # <dd>DefaultSelection, Modify, Selection, Verify</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles DROP_DOWN and SIMPLE may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see List
  # @see <a href="http://www.eclipse.org/swt/snippets/#combo">Combo snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Combo < ComboImports.const_get :Composite
    include_class_members ComboImports
    
    attr_accessor :menu_handle
    alias_method :attr_menu_handle, :menu_handle
    undef_method :menu_handle
    alias_method :attr_menu_handle=, :menu_handle=
    undef_method :menu_handle=
    
    attr_accessor :text_limit
    alias_method :attr_text_limit, :text_limit
    undef_method :text_limit
    alias_method :attr_text_limit=, :text_limit=
    undef_method :text_limit=
    
    attr_accessor :last_text
    alias_method :attr_last_text, :last_text
    undef_method :last_text
    alias_method :attr_last_text=, :last_text=
    undef_method :last_text=
    
    attr_accessor :selection
    alias_method :attr_selection, :selection
    undef_method :selection
    alias_method :attr_selection=, :selection=
    undef_method :selection=
    
    class_module.module_eval {
      # These values can be different on different platforms.
      # Therefore they are not initialized in the declaration
      # to stop the compiler from inlining.
      when_class_loaded do
        const_set :LIMIT, 0x7fffffff
      end
      
      const_set_lazy(:AX_ATTRIBUTES) { Array.typed(String).new([OS.attr_k_axvalue_attribute, OS.attr_k_axnumber_of_characters_attribute, OS.attr_k_axselected_text_attribute, OS.attr_k_axselected_text_range_attribute, OS.attr_k_axstring_for_range_parameterized_attribute, ]) }
      const_attr_reader  :AX_ATTRIBUTES
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
    # @see SWT#DROP_DOWN
    # @see SWT#READ_ONLY
    # @see SWT#SIMPLE
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @menu_handle = 0
      @text_limit = 0
      @last_text = nil
      @selection = nil
      super(parent, check_style(style))
      @text_limit = LIMIT
      @last_text = ""
    end
    
    typesig { [String] }
    # Adds the argument to the end of the receiver's list.
    # 
    # @param string the new item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #add(String,int)
    def add(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      buffer = CharArray.new(string.length)
      string.get_chars(0, buffer.attr_length, buffer, 0)
      ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      if ((ptr).equal?(0))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      result = 0
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        result = OS._append_menu_item_text_with_cfstring(@menu_handle, ptr, 0, 0, nil)
        # Feature in the Macintosh.  Setting text that starts with "-" makes the
        # menu item a separator.  The fix is to clear the separator attribute.
        if (string.starts_with("-"))
          OS._change_menu_item_attributes(@menu_handle, RJava.cast_to_short(OS._count_menu_items(@menu_handle)), 0, OS.attr_k_menu_item_attr_separator)
        end
      else
        result = OS._hicombo_box_append_text_item(self.attr_handle, ptr, nil)
      end
      OS._cfrelease(ptr)
      if (!(result).equal?(OS.attr_no_err))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
    end
    
    typesig { [String, ::Java::Int] }
    # Adds the argument to the receiver's list at the given
    # zero-relative index.
    # <p>
    # Note: To add an item at the end of the list, use the
    # result of calling <code>getItemCount()</code> as the
    # index or use <code>add(String)</code>.
    # </p>
    # 
    # @param string the new item
    # @param index the index for the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #add(String)
    def add(string, index)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      count = get_item_count
      if (0 > index || index > count)
        error(SWT::ERROR_INVALID_RANGE)
      end
      buffer = CharArray.new(string.length)
      string.get_chars(0, buffer.attr_length, buffer, 0)
      ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      if ((ptr).equal?(0))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      result = 0
      selection_index = -1
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        selection_index = OS._get_control_value(self.attr_handle) - 1
        result = OS._insert_menu_item_text_with_cfstring(@menu_handle, ptr, RJava.cast_to_short(index), 0, 0)
        # Feature in the Macintosh.  Setting text that starts with "-" makes the
        # menu item a separator.  The fix is to clear the separator attribute.
        if (string.starts_with("-"))
          OS._change_menu_item_attributes(@menu_handle, RJava.cast_to_short((index + 1)), 0, OS.attr_k_menu_item_attr_separator)
        end
      else
        result = OS._hicombo_box_insert_text_item_at_index(self.attr_handle, index, ptr)
      end
      OS._cfrelease(ptr)
      if (!(result).equal?(OS.attr_no_err))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      # When inserting an item into a READ_ONLY combo at or above the selected
      # index neither the selection index nor the text get updated. Fix is to
      # update the selection index to be sure the displayed item matches the
      # selected index.
      if (selection_index >= index)
        OS._set_control32bit_value(self.attr_handle, selection_index + 2)
      end
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
    # be notified when the user changes the receiver's selection, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is called when the user changes the combo's list selection.
    # <code>widgetDefaultSelected</code> is typically called when ENTER is pressed the combo's text area.
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
    # 
    # @since 3.1
    def add_verify_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Verify, typed_listener)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def call_focus_event_handler(next_handler, the_event)
      part = Array.typed(::Java::Short).new(1) { 0 }
      if (((self.attr_style & SWT::READ_ONLY)).equal?(0))
        OS._get_event_parameter(the_event, OS.attr_k_event_param_control_part, OS.attr_type_control_part_code, nil, 2, nil, part)
        if ((part[0]).equal?(OS.attr_k_control_focus_no_part))
          @selection = ControlEditTextSelectionRec.new
          OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_selection_tag, 4, @selection, nil)
        end
      end
      result = super(next_handler, the_event)
      if (((self.attr_style & SWT::READ_ONLY)).equal?(0))
        if (!(part[0]).equal?(OS.attr_k_control_focus_no_part) && !(@selection).nil?)
          OS._set_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_selection_tag, 4, @selection)
          @selection = nil
        end
      end
      return result
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        # Feature in Windows.  It is not possible to create
        # a combo box that has a border using Windows style
        # bits.  All combo boxes draw their own border and
        # do not use the standard Windows border styles.
        # Therefore, no matter what style bits are specified,
        # clear the BORDER bits so that the SWT style will
        # match the Windows widget.
        # 
        # The Windows behavior is currently implemented on
        # all platforms.
        style &= ~SWT::BORDER
        # Even though it is legal to create this widget
        # with scroll bars, they serve no useful purpose
        # because they do not automatically scroll the
        # widget's client area.  The fix is to clear
        # the SWT style.
        style &= ~(SWT::H_SCROLL | SWT::V_SCROLL)
        style = check_bits(style, SWT::DROP_DOWN, SWT::SIMPLE, 0, 0, 0, 0)
        if (!((style & SWT::SIMPLE)).equal?(0))
          return style & ~SWT::READ_ONLY
        end
        return style
      end
    }
    
    typesig { [] }
    def check_selection
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return
      end
      new_text = get_text
      if ((new_text == @last_text))
        return
      end
      if (hooks(SWT::Verify) || filters(SWT::Verify))
        set_text(@last_text, false)
        new_text = (verify_text(new_text, 0, @last_text.length, nil)).to_s
        if ((new_text).nil?)
          return
        end
        set_text(new_text, false)
      else
        @last_text = new_text
      end
      send_event(SWT::Modify)
      if (is_disposed)
        return
      end
      index = index_of(new_text)
      if (!(index).equal?(-1))
        post_event(SWT::Selection)
      end
      # Send value changed notification to accessible client.
      string = OS.attr_k_axfocused_window_changed_notification
      buffer = CharArray.new(string.length)
      string.get_chars(0, buffer.attr_length, buffer, 0)
      string_ref = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      OS._axnotification_hiobject_notify(string_ref, self.attr_handle, 0)
      OS._cfrelease(string_ref)
    end
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [] }
    # Sets the selection in the receiver's text field to an empty
    # selection starting just before the first character. If the
    # text field is editable, this has the effect of placing the
    # i-beam at the start of the text.
    # <p>
    # Note: To clear the selected items in the receiver's list,
    # use <code>deselectAll()</code>.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #deselectAll
    def clear_selection
      check_widget
      if (((self.attr_style & SWT::READ_ONLY)).equal?(0))
        selection = get_selection
        selection.attr_y = selection.attr_x
        set_selection(selection)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = 0
      height = 0
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        index = OS._get_control_value(self.attr_handle) - 1
        OS._copy_menu_item_text_as_cfstring(@menu_handle, RJava.cast_to_short((index + 1)), ptr)
      else
        OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_hicombo_box_edit_text_part), OS.attr_k_control_edit_text_cfstring_tag, 4, ptr, nil)
      end
      size = text_extent(ptr[0], 0)
      if (!(ptr[0]).equal?(0))
        OS._cfrelease(ptr[0])
      end
      width = Math.max(width, size.attr_x)
      height = Math.max(height, size.attr_y)
      count = 0
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        count = OS._count_menu_items(@menu_handle)
      else
        count = OS._hicombo_box_get_item_count(self.attr_handle)
      end
      i = 0
      while i < count
        result = 0
        if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
          result = OS._copy_menu_item_text_as_cfstring(@menu_handle, RJava.cast_to_short((i + 1)), ptr)
        else
          result = OS._hicombo_box_copy_text_item_at_index(self.attr_handle, i, ptr)
        end
        if ((result).equal?(OS.attr_no_err))
          size = text_extent(ptr[0], 0)
          width = Math.max(width, size.attr_x)
          OS._cfrelease(ptr[0])
        end
        ((i += 1) - 1)
      end
      metric = Array.typed(::Java::Int).new(1) { 0 }
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        OS._get_theme_metric(OS.attr_k_theme_metric_disclosure_button_width, metric)
        width += metric[0]
        # TODO
        width += 13
      else
        OS._get_theme_metric(OS.attr_k_theme_metric_combo_box_large_disclosure_width, metric)
        width += metric[0]
      end
      OS._get_theme_metric(OS.attr_k_theme_metric_edit_text_whitespace, metric)
      width += metric[0] * 2
      height += metric[0] * 2
      inset = get_inset
      width += inset.attr_left + inset.attr_right
      height += inset.attr_top + inset.attr_bottom
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      return Point.new(width, height)
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
    # 
    # @since 2.1
    def copy
      check_widget
      selection = get_selection
      if ((selection.attr_x).equal?(selection.attr_y))
        return
      end
      copy_to_clipboard(get_text(selection.attr_x, selection.attr_y))
    end
    
    typesig { [] }
    def create_handle
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        out_control = Array.typed(::Java::Int).new(1) { 0 }
        window = OS._get_control_owner(self.attr_parent.attr_handle)
        # From ControlDefinitions.h:
        # 
        # Passing in a menu ID of -12345 causes the popup not to try and get the menu from a
        # resource. Instead, you can build the menu and later stuff the MenuRef field in
        # the popup data information.
        OS._create_popup_button_control(window, nil, 0, RJava.cast_to_short(-12345), false, RJava.cast_to_short(0), RJava.cast_to_short(0), 0, out_control)
        if ((out_control[0]).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        self.attr_handle = out_control[0]
        menu_ref = Array.typed(::Java::Int).new(1) { 0 }
        OS._create_new_menu(RJava.cast_to_short(0), 0, menu_ref)
        if ((menu_ref[0]).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        @menu_handle = menu_ref[0]
        OS._set_control_popup_menu_handle(self.attr_handle, @menu_handle)
        OS._set_control32bit_maximum(self.attr_handle, 0x7fff)
      else
        out_control = Array.typed(::Java::Int).new(1) { 0 }
        rect = CGRect.new
        in_attributes = OS.attr_k_hicombo_box_auto_size_list_attribute
        # The following code is intentionally commented.
        # Auto completion does not allow the user to change
        # case of the text in a combo box.
        # 
        # inAttributes |= OS.kHIComboBoxAutoCompletionAttribute;
        OS._hicombo_box_create(rect, 0, nil, 0, in_attributes, out_control)
        if ((out_control[0]).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        self.attr_handle = out_control[0]
        OS._set_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_hicombo_box_edit_text_part), OS.attr_k_txndraw_caret_when_inactive_tag, 4, Array.typed(::Java::Byte).new([0]))
        OS._hiview_set_visible(self.attr_handle, true)
      end
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
    # 
    # @since 2.1
    def cut
      check_widget
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return
      end
      selection = get_selection
      if ((selection.attr_x).equal?(selection.attr_y))
        return
      end
      start = selection.attr_x
      end_ = selection.attr_y
      text = get_text
      left_text = text.substring(0, start)
      right_text = text.substring(end_, text.length)
      old_text = text.substring(start, end_)
      new_text = ""
      if (hooks(SWT::Verify) || filters(SWT::Verify))
        new_text = (verify_text(new_text, start, end_, nil)).to_s
        if ((new_text).nil?)
          return
        end
      end
      buffer = CharArray.new(old_text.length)
      old_text.get_chars(0, buffer.attr_length, buffer, 0)
      copy_to_clipboard(buffer)
      set_text(left_text + new_text + right_text, false)
      start += new_text.length
      set_selection(Point.new(start, start))
      send_event(SWT::Modify)
    end
    
    typesig { [] }
    def default_background
      return self.attr_display.get_system_color(SWT::COLOR_LIST_BACKGROUND)
    end
    
    typesig { [] }
    def default_foreground
      return self.attr_display.get_system_color(SWT::COLOR_LIST_FOREGROUND)
    end
    
    typesig { [::Java::Int] }
    # Deselects the item at the given zero-relative index in the receiver's
    # list.  If the item at the index was already deselected, it remains
    # deselected. Indices that are out of range are ignored.
    # 
    # @param index the index of the item to deselect
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def deselect(index)
      check_widget
      if ((index).equal?(-1))
        return
      end
      if ((index).equal?(get_selection_index))
        if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
          OS._set_control32bit_value(self.attr_handle, 0)
          send_event(SWT::Modify)
        else
          set_text("")
        end
      end
    end
    
    typesig { [] }
    # Deselects all selected items in the receiver's list.
    # <p>
    # Note: To clear the selection in the receiver's text field,
    # use <code>clearSelection()</code>.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #clearSelection
    def deselect_all
      check_widget
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        OS._set_control32bit_value(self.attr_handle, 0)
        send_event(SWT::Modify)
      else
        set_text("")
      end
    end
    
    typesig { [] }
    def destroy_widget
      # Bug in the Macintosh.  Carbon segments fault if the combo box has
      # keyboard focus and it is disposed or its parent is disposed because
      # there is an outstanding timer that runs after the widget is dispoed.
      # The fix is to remove the combo box from its parent and dispose it when
      # the display is idle.
      # 
      # NOTE: The problem does not happen when the window is disposed.
      if (!((get_shell.attr_state & DISPOSE_SENT)).equal?(0))
        super
      else
        release_handle
      end
    end
    
    typesig { [] }
    def get_ax_attributes
      return AX_ATTRIBUTES
    end
    
    typesig { [::Java::Int] }
    # Returns the item at the given, zero-relative index in the
    # receiver's list. Throws an exception if the index is out
    # of range.
    # 
    # @param index the index of the item to return
    # @return the item at the given index
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item(index)
      check_widget
      count = get_item_count
      if (0 > index || index >= count)
        error(SWT::ERROR_INVALID_RANGE)
      end
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      result = 0
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        result = OS._copy_menu_item_text_as_cfstring(@menu_handle, RJava.cast_to_short((index + 1)), ptr)
      else
        result = OS._hicombo_box_copy_text_item_at_index(self.attr_handle, index, ptr)
      end
      if (!(result).equal?(OS.attr_no_err))
        error(SWT::ERROR_CANNOT_GET_ITEM)
      end
      length_ = OS._cfstring_get_length(ptr[0])
      buffer = CharArray.new(length_)
      range = CFRange.new
      range.attr_length = length_
      OS._cfstring_get_characters(ptr[0], range, buffer)
      OS._cfrelease(ptr[0])
      return String.new(buffer)
    end
    
    typesig { [] }
    # Returns the number of items contained in the receiver's list.
    # 
    # @return the number of items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_count
      check_widget
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return OS._count_menu_items(@menu_handle)
      else
        return OS._hicombo_box_get_item_count(self.attr_handle)
      end
    end
    
    typesig { [] }
    # Returns the height of the area which would be used to
    # display <em>one</em> of the items in the receiver's list.
    # 
    # @return the height of one item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_height
      check_widget
      # TODO - not supported by the OS
      return 26
    end
    
    typesig { [] }
    # Returns a (possibly empty) array of <code>String</code>s which are
    # the items in the receiver's list.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the items in the receiver's list
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_items
      check_widget
      count = get_item_count
      result = Array.typed(String).new(count) { nil }
      i = 0
      while i < count
        result[i] = get_item(i)
        ((i += 1) - 1)
      end
      return result
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver's list is visible,
    # and <code>false</code> otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, this method
    # may still indicate that it is considered visible even though
    # it may not actually be showing.
    # </p>
    # 
    # @return the receiver's list's visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_list_visible
      check_widget
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        out_data = MenuTrackingData.new
        return (OS._get_menu_tracking_data(@menu_handle, out_data)).equal?(OS.attr_no_err)
      else
        if (OS::VERSION >= 0x1040)
          return OS._hicombo_box_is_list_visible(self.attr_handle)
        end
        return false
      end
    end
    
    typesig { [] }
    def get_mininum_height
      return get_text_height
    end
    
    typesig { [] }
    def get_name_text
      return get_text
    end
    
    typesig { [] }
    # Returns the orientation of the receiver.
    # 
    # @return the orientation style
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1.2
    def get_orientation
      check_widget
      return self.attr_style & (SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT)
    end
    
    typesig { [] }
    # Returns a <code>Point</code> whose x coordinate is the
    # character position representing the start of the selection
    # in the receiver's text field, and whose y coordinate is the
    # character position representing the end of the selection.
    # An "empty" selection is indicated by the x and y coordinates
    # having the same value.
    # <p>
    # Indexing is zero based.  The range of a selection is from
    # 0..N where N is the number of characters in the widget.
    # </p>
    # 
    # @return a point representing the selection start and end
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return Point.new(0, get_char_count)
      else
        selection = nil
        if (!(@selection).nil?)
          selection = @selection
        else
          selection = ControlEditTextSelectionRec.new
          OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_hicombo_box_edit_text_part), OS.attr_k_control_edit_text_selection_tag, 4, selection, nil)
        end
        return Point.new(selection.attr_sel_start, selection.attr_sel_end)
      end
    end
    
    typesig { [] }
    # Returns the zero-relative index of the item which is currently
    # selected in the receiver's list, or -1 if no item is selected.
    # 
    # @return the index of the selected item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_index
      check_widget
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return OS._get_control_value(self.attr_handle) - 1
      else
        return index_of(get_text)
      end
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
    def get_text
      check_widget
      return String.new(get_text(0, -1))
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def get_text(start, end_)
      result = 0
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        index = OS._get_control_value(self.attr_handle) - 1
        result = OS._copy_menu_item_text_as_cfstring(@menu_handle, RJava.cast_to_short((index + 1)), ptr)
      else
        actual_size = Array.typed(::Java::Int).new(1) { 0 }
        result = OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_hicombo_box_edit_text_part), OS.attr_k_control_edit_text_cfstring_tag, 4, ptr, actual_size)
      end
      if (!(result).equal?(OS.attr_no_err))
        return CharArray.new(0)
      end
      range = CFRange.new
      range.attr_location = start
      if ((end_).equal?(-1))
        length_ = OS._cfstring_get_length(ptr[0])
        range.attr_length = length_ - start
      else
        range.attr_length = end_ - start
      end
      buffer = CharArray.new(range.attr_length)
      OS._cfstring_get_characters(ptr[0], range, buffer)
      OS._cfrelease(ptr[0])
      return buffer
    end
    
    typesig { [] }
    # Returns the height of the receivers's text field.
    # 
    # @return the text height
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text_height
      check_widget
      # TODO - not supported by the OS
      return 26
    end
    
    typesig { [] }
    # Returns the maximum number of characters that the receiver's
    # text field is capable of holding. If this has not been changed
    # by <code>setTextLimit()</code>, it will be the constant
    # <code>Combo.LIMIT</code>.
    # 
    # @return the text limit
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #LIMIT
    def get_text_limit
      check_widget
      return @text_limit
    end
    
    typesig { [] }
    # Gets the number of items that are visible in the drop
    # down portion of the receiver's list.
    # <p>
    # Note: This operation is a hint and is not supported on
    # platforms that do not have this concept.
    # </p>
    # 
    # @return the number of items that are visible
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_visible_item_count
      check_widget
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return get_item_count
      else
        buffer = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_hicombo_box_num_visible_items_tag, 4, buffer, nil)
        return buffer[0]
      end
    end
    
    typesig { [] }
    def hook_events
      super
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        command_proc = self.attr_display.attr_command_proc
        mask = Array.typed(::Java::Int).new([OS.attr_k_event_class_command, OS.attr_k_event_process_command, ])
        menu_target = OS._get_menu_event_target(@menu_handle)
        OS._install_event_handler(menu_target, command_proc, mask.attr_length / 2, mask, self.attr_handle, nil)
      end
    end
    
    typesig { [String] }
    # Searches the receiver's list starting at the first item
    # (index 0) until an item is found that is equal to the
    # argument, and returns the index of that item. If no item
    # is found, returns -1.
    # 
    # @param string the search item
    # @return the index of the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def index_of(string)
      return index_of(string, 0)
    end
    
    typesig { [String, ::Java::Int] }
    # Searches the receiver's list starting at the given,
    # zero-relative index until an item is found that is equal
    # to the argument, and returns the index of that item. If
    # no item is found or the starting index is out of range,
    # returns -1.
    # 
    # @param string the search item
    # @param start the zero-relative index at which to begin the search
    # @return the index of the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def index_of(string, start)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      count = get_item_count
      if (!(0 <= start && start < count))
        return -1
      end
      i = start
      while i < count
        if ((string == get_item(i)))
          return i
        end
        ((i += 1) - 1)
      end
      return -1
    end
    
    typesig { [] }
    def get_char_count
      # checkWidget ();
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      result = 0
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        index = OS._get_control_value(self.attr_handle) - 1
        result = OS._copy_menu_item_text_as_cfstring(@menu_handle, RJava.cast_to_short((index + 1)), ptr)
      else
        actual_size = Array.typed(::Java::Int).new(1) { 0 }
        result = OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_hicombo_box_edit_text_part), OS.attr_k_control_edit_text_cfstring_tag, 4, ptr, actual_size)
      end
      if (!(result).equal?(OS.attr_no_err))
        return 0
      end
      length_ = OS._cfstring_get_length(ptr[0])
      OS._cfrelease(ptr[0])
      return length_
    end
    
    typesig { [] }
    def get_inset
      return self.attr_display.attr_combo_inset
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_accessible_get_named_attribute(next_handler, the_event, user_data)
      code = OS.attr_event_not_handled_err
      if (((self.attr_style & SWT::READ_ONLY)).equal?(0))
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
        if ((attribute_name == OS.attr_k_axvalue_attribute))
          buffer = get_text(0, -1)
          string_ref[0] = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
          if (!(string_ref[0]).equal?(0))
            OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, string_ref)
            OS._cfrelease(string_ref[0])
            code = OS.attr_no_err
          end
        else
          if ((attribute_name == OS.attr_k_axnumber_of_characters_attribute))
            OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_sint32, 4, Array.typed(::Java::Int).new([get_char_count]))
            code = OS.attr_no_err
          else
            if ((attribute_name == OS.attr_k_axselected_text_attribute))
              sel = get_selection
              buffer = get_text(sel.attr_x, sel.attr_y)
              string_ref[0] = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
              if (!(string_ref[0]).equal?(0))
                OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, string_ref)
                OS._cfrelease(string_ref[0])
                code = OS.attr_no_err
              end
            else
              if ((attribute_name == OS.attr_k_axselected_text_range_attribute))
                sel = get_selection
                range = CFRange.new
                range.attr_location = sel.attr_x
                range.attr_length = sel.attr_y - sel.attr_x
                value_ref = OS._axvalue_create(OS.attr_k_axvalue_cfrange_type, range)
                OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cftype_ref, 4, Array.typed(::Java::Int).new([value_ref]))
                OS._cfrelease(value_ref)
                code = OS.attr_no_err
              else
                if ((attribute_name == OS.attr_k_axstring_for_range_parameterized_attribute))
                  value_ref = Array.typed(::Java::Int).new(1) { 0 }
                  status = OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_parameter, OS.attr_type_cftype_ref, nil, 4, nil, value_ref)
                  if ((status).equal?(OS.attr_no_err))
                    range = CFRange.new
                    ok = OS._axvalue_get_value(value_ref[0], OS.attr_k_axvalue_cfrange_type, range)
                    if (ok)
                      buffer = get_text(range.attr_location, range.attr_location + range.attr_length)
                      string_ref[0] = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
                      if (!(string_ref[0]).equal?(0))
                        OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, string_ref)
                        OS._cfrelease(string_ref[0])
                        code = OS.attr_no_err
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      if (!(self.attr_accessible).nil?)
        code = self.attr_accessible.internal_k_event_accessible_get_named_attribute(next_handler, the_event, code)
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_activate(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      # Feature in the Macintosh.  When a combo box gets
      # kEventControlActivate, it starts the caret blinking.
      # Because there is no clipping on the Macintosh, the
      # caret may blink through a widget that is obscured.
      # The fix is to avoid running the default handler.
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_process_command(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      # It is possible (but unlikely), that application
      # code could have disposed the widget in the modify
      # event.  If this happens, end the processing of the
      # Windows message by returning zero as the result of
      # the window proc.
      # 
      # Note: this should be a send event, but selection is updated
      # right way.
      post_event(SWT::Modify)
      if (is_disposed)
        return OS.attr_event_not_handled_err
      end
      post_event(SWT::Selection)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_raw_key_pressed(next_handler, the_event, user_data)
      # Feature in the Macintosh. The combo box widget consumes the
      # kEventRawKeyDown event when the up and down arrow keys are
      # pressed, causing kEventTextInputUnicodeForKeyEvent not
      # to be sent.  The fix is to handle these keys in kEventRawKeyDown.
      # 
      # NOTE:  This was fixed in OS X 10.4.
      if (OS::VERSION < 0x1040)
        key_code = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_key_code, OS.attr_type_uint32, nil, key_code.attr_length * 4, nil, key_code)
        case (key_code[0])
        # Up arrow
        when 126, 125
          # Down arrow
          if (!send_key_event(SWT::KeyDown, the_event))
            return OS.attr_no_err
          end
        end
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_set_focus_part(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        if (((self.attr_style & SWT::READ_ONLY)).equal?(0))
          part = Array.typed(::Java::Short).new(1) { 0 }
          OS._get_event_parameter(the_event, OS.attr_k_event_param_control_part, OS.attr_type_control_part_code, nil, 2, nil, part)
          if (!(part[0]).equal?(OS.attr_k_control_focus_no_part))
            self.attr_display.attr_focus_combo = self
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
      string = OS.attr_k_axvalue_changed_notification
      buffer = CharArray.new(string.length)
      string.get_chars(0, buffer.attr_length, buffer, 0)
      string_ref = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      OS._axnotification_hiobject_notify(string_ref, self.attr_handle, 0)
      OS._cfrelease(string_ref)
      string = (OS.attr_k_axselected_text_changed_notification).to_s
      buffer = CharArray.new(string.length)
      string.get_chars(0, buffer.attr_length, buffer, 0)
      string_ref = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      OS._axnotification_hiobject_notify(string_ref, self.attr_handle, 0)
      OS._cfrelease(string_ref)
      if (hooks(SWT::Verify) || filters(SWT::Verify) || hooks(SWT::Modify) || filters(SWT::Modify))
        modifiers = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(keyboard_event[0], OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, 4, nil, modifiers)
        if ((modifiers[0]).equal?(OS.attr_cmd_key))
          case (key_code[0])
          when 7
            # X
            cut
            return OS.attr_no_err
          when 9
            # V
            paste
            return OS.attr_no_err
          end
        end
      end
      case (key_code[0])
      # KP Enter
      when 76, 36
        # Return
        post_event(SWT::DefaultSelection)
      end
      result = OS._call_next_event_handler(next_handler, the_event)
      @last_text = (get_text).to_s
      return result
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
    # 
    # @since 2.1
    def paste
      check_widget
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return
      end
      selection = get_selection
      start = selection.attr_x
      end_ = selection.attr_y
      text = get_text
      left_text = text.substring(0, start)
      right_text = text.substring(end_, text.length)
      new_text = get_clipboard_text
      if (hooks(SWT::Verify) || filters(SWT::Verify))
        new_text = (verify_text(new_text, start, end_, nil)).to_s
        if ((new_text).nil?)
          return
        end
      end
      if (!(@text_limit).equal?(LIMIT))
        char_count = text.length
        if (char_count - (end_ - start) + new_text.length > @text_limit)
          new_text = (new_text.substring(0, @text_limit - char_count + (end_ - start))).to_s
        end
      end
      set_text(left_text + new_text + right_text, false)
      start += new_text.length
      set_selection(Point.new(start, start))
      send_event(SWT::Modify)
    end
    
    typesig { [] }
    def poll_track_event
      return true
    end
    
    typesig { [] }
    def release_handle
      # Bug in the Macintosh.  Carbon segments fault if the combo box has
      # keyboard focus and it is disposed or its parent is disposed because
      # there is an outstanding timer that runs after the widget is dispoed.
      # The fix is to remove the combo box from its parent and dispose it when
      # the display is idle.
      # 
      # NOTE: The problem does not happen when the window is disposed.
      if (((get_shell.attr_state & DISPOSE_SENT)).equal?(0))
        self.attr_display.add_to_dispose_window(self.attr_handle)
      end
      super
    end
    
    typesig { [] }
    def release_widget
      super
      if ((self.attr_display.attr_focus_combo).equal?(self))
        self.attr_display.attr_focus_combo = nil
      end
      if (!(@menu_handle).equal?(0))
        OS._dispose_menu(@menu_handle)
      end
      @menu_handle = 0
    end
    
    typesig { [::Java::Int] }
    # Removes the item from the receiver's list at the given
    # zero-relative index.
    # 
    # @param index the index for the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove(index)
      check_widget
      if ((index).equal?(-1))
        error(SWT::ERROR_INVALID_RANGE)
      end
      count = get_item_count
      if (0 > index || index >= count)
        error(SWT::ERROR_INVALID_RANGE)
      end
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        OS._delete_menu_items(@menu_handle, RJava.cast_to_short((index + 1)), 1)
        if ((index).equal?(OS._get_control_value(self.attr_handle) - 1))
          OS._set_control32bit_value(self.attr_handle, 0)
        end
      else
        OS._hicombo_box_remove_item_at_index(self.attr_handle, index)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Removes the items from the receiver's list which are
    # between the given zero-relative start and end
    # indices (inclusive).
    # 
    # @param start the start of the range
    # @param end the end of the range
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if either the start or end are not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove(start, end_)
      check_widget
      if (start > end_)
        return
      end
      count = get_item_count
      if (!(0 <= start && start <= end_ && end_ < count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      new_end = Math.min(end_, count - 1)
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        OS._delete_menu_items(@menu_handle, RJava.cast_to_short((start + 1)), new_end - start + 1)
        index = OS._get_control_value(self.attr_handle) - 1
        if (start <= index && index <= end_)
          OS._set_control32bit_value(self.attr_handle, 0)
        end
      else
        i = new_end
        while i >= start
          OS._hicombo_box_remove_item_at_index(self.attr_handle, i)
          ((i -= 1) + 1)
        end
      end
    end
    
    typesig { [String] }
    # Searches the receiver's list starting at the first item
    # until an item is found that is equal to the argument,
    # and removes that item from the list.
    # 
    # @param string the item to remove
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the string is not found in the list</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      index = index_of(string, 0)
      if ((index).equal?(-1))
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      remove(index)
    end
    
    typesig { [] }
    # Removes all of the items from the receiver's list and clear the
    # contents of receiver's text field.
    # <p>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove_all
      check_widget
      count = get_item_count
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        OS._delete_menu_items(@menu_handle, RJava.cast_to_short(1), count)
        OS._set_control32bit_value(self.attr_handle, 0)
      else
        set_text("", true)
        if (count > 0)
          i = count - 1
          while i >= 0
            OS._hicombo_box_remove_item_at_index(self.attr_handle, i)
            ((i -= 1) + 1)
          end
        end
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
    # be notified when the user changes the receiver's selection.
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
    # 
    # @since 3.1
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
    # Selects the item at the given zero-relative index in the receiver's
    # list.  If the item at the index was already selected, it remains
    # selected. Indices that are out of range are ignored.
    # 
    # @param index the index of the item to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def select(index)
      check_widget
      count = get_item_count
      if (0 <= index && index < count)
        if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
          OS._set_control32bit_value(self.attr_handle, index + 1)
          send_event(SWT::Modify)
        else
          set_text(get_item(index), true)
        end
      end
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
      old_text = ""
      new_text = ""
      if (hooks(SWT::Verify) || filters(SWT::Verify))
        char_count = get_char_count
        selection = get_selection
        start = selection.attr_x
        end_ = selection.attr_y
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
          old_text = (String.new(Array.typed(::Java::Char).new([event.attr_character]))).to_s
        end
        new_text = (verify_text(old_text, start, end_, event)).to_s
        if ((new_text).nil?)
          return false
        end
        if (char_count - (end_ - start) + new_text.length > @text_limit)
          return false
        end
        if (!(new_text).equal?(old_text))
          text = get_text
          left_text = text.substring(0, start)
          right_text = text.substring(end_, text.length)
          set_text(left_text + new_text + right_text, false)
          start += new_text.length
          set_selection(Point.new(start, start))
        end
      end
      # Post the modify event so that the character will be inserted
      # into the widget when the modify event is delivered.  Normally,
      # modify events are sent but it is safe to post the event here
      # because this method is called from the event loop.
      post_event(SWT::Modify)
      return (new_text).equal?(old_text)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Float)] }
    def set_background(control, color)
      if (((self.attr_style & SWT::READ_ONLY)).equal?(0))
        if ((color).nil?)
          color = default_background.attr_handle
        end
      end
      super(control, color)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize, events)
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return super(x, y, width, height, move, resize, events)
      end
      # Bug in the Macintosh.  When the caret is moved,
      # the combo widget scrolls to show the new location.
      # This means that the combo widget may be scrolled
      # to the left in order to show the caret when the
      # widget is not large enough to show both the caret
      # location and all the text.  Unfortunately, when
      # the widget is resized such that all the text and
      # the caret could be visible, the Macintosh does not
      # scroll the widget back.  The fix is to save the
      # current selection, reset the text and then restore
      # the selection.  This will cause the widget
      # to recompute the left scroll position.
      inset = get_inset
      rect = get_bounds
      old_width = rect.attr_width - inset.attr_left - inset.attr_right
      result = super(x, y, width, height, move, resize, events)
      if ((old_width).equal?(0) && width > 0)
        selection = get_selection
        set_text(get_text, false)
        set_selection(selection)
      end
      return result
    end
    
    typesig { [::Java::Int, String] }
    # Sets the text of the item in the receiver's list at the given
    # zero-relative index to the string argument.
    # 
    # @param index the index for the item
    # @param string the new text for the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_item(index, string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      count = get_item_count
      if (0 > index || index >= count)
        error(SWT::ERROR_INVALID_RANGE)
      end
      buffer = CharArray.new(string.length)
      string.get_chars(0, buffer.attr_length, buffer, 0)
      ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      if ((ptr).equal?(0))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      result = 0
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        result = OS._set_menu_item_text_with_cfstring(@menu_handle, RJava.cast_to_short((index + 1)), ptr)
        # Feature in the Macintosh.  Setting text that starts with "-" makes the
        # menu item a separator.  The fix is to clear the separator attribute.
        if (string.starts_with("-"))
          OS._change_menu_item_attributes(@menu_handle, RJava.cast_to_short((index + 1)), 0, OS.attr_k_menu_item_attr_separator)
        end
      else
        result = OS._hicombo_box_insert_text_item_at_index(self.attr_handle, index, ptr)
        OS._hicombo_box_remove_item_at_index(self.attr_handle, index + 1)
      end
      OS._cfrelease(ptr)
      if (!(result).equal?(OS.attr_no_err))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
    end
    
    typesig { [Array.typed(String)] }
    # Sets the receiver's list to be the given array of items.
    # 
    # @param items the array of items
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the items array is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if an item in the items array is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_items(items)
      check_widget
      if ((items).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      i = 0
      while i < items.attr_length
        if ((items[i]).nil?)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        ((i += 1) - 1)
      end
      remove_all
      if ((items.attr_length).equal?(0))
        return
      end
      i_ = 0
      while i_ < items.attr_length
        string = items[i_]
        buffer = CharArray.new(string.length)
        string.get_chars(0, buffer.attr_length, buffer, 0)
        ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
        if ((ptr).equal?(0))
          error(SWT::ERROR_ITEM_NOT_ADDED)
        end
        result = 0
        if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
          result = OS._append_menu_item_text_with_cfstring(@menu_handle, ptr, 0, 0, nil)
          # Feature in the Macintosh.  Setting text that starts with "-" makes the
          # menu item a separator.  The fix is to clear the separator attribute.
          if (string.starts_with("-"))
            OS._change_menu_item_attributes(@menu_handle, RJava.cast_to_short((i_ + 1)), 0, OS.attr_k_menu_item_attr_separator)
          end
        else
          out_index = Array.typed(::Java::Int).new(1) { 0 }
          result = OS._hicombo_box_append_text_item(self.attr_handle, ptr, out_index)
        end
        OS._cfrelease(ptr)
        if (!(result).equal?(OS.attr_no_err))
          error(SWT::ERROR_ITEM_NOT_ADDED)
        end
        ((i_ += 1) - 1)
      end
    end
    
    typesig { [::Java::Boolean] }
    # Marks the receiver's list as visible if the argument is <code>true</code>,
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
    # 
    # @since 3.4
    def set_list_visible(visible)
      check_widget
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        if (visible)
          OS._hiview_simulate_click(self.attr_handle, RJava.cast_to_short(0), 0, nil)
        else
          OS._cancel_menu_tracking(@menu_handle, true, 0)
        end
      else
        if (OS::VERSION >= 0x1040)
          OS._hicombo_box_set_list_visible(self.attr_handle, visible)
        end
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the orientation of the receiver, which must be one
    # of the constants <code>SWT.LEFT_TO_RIGHT</code> or <code>SWT.RIGHT_TO_LEFT</code>.
    # <p>
    # 
    # @param orientation new orientation style
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1.2
    def set_orientation(orientation)
      check_widget
    end
    
    typesig { [Point] }
    # Sets the selection in the receiver's text field to the
    # range specified by the argument whose x coordinate is the
    # start of the selection and whose y coordinate is the end
    # of the selection.
    # 
    # @param selection a point representing the new selection start and end
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(selection)
      check_widget
      if ((selection).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (((self.attr_style & SWT::READ_ONLY)).equal?(0))
        length_ = get_char_count
        start = selection.attr_x
        end_ = selection.attr_y
        sel = ControlEditTextSelectionRec.new
        sel.attr_sel_start = RJava.cast_to_short(Math.min(Math.max(Math.min(start, end_), 0), length_))
        sel.attr_sel_end = RJava.cast_to_short(Math.min(Math.max(Math.max(start, end_), 0), length_))
        if (has_focus)
          OS._set_control_data(self.attr_handle, OS.attr_k_hicombo_box_edit_text_part, OS.attr_k_control_edit_text_selection_tag, 4, sel)
        else
          @selection = sel
        end
      end
    end
    
    typesig { [String] }
    # Sets the contents of the receiver's text field to the
    # given string.
    # <p>
    # Note: The text field in a <code>Combo</code> is typically
    # only capable of displaying a single line of text. Thus,
    # setting the text to a string containing line breaks or
    # other special characters will probably cause it to
    # display incorrectly.
    # </p>
    # 
    # @param string the new text
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_text(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_text(string, true)
    end
    
    typesig { [String, ::Java::Boolean] }
    def set_text(string, notify)
      if (notify)
        if (hooks(SWT::Verify) || filters(SWT::Verify))
          string = (verify_text(string, 0, get_char_count, nil)).to_s
          if ((string).nil?)
            return
          end
        end
      end
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        index = index_of(string)
        if (!(index).equal?(-1) && !(index).equal?(get_selection_index))
          select(index)
          if (notify)
            send_event(SWT::Modify)
          end
        end
      else
        buffer = CharArray.new(Math.min(string.length, @text_limit))
        string.get_chars(0, buffer.attr_length, buffer, 0)
        ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
        if ((ptr).equal?(0))
          error(SWT::ERROR_CANNOT_SET_TEXT)
        end
        @last_text = string
        OS._set_control_data(self.attr_handle, OS.attr_k_hicombo_box_edit_text_part, OS.attr_k_control_edit_text_cfstring_tag, 4, Array.typed(::Java::Int).new([ptr]))
        OS._cfrelease(ptr)
        @selection = nil
        if (notify)
          send_event(SWT::Modify)
        end
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the maximum number of characters that the receiver's
    # text field is capable of holding to be the argument.
    # <p>
    # To reset this value to the default, use <code>setTextLimit(Combo.LIMIT)</code>.
    # Specifying a limit value larger than <code>Combo.LIMIT</code> sets the
    # receiver's limit to <code>Combo.LIMIT</code>.
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
    def set_text_limit(limit)
      check_widget
      if ((limit).equal?(0))
        error(SWT::ERROR_CANNOT_BE_ZERO)
      end
      @text_limit = limit
    end
    
    typesig { [::Java::Int] }
    # Sets the number of items that are visible in the drop
    # down portion of the receiver's list.
    # <p>
    # Note: This operation is a hint and is not supported on
    # platforms that do not have this concept.
    # </p>
    # 
    # @param count the new number of items to be visible
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_visible_item_count(count)
      check_widget
      if (count < 0)
        return
      end
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        # TODO
      else
        OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_hicombo_box_num_visible_items_tag, 4, Array.typed(::Java::Int).new([count]))
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
    alias_method :initialize__combo, :initialize
  end
  
end
