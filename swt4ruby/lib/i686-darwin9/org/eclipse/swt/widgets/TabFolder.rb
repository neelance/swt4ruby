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
  module TabFolderImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
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
    
    attr_accessor :last_selected
    alias_method :attr_last_selected, :last_selected
    undef_method :last_selected
    alias_method :attr_last_selected=, :last_selected=
    undef_method :last_selected=
    
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
      @last_selected = 0
      super(parent, check_style(style))
      @last_selected = -1
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def call_paint_event_handler(control, damage_rgn, visible_rgn, the_event, next_handler)
      # Bug in the Macintosh.  The tab folder tabs draw outside the widget
      # bounds when they do not fit.  The fix is to clip the output to the
      # widget bounds.
      context = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_cgcontext_ref, OS.attr_type_cgcontext_ref, nil, 4, nil, context)
      OS._cgcontext_save_gstate(context[0])
      rect = CGRect.new
      OS._hiview_get_bounds(self.attr_handle, rect)
      OS._cgcontext_add_rect(context[0], rect)
      OS._cgcontext_clip(context[0])
      result = super(control, damage_rgn, visible_rgn, the_event, next_handler)
      OS._cgcontext_restore_gstate(context[0])
      return result
    end
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      size = super(w_hint, h_hint, changed)
      if ((w_hint).equal?(SWT::DEFAULT) && @items.attr_length > 0)
        width = 0
        gc = SwtGC.new(self)
        i = 0
        while i < @items.attr_length
          if (!(@items[i]).nil?)
            width += @items[i].calculate_width(gc)
          end
          i += 1
        end
        gc.dispose
        trim = compute_trim(0, 0, width, 0)
        size.attr_x = Math.max(trim.attr_width, size.attr_x)
      end
      return size
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      old_bounds = CGRect.new
      bounds = old_bounds
      OS._hiview_get_frame(self.attr_handle, old_bounds)
      min_size = 100
      if (old_bounds.attr_width < min_size || old_bounds.attr_height < min_size)
        OS._hiview_set_drawing_enabled(self.attr_handle, false)
        bounds = CGRect.new
        bounds.attr_width = bounds.attr_height = 100
        OS._hiview_set_frame(self.attr_handle, bounds)
      end
      client = Rect.new
      OS._get_tab_content_rect(self.attr_handle, client)
      if (old_bounds.attr_width < min_size || old_bounds.attr_height < min_size)
        OS._hiview_set_frame(self.attr_handle, old_bounds)
        OS._hiview_set_drawing_enabled(self.attr_handle, (self.attr_draw_count).equal?(0))
      end
      x -= client.attr_left
      y -= client.attr_top
      width += RJava.cast_to_int(bounds.attr_width) - (client.attr_right - client.attr_left)
      height += RJava.cast_to_int(bounds.attr_height) - (client.attr_bottom - client.attr_top)
      inset = get_inset
      x -= inset.attr_left
      y -= inset.attr_top
      width += inset.attr_left + inset.attr_right
      height += inset.attr_top + inset.attr_bottom
      return Rectangle.new(-client.attr_left, -client.attr_top, width, height)
    end
    
    typesig { [] }
    def create_handle
      out_control = Array.typed(::Java::Int).new(1) { 0 }
      window = OS._get_control_owner(self.attr_parent.attr_handle)
      direction = !((self.attr_style & SWT::BOTTOM)).equal?(0) ? RJava.cast_to_short(OS.attr_k_control_tab_direction_south) : RJava.cast_to_short(OS.attr_k_control_tab_direction_north)
      OS._create_tabs_control(window, Rect.new, RJava.cast_to_short(OS.attr_k_control_tab_size_large), direction, RJava.cast_to_short(0), 0, out_control)
      if ((out_control[0]).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      self.attr_handle = out_control[0]
    end
    
    typesig { [TabItem, ::Java::Int] }
    def create_item(item, index)
      count = OS._get_control32bit_maximum(self.attr_handle)
      if (!(0 <= index && index <= count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      OS._set_control32bit_maximum(self.attr_handle, count + 1)
      if ((count).equal?(@items.attr_length))
        new_items = Array.typed(TabItem).new(@items.attr_length + 4) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      System.arraycopy(@items, index, @items, index + 1, count - index)
      @items[index] = item
      # Send a selection event when the item that is added becomes
      # the new selection.  This only happens when the first item
      # is added.
      if ((count).equal?(0))
        OS._set_control32bit_value(self.attr_handle, 1)
        @last_selected = 0
        event = Event.new
        event.attr_item = @items[0]
        send_event(SWT::Selection, event)
        # the widget could be destroyed at this point
      end
    end
    
    typesig { [] }
    def create_widget
      super
      @items = Array.typed(TabItem).new(4) { nil }
    end
    
    typesig { [TabItem] }
    def destroy_item(item)
      count = OS._get_control32bit_maximum(self.attr_handle)
      index = 0
      while (index < count)
        if ((@items[index]).equal?(item))
          break
        end
        index += 1
      end
      if ((index).equal?(count))
        return
      end
      redraw_widget(self.attr_handle, false)
      selection_index = OS._get_control32bit_value(self.attr_handle) - 1
      (count -= 1)
      OS._set_control32bit_maximum(self.attr_handle, count)
      System.arraycopy(@items, index + 1, @items, index, count - index)
      @items[count] = nil
      if ((count).equal?(0))
        @items = Array.typed(TabItem).new(4) { nil }
      end
      i = index
      while i < count
        @items[i].update
        i += 1
      end
      if (count > 0 && (index).equal?(selection_index))
        set_selection(Math.max(0, selection_index - 1), true, true)
      end
      invalidate_visible_region(self.attr_handle)
    end
    
    typesig { [] }
    def get_client_area
      check_widget
      client = Rect.new
      if (!(OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_tab_content_rect_tag, Rect.attr_sizeof, client, nil)).equal?(OS.attr_no_err))
        return Rectangle.new(0, 0, 0, 0)
      end
      x = Math.max(0, client.attr_left)
      y = Math.max(0, client.attr_top)
      width = Math.max(0, client.attr_right - client.attr_left)
      height = Math.max(0, client.attr_bottom - client.attr_top)
      return Rectangle.new(x, y, width, height)
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
      count = OS._get_control32bit_maximum(self.attr_handle)
      if (!(0 <= index && index < count))
        error(SWT::ERROR_INVALID_RANGE)
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
      count = OS._get_control32bit_maximum(self.attr_handle)
      index = 0
      while index < count
        item = @items[index]
        bounds = item.get_bounds
        if (bounds.contains(point))
          return item
        end
        index += 1
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
      return OS._get_control32bit_maximum(self.attr_handle)
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
      count = OS._get_control32bit_maximum(self.attr_handle)
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
      index = OS._get_control32bit_value(self.attr_handle) - 1
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
      return OS._get_control32bit_value(self.attr_handle) - 1
    end
    
    typesig { [] }
    def get_theme_alpha
      return 0.25 * self.attr_parent.get_theme_alpha
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
      count = OS._get_control32bit_maximum(self.attr_handle)
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
        count = OS._get_control32bit_maximum(self.attr_handle)
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
    
    typesig { [] }
    def get_inset
      if (OS::VERSION >= 0x1020)
        return super
      end
      return !((self.attr_style & SWT::BOTTOM)).equal?(0) ? self.attr_display.attr_tab_folder_south_inset : self.attr_display.attr_tab_folder_north_inset
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_apply_background(next_handler, the_event, user_data)
      # Feature in the Macintosh.  For some reason, the tab folder applies the
      # theme background when drawing even though a theme has not been set for
      # the window.  The fix is to avoid running the default handler.
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_hit(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      index = OS._get_control32bit_value(self.attr_handle) - 1
      if ((index).equal?(@last_selected))
        return result
      end
      @last_selected = index
      count = OS._get_control32bit_maximum(self.attr_handle)
      i = 0
      while i < count
        if (!(i).equal?(index))
          control = @items[i].attr_control
          if (!(control).nil? && !control.is_disposed)
            control.set_visible(false)
          end
        end
        i += 1
      end
      item = nil
      if (!(index).equal?(-1))
        item = @items[index]
      end
      if (!(item).nil?)
        control = item.attr_control
        if (!(control).nil? && !control.is_disposed)
          control.set_bounds(get_client_area)
          control.set_visible(true)
        end
      end
      event = Event.new
      event.attr_item = item
      post_event(SWT::Selection, event)
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_set_focus_part(next_handler, the_event, user_data)
      part = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_control_part, OS.attr_type_control_part_code, nil, 2, nil, part)
      if ((part[0]).equal?(OS.attr_k_control_focus_no_part) || (part[0]).equal?(OS.attr_k_control_focus_next_part))
        return super(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
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
    
    typesig { [Control] }
    def remove_control(control)
      super(control)
      count = OS._get_control32bit_maximum(self.attr_handle)
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize, events)
      result = super(x, y, width, height, move, resize, events)
      if (!((result & RESIZED)).equal?(0))
        index = OS._get_control32bit_value(self.attr_handle) - 1
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
      check_widget
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
        set_selection(-1, false, false)
      else
        i = items.attr_length - 1
        while i >= 0
          index = index_of(items[i])
          if (!(index).equal?(-1))
            set_selection(index, false, false)
          end
          (i -= 1)
        end
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
      count = OS._get_control32bit_maximum(self.attr_handle)
      if (!(0 <= index && index < count))
        return
      end
      set_selection(index, false, false)
    end
    
    typesig { [::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_selection(index, notify, force)
      if (index >= OS._get_control32bit_maximum(self.attr_handle))
        return
      end
      current_index = OS._get_control32bit_value(self.attr_handle) - 1
      if (!force && (current_index).equal?(index))
        return
      end
      if (!(current_index).equal?(-1))
        item = @items[current_index]
        if (!(item).nil?)
          control = item.attr_control
          if (!(control).nil? && !control.is_disposed)
            control.set_visible(false)
          end
        end
      end
      OS._set_control32bit_value(self.attr_handle, index + 1)
      index = OS._get_control32bit_value(self.attr_handle) - 1
      if (has_focus)
        window = OS._get_control_owner(self.attr_handle)
        OS._set_keyboard_focus(window, self.attr_handle, RJava.cast_to_short((index + 1)))
      end
      @last_selected = index
      if (!(index).equal?(-1))
        item = @items[index]
        if (!(item).nil?)
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
    end
    
    typesig { [::Java::Boolean] }
    def traverse_page(next_)
      count = get_item_count
      if ((count).equal?(0))
        return false
      end
      index = get_selection_index
      if ((index).equal?(-1))
        index = 0
      else
        offset = (next_) ? 1 : -1
        index = (index + offset + count) % count
      end
      set_selection(index, true, false)
      return (index).equal?(get_selection_index)
    end
    
    private
    alias_method :initialize__tab_folder, :initialize
  end
  
end
