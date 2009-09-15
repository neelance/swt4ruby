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
  module ListImports #:nodoc:
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
  
  # Instances of this class represent a selectable user interface
  # object that displays a list of strings and issues notification
  # when a string is selected.  A list may be single or multi select.
  # <p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>SINGLE, MULTI</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection, DefaultSelection</dd>
  # </dl>
  # <p>
  # Note: Only one of SINGLE and MULTI may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#list">List snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class SwtList < ListImports.const_get :Scrollable
    include_class_members ListImports
    
    # long
    attr_accessor :model_handle
    alias_method :attr_model_handle, :model_handle
    undef_method :model_handle
    alias_method :attr_model_handle=, :model_handle=
    undef_method :model_handle=
    
    class_module.module_eval {
      const_set_lazy(:TEXT_COLUMN) { 0 }
      const_attr_reader  :TEXT_COLUMN
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
    # @see SWT#SINGLE
    # @see SWT#MULTI
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @model_handle = 0
      super(parent, check_style(style))
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
      buffer = Converter.wcs_to_mbcs(nil, string, true)
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      if ((iter).equal?(0))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      OS.gtk_list_store_append(@model_handle, iter)
      OS.gtk_list_store_set(@model_handle, iter, TEXT_COLUMN, buffer, -1)
      OS.g_free(iter)
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
      count = OS.gtk_tree_model_iter_n_children(@model_handle, 0)
      if (!(0 <= index && index <= count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      buffer = Converter.wcs_to_mbcs(nil, string, true)
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      if ((iter).equal?(0))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      # Feature in GTK.  It is much faster to append to a list store
      # than to insert at the end using gtk_list_store_insert().
      if ((index).equal?(count))
        OS.gtk_list_store_append(@model_handle, iter)
      else
        OS.gtk_list_store_insert(@model_handle, iter, index)
      end
      OS.gtk_list_store_set(@model_handle, iter, TEXT_COLUMN, buffer, -1)
      OS.g_free(iter)
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the user changes the receiver's selection, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is called when the selection changes.
    # <code>widgetDefaultSelected</code> is typically called when an item is double-clicked.
    # </p>
    # 
    # @param listener the listener which should be notified when the user changes the receiver's selection
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
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        return check_bits(style, SWT::SINGLE, SWT::MULTI, 0, 0, 0, 0)
      end
    }
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE
      self.attr_fixed_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
      if ((self.attr_fixed_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_fixed_set_has_window(self.attr_fixed_handle, true)
      self.attr_scrolled_handle = OS.gtk_scrolled_window_new(0, 0)
      if ((self.attr_scrolled_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      # Columns:
      # 0 - text
      # 
      # long
      # long
      types = Array.typed(::Java::Int).new([OS._g_type_string])
      @model_handle = OS.gtk_list_store_newv(types.attr_length, types)
      if ((@model_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      self.attr_handle = OS.gtk_tree_view_new_with_model(@model_handle)
      if ((self.attr_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      # long
      text_renderer = OS.gtk_cell_renderer_text_new
      if ((text_renderer).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      # long
      column_handle = OS.gtk_tree_view_column_new
      if ((column_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_tree_view_column_pack_start(column_handle, text_renderer, true)
      OS.gtk_tree_view_column_add_attribute(column_handle, text_renderer, OS.attr_text, TEXT_COLUMN)
      OS.gtk_tree_view_insert_column(self.attr_handle, column_handle, index)
      OS.gtk_container_add(self.attr_fixed_handle, self.attr_scrolled_handle)
      OS.gtk_container_add(self.attr_scrolled_handle, self.attr_handle)
      mode = !((self.attr_style & SWT::MULTI)).equal?(0) ? OS::GTK_SELECTION_MULTIPLE : OS::GTK_SELECTION_BROWSE
      # long
      selection_handle = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.gtk_tree_selection_set_mode(selection_handle, mode)
      OS.gtk_tree_view_set_headers_visible(self.attr_handle, false)
      hsp = !((self.attr_style & SWT::H_SCROLL)).equal?(0) ? OS::GTK_POLICY_AUTOMATIC : OS::GTK_POLICY_NEVER
      vsp = !((self.attr_style & SWT::V_SCROLL)).equal?(0) ? OS::GTK_POLICY_AUTOMATIC : OS::GTK_POLICY_NEVER
      OS.gtk_scrolled_window_set_policy(self.attr_scrolled_handle, hsp, vsp)
      if (!((self.attr_style & SWT::BORDER)).equal?(0))
        OS.gtk_scrolled_window_set_shadow_type(self.attr_scrolled_handle, OS::GTK_SHADOW_ETCHED_IN)
      end
      # Bug in GTK. When a treeview is the child of an override shell,
      # and if the user has ever invokes the interactive search field,
      # and the treeview is disposed on a focus out event, it segment
      # faults. The fix is to disable the search field in an override
      # shell.
      if (!((get_shell.attr_style & SWT::ON_TOP)).equal?(0))
        # Bug in GTK. Until GTK 2.6.5, calling gtk_tree_view_set_enable_search(FALSE)
        # would prevent the user from being able to type in text to search the tree.
        # After 2.6.5, GTK introduced Ctrl+F as being the key binding for interactive
        # search. This meant that even if FALSE was passed to enable_search, the user
        # can still bring up the search pop up using the keybinding. GTK also introduced
        # the notion of passing a -1 to gtk_set_search_column to disable searching
        # (including the search key binding).  The fix is to use the right calls
        # for the right version.
        if (OS::GTK_VERSION >= OS._version(2, 6, 5))
          OS.gtk_tree_view_set_search_column(self.attr_handle, -1)
        else
          OS.gtk_tree_view_set_enable_search(self.attr_handle, false)
        end
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
      size = compute_native_size(self.attr_handle, w_hint, h_hint, changed)
      trim = compute_trim(0, 0, size.attr_x, size.attr_y)
      size.attr_x = trim.attr_width
      size.attr_y = trim.attr_height
      return size
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(OS.gtk_tree_view_get_selection(self.attr_handle))
    end
    
    typesig { [::Java::Int] }
    # Deselects the item at the given zero-relative index in the receiver.
    # If the item at the index was already deselected, it remains
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
      if (!(0 <= index && index < OS.gtk_tree_model_iter_n_children(@model_handle, 0)))
        return
      end
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_tree_model_iter_nth_child(@model_handle, iter, 0, index)
      OS.gtk_tree_selection_unselect_iter(selection, iter)
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.g_free(iter)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Deselects the items at the given zero-relative indices in the receiver.
    # If the item at the given zero-relative index in the receiver
    # is selected, it is deselected.  If the item at the index
    # was not selected, it remains deselected.  The range of the
    # indices is inclusive. Indices that are out of range are ignored.
    # 
    # @param start the start index of the items to deselect
    # @param end the end index of the items to deselect
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def deselect(start, end_)
      check_widget
      if (start < 0 && end_ < 0)
        return
      end
      count = OS.gtk_tree_model_iter_n_children(@model_handle, 0)
      if (start >= count && end_ >= count)
        return
      end
      start = Math.min(count - 1, Math.max(0, start))
      end_ = Math.min(count - 1, Math.max(0, end_))
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      index = start
      while index <= end_
        OS.gtk_tree_model_iter_nth_child(@model_handle, iter, 0, index)
        OS.gtk_tree_selection_unselect_iter(selection, iter)
        index += 1
      end
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.g_free(iter)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Deselects the items at the given zero-relative indices in the receiver.
    # If the item at the given zero-relative index in the receiver
    # is selected, it is deselected.  If the item at the index
    # was not selected, it remains deselected. Indices that are out
    # of range and duplicate indices are ignored.
    # 
    # @param indices the array of indices for the items to deselect
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the set of indices is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def deselect(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      count = OS.gtk_tree_model_iter_n_children(@model_handle, 0)
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      i = 0
      while i < indices.attr_length
        index = indices[i]
        if (index < 0 || index > count - 1)
          i += 1
          next
        end
        OS.gtk_tree_model_iter_nth_child(@model_handle, iter, 0, index)
        OS.gtk_tree_selection_unselect_iter(selection, iter)
        i += 1
      end
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.g_free(iter)
    end
    
    typesig { [] }
    # Deselects all selected items in the receiver.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def deselect_all
      check_widget
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_tree_selection_unselect_all(selection)
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Boolean)] }
    def drag_detect(x, y, filter, consume)
      selected = false
      if (filter)
        # long
        # long
        path = Array.typed(::Java::Int).new(1) { 0 }
        if (OS.gtk_tree_view_get_path_at_pos(self.attr_handle, x, y, path, nil, nil, nil))
          if (!(path[0]).equal?(0))
            # long
            selection = OS.gtk_tree_view_get_selection(self.attr_handle)
            if (OS.gtk_tree_selection_path_is_selected(selection, path[0]))
              selected = true
            end
            OS.gtk_tree_path_free(path[0])
          end
        else
          return false
        end
      end
      drag_detect = super(x, y, filter, consume)
      if (drag_detect && selected && !(consume).nil?)
        consume[0] = true
      end
      return drag_detect
    end
    
    typesig { [] }
    # long
    def event_window
      return paint_window
    end
    
    typesig { [] }
    def get_background_color
      return get_base_color
    end
    
    typesig { [] }
    # Returns the zero-relative index of the item which currently
    # has the focus in the receiver, or -1 if no item has focus.
    # 
    # @return the index of the selected item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_focus_index
      check_widget
      # long
      # long
      path = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_tree_view_get_cursor(self.attr_handle, path, nil)
      if ((path[0]).equal?(0))
        return -1
      end
      # long
      indices = OS.gtk_tree_path_get_indices(path[0])
      index = Array.typed(::Java::Int).new([-1])
      if (!(indices).equal?(0))
        OS.memmove___org_eclipse_swt_widgets_list_1(index, indices, 4)
      end
      OS.gtk_tree_path_free(path[0])
      return index[0]
    end
    
    typesig { [] }
    def get_foreground_color
      return get_text_color
    end
    
    typesig { [::Java::Int] }
    # Returns the item at the given, zero-relative index in the
    # receiver. Throws an exception if the index is out of range.
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
      if (!(0 <= index && index < OS.gtk_tree_model_iter_n_children(@model_handle, 0)))
        error(SWT::ERROR_INVALID_RANGE)
      end
      # long
      # long
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      OS.gtk_tree_model_iter_nth_child(@model_handle, iter, 0, index)
      OS.gtk_tree_model_get(@model_handle, iter, 0, ptr, -1)
      OS.g_free(iter)
      if ((ptr[0]).equal?(0))
        return nil
      end
      length = OS.strlen(ptr[0])
      buffer2 = Array.typed(::Java::Byte).new(length) { 0 }
      OS.memmove___org_eclipse_swt_widgets_list_3(buffer2, ptr[0], length)
      OS.g_free(ptr[0])
      return String.new(Converter.mbcs_to_wcs(nil, buffer2))
    end
    
    typesig { [] }
    # Returns the number of items contained in the receiver.
    # 
    # @return the number of items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_count
      check_widget
      return OS.gtk_tree_model_iter_n_children(@model_handle, 0)
    end
    
    typesig { [] }
    # Returns the height of the area which would be used to
    # display <em>one</em> of the items in the list.
    # 
    # @return the height of one item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_height
      check_widget
      item_count = OS.gtk_tree_model_iter_n_children(@model_handle, 0)
      # long
      column = OS.gtk_tree_view_get_column(self.attr_handle, 0)
      if ((item_count).equal?(0))
        w = Array.typed(::Java::Int).new(1) { 0 }
        h = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_tree_view_column_cell_get_size(column, nil, nil, nil, w, h)
        return h[0]
      else
        # long
        iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
        OS.gtk_tree_model_get_iter_first(@model_handle, iter)
        OS.gtk_tree_view_column_cell_set_cell_data(column, @model_handle, iter, false, false)
        w = Array.typed(::Java::Int).new(1) { 0 }
        h = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_tree_view_column_cell_get_size(column, nil, nil, nil, w, h)
        OS.g_free(iter)
        return h[0]
      end
    end
    
    typesig { [] }
    # Returns a (possibly empty) array of <code>String</code>s which
    # are the items in the receiver.
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
      count = OS.gtk_tree_model_iter_n_children(@model_handle, 0)
      # long
      # long
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      result = Array.typed(String).new(count) { nil }
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      index = 0
      while index < count
        OS.gtk_tree_model_iter_nth_child(@model_handle, iter, 0, index)
        OS.gtk_tree_model_get(@model_handle, iter, 0, ptr, -1)
        if (!(ptr[0]).equal?(0))
          length = OS.strlen(ptr[0])
          buffer = Array.typed(::Java::Byte).new(length) { 0 }
          OS.memmove___org_eclipse_swt_widgets_list_5(buffer, ptr[0], length)
          OS.g_free(ptr[0])
          result[index] = String.new(Converter.mbcs_to_wcs(nil, buffer))
        end
        index += 1
      end
      OS.g_free(iter)
      return result
    end
    
    typesig { [] }
    # Returns an array of <code>String</code>s that are currently
    # selected in the receiver.  The order of the items is unspecified.
    # An empty array indicates that no items are selected.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its selection, so modifying the array will
    # not affect the receiver.
    # </p>
    # @return an array representing the selection
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      indices = get_selection_indices
      result = Array.typed(String).new(indices.attr_length) { nil }
      i = 0
      while i < indices.attr_length
        result[i] = get_item(indices[i])
        i += 1
      end
      return result
    end
    
    typesig { [] }
    # Returns the number of selected items contained in the receiver.
    # 
    # @return the number of selected items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_count
      check_widget
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      if (OS::GTK_VERSION < OS._version(2, 2, 0))
        self.attr_display.attr_tree_selection_length = 0
        self.attr_display.attr_tree_selection = nil
        OS.gtk_tree_selection_selected_foreach(selection, self.attr_display.attr_tree_selection_proc, self.attr_handle)
        return self.attr_display.attr_tree_selection_length
      end
      return OS.gtk_tree_selection_count_selected_rows(selection)
    end
    
    typesig { [] }
    # Returns the zero-relative index of the item which is currently
    # selected in the receiver, or -1 if no item is selected.
    # 
    # @return the index of the selected item or -1
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_index
      check_widget
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      if (OS::GTK_VERSION < OS._version(2, 2, 0))
        item_count = OS.gtk_tree_model_iter_n_children(@model_handle, 0)
        self.attr_display.attr_tree_selection_length = 0
        self.attr_display.attr_tree_selection = Array.typed(::Java::Int).new(item_count) { 0 }
        OS.gtk_tree_selection_selected_foreach(selection, self.attr_display.attr_tree_selection_proc, self.attr_handle)
        if ((self.attr_display.attr_tree_selection_length).equal?(0))
          return -1
        end
        return self.attr_display.attr_tree_selection[0]
      end
      # Bug in GTK.  gtk_tree_selection_get_selected_rows() segmentation faults
      # in versions smaller than 2.2.4 if the model is NULL.  The fix is
      # to give a valid pointer instead.
      # 
      # long
      # long
      model = OS::GTK_VERSION < OS._version(2, 2, 4) ? Array.typed(::Java::Int).new(1) { 0 } : nil
      # long
      list = OS.gtk_tree_selection_get_selected_rows(selection, model)
      if (!(list).equal?(0))
        count = OS.g_list_length(list)
        index = Array.typed(::Java::Int).new(1) { 0 }
        i = 0
        while i < count
          # long
          data = OS.g_list_nth_data(list, i)
          # long
          indices = OS.gtk_tree_path_get_indices(data)
          if (!(indices).equal?(0))
            OS.memmove___org_eclipse_swt_widgets_list_7(index, indices, 4)
            break
          end
          i += 1
        end
        OS.g_list_free(list)
        return index[0]
      end
      return -1
    end
    
    typesig { [] }
    # Returns the zero-relative indices of the items which are currently
    # selected in the receiver.  The order of the indices is unspecified.
    # The array is empty if no items are selected.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its selection, so modifying the array will
    # not affect the receiver.
    # </p>
    # @return the array of indices of the selected items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_indices
      check_widget
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      if (OS::GTK_VERSION < OS._version(2, 2, 0))
        item_count = OS.gtk_tree_model_iter_n_children(@model_handle, 0)
        self.attr_display.attr_tree_selection_length = 0
        self.attr_display.attr_tree_selection = Array.typed(::Java::Int).new(item_count) { 0 }
        OS.gtk_tree_selection_selected_foreach(selection, self.attr_display.attr_tree_selection_proc, self.attr_handle)
        if ((self.attr_display.attr_tree_selection_length).equal?(self.attr_display.attr_tree_selection.attr_length))
          return self.attr_display.attr_tree_selection
        end
        result = Array.typed(::Java::Int).new(self.attr_display.attr_tree_selection_length) { 0 }
        System.arraycopy(self.attr_display.attr_tree_selection, 0, result, 0, self.attr_display.attr_tree_selection_length)
        return result
      end
      # Bug in GTK.  gtk_tree_selection_get_selected_rows() segmentation faults
      # in versions smaller than 2.2.4 if the model is NULL.  The fix is
      # to give a valid pointer instead.
      # 
      # long
      # long
      model = OS::GTK_VERSION < OS._version(2, 2, 4) ? Array.typed(::Java::Int).new(1) { 0 } : nil
      # long
      list = OS.gtk_tree_selection_get_selected_rows(selection, model)
      if (!(list).equal?(0))
        count = OS.g_list_length(list)
        tree_selection = Array.typed(::Java::Int).new(count) { 0 }
        length = 0
        i = 0
        while i < count
          # long
          data = OS.g_list_nth_data(list, i)
          # long
          indices = OS.gtk_tree_path_get_indices(data)
          if (!(indices).equal?(0))
            index = Array.typed(::Java::Int).new(1) { 0 }
            OS.memmove___org_eclipse_swt_widgets_list_9(index, indices, 4)
            tree_selection[length] = index[0]
            length += 1
          end
          i += 1
        end
        OS.g_list_free(list)
        result = Array.typed(::Java::Int).new(length) { 0 }
        System.arraycopy(tree_selection, 0, result, 0, length)
        return result
      end
      return Array.typed(::Java::Int).new(0) { 0 }
    end
    
    typesig { [] }
    # Returns the zero-relative index of the item which is currently
    # at the top of the receiver. This index can change when items are
    # scrolled or new items are added or removed.
    # 
    # @return the index of the top item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_top_index
      check_widget
      # long
      # long
      path = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_widget_realize(self.attr_handle)
      if (!OS.gtk_tree_view_get_path_at_pos(self.attr_handle, 1, 1, path, nil, nil, nil))
        return 0
      end
      if ((path[0]).equal?(0))
        return 0
      end
      # long
      indices = OS.gtk_tree_path_get_indices(path[0])
      index = Array.typed(::Java::Int).new(1) { 0 }
      if (!(indices).equal?(0))
        OS.memmove___org_eclipse_swt_widgets_list_11(index, indices, 4)
      end
      OS.gtk_tree_path_free(path[0])
      return index[0]
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_changed(widget)
      post_event___org_eclipse_swt_widgets_list_13(SWT::Selection)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_button_press_event(widget, event)
      # long
      result = super(widget, event)
      if (!(result).equal?(0))
        return result
      end
      # Feature in GTK.  In a multi-select list view, when multiple items are already
      # selected, the selection state of the item is toggled and the previous selection
      # is cleared. This is not the desired behaviour when bringing up a popup menu.
      # Also, when an item is reselected with the right button, the tree view issues
      # an unwanted selection event. The workaround is to detect that case and not
      # run the default handler when the item is already part of the current selection.
      gdk_event = GdkEventButton.new
      OS.memmove___org_eclipse_swt_widgets_list_15(gdk_event, event, GdkEventButton.attr_sizeof)
      button = gdk_event.attr_button
      if ((button).equal?(3) && (gdk_event.attr_type).equal?(OS::GDK_BUTTON_PRESS))
        # long
        # long
        path = Array.typed(::Java::Int).new(1) { 0 }
        if (OS.gtk_tree_view_get_path_at_pos(self.attr_handle, RJava.cast_to_int(gdk_event.attr_x), RJava.cast_to_int(gdk_event.attr_y), path, nil, nil, nil))
          if (!(path[0]).equal?(0))
            # long
            selection = OS.gtk_tree_view_get_selection(self.attr_handle)
            if (OS.gtk_tree_selection_path_is_selected(selection, path[0]))
              result = 1
            end
            OS.gtk_tree_path_free(path[0])
          end
        end
      end
      # Feature in GTK.  When the user clicks in a single selection GtkTreeView
      # and there are no selected items, the first item is selected automatically
      # before the click is processed, causing two selection events.  The is fix
      # is the set the cursor item to be same as the clicked item to stop the
      # widget from automatically selecting the first item.
      if (!((self.attr_style & SWT::SINGLE)).equal?(0) && (get_selection_count).equal?(0))
        # long
        # long
        path = Array.typed(::Java::Int).new(1) { 0 }
        if (OS.gtk_tree_view_get_path_at_pos(self.attr_handle, RJava.cast_to_int(gdk_event.attr_x), RJava.cast_to_int(gdk_event.attr_y), path, nil, nil, nil))
          if (!(path[0]).equal?(0))
            # long
            selection = OS.gtk_tree_view_get_selection(self.attr_handle)
            OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
            OS.gtk_tree_view_set_cursor(self.attr_handle, path[0], 0, false)
            OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
            OS.gtk_tree_path_free(path[0])
          end
        end
      end
      # Bug in GTK. GTK segments fault, if the GtkTreeView widget is
      # not in focus and all items in the widget are disposed before
      # it finishes processing a button press.  The fix is to give
      # focus to the widget before it starts processing the event.
      if (!OS._gtk_widget_has_focus(self.attr_handle))
        OS.gtk_widget_grab_focus(self.attr_handle)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_key_press_event(widget, event)
      # long
      result = super(widget, event)
      if (!(result).equal?(0))
        return result
      end
      if (OS::GTK_VERSION < OS._version(2, 2, 0))
        # Feature in GTK 2.0.x.  When an item is default selected using
        # the return key, GTK does not issue notification. The fix is
        # to issue this notification when the return key is pressed.
        key_event = GdkEventKey.new
        OS.memmove___org_eclipse_swt_widgets_list_17(key_event, event, GdkEventKey.attr_sizeof)
        key = key_event.attr_keyval
        case (key)
        when OS::GDK_Return, OS::GDK_KP_Enter
          post_event___org_eclipse_swt_widgets_list_19(SWT::DefaultSelection)
        end
      end
      return result
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_popup_menu(widget)
      # long
      result = super(widget)
      # Bug in GTK.  The context menu for the typeahead in GtkTreeViewer
      # opens in the bottom right corner of the screen when Shift+F10
      # is pressed and the typeahead window was not visible.  The fix is
      # to prevent the context menu from opening by stopping the default
      # handler.
      # 
      # NOTE: The bug only happens in GTK 2.6.5 and lower.
      return OS::GTK_VERSION < OS._version(2, 6, 5) ? 1 : result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def gtk_row_activated(tree, path, column)
      post_event___org_eclipse_swt_widgets_list_21(SWT::DefaultSelection)
      return 0
    end
    
    typesig { [] }
    def hook_events
      super
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_connect_closure(selection, OS.attr_changed, self.attr_display.attr_closures[CHANGED], false)
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_row_activated, self.attr_display.attr_closures[ROW_ACTIVATED], false)
    end
    
    typesig { [String] }
    # Gets the index of an item.
    # <p>
    # The list is searched starting at 0 until an
    # item is found that is equal to the search item.
    # If no item is found, -1 is returned.  Indexing
    # is zero based.
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
    # @param start the zero-relative index at which to start the search
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
      items = get_items
      i = start
      while i < items.attr_length
        if ((items[i] == string))
          return i
        end
        i += 1
      end
      return -1
    end
    
    typesig { [::Java::Int] }
    # Returns <code>true</code> if the item is selected,
    # and <code>false</code> otherwise.  Indices out of
    # range are ignored.
    # 
    # @param index the index of the item
    # @return the selection state of the item at the index
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def is_selected(index)
      check_widget
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      buffer = Converter.wcs_to_mbcs(nil, JavaInteger.to_s(index), true)
      # long
      path = OS.gtk_tree_path_new_from_string(buffer)
      answer = OS.gtk_tree_selection_path_is_selected(selection, path)
      OS.gtk_tree_path_free(path)
      return answer
    end
    
    typesig { [] }
    # long
    def paint_window
      OS.gtk_widget_realize(self.attr_handle)
      return OS.gtk_tree_view_get_bin_window(self.attr_handle)
    end
    
    typesig { [] }
    def register
      super
      self.attr_display.add_widget(OS.gtk_tree_view_get_selection(self.attr_handle), self)
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@model_handle).equal?(0))
        OS.g_object_unref(@model_handle)
      end
      @model_handle = 0
    end
    
    typesig { [::Java::Int] }
    # Removes the item from the receiver at the given
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
      if (!(0 <= index && index < OS.gtk_tree_model_iter_n_children(@model_handle, 0)))
        error(SWT::ERROR_INVALID_RANGE)
      end
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      OS.gtk_tree_model_iter_nth_child(@model_handle, iter, 0, index)
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_list_store_remove(@model_handle, iter)
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.g_free(iter)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Removes the items from the receiver which are
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
      count = OS.gtk_tree_model_iter_n_children(@model_handle, 0)
      if (!(0 <= start && start <= end_ && end_ < count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      index = end_
      while index >= start
        OS.gtk_tree_model_iter_nth_child(@model_handle, iter, 0, index)
        OS.gtk_list_store_remove(@model_handle, iter)
        index -= 1
      end
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.g_free(iter)
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
    
    typesig { [Array.typed(::Java::Int)] }
    # Removes the items from the receiver at the given
    # zero-relative indices.
    # 
    # @param indices the array of indices of the items
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # <li>ERROR_NULL_ARGUMENT - if the indices array is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((indices.attr_length).equal?(0))
        return
      end
      new_indices = Array.typed(::Java::Int).new(indices.attr_length) { 0 }
      System.arraycopy(indices, 0, new_indices, 0, indices.attr_length)
      sort(new_indices)
      start = new_indices[new_indices.attr_length - 1]
      end_ = new_indices[0]
      count = get_item_count
      if (!(0 <= start && start <= end_ && end_ < count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      last = -1
      i = 0
      while i < new_indices.attr_length
        index = new_indices[i]
        if (!(index).equal?(last))
          OS.gtk_tree_model_iter_nth_child(@model_handle, iter, 0, index)
          OS.gtk_list_store_remove(@model_handle, iter)
          last = index
        end
        i += 1
      end
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.g_free(iter)
    end
    
    typesig { [] }
    # Removes all of the items from the receiver.
    # <p>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove_all
      check_widget
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_list_store_clear(@model_handle)
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
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
      if (!(0 <= index && index < OS.gtk_tree_model_iter_n_children(@model_handle, 0)))
        return
      end
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_tree_model_iter_nth_child(@model_handle, iter, 0, index)
      OS.gtk_tree_selection_select_iter(selection, iter)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # long
        path = OS.gtk_tree_model_get_path(@model_handle, iter)
        OS.gtk_tree_view_set_cursor(self.attr_handle, path, 0, false)
        OS.gtk_tree_path_free(path)
      end
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.g_free(iter)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Selects the items in the range specified by the given zero-relative
    # indices in the receiver. The range of indices is inclusive.
    # The current selection is not cleared before the new items are selected.
    # <p>
    # If an item in the given range is not selected, it is selected.
    # If an item in the given range was already selected, it remains selected.
    # Indices that are out of range are ignored and no items will be selected
    # if start is greater than end.
    # If the receiver is single-select and there is more than one item in the
    # given range, then all indices are ignored.
    # 
    # @param start the start of the range
    # @param end the end of the range
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see List#setSelection(int,int)
    def select(start, end_)
      check_widget
      if (end_ < 0 || start > end_ || (!((self.attr_style & SWT::SINGLE)).equal?(0) && !(start).equal?(end_)))
        return
      end
      count = OS.gtk_tree_model_iter_n_children(@model_handle, 0)
      if ((count).equal?(0) || start >= count)
        return
      end
      start = Math.max(0, start)
      end_ = Math.min(end_, count - 1)
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      index = start
      while index <= end_
        OS.gtk_tree_model_iter_nth_child(@model_handle, iter, 0, index)
        OS.gtk_tree_selection_select_iter(selection, iter)
        if (!((self.attr_style & SWT::SINGLE)).equal?(0))
          # long
          path = OS.gtk_tree_model_get_path(@model_handle, iter)
          OS.gtk_tree_view_set_cursor(self.attr_handle, path, 0, false)
          OS.gtk_tree_path_free(path)
        end
        index += 1
      end
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.g_free(iter)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Selects the items at the given zero-relative indices in the receiver.
    # The current selection is not cleared before the new items are selected.
    # <p>
    # If the item at a given index is not selected, it is selected.
    # If the item at a given index was already selected, it remains selected.
    # Indices that are out of range and duplicate indices are ignored.
    # If the receiver is single-select and multiple indices are specified,
    # then all indices are ignored.
    # 
    # @param indices the array of indices for the items to select
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the array of indices is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see List#setSelection(int[])
    def select(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      length = indices.attr_length
      if ((length).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length > 1))
        return
      end
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      count = OS.gtk_tree_model_iter_n_children(@model_handle, 0)
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      i = 0
      while i < length
        index = indices[i]
        if (!(0 <= index && index < count))
          i += 1
          next
        end
        OS.gtk_tree_model_iter_nth_child(@model_handle, iter, 0, index)
        OS.gtk_tree_selection_select_iter(selection, iter)
        if (!((self.attr_style & SWT::SINGLE)).equal?(0))
          # long
          path = OS.gtk_tree_model_get_path(@model_handle, iter)
          OS.gtk_tree_view_set_cursor(self.attr_handle, path, 0, false)
          OS.gtk_tree_path_free(path)
        end
        i += 1
      end
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.g_free(iter)
    end
    
    typesig { [] }
    # Selects all of the items in the receiver.
    # <p>
    # If the receiver is single-select, do nothing.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def select_all
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return
      end
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_tree_selection_select_all(selection)
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
    end
    
    typesig { [::Java::Int] }
    def select_focus_index(index)
      # Note that this method both selects and sets the focus to the
      # specified index, so any previous selection in the list will be lost.
      # gtk does not provide a way to just set focus to a specified list item.
      count = OS.gtk_tree_model_iter_n_children(@model_handle, 0)
      if (!(0 <= index && index < count))
        return
      end
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      OS.gtk_tree_model_iter_nth_child(@model_handle, iter, 0, index)
      # long
      path = OS.gtk_tree_model_get_path(@model_handle, iter)
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_tree_view_set_cursor(self.attr_handle, path, 0, false)
      # Bug in GTK. For some reason, when an event loop is run from
      # within a key pressed handler and a dialog is displayed that
      # contains a GtkTreeView,  gtk_tree_view_set_cursor() does
      # not set the cursor or select the item.  The fix is to select the
      # item with gtk_tree_selection_select_iter() as well.
      # 
      # NOTE: This happens in GTK 2.2.1 and is fixed in GTK 2.2.4.
      OS.gtk_tree_selection_select_iter(selection, iter)
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_tree_path_free(path)
      OS.g_free(iter)
    end
    
    typesig { [GdkColor] }
    def set_background_color(color)
      super(color)
      OS.gtk_widget_modify_base(self.attr_handle, 0, color)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize)
      result = super(x, y, width, height, move, resize)
      # Bug on GTK.  The tree view sometimes does not get a paint
      # event or resizes to a one pixel square when resized in a new
      # shell that is not visible after any event loop has been run.  The
      # problem is intermittent. It doesn't seem to happen the first time
      # a new shell is created. The fix is to ensure the tree view is realized
      # after it has been resized.
      OS.gtk_widget_realize(self.attr_handle)
      # Bug in GTK.  An empty GtkTreeView fails to repaint the focus rectangle
      # correctly when resized on versions before 2.6.0.  The fix is to force
      # the widget to redraw.
      if (OS::GTK_VERSION < OS._version(2, 6, 0) && (OS.gtk_tree_model_iter_n_children(@model_handle, 0)).equal?(0))
        redraw(false)
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
      if (!(0 <= index && index < OS.gtk_tree_model_iter_n_children(@model_handle, 0)))
        error(SWT::ERROR_INVALID_RANGE)
      end
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      OS.gtk_tree_model_iter_nth_child(@model_handle, iter, 0, index)
      buffer = Converter.wcs_to_mbcs(nil, string, true)
      OS.gtk_list_store_set(@model_handle, iter, TEXT_COLUMN, buffer, -1)
      OS.g_free(iter)
    end
    
    typesig { [Array.typed(String)] }
    # Sets the receiver's items to be the given array of items.
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
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_list_store_clear(@model_handle)
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      if ((iter).equal?(0))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      i_ = 0
      while i_ < items.attr_length
        string = items[i_]
        buffer = Converter.wcs_to_mbcs(nil, string, true)
        OS.gtk_list_store_append(@model_handle, iter)
        OS.gtk_list_store_set(@model_handle, iter, TEXT_COLUMN, buffer, -1)
        i_ += 1
      end
      OS.g_free(iter)
    end
    
    typesig { [::Java::Int] }
    # Selects the item at the given zero-relative index in the receiver.
    # If the item at the index was already selected, it remains selected.
    # The current selection is first cleared, then the new item is selected.
    # Indices that are out of range are ignored.
    # 
    # @param index the index of the item to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @see List#deselectAll()
    # @see List#select(int)
    def set_selection(index)
      check_widget
      deselect_all
      select_focus_index(index)
      show_selection
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Selects the items in the range specified by the given zero-relative
    # indices in the receiver. The range of indices is inclusive.
    # The current selection is cleared before the new items are selected.
    # <p>
    # Indices that are out of range are ignored and no items will be selected
    # if start is greater than end.
    # If the receiver is single-select and there is more than one item in the
    # given range, then all indices are ignored.
    # 
    # @param start the start index of the items to select
    # @param end the end index of the items to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see List#deselectAll()
    # @see List#select(int,int)
    def set_selection(start, end_)
      check_widget
      deselect_all
      if (end_ < 0 || start > end_ || (!((self.attr_style & SWT::SINGLE)).equal?(0) && !(start).equal?(end_)))
        return
      end
      count = OS.gtk_tree_model_iter_n_children(@model_handle, 0)
      if ((count).equal?(0) || start >= count)
        return
      end
      start = Math.max(0, start)
      end_ = Math.min(end_, count - 1)
      select_focus_index(start)
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        select(start, end_)
      end
      show_selection
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Selects the items at the given zero-relative indices in the receiver.
    # The current selection is cleared before the new items are selected.
    # <p>
    # Indices that are out of range and duplicate indices are ignored.
    # If the receiver is single-select and multiple indices are specified,
    # then all indices are ignored.
    # 
    # @param indices the indices of the items to select
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the array of indices is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see List#deselectAll()
    # @see List#select(int[])
    def set_selection(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      deselect_all
      length = indices.attr_length
      if ((length).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length > 1))
        return
      end
      select_focus_index(indices[0])
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        select(indices)
      end
      show_selection
    end
    
    typesig { [Array.typed(String)] }
    # Sets the receiver's selection to be the given array of items.
    # The current selection is cleared before the new items are selected.
    # <p>
    # Items that are not in the receiver are ignored.
    # If the receiver is single-select and multiple items are specified,
    # then all items are ignored.
    # 
    # @param items the array of items
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the array of items is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see List#deselectAll()
    # @see List#select(int[])
    # @see List#setSelection(int[])
    def set_selection(items)
      check_widget
      if ((items).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      deselect_all
      length = items.attr_length
      if ((length).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length > 1))
        return
      end
      first = true
      i = 0
      while i < length
        index = 0
        string = items[i]
        if (!(string).nil?)
          while (!((index = index_of(string, index))).equal?(-1))
            if (!((self.attr_style & SWT::MULTI)).equal?(0))
              if (first)
                first = false
                select_focus_index(index)
              else
                select(index)
              end
            else
              select_focus_index(index)
              break
            end
            index += 1
          end
        end
        i += 1
      end
      show_selection
    end
    
    typesig { [::Java::Int] }
    # Sets the zero-relative index of the item which is currently
    # at the top of the receiver. This index can change when items
    # are scrolled or new items are added and removed.
    # 
    # @param index the index of the top item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_top_index(index)
      check_widget
      if (!(0 <= index && index < OS.gtk_tree_model_iter_n_children(@model_handle, 0)))
        return
      end
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      OS.gtk_tree_model_iter_nth_child(@model_handle, iter, 0, index)
      # long
      path = OS.gtk_tree_model_get_path(@model_handle, iter)
      OS.gtk_tree_view_scroll_to_cell(self.attr_handle, path, 0, true, 0, 0)
      if (OS::GTK_VERSION < OS._version(2, 8, 0))
        # Bug in GTK.  According to the documentation, gtk_tree_view_scroll_to_cell
        # should vertically scroll the cell to the top if use_align is true and row_align is 0.
        # However, prior to version 2.8 it does not scroll at all.  The fix is to determine
        # the new location and use gtk_tree_view_scroll_to_point.
        # If the widget is a pinhead, calling gtk_tree_view_scroll_to_point
        # will have no effect. Therefore, it is still neccessary to call
        # gtk_tree_view_scroll_to_cell.
        OS.gtk_widget_realize(self.attr_handle)
        cell_rect = GdkRectangle.new
        OS.gtk_tree_view_get_cell_area(self.attr_handle, path, 0, cell_rect)
        tx = Array.typed(::Java::Int).new(1) { 0 }
        ty = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_tree_view_widget_to_tree_coords(self.attr_handle, cell_rect.attr_x, cell_rect.attr_y, tx, ty)
        OS.gtk_tree_view_scroll_to_point(self.attr_handle, -1, ty[0])
      end
      OS.gtk_tree_path_free(path)
      OS.g_free(iter)
    end
    
    typesig { [] }
    # Shows the selection.  If the selection is already showing in the receiver,
    # this method simply returns.  Otherwise, the items are scrolled until
    # the selection is visible.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def show_selection
      check_widget
      index = get_selection_index
      if ((index).equal?(-1))
        return
      end
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      OS.gtk_tree_model_iter_nth_child(@model_handle, iter, 0, index)
      # long
      path = OS.gtk_tree_model_get_path(@model_handle, iter)
      # This code intentionally commented.
      # Bug in GTK.  According to the documentation, gtk_tree_view_scroll_to_cell
      # should scroll the minimum amount to show the cell if use_align is false.
      # However, what actually happens is the cell is scrolled to the top.
      # The fix is to determine the new location and use gtk_tree_view_scroll_to_point.
      # If the widget is a pinhead, calling gtk_tree_view_scroll_to_point
      # will have no effect. Therefore, it is still neccessary to
      # call gtk_tree_view_scroll_to_cell.
      # 
      # OS.gtk_tree_view_scroll_to_cell (handle, path, 0, false, 0, 0);
      OS.gtk_widget_realize(self.attr_handle)
      visible_rect = GdkRectangle.new
      OS.gtk_tree_view_get_visible_rect(self.attr_handle, visible_rect)
      cell_rect = GdkRectangle.new
      OS.gtk_tree_view_get_cell_area(self.attr_handle, path, 0, cell_rect)
      tx = Array.typed(::Java::Int).new(1) { 0 }
      ty = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_tree_view_widget_to_tree_coords(self.attr_handle, cell_rect.attr_x, cell_rect.attr_y, tx, ty)
      if (ty[0] < visible_rect.attr_y)
        OS.gtk_tree_view_scroll_to_cell(self.attr_handle, path, 0, true, 0, 0)
        OS.gtk_tree_view_scroll_to_point(self.attr_handle, -1, ty[0])
      else
        height = Math.min(visible_rect.attr_height, cell_rect.attr_height)
        if (ty[0] + height > visible_rect.attr_y + visible_rect.attr_height)
          OS.gtk_tree_view_scroll_to_cell(self.attr_handle, path, 0, true, 1, 0)
          ty[0] += cell_rect.attr_height - visible_rect.attr_height
          OS.gtk_tree_view_scroll_to_point(self.attr_handle, -1, ty[0])
        end
      end
      OS.gtk_tree_path_free(path)
      OS.g_free(iter)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
    # long
    # long
    # long
    # long
    def tree_selection_proc(model, path, iter, selection, length)
      if (!(selection).nil?)
        # long
        indices = OS.gtk_tree_path_get_indices(path)
        if (!(indices).equal?(0))
          index = Array.typed(::Java::Int).new(1) { 0 }
          OS.memmove___org_eclipse_swt_widgets_list_23(index, indices, 4)
          selection[length] = index[0]
        end
      end
      return 0
    end
    
    private
    alias_method :initialize__list, :initialize
  end
  
end
