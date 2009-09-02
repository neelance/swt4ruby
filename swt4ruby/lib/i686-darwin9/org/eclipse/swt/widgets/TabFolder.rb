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
  module TabFolderImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
  # @noextend This class is not intended to be subclassed by clients.
  class TabFolder < TabFolderImports.const_get :Composite
    include_class_members TabFolderImports
    
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
    
    attr_accessor :ignore_select
    alias_method :attr_ignore_select, :ignore_select
    undef_method :ignore_select
    alias_method :attr_ignore_select=, :ignore_select=
    undef_method :ignore_select=
    
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
    # @see SWT#TOP
    # @see SWT#BOTTOM
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @items = nil
      @item_count = 0
      @ignore_select = false
      super(parent, check_style(style))
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
        min_size = (self.attr_view).minimum_size
        trim = compute_trim(0, 0, RJava.cast_to_int(Math.ceil(min_size.attr_width)), 0)
        size.attr_x = Math.max(trim.attr_width, size.attr_x)
      end
      return size
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      widget = self.attr_view
      rect = widget.content_rect
      x -= rect.attr_x
      y -= rect.attr_y
      frame_ = widget.frame
      width += Math.ceil(frame_.attr_width - rect.attr_width)
      height += Math.ceil(frame_.attr_height - rect.attr_height)
      return super(x, y, width, height)
    end
    
    typesig { [] }
    def create_handle
      widget = SWTTabView.new.alloc
      widget.init
      widget.set_delegate(widget)
      if (!((self.attr_style & SWT::BOTTOM)).equal?(0))
        widget.set_tab_view_type(OS::NSBottomTabsBezelBorder)
      end
      self.attr_view = widget
    end
    
    typesig { [TabItem, ::Java::Int] }
    def create_item(item, index)
      count = @item_count
      if (!(0 <= index && index <= count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if ((count).equal?(@items.attr_length))
        new_items = Array.typed(TabItem).new(@items.attr_length + 4) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      System.arraycopy(@items, index, @items, index + 1, count - index)
      @items[index] = item
      @item_count += 1
      ns_item = NSTabViewItem.new.alloc.init
      item.attr_ns_item = ns_item
      (self.attr_view).insert_tab_view_item(ns_item, index)
    end
    
    typesig { [] }
    def create_widget
      super
      @items = Array.typed(TabItem).new(4) { nil }
    end
    
    typesig { [] }
    def default_nsfont
      return self.attr_display.attr_tab_view_font
    end
    
    typesig { [TabItem] }
    def destroy_item(item)
      count = @item_count
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
      (count -= 1)
      System.arraycopy(@items, index + 1, @items, index, count - index)
      @items[count] = nil
      if ((count).equal?(0))
        @items = Array.typed(TabItem).new(4) { nil }
      end
      @item_count = count
      (self.attr_view).remove_tab_view_item(item.attr_ns_item)
    end
    
    typesig { [NSPoint] }
    def find_tooltip(pt)
      pt = self.attr_view.convert_point_from_view_(pt, nil)
      ns_item = (self.attr_view).tab_view_item_at_point(pt)
      if (!(ns_item).nil?)
        i = 0
        while i < @item_count
          item = @items[i]
          if ((item.attr_ns_item.attr_id).equal?(ns_item.attr_id))
            return item
          end
          i += 1
        end
      end
      return super(pt)
    end
    
    typesig { [] }
    def get_client_area
      check_widget
      rect = (self.attr_view).content_rect
      x = Math.max(0, RJava.cast_to_int(rect.attr_x))
      y = Math.max(0, RJava.cast_to_int(rect.attr_y))
      width = Math.max(0, RJava.cast_to_int(Math.ceil(rect.attr_width)))
      height = Math.max(0, RJava.cast_to_int(Math.ceil(rect.attr_height)))
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
      count = @item_count
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
      ns_point = NSPoint.new
      ns_point.attr_x = point.attr_x
      ns_point.attr_y = point.attr_y
      tab_view = self.attr_view
      tab_view_item = tab_view.tab_view_item_at_point(ns_point)
      i = 0
      while i < @item_count
        item = @items[i].attr_ns_item
        if (item.is_equal(tab_view_item))
          return @items[i]
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
      return @item_count
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
      count = @item_count
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
      index = get_selection_index
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
      selected = (self.attr_view).selected_tab_view_item
      if ((selected).nil?)
        return -1
      end
      i = 0
      while i < @item_count
        if ((@items[i].attr_ns_item.attr_id).equal?(selected.attr_id))
          return i
        end
        i += 1
      end
      return -1
    end
    
    typesig { [] }
    def get_theme_alpha
      return (!(self.attr_background).nil? ? 1 : 0.25) * self.attr_parent.get_theme_alpha
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
      count = @item_count
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
        count = @item_count
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
      count = @item_count
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
    
    typesig { [NSFont] }
    def set_font(font)
      (self.attr_view).set_font(font)
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
      count = @item_count
      if (!(0 <= index && index < count))
        return
      end
      set_selection(index, false, false)
    end
    
    typesig { [::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_selection(index, notify, force)
      if (!(0 <= index && index < @item_count))
        return
      end
      current_index = get_selection_index
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
      @ignore_select = true
      (self.attr_view).select_tab_view_item_at_index(index)
      @ignore_select = false
      index = get_selection_index
      if (!(index).equal?(-1))
        item = @items[index]
        if (!(item).nil?)
          control = item.attr_control
          if (!(control).nil? && !control.is_disposed)
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
    
    typesig { [] }
    def set_small_size
      (self.attr_view).set_control_size(OS::NSSmallControlSize)
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def tab_view_will_select_tab_view_item(id, sel, tab_view, tab_view_item)
      if ((tab_view_item).equal?(0))
        return
      end
      i = 0
      while i < @item_count
        item = @items[i]
        if ((item.attr_ns_item.attr_id).equal?(tab_view_item))
          current_index = get_selection_index
          if (!(current_index).equal?(-1))
            selected = @items[current_index]
            if (!(selected).nil?)
              control = selected.attr_control
              if (!(control).nil? && !control.is_disposed)
                control.set_visible(false)
              end
            end
          end
          control = item.attr_control
          if (!(control).nil? && !control.is_disposed)
            control.set_visible(true)
          end
          break
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def tab_view_did_select_tab_view_item(id, sel, tab_view, tab_view_item)
      if ((tab_view_item).equal?(0))
        return
      end
      i = 0
      while i < @item_count
        item = @items[i]
        # Feature in Cocoa.  For some reason the control on a tab being
        # deselected has its parent removed natively.  The fix is to
        # re-set the control's parent.
        control = item.attr_control
        if (!(control).nil?)
          top_view_ = control.top_view
          if ((top_view_.superview).nil?)
            content_view.add_subview(top_view_, OS::NSWindowBelow, nil)
          end
        end
        if ((item.attr_ns_item.attr_id).equal?(tab_view_item))
          if (!@ignore_select)
            event = Event.new
            event.attr_item = item
            post_event(SWT::Selection, event)
          end
        end
        i += 1
      end
    end
    
    private
    alias_method :initialize__tab_folder, :initialize
  end
  
end
