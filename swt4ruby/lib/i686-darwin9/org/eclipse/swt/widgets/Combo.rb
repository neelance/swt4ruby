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
  module ComboImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
  # @noextend This class is not intended to be subclassed by clients.
  class Combo < ComboImports.const_get :Composite
    include_class_members ComboImports
    
    attr_accessor :text_limit
    alias_method :attr_text_limit, :text_limit
    undef_method :text_limit
    alias_method :attr_text_limit=, :text_limit=
    undef_method :text_limit=
    
    attr_accessor :receiving_focus
    alias_method :attr_receiving_focus, :receiving_focus
    undef_method :receiving_focus
    alias_method :attr_receiving_focus=, :receiving_focus=
    undef_method :receiving_focus=
    
    attr_accessor :ignore_verify
    alias_method :attr_ignore_verify, :ignore_verify
    undef_method :ignore_verify
    alias_method :attr_ignore_verify=, :ignore_verify=
    undef_method :ignore_verify=
    
    attr_accessor :ignore_selection
    alias_method :attr_ignore_selection, :ignore_selection
    undef_method :ignore_selection
    alias_method :attr_ignore_selection=, :ignore_selection=
    undef_method :ignore_selection=
    
    attr_accessor :selection_range
    alias_method :attr_selection_range, :selection_range
    undef_method :selection_range
    alias_method :attr_selection_range=, :selection_range=
    undef_method :selection_range=
    
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
    # @see SWT#DROP_DOWN
    # @see SWT#READ_ONLY
    # @see SWT#SIMPLE
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @text_limit = 0
      @receiving_focus = false
      @ignore_verify = false
      @ignore_selection = false
      @selection_range = nil
      super(parent, check_style(style))
      @text_limit = LIMIT
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
      str = NSString.string_with(string)
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        widget = self.attr_view
        # long
        selection = widget.index_of_selected_item
        ns_menu = widget.menu
        ns_item = NSMenuItem.new.alloc
        ns_item.init_with_title(str, 0, NSString.string_with(""))
        ns_menu.add_item(ns_item)
        ns_item.release
        if ((selection).equal?(-1))
          widget.select_item_at_index(-1)
        end
      else
        (self.attr_view).add_item_with_object_value(str)
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
      str = NSString.string_with(string)
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        widget = self.attr_view
        # long
        selection = widget.index_of_selected_item
        ns_menu = widget.menu
        ns_item = NSMenuItem.new.alloc
        ns_item.init_with_title(str, 0, NSString.string_with(""))
        ns_menu.insert_item(ns_item, index)
        ns_item.release
        if ((selection).equal?(-1))
          widget.select_item_at_index(-1)
        end
      else
        (self.attr_view).insert_item_with_object_value(str, index)
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
    # long
    # long
    def become_first_responder(id, sel)
      @receiving_focus = true
      result = super(id, sel)
      @receiving_focus = false
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
      widget = self.attr_view
      view_cell = widget.cell
      size = view_cell.cell_size
      width = RJava.cast_to_int(Math.ceil(size.attr_width))
      height = RJava.cast_to_int(Math.ceil(size.attr_height))
      if (((self.attr_style & SWT::READ_ONLY)).equal?(0))
        @ignore_verify = true
        cell_ = NSComboBoxCell.new(view_cell.attr_id)
        array = cell_.object_values
        # 64
        length = RJava.cast_to_int(array.count)
        if (length > 0)
          cell_ = NSComboBoxCell.new(cell_.copy)
          i = 0
          while i < length
            object = array.object_at_index(i)
            cell_.set_title(NSString.new(object))
            size = cell_.cell_size
            width = Math.max(width, RJava.cast_to_int(Math.ceil(size.attr_width)))
            i += 1
          end
          cell_.release
        end
        @ignore_verify = false
      end
      # Feature in Cocoa.  Attempting to create an NSComboBox with a
      # height > 27 spews a very long warning message to stdout and
      # often draws the combo incorrectly.  The workaround is to limit
      # the returned height of editable Combos to the height that is
      # required to display their text, even if a larger hHint is specified.
      if (!(h_hint).equal?(SWT::DEFAULT))
        if (!((self.attr_style & SWT::READ_ONLY)).equal?(0) || h_hint < height)
          height = h_hint
        end
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
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
        widget = SWTPopUpButton.new.alloc
        widget.init_with_frame(NSRect.new, false)
        widget.menu.set_autoenables_items(false)
        widget.set_target(widget)
        widget.set_action(OS.attr_sel_send_selection)
        self.attr_view = widget
      else
        widget = SWTComboBox.new.alloc
        widget.init
        widget.set_delegate(widget)
        widget.set_target(widget)
        widget.set_action(OS.attr_sel_send_selection)
        self.attr_view = widget
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
        new_text = RJava.cast_to_string(verify_text(new_text, start, end_, nil))
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
      return self.attr_display.get_widget_color(SWT::COLOR_LIST_BACKGROUND)
    end
    
    typesig { [] }
    def default_nsfont
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return self.attr_display.attr_pop_up_button_font
      end
      return self.attr_display.attr_combo_box_font
    end
    
    typesig { [] }
    def default_foreground
      return self.attr_display.get_widget_color(SWT::COLOR_LIST_FOREGROUND)
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget((self.attr_view).cell)
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
          (self.attr_view).select_item(nil)
          send_event(SWT::Modify)
        else
          (self.attr_view).deselect_item_at_index(index)
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
        (self.attr_view).select_item(nil)
        send_event(SWT::Modify)
      else
        widget = self.attr_view
        # long
        index = widget.index_of_selected_item
        if (!(index).equal?(-1))
          widget.deselect_item_at_index(index)
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Boolean)] }
    def drag_detect(x, y, filter, consume)
      if (((self.attr_style & SWT::READ_ONLY)).equal?(0))
        field_editor = (self.attr_view).current_editor
        if (!(field_editor).nil?)
          selected_range_ = field_editor.selected_range
          if (selected_range_.attr_length > 0)
            mouse_location_ = NSEvent.mouse_location
            fe_as_text_view = NSTextView.new(field_editor)
            # long
            char_position = fe_as_text_view.character_index_for_insertion_at_point(mouse_location_)
            if (!(char_position).equal?(OS::NSNotFound) && char_position >= selected_range_.attr_location && char_position < (selected_range_.attr_location + selected_range_.attr_length))
              if (super(x, y, filter, consume))
                if (!(consume).nil?)
                  consume[0] = true
                end
                return true
              end
            end
          end
        end
        return false
      end
      return super(x, y, filter, consume)
    end
    
    typesig { [] }
    def get_char_count
      str = nil
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        str = (self.attr_view).title_of_selected_item
      else
        str = NSCell.new((self.attr_view).cell).title
      end
      if ((str).nil?)
        return 0
      end
      # 64
      return RJava.cast_to_int(str.length)
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
      count_ = get_item_count
      if (0 > index || index >= count_)
        error(SWT::ERROR_INVALID_RANGE)
      end
      str = nil
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        str = (self.attr_view).item_title_at_index(index)
      else
        str = NSString.new((self.attr_view).item_object_value_at_index(index))
      end
      if ((str).nil?)
        error(SWT::ERROR_CANNOT_GET_ITEM)
      end
      return str.get_string
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
        # 64
        return RJava.cast_to_int((self.attr_view).number_of_items)
      else
        # 64
        return RJava.cast_to_int((self.attr_view).number_of_items)
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
      count_ = get_item_count
      result = Array.typed(String).new(count_) { nil }
      i = 0
      while i < count_
        result[i] = get_item(i)
        i += 1
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
      # TODO
      return false
    end
    
    typesig { [] }
    def get_mininum_height
      return get_text_height
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
        if ((@selection_range).nil?)
          str = NSTextFieldCell.new((self.attr_view).cell).title
          # 64
          # 64
          return Point.new(RJava.cast_to_int(str.length), RJava.cast_to_int(str.length))
        end
        # 64
        # 64
        return Point.new(RJava.cast_to_int(@selection_range.attr_location), RJava.cast_to_int((@selection_range.attr_location + @selection_range.attr_length)))
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
        # 64
        return RJava.cast_to_int((self.attr_view).index_of_selected_item)
      else
        # 64
        return RJava.cast_to_int((self.attr_view).index_of_selected_item)
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
      str = nil
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        str = (self.attr_view).title_of_selected_item
      else
        str = NSCell.new((self.attr_view).cell).title
      end
      if ((str).nil?)
        return CharArray.new(0)
      end
      range = NSRange.new
      range.attr_location = start
      if ((end_).equal?(-1))
        # long
        length_ = str.length
        range.attr_length = length_ - start
      else
        range.attr_length = end_ - start
      end
      # 64
      buffer = CharArray.new(RJava.cast_to_int(range.attr_length))
      str.get_characters(buffer, range)
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
      cell_ = nil
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        cell_ = (self.attr_view).cell
      else
        cell_ = (self.attr_view).cell
      end
      return RJava.cast_to_int(cell_.cell_size.attr_height)
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
        # 64
        return RJava.cast_to_int((self.attr_view).number_of_visible_items)
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
      count_ = get_item_count
      if (!(0 <= start && start < count_))
        return -1
      end
      i = start
      while i < count_
        if ((string == get_item(i)))
          return i
        end
        i += 1
      end
      return -1
    end
    
    typesig { [String] }
    def insert_edit_text(string)
      @ignore_verify = true
      length_ = string.length
      selection = get_selection
      if (has_focus)
        if (!(@text_limit).equal?(LIMIT))
          char_count = get_char_count
          if (char_count - (selection.attr_y - selection.attr_x) + length_ > @text_limit)
            length_ = @text_limit - char_count + (selection.attr_y - selection.attr_x)
          end
        end
        buffer = CharArray.new(length_)
        string.get_chars(0, buffer.attr_length, buffer, 0)
        nsstring = NSString.string_with_characters(buffer, buffer.attr_length)
        field_editor = (self.attr_view).current_editor
        field_editor.replace_characters_in_range(field_editor.selected_range, nsstring)
        @selection_range = nil
      else
        old_text = get_text
        if (!(@text_limit).equal?(LIMIT))
          char_count = old_text.length
          if (char_count - (selection.attr_y - selection.attr_x) + length_ > @text_limit)
            string = RJava.cast_to_string(string.substring(0, @text_limit - char_count + (selection.attr_y - selection.attr_x)))
          end
        end
        new_text = RJava.cast_to_string(old_text.substring(0, selection.attr_x)) + string + RJava.cast_to_string(old_text.substring(selection.attr_y))
        nsstring = NSString.string_with(new_text)
        NSCell.new((self.attr_view).cell).set_title(nsstring)
        @selection_range = nil
        set_selection(Point.new(selection.attr_x + string.length, 0))
      end
      @ignore_verify = false
    end
    
    typesig { [::Java::Int] }
    # long
    def is_event_view(id)
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_down(id, sel, the_event)
      # If this is a combo box with an editor field and the control is disposed
      # while the view's cell editor is open we crash while tearing down the
      # popup window. Fix is to retain the view before letting Cocoa track
      # the mouse events.
      # 'view' will be cleared if disposed during the mouseDown so cache it.
      view_copy = self.attr_view
      view_copy.retain
      super(id, sel, the_event)
      view_copy.release
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
      if ((new_text).nil?)
        return
      end
      if (hooks(SWT::Verify) || filters(SWT::Verify))
        new_text = RJava.cast_to_string(verify_text(new_text, start, end_, nil))
        if ((new_text).nil?)
          return
        end
      end
      if (!(@text_limit).equal?(LIMIT))
        char_count = text.length
        if (char_count - (end_ - start) + new_text.length > @text_limit)
          new_text = RJava.cast_to_string(new_text.substring(0, @text_limit - char_count + (end_ - start)))
        end
      end
      set_text(left_text + new_text + right_text, false)
      start += new_text.length
      set_selection(Point.new(start, start))
      send_event(SWT::Modify)
    end
    
    typesig { [] }
    def register
      super
      self.attr_display.add_widget((self.attr_view).cell, self)
    end
    
    typesig { [] }
    def release_widget
      super
      if (((self.attr_style & SWT::READ_ONLY)).equal?(0))
        (self.attr_view).abort_editing
      end
      @selection_range = nil
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
      count_ = get_item_count
      if (0 > index || index >= count_)
        error(SWT::ERROR_INVALID_RANGE)
      end
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        (self.attr_view).remove_item_at_index(index)
      else
        (self.attr_view).remove_item_at_index(index)
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
      count_ = get_item_count
      if (!(0 <= start && start <= end_ && end_ < count_))
        error(SWT::ERROR_INVALID_RANGE)
      end
      new_end = Math.min(end_, count_ - 1)
      i = new_end
      while i >= start
        remove(i)
        i -= 1
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
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        (self.attr_view).remove_all_items
      else
        set_text("", true)
        (self.attr_view).remove_all_items
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
      count_ = get_item_count
      @ignore_selection = true
      if (0 <= index && index < count_)
        if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
          (self.attr_view).select_item_at_index(index)
        else
          (self.attr_view).select_item_at_index(index)
        end
      end
      @ignore_selection = false
      send_event(SWT::Modify)
    end
    
    typesig { [] }
    def send_selection
      send_event(SWT::Modify)
      if (!@ignore_selection)
        post_event___org_eclipse_swt_widgets_combo_1(SWT::Selection)
      end
    end
    
    typesig { [NSEvent, ::Java::Int] }
    def send_key_event(ns_event, type)
      result = super(ns_event, type)
      if (!result)
        return result
      end
      state_mask = 0
      # long
      modifier_flags_ = ns_event.modifier_flags
      if (!((modifier_flags_ & OS::NSAlternateKeyMask)).equal?(0))
        state_mask |= SWT::ALT
      end
      if (!((modifier_flags_ & OS::NSShiftKeyMask)).equal?(0))
        state_mask |= SWT::SHIFT
      end
      if (!((modifier_flags_ & OS::NSControlKeyMask)).equal?(0))
        state_mask |= SWT::CONTROL
      end
      if (!((modifier_flags_ & OS::NSCommandKeyMask)).equal?(0))
        state_mask |= SWT::COMMAND
      end
      if (!(type).equal?(SWT::KeyDown))
        return result
      end
      key_code_ = ns_event.key_code
      if ((state_mask).equal?(SWT::COMMAND))
        case (key_code_)
        when 7
          # X
          cut
          return false
        when 8
          # C
          copy
          return false
        when 9
          # V
          paste
          return false
        when 0
          # A
          if (((self.attr_style & SWT::READ_ONLY)).equal?(0))
            (self.attr_view).select_text(nil)
            return false
          end
        end
      end
      case (key_code_)
      # KP Enter
      when 76, 36
        # Return
        post_event___org_eclipse_swt_widgets_combo_3(SWT::DefaultSelection)
      end
      return result
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
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        # TODO
      else
        (self.attr_view).set_background_color(ns_color)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize)
      # Feature in Cocoa.  Attempting to create an NSComboBox with a
      # height > 27 spews a very long warning message to stdout and
      # often draws the combo incorrectly.  The workaround is to limit
      # the height of editable Combos to the height that is required
      # to display their text.
      if (((self.attr_style & SWT::READ_ONLY)).equal?(0))
        widget = self.attr_view
        size = widget.cell.cell_size
        height = Math.min(height, RJava.cast_to_int(Math.ceil(size.attr_height)))
      end
      super(x, y, width, height, move, resize)
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
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        # TODO
      else
        (self.attr_view).set_text_color(ns_color)
      end
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
      count_ = get_item_count
      if (0 > index || index >= count_)
        error(SWT::ERROR_INVALID_RANGE)
      end
      str = NSString.string_with(string)
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        ns_item = (self.attr_view).item_at_index(index)
        ns_item.set_title(str)
      else
        widget = self.attr_view
        widget.insert_item_with_object_value(str, index)
        widget.remove_item_at_index(index + 1)
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
        i += 1
      end
      remove_all
      if ((items.attr_length).equal?(0))
        return
      end
      i_ = 0
      while i_ < items.attr_length
        str = NSString.string_with(items[i_])
        if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
          ns_menu = (self.attr_view).menu
          ns_item = NSMenuItem.new.alloc
          ns_item.init_with_title(str, 0, NSString.string_with(""))
          ns_menu.add_item(ns_item)
          ns_item.release
          # clear the selection
          (self.attr_view).select_item_at_index(-1)
        else
          (self.attr_view).add_item_with_object_value(str)
        end
        i_ += 1
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
        (self.attr_view).set_pulls_down(visible)
      else
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
        widget = self.attr_view
        str = NSCell.new(widget.cell).title
        # 64
        length_ = RJava.cast_to_int(str.length)
        start = Math.min(Math.max(Math.min(selection.attr_x, selection.attr_y), 0), length_)
        end_ = Math.min(Math.max(Math.max(selection.attr_x, selection.attr_y), 0), length_)
        @selection_range = NSRange.new
        @selection_range.attr_location = start
        @selection_range.attr_length = end_ - start
        field_editor = widget.current_editor
        if (!(field_editor).nil?)
          field_editor.set_selected_range(@selection_range)
        end
      end
    end
    
    typesig { [String] }
    # Sets the contents of the receiver's text field to the
    # given string.
    # <p>
    # This call is ignored when the receiver is read only and
    # the given string is not in the receiver's list.
    # </p>
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
      @ignore_verify = true
      if (notify)
        if (hooks(SWT::Verify) || filters(SWT::Verify))
          string = RJava.cast_to_string(verify_text(string, 0, get_char_count, nil))
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
        nsstring = NSString.string_with_characters(buffer, buffer.attr_length)
        NSCell.new((self.attr_view).cell).set_title(nsstring)
        if (notify)
          send_event(SWT::Modify)
        end
      end
      @selection_range = nil
      @ignore_verify = false
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
    def set_visible_item_count(count_)
      check_widget
      if (count_ < 0)
        return
      end
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        # TODO
      else
        (self.attr_view).set_number_of_visible_items(count_)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def should_change_text_in_range_replacement_string(id, sel, affected_char_range, replacement_string)
      range = NSRange.new
      OS.memmove___org_eclipse_swt_widgets_combo_5(range, affected_char_range, NSRange.attr_sizeof)
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
          insert_edit_text(new_text)
          result = false
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
    def text_view_did_change_selection(id, sel, a_notification)
      notification = NSNotification.new(a_notification)
      editor = NSText.new(notification.object.attr_id)
      @selection_range = editor.selected_range
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def text_did_change(id, sel, a_notification)
      super(id, sel, a_notification)
      post_event___org_eclipse_swt_widgets_combo_7(SWT::Modify)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def text_view_will_change_selection_from_character_range_to_character_range(id, sel, a_text_view, old_selected_char_range, new_selected_char_range)
      # If the selection is changing as a result of the receiver getting focus
      # then return the receiver's last selection range, otherwise the full
      # text will be automatically selected.
      if (@receiving_focus && !(@selection_range).nil?)
        return @selection_range
      end
      # allow the selection change to proceed
      result = NSRange.new
      OS.memmove___org_eclipse_swt_widgets_combo_9(result, new_selected_char_range, NSRange.attr_sizeof)
      return result
    end
    
    typesig { [String, ::Java::Int, ::Java::Int, NSEvent] }
    def verify_text(string, start, end_, key_event)
      event = Event.new
      if (!(key_event).nil?)
        set_key_state(event, SWT::MouseDown, key_event)
      end
      event.attr_text = string
      event.attr_start = start
      event.attr_end = end_
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
