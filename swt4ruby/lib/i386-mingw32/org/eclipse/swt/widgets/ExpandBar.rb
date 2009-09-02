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
      include ::Org::Eclipse::Swt::Internal::Win32
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
    
    # long
    attr_accessor :h_font
    alias_method :attr_h_font, :h_font
    undef_method :h_font
    alias_method :attr_h_font=, :h_font=
    undef_method :h_font=
    
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
      @h_font = 0
      super(parent, check_style(style))
      @spacing = 4
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def call_window_proc(hwnd, msg, w_param, l_param)
      if ((self.attr_handle).equal?(0))
        return 0
      end
      return OS._def_window_proc(hwnd, msg, w_param, l_param)
    end
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        style &= ~SWT::H_SCROLL
        return style | SWT::NO_BACKGROUND
      end
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      height = 0
      width = 0
      if ((w_hint).equal?(SWT::DEFAULT) || (h_hint).equal?(SWT::DEFAULT))
        if (@item_count > 0)
          # long
          h_dc = OS._get_dc(self.attr_handle)
          # long
          h_theme = 0
          if (is_app_themed)
            h_theme = self.attr_display.h_explorer_bar_theme
          end
          # long
          h_current_font = 0
          old_font = 0
          if ((h_theme).equal?(0))
            if (!(@h_font).equal?(0))
              h_current_font = @h_font
            else
              if (!OS::IsWinCE)
                info = OS::IsUnicode ? NONCLIENTMETRICSW.new : NONCLIENTMETRICSA.new
                info.attr_cb_size = NONCLIENTMETRICS.attr_sizeof
                if (OS._system_parameters_info(OS::SPI_GETNONCLIENTMETRICS, 0, info, 0))
                  log_font = OS::IsUnicode ? (info).attr_lf_caption_font : (info).attr_lf_caption_font
                  h_current_font = OS._create_font_indirect(log_font)
                end
              end
            end
            if (!(h_current_font).equal?(0))
              old_font = OS._select_object(h_dc, h_current_font)
            end
          end
          height += @spacing
          i = 0
          while i < @item_count
            item = @items[i]
            height += item.get_header_height
            if (item.attr_expanded)
              height += item.attr_height
            end
            height += @spacing
            width = Math.max(width, item.get_preferred_width(h_theme, h_dc))
            i += 1
          end
          if (!(h_current_font).equal?(0))
            OS._select_object(h_dc, old_font)
            if (!(h_current_font).equal?(@h_font))
              OS._delete_object(h_current_font)
            end
          end
          OS._release_dc(self.attr_handle, h_dc)
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
    
    typesig { [] }
    def create_handle
      super
      self.attr_state &= ~CANVAS
      self.attr_state |= TRACK_MOUSE
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
      rect = RECT.new
      OS._get_window_rect(self.attr_handle, rect)
      item.attr_width = Math.max(0, rect.attr_right - rect.attr_left - @spacing * 2)
      layout_items(index, true)
    end
    
    typesig { [] }
    def create_widget
      super
      @items = Array.typed(ExpandItem).new(4) { nil }
      if (!is_app_themed)
        self.attr_background_mode = SWT::INHERIT_DEFAULT
      end
    end
    
    typesig { [] }
    def default_background
      if (!is_app_themed)
        return OS._get_sys_color(OS::COLOR_WINDOW)
      end
      return super
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
      if ((item).equal?(@focus_item))
        focus_index = index > 0 ? index - 1 : 1
        if (focus_index < @item_count)
          @focus_item = @items[focus_index]
          @focus_item.redraw(true)
        else
          @focus_item = nil
        end
      end
      System.arraycopy(@items, index + 1, @items, index, (@item_count -= 1) - index)
      @items[@item_count] = nil
      item.redraw(true)
      layout_items(index, true)
    end
    
    typesig { [::Java::Int, ::Java::Int, RECT] }
    # long
    # long
    def draw_theme_background(h_dc, hwnd, rect)
      rect2 = RECT.new
      OS._get_client_rect(self.attr_handle, rect2)
      OS._map_window_points(self.attr_handle, hwnd, rect2, 2)
      OS._draw_theme_background(self.attr_display.h_explorer_bar_theme, h_dc, OS::EBP_NORMALGROUPBACKGROUND, 0, rect2, nil)
    end
    
    typesig { [SwtGC, RECT] }
    def draw_widget(gc, clip_rect)
      # long
      h_theme = 0
      if (is_app_themed)
        h_theme = self.attr_display.h_explorer_bar_theme
      end
      if (!(h_theme).equal?(0))
        rect = RECT.new
        OS._get_client_rect(self.attr_handle, rect)
        OS._draw_theme_background(h_theme, gc.attr_handle, OS::EBP_HEADERBACKGROUND, 0, rect, clip_rect)
      else
        draw_background(gc.attr_handle)
      end
      draw_focus = false
      if ((self.attr_handle).equal?(OS._get_focus))
        # 64
        ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
        draw_focus = ((ui_state & OS::UISF_HIDEFOCUS)).equal?(0)
      end
      # long
      h_current_font = 0
      old_font = 0
      if ((h_theme).equal?(0))
        if (!(@h_font).equal?(0))
          h_current_font = @h_font
        else
          if (!OS::IsWinCE)
            info = OS::IsUnicode ? NONCLIENTMETRICSW.new : NONCLIENTMETRICSA.new
            info.attr_cb_size = NONCLIENTMETRICS.attr_sizeof
            if (OS._system_parameters_info(OS::SPI_GETNONCLIENTMETRICS, 0, info, 0))
              log_font = OS::IsUnicode ? (info).attr_lf_caption_font : (info).attr_lf_caption_font
              h_current_font = OS._create_font_indirect(log_font)
            end
          end
        end
        if (!(h_current_font).equal?(0))
          old_font = OS._select_object(gc.attr_handle, h_current_font)
        end
        if (!(self.attr_foreground).equal?(-1))
          OS._set_text_color(gc.attr_handle, self.attr_foreground)
        end
      end
      i = 0
      while i < @item_count
        item = @items[i]
        item.draw_item(gc, h_theme, clip_rect, (item).equal?(@focus_item) && draw_focus)
        i += 1
      end
      if (!(h_current_font).equal?(0))
        OS._select_object(gc.attr_handle, old_font)
        if (!(h_current_font).equal?(@h_font))
          OS._delete_object(h_current_font)
        end
      end
    end
    
    typesig { [] }
    def find_background_control
      control = super
      if (!is_app_themed)
        if ((control).nil?)
          control = self
        end
      end
      return control
    end
    
    typesig { [] }
    def find_theme_control
      return is_app_themed ? self : super
    end
    
    typesig { [] }
    def get_band_height
      if ((@h_font).equal?(0))
        return ExpandItem::CHEVRON_SIZE
      end
      # long
      h_dc = OS._get_dc(self.attr_handle)
      # long
      old_hfont = OS._select_object(h_dc, @h_font)
      lptm = OS::IsUnicode ? TEXTMETRICW.new : TEXTMETRICA.new
      OS._get_text_metrics(h_dc, lptm)
      OS._select_object(h_dc, old_hfont)
      OS._release_dc(self.attr_handle, h_dc)
      return Math.max(ExpandItem::CHEVRON_SIZE, lptm.attr_tm_height + 4)
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
    
    typesig { [] }
    def is_app_themed
      if (!(self.attr_background).equal?(-1))
        return false
      end
      if (!(self.attr_foreground).equal?(-1))
        return false
      end
      if (!(@h_font).equal?(0))
        return false
      end
      return OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed
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
      @focus_item = nil
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
    
    typesig { [::Java::Int] }
    def set_background_pixel(pixel)
      super(pixel)
      if (!OS::IsWinCE)
        flags = OS::RDW_ERASE | OS::RDW_FRAME | OS::RDW_INVALIDATE | OS::RDW_ALLCHILDREN
        OS._redraw_window(self.attr_handle, nil, 0, flags)
      end
    end
    
    typesig { [Font] }
    def set_font(font)
      super(font)
      @h_font = !(font).nil? ? font.attr_handle : 0
      layout_items(0, true)
    end
    
    typesig { [::Java::Int] }
    def set_foreground_pixel(pixel)
      super(pixel)
      if (!OS::IsWinCE)
        flags = OS::RDW_ERASE | OS::RDW_FRAME | OS::RDW_INVALIDATE | OS::RDW_ALLCHILDREN
        OS._redraw_window(self.attr_handle, nil, 0, flags)
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
      rect = RECT.new
      OS._get_client_rect(self.attr_handle, rect)
      height = rect.attr_bottom - rect.attr_top
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
      info = SCROLLINFO.new
      info.attr_cb_size = SCROLLINFO.attr_sizeof
      info.attr_f_mask = OS::SIF_RANGE | OS::SIF_PAGE | OS::SIF_POS
      info.attr_n_min = 0
      info.attr_n_max = max_height
      info.attr_n_page = height
      info.attr_n_pos = Math.min(@y_current_scroll, info.attr_n_max)
      if (!(info.attr_n_page).equal?(0))
        info.attr_n_page += 1
      end
      OS._set_scroll_info(self.attr_handle, OS::SB_VERT, info, true)
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
      rect = RECT.new
      OS._get_client_rect(self.attr_handle, rect)
      width = Math.max(0, (rect.attr_right - rect.attr_left) - spacing * 2)
      i = 0
      while i < @item_count
        item = @items[i]
        if (!(item.attr_width).equal?(width))
          item.set_bounds(0, 0, width, item.attr_height, false, true)
        end
        i += 1
      end
      layout_items(0, true)
      OS._invalidate_rect(self.attr_handle, nil, true)
    end
    
    typesig { [ExpandItem] }
    def show_item(item)
      control = item.attr_control
      if (!(control).nil? && !control.is_disposed)
        control.set_visible(item.attr_expanded)
      end
      item.redraw(true)
      index = index_of(item)
      layout_items(index + 1, true)
    end
    
    typesig { [::Java::Boolean] }
    def show_focus(up)
      rect = RECT.new
      OS._get_client_rect(self.attr_handle, rect)
      height = rect.attr_bottom - rect.attr_top
      update_y = 0
      if (up)
        if (@focus_item.attr_y < 0)
          update_y = Math.min(@y_current_scroll, -@focus_item.attr_y)
        end
      else
        item_height = @focus_item.attr_y + get_band_height
        if (@focus_item.attr_expanded)
          if (height >= get_band_height + @focus_item.attr_height)
            item_height += @focus_item.attr_height
          end
        end
        if (item_height > height)
          update_y = height - item_height
        end
      end
      if (!(update_y).equal?(0))
        @y_current_scroll = Math.max(0, @y_current_scroll - update_y)
        if (!((self.attr_style & SWT::V_SCROLL)).equal?(0))
          info = SCROLLINFO.new
          info.attr_cb_size = SCROLLINFO.attr_sizeof
          info.attr_f_mask = OS::SIF_POS
          info.attr_n_pos = @y_current_scroll
          OS._set_scroll_info(self.attr_handle, OS::SB_VERT, info, true)
        end
        OS._scroll_window_ex(self.attr_handle, 0, update_y, nil, nil, 0, nil, OS::SW_SCROLLCHILDREN | OS::SW_INVALIDATE)
        i = 0
        while i < @item_count
          @items[i].attr_y += update_y
          i += 1
        end
      end
    end
    
    typesig { [] }
    def window_class
      return self.attr_display.attr_window_class
    end
    
    typesig { [] }
    # long
    def window_proc
      return self.attr_display.attr_window_proc
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_keydown(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if ((@focus_item).nil?)
        return result
      end
      # 64
      case (RJava.cast_to_int(w_param))
      when OS::VK_SPACE, OS::VK_RETURN
        event = Event.new
        event.attr_item = @focus_item
        send_event(@focus_item.attr_expanded ? SWT::Collapse : SWT::Expand, event)
        @focus_item.attr_expanded = !@focus_item.attr_expanded
        show_item(@focus_item)
        return LRESULT::ZERO
      when OS::VK_UP
        focus_index = index_of(@focus_item)
        if (focus_index > 0)
          @focus_item.redraw(true)
          @focus_item = @items[focus_index - 1]
          @focus_item.redraw(true)
          show_focus(true)
          return LRESULT::ZERO
        end
      when OS::VK_DOWN
        focus_index = index_of(@focus_item)
        if (focus_index < @item_count - 1)
          @focus_item.redraw(true)
          @focus_item = @items[focus_index + 1]
          @focus_item.redraw(true)
          show_focus(false)
          return LRESULT::ZERO
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_killfocus(w_param, l_param)
      result = super(w_param, l_param)
      if (!(@focus_item).nil?)
        @focus_item.redraw(true)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondown(w_param, l_param)
      result = super(w_param, l_param)
      if ((result).equal?(LRESULT::ZERO))
        return result
      end
      x = OS._get_x_lparam(l_param)
      y = OS._get_y_lparam(l_param)
      i = 0
      while i < @item_count
        item = @items[i]
        hover = item.is_hover(x, y)
        if (hover && !(@focus_item).equal?(item))
          @focus_item.redraw(true)
          @focus_item = item
          @focus_item.redraw(true)
          force_focus
          break
        end
        i += 1
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttonup(w_param, l_param)
      result = super(w_param, l_param)
      if ((result).equal?(LRESULT::ZERO))
        return result
      end
      if ((@focus_item).nil?)
        return result
      end
      x = OS._get_x_lparam(l_param)
      y = OS._get_y_lparam(l_param)
      hover = @focus_item.is_hover(x, y)
      if (hover)
        event = Event.new
        event.attr_item = @focus_item
        send_event(@focus_item.attr_expanded ? SWT::Collapse : SWT::Expand, event)
        @focus_item.attr_expanded = !@focus_item.attr_expanded
        show_item(@focus_item)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mouseleave(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      i = 0
      while i < @item_count
        item = @items[i]
        if (item.attr_hover)
          item.attr_hover = false
          item.redraw(false)
          break
        end
        i += 1
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mousemove(w_param, l_param)
      result = super(w_param, l_param)
      if ((result).equal?(LRESULT::ZERO))
        return result
      end
      x = OS._get_x_lparam(l_param)
      y = OS._get_y_lparam(l_param)
      i = 0
      while i < @item_count
        item = @items[i]
        hover = item.is_hover(x, y)
        if (!(item.attr_hover).equal?(hover))
          item.attr_hover = hover
          item.redraw(false)
        end
        i += 1
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mousewheel(w_param, l_param)
      return wm_scroll_wheel(true, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_paint(w_param, l_param)
      ps = PAINTSTRUCT.new
      data = SwtGCData.new
      data.attr_ps = ps
      data.attr_hwnd = self.attr_handle
      gc = new__gc(data)
      if (!(gc).nil?)
        width = ps.attr_right - ps.attr_left
        height = ps.attr_bottom - ps.attr_top
        if (!(width).equal?(0) && !(height).equal?(0))
          rect = RECT.new
          OS._set_rect(rect, ps.attr_left, ps.attr_top, ps.attr_right, ps.attr_bottom)
          draw_widget(gc, rect)
          if (hooks(SWT::Paint) || filters(SWT::Paint))
            event = Event.new
            event.attr_gc = gc
            event.attr_x = rect.attr_left
            event.attr_y = rect.attr_top
            event.attr_width = width
            event.attr_height = height
            send_event(SWT::Paint, event)
            event.attr_gc = nil
          end
        end
        gc.dispose
      end
      return LRESULT::ZERO
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_printclient(w_param, l_param)
      result = super(w_param, l_param)
      rect = RECT.new
      OS._get_client_rect(self.attr_handle, rect)
      data = SwtGCData.new
      data.attr_device = self.attr_display
      data.attr_foreground = get_foreground_pixel
      gc = SwtGC.win32_new(w_param, data)
      draw_widget(gc, rect)
      gc.dispose
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setcursor(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      hit_test = RJava.cast_to_short(OS._loword(l_param))
      if ((hit_test).equal?(OS::HTCLIENT))
        i = 0
        while i < @item_count
          item = @items[i]
          if (item.attr_hover)
            # long
            h_cursor = OS._load_cursor(0, OS::IDC_HAND)
            OS._set_cursor(h_cursor)
            return LRESULT::ONE
          end
          i += 1
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setfocus(w_param, l_param)
      result = super(w_param, l_param)
      if (!(@focus_item).nil?)
        @focus_item.redraw(true)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_size(w_param, l_param)
      result = super(w_param, l_param)
      rect = RECT.new
      OS._get_client_rect(self.attr_handle, rect)
      width = Math.max(0, (rect.attr_right - rect.attr_left) - @spacing * 2)
      i = 0
      while i < @item_count
        item = @items[i]
        if (!(item.attr_width).equal?(width))
          item.set_bounds(0, 0, width, item.attr_height, false, true)
        end
        i += 1
      end
      set_scrollbar
      OS._invalidate_rect(self.attr_handle, nil, true)
      return result
    end
    
    typesig { [ScrollBar, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_scroll(bar, update, hwnd, msg, w_param, l_param)
      result = super(bar, true, hwnd, msg, w_param, l_param)
      info = SCROLLINFO.new
      info.attr_cb_size = SCROLLINFO.attr_sizeof
      info.attr_f_mask = OS::SIF_POS
      OS._get_scroll_info(self.attr_handle, OS::SB_VERT, info)
      update_y = @y_current_scroll - info.attr_n_pos
      OS._scroll_window_ex(self.attr_handle, 0, update_y, nil, nil, 0, nil, OS::SW_SCROLLCHILDREN | OS::SW_INVALIDATE)
      @y_current_scroll = info.attr_n_pos
      if (!(update_y).equal?(0))
        i = 0
        while i < @item_count
          @items[i].attr_y += update_y
          i += 1
        end
      end
      return result
    end
    
    private
    alias_method :initialize__expand_bar, :initialize
  end
  
end
