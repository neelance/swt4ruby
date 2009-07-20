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
  module ExpandBarImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class support the layout of selectable
  # expand bar items.
  # <p>
  # The item children that may be added to instances of this class
  # must be of type <code>ExpandItem</code>.
  # </p><p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>V_SCROLL</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Expand, Collapse</dd>
  # </dl>
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see ExpandItem
  # @see ExpandEvent
  # @see ExpandListener
  # @see ExpandAdapter
  # @see <a href="http://www.eclipse.org/swt/snippets/#expandbar">ExpandBar snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.2
  class ExpandBar < ExpandBarImports.const_get :Composite
    include_class_members ExpandBarImports
    
    attr_accessor :items
    alias_method :attr_items, :items
    undef_method :items
    alias_method :attr_items=, :items=
    undef_method :items=
    
    attr_accessor :last_focus
    alias_method :attr_last_focus, :last_focus
    undef_method :last_focus
    alias_method :attr_last_focus=, :last_focus=
    undef_method :last_focus=
    
    attr_accessor :item_count
    alias_method :attr_item_count, :item_count
    undef_method :item_count
    alias_method :attr_item_count=, :item_count=
    undef_method :item_count=
    
    attr_accessor :spacing
    alias_method :attr_spacing, :spacing
    undef_method :spacing
    alias_method :attr_spacing=, :spacing=
    undef_method :spacing=
    
    attr_accessor :y_current_scroll
    alias_method :attr_y_current_scroll, :y_current_scroll
    undef_method :y_current_scroll
    alias_method :attr_y_current_scroll=, :y_current_scroll=
    undef_method :y_current_scroll=
    
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
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @items = nil
      @last_focus = nil
      @item_count = 0
      @spacing = 0
      @y_current_scroll = 0
      super(parent, style)
    end
    
    typesig { [ExpandListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when an item in the receiver is expanded or collapsed
    # by sending it one of the messages defined in the <code>ExpandListener</code>
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
    # @see ExpandListener
    # @see #removeExpandListener
    def add_expand_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Expand, typed_listener)
      add_listener(SWT::Collapse, typed_listener)
    end
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        if (!(w_hint).equal?(SWT::DEFAULT) && w_hint < 0)
          w_hint = 0
        end
        if (!(h_hint).equal?(SWT::DEFAULT) && h_hint < 0)
          h_hint = 0
        end
        size = compute_native_size(self.attr_handle, w_hint, h_hint, changed)
        border = OS.gtk_container_get_border_width(self.attr_handle)
        size.attr_x += 2 * border
        size.attr_y += 2 * border
        return size
      else
        height = 0
        width = 0
        if ((w_hint).equal?(SWT::DEFAULT) || (h_hint).equal?(SWT::DEFAULT))
          if (@item_count > 0)
            height += @spacing
            gc = SwtGC.new(self)
            i = 0
            while i < @item_count
              item = @items[i]
              height += item.get_header_height
              if (item.attr_expanded)
                height += item.attr_height
              end
              height += @spacing
              width = Math.max(width, item.get_preferred_width(gc))
              i += 1
            end
            gc.dispose
          end
        end
        if ((width).equal?(0))
          width = DEFAULT_WIDTH
        end
        if ((height).equal?(0))
          height = DEFAULT_HEIGHT
        end
        if (!(w_hint).equal?(SWT::DEFAULT))
          width = w_hint
        end
        if (!(h_hint).equal?(SWT::DEFAULT))
          height = h_hint
        end
        return Point.new(width, height)
      end
    end
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        self.attr_fixed_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
        if ((self.attr_fixed_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_fixed_set_has_window(self.attr_fixed_handle, true)
        self.attr_handle = OS.gtk_vbox_new(false, 0)
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        if (!((self.attr_style & SWT::V_SCROLL)).equal?(0))
          self.attr_scrolled_handle = OS.gtk_scrolled_window_new(0, 0)
          if ((self.attr_scrolled_handle).equal?(0))
            error(SWT::ERROR_NO_HANDLES)
          end
          vsp = !((self.attr_style & SWT::V_SCROLL)).equal?(0) ? OS::GTK_POLICY_AUTOMATIC : OS::GTK_POLICY_NEVER
          OS.gtk_scrolled_window_set_policy(self.attr_scrolled_handle, OS::GTK_POLICY_NEVER, vsp)
          OS.gtk_container_add(self.attr_fixed_handle, self.attr_scrolled_handle)
          OS.gtk_scrolled_window_add_with_viewport(self.attr_scrolled_handle, self.attr_handle)
        else
          OS.gtk_container_add(self.attr_fixed_handle, self.attr_handle)
        end
        OS.gtk_container_set_border_width(self.attr_handle, 0)
      else
        # long
        top_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
        if ((top_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_fixed_set_has_window(top_handle, true)
        if (!((self.attr_style & SWT::V_SCROLL)).equal?(0))
          self.attr_fixed_handle = top_handle
          self.attr_scrolled_handle = OS.gtk_scrolled_window_new(0, 0)
          if ((self.attr_scrolled_handle).equal?(0))
            error(SWT::ERROR_NO_HANDLES)
          end
          self.attr_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
          if ((self.attr_handle).equal?(0))
            error(SWT::ERROR_NO_HANDLES)
          end
          OS.gtk_fixed_set_has_window(self.attr_handle, true)
          OS.gtk_container_add(self.attr_fixed_handle, self.attr_scrolled_handle)
          # Force the scrolledWindow to have a single child that is
          # not scrolled automatically.  Calling gtk_container_add()
          # seems to add the child correctly but cause a warning.
          warnings = self.attr_display.get_warnings
          self.attr_display.set_warnings(false)
          OS.gtk_container_add(self.attr_scrolled_handle, self.attr_handle)
          self.attr_display.set_warnings(warnings)
        else
          self.attr_handle = top_handle
        end
        OS._gtk_widget_set_flags(self.attr_handle, OS::GTK_CAN_FOCUS)
      end
    end
    
    typesig { [ExpandItem, ::Java::Int, ::Java::Int] }
    def create_item(item, style, index)
      if (!(0 <= index && index <= @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if ((@item_count).equal?(@items.attr_length))
        new_items = Array.typed(ExpandItem).new(@item_count + 4) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      System.arraycopy(@items, index, @items, index + 1, @item_count - index)
      @items[index] = item
      @item_count += 1
      if (OS::GTK_VERSION < OS._version(2, 4, 0))
        if ((@last_focus).nil?)
          @last_focus = item
        end
      end
      item.attr_width = Math.max(0, get_client_area.attr_width - @spacing * 2)
      layout_items(index, true)
    end
    
    typesig { [::Java::Int] }
    def create_widget(index)
      super(index)
      @items = Array.typed(ExpandItem).new(4) { nil }
    end
    
    typesig { [ExpandItem] }
    def destroy_item(item)
      index = 0
      while (index < @item_count)
        if ((@items[index]).equal?(item))
          break
        end
        index += 1
      end
      if ((index).equal?(@item_count))
        return
      end
      if (OS::GTK_VERSION < OS._version(2, 4, 0))
        if ((item).equal?(@last_focus))
          focus_index = index > 0 ? index - 1 : 1
          if (focus_index < @item_count)
            @last_focus = @items[focus_index]
            @last_focus.redraw
          else
            @last_focus = nil
          end
        end
      end
      System.arraycopy(@items, index + 1, @items, index, (@item_count -= 1) - index)
      @items[@item_count] = nil
      item.redraw
      layout_items(index, true)
    end
    
    typesig { [] }
    # long
    def event_handle
      return OS::GTK_VERSION >= OS._version(2, 4, 0) ? self.attr_fixed_handle : self.attr_handle
    end
    
    typesig { [::Java::Int] }
    # long
    def force_focus(focus_handle)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        if (!(@last_focus).nil? && @last_focus.set_focus)
          return true
        end
        i = 0
        while i < @item_count
          item = @items[i]
          if (item.set_focus)
            return true
          end
          i += 1
        end
      end
      return super(focus_handle)
    end
    
    typesig { [] }
    def has_focus
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        i = 0
        while i < @item_count
          item = @items[i]
          if (item.has_focus)
            return true
          end
          i += 1
        end
      end
      return super
    end
    
    typesig { [] }
    def get_band_height
      if ((self.attr_font).nil?)
        return ExpandItem::CHEVRON_SIZE
      end
      gc = SwtGC.new(self)
      metrics = gc.get_font_metrics
      gc.dispose
      return Math.max(ExpandItem::CHEVRON_SIZE, metrics.get_height)
    end
    
    typesig { [] }
    def get_foreground_color
      if (OS::GTK_VERSION < OS._version(2, 4, 0))
        if (((self.attr_state & FOREGROUND)).equal?(0))
          return self.attr_display.get_system_color(SWT::COLOR_TITLE_FOREGROUND).attr_handle
        end
      end
      return super
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
    # Returns an array of <code>ExpandItem</code>s which are the items
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
      result = Array.typed(ExpandItem).new(@item_count) { nil }
      System.arraycopy(@items, 0, result, 0, @item_count)
      return result
    end
    
    typesig { [] }
    # Returns the receiver's spacing.
    # 
    # @return the spacing
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_spacing
      check_widget
      return @spacing
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_button_press_event(widget, event)
      if (OS::GTK_VERSION < OS._version(2, 4, 0))
        gdk_event = GdkEventButton.new
        OS.memmove(gdk_event, event, GdkEventButton.attr_sizeof)
        x = RJava.cast_to_int(gdk_event.attr_x)
        y = RJava.cast_to_int(gdk_event.attr_y)
        i = 0
        while i < @item_count
          item = @items[i]
          hover = item.attr_x <= x && x < (item.attr_x + item.attr_width) && item.attr_y <= y && y < (item.attr_y + get_band_height)
          if (hover && !(item).equal?(@last_focus))
            @last_focus.redraw
            @last_focus = item
            @last_focus.redraw
            force_focus
            break
          end
          i += 1
        end
      end
      return super(widget, event)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_button_release_event(widget, event)
      if (OS::GTK_VERSION < OS._version(2, 4, 0))
        if (!(@last_focus).nil?)
          gdk_event = GdkEventButton.new
          OS.memmove(gdk_event, event, GdkEventButton.attr_sizeof)
          x = RJava.cast_to_int(gdk_event.attr_x)
          y = RJava.cast_to_int(gdk_event.attr_y)
          hover = @last_focus.attr_x <= x && x < (@last_focus.attr_x + @last_focus.attr_width) && @last_focus.attr_y <= y && y < (@last_focus.attr_y + get_band_height)
          if (hover)
            ev = Event.new
            ev.attr_item = @last_focus
            notify_listeners(@last_focus.attr_expanded ? SWT::Collapse : SWT::Expand, ev)
            @last_focus.attr_expanded = !@last_focus.attr_expanded
            show_item(@last_focus)
          end
        end
      end
      return super(widget, event)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_expose_event(widget, event_ptr)
      if (OS::GTK_VERSION < OS._version(2, 4, 0))
        gdk_event = GdkEventExpose.new
        OS.memmove(gdk_event, event_ptr, GdkEventExpose.attr_sizeof)
        data = SwtGCData.new
        data.attr_damage_rgn = gdk_event.attr_region
        gc = SwtGC.gtk_new(self, data)
        OS.gdk_gc_set_clip_region(gc.attr_handle, gdk_event.attr_region)
        has_focus_ = is_focus_control
        i = 0
        while i < @item_count
          item = @items[i]
          item.draw_item(gc, has_focus_ && (item).equal?(@last_focus))
          i += 1
        end
        gc.dispose
      end
      return super(widget, event_ptr)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_focus_in_event(widget, event)
      if (OS::GTK_VERSION < OS._version(2, 4, 0))
        if (!(@last_focus).nil?)
          @last_focus.redraw
        end
      end
      return super(widget, event)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_focus_out_event(widget, event)
      if (OS::GTK_VERSION < OS._version(2, 4, 0))
        if (!(@last_focus).nil?)
          @last_focus.redraw
        end
      end
      return super(widget, event)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_key_press_event(widget, event)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        if (!has_focus)
          return 0
        end
        # long
        result = super(widget, event)
        if (!(result).equal?(0))
          return result
        end
        index = 0
        while (index < @item_count)
          if (@items[index].has_focus)
            break
          end
          index += 1
        end
        gdk_event = GdkEventKey.new
        OS.memmove(gdk_event, event, GdkEventKey.attr_sizeof)
        next_ = false
        case (gdk_event.attr_keyval)
        when OS::GDK_Up, OS::GDK_Left
          next_ = false
        when OS::GDK_Down, OS::GDK_Right
          next_ = true
        else
          return result
        end
        start = index
        offset = next_ ? 1 : -1
        while (!((index = (index + offset + @item_count) % @item_count)).equal?(start))
          item = @items[index]
          if (item.set_focus)
            return result
          end
        end
        return result
      else
        if (!(@last_focus).nil?)
          key_event = GdkEventKey.new
          OS.memmove(key_event, event, GdkEventKey.attr_sizeof)
          case (key_event.attr_keyval)
          when OS::GDK_Return, OS::GDK_space
            ev = Event.new
            ev.attr_item = @last_focus
            send_event(@last_focus.attr_expanded ? SWT::Collapse : SWT::Expand, ev)
            @last_focus.attr_expanded = !@last_focus.attr_expanded
            show_item(@last_focus)
          when OS::GDK_Up, OS::GDK_KP_Up
            focus_index = index_of(@last_focus)
            if (focus_index > 0)
              @last_focus.redraw
              @last_focus = @items[focus_index - 1]
              @last_focus.redraw
            end
          when OS::GDK_Down, OS::GDK_KP_Down
            focus_index = index_of(@last_focus)
            if (focus_index < @item_count - 1)
              @last_focus.redraw
              @last_focus = @items[focus_index + 1]
              @last_focus.redraw
            end
          end
        end
      end
      return super(widget, event)
    end
    
    typesig { [ExpandItem] }
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
    # <li>ERROR_INVALID_ARGUMENT - if the item has been disposed</li>
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
        if ((@items[i]).equal?(item))
          return i
        end
        i += 1
      end
      return -1
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def layout_items(index, set_scrollbar)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        i = 0
        while i < @item_count
          item = @items[i]
          if (!(item).nil?)
            item.resize_control(@y_current_scroll)
          end
          i += 1
        end
      else
        if (index < @item_count)
          y = @spacing - @y_current_scroll
          i = 0
          while i < index
            item = @items[i]
            if (item.attr_expanded)
              y += item.attr_height
            end
            y += item.get_header_height + @spacing
            i += 1
          end
          i_ = index
          while i_ < @item_count
            item = @items[i_]
            item.set_bounds(@spacing, y, 0, 0, true, false)
            if (item.attr_expanded)
              y += item.attr_height
            end
            y += item.get_header_height + @spacing
            i_ += 1
          end
        end
        if (set_scrollbar)
          set_scrollbar
        end
      end
    end
    
    typesig { [] }
    # long
    def parenting_handle
      return OS::GTK_VERSION >= OS._version(2, 4, 0) ? self.attr_fixed_handle : self.attr_handle
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      i = 0
      while i < @item_count
        item = @items[i]
        if (!(item).nil? && !item.is_disposed)
          item.release(false)
        end
        i += 1
      end
      super(destroy)
    end
    
    typesig { [ExpandListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when items in the receiver are expanded or collapsed.
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
    # @see ExpandListener
    # @see #addExpandListener
    def remove_expand_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Expand, listener)
      self.attr_event_table.unhook(SWT::Collapse, listener)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize)
      result = super(x, y, width, height, move, resize)
      if (OS::GTK_VERSION < OS._version(2, 4, 0))
        if (resize)
          if (!((self.attr_style & SWT::V_SCROLL)).equal?(0))
            set_scrollbar
          else
            i = 0
            while i < @item_count
              item = @items[i]
              new_width = Math.max(0, get_client_area.attr_width - @spacing * 2)
              if (!(item.attr_width).equal?(new_width))
                item.set_bounds(0, 0, new_width, item.attr_height, false, true)
              end
              i += 1
            end
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int] }
    # long
    def set_font_description(font)
      super(font)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        i = 0
        while i < @item_count
          @items[i].set_font_description(font)
          i += 1
        end
        layout_items(0, true)
      end
    end
    
    typesig { [GdkColor] }
    def set_foreground_color(color)
      super(color)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        i = 0
        while i < @item_count
          @items[i].set_foreground_color(color)
          i += 1
        end
      end
    end
    
    typesig { [] }
    def set_scrollbar
      if ((@item_count).equal?(0))
        return
      end
      if (((self.attr_style & SWT::V_SCROLL)).equal?(0))
        return
      end
      height = get_client_area.attr_height
      item = @items[@item_count - 1]
      max_height = item.attr_y + get_band_height + @spacing
      if (item.attr_expanded)
        max_height += item.attr_height
      end
      # long
      adjustment_handle = OS.gtk_scrolled_window_get_vadjustment(self.attr_scrolled_handle)
      adjustment = GtkAdjustment.new
      OS.memmove(adjustment, adjustment_handle)
      @y_current_scroll = RJava.cast_to_int(adjustment.attr_value)
      # claim bottom free space
      if (@y_current_scroll > 0 && height > max_height)
        @y_current_scroll = Math.max(0, @y_current_scroll + max_height - height)
        layout_items(0, false)
      end
      max_height += @y_current_scroll
      adjustment.attr_value = Math.min(@y_current_scroll, max_height)
      adjustment.attr_upper = max_height
      adjustment.attr_page_size = height
      OS.memmove(adjustment_handle, adjustment)
      OS.gtk_adjustment_changed(adjustment_handle)
      policy = max_height > height ? OS::GTK_POLICY_ALWAYS : OS::GTK_POLICY_NEVER
      OS.gtk_scrolled_window_set_policy(self.attr_scrolled_handle, OS::GTK_POLICY_NEVER, policy)
      width = OS._gtk_widget_width(self.attr_fixed_handle) - @spacing * 2
      if ((policy).equal?(OS::GTK_POLICY_ALWAYS))
        # long
        v_handle = OS._gtk_scrolled_window_vscrollbar(self.attr_scrolled_handle)
        requisition = GtkRequisition.new
        OS.gtk_widget_size_request(v_handle, requisition)
        width -= requisition.attr_width
      end
      width = Math.max(0, width)
      i = 0
      while i < @item_count
        item2 = @items[i]
        item2.set_bounds(0, 0, width, item2.attr_height, false, true)
        i += 1
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's spacing. Spacing specifies the number of pixels allocated around
    # each item.
    # 
    # @param spacing the spacing around each item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_spacing(spacing)
      check_widget
      if (spacing < 0)
        return
      end
      if ((spacing).equal?(@spacing))
        return
      end
      @spacing = spacing
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        OS.gtk_box_set_spacing(self.attr_handle, spacing)
        OS.gtk_container_set_border_width(self.attr_handle, spacing)
      else
        if (((self.attr_style & SWT::V_SCROLL)).equal?(0))
          width = Math.max(0, get_client_area.attr_width - spacing * 2)
          i = 0
          while i < @item_count
            item = @items[i]
            if (!(item.attr_width).equal?(width))
              item.set_bounds(0, 0, width, item.attr_height, false, true)
            end
            i += 1
          end
        end
        layout_items(0, true)
        redraw
      end
    end
    
    typesig { [ExpandItem] }
    def show_item(item)
      control = item.attr_control
      if (!(control).nil? && !control.is_disposed)
        control.set_visible(item.attr_expanded)
      end
      item.redraw
      index = index_of(item)
      layout_items(index + 1, true)
    end
    
    typesig { [ScrollBar] }
    def update_scroll_bar_value(bar)
      @y_current_scroll = bar.get_selection
      layout_items(0, false)
    end
    
    private
    alias_method :initialize__expand_bar, :initialize
  end
  
end
