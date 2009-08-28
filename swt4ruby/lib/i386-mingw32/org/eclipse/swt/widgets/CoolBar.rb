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
  module CoolBarImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class provide an area for dynamically
  # positioning the items they contain.
  # <p>
  # The item children that may be added to instances of this class
  # must be of type <code>CoolItem</code>.
  # </p><p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not make sense to add <code>Control</code> children to it,
  # or set a layout on it.
  # </p><p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>FLAT, HORIZONTAL, VERTICAL</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # </p><p>
  # Note: Only one of the styles HORIZONTAL and VERTICAL may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#coolbar">CoolBar snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class CoolBar < CoolBarImports.const_get :Composite
    include_class_members CoolBarImports
    
    attr_accessor :items
    alias_method :attr_items, :items
    undef_method :items
    alias_method :attr_items=, :items=
    undef_method :items=
    
    attr_accessor :original_items
    alias_method :attr_original_items, :original_items
    undef_method :original_items
    alias_method :attr_original_items=, :original_items=
    undef_method :original_items=
    
    attr_accessor :locked
    alias_method :attr_locked, :locked
    undef_method :locked
    alias_method :attr_locked=, :locked=
    undef_method :locked=
    
    attr_accessor :ignore_resize
    alias_method :attr_ignore_resize, :ignore_resize
    undef_method :ignore_resize
    alias_method :attr_ignore_resize=, :ignore_resize=
    undef_method :ignore_resize=
    
    class_module.module_eval {
      const_set_lazy(:ReBarClass) { TCHAR.new(0, OS::REBARCLASSNAME, true) }
      const_attr_reader  :ReBarClass
      
      when_class_loaded do
        icex = INITCOMMONCONTROLSEX.new
        icex.attr_dw_size = INITCOMMONCONTROLSEX.attr_sizeof
        icex.attr_dw_icc = OS::ICC_COOL_CLASSES
        OS._init_common_controls_ex(icex)
        lp_wnd_class = WNDCLASS.new
        OS._get_class_info(0, ReBarClass, lp_wnd_class)
        const_set :ReBarProc, lp_wnd_class.attr_lpfn_wnd_proc
      end
      
      const_set_lazy(:SEPARATOR_WIDTH) { 2 }
      const_attr_reader  :SEPARATOR_WIDTH
      
      const_set_lazy(:MAX_WIDTH) { 0x7fff }
      const_attr_reader  :MAX_WIDTH
      
      const_set_lazy(:DEFAULT_COOLBAR_WIDTH) { 0 }
      const_attr_reader  :DEFAULT_COOLBAR_WIDTH
      
      const_set_lazy(:DEFAULT_COOLBAR_HEIGHT) { 0 }
      const_attr_reader  :DEFAULT_COOLBAR_HEIGHT
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
    # @see SWT
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @items = nil
      @original_items = nil
      @locked = false
      @ignore_resize = false
      super(parent, check_style(style))
      # Ensure that either of HORIZONTAL or VERTICAL is set.
      # NOTE: HORIZONTAL and VERTICAL have the same values
      # as H_SCROLL and V_SCROLL so it is necessary to first
      # clear these bits to avoid scroll bars and then reset
      # the bits using the original style supplied by the
      # programmer.
      # 
      # NOTE: The CCS_VERT style cannot be applied when the
      # widget is created because of this conflict.
      if (!((style & SWT::VERTICAL)).equal?(0))
        self.attr_style |= SWT::VERTICAL
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits | OS::CCS_VERT)
      else
        self.attr_style |= SWT::HORIZONTAL
      end
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
      return OS._call_window_proc(ReBarProc, hwnd, msg, w_param, l_param)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        style |= SWT::NO_FOCUS
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
      check_widget
      width = 0
      height = 0
      border = get_border_width
      new_width = (w_hint).equal?(SWT::DEFAULT) ? 0x3fff : w_hint + (border * 2)
      new_height = (h_hint).equal?(SWT::DEFAULT) ? 0x3fff : h_hint + (border * 2)
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_GETBANDCOUNT, 0, 0))
      if (!(count).equal?(0))
        @ignore_resize = true
        redraw = false
        if (OS._is_window_visible(self.attr_handle))
          if (OS::COMCTL32_MAJOR >= 6)
            redraw = true
            OS._update_window(self.attr_handle)
            OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
          else
            redraw = (self.attr_draw_count).equal?(0)
            if (redraw)
              OS._update_window(self.attr_handle)
              OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
            end
          end
        end
        old_rect = RECT.new
        OS._get_window_rect(self.attr_handle, old_rect)
        old_width = old_rect.attr_right - old_rect.attr_left
        old_height = old_rect.attr_bottom - old_rect.attr_top
        flags = OS::SWP_NOACTIVATE | OS::SWP_NOMOVE | OS::SWP_NOREDRAW | OS::SWP_NOZORDER
        _set_window_pos(self.attr_handle, 0, 0, 0, new_width, new_height, flags)
        rect = RECT.new
        OS._send_message(self.attr_handle, OS::RB_GETRECT, count - 1, rect)
        height = Math.max(height, rect.attr_bottom)
        _set_window_pos(self.attr_handle, 0, 0, 0, old_width, old_height, flags)
        rb_band = REBARBANDINFO.new
        rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
        rb_band.attr_f_mask = OS::RBBIM_IDEALSIZE | OS::RBBIM_STYLE
        row_width = 0
        i = 0
        while i < count
          OS._send_message(self.attr_handle, OS::RB_GETBANDINFO, i, rb_band)
          if (!((rb_band.attr_f_style & OS::RBBS_BREAK)).equal?(0))
            width = Math.max(width, row_width)
            row_width = 0
          end
          row_width += rb_band.attr_cx_ideal + get_margin(i)
          i += 1
        end
        width = Math.max(width, row_width)
        if (redraw)
          if (OS::COMCTL32_MAJOR >= 6)
            OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
          else
            OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
          end
        end
        @ignore_resize = false
      end
      if ((width).equal?(0))
        width = DEFAULT_COOLBAR_WIDTH
      end
      if ((height).equal?(0))
        height = DEFAULT_COOLBAR_HEIGHT
      end
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        tmp = width
        width = height
        height = tmp
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      height += border * 2
      width += border * 2
      return Point.new(width, height)
    end
    
    typesig { [] }
    def create_handle
      super
      self.attr_state &= ~(CANVAS | THEME_BACKGROUND)
      # Feature in Windows.  When the control is created,
      # it does not use the default system font.  A new HFONT
      # is created and destroyed when the control is destroyed.
      # This means that a program that queries the font from
      # this control, uses the font in another control and then
      # destroys this control will have the font unexpectedly
      # destroyed in the other control.  The fix is to assign
      # the font ourselves each time the control is created.
      # The control will not destroy a font that it did not
      # create.
      # 
      # long
      h_font = OS._get_stock_object(OS::SYSTEM_FONT)
      OS._send_message(self.attr_handle, OS::WM_SETFONT, h_font, 0)
    end
    
    typesig { [CoolItem, ::Java::Int] }
    def create_item(item, index)
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_GETBANDCOUNT, 0, 0))
      if (!(0 <= index && index <= count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      id = 0
      while (id < @items.attr_length && !(@items[id]).nil?)
        id += 1
      end
      if ((id).equal?(@items.attr_length))
        new_items = Array.typed(CoolItem).new(@items.attr_length + 4) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      # long
      h_heap = OS._get_process_heap
      # long
      lp_text = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, TCHAR.attr_sizeof)
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      rb_band.attr_f_mask = OS::RBBIM_TEXT | OS::RBBIM_STYLE | OS::RBBIM_ID
      rb_band.attr_f_style = OS::RBBS_VARIABLEHEIGHT | OS::RBBS_GRIPPERALWAYS
      if (!((item.attr_style & SWT::DROP_DOWN)).equal?(0))
        rb_band.attr_f_style |= OS::RBBS_USECHEVRON
      end
      rb_band.attr_lp_text = lp_text
      rb_band.attr_w_id = id
      # Feature in Windows.  When inserting an item at end of a row,
      # sometimes, Windows will begin to place the item on the right
      # side of the cool bar.  The fix is to resize the new items to
      # the maximum size and then resize the next to last item to the
      # ideal size.
      last_index = get_last_index_of_row(index - 1)
      fix_last = (index).equal?(last_index + 1)
      if (fix_last)
        rb_band.attr_f_mask |= OS::RBBIM_SIZE
        rb_band.attr_cx = MAX_WIDTH
      end
      # Feature in Windows. Is possible that the item at index zero
      # has the RBBS_BREAK flag set. When a new item is inserted at
      # position zero, the previous item at position zero moves to
      # a new line.  The fix is to detect this case and clear the
      # RBBS_BREAK flag on the previous item before inserting the
      # new item.
      if ((index).equal?(0) && count > 0)
        get_item(0).set_wrap(false)
      end
      # Insert the item
      if ((OS._send_message(self.attr_handle, OS::RB_INSERTBAND, index, rb_band)).equal?(0))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      # Resize the next to last item to the ideal size
      if (fix_last)
        resize_to_preferred_width(last_index)
      end
      OS._heap_free(h_heap, 0, lp_text)
      @items[item.attr_id = id] = item
      length = @original_items.attr_length
      new_originals = Array.typed(CoolItem).new(length + 1) { nil }
      System.arraycopy(@original_items, 0, new_originals, 0, index)
      System.arraycopy(@original_items, index, new_originals, index + 1, length - index)
      new_originals[index] = item
      @original_items = new_originals
    end
    
    typesig { [] }
    def create_widget
      super
      @items = Array.typed(CoolItem).new(4) { nil }
      @original_items = Array.typed(CoolItem).new(0) { nil }
    end
    
    typesig { [CoolItem] }
    def destroy_item(item)
      # 64
      index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_IDTOINDEX, item.attr_id, 0))
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_GETBANDCOUNT, 0, 0))
      if (!(count).equal?(0))
        last_index = get_last_index_of_row(index)
        if ((index).equal?(last_index))
          # Feature in Windows.  If the last item in a row is
          # given its ideal size, it will be placed at the far
          # right hand edge of the coolbar.  It is preferred
          # that the last item appear next to the second last
          # item.  The fix is to size the last item of each row
          # so that it occupies all the available space to the
          # right in the row.
          resize_to_maximum_width(last_index - 1)
        end
      end
      # Feature in Windows.  When Windows removed a rebar
      # band, it makes the band child invisible.  The fix
      # is to show the child.
      control = item.attr_control
      was_visible = !(control).nil? && !control.is_disposed && control.get_visible
      # When a wrapped item is being deleted, make the next
      # item in the row wrapped in order to preserve the row.
      # In order to avoid an unnecessary layout, temporarily
      # ignore WM_SIZE.  If the next item is wrapped then a
      # row will be deleted and the WM_SIZE is necessary.
      next_item = nil
      if (item.get_wrap)
        if (index + 1 < count)
          next_item = get_item(index + 1)
          @ignore_resize = !next_item.get_wrap
        end
      end
      if ((OS._send_message(self.attr_handle, OS::RB_DELETEBAND, index, 0)).equal?(0))
        error(SWT::ERROR_ITEM_NOT_REMOVED)
      end
      @items[item.attr_id] = nil
      item.attr_id = -1
      if (@ignore_resize)
        next_item.set_wrap(true)
        @ignore_resize = false
      end
      # Restore the visible state of the control
      if (was_visible)
        control.set_visible(true)
      end
      index = 0
      while (index < @original_items.attr_length)
        if ((@original_items[index]).equal?(item))
          break
        end
        index += 1
      end
      length = @original_items.attr_length - 1
      new_originals = Array.typed(CoolItem).new(length) { nil }
      System.arraycopy(@original_items, 0, new_originals, 0, index)
      System.arraycopy(@original_items, index + 1, new_originals, index, length - index)
      @original_items = new_originals
    end
    
    typesig { [::Java::Int, ::Java::Int, RECT] }
    # long
    # long
    def draw_theme_background(h_dc, hwnd, rect)
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        if ((self.attr_background).equal?(-1) && !((self.attr_style & SWT::FLAT)).equal?(0))
          control = find_background_control
          if (!(control).nil? && !(control.attr_background_image).nil?)
            fill_background(h_dc, control.get_background_pixel, rect)
            return
          end
        end
      end
      rect2 = RECT.new
      OS._get_client_rect(self.attr_handle, rect2)
      OS._map_window_points(self.attr_handle, hwnd, rect2, 2)
      lp_point = POINT.new
      OS._set_window_org_ex(h_dc, -rect2.attr_left, -rect2.attr_top, lp_point)
      OS._send_message(self.attr_handle, OS::WM_PRINT, h_dc, OS::PRF_CLIENT | OS::PRF_ERASEBKGND)
      OS._set_window_org_ex(h_dc, lp_point.attr_x, lp_point.attr_y, nil)
    end
    
    typesig { [] }
    def find_theme_control
      if (!((self.attr_style & SWT::FLAT)).equal?(0))
        return self
      end
      return (self.attr_background).equal?(-1) && (self.attr_background_image).nil? ? self : super
    end
    
    typesig { [::Java::Int] }
    def get_margin(index)
      margin = 0
      if (OS::COMCTL32_MAJOR >= 6)
        margins = MARGINS.new
        OS._send_message(self.attr_handle, OS::RB_GETBANDMARGINS, 0, margins)
        margin += margins.attr_cx_left_width + margins.attr_cx_right_width
      end
      rect = RECT.new
      OS._send_message(self.attr_handle, OS::RB_GETBANDBORDERS, index, rect)
      if (!((self.attr_style & SWT::FLAT)).equal?(0))
        # Bug in Windows.  When the style bit  RBS_BANDBORDERS is not set
        # the rectangle returned by RBS_BANDBORDERS is four pixels too small.
        # The fix is to add four pixels to the result.
        if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
          margin += rect.attr_top + 4
        else
          margin += rect.attr_left + 4
        end
      else
        if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
          margin += rect.attr_top + rect.attr_bottom
        else
          margin += rect.attr_left + rect.attr_right
        end
      end
      if (((self.attr_style & SWT::FLAT)).equal?(0))
        if (!is_last_item_of_row(index))
          margin += CoolBar::SEPARATOR_WIDTH
        end
      end
      return margin
    end
    
    typesig { [::Java::Int] }
    # Returns the item that is currently displayed at the given,
    # zero-relative index. Throws an exception if the index is
    # out of range.
    # 
    # @param index the visual index of the item to return
    # @return the item at the given visual index
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
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_GETBANDCOUNT, 0, 0))
      if (!(0 <= index && index < count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      rb_band.attr_f_mask = OS::RBBIM_ID
      OS._send_message(self.attr_handle, OS::RB_GETBANDINFO, index, rb_band)
      return @items[rb_band.attr_w_id]
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
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_GETBANDCOUNT, 0, 0))
    end
    
    typesig { [] }
    # Returns an array of zero-relative ints that map
    # the creation order of the receiver's items to the
    # order in which they are currently being displayed.
    # <p>
    # Specifically, the indices of the returned array represent
    # the current visual order of the items, and the contents
    # of the array represent the creation order of the items.
    # </p><p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the current visual order of the receiver's items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_order
      check_widget
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_GETBANDCOUNT, 0, 0))
      indices = Array.typed(::Java::Int).new(count) { 0 }
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      rb_band.attr_f_mask = OS::RBBIM_ID
      i = 0
      while i < count
        OS._send_message(self.attr_handle, OS::RB_GETBANDINFO, i, rb_band)
        item = @items[rb_band.attr_w_id]
        index = 0
        while (index < @original_items.attr_length)
          if ((@original_items[index]).equal?(item))
            break
          end
          index += 1
        end
        if ((index).equal?(@original_items.attr_length))
          error(SWT::ERROR_CANNOT_GET_ITEM)
        end
        indices[i] = index
        i += 1
      end
      return indices
    end
    
    typesig { [] }
    # Returns an array of <code>CoolItem</code>s in the order
    # in which they are currently being displayed.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the receiver's items in their current visual order
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_items
      check_widget
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_GETBANDCOUNT, 0, 0))
      result = Array.typed(CoolItem).new(count) { nil }
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      rb_band.attr_f_mask = OS::RBBIM_ID
      i = 0
      while i < count
        OS._send_message(self.attr_handle, OS::RB_GETBANDINFO, i, rb_band)
        result[i] = @items[rb_band.attr_w_id]
        i += 1
      end
      return result
    end
    
    typesig { [] }
    # Returns an array of points whose x and y coordinates describe
    # the widths and heights (respectively) of the items in the receiver
    # in the order in which they are currently being displayed.
    # 
    # @return the receiver's item sizes in their current visual order
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_sizes
      check_widget
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_GETBANDCOUNT, 0, 0))
      sizes = Array.typed(Point).new(count) { nil }
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      rb_band.attr_f_mask = OS::RBBIM_CHILDSIZE
      separator = ((self.attr_style & SWT::FLAT)).equal?(0) ? SEPARATOR_WIDTH : 0
      margins = MARGINS.new
      i = 0
      while i < count
        rect = RECT.new
        OS._send_message(self.attr_handle, OS::RB_GETRECT, i, rect)
        OS._send_message(self.attr_handle, OS::RB_GETBANDINFO, i, rb_band)
        if (OS::COMCTL32_MAJOR >= 6)
          OS._send_message(self.attr_handle, OS::RB_GETBANDMARGINS, 0, margins)
          rect.attr_left -= margins.attr_cx_left_width
          rect.attr_right += margins.attr_cx_right_width
        end
        if (!is_last_item_of_row(i))
          rect.attr_right += separator
        end
        if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
          sizes[i] = Point.new(rb_band.attr_cy_child, rect.attr_right - rect.attr_left)
        else
          sizes[i] = Point.new(rect.attr_right - rect.attr_left, rb_band.attr_cy_child)
        end
        i += 1
      end
      return sizes
    end
    
    typesig { [::Java::Int] }
    def get_last_index_of_row(index)
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_GETBANDCOUNT, 0, 0))
      if ((count).equal?(0))
        return -1
      end
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      rb_band.attr_f_mask = OS::RBBIM_STYLE
      i = index + 1
      while i < count
        OS._send_message(self.attr_handle, OS::RB_GETBANDINFO, i, rb_band)
        if (!((rb_band.attr_f_style & OS::RBBS_BREAK)).equal?(0))
          return i - 1
        end
        i += 1
      end
      return count - 1
    end
    
    typesig { [::Java::Int] }
    def is_last_item_of_row(index)
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_GETBANDCOUNT, 0, 0))
      if ((index + 1).equal?(count))
        return true
      end
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      rb_band.attr_f_mask = OS::RBBIM_STYLE
      OS._send_message(self.attr_handle, OS::RB_GETBANDINFO, index + 1, rb_band)
      return !((rb_band.attr_f_style & OS::RBBS_BREAK)).equal?(0)
    end
    
    typesig { [] }
    # Returns whether or not the receiver is 'locked'. When a coolbar
    # is locked, its items cannot be repositioned.
    # 
    # @return true if the coolbar is locked, false otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def get_locked
      check_widget
      return @locked
    end
    
    typesig { [] }
    # Returns an array of ints that describe the zero-relative
    # indices of any item(s) in the receiver that will begin on
    # a new row. The 0th visible item always begins the first row,
    # therefore it does not count as a wrap index.
    # 
    # @return an array containing the receiver's wrap indices, or an empty array if all items are in one row
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_wrap_indices
      check_widget
      items = get_items
      indices = Array.typed(::Java::Int).new(items.attr_length) { 0 }
      count = 0
      i = 0
      while i < items.attr_length
        if (items[i].get_wrap)
          indices[((count += 1) - 1)] = i
        end
        i += 1
      end
      result = Array.typed(::Java::Int).new(count) { 0 }
      System.arraycopy(indices, 0, result, 0, count)
      return result
    end
    
    typesig { [CoolItem] }
    # Searches the receiver's items in the order they are currently
    # being displayed, starting at the first item (index 0), until
    # an item is found that is equal to the argument, and returns
    # the index of that item. If no item is found, returns -1.
    # 
    # @param item the search item
    # @return the visual order index of the search item, or -1 if the item is not found
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the item is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the item is disposed</li>
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
      if (item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_IDTOINDEX, item.attr_id, 0))
    end
    
    typesig { [::Java::Int] }
    def resize_to_preferred_width(index)
      # Bug in Windows.  When RB_GETBANDBORDERS is sent
      # with an index out of range, Windows GP's.  The
      # fix is to ensure the index is in range.
      # 
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_GETBANDCOUNT, 0, 0))
      if (0 <= index && index < count)
        rb_band = REBARBANDINFO.new
        rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
        rb_band.attr_f_mask = OS::RBBIM_IDEALSIZE
        OS._send_message(self.attr_handle, OS::RB_GETBANDINFO, index, rb_band)
        rect = RECT.new
        OS._send_message(self.attr_handle, OS::RB_GETBANDBORDERS, index, rect)
        rb_band.attr_cx = rb_band.attr_cx_ideal + rect.attr_left
        if (((self.attr_style & SWT::FLAT)).equal?(0))
          rb_band.attr_cx += rect.attr_right
        end
        rb_band.attr_f_mask = OS::RBBIM_SIZE
        OS._send_message(self.attr_handle, OS::RB_SETBANDINFO, index, rb_band)
      end
    end
    
    typesig { [::Java::Int] }
    def resize_to_maximum_width(index)
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      rb_band.attr_f_mask = OS::RBBIM_SIZE
      rb_band.attr_cx = MAX_WIDTH
      OS._send_message(self.attr_handle, OS::RB_SETBANDINFO, index, rb_band)
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
      i = 0
      while i < @items.attr_length
        item = @items[i]
        if (!(item).nil? && (item.attr_control).equal?(control))
          item.set_control(nil)
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int] }
    def set_background_pixel(pixel)
      if ((pixel).equal?(-1))
        pixel = default_background
      end
      OS._send_message(self.attr_handle, OS::RB_SETBKCOLOR, 0, pixel)
      # 64
      set_item_colors(RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_GETTEXTCOLOR, 0, 0)), pixel)
      # Feature in Windows.  For some reason, Windows
      # does not fully erase the coolbar area and coolbar
      # items when you set the background.  The fix is
      # to invalidate the coolbar area.
      if (!OS._is_window_visible(self.attr_handle))
        return
      end
      if (OS::IsWinCE)
        OS._invalidate_rect(self.attr_handle, nil, true)
      else
        flags = OS::RDW_ERASE | OS::RDW_FRAME | OS::RDW_INVALIDATE | OS::RDW_ALLCHILDREN
        OS._redraw_window(self.attr_handle, nil, 0, flags)
      end
    end
    
    typesig { [::Java::Int] }
    def set_foreground_pixel(pixel)
      if ((pixel).equal?(-1))
        pixel = default_foreground
      end
      OS._send_message(self.attr_handle, OS::RB_SETTEXTCOLOR, 0, pixel)
      # 64
      set_item_colors(pixel, RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_GETBKCOLOR, 0, 0)))
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def set_item_colors(fore_color, back_color)
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_GETBANDCOUNT, 0, 0))
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      rb_band.attr_f_mask = OS::RBBIM_COLORS
      rb_band.attr_clr_fore = fore_color
      rb_band.attr_clr_back = back_color
      i = 0
      while i < count
        OS._send_message(self.attr_handle, OS::RB_SETBANDINFO, i, rb_band)
        i += 1
      end
    end
    
    typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(Point)] }
    # Sets the receiver's item order, wrap indices, and item sizes
    # all at once. This method is typically used to restore the
    # displayed state of the receiver to a previously stored state.
    # <p>
    # The item order is the order in which the items in the receiver
    # should be displayed, given in terms of the zero-relative ordering
    # of when the items were added.
    # </p><p>
    # The wrap indices are the indices of all item(s) in the receiver
    # that will begin on a new row. The indices are given in the order
    # specified by the item order. The 0th item always begins the first
    # row, therefore it does not count as a wrap index. If wrap indices
    # is null or empty, the items will be placed on one line.
    # </p><p>
    # The sizes are specified in an array of points whose x and y
    # coordinates describe the new widths and heights (respectively)
    # of the receiver's items in the order specified by the item order.
    # </p>
    # 
    # @param itemOrder an array of indices that describe the new order to display the items in
    # @param wrapIndices an array of wrap indices, or null
    # @param sizes an array containing the new sizes for each of the receiver's items in visual order
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if item order or sizes is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if item order or sizes is not the same length as the number of items</li>
    # </ul>
    def set_item_layout(item_order, wrap_indices, sizes)
      check_widget
      set_redraw(false)
      set_item_order(item_order)
      set_wrap_indices(wrap_indices)
      set_item_sizes(sizes)
      set_redraw(true)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Sets the order that the items in the receiver should
    # be displayed in to the given argument which is described
    # in terms of the zero-relative ordering of when the items
    # were added.
    # 
    # @param itemOrder the new order to display the items in
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the item order is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the item order is not the same length as the number of items</li>
    # </ul>
    def set_item_order(item_order)
      if ((item_order).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      # 64
      item_count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_GETBANDCOUNT, 0, 0))
      if (!(item_order.attr_length).equal?(item_count))
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # Ensure that itemOrder does not contain any duplicates.
      set = Array.typed(::Java::Boolean).new(item_count) { false }
      i = 0
      while i < item_order.attr_length
        index = item_order[i]
        if (index < 0 || index >= item_count)
          error(SWT::ERROR_INVALID_RANGE)
        end
        if (set[index])
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        set[index] = true
        i += 1
      end
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      i_ = 0
      while i_ < item_order.attr_length
        id = @original_items[item_order[i_]].attr_id
        # 64
        index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_IDTOINDEX, id, 0))
        if (!(index).equal?(i_))
          last_item_src_row = get_last_index_of_row(index)
          last_item_dst_row = get_last_index_of_row(i_)
          if ((index).equal?(last_item_src_row))
            resize_to_preferred_width(index)
          end
          if ((i_).equal?(last_item_dst_row))
            resize_to_preferred_width(i_)
          end
          # Move the item
          OS._send_message(self.attr_handle, OS::RB_MOVEBAND, index, i_)
          if ((index).equal?(last_item_src_row) && index - 1 >= 0)
            resize_to_maximum_width(index - 1)
          end
          if ((i_).equal?(last_item_dst_row))
            resize_to_maximum_width(i_)
          end
        end
        i_ += 1
      end
    end
    
    typesig { [Array.typed(Point)] }
    # Sets the width and height of the receiver's items to the ones
    # specified by the argument, which is an array of points whose x
    # and y coordinates describe the widths and heights (respectively)
    # in the order in which the items are currently being displayed.
    # 
    # @param sizes an array containing the new sizes for each of the receiver's items in visual order
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the array of sizes is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the array of sizes is not the same length as the number of items</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_item_sizes(sizes)
      if ((sizes).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_GETBANDCOUNT, 0, 0))
      if (!(sizes.attr_length).equal?(count))
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      rb_band.attr_f_mask = OS::RBBIM_ID
      i = 0
      while i < count
        OS._send_message(self.attr_handle, OS::RB_GETBANDINFO, i, rb_band)
        @items[rb_band.attr_w_id].set_size(sizes[i].attr_x, sizes[i].attr_y)
        i += 1
      end
    end
    
    typesig { [::Java::Boolean] }
    # Sets whether or not the receiver is 'locked'. When a coolbar
    # is locked, its items cannot be repositioned.
    # 
    # @param locked lock the coolbar if true, otherwise unlock the coolbar
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def set_locked(locked)
      check_widget
      @locked = locked
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_GETBANDCOUNT, 0, 0))
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      rb_band.attr_f_mask = OS::RBBIM_STYLE
      i = 0
      while i < count
        OS._send_message(self.attr_handle, OS::RB_GETBANDINFO, i, rb_band)
        if (locked)
          rb_band.attr_f_style |= OS::RBBS_NOGRIPPER
        else
          rb_band.attr_f_style &= ~OS::RBBS_NOGRIPPER
        end
        OS._send_message(self.attr_handle, OS::RB_SETBANDINFO, i, rb_band)
        i += 1
      end
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Sets the indices of all item(s) in the receiver that will
    # begin on a new row. The indices are given in the order in
    # which they are currently being displayed. The 0th item
    # always begins the first row, therefore it does not count
    # as a wrap index. If indices is null or empty, the items
    # will be placed on one line.
    # 
    # @param indices an array of wrap indices, or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_wrap_indices(indices)
      check_widget
      if ((indices).nil?)
        indices = Array.typed(::Java::Int).new(0) { 0 }
      end
      count = get_item_count
      i = 0
      while i < indices.attr_length
        if (indices[i] < 0 || indices[i] >= count)
          error(SWT::ERROR_INVALID_RANGE)
        end
        i += 1
      end
      set_redraw(false)
      items = get_items
      i_ = 0
      while i_ < items.attr_length
        item = items[i_]
        if (item.get_wrap)
          resize_to_preferred_width(i_ - 1)
          item.set_wrap(false)
        end
        i_ += 1
      end
      resize_to_maximum_width(count - 1)
      i__ = 0
      while i__ < indices.attr_length
        index = indices[i__]
        if (0 <= index && index < items.attr_length)
          item = items[index]
          item.set_wrap(true)
          resize_to_maximum_width(index - 1)
        end
        i__ += 1
      end
      set_redraw(true)
    end
    
    typesig { [] }
    def widget_style
      bits = super | OS::CCS_NODIVIDER | OS::CCS_NORESIZE
      bits |= OS::RBS_VARHEIGHT | OS::RBS_DBLCLKTOGGLE
      if (((self.attr_style & SWT::FLAT)).equal?(0))
        bits |= OS::RBS_BANDBORDERS
      end
      return bits
    end
    
    typesig { [] }
    def window_class
      return ReBarClass
    end
    
    typesig { [] }
    # long
    def window_proc
      return ReBarProc
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_command(w_param, l_param)
      # Feature in Windows.  When the coolbar window
      # proc processes WM_COMMAND, it forwards this
      # message to its parent.  This is done so that
      # children of this control that send this message
      # type to their parent will notify not only
      # this control but also the parent of this control,
      # which is typically the application window and
      # the window that is looking for the message.
      # If the control did not forward the message,
      # applications would have to subclass the control
      # window to see the message. Because the control
      # window is subclassed by SWT, the message
      # is delivered twice, once by SWT and once when
      # the message is forwarded by the window proc.
      # The fix is to avoid calling the window proc
      # for this control.
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      return LRESULT::ZERO
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_erasebkgnd(w_param, l_param)
      result = super(w_param, l_param)
      # Feature in Windows.  For some reason, Windows
      # does not fully erase the area that the cool bar
      # occupies when the size of the cool bar is larger
      # than the space occupied by the cool bar items.
      # The fix is to erase the cool bar background.
      # 
      # NOTE: On versions of Windows prior to XP, for
      # some reason, the cool bar draws separators in
      # WM_ERASEBKGND.  Therefore it is essential to run
      # the cool bar window proc after the background has
      # been erased.
      if (OS::COMCTL32_MAJOR < 6 || !OS._is_app_themed)
        draw_background(w_param)
        return nil
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_notify(w_param, l_param)
      # Feature in Windows.  When the cool bar window
      # proc processes WM_NOTIFY, it forwards this
      # message to its parent.  This is done so that
      # children of this control that send this message
      # type to their parent will notify not only
      # this control but also the parent of this control,
      # which is typically the application window and
      # the window that is looking for the message.
      # If the control did not forward the message,
      # applications would have to subclass the control
      # window to see the message. Because the control
      # window is subclassed by SWT, the message
      # is delivered twice, once by SWT and once when
      # the message is forwarded by the window proc.
      # The fix is to avoid calling the window proc
      # for this control.
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      return LRESULT::ZERO
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setredraw(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows.  When redraw is turned off, the rebar
      # control does not call the default window proc.  This means
      # that the rebar will redraw and children of the rebar will
      # also redraw.  The fix is to call both the rebar window proc
      # and the default window proc.
      # 
      # NOTE: The rebar control can resize itself in WM_SETREDRAW.
      # When redraw is turned off by the default window proc, this
      # can leave pixel corruption in the parent.  The fix is to
      # detect the size change and damage the previous area in the
      # parent.
      # 
      # NOTE:  In version 6.00 of COMCTL32.DLL, when WM_SETREDRAW
      # is off, we cannot detect that the size has changed causing
      # pixel corruption.  The fix is to disallow WM_SETREDRAW by
      # not running the default window proc or the rebar window
      # proc.
      if (OS::COMCTL32_MAJOR >= 6)
        return LRESULT::ZERO
      end
      rect = get_bounds
      # long
      code = call_window_proc(self.attr_handle, OS::WM_SETREDRAW, w_param, l_param)
      OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, w_param, l_param)
      if (!(rect == get_bounds))
        self.attr_parent.redraw(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height, true)
      end
      return LRESULT.new(code)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_size(w_param, l_param)
      if (@ignore_resize)
        # long
        code = call_window_proc(self.attr_handle, OS::WM_SIZE, w_param, l_param)
        if ((code).equal?(0))
          return LRESULT::ZERO
        end
        return LRESULT.new(code)
      end
      # TEMPORARY CODE
      # if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed ()) {
      # if (background == -1 && (style & SWT.FLAT) == 0) {
      # OS.InvalidateRect (handle, null, true);
      # }
      # }
      return super(w_param, l_param)
    end
    
    typesig { [NMHDR, ::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_notify_child(hdr, w_param, l_param)
      catch(:break_case) do
        case (hdr.attr_code)
        when OS::RBN_BEGINDRAG
          pos = OS._get_message_pos
          pt = POINT.new
          OS._pointstopoint(pt, pos)
          OS._screen_to_client(self.attr_handle, pt)
          button = !(self.attr_display.attr_last_button).equal?(0) ? self.attr_display.attr_last_button : 1
          if (!send_drag_event(button, pt.attr_x, pt.attr_y))
            return LRESULT::ONE
          end
        when OS::RBN_CHILDSIZE
          # Bug in Windows.  When Windows sets the size of the rebar band
          # child and the child is a combo box, the size of the drop down
          # portion of the combo box is resized to zero.  The fix is to set
          # the size of the control to the current size after the rebar has
          # already resized it.  If the control is not a combo, this does
          # nothing.  If the control is a combo, the drop down portion is
          # recalculated.
          lprbcs = NMREBARCHILDSIZE.new
          OS._move_memory(lprbcs, l_param, NMREBARCHILDSIZE.attr_sizeof)
          if (!(lprbcs.attr_u_band).equal?(-1))
            item = @items[lprbcs.attr_w_id]
            control = item.attr_control
            if (!(control).nil?)
              width = lprbcs.attr_rc_child_right - lprbcs.attr_rc_child_left
              height = lprbcs.attr_rc_child_bottom - lprbcs.attr_rc_child_top
              control.set_bounds(lprbcs.attr_rc_child_left, lprbcs.attr_rc_child_top, width, height)
            end
          end
        when OS::RBN_HEIGHTCHANGE
          if (!@ignore_resize)
            size = get_size
            border = get_border_width
            # 64
            bar_height = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::RB_GETBARHEIGHT, 0, 0))
            if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
              set_size(bar_height + 2 * border, size.attr_y)
            else
              set_size(size.attr_x, bar_height + 2 * border)
            end
          end
        when OS::RBN_CHEVRONPUSHED
          lpnm = NMREBARCHEVRON.new
          OS._move_memory(lpnm, l_param, NMREBARCHEVRON.attr_sizeof)
          item = @items[lpnm.attr_w_id]
          if (!(item).nil?)
            event = Event.new
            event.attr_detail = SWT::ARROW
            if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
              event.attr_x = lpnm.attr_right
              event.attr_y = lpnm.attr_top
            else
              event.attr_x = lpnm.attr_left
              event.attr_y = lpnm.attr_bottom
            end
            item.post_event(SWT::Selection, event)
          end
        when OS::NM_CUSTOMDRAW
          # Bug in Windows.  On versions of Windows prior to XP,
          # drawing the background color in NM_CUSTOMDRAW erases
          # the separators.  The fix is to draw the background
          # in WM_ERASEBKGND.
          if (OS::COMCTL32_MAJOR < 6)
            throw :break_case, :thrown
          end
          if (!(find_background_control).nil? || !((self.attr_style & SWT::FLAT)).equal?(0))
            nmcd = NMCUSTOMDRAW.new
            OS._move_memory(nmcd, l_param, NMCUSTOMDRAW.attr_sizeof)
            case (nmcd.attr_dw_draw_stage)
            when OS::CDDS_PREERASE
              return LRESULT.new(OS::CDRF_SKIPDEFAULT | OS::CDRF_NOTIFYPOSTERASE)
            when OS::CDDS_POSTERASE
              draw_background(nmcd.attr_hdc)
            end
          end
        end
      end
      return super(hdr, w_param, l_param)
    end
    
    private
    alias_method :initialize__cool_bar, :initialize
  end
  
end
