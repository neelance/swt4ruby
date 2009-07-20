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
  module ExpandItemImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
    }
  end
  
  # Instances of this class represent a selectable user interface object
  # that represents a expandable item in a expand bar.
  # <p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>(none)</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see ExpandBar
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.2
  class ExpandItem < ExpandItemImports.const_get :Item
    include_class_members ExpandItemImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :control
    alias_method :attr_control, :control
    undef_method :control
    alias_method :attr_control=, :control=
    undef_method :control=
    
    attr_accessor :expanded
    alias_method :attr_expanded, :expanded
    undef_method :expanded
    alias_method :attr_expanded=, :expanded=
    undef_method :expanded=
    
    attr_accessor :hover
    alias_method :attr_hover, :hover
    undef_method :hover
    alias_method :attr_hover=, :hover=
    undef_method :hover=
    
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    attr_accessor :image_height
    alias_method :attr_image_height, :image_height
    undef_method :image_height
    alias_method :attr_image_height=, :image_height=
    undef_method :image_height=
    
    attr_accessor :image_width
    alias_method :attr_image_width, :image_width
    undef_method :image_width
    alias_method :attr_image_width=, :image_width=
    undef_method :image_width=
    
    class_module.module_eval {
      const_set_lazy(:TEXT_INSET) { 6 }
      const_attr_reader  :TEXT_INSET
      
      const_set_lazy(:BORDER) { 1 }
      const_attr_reader  :BORDER
      
      const_set_lazy(:CHEVRON_SIZE) { 24 }
      const_attr_reader  :CHEVRON_SIZE
    }
    
    typesig { [ExpandBar, ::Java::Int] }
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
      initialize__expand_item(parent, style, check_null(parent).get_item_count)
    end
    
    typesig { [ExpandBar, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent, a
    # style value describing its behavior and appearance, and the index
    # at which to place it in the items maintained by its parent.
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
    # @param index the zero-relative index to store the receiver in its parent
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the parent (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style, index)
      @parent = nil
      @control = nil
      @expanded = false
      @hover = false
      @x = 0
      @y = 0
      @width = 0
      @height = 0
      @image_height = 0
      @image_width = 0
      super(parent, style)
      @parent = parent
      parent.create_item(self, style, index)
    end
    
    class_module.module_eval {
      typesig { [ExpandBar] }
      def check_null(control)
        if ((control).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        return control
      end
    }
    
    typesig { [::Java::Int, RECT] }
    # long
    def draw_chevron(h_dc, rect)
      # long
      old_brush = OS._select_object(h_dc, OS._get_sys_color_brush(OS::COLOR_BTNFACE))
      OS._pat_blt(h_dc, rect.attr_left, rect.attr_top, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top, OS::PATCOPY)
      OS._select_object(h_dc, old_brush)
      rect.attr_left += 4
      rect.attr_top += 4
      rect.attr_right -= 4
      rect.attr_bottom -= 4
      # long
      h_pen = OS._create_pen(OS::PS_SOLID, 1, @parent.get_foreground_pixel)
      # long
      old_pen = OS._select_object(h_dc, h_pen)
      polyline1 = nil
      polyline2 = nil
      if (@expanded)
        px = rect.attr_left + 5
        py = rect.attr_top + 7
        polyline1 = Array.typed(::Java::Int).new([px, py, px + 1, py, px + 1, py - 1, px + 2, py - 1, px + 2, py - 2, px + 3, py - 2, px + 3, py - 3, px + 3, py - 2, px + 4, py - 2, px + 4, py - 1, px + 5, py - 1, px + 5, py, px + 7, py])
        py += 4
        polyline2 = Array.typed(::Java::Int).new([px, py, px + 1, py, px + 1, py - 1, px + 2, py - 1, px + 2, py - 2, px + 3, py - 2, px + 3, py - 3, px + 3, py - 2, px + 4, py - 2, px + 4, py - 1, px + 5, py - 1, px + 5, py, px + 7, py])
      else
        px = rect.attr_left + 5
        py = rect.attr_top + 4
        polyline1 = Array.typed(::Java::Int).new([px, py, px + 1, py, px + 1, py + 1, px + 2, py + 1, px + 2, py + 2, px + 3, py + 2, px + 3, py + 3, px + 3, py + 2, px + 4, py + 2, px + 4, py + 1, px + 5, py + 1, px + 5, py, px + 7, py])
        py += 4
        polyline2 = Array.typed(::Java::Int).new([px, py, px + 1, py, px + 1, py + 1, px + 2, py + 1, px + 2, py + 2, px + 3, py + 2, px + 3, py + 3, px + 3, py + 2, px + 4, py + 2, px + 4, py + 1, px + 5, py + 1, px + 5, py, px + 7, py])
      end
      OS._polyline(h_dc, polyline1, polyline1.attr_length / 2)
      OS._polyline(h_dc, polyline2, polyline2.attr_length / 2)
      if (@hover)
        # long
        white_pen = OS._create_pen(OS::PS_SOLID, 1, OS._get_sys_color(OS::COLOR_3DHILIGHT))
        # long
        dark_gray_pen = OS._create_pen(OS::PS_SOLID, 1, OS._get_sys_color(OS::COLOR_3DSHADOW))
        OS._select_object(h_dc, white_pen)
        points1 = Array.typed(::Java::Int).new([rect.attr_left, rect.attr_bottom, rect.attr_left, rect.attr_top, rect.attr_right, rect.attr_top])
        OS._polyline(h_dc, points1, points1.attr_length / 2)
        OS._select_object(h_dc, dark_gray_pen)
        points2 = Array.typed(::Java::Int).new([rect.attr_right, rect.attr_top, rect.attr_right, rect.attr_bottom, rect.attr_left, rect.attr_bottom])
        OS._polyline(h_dc, points2, points2.attr_length / 2)
        OS._select_object(h_dc, old_pen)
        OS._delete_object(white_pen)
        OS._delete_object(dark_gray_pen)
      else
        OS._select_object(h_dc, old_pen)
      end
      OS._delete_object(h_pen)
    end
    
    typesig { [SwtGC, ::Java::Int, RECT, ::Java::Boolean] }
    # long
    def draw_item(gc, h_theme, clip_rect, draw_focus)
      # long
      h_dc = gc.attr_handle
      header_height = @parent.get_band_height
      rect = RECT.new
      OS._set_rect(rect, @x, @y, @x + @width, @y + header_height)
      if (!(h_theme).equal?(0))
        OS._draw_theme_background(h_theme, h_dc, OS::EBP_NORMALGROUPHEAD, 0, rect, clip_rect)
      else
        # long
        old_brush = OS._select_object(h_dc, OS._get_sys_color_brush(OS::COLOR_BTNFACE))
        OS._pat_blt(h_dc, rect.attr_left, rect.attr_top, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top, OS::PATCOPY)
        OS._select_object(h_dc, old_brush)
      end
      if (!(self.attr_image).nil?)
        rect.attr_left += ExpandItem::TEXT_INSET
        if (@image_height > header_height)
          gc.draw_image(self.attr_image, rect.attr_left, rect.attr_top + header_height - @image_height)
        else
          gc.draw_image(self.attr_image, rect.attr_left, rect.attr_top + (header_height - @image_height) / 2)
        end
        rect.attr_left += @image_width
      end
      if (self.attr_text.length > 0)
        rect.attr_left += ExpandItem::TEXT_INSET
        buffer = TCHAR.new(@parent.get_code_page, self.attr_text, false)
        if (!(h_theme).equal?(0))
          OS._draw_theme_text(h_theme, h_dc, OS::EBP_NORMALGROUPHEAD, 0, buffer.attr_chars, buffer.length, OS::DT_VCENTER | OS::DT_SINGLELINE, 0, rect)
        else
          old_bk_mode = OS._set_bk_mode(h_dc, OS::TRANSPARENT)
          OS._draw_text(h_dc, buffer, buffer.length, rect, OS::DT_VCENTER | OS::DT_SINGLELINE)
          OS._set_bk_mode(h_dc, old_bk_mode)
        end
      end
      chevron_size = ExpandItem::CHEVRON_SIZE
      rect.attr_left = rect.attr_right - chevron_size
      rect.attr_top = @y + (header_height - chevron_size) / 2
      rect.attr_bottom = rect.attr_top + chevron_size
      if (!(h_theme).equal?(0))
        part_id = @expanded ? OS::EBP_NORMALGROUPCOLLAPSE : OS::EBP_NORMALGROUPEXPAND
        state_id = @hover ? OS::EBNGC_HOT : OS::EBNGC_NORMAL
        OS._draw_theme_background(h_theme, h_dc, part_id, state_id, rect, clip_rect)
      else
        draw_chevron(h_dc, rect)
      end
      if (draw_focus)
        OS._set_rect(rect, @x + 1, @y + 1, @x + @width - 2, @y + header_height - 2)
        OS._draw_focus_rect(h_dc, rect)
      end
      if (@expanded)
        if (!@parent.is_app_themed)
          # long
          pen = OS._create_pen(OS::PS_SOLID, 1, OS._get_sys_color(OS::COLOR_BTNFACE))
          # long
          old_pen = OS._select_object(h_dc, pen)
          points = Array.typed(::Java::Int).new([@x, @y + header_height, @x, @y + header_height + @height, @x + @width - 1, @y + header_height + @height, @x + @width - 1, @y + header_height - 1])
          OS._polyline(h_dc, points, points.attr_length / 2)
          OS._select_object(h_dc, old_pen)
          OS._delete_object(pen)
        end
      end
    end
    
    typesig { [] }
    def destroy_widget
      @parent.destroy_item(self)
      release_handle
    end
    
    typesig { [] }
    # Returns the control that is shown when the item is expanded.
    # If no control has been set, return <code>null</code>.
    # 
    # @return the control
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_control
      check_widget
      return @control
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is expanded,
    # and false otherwise.
    # 
    # @return the expanded state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_expanded
      check_widget
      return @expanded
    end
    
    typesig { [] }
    # Returns the height of the receiver's header
    # 
    # @return the height of the header
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_header_height
      check_widget
      return Math.max(@parent.get_band_height, @image_height)
    end
    
    typesig { [] }
    # Gets the height of the receiver.
    # 
    # @return the height
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_height
      check_widget
      return @height
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>ExpandBar</code>.
    # 
    # @return the receiver's parent
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_parent
      check_widget
      return @parent
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_preferred_width(h_theme, h_dc)
      width = ExpandItem::TEXT_INSET * 2 + ExpandItem::CHEVRON_SIZE
      if (!(self.attr_image).nil?)
        width += ExpandItem::TEXT_INSET + @image_width
      end
      if (self.attr_text.length > 0)
        rect = RECT.new
        buffer = TCHAR.new(@parent.get_code_page, self.attr_text, false)
        if (!(h_theme).equal?(0))
          OS._get_theme_text_extent(h_theme, h_dc, OS::EBP_NORMALGROUPHEAD, 0, buffer.attr_chars, buffer.length, OS::DT_SINGLELINE, nil, rect)
        else
          OS._draw_text(h_dc, buffer, buffer.length, rect, OS::DT_CALCRECT)
        end
        width += (rect.attr_right - rect.attr_left)
      end
      return width
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def is_hover(x, y)
      band_height = @parent.get_band_height
      return @x < x && x < (@x + @width) && @y < y && y < (@y + band_height)
    end
    
    typesig { [::Java::Boolean] }
    def redraw(all)
      # long
      parent_handle = @parent.attr_handle
      header_height = @parent.get_band_height
      rect = RECT.new
      left = all ? @x : @x + @width - header_height
      OS._set_rect(rect, left, @y, @x + @width, @y + header_height)
      OS._invalidate_rect(parent_handle, rect, true)
      if (@image_height > header_height)
        OS._set_rect(rect, @x + ExpandItem::TEXT_INSET, @y + header_height - @image_height, @x + ExpandItem::TEXT_INSET + @image_width, @y)
        OS._invalidate_rect(parent_handle, rect, true)
      end
      if (!@parent.is_app_themed)
        OS._set_rect(rect, @x, @y + header_height, @x + @width, @y + header_height + @height + 1)
        OS._invalidate_rect(parent_handle, rect, true)
      end
    end
    
    typesig { [] }
    def release_handle
      super
      @parent = nil
    end
    
    typesig { [] }
    def release_widget
      super
      @control = nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, size)
      redraw(true)
      header_height = @parent.get_band_height
      if (move)
        if (@image_height > header_height)
          y += (@image_height - header_height)
        end
        @x = x
        @y = y
        redraw(true)
      end
      if (size)
        @width = width
        @height = height
        redraw(true)
      end
      if (!(@control).nil? && !@control.is_disposed)
        if (!@parent.is_app_themed)
          x += BORDER
          width = Math.max(0, width - BORDER * 2)
          height = Math.max(0, height - BORDER)
        end
        if (move && size)
          @control.set_bounds(x, y + header_height, width, height)
        end
        if (move && !size)
          @control.set_location(x, y + header_height)
        end
        if (!move && size)
          @control.set_size(width, height)
        end
      end
    end
    
    typesig { [Control] }
    # Sets the control that is shown when the item is expanded.
    # 
    # @param control the new control (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the control has been disposed</li>
    # <li>ERROR_INVALID_PARENT - if the control is not in the same widget tree</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_control(control)
      check_widget
      if (!(control).nil?)
        if (control.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (!(control.attr_parent).equal?(@parent))
          error(SWT::ERROR_INVALID_PARENT)
        end
      end
      @control = control
      if (!(control).nil?)
        header_height = @parent.get_band_height
        control.set_visible(@expanded)
        if (!@parent.is_app_themed)
          width = Math.max(0, @width - BORDER * 2)
          height = Math.max(0, @height - BORDER)
          control.set_bounds(@x + BORDER, @y + header_height, width, height)
        else
          control.set_bounds(@x, @y + header_height, @width, @height)
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    # Sets the expanded state of the receiver.
    # 
    # @param expanded the new expanded state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_expanded(expanded)
      check_widget
      @expanded = expanded
      @parent.show_item(self)
    end
    
    typesig { [::Java::Int] }
    # Sets the height of the receiver. This is height of the item when it is expanded,
    # excluding the height of the header.
    # 
    # @param height the new height
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_height(height)
      check_widget
      if (height < 0)
        return
      end
      set_bounds(0, 0, @width, height, false, true)
      if (@expanded)
        @parent.layout_items(@parent.index_of(self) + 1, true)
      end
    end
    
    typesig { [Image] }
    def set_image(image)
      super(image)
      old_image_height = @image_height
      if (!(image).nil?)
        bounds = image.get_bounds
        @image_height = bounds.attr_height
        @image_width = bounds.attr_width
      else
        @image_height = @image_width = 0
      end
      if (!(old_image_height).equal?(@image_height))
        @parent.layout_items(@parent.index_of(self), true)
      else
        redraw(true)
      end
    end
    
    typesig { [String] }
    def set_text(string)
      super(string)
      redraw(true)
    end
    
    private
    alias_method :initialize__expand_item, :initialize
  end
  
end
