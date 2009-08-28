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
  module ListImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CFRange
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :DataBrowserCallbacks
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :DataBrowserListViewColumnDesc
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGPoint
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
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
  class SwtList < ListImports.const_get :Scrollable
    include_class_members ListImports
    
    attr_accessor :items
    alias_method :attr_items, :items
    undef_method :items
    alias_method :attr_items=, :items=
    undef_method :items=
    
    attr_accessor :item_count
    alias_method :attr_item_count, :item_count
    undef_method :item_count
    alias_method :attr_item_count=, :item_count=
    undef_method :item_count=
    
    attr_accessor :anchor_first
    alias_method :attr_anchor_first, :anchor_first
    undef_method :anchor_first
    alias_method :attr_anchor_first=, :anchor_first=
    undef_method :anchor_first=
    
    attr_accessor :anchor_last
    alias_method :attr_anchor_last, :anchor_last
    undef_method :anchor_last
    alias_method :attr_anchor_last=, :anchor_last=
    undef_method :anchor_last=
    
    attr_accessor :ignore_select
    alias_method :attr_ignore_select, :ignore_select
    undef_method :ignore_select
    alias_method :attr_ignore_select=, :ignore_select=
    undef_method :ignore_select=
    
    class_module.module_eval {
      const_set_lazy(:COLUMN_ID) { 1024 }
      const_attr_reader  :COLUMN_ID
      
      const_set_lazy(:EXTRA_WIDTH) { 25 }
      const_attr_reader  :EXTRA_WIDTH
      
      const_set_lazy(:BORDER_INSET) { 1 }
      const_attr_reader  :BORDER_INSET
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
      @items = nil
      @item_count = 0
      @anchor_first = 0
      @anchor_last = 0
      @ignore_select = false
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
      id = Array.typed(::Java::Int).new([@item_count + 1])
      if (!(OS._add_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, 1, id, OS.attr_k_data_browser_item_no_property)).equal?(OS.attr_no_err))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      if ((@item_count).equal?(@items.attr_length))
        new_items = Array.typed(String).new(@item_count + 4) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      @items[((@item_count += 1) - 1)] = string
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
      if (!(0 <= index && index <= @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      id = Array.typed(::Java::Int).new([@item_count + 1])
      if (!(OS._add_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, 1, id, OS.attr_k_data_browser_item_no_property)).equal?(OS.attr_no_err))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      if (!(index).equal?(@item_count))
        fix_selection(index, true)
      end
      if ((@item_count).equal?(@items.attr_length))
        new_items = Array.typed(String).new(@item_count + 4) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      System.arraycopy(@items, index, @items, index + 1, ((@item_count += 1) - 1) - index)
      @items[index] = string
      OS._update_data_browser_items(self.attr_handle, 0, 0, nil, OS.attr_k_data_browser_item_no_property, OS.attr_k_data_browser_no_item)
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = 0
      if ((w_hint).equal?(SWT::DEFAULT))
        gc = SwtGC.new(self)
        i = 0
        while i < @item_count
          extent = gc.string_extent(@items[i])
          width = Math.max(width, extent.attr_x)
          i += 1
        end
        gc.dispose
        width += EXTRA_WIDTH
      else
        width = w_hint
      end
      if (width <= 0)
        width = DEFAULT_WIDTH
      end
      height = 0
      if ((h_hint).equal?(SWT::DEFAULT))
        height = @item_count * get_item_height
      else
        height = h_hint
      end
      if (height <= 0)
        height = DEFAULT_HEIGHT
      end
      rect = compute_trim(0, 0, width, height)
      return Point.new(rect.attr_width, rect.attr_height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      border = get_border_width
      rect = Rect.new
      OS._get_data_browser_scroll_bar_inset(self.attr_handle, rect)
      x -= rect.attr_left + border
      y -= rect.attr_top + border
      width += rect.attr_left + rect.attr_right + border + border
      height += rect.attr_top + rect.attr_bottom + border + border
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def contains(shell_x, shell_y)
      pt = CGPoint.new
      content_view = Array.typed(::Java::Int).new(1) { 0 }
      OS._hiview_find_by_id(OS._hiview_get_root(OS._get_control_owner(self.attr_handle)), OS.k_hiview_window_content_id, content_view)
      OS._hiview_convert_point(pt, self.attr_handle, content_view[0])
      x = shell_x - RJava.cast_to_int(pt.attr_x)
      y = shell_y - RJava.cast_to_int(pt.attr_y)
      return get_client_area.contains(x, y)
    end
    
    typesig { [] }
    def create_handle
      out_control = Array.typed(::Java::Int).new(1) { 0 }
      window = OS._get_control_owner(self.attr_parent.attr_handle)
      OS._create_data_browser_control(window, nil, OS.attr_k_data_browser_list_view, out_control)
      if ((out_control[0]).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      self.attr_handle = out_control[0]
      if (!draw_focus_ring)
        OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_data_browser_includes_frame_and_focus_tag, 1, Array.typed(::Java::Byte).new([0]))
      end
      selection_flags = !((self.attr_style & SWT::SINGLE)).equal?(0) ? OS.attr_k_data_browser_select_only_one | OS.attr_k_data_browser_never_empty_selection_set : OS.attr_k_data_browser_cmd_toggles_selection
      OS._set_data_browser_selection_flags(self.attr_handle, selection_flags)
      OS._set_data_browser_list_view_header_btn_height(self.attr_handle, RJava.cast_to_short(0))
      OS._set_data_browser_table_view_hilite_style(self.attr_handle, OS.attr_k_data_browser_table_view_fill_hilite)
      OS._set_data_browser_has_scroll_bars(self.attr_handle, !((self.attr_style & SWT::H_SCROLL)).equal?(0), !((self.attr_style & SWT::V_SCROLL)).equal?(0))
      column = DataBrowserListViewColumnDesc.new
      column.attr_header_btn_desc_version = OS.attr_k_data_browser_list_view_latest_header_desc
      column.attr_property_desc_property_id = COLUMN_ID
      column.attr_property_desc_property_type = OS.attr_k_data_browser_text_type
      column.attr_property_desc_property_flags = OS.attr_k_data_browser_list_view_selection_column | OS.attr_k_data_browser_default_property_flags
      # NOT DONE
      column.attr_header_btn_desc_maximum_width = 0x7fff
      column.attr_header_btn_desc_initial_order = RJava.cast_to_short(OS.attr_k_data_browser_order_increasing)
      OS._add_data_browser_list_view_column(self.attr_handle, column, 0)
      # Feature in the Macintosh.  Scroll bars are not created until
      # the data browser needs to draw them.  The fix is to force the scroll
      # bars to be created by temporarily giving the widget a size, drawing
      # it on a offscreen buffer to avoid flashes and then restoring it to
      # size zero.
      if (OS::VERSION < 0x1040)
        OS._hiview_set_drawing_enabled(self.attr_handle, false)
        size = 50
        rect = Rect.new
        rect.attr_right = rect.attr_bottom = RJava.cast_to_short(size)
        OS._set_control_bounds(self.attr_handle, rect)
        bpl = size * 4
        g_world = Array.typed(::Java::Int).new(1) { 0 }
        data = OS._new_ptr(bpl * size)
        OS._new_gworld_from_ptr(g_world, OS.attr_k32argbpixel_format, rect, 0, 0, 0, data, bpl)
        cur_port = Array.typed(::Java::Int).new(1) { 0 }
        cur_gworld = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_gworld(cur_port, cur_gworld)
        OS._set_gworld(g_world[0], cur_gworld[0])
        OS._draw_control_in_current_port(self.attr_handle)
        OS._set_gworld(cur_port[0], cur_gworld[0])
        OS._dispose_gworld(g_world[0])
        OS._dispose_ptr(data)
        rect.attr_right = rect.attr_bottom = RJava.cast_to_short(0)
        OS._set_control_bounds(self.attr_handle, rect)
        OS._hiview_set_drawing_enabled(self.attr_handle, true)
      end
    end
    
    typesig { [] }
    def create_widget
      super
      @items = Array.typed(String).new(4) { nil }
    end
    
    typesig { [::Java::Int] }
    def create_scroll_bar(style)
      return create_standard_bar(style)
    end
    
    typesig { [] }
    def default_background
      return self.attr_display.get_system_color(SWT::COLOR_LIST_BACKGROUND)
    end
    
    typesig { [] }
    def default_foreground
      return self.attr_display.get_system_color(SWT::COLOR_LIST_FOREGROUND)
    end
    
    typesig { [] }
    def default_theme_font
      if (self.attr_display.attr_small_fonts)
        return OS.attr_k_theme_small_system_font
      end
      return OS.attr_k_theme_views_font
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
      if (0 <= index && index < @item_count)
        ids = Array.typed(::Java::Int).new([index + 1])
        deselect(ids, ids.attr_length)
      end
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
      if (start > end_)
        return
      end
      if (end_ < 0 || start >= @item_count)
        return
      end
      start = Math.max(0, start)
      end_ = Math.min(@item_count - 1, end_)
      length = end_ - start + 1
      if (length <= 0)
        return
      end
      ids = Array.typed(::Java::Int).new(length) { 0 }
      i = 0
      while i < length
        ids[i] = end_ - i + 1
        i += 1
      end
      deselect(ids, length)
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
      # NOT DONE - range check
      length = indices.attr_length
      ids = Array.typed(::Java::Int).new(length) { 0 }
      i = 0
      while i < length
        ids[i] = indices[length - i - 1] + 1
        i += 1
      end
      deselect(ids, length)
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int] }
    def deselect(ids, count)
      @ignore_select = true
      # Bug in the Macintosh.  When the DataBroswer selection flags includes
      # both kDataBrowserNeverEmptySelectionSet and kDataBrowserSelectOnlyOne,
      # two items are selected when SetDataBrowserSelectedItems() is called
      # with kDataBrowserItemsAssign to assign a new seletion despite the fact
      # that kDataBrowserSelectOnlyOne was specified.  The fix is to save and
      # restore kDataBrowserNeverEmptySelectionSet around each call to
      # SetDataBrowserSelectedItems().
      selection_flags = nil
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        selection_flags = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_data_browser_selection_flags(self.attr_handle, selection_flags)
        OS._set_data_browser_selection_flags(self.attr_handle, selection_flags[0] & ~OS.attr_k_data_browser_never_empty_selection_set)
      end
      OS._set_data_browser_selected_items(self.attr_handle, count, ids, OS.attr_k_data_browser_items_remove)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        OS._set_data_browser_selection_flags(self.attr_handle, selection_flags[0])
      end
      @ignore_select = false
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
      deselect(nil, 0)
    end
    
    typesig { [ScrollBar] }
    def destroy_scroll_bar(bar)
      if (!((bar.attr_style & SWT::H_SCROLL)).equal?(0))
        self.attr_style &= ~SWT::H_SCROLL
      end
      if (!((bar.attr_style & SWT::V_SCROLL)).equal?(0))
        self.attr_style &= ~SWT::V_SCROLL
      end
      OS._set_data_browser_has_scroll_bars(self.attr_handle, !((self.attr_style & SWT::H_SCROLL)).equal?(0), !((self.attr_style & SWT::V_SCROLL)).equal?(0))
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def fix_selection(index, add)
      selection = get_selection_indices
      if ((selection.attr_length).equal?(0))
        return
      end
      new_count = 0
      fix = false
      i = 0
      while i < selection.attr_length
        if (!add && (selection[i]).equal?(index))
          fix = true
        else
          new_index = ((new_count += 1) - 1)
          selection[new_index] = selection[i] + 1
          if (selection[new_index] - 1 >= index)
            selection[new_index] += add ? 1 : -1
            fix = true
          end
        end
        i += 1
      end
      if (fix)
        select(selection, new_count, true)
      end
    end
    
    typesig { [] }
    def get_border_width
      check_widget
      border = 0
      has_border = Array.typed(::Java::Byte).new(1) { 0 }
      OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_data_browser_includes_frame_and_focus_tag, 1, has_border, nil)
      if (!(has_border[0]).equal?(0))
        out_metric = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_theme_metric(OS.attr_k_theme_metric_focus_rect_outset, out_metric)
        border += out_metric[0] - BORDER_INSET
      end
      return border
    end
    
    typesig { [] }
    def get_client_area
      check_widget
      border = get_border_width
      rect = Rect.new
      inset = Rect.new
      OS._get_control_bounds(self.attr_handle, rect)
      OS._get_data_browser_scroll_bar_inset(self.attr_handle, inset)
      width = Math.max(0, rect.attr_right - rect.attr_left - inset.attr_right - border - border)
      height = Math.max(0, rect.attr_bottom - rect.attr_top - inset.attr_bottom - border - border)
      return Rectangle.new(inset.attr_left + border, inset.attr_top + border, width, height)
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
      first = Array.typed(::Java::Int).new(1) { 0 }
      last = Array.typed(::Java::Int).new(1) { 0 }
      if (!(OS._get_data_browser_selection_anchor(self.attr_handle, first, last)).equal?(OS.attr_no_err))
        return -1
      end
      return first[0] - 1
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
      if (!(0 <= index && index < @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      return @items[index]
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
      return @item_count
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
      height = Array.typed(::Java::Short).new(1) { 0 }
      if (!(OS._get_data_browser_table_view_row_height(self.attr_handle, height)).equal?(OS.attr_no_err))
        error(SWT::ERROR_CANNOT_GET_ITEM_HEIGHT)
      end
      return height[0]
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
      result = Array.typed(String).new(@item_count) { nil }
      System.arraycopy(@items, 0, result, 0, @item_count)
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
      ptr = OS._new_handle(0)
      if (!(OS._get_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, true, OS.attr_k_data_browser_item_is_selected, ptr)).equal?(OS.attr_no_err))
        error(SWT::ERROR_CANNOT_GET_SELECTION)
      end
      count = OS._get_handle_size(ptr) / 4
      result = Array.typed(String).new(count) { nil }
      if (count > 0)
        OS._hlock(ptr)
        id = Array.typed(::Java::Int).new(1) { 0 }
        OS.memmove(id, ptr, 4)
        offset = id[0] + (count - 1) * 4
        i = 0
        while i < count
          OS.memmove(id, offset, 4)
          result[i] = @items[id[0] - 1]
          i += 1
          offset -= 4
        end
        OS._hunlock(ptr)
      end
      OS._dispose_handle(ptr)
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
      count = Array.typed(::Java::Int).new(1) { 0 }
      if (!(OS._get_data_browser_item_count(self.attr_handle, OS.attr_k_data_browser_no_item, true, OS.attr_k_data_browser_item_is_selected, count)).equal?(OS.attr_no_err))
        error(SWT::ERROR_CANNOT_GET_COUNT)
      end
      return count[0]
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
      first = Array.typed(::Java::Int).new(1) { 0 }
      last = Array.typed(::Java::Int).new(1) { 0 }
      if (!(OS._get_data_browser_selection_anchor(self.attr_handle, first, last)).equal?(OS.attr_no_err))
        return -1
      end
      return first[0] - 1
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
      ptr = OS._new_handle(0)
      if (!(OS._get_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, true, OS.attr_k_data_browser_item_is_selected, ptr)).equal?(OS.attr_no_err))
        error(SWT::ERROR_CANNOT_GET_SELECTION)
      end
      count = OS._get_handle_size(ptr) / 4
      result = Array.typed(::Java::Int).new(count) { 0 }
      if (count > 0)
        OS._hlock(ptr)
        OS.memmove(result, ptr, 4)
        OS.memmove(result, result[0], count * 4)
        OS._hunlock(ptr)
        start = 0
        end_ = count - 1
        while start <= end_
          temp = result[start]
          result[start] = result[end_] - 1
          result[end_] = temp - 1
          start += 1
          end_ -= 1
        end
      end
      OS._dispose_handle(ptr)
      return result
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
      top = Array.typed(::Java::Int).new(1) { 0 }
      left = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_scroll_position(self.attr_handle, top, left)
      return top[0] / get_item_height
    end
    
    typesig { [] }
    def hook_events
      super
      callbacks = DataBrowserCallbacks.new
      callbacks.attr_version = OS.attr_k_data_browser_latest_callbacks
      OS._init_data_browser_callbacks(callbacks)
      callbacks.attr_v1_item_data_callback = self.attr_display.attr_item_data_proc
      callbacks.attr_v1_item_notification_callback = self.attr_display.attr_item_notification_proc
      OS._set_data_browser_callbacks(self.attr_handle, callbacks)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def item_data_proc(browser, id, property, item_data, set_value)
      index = id - 1
      case (property)
      when COLUMN_ID
        text = @items[index]
        buffer = CharArray.new(text.length)
        text.get_chars(0, buffer.attr_length, buffer, 0)
        ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
        if ((ptr).equal?(0))
          error(SWT::ERROR_CANNOT_SET_TEXT)
        end
        OS._set_data_browser_item_data_text(item_data, ptr)
        OS._cfrelease(ptr)
      end
      return OS.attr_no_err
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
      if ((attribute_name == OS.attr_k_axheader_attribute))
        # Bug in the Macintosh.  Even when the header is not visible,
        # VoiceOver still reports each column header's role for every row.
        # This is confusing and overly verbose.  The fix is to return
        # "no header" when the screen reader asks for the header, by
        # returning noErr without setting the event parameter.
        code = OS.attr_no_err
      end
      if (!(self.attr_accessible).nil?)
        code = self.attr_accessible.internal_k_event_accessible_get_named_attribute(next_handler, the_event, code)
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_get_click_activation(next_handler, the_event, user_data)
      OS._set_event_parameter(the_event, OS.attr_k_event_param_click_activation, OS.attr_type_click_activation_result, 4, Array.typed(::Java::Int).new([OS.attr_k_activate_and_handle_click]))
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_set_cursor(next_handler, the_event, user_data)
      if (!is_enabled_cursor)
        return OS.attr_no_err
      end
      if (is_enabled_modal)
        pt = Org::Eclipse::Swt::Internal::Carbon::Point.new
        sizeof = Org::Eclipse::Swt::Internal::Carbon::Point.attr_sizeof
        OS._get_event_parameter(the_event, OS.attr_k_event_param_mouse_location, OS.attr_type_qdpoint, nil, sizeof, nil, pt)
        if (!contains(pt.attr_h, pt.attr_v))
          return OS.attr_event_not_handled_err
        end
      end
      return super(next_handler, the_event, user_data)
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
      case (key_code[0])
      # KP Enter
      # 
      # Feature in the Macintosh.  For some reason, when the user hits an
      # up or down arrow to traverse the items in a Data Browser, the item
      # scrolls to the left such that the white space that is normally
      # visible to the right of the every item is scrolled out of view.
      # The fix is to save and restore the horizontal scroll position.
      # 
      # Down
      when 76, 36
        # Return
        post_event(SWT::DefaultSelection)
      when 125, 126
        # Up
        top = Array.typed(::Java::Int).new(1) { 0 }
        left = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_data_browser_scroll_position(self.attr_handle, top, left)
        result = OS._call_next_event_handler(next_handler, the_event)
        OS._get_data_browser_scroll_position(self.attr_handle, top, nil)
        OS._set_data_browser_scroll_position(self.attr_handle, top[0], left[0])
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def item_notification_proc(browser, id, message)
      catch(:break_case) do
        case (message)
        when OS.attr_k_data_browser_item_selected, OS.attr_k_data_browser_item_deselected
          if (@ignore_select)
            throw :break_case, :thrown
          end
          first = Array.typed(::Java::Int).new(1) { 0 }
          last = Array.typed(::Java::Int).new(1) { 0 }
          OS._get_data_browser_selection_anchor(self.attr_handle, first, last)
          selected = false
          if (!((self.attr_style & SWT::MULTI)).equal?(0))
            modifiers = OS._get_current_event_key_modifiers
            if (!((modifiers & OS.attr_shift_key)).equal?(0))
              if ((message).equal?(OS.attr_k_data_browser_item_selected))
                selected = (first[0]).equal?(id) || (last[0]).equal?(id)
              else
                selected = (id).equal?(@anchor_first) || (id).equal?(@anchor_last)
              end
            else
              if (!((modifiers & OS.attr_cmd_key)).equal?(0))
                selected = true
              else
                selected = (first[0]).equal?(last[0])
              end
            end
          else
            selected = (message).equal?(OS.attr_k_data_browser_item_selected)
          end
          if (selected)
            @anchor_first = first[0]
            @anchor_last = last[0]
            post_event(SWT::Selection)
          end
        when OS.attr_k_data_browser_item_double_clicked
          if ((self.attr_display.attr_click_count).equal?(2))
            post_event(SWT::DefaultSelection)
          end
        end
      end
      return OS.attr_no_err
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
    def index_of(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      i = 0
      while i < @item_count
        if ((@items[i] == item))
          return i
        end
        i += 1
      end
      return -1
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
      i = start
      while i < @item_count
        if ((@items[i] == string))
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
      if (!(0 <= index && index < @item_count))
        return false
      end
      return OS._is_data_browser_item_selected(self.attr_handle, index + 1)
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
      if (!(0 <= index && index < @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if (!(index).equal?(@item_count - 1))
        fix_selection(index, false)
      end
      id = Array.typed(::Java::Int).new([@item_count])
      if (!(OS._remove_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, id.attr_length, id, 0)).equal?(OS.attr_no_err))
        error(SWT::ERROR_ITEM_NOT_REMOVED)
      end
      System.arraycopy(@items, index + 1, @items, index, (@item_count -= 1) - index)
      @items[@item_count] = nil
      OS._update_data_browser_items(self.attr_handle, 0, 0, nil, OS.attr_k_data_browser_item_no_property, OS.attr_k_data_browser_no_item)
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
      if (!(0 <= start && start <= end_ && end_ < @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      length_ = end_ - start + 1
      indices = Array.typed(::Java::Int).new(length_) { 0 }
      i = 0
      while i < length_
        indices[i] = i + start
        i += 1
      end
      remove(indices)
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
      duplicates = 0
      last = -1
      i = 0
      while i < new_indices.attr_length
        if ((new_indices[i]).equal?(last))
          duplicates += 1
        end
        last = new_indices[i]
        i += 1
      end
      id = Array.typed(::Java::Int).new(new_indices.attr_length - duplicates) { 0 }
      id_index = id.attr_length - 1
      last = -1
      i_ = 0
      while i_ < new_indices.attr_length
        index = new_indices[i_]
        if (!(index).equal?(last))
          if (!(index).equal?(@item_count - 1))
            fix_selection(index, false)
          end
          id[((id_index -= 1) + 1)] = @item_count
          System.arraycopy(@items, index + 1, @items, index, (@item_count -= 1) - index)
          @items[@item_count] = nil
          last = index
        end
        i_ += 1
      end
      if (!(OS._remove_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, id.attr_length, id, 0)).equal?(OS.attr_no_err))
        error(SWT::ERROR_ITEM_NOT_REMOVED)
      end
      OS._update_data_browser_items(self.attr_handle, 0, 0, nil, OS.attr_k_data_browser_item_no_property, OS.attr_k_data_browser_no_item)
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
      OS._remove_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, 0, nil, 0)
      OS._set_data_browser_scroll_position(self.attr_handle, 0, 0)
      @items = Array.typed(String).new(4) { nil }
      @item_count = @anchor_first = @anchor_last = 0
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
      if (0 <= index && index < @item_count)
        ids = Array.typed(::Java::Int).new([index + 1])
        select(ids, ids.attr_length, false)
      end
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
      if ((@item_count).equal?(0) || start >= @item_count)
        return
      end
      start = Math.max(0, start)
      end_ = Math.min(end_, @item_count - 1)
      length_ = end_ - start + 1
      ids = Array.typed(::Java::Int).new(length_) { 0 }
      i = 0
      while i < length_
        ids[i] = end_ - i + 1
        i += 1
      end
      select(ids, length_, false)
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
      length_ = indices.attr_length
      if ((length_).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length_ > 1))
        return
      end
      ids = Array.typed(::Java::Int).new(length_) { 0 }
      count = 0
      i = 0
      while i < length_
        index = indices[length_ - i - 1]
        if (index >= 0 && index < @item_count)
          ids[((count += 1) - 1)] = index + 1
        end
        i += 1
      end
      if (count > 0)
        select(ids, count, false)
      end
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Boolean] }
    def select(ids, count, clear)
      @ignore_select = true
      # Bug in the Macintosh.  When the DataBroswer selection flags includes
      # both kDataBrowserNeverEmptySelectionSet and kDataBrowserSelectOnlyOne,
      # two items are selected when SetDataBrowserSelectedItems() is called
      # with kDataBrowserItemsAssign to assign a new seletion despite the fact
      # that kDataBrowserSelectOnlyOne was specified.  The fix is to save and
      # restore kDataBrowserNeverEmptySelectionSet around each call to
      # SetDataBrowserSelectedItems().
      selection_flags = nil
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        selection_flags = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_data_browser_selection_flags(self.attr_handle, selection_flags)
        OS._set_data_browser_selection_flags(self.attr_handle, selection_flags[0] & ~OS.attr_k_data_browser_never_empty_selection_set)
      end
      operation = OS.attr_k_data_browser_items_assign
      if (!((self.attr_style & SWT::MULTI)).equal?(0) && !clear)
        operation = OS.attr_k_data_browser_items_add
      end
      OS._set_data_browser_selected_items(self.attr_handle, count, ids, operation)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        OS._set_data_browser_selection_flags(self.attr_handle, selection_flags[0])
      end
      @ignore_select = false
    end
    
    typesig { [Array.typed(String)] }
    def select(items)
      check_widget
      if ((items).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      # NOT DONE - range check
      length_ = items.attr_length
      ids = Array.typed(::Java::Int).new(length_) { 0 }
      i = 0
      while i < length_
        ids[i] = index_of(items[length_ - i - 1]) + 1
        i += 1
      end
      select(ids, length_, false)
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
      select(nil, 0, false)
    end
    
    typesig { [Array.typed(::Java::Float)] }
    def set_background(color)
      # Bug in the Macintosh.  The default background of a window changes when
      # the background of a data browser is set using SetControlFontStyle().  This
      # also affects the background of any TNXObject created on that window.  The
      # fix is to avoid calling SetControlFontStyle() which has no effect
      # in a data browser anyways.
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize, events)
      # Ensure that the top item is visible when the tree is resized
      # from a zero size to a size that can show the selection.
      # 
      # TODO - optimize
      index = -1
      if (resize)
        rect = get_client_area
        if (rect.attr_height < get_item_height)
          index = get_top_index
        end
      end
      result = super(x, y, width, height, move, resize, events)
      if (!(index).equal?(-1))
        show_index(index)
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
      if (!(0 <= index && index < @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      id = Array.typed(::Java::Int).new([index + 1])
      @items[index] = string
      OS._update_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, id.attr_length, id, OS.attr_k_data_browser_item_no_property, OS.attr_k_data_browser_no_item)
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
      OS._remove_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, 0, nil, 0)
      if (!(OS._add_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, items.attr_length, nil, OS.attr_k_data_browser_item_no_property)).equal?(OS.attr_no_err))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      @items = Array.typed(String).new(items.attr_length) { nil }
      System.arraycopy(items, 0, @items, 0, items.attr_length)
      @item_count = items.attr_length
    end
    
    typesig { [ScrollBar, ::Java::Boolean] }
    def set_scroll_bar_visible(bar, visible)
      horiz = Array.typed(::Java::Boolean).new(1) { false }
      vert = Array.typed(::Java::Boolean).new(1) { false }
      OS._get_data_browser_has_scroll_bars(self.attr_handle, horiz, vert)
      if (!((bar.attr_style & SWT::H_SCROLL)).equal?(0))
        horiz[0] = visible
      end
      if (!((bar.attr_style & SWT::V_SCROLL)).equal?(0))
        vert[0] = visible
      end
      if (!visible)
        bar.redraw
        bar.deregister
      end
      if ((OS._set_data_browser_has_scroll_bars(self.attr_handle, horiz[0], vert[0])).equal?(OS.attr_no_err))
        if (visible)
          bar.attr_handle = find_standard_bar(bar.attr_style)
          bar.register
          bar.hook_events
          bar.redraw
        else
          bar.attr_handle = 0
        end
        return true
      else
        if (!visible)
          bar.register
        end
      end
      return false
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
      set_selection(index, false)
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def set_selection(index, notify)
      # checkWidget();
      if (0 <= index && index < @item_count)
        ids = Array.typed(::Java::Int).new([index + 1])
        select(ids, ids.attr_length, true)
        show_index(index)
        if (notify)
          post_event(SWT::Selection)
        end
      end
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
      if ((@item_count).equal?(0) || start >= @item_count)
        return
      end
      start = Math.max(0, start)
      end_ = Math.min(end_, @item_count - 1)
      length_ = end_ - start + 1
      ids = Array.typed(::Java::Int).new(length_) { 0 }
      i = 0
      while i < length_
        ids[i] = end_ - i + 1
        i += 1
      end
      select(ids, length_, true)
      if (ids.attr_length > 0)
        show_index(ids[0] - 1)
      end
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
      length_ = indices.attr_length
      if ((length_).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length_ > 1))
        return
      end
      ids = Array.typed(::Java::Int).new(length_) { 0 }
      count = 0
      i = 0
      while i < length_
        index = indices[length_ - i - 1]
        if (index >= 0 && index < @item_count)
          ids[((count += 1) - 1)] = index + 1
        end
        i += 1
      end
      if (count > 0)
        select(ids, count, true)
        show_index(ids[0] - 1)
      end
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
      length_ = items.attr_length
      if ((length_).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length_ > 1))
        return
      end
      count = 0
      ids = Array.typed(::Java::Int).new(length_) { 0 }
      i = 0
      while i < length_
        string = items[length_ - i - 1]
        if (!((self.attr_style & SWT::SINGLE)).equal?(0))
          index = index_of(string, 0)
          if (!(index).equal?(-1))
            count = 1
            ids = Array.typed(::Java::Int).new([index + 1])
          end
        else
          index = 0
          while (!((index = index_of(string, index))).equal?(-1))
            if ((count).equal?(ids.attr_length))
              new_ids = Array.typed(::Java::Int).new(ids.attr_length + 4) { 0 }
              System.arraycopy(ids, 0, new_ids, 0, ids.attr_length)
              ids = new_ids
            end
            ids[((count += 1) - 1)] = index + 1
            index += 1
          end
        end
        i += 1
      end
      if (count > 0)
        select(ids, count, true)
        show_index(ids[0] - 1)
      end
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
      item_height = get_item_height
      top = Array.typed(::Java::Int).new(1) { 0 }
      left = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_scroll_position(self.attr_handle, top, left)
      top[0] = Math.max(0, Math.min(item_height * @item_count - get_client_area.attr_height, index * item_height))
      OS._set_data_browser_scroll_position(self.attr_handle, top[0], left[0])
    end
    
    typesig { [::Java::Int] }
    def show_index(index)
      if (0 <= index && index < @item_count)
        width = Array.typed(::Java::Short).new(1) { 0 }
        OS._get_data_browser_table_view_named_column_width(self.attr_handle, COLUMN_ID, width)
        rect = Rect.new
        inset = Rect.new
        OS._get_control_bounds(self.attr_handle, rect)
        OS._get_data_browser_scroll_bar_inset(self.attr_handle, inset)
        OS._set_data_browser_table_view_named_column_width(self.attr_handle, COLUMN_ID, RJava.cast_to_short((rect.attr_right - rect.attr_left - inset.attr_left - inset.attr_right)))
        OS._reveal_data_browser_item(self.attr_handle, index + 1, COLUMN_ID, (OS.attr_k_data_browser_reveal_without_selecting | OS.attr_k_data_browser_reveal_and_center_in_view))
        OS._set_data_browser_table_view_named_column_width(self.attr_handle, COLUMN_ID, width[0])
      end
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
      if (index >= 0)
        show_index(index)
      end
    end
    
    private
    alias_method :initialize__list, :initialize
  end
  
end
