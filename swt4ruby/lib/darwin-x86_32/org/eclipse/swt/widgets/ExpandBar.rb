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
  module ExpandBarImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
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
  # @noextend This class is not intended to be subclassed by clients.
  class ExpandBar < ExpandBarImports.const_get :Composite
    include_class_members ExpandBarImports
    
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
    
    attr_accessor :focus_item
    alias_method :attr_focus_item, :focus_item
    undef_method :focus_item
    alias_method :attr_focus_item=, :focus_item=
    undef_method :focus_item=
    
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
    
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    attr_accessor :foreground
    alias_method :attr_foreground, :foreground
    undef_method :foreground
    alias_method :attr_foreground=, :foreground=
    undef_method :foreground=
    
    attr_accessor :listener
    alias_method :attr_listener, :listener
    undef_method :listener
    alias_method :attr_listener=, :listener=
    undef_method :listener=
    
    attr_accessor :in_dispose
    alias_method :attr_in_dispose, :in_dispose
    undef_method :in_dispose
    alias_method :attr_in_dispose=, :in_dispose=
    undef_method :in_dispose=
    
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
    # @see SWT#V_SCROLL
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @items = nil
      @item_count = 0
      @focus_item = nil
      @spacing = 0
      @y_current_scroll = 0
      @font = nil
      @foreground = nil
      @listener = nil
      @in_dispose = false
      super(parent, check_style(style))
      @items = Array.typed(ExpandItem).new(4) { nil }
      @listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members ExpandBar
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          case (event.attr_type)
          when SWT::Dispose
            on_dispose(event)
          when SWT::MouseDown
            on_mouse_down(event)
          when SWT::MouseUp
            on_mouse_up(event)
          when SWT::Paint
            on_paint(event)
          when SWT::Resize
            on_resize
          when SWT::KeyDown
            on_key_down(event)
          when SWT::FocusIn
            on_focus
          when SWT::FocusOut
            on_focus
          when SWT::Traverse
            on_traverse(event)
          end
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      add_listener(SWT::Dispose, @listener)
      add_listener(SWT::MouseDown, @listener)
      add_listener(SWT::MouseUp, @listener)
      add_listener(SWT::Paint, @listener)
      add_listener(SWT::Resize, @listener)
      add_listener(SWT::KeyDown, @listener)
      add_listener(SWT::FocusIn, @listener)
      add_listener(SWT::FocusOut, @listener)
      add_listener(SWT::Traverse, @listener)
      vertical_bar = get_vertical_bar
      if (!(vertical_bar).nil?)
        vertical_bar.add_listener(SWT::Selection, Class.new(Listener.class == Class ? Listener : Object) do
          extend LocalClass
          include_class_members ExpandBar
          include Listener if Listener.class == Module
          
          typesig { [Event] }
          define_method :handle_event do |event|
            on_scroll(event)
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
      end
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
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        return style & ~SWT::H_SCROLL
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
      trim = compute_trim(0, 0, width, height)
      return Point.new(trim.attr_width, trim.attr_height)
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
      if ((@focus_item).nil?)
        @focus_item = item
      end
      item.attr_width = Math.max(0, get_client_area.attr_width - @spacing * 2)
      layout_items(index, true)
    end
    
    typesig { [ExpandItem] }
    def destroy_item(item)
      if (@in_dispose)
        return
      end
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
      if ((item).equal?(@focus_item))
        focus_index = index > 0 ? index - 1 : 1
        if (focus_index < @item_count)
          @focus_item = @items[focus_index]
          @focus_item.redraw
        else
          @focus_item = nil
        end
      end
      System.arraycopy(@items, index + 1, @items, index, (@item_count -= 1) - index)
      @items[@item_count] = nil
      item.redraw
      layout_items(index, true)
    end
    
    typesig { [] }
    def get_band_height
      if ((@font).nil?)
        return ExpandItem::CHEVRON_SIZE
      end
      gc = SwtGC.new(self)
      metrics = gc.get_font_metrics
      gc.dispose
      return Math.max(ExpandItem::CHEVRON_SIZE, metrics.get_height)
    end
    
    typesig { [] }
    def get_foreground
      check_widget
      if ((@foreground).nil?)
        display = get_display
        return display.get_system_color(SWT::COLOR_TITLE_FOREGROUND)
      end
      return @foreground
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
    
    typesig { [Font] }
    def set_font(font)
      super(font)
      @font = font
      layout_items(0, true)
    end
    
    typesig { [Color] }
    def set_foreground(color)
      super(color)
      @foreground = color
    end
    
    typesig { [] }
    def set_scrollbar
      if ((@item_count).equal?(0))
        return
      end
      vertical_bar = get_vertical_bar
      if ((vertical_bar).nil?)
        return
      end
      height = get_client_area.attr_height
      item = @items[@item_count - 1]
      max_height = item.attr_y + get_band_height + @spacing
      if (item.attr_expanded)
        max_height += item.attr_height
      end
      # claim bottom free space
      if (@y_current_scroll > 0 && height > max_height)
        @y_current_scroll = Math.max(0, @y_current_scroll + max_height - height)
        layout_items(0, false)
      end
      max_height += @y_current_scroll
      selection = Math.min(@y_current_scroll, max_height)
      increment = vertical_bar.get_increment
      page_increment = vertical_bar.get_page_increment
      vertical_bar.set_values(selection, 0, max_height, height, increment, page_increment)
      vertical_bar.set_visible(max_height > height)
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
      width = Math.max(0, get_client_area.attr_width - spacing * 2)
      i = 0
      while i < @item_count
        item = @items[i]
        if (!(item.attr_width).equal?(width))
          item.set_bounds(0, 0, width, item.attr_height, false, true)
        end
        i += 1
      end
      layout_items(0, true)
      redraw
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
    
    typesig { [Event] }
    def on_dispose(event)
      remove_listener(SWT::Dispose, @listener)
      notify_listeners(SWT::Dispose, event)
      event.attr_type = SWT::None
      # Usually when an item is disposed, destroyItem will change the size of the items array,
      # reset the bounds of all the tabs and manage the widget associated with the tab.
      # Since the whole folder is being disposed, this is not necessary.  For speed
      # the inDispose flag is used to skip over this part of the item dispose.
      @in_dispose = true
      i = 0
      while i < @item_count
        @items[i].dispose
        i += 1
      end
      @items = nil
      @font = nil
      @foreground = nil
      @focus_item = nil
    end
    
    typesig { [] }
    def on_focus
      if (!(@focus_item).nil?)
        @focus_item.redraw
      end
    end
    
    typesig { [Event] }
    def on_key_down(event)
      if ((@focus_item).nil?)
        return
      end
      case (event.attr_key_code)
      # Return
      when 13, 32
        # Space
        ev = Event.new
        ev.attr_item = @focus_item
        send_event___org_eclipse_swt_widgets_expand_bar_1(@focus_item.attr_expanded ? SWT::Collapse : SWT::Expand, ev)
        @focus_item.attr_expanded = !@focus_item.attr_expanded
        show_item(@focus_item)
      when SWT::ARROW_UP
        focus_index = index_of(@focus_item)
        if (focus_index > 0)
          @focus_item.redraw
          @focus_item = @items[focus_index - 1]
          @focus_item.redraw
        end
      when SWT::ARROW_DOWN
        focus_index = index_of(@focus_item)
        if (focus_index < @item_count - 1)
          @focus_item.redraw
          @focus_item = @items[focus_index + 1]
          @focus_item.redraw
        end
      end
    end
    
    typesig { [Event] }
    def on_mouse_down(event)
      if (!(event.attr_button).equal?(1))
        return
      end
      x = event.attr_x
      y = event.attr_y
      i = 0
      while i < @item_count
        item = @items[i]
        hover = item.attr_x <= x && x < (item.attr_x + item.attr_width) && item.attr_y <= y && y < (item.attr_y + get_band_height)
        if (hover && !(item).equal?(@focus_item))
          @focus_item.redraw
          @focus_item = item
          @focus_item.redraw
          force_focus
          break
        end
        i += 1
      end
    end
    
    typesig { [Event] }
    def on_mouse_up(event)
      if (!(event.attr_button).equal?(1))
        return
      end
      if ((@focus_item).nil?)
        return
      end
      x = event.attr_x
      y = event.attr_y
      hover = @focus_item.attr_x <= x && x < (@focus_item.attr_x + @focus_item.attr_width) && @focus_item.attr_y <= y && y < (@focus_item.attr_y + get_band_height)
      if (hover)
        ev = Event.new
        ev.attr_item = @focus_item
        notify_listeners(@focus_item.attr_expanded ? SWT::Collapse : SWT::Expand, ev)
        @focus_item.attr_expanded = !@focus_item.attr_expanded
        show_item(@focus_item)
      end
    end
    
    typesig { [Event] }
    def on_paint(event)
      has_focus = is_focus_control
      i = 0
      while i < @item_count
        item = @items[i]
        item.draw_item(event.attr_gc, has_focus && (item).equal?(@focus_item))
        i += 1
      end
    end
    
    typesig { [] }
    def on_resize
      rect = get_client_area
      width = Math.max(0, rect.attr_width - @spacing * 2)
      i = 0
      while i < @item_count
        item = @items[i]
        item.set_bounds(0, 0, width, item.attr_height, false, true)
        i += 1
      end
      set_scrollbar
    end
    
    typesig { [Event] }
    def on_scroll(event)
      vertical_bar = get_vertical_bar
      if (!(vertical_bar).nil?)
        @y_current_scroll = vertical_bar.get_selection
        layout_items(0, false)
      end
    end
    
    typesig { [Event] }
    def on_traverse(event)
      case (event.attr_detail)
      when SWT::TRAVERSE_TAB_NEXT, SWT::TRAVERSE_TAB_PREVIOUS
        event.attr_doit = true
      end
    end
    
    private
    alias_method :initialize__expand_bar, :initialize
  end
  
end
