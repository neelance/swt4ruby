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
  module TabFolderImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # Instances of this class implement the notebook user interface
  # metaphor.  It allows the user to select a notebook page from
  # set of pages.
  # <p>
  # The item children that may be added to instances of this class
  # must be of type <code>TabItem</code>.
  # <code>Control</code> children are created and then set into a
  # tab item using <code>TabItem#setControl</code>.
  # </p><p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not make sense to set a layout on it.
  # </p><p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>TOP, BOTTOM</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles TOP and BOTTOM may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#tabfolder">TabFolder, TabItem snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class TabFolder < TabFolderImports.const_get :Composite
    include_class_members TabFolderImports
    
    attr_accessor :items
    alias_method :attr_items, :items
    undef_method :items
    alias_method :attr_items=, :items=
    undef_method :items=
    
    attr_accessor :image_list
    alias_method :attr_image_list, :image_list
    undef_method :image_list
    alias_method :attr_image_list=, :image_list=
    undef_method :image_list=
    
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
    # @see SWT
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @items = nil
      @image_list = nil
      super(parent, check_style(style))
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        style = check_bits(style, SWT::TOP, SWT::BOTTOM, 0, 0, 0, 0)
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
    
    typesig { [] }
    # long
    def child_style
      # long
      rc_style = OS.gtk_widget_get_modifier_style(self.attr_handle)
      if (!((OS.gtk_rc_style_get_color_flags(rc_style, 0) & OS::GTK_RC_BG)).equal?(0))
        return 0
      end
      OS.gtk_widget_realize(self.attr_handle)
      return OS.gtk_widget_get_style(self.attr_handle)
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the user changes the receiver's selection, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # When <code>widgetSelected</code> is called, the item field of the event object is valid.
    # <code>widgetDefaultSelected</code> is not called.
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
    
    typesig { [] }
    # long
    def client_handle
      index = OS.gtk_notebook_get_current_page(self.attr_handle)
      if (!(index).equal?(-1) && !(@items[index]).nil?)
        return @items[index].attr_page_handle
      end
      return self.attr_handle
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      size = super(w_hint, h_hint, changed)
      if (!(w_hint).equal?(SWT::DEFAULT) && w_hint < 0)
        w_hint = 0
      end
      if (!(h_hint).equal?(SWT::DEFAULT) && h_hint < 0)
        h_hint = 0
      end
      scrollable = OS.gtk_notebook_get_scrollable(self.attr_handle)
      OS.gtk_notebook_set_scrollable(self.attr_handle, false)
      notebook_size = compute_native_size(self.attr_handle, w_hint, h_hint, changed)
      OS.gtk_notebook_set_scrollable(self.attr_handle, scrollable)
      size.attr_x = Math.max(notebook_size.attr_x, size.attr_x)
      size.attr_y = Math.max(notebook_size.attr_y, size.attr_y)
      return size
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      force_resize
      # long
      client_handle_ = client_handle
      client_x = OS._gtk_widget_x(client_handle_)
      client_y = OS._gtk_widget_y(client_handle_)
      x -= client_x
      y -= client_y
      width += client_x + client_x
      if (!((self.attr_style & SWT::BOTTOM)).equal?(0))
        parent_height = OS._gtk_widget_height(self.attr_handle)
        client_height = OS._gtk_widget_height(client_handle_)
        height += parent_height - client_height
      else
        height += client_x + client_y
      end
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE
      self.attr_fixed_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
      if ((self.attr_fixed_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_fixed_set_has_window(self.attr_fixed_handle, true)
      self.attr_handle = OS.gtk_notebook_new
      if ((self.attr_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_container_add(self.attr_fixed_handle, self.attr_handle)
      OS.gtk_notebook_set_scrollable(self.attr_handle, true)
      OS.gtk_notebook_set_show_tabs(self.attr_handle, true)
      if (!((self.attr_style & SWT::BOTTOM)).equal?(0))
        OS.gtk_notebook_set_tab_pos(self.attr_handle, OS::GTK_POS_BOTTOM)
      end
    end
    
    typesig { [::Java::Int] }
    def create_widget(index)
      super(index)
      @items = Array.typed(TabItem).new(4) { nil }
    end
    
    typesig { [TabItem, ::Java::Int] }
    def create_item(item, index)
      # long
      list = OS.gtk_container_get_children(self.attr_handle)
      item_count = 0
      if (!(list).equal?(0))
        item_count = OS.g_list_length(list)
        OS.g_list_free(list)
      end
      if (!(0 <= index && index <= item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if ((item_count).equal?(@items.attr_length))
        new_items = Array.typed(TabItem).new(@items.attr_length + 4) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      # long
      box_handle = OS.gtk_hbox_new(false, 0)
      if ((box_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      # long
      label_handle = OS.gtk_label_new_with_mnemonic(nil)
      if ((label_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      # long
      image_handle = OS.gtk_image_new
      if ((image_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_container_add(box_handle, image_handle)
      OS.gtk_container_add(box_handle, label_handle)
      # long
      page_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
      if ((page_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, SWITCH_PAGE)
      OS.gtk_notebook_insert_page(self.attr_handle, page_handle, box_handle, index)
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, SWITCH_PAGE)
      OS.gtk_widget_show(box_handle)
      OS.gtk_widget_show(label_handle)
      OS.gtk_widget_show(page_handle)
      item.attr_state |= HANDLE
      item.attr_handle = box_handle
      item.attr_label_handle = label_handle
      item.attr_image_handle = image_handle
      item.attr_page_handle = page_handle
      System.arraycopy(@items, index, @items, index + 1, ((item_count += 1) - 1) - index)
      @items[index] = item
      if (!((self.attr_state & FOREGROUND)).equal?(0))
        item.set_foreground_color(get_foreground_color)
      end
      if (!((self.attr_state & FONT)).equal?(0))
        item.set_font_description(get_font_description)
      end
      if ((item_count).equal?(1))
        OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, SWITCH_PAGE)
        OS.gtk_notebook_set_current_page(self.attr_handle, 0)
        OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, SWITCH_PAGE)
        event = Event.new
        event.attr_item = @items[0]
        send_event(SWT::Selection, event)
        # the widget could be destroyed at this point
      end
    end
    
    typesig { [TabItem] }
    def destroy_item(item)
      index = 0
      item_count = get_item_count
      while (index < item_count)
        if ((@items[index]).equal?(item))
          break
        end
        index += 1
      end
      if ((index).equal?(item_count))
        error(SWT::ERROR_ITEM_NOT_REMOVED)
      end
      old_index = OS.gtk_notebook_get_current_page(self.attr_handle)
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, SWITCH_PAGE)
      OS.gtk_notebook_remove_page(self.attr_handle, index)
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, SWITCH_PAGE)
      System.arraycopy(@items, index + 1, @items, index, (item_count -= 1) - index)
      @items[item_count] = nil
      if ((index).equal?(old_index))
        new_index = OS.gtk_notebook_get_current_page(self.attr_handle)
        if (!(new_index).equal?(-1))
          control = @items[new_index].get_control
          if (!(control).nil? && !control.is_disposed)
            control.set_bounds(get_client_area)
            control.set_visible(true)
          end
          event = Event.new
          event.attr_item = @items[new_index]
          send_event(SWT::Selection, event)
          # the widget could be destroyed at this point
        end
      end
    end
    
    typesig { [] }
    # long
    def event_handle
      return self.attr_handle
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
      if (!(0 <= index && index < get_item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      # long
      list = OS.gtk_container_get_children(self.attr_handle)
      if ((list).equal?(0))
        error(SWT::ERROR_CANNOT_GET_ITEM)
      end
      item_count = OS.g_list_length(list)
      OS.g_list_free(list)
      if (!(0 <= index && index < item_count))
        error(SWT::ERROR_CANNOT_GET_ITEM)
      end
      return @items[index]
    end
    
    typesig { [Point] }
    # Returns the tab item at the given point in the receiver
    # or null if no such item exists. The point is in the
    # coordinate system of the receiver.
    # 
    # @param point the point used to locate the item
    # @return the tab item at the given point, or null if the point is not in a tab item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_item(point)
      check_widget
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      # long
      list = OS.gtk_container_get_children(self.attr_handle)
      if ((list).equal?(0))
        return nil
      end
      item_count = OS.g_list_length(list)
      OS.g_list_free(list)
      i = 0
      while i < item_count
        item = @items[i]
        rect = item.get_bounds
        if (rect.contains(point))
          return item
        end
        i += 1
      end
      return nil
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
      # long
      list = OS.gtk_container_get_children(self.attr_handle)
      if ((list).equal?(0))
        return 0
      end
      item_count = OS.g_list_length(list)
      OS.g_list_free(list)
      return item_count
    end
    
    typesig { [] }
    # Returns an array of <code>TabItem</code>s which are the items
    # in the receiver.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the items in the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_items
      check_widget
      count = get_item_count
      result = Array.typed(TabItem).new(count) { nil }
      System.arraycopy(@items, 0, result, 0, count)
      return result
    end
    
    typesig { [] }
    # Returns an array of <code>TabItem</code>s that are currently
    # selected in the receiver. An empty array indicates that no
    # items are selected.
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
      index = OS.gtk_notebook_get_current_page(self.attr_handle)
      if ((index).equal?(-1))
        return Array.typed(TabItem).new(0) { nil }
      end
      return Array.typed(TabItem).new([@items[index]])
    end
    
    typesig { [] }
    # Returns the zero-relative index of the item which is currently
    # selected in the receiver, or -1 if no item is selected.
    # 
    # @return the index of the selected item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_index
      check_widget
      return OS.gtk_notebook_get_current_page(self.attr_handle)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_focus(widget, direction_type)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def gtk_switch_page(widget, page, page_num)
      index = OS.gtk_notebook_get_current_page(self.attr_handle)
      if (!(index).equal?(-1))
        control = @items[index].get_control
        if (!(control).nil? && !control.is_disposed)
          control.set_visible(false)
        end
      end
      # 64
      item = @items[RJava.cast_to_int(page_num)]
      control = item.get_control
      if (!(control).nil? && !control.is_disposed)
        control.set_bounds(get_client_area)
        control.set_visible(true)
      end
      event = Event.new
      event.attr_item = item
      post_event(SWT::Selection, event)
      return 0
    end
    
    typesig { [] }
    def hook_events
      super
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_switch_page, self.attr_display.attr_closures[SWITCH_PAGE], false)
    end
    
    typesig { [TabItem] }
    # Searches the receiver's list starting at the first item
    # (index 0) until an item is found that is equal to the
    # argument, and returns the index of that item. If no item
    # is found, returns -1.
    # 
    # @param item the search item
    # @return the index of the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the item is null</li>
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
      # long
      list = OS.gtk_container_get_children(self.attr_handle)
      if ((list).equal?(0))
        return -1
      end
      count = OS.g_list_length(list)
      OS.g_list_free(list)
      i = 0
      while i < count
        if ((@items[i]).equal?(item))
          return i
        end
        i += 1
      end
      return -1
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def minimum_size(w_hint, h_hint, flush_cache)
      children = __get_children
      width = 0
      height = 0
      i = 0
      while i < children.attr_length
        child = children[i]
        index = 0
        count = 0
        # long
        list = OS.gtk_container_get_children(self.attr_handle)
        if (!(list).equal?(0))
          count = OS.g_list_length(list)
          OS.g_list_free(list)
        end
        while (index < count)
          if ((@items[index].attr_control).equal?(child))
            break
          end
          index += 1
        end
        if ((index).equal?(count))
          rect = child.get_bounds
          width = Math.max(width, rect.attr_x + rect.attr_width)
          height = Math.max(height, rect.attr_y + rect.attr_height)
        else
          size = child.compute_size(w_hint, h_hint, flush_cache)
          width = Math.max(width, size.attr_x)
          height = Math.max(height, size.attr_y)
        end
        i += 1
      end
      return Point.new(width, height)
    end
    
    typesig { [::Java::Char] }
    def mnemonic_hit(key)
      item_count = get_item_count
      i = 0
      while i < item_count
        # long
        label_handle = @items[i].attr_label_handle
        if (!(label_handle).equal?(0) && mnemonic_hit(label_handle, key))
          return true
        end
        i += 1
      end
      return false
    end
    
    typesig { [::Java::Char] }
    def mnemonic_match(key)
      item_count = get_item_count
      i = 0
      while i < item_count
        # long
        label_handle = @items[i].attr_label_handle
        if (!(label_handle).equal?(0) && mnemonic_hit(label_handle, key))
          return true
        end
        i += 1
      end
      return false
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (!(@items).nil?)
        i = 0
        while i < @items.attr_length
          item = @items[i]
          if (!(item).nil? && !item.is_disposed)
            item.release(false)
          end
          i += 1
        end
        @items = nil
      end
      super(destroy)
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@image_list).nil?)
        @image_list.dispose
      end
      @image_list = nil
    end
    
    typesig { [Control] }
    def remove_control(control)
      super(control)
      count = get_item_count
      i = 0
      while i < count
        item = @items[i]
        if ((item.attr_control).equal?(control))
          item.set_control(nil)
        end
        i += 1
      end
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize)
      result = super(x, y, width, height, move, resize)
      if (!((result & RESIZED)).equal?(0))
        index = get_selection_index
        if (!(index).equal?(-1))
          item = @items[index]
          control = item.attr_control
          if (!(control).nil? && !control.is_disposed)
            control.set_bounds(get_client_area)
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int] }
    # long
    def set_font_description(font)
      super(font)
      items = get_items
      i = 0
      while i < items.attr_length
        if (!(items[i]).nil?)
          items[i].set_font_description(font)
        end
        i += 1
      end
    end
    
    typesig { [GdkColor] }
    def set_foreground_color(color)
      super(color)
      items = get_items
      i = 0
      while i < items.attr_length
        if (!(items[i]).nil?)
          items[i].set_foreground_color(color)
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int] }
    # Selects the item at the given zero-relative index in the receiver.
    # If the item at the index was already selected, it remains selected.
    # The current selection is first cleared, then the new items are
    # selected. Indices that are out of range are ignored.
    # 
    # @param index the index of the item to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(index)
      check_widget
      if (!(0 <= index && index < get_item_count))
        return
      end
      set_selection(index, false)
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def set_selection(index, notify)
      if (index < 0)
        return
      end
      old_index = OS.gtk_notebook_get_current_page(self.attr_handle)
      if ((old_index).equal?(index))
        return
      end
      if (!(old_index).equal?(-1))
        item = @items[old_index]
        control = item.attr_control
        if (!(control).nil? && !control.is_disposed)
          control.set_visible(false)
        end
      end
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, SWITCH_PAGE)
      OS.gtk_notebook_set_current_page(self.attr_handle, index)
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, SWITCH_PAGE)
      new_index = OS.gtk_notebook_get_current_page(self.attr_handle)
      if (!(new_index).equal?(-1))
        item = @items[new_index]
        control = item.attr_control
        if (!(control).nil? && !control.is_disposed)
          control.set_bounds(get_client_area)
          control.set_visible(true)
        end
        if (notify)
          event = Event.new
          event.attr_item = item
          send_event(SWT::Selection, event)
        end
      end
    end
    
    typesig { [TabItem] }
    # Sets the receiver's selection to the given item.
    # The current selected is first cleared, then the new item is
    # selected.
    # 
    # @param item the item to select
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the item is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def set_selection(item)
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_selection(Array.typed(TabItem).new([item]))
    end
    
    typesig { [Array.typed(TabItem)] }
    # Sets the receiver's selection to be the given array of items.
    # The current selected is first cleared, then the new items are
    # selected.
    # 
    # @param items the array of items
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the items array is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(items)
      check_widget
      if ((items).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((items.attr_length).equal?(0))
        set_selection(-1, false)
      else
        i = items.attr_length - 1
        while i >= 0
          index = index_of(items[i])
          if (!(index).equal?(-1))
            set_selection(index, false)
          end
          (i -= 1)
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    def traverse_page(next_)
      if (next_)
        OS.gtk_notebook_next_page(self.attr_handle)
      else
        OS.gtk_notebook_prev_page(self.attr_handle)
      end
      return true
    end
    
    private
    alias_method :initialize__tab_folder, :initialize
  end
  
end
