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
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
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
    
    # int
    attr_accessor :button_handle
    alias_method :attr_button_handle, :button_handle
    undef_method :button_handle
    alias_method :attr_button_handle=, :button_handle=
    undef_method :button_handle=
    
    attr_accessor :entry_handle
    alias_method :attr_entry_handle, :entry_handle
    undef_method :entry_handle
    alias_method :attr_entry_handle=, :entry_handle=
    undef_method :entry_handle=
    
    attr_accessor :list_handle
    alias_method :attr_list_handle, :list_handle
    undef_method :list_handle
    alias_method :attr_list_handle=, :list_handle=
    undef_method :list_handle=
    
    attr_accessor :text_renderer
    alias_method :attr_text_renderer, :text_renderer
    undef_method :text_renderer
    alias_method :attr_text_renderer=, :text_renderer=
    undef_method :text_renderer=
    
    attr_accessor :cell_handle
    alias_method :attr_cell_handle, :cell_handle
    undef_method :cell_handle
    alias_method :attr_cell_handle=, :cell_handle=
    undef_method :cell_handle=
    
    attr_accessor :popup_handle
    alias_method :attr_popup_handle, :popup_handle
    undef_method :popup_handle
    alias_method :attr_popup_handle=, :popup_handle=
    undef_method :popup_handle=
    
    attr_accessor :last_event_time
    alias_method :attr_last_event_time, :last_event_time
    undef_method :last_event_time
    alias_method :attr_last_event_time=, :last_event_time=
    undef_method :last_event_time=
    
    attr_accessor :visible_count
    alias_method :attr_visible_count, :visible_count
    undef_method :visible_count
    alias_method :attr_visible_count=, :visible_count=
    undef_method :visible_count=
    
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
    
    attr_accessor :items
    alias_method :attr_items, :items
    undef_method :items
    alias_method :attr_items=, :items=
    undef_method :items=
    
    attr_accessor :ignore_select
    alias_method :attr_ignore_select, :ignore_select
    undef_method :ignore_select
    alias_method :attr_ignore_select=, :ignore_select=
    undef_method :ignore_select=
    
    attr_accessor :lock_text
    alias_method :attr_lock_text, :lock_text
    undef_method :lock_text
    alias_method :attr_lock_text=, :lock_text=
    undef_method :lock_text=
    
    class_module.module_eval {
      # These values can be different on different platforms.
      # Therefore they are not initialized in the declaration
      # to stop the compiler from inlining.
      when_class_loaded do
        const_set :LIMIT, 0xffff
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
      @button_handle = 0
      @entry_handle = 0
      @list_handle = 0
      @text_renderer = 0
      @cell_handle = 0
      @popup_handle = 0
      @last_event_time = 0
      @visible_count = 0
      @gdk_event_key = 0
      @fix_start = 0
      @fix_end = 0
      @items = nil
      @ignore_select = false
      @lock_text = false
      super(parent, check_style(style))
      @visible_count = 5
      @gdk_event_key = 0
      @fix_start = -1
      @fix_end = -1
      @items = Array.typed(String).new(0) { nil }
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
      add(string, @items.attr_length)
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
      if (!(0 <= index && index <= @items.attr_length))
        error(SWT::ERROR_INVALID_RANGE)
      end
      new_items = Array.typed(String).new(@items.attr_length + 1) { nil }
      System.arraycopy(@items, 0, new_items, 0, index)
      new_items[index] = string
      System.arraycopy(@items, index, new_items, index + 1, @items.attr_length - index)
      @items = new_items
      buffer = Converter.wcs_to_mbcs(nil, string, true)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        OS.gtk_combo_box_insert_text(self.attr_handle, index, buffer)
        if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0) && !(@popup_handle).equal?(0))
          OS.gtk_container_forall(@popup_handle, self.attr_display.attr_set_direction_proc, OS::GTK_TEXT_DIR_RTL)
        end
      else
        # Feature in GTK. When the list is empty and the first item
        # is added, the combo box selects that item replacing the
        # text in the entry field.  The fix is to avoid this by
        # stopping the "delete" and "insert_text" signal emission.
        @ignore_select = @lock_text = true
        # int
        item = OS.gtk_list_item_new_with_label(buffer)
        # int
        label = OS.gtk_bin_get_child(item)
        set_foreground_color(label, get_foreground_color)
        OS.gtk_widget_modify_font(label, get_font_description)
        OS.gtk_widget_set_direction(label, OS.gtk_widget_get_direction(self.attr_handle))
        OS.gtk_widget_show(item)
        # int
        items = OS.g_list_append(0, item)
        OS.gtk_list_insert_items(@list_handle, items, index)
        @ignore_select = @lock_text = false
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
      if (!(@entry_handle).equal?(0))
        position = OS.gtk_editable_get_position(@entry_handle)
        OS.gtk_editable_select_region(@entry_handle, position, position)
      end
    end
    
    typesig { [] }
    def clear_text
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
        if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
          index = OS.gtk_combo_box_get_active(self.attr_handle)
          if (!(index).equal?(-1))
            # int
            model_handle = OS.gtk_combo_box_get_model(self.attr_handle)
            # int
            # int
            ptr = Array.typed(::Java::Long).new(1) { 0 }
            # int
            iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
            OS.gtk_tree_model_iter_nth_child(model_handle, iter, 0, index)
            OS.gtk_tree_model_get(model_handle, iter, 0, ptr, -1)
            OS.g_free(iter)
            if (!(ptr[0]).equal?(0) && OS.strlen(ptr[0]) > 0)
              post_event___org_eclipse_swt_widgets_combo_1(SWT::Modify)
            end
            OS.g_free(ptr[0])
          end
        else
          OS.gtk_entry_set_text(@entry_handle, Array.typed(::Java::Byte).new(1) { 0 })
        end
        OS.gtk_combo_box_set_active(self.attr_handle, -1)
        OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        return compute_native_size(self.attr_handle, w_hint, h_hint, changed)
      end
      if (!(w_hint).equal?(SWT::DEFAULT) && w_hint < 0)
        w_hint = 0
      end
      if (!(h_hint).equal?(SWT::DEFAULT) && h_hint < 0)
        h_hint = 0
      end
      w = Array.typed(::Java::Int).new(1) { 0 }
      h = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_widget_realize(@entry_handle)
      # int
      layout = OS.gtk_entry_get_layout(@entry_handle)
      OS.pango_layout_get_size(layout, w, h)
      xborder = Display::INNER_BORDER
      yborder = Display::INNER_BORDER
      # int
      style = OS.gtk_widget_get_style(@entry_handle)
      xborder += OS.gtk_style_get_xthickness(style)
      yborder += OS.gtk_style_get_ythickness(style)
      property = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_widget_style_get(@entry_handle, OS.attr_interior_focus, property, 0)
      if ((property[0]).equal?(0))
        OS.gtk_widget_style_get(@entry_handle, OS.attr_focus_line_width, property, 0)
        xborder += property[0]
        yborder += property[0]
      end
      width = OS._pango_pixels(w[0]) + xborder * 2
      height = OS._pango_pixels(h[0]) + yborder * 2
      arrow_requesition = GtkRequisition.new
      OS.gtk_widget_size_request(@button_handle, arrow_requesition)
      list_requesition = GtkRequisition.new
      # int
      list_parent = OS.gtk_widget_get_parent(@list_handle)
      OS.gtk_widget_size_request(!(list_parent).equal?(0) ? list_parent : @list_handle, list_requesition)
      width = Math.max(list_requesition.attr_width, width) + arrow_requesition.attr_width + 4
      width = (w_hint).equal?(SWT::DEFAULT) ? width : w_hint
      height = (h_hint).equal?(SWT::DEFAULT) ? height : h_hint
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
      if (!(@entry_handle).equal?(0))
        OS.gtk_editable_copy_clipboard(@entry_handle)
      end
    end
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE | MENU
      self.attr_fixed_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
      if ((self.attr_fixed_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_fixed_set_has_window(self.attr_fixed_handle, true)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        # int
        old_list = OS.gtk_window_list_toplevels
        if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
          self.attr_handle = OS.gtk_combo_box_new_text
          if ((self.attr_handle).equal?(0))
            error(SWT::ERROR_NO_HANDLES)
          end
          @cell_handle = OS.gtk_bin_get_child(self.attr_handle)
          if ((@cell_handle).equal?(0))
            error(SWT::ERROR_NO_HANDLES)
          end
        else
          self.attr_handle = OS.gtk_combo_box_entry_new_text
          if ((self.attr_handle).equal?(0))
            error(SWT::ERROR_NO_HANDLES)
          end
          @entry_handle = OS.gtk_bin_get_child(self.attr_handle)
          if ((@entry_handle).equal?(0))
            error(SWT::ERROR_NO_HANDLES)
          end
        end
        @popup_handle = find_popup_handle(old_list)
        OS.gtk_container_add(self.attr_fixed_handle, self.attr_handle)
        @text_renderer = OS.gtk_cell_renderer_text_new
        if ((@text_renderer).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        # Feature in GTK. In order to make a read only combo box the same
        # height as an editable combo box the ypad must be set to 0. In
        # versions 2.4.x of GTK, a pad of 0 will clip some letters. The
        # fix is to set the pad to 1.
        pad = 0
        if (OS::GTK_VERSION < OS._version(2, 6, 0))
          pad = 1
        end
        OS.g_object_set(@text_renderer, OS.attr_ypad, pad, 0)
        # Feature in GTK.  In version 2.4.9 of GTK, a warning is issued
        # when a call to gtk_cell_layout_clear() is made. The fix is to hide
        # the warning.
        warnings = self.attr_display.get_warnings
        self.attr_display.set_warnings(false)
        OS.gtk_cell_layout_clear(self.attr_handle)
        self.attr_display.set_warnings(warnings)
        OS.gtk_cell_layout_pack_start(self.attr_handle, @text_renderer, true)
        OS.gtk_cell_layout_set_attributes(self.attr_handle, @text_renderer, OS.attr_text, 0, 0)
        # Feature in GTK.  There is no API to query the button
        # handle from a combo box although it is possible to get the
        # text field.  The button handle is needed to hook events.  The
        # fix is to walk the combo tree and find the first child that is
        # an instance of button.
        OS.gtk_container_forall(self.attr_handle, self.attr_display.attr_all_children_proc, 0)
        if (!(self.attr_display.attr_all_children).equal?(0))
          # int
          list = self.attr_display.attr_all_children
          while (!(list).equal?(0))
            # int
            widget = OS.g_list_data(list)
            if (OS._gtk_is_button(widget))
              @button_handle = widget
              break
            end
            list = OS.g_list_next(list)
          end
          OS.g_list_free(self.attr_display.attr_all_children)
          self.attr_display.attr_all_children = 0
        end
        # Feature in GTK. By default, read only combo boxes
        # process the RETURN key rather than allowing the
        # default button to process the key. The fix is to
        # clear the GTK_RECEIVES_DEFAULT flag.
        if (!((self.attr_style & SWT::READ_ONLY)).equal?(0) && !(@button_handle).equal?(0))
          OS._gtk_widget_unset_flags(@button_handle, OS::GTK_RECEIVES_DEFAULT)
        end
      else
        self.attr_handle = OS.gtk_combo_new
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_container_add(self.attr_fixed_handle, self.attr_handle)
        combo = GtkCombo.new
        OS.memmove___org_eclipse_swt_widgets_combo_3(combo, self.attr_handle)
        @entry_handle = combo.attr_entry
        @list_handle = combo.attr_list
        if (OS::GTK_VERSION < OS._version(2, 4, 0))
          # int
          parent_handle = 0
          # int
          temp = @list_handle
          while (!((temp = OS.gtk_widget_get_parent(temp))).equal?(0))
            parent_handle = temp
          end
          @popup_handle = parent_handle
          if (!(@popup_handle).equal?(0))
            # int
            modal_group = get_shell.attr_modal_group
            if (!(modal_group).equal?(0))
              OS.gtk_window_group_add_window(modal_group, @popup_handle)
            end
          end
        end
        # Feature in GTK.  There is no API to query the arrow
        # handle from a combo box although it is possible to
        # get the list and text field.  The arrow handle is needed
        # to hook events.  The fix is to find the first child that is
        # not the entry or list and assume this is the arrow handle.
        # 
        # int
        list = OS.gtk_container_get_children(self.attr_handle)
        if (!(list).equal?(0))
          i = 0
          count = OS.g_list_length(list)
          while (i < count)
            # int
            child_handle = OS.g_list_nth_data(list, i)
            if (!(child_handle).equal?(@entry_handle) && !(child_handle).equal?(@list_handle))
              @button_handle = child_handle
              break
            end
            i += 1
          end
          OS.g_list_free(list)
        end
        editable = ((self.attr_style & SWT::READ_ONLY)).equal?(0)
        OS.gtk_editable_set_editable(@entry_handle, editable)
        OS.gtk_combo_disable_activate(self.attr_handle)
        OS.gtk_combo_set_case_sensitive(self.attr_handle, true)
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
      if (!(@entry_handle).equal?(0))
        OS.gtk_editable_cut_clipboard(@entry_handle)
      end
    end
    
    typesig { [] }
    def deregister
      super
      if (!(@button_handle).equal?(0))
        self.attr_display.remove_widget(@button_handle)
      end
      if (!(@entry_handle).equal?(0))
        self.attr_display.remove_widget(@entry_handle)
      end
      if (!(@list_handle).equal?(0))
        self.attr_display.remove_widget(@list_handle)
      end
      # int
      im_context_ = im_context
      if (!(im_context_).equal?(0))
        self.attr_display.remove_widget(im_context_)
      end
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
    
    typesig { [::Java::Long] }
    # int
    # int
    def find_popup_handle(old_list)
      # int
      hdl = 0
      # int
      current_list = OS.gtk_window_list_toplevels
      # int
      old_from_list = old_list
      # int
      new_from_list = current_list
      is_found = false
      while (!(new_from_list).equal?(0))
        # int
        new_toplevel = OS.g_list_data(new_from_list)
        is_found = false
        old_from_list = old_list
        while (!(old_from_list).equal?(0))
          # int
          old_toplevel = OS.g_list_data(old_from_list)
          if ((new_toplevel).equal?(old_toplevel))
            is_found = true
            break
          end
          old_from_list = OS.g_list_next(old_from_list)
        end
        if (!is_found)
          hdl = new_toplevel
          break
        end
        new_from_list = OS.g_list_next(new_from_list)
      end
      OS.g_list_free(old_list)
      OS.g_list_free(current_list)
      return hdl
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def fix_modal(group, modal_group)
      if (!(@popup_handle).equal?(0))
        if (!(group).equal?(0))
          OS.gtk_window_group_add_window(group, @popup_handle)
        else
          if (!(modal_group).equal?(0))
            OS.gtk_window_group_remove_window(modal_group, @popup_handle)
          end
        end
      end
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
    # int
    def font_handle
      if (!(@entry_handle).equal?(0))
        return @entry_handle
      end
      return super
    end
    
    typesig { [] }
    # int
    def focus_handle
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        if (!((self.attr_style & SWT::READ_ONLY)).equal?(0) && !(@button_handle).equal?(0))
          return @button_handle
        end
      end
      if (!(@entry_handle).equal?(0))
        return @entry_handle
      end
      return super
    end
    
    typesig { [] }
    def has_focus
      if (super)
        return true
      end
      if (!(@entry_handle).equal?(0) && OS._gtk_widget_has_focus(@entry_handle))
        return true
      end
      if (!(@list_handle).equal?(0) && OS._gtk_widget_has_focus(@list_handle))
        return true
      end
      return false
    end
    
    typesig { [] }
    def hook_events
      super
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        OS.g_signal_connect_closure(self.attr_handle, OS.attr_changed, self.attr_display.attr_closures[CHANGED], true)
      end
      if (!(@entry_handle).equal?(0))
        OS.g_signal_connect_closure(@entry_handle, OS.attr_changed, self.attr_display.attr_closures[CHANGED], true)
        OS.g_signal_connect_closure(@entry_handle, OS.attr_insert_text, self.attr_display.attr_closures[INSERT_TEXT], false)
        OS.g_signal_connect_closure(@entry_handle, OS.attr_delete_text, self.attr_display.attr_closures[DELETE_TEXT], false)
        OS.g_signal_connect_closure(@entry_handle, OS.attr_activate, self.attr_display.attr_closures[ACTIVATE], false)
        OS.g_signal_connect_closure(@entry_handle, OS.attr_populate_popup, self.attr_display.attr_closures[POPULATE_POPUP], false)
      end
      event_mask = OS::GDK_POINTER_MOTION_MASK | OS::GDK_BUTTON_PRESS_MASK | OS::GDK_BUTTON_RELEASE_MASK
      # int
      # int
      handles = Array.typed(::Java::Long).new([@button_handle, @entry_handle, @list_handle])
      i = 0
      while i < handles.attr_length
        # int
        event_handle = handles[i]
        if (!(event_handle).equal?(0))
          # Connect the mouse signals
          OS.gtk_widget_add_events(event_handle, event_mask)
          OS.g_signal_connect_closure_by_id(event_handle, self.attr_display.attr_signal_ids[BUTTON_PRESS_EVENT], 0, self.attr_display.attr_closures[BUTTON_PRESS_EVENT], false)
          OS.g_signal_connect_closure_by_id(event_handle, self.attr_display.attr_signal_ids[BUTTON_RELEASE_EVENT], 0, self.attr_display.attr_closures[BUTTON_RELEASE_EVENT], false)
          OS.g_signal_connect_closure_by_id(event_handle, self.attr_display.attr_signal_ids[MOTION_NOTIFY_EVENT], 0, self.attr_display.attr_closures[MOTION_NOTIFY_EVENT], false)
          # Feature in GTK.  Events such as mouse move are propagated up
          # the widget hierarchy and are seen by the parent.  This is the
          # correct GTK behavior but not correct for SWT.  The fix is to
          # hook a signal after and stop the propagation using a negative
          # event number to distinguish this case.
          OS.g_signal_connect_closure_by_id(event_handle, self.attr_display.attr_signal_ids[BUTTON_PRESS_EVENT], 0, self.attr_display.attr_closures[BUTTON_PRESS_EVENT_INVERSE], true)
          OS.g_signal_connect_closure_by_id(event_handle, self.attr_display.attr_signal_ids[BUTTON_RELEASE_EVENT], 0, self.attr_display.attr_closures[BUTTON_RELEASE_EVENT_INVERSE], true)
          OS.g_signal_connect_closure_by_id(event_handle, self.attr_display.attr_signal_ids[MOTION_NOTIFY_EVENT], 0, self.attr_display.attr_closures[MOTION_NOTIFY_EVENT_INVERSE], true)
          # Connect the event_after signal for both key and mouse
          if (!(event_handle).equal?(focus_handle))
            OS.g_signal_connect_closure_by_id(event_handle, self.attr_display.attr_signal_ids[EVENT_AFTER], 0, self.attr_display.attr_closures[EVENT_AFTER], false)
          end
        end
        i += 1
      end
      # int
      im_context_ = im_context
      if (!(im_context_).equal?(0))
        OS.g_signal_connect_closure(im_context_, OS.attr_commit, self.attr_display.attr_closures[COMMIT], false)
        id = OS.g_signal_lookup(OS.attr_commit, OS.gtk_im_context_get_type)
        block_mask = OS::G_SIGNAL_MATCH_DATA | OS::G_SIGNAL_MATCH_ID
        OS.g_signal_handlers_block_matched(im_context_, block_mask, id, 0, 0, 0, @entry_handle)
      end
    end
    
    typesig { [] }
    # int
    def im_context
      return !(@entry_handle).equal?(0) ? OS._gtk_entry_im_context(@entry_handle) : 0
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
      if (index < 0 || index >= @items.attr_length)
        return
      end
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        if ((OS.gtk_combo_box_get_active(self.attr_handle)).equal?(index))
          clear_text
        end
      else
        @ignore_select = true
        # int
        children = OS.gtk_container_get_children(@list_handle)
        # int
        item = OS.g_list_nth_data(children, index)
        selected = (OS._gtk_widget_state(item)).equal?(OS::GTK_STATE_SELECTED)
        if (selected)
          OS.gtk_list_unselect_all(@list_handle)
          OS.gtk_entry_set_text(@entry_handle, Array.typed(::Java::Byte).new(1) { 0 })
        end
        OS.g_list_free(children)
        @ignore_select = false
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
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        clear_text
      else
        @ignore_select = true
        OS.gtk_list_unselect_all(@list_handle)
        OS.gtk_entry_set_text(@entry_handle, Array.typed(::Java::Byte).new(1) { 0 })
        @ignore_select = false
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Boolean)] }
    def drag_detect(x, y, filter, consume)
      if (filter && !(@entry_handle).equal?(0))
        index = Array.typed(::Java::Int).new(1) { 0 }
        trailing = Array.typed(::Java::Int).new(1) { 0 }
        # int
        layout = OS.gtk_entry_get_layout(@entry_handle)
        OS.pango_layout_xy_to_index(layout, x * OS::PANGO_SCALE, y * OS::PANGO_SCALE, index, trailing)
        # int
        ptr = OS.pango_layout_get_text(layout)
        # 64
        position = RJava.cast_to_int(OS.g_utf8_pointer_to_offset(ptr, ptr + index[0])) + trailing[0]
        selection = get_selection
        if (selection.attr_x <= position && position < selection.attr_y)
          if (super(x, y, filter, consume))
            if (!(consume).nil?)
              consume[0] = true
            end
            return true
          end
        end
        return false
      end
      return super(x, y, filter, consume)
    end
    
    typesig { [] }
    # int
    def enter_exit_handle
      return self.attr_fixed_handle
    end
    
    typesig { [] }
    # int
    def event_window
      return paint_window
    end
    
    typesig { [] }
    def get_background_color
      return get_base_color
    end
    
    typesig { [] }
    def get_foreground_color
      return get_text_color
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
      if (!(0 <= index && index < @items.attr_length))
        error(SWT::ERROR_INVALID_RANGE)
      end
      return @items[index]
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
      return @items.attr_length
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
      return font_height(get_font_description, !(@list_handle).equal?(0) ? @list_handle : self.attr_handle)
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
      result = Array.typed(String).new(@items.attr_length) { nil }
      System.arraycopy(@items, 0, result, 0, @items.attr_length)
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
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        return !(@popup_handle).equal?(0) && OS._gtk_widget_visible(@popup_handle)
      end
      return false
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
        length = 0
        if (OS::GTK_VERSION >= OS._version(2, 4, 0))
          index = OS.gtk_combo_box_get_active(self.attr_handle)
          if (!(index).equal?(-1))
            length = get_item(index).length
          end
        else
          # int
          str = OS.gtk_entry_get_text(@entry_handle)
          if (!(str).equal?(0))
            # 64
            length = RJava.cast_to_int(OS.g_utf8_strlen(str, -1))
          end
        end
        return Point.new(0, length)
      end
      start = Array.typed(::Java::Int).new(1) { 0 }
      end_ = Array.typed(::Java::Int).new(1) { 0 }
      if (!(@entry_handle).equal?(0))
        OS.gtk_editable_get_selection_bounds(@entry_handle, start, end_)
      end
      return Point.new(start[0], end_[0])
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
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        return OS.gtk_combo_box_get_active(self.attr_handle)
      end
      index = 0
      result = -1
      # int
      children = OS.gtk_container_get_children(@list_handle)
      # int
      temp = children
      while (!(temp).equal?(0))
        # int
        item = OS.g_list_data(temp)
        if ((OS._gtk_widget_state(item)).equal?(OS::GTK_STATE_SELECTED))
          result = index
          break
        end
        index += 1
        temp = OS.g_list_next(temp)
      end
      OS.g_list_free(children)
      return result
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
      if (!(@entry_handle).equal?(0))
        # int
        str = OS.gtk_entry_get_text(@entry_handle)
        if ((str).equal?(0))
          return ""
        end
        length = OS.strlen(str)
        buffer = Array.typed(::Java::Byte).new(length) { 0 }
        OS.memmove___org_eclipse_swt_widgets_combo_5(buffer, str, length)
        return String.new(Converter.mbcs_to_wcs(nil, buffer))
      else
        index = OS.gtk_combo_box_get_active(self.attr_handle)
        return !(index).equal?(-1) ? get_item(index) : ""
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def get_text(start, stop)
      # NOTE: The current implementation uses substring ()
      # which can reference a potentially large character
      # array.
      return get_text.substring(start, stop - 1)
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
      requisition = GtkRequisition.new
      gtk_widget_size_request(self.attr_handle, requisition)
      return OS._gtk_widget_requisition_height(self.attr_handle)
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
      limit = !(@entry_handle).equal?(0) ? OS.gtk_entry_get_max_length(@entry_handle) : 0
      return (limit).equal?(0) ? LIMIT : limit
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
      return @visible_count
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def gtk_activate(widget)
      post_event___org_eclipse_swt_widgets_combo_7(SWT::DefaultSelection)
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_button_press_event(widget, event)
      # Feature in GTK. Depending on where the user clicks, GTK prevents
      # the left mouse button event from being propagated. The fix is to
      # send the mouse event from the event_after handler.
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        gdk_event = GdkEventButton.new
        OS.memmove___org_eclipse_swt_widgets_combo_9(gdk_event, event, GdkEventButton.attr_sizeof)
        if ((gdk_event.attr_type).equal?(OS::GDK_BUTTON_PRESS) && (gdk_event.attr_button).equal?(1) && !((self.attr_style & SWT::READ_ONLY)).equal?(0))
          return gtk_button_press_event(widget, event, false)
        end
      end
      return super(widget, event)
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def gtk_changed(widget)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        if ((widget).equal?(self.attr_handle))
          if ((@entry_handle).equal?(0))
            send_event(SWT::Modify)
            if (is_disposed)
              return 0
            end
          end
          # Feature in GTK.  GTK emits a changed signal whenever
          # the contents of a combo box are altered by typing or
          # by selecting an item in the list, but the event should
          # only be sent when the list is selected. The fix is to
          # only send out a selection event when there is a selected
          # item.
          # 
          # NOTE: This code relies on GTK clearing the selected
          # item and not matching the item as the user types.
          index = OS.gtk_combo_box_get_active(self.attr_handle)
          if (!(index).equal?(-1))
            post_event___org_eclipse_swt_widgets_combo_11(SWT::Selection)
          end
          return 0
        end
      else
        if (!@ignore_select)
          # int
          ptr = OS.gtk_entry_get_text(@entry_handle)
          length = OS.strlen(ptr)
          buffer = Array.typed(::Java::Byte).new(length) { 0 }
          OS.memmove___org_eclipse_swt_widgets_combo_13(buffer, ptr, length)
          text = String.new(Converter.mbcs_to_wcs(nil, buffer))
          i = 0
          while i < @items.attr_length
            if ((@items[i] == text))
              post_event___org_eclipse_swt_widgets_combo_15(SWT::Selection)
              break
            end
            i += 1
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
        OS.memmove___org_eclipse_swt_widgets_combo_17(gdk_event, event_ptr, GdkEventKey.attr_sizeof)
        case (gdk_event.attr_type)
        when OS::GDK_KEY_PRESS
          key_press = true
        end
        OS.gdk_event_free(event_ptr)
      end
      if (key_press)
        post_event___org_eclipse_swt_widgets_combo_19(SWT::Modify)
      else
        send_event(SWT::Modify)
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
      if (!OS.gtk_editable_get_editable(@entry_handle))
        return 0
      end
      length = OS.strlen(text)
      if ((length).equal?(0))
        return 0
      end
      buffer = Array.typed(::Java::Byte).new(length) { 0 }
      OS.memmove___org_eclipse_swt_widgets_combo_21(buffer, text, length)
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
      OS.g_signal_handlers_unblock_matched(im_context_, mask, id, 0, 0, 0, @entry_handle)
      if ((new_chars).equal?(chars))
        OS.g_signal_emit_by_name(im_context_, OS.attr_commit, text)
      else
        buffer = Converter.wcs_to_mbcs(nil, new_chars, true)
        OS.g_signal_emit_by_name(im_context_, OS.attr_commit, buffer)
      end
      OS.g_signal_handlers_unblock_matched(im_context_, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, COMMIT)
      OS.g_signal_handlers_block_matched(im_context_, mask, id, 0, 0, 0, @entry_handle)
      if (!(@fix_start).equal?(-1) && !(@fix_end).equal?(-1))
        OS.gtk_editable_set_position(@entry_handle, @fix_start)
        OS.gtk_editable_select_region(@entry_handle, @fix_start, @fix_end)
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
      if (@lock_text)
        OS.gtk_list_unselect_item(@list_handle, 0)
        OS.g_signal_stop_emission_by_name(@entry_handle, OS.attr_delete_text)
        return 0
      end
      if (!hooks(SWT::Verify) && !filters(SWT::Verify))
        return 0
      end
      # 64
      # 64
      new_text = verify_text("", RJava.cast_to_int(start_pos), RJava.cast_to_int(end_pos))
      if ((new_text).nil?)
        OS.g_signal_stop_emission_by_name(@entry_handle, OS.attr_delete_text)
      else
        if (new_text.length > 0)
          pos = Array.typed(::Java::Int).new(1) { 0 }
          # 64
          pos[0] = RJava.cast_to_int(end_pos)
          buffer = Converter.wcs_to_mbcs(nil, new_text, false)
          OS.g_signal_handlers_block_matched(@entry_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
          OS.g_signal_handlers_block_matched(@entry_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, INSERT_TEXT)
          OS.gtk_editable_insert_text(@entry_handle, buffer, buffer.attr_length, pos)
          OS.g_signal_handlers_unblock_matched(@entry_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, INSERT_TEXT)
          OS.g_signal_handlers_unblock_matched(@entry_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
          OS.gtk_editable_set_position(@entry_handle, pos[0])
        end
      end
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_event_after(widget, gdk_event)
      # Feature in GTK. Depending on where the user clicks, GTK prevents
      # the left mouse button event from being propagated. The fix is to
      # send the mouse event from the event_after handler.
      # 
      # Feature in GTK. When the user clicks anywhere in an editable
      # combo box, a single focus event should be issued, despite the
      # fact that focus might switch between the drop down button and
      # the text field. The fix is to use gtk_combo_box_set_focus_on_click ()
      # to eat all focus events while focus is in the combo box. When the
      # user clicks on the drop down button focus is assigned to the text
      # field.
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        event = GdkEvent.new
        OS.memmove___org_eclipse_swt_widgets_combo_23(event, gdk_event, GdkEvent.attr_sizeof)
        case (event.attr_type)
        when OS::GDK_BUTTON_PRESS
          gdk_event_button = GdkEventButton.new
          OS.memmove___org_eclipse_swt_widgets_combo_25(gdk_event_button, gdk_event, GdkEventButton.attr_sizeof)
          if ((gdk_event_button.attr_button).equal?(1))
            if (!((self.attr_style & SWT::READ_ONLY)).equal?(0) && !send_mouse_event___org_eclipse_swt_widgets_combo_27(SWT::MouseDown, gdk_event_button.attr_button, self.attr_display.attr_click_count, 0, false, gdk_event_button.attr_time, gdk_event_button.attr_x_root, gdk_event_button.attr_y_root, false, gdk_event_button.attr_state))
              return 1
            end
            if (OS::GTK_VERSION >= OS._version(2, 6, 0))
              if (((self.attr_style & SWT::READ_ONLY)).equal?(0) && (widget).equal?(@button_handle))
                OS.gtk_widget_grab_focus(@entry_handle)
              end
            end
          end
        when OS::GDK_FOCUS_CHANGE
          if (OS::GTK_VERSION >= OS._version(2, 6, 0))
            if (((self.attr_style & SWT::READ_ONLY)).equal?(0))
              gdk_event_focus = GdkEventFocus.new
              OS.memmove___org_eclipse_swt_widgets_combo_29(gdk_event_focus, gdk_event, GdkEventFocus.attr_sizeof)
              if (!(gdk_event_focus.attr_in).equal?(0))
                OS.gtk_combo_box_set_focus_on_click(self.attr_handle, false)
              else
                OS.gtk_combo_box_set_focus_on_click(self.attr_handle, true)
              end
            end
          end
        end
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
      if (@lock_text)
        OS.gtk_list_unselect_item(@list_handle, 0)
        OS.g_signal_stop_emission_by_name(@entry_handle, OS.attr_insert_text)
        return 0
      end
      if (!hooks(SWT::Verify) && !filters(SWT::Verify))
        return 0
      end
      if ((new_text).equal?(0) || (new_text_length).equal?(0))
        return 0
      end
      # 64
      buffer = Array.typed(::Java::Byte).new(RJava.cast_to_int(new_text_length)) { 0 }
      OS.memmove___org_eclipse_swt_widgets_combo_31(buffer, new_text, buffer.attr_length)
      old_text = String.new(Converter.mbcs_to_wcs(nil, buffer))
      pos = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove___org_eclipse_swt_widgets_combo_33(pos, position, 4)
      if ((pos[0]).equal?(-1))
        # int
        ptr = OS.gtk_entry_get_text(@entry_handle)
        # 64
        pos[0] = RJava.cast_to_int(OS.g_utf8_strlen(ptr, -1))
      end
      new_text_ = verify_text(old_text, pos[0], pos[0])
      if (!(new_text_).equal?(old_text))
        new_start = Array.typed(::Java::Int).new(1) { 0 }
        new_end = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_editable_get_selection_bounds(@entry_handle, new_start, new_end)
        if (!(new_text_).nil?)
          if (!(new_start[0]).equal?(new_end[0]))
            OS.g_signal_handlers_block_matched(@entry_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, DELETE_TEXT)
            OS.g_signal_handlers_block_matched(@entry_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
            OS.gtk_editable_delete_selection(@entry_handle)
            OS.g_signal_handlers_unblock_matched(@entry_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, DELETE_TEXT)
            OS.g_signal_handlers_unblock_matched(@entry_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
          end
          buffer3 = Converter.wcs_to_mbcs(nil, new_text_, false)
          OS.g_signal_handlers_block_matched(@entry_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, INSERT_TEXT)
          OS.gtk_editable_insert_text(@entry_handle, buffer3, buffer3.attr_length, pos)
          OS.g_signal_handlers_unblock_matched(@entry_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, INSERT_TEXT)
          new_start[0] = new_end[0] = pos[0]
        end
        pos[0] = new_end[0]
        if (!(new_start[0]).equal?(new_end[0]))
          @fix_start = new_start[0]
          @fix_end = new_end[0]
        end
        OS.memmove___org_eclipse_swt_widgets_combo_35(position, pos, 4)
        OS.g_signal_stop_emission_by_name(@entry_handle, OS.attr_insert_text)
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
      if (OS::GTK_VERSION >= OS._version(2, 4, 0) && ((self.attr_style & SWT::READ_ONLY)).equal?(0))
        key_event = GdkEventKey.new
        OS.memmove___org_eclipse_swt_widgets_combo_37(key_event, event, GdkEventKey.attr_sizeof)
        old_index = OS.gtk_combo_box_get_active(self.attr_handle)
        new_index = old_index
        key = key_event.attr_keyval
        case (key)
        # Feature in GTK. In gtk_combo_box, the PageUp and PageDown keys
        # go the first and last items in the list rather than scrolling
        # a page at a time. The fix is to emulate this behavior for
        # gtk_combo_box_entry.
        when OS::GDK_Down, OS::GDK_KP_Down
          if (!(old_index).equal?((@items.attr_length - 1)))
            new_index = old_index + 1
          end
        when OS::GDK_Up, OS::GDK_KP_Up
          if (!(old_index).equal?(-1) && !(old_index).equal?(0))
            new_index = old_index - 1
          end
        when OS::GDK_Page_Up, OS::GDK_KP_Page_Up
          new_index = 0
        when OS::GDK_Page_Down, OS::GDK_KP_Page_Down
          new_index = @items.attr_length - 1
        end
        if (!(new_index).equal?(old_index))
          OS.gtk_combo_box_set_active(self.attr_handle, new_index)
          return 1
        end
      end
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
      check_widget
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
      if (!(0 <= start && start < @items.attr_length))
        return -1
      end
      i = start
      while i < @items.attr_length
        if ((string == @items[i]))
          return i
        end
        i += 1
      end
      return -1
    end
    
    typesig { [::Java::Int] }
    def is_focus_handle(widget)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        if (!(@button_handle).equal?(0) && (widget).equal?(@button_handle))
          return true
        end
        if (!(@entry_handle).equal?(0) && (widget).equal?(@entry_handle))
          return true
        end
      end
      return super(widget)
    end
    
    typesig { [] }
    # int
    def paint_window
      # int
      child_handle = !(@entry_handle).equal?(0) ? @entry_handle : self.attr_handle
      OS.gtk_widget_realize(child_handle)
      # int
      window = OS._gtk_widget_window(child_handle)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
          return window
        end
      end
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
    # 
    # @since 2.1
    def paste
      check_widget
      if (!(@entry_handle).equal?(0))
        OS.gtk_editable_paste_clipboard(@entry_handle)
      end
    end
    
    typesig { [] }
    # int
    def parenting_handle
      return self.attr_fixed_handle
    end
    
    typesig { [] }
    def register
      super
      if (!(@button_handle).equal?(0))
        self.attr_display.add_widget(@button_handle, self)
      end
      if (!(@entry_handle).equal?(0))
        self.attr_display.add_widget(@entry_handle, self)
      end
      if (!(@list_handle).equal?(0))
        self.attr_display.add_widget(@list_handle, self)
      end
      # int
      im_context_ = im_context
      if (!(im_context_).equal?(0))
        self.attr_display.add_widget(im_context_, self)
      end
    end
    
    typesig { [] }
    def release_handle
      super
      @button_handle = @entry_handle = @list_handle = 0
    end
    
    typesig { [] }
    def release_widget
      super
      @text_renderer = 0
      fix_im
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
      if (!(0 <= index && index < @items.attr_length))
        error(SWT::ERROR_INVALID_RANGE)
      end
      old_items = @items
      new_items = Array.typed(String).new(old_items.attr_length - 1) { nil }
      System.arraycopy(old_items, 0, new_items, 0, index)
      System.arraycopy(old_items, index + 1, new_items, index, old_items.attr_length - index - 1)
      @items = new_items
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        if ((OS.gtk_combo_box_get_active(self.attr_handle)).equal?(index))
          clear_text
        end
        OS.gtk_combo_box_remove_text(self.attr_handle, index)
      else
        @ignore_select = true
        # int
        children = OS.gtk_container_get_children(@list_handle)
        # int
        item = OS.g_list_nth_data(children, index)
        selected = (OS._gtk_widget_state(item)).equal?(OS::GTK_STATE_SELECTED)
        # int
        items = OS.g_list_append(0, item)
        OS.gtk_list_remove_items(@list_handle, items)
        OS.g_list_free(items)
        OS.g_list_free(children)
        if (selected)
          OS.gtk_entry_set_text(@entry_handle, Array.typed(::Java::Byte).new(1) { 0 })
        end
        @ignore_select = false
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
      if (!(0 <= start && start <= end_ && end_ < @items.attr_length))
        error(SWT::ERROR_INVALID_RANGE)
      end
      old_items = @items
      new_items = Array.typed(String).new(old_items.attr_length - (end_ - start + 1)) { nil }
      System.arraycopy(old_items, 0, new_items, 0, start)
      System.arraycopy(old_items, end_ + 1, new_items, start, old_items.attr_length - end_ - 1)
      @items = new_items
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        index = OS.gtk_combo_box_get_active(self.attr_handle)
        if (start <= index && index <= end_)
          clear_text
        end
        i = end_
        while i >= start
          OS.gtk_combo_box_remove_text(self.attr_handle, i)
          i -= 1
        end
      else
        selected = false
        @ignore_select = true
        # int
        items = 0
        # int
        children = OS.gtk_container_get_children(@list_handle)
        i = start
        while i <= end_
          # int
          item = OS.g_list_nth_data(children, i)
          selected |= (OS._gtk_widget_state(item)).equal?(OS::GTK_STATE_SELECTED)
          items = OS.g_list_append(items, item)
          i += 1
        end
        OS.gtk_list_remove_items(@list_handle, items)
        OS.g_list_free(items)
        OS.g_list_free(children)
        if (selected)
          OS.gtk_entry_set_text(@entry_handle, Array.typed(::Java::Byte).new(1) { 0 })
        end
        @ignore_select = false
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
      count = @items.attr_length
      @items = Array.typed(String).new(0) { nil }
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        clear_text
        i = count - 1
        while i >= 0
          OS.gtk_combo_box_remove_text(self.attr_handle, i)
          i -= 1
        end
      else
        @ignore_select = true
        OS.gtk_list_clear_items(@list_handle, 0, -1)
        OS.gtk_entry_set_text(@entry_handle, Array.typed(::Java::Byte).new(1) { 0 })
        @ignore_select = false
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
      if (index < 0 || index >= @items.attr_length)
        return
      end
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
        OS.gtk_combo_box_set_active(self.attr_handle, index)
        OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
        if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
          # Feature in GTK. Read Only combo boxes do not get a chance to send out a
          # Modify event in the gtk_changed callback. The fix is to send a Modify event
          # here.
          send_event(SWT::Modify)
        end
      else
        @ignore_select = true
        OS.gtk_list_select_item(@list_handle, index)
        @ignore_select = false
      end
    end
    
    typesig { [GdkColor] }
    def set_background_color(color)
      super(color)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        if (!(@entry_handle).equal?(0))
          OS.gtk_widget_modify_base(@entry_handle, 0, color)
        end
        OS.g_object_set(@text_renderer, OS.attr_background_gdk, color, 0)
      else
        OS.gtk_widget_modify_base(@entry_handle, 0, color)
        if (!(@list_handle).equal?(0))
          OS.gtk_widget_modify_base(@list_handle, 0, color)
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize)
      new_height = height
      if (resize)
        new_height = Math.max(get_text_height, height)
      end
      return super(x, y, width, new_height, move, resize)
    end
    
    typesig { [::Java::Long] }
    # int
    def set_font_description(font)
      super(font)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        if (!(@entry_handle).equal?(0))
          OS.gtk_widget_modify_font(@entry_handle, font)
        end
        OS.g_object_set(@text_renderer, OS.attr_font_desc, font, 0)
        if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
          # Bug in GTK.  Setting the font can leave the combo box with an
          # invalid minimum size.  The fix is to temporarily change the
          # selected item to force the combo box to resize.
          index = OS.gtk_combo_box_get_active(self.attr_handle)
          OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
          OS.gtk_combo_box_set_active(self.attr_handle, -1)
          OS.gtk_combo_box_set_active(self.attr_handle, index)
          OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
        end
      else
        OS.gtk_widget_modify_font(@entry_handle, font)
        if (!(@list_handle).equal?(0))
          OS.gtk_widget_modify_font(@list_handle, font)
          # int
          items_list = OS.gtk_container_get_children(@list_handle)
          if (!(items_list).equal?(0))
            count = OS.g_list_length(items_list)
            i = count - 1
            while i >= 0
              # int
              widget = OS.gtk_bin_get_child(OS.g_list_nth_data(items_list, i))
              OS.gtk_widget_modify_font(widget, font)
              i -= 1
            end
            OS.g_list_free(items_list)
          end
        end
      end
    end
    
    typesig { [GdkColor] }
    def set_foreground_color(color)
      super(color)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        if (!(@entry_handle).equal?(0))
          set_foreground_color(@entry_handle, color)
        end
        OS.g_object_set(@text_renderer, OS.attr_foreground_gdk, color, 0)
      else
        set_foreground_color(@entry_handle, color)
        if (!(@list_handle).equal?(0))
          set_foreground_color(@list_handle, color)
          # int
          items_list = OS.gtk_container_get_children(@list_handle)
          if (!(items_list).equal?(0))
            count = OS.g_list_length(items_list)
            i = count - 1
            while i >= 0
              # int
              widget = OS.gtk_bin_get_child(OS.g_list_nth_data(items_list, i))
              set_foreground_color(widget, color)
              i -= 1
            end
            OS.g_list_free(items_list)
          end
        end
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
      if (!(0 <= index && index < @items.attr_length))
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @items[index] = string
      buffer = Converter.wcs_to_mbcs(nil, string, true)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        OS.gtk_combo_box_remove_text(self.attr_handle, index)
        OS.gtk_combo_box_insert_text(self.attr_handle, index, buffer)
        if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0) && !(@popup_handle).equal?(0))
          OS.gtk_container_forall(@popup_handle, self.attr_display.attr_set_direction_proc, OS::GTK_TEXT_DIR_RTL)
        end
      else
        @ignore_select = true
        # int
        children = OS.gtk_container_get_children(@list_handle)
        # int
        item = OS.g_list_nth_data(children, index)
        # int
        label = OS.gtk_bin_get_child(item)
        OS.gtk_label_set_text(label, buffer)
        OS.g_list_free(children)
        @ignore_select = false
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
      count = @items.attr_length
      @items = Array.typed(String).new(items.attr_length) { nil }
      System.arraycopy(items, 0, @items, 0, items.attr_length)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        clear_text
        i_ = count - 1
        while i_ >= 0
          OS.gtk_combo_box_remove_text(self.attr_handle, i_)
          i_ -= 1
        end
        i__ = 0
        while i__ < items.attr_length
          string = items[i__]
          buffer = Converter.wcs_to_mbcs(nil, string, true)
          OS.gtk_combo_box_insert_text(self.attr_handle, i__, buffer)
          if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0) && !(@popup_handle).equal?(0))
            OS.gtk_container_forall(@popup_handle, self.attr_display.attr_set_direction_proc, OS::GTK_TEXT_DIR_RTL)
          end
          i__ += 1
        end
      else
        @lock_text = @ignore_select = true
        OS.gtk_list_clear_items(@list_handle, 0, -1)
        # int
        font = get_font_description
        color = get_foreground_color
        direction = OS.gtk_widget_get_direction(self.attr_handle)
        i_ = 0
        while (i_ < items.attr_length)
          string = items[i_]
          buffer = Converter.wcs_to_mbcs(nil, string, true)
          # int
          item = OS.gtk_list_item_new_with_label(buffer)
          # int
          label = OS.gtk_bin_get_child(item)
          set_foreground_color(label, color)
          OS.gtk_widget_modify_font(label, font)
          OS.gtk_widget_set_direction(label, direction)
          OS.gtk_container_add(@list_handle, item)
          OS.gtk_widget_show(item)
          i_ += 1
        end
        @lock_text = @ignore_select = false
        OS.gtk_entry_set_text(@entry_handle, Array.typed(::Java::Byte).new(1) { 0 })
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
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        if (visible)
          OS.gtk_combo_box_popup(self.attr_handle)
        else
          OS.gtk_combo_box_popdown(self.attr_handle)
        end
      end
    end
    
    typesig { [] }
    def set_orientation
      super
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        if (!(@list_handle).equal?(0))
          OS.gtk_widget_set_direction(@list_handle, OS::GTK_TEXT_DIR_RTL)
        end
        if (!(@entry_handle).equal?(0))
          OS.gtk_widget_set_direction(@entry_handle, OS::GTK_TEXT_DIR_RTL)
        end
        if (!(@cell_handle).equal?(0))
          OS.gtk_widget_set_direction(@cell_handle, OS::GTK_TEXT_DIR_RTL)
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
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        check_widget
        flags = SWT::RIGHT_TO_LEFT | SWT::LEFT_TO_RIGHT
        if (((orientation & flags)).equal?(0) || ((orientation & flags)).equal?(flags))
          return
        end
        self.attr_style &= ~flags
        self.attr_style |= orientation & flags
        dir = !((orientation & SWT::RIGHT_TO_LEFT)).equal?(0) ? OS::GTK_TEXT_DIR_RTL : OS::GTK_TEXT_DIR_LTR
        OS.gtk_widget_set_direction(self.attr_fixed_handle, dir)
        OS.gtk_widget_set_direction(self.attr_handle, dir)
        if (!(@entry_handle).equal?(0))
          OS.gtk_widget_set_direction(@entry_handle, dir)
        end
        if (!(@list_handle).equal?(0))
          OS.gtk_widget_set_direction(@list_handle, dir)
          # int
          items_list = OS.gtk_container_get_children(@list_handle)
          if (!(items_list).equal?(0))
            count = OS.g_list_length(items_list)
            i = count - 1
            while i >= 0
              # int
              widget = OS.gtk_bin_get_child(OS.g_list_nth_data(items_list, i))
              OS.gtk_widget_set_direction(widget, dir)
              i -= 1
            end
            OS.g_list_free(items_list)
          end
        end
        if (!(@cell_handle).equal?(0))
          OS.gtk_widget_set_direction(@cell_handle, dir)
        end
        if (!(@popup_handle).equal?(0))
          OS.gtk_container_forall(@popup_handle, self.attr_display.attr_set_direction_proc, dir)
        end
      end
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
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return
      end
      if (!(@entry_handle).equal?(0))
        OS.gtk_editable_set_position(@entry_handle, selection.attr_x)
        OS.gtk_editable_select_region(@entry_handle, selection.attr_x, selection.attr_y)
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
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        index = index_of(string)
        if ((index).equal?(-1))
          return
        end
        if (OS::GTK_VERSION >= OS._version(2, 4, 0))
          OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
          OS.gtk_combo_box_set_active(self.attr_handle, index)
          OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
          # Feature in GTK. Read Only combo boxes do not get a chance to send out a
          # Modify event in the gtk_changed callback. The fix is to send a Modify event
          # here.
          send_event(SWT::Modify)
          return
        end
      end
      # Feature in gtk.  When text is set in gtk, separate events are fired for the deletion and
      # insertion of the text.  This is not wrong, but is inconsistent with other platforms.  The
      # fix is to block the firing of these events and fire them ourselves in a consistent manner.
      if (hooks(SWT::Verify) || filters(SWT::Verify))
        # int
        ptr = OS.gtk_entry_get_text(@entry_handle)
        # 64
        string = RJava.cast_to_string(verify_text(string, 0, RJava.cast_to_int(OS.g_utf8_strlen(ptr, -1))))
        if ((string).nil?)
          return
        end
      end
      buffer = Converter.wcs_to_mbcs(nil, string, true)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      end
      OS.g_signal_handlers_block_matched(@entry_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.g_signal_handlers_block_matched(@entry_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, DELETE_TEXT)
      OS.g_signal_handlers_block_matched(@entry_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, INSERT_TEXT)
      OS.gtk_entry_set_text(@entry_handle, buffer)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      end
      OS.g_signal_handlers_unblock_matched(@entry_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.g_signal_handlers_unblock_matched(@entry_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, DELETE_TEXT)
      OS.g_signal_handlers_unblock_matched(@entry_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, INSERT_TEXT)
      send_event(SWT::Modify)
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
      if (!(@entry_handle).equal?(0))
        OS.gtk_entry_set_max_length(@entry_handle, limit)
      end
    end
    
    typesig { [Shell, String] }
    def set_tool_tip_text(shell, new_string)
      if (!(@entry_handle).equal?(0))
        shell.set_tool_tip_text(@entry_handle, new_string)
      end
      if (!(@button_handle).equal?(0))
        shell.set_tool_tip_text(@button_handle, new_string)
      end
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
      @visible_count = count
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
        OS.memmove___org_eclipse_swt_widgets_combo_39(gdk_event, event_ptr, GdkEventKey.attr_sizeof)
        case (gdk_event.attr_type)
        when OS::GDK_KEY_PRESS
          set_key_state(event, gdk_event)
        end
        OS.gdk_event_free(event_ptr)
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
