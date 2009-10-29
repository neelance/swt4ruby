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
  module TableItemImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class represent a selectable user interface object
  # that represents an item in a table.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>(none)</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#table">Table, TableItem, TableColumn snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class TableItem < TableItemImports.const_get :Item
    include_class_members TableItemImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :strings
    alias_method :attr_strings, :strings
    undef_method :strings
    alias_method :attr_strings=, :strings=
    undef_method :strings=
    
    attr_accessor :images
    alias_method :attr_images, :images
    undef_method :images
    alias_method :attr_images=, :images=
    undef_method :images=
    
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    attr_accessor :cell_font
    alias_method :attr_cell_font, :cell_font
    undef_method :cell_font
    alias_method :attr_cell_font=, :cell_font=
    undef_method :cell_font=
    
    attr_accessor :checked
    alias_method :attr_checked, :checked
    undef_method :checked
    alias_method :attr_checked=, :checked=
    undef_method :checked=
    
    attr_accessor :grayed
    alias_method :attr_grayed, :grayed
    undef_method :grayed
    alias_method :attr_grayed=, :grayed=
    undef_method :grayed=
    
    attr_accessor :cached
    alias_method :attr_cached, :cached
    undef_method :cached
    alias_method :attr_cached=, :cached=
    undef_method :cached=
    
    attr_accessor :image_indent
    alias_method :attr_image_indent, :image_indent
    undef_method :image_indent
    alias_method :attr_image_indent=, :image_indent=
    undef_method :image_indent=
    
    attr_accessor :background
    alias_method :attr_background, :background
    undef_method :background
    alias_method :attr_background=, :background=
    undef_method :background=
    
    attr_accessor :foreground
    alias_method :attr_foreground, :foreground
    undef_method :foreground
    alias_method :attr_foreground=, :foreground=
    undef_method :foreground=
    
    attr_accessor :cell_background
    alias_method :attr_cell_background, :cell_background
    undef_method :cell_background
    alias_method :attr_cell_background=, :cell_background=
    undef_method :cell_background=
    
    attr_accessor :cell_foreground
    alias_method :attr_cell_foreground, :cell_foreground
    undef_method :cell_foreground
    alias_method :attr_cell_foreground=, :cell_foreground=
    undef_method :cell_foreground=
    
    typesig { [Table, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Table</code>) and a style value
    # describing its behavior and appearance. The item is added
    # to the end of the items maintained by its parent.
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
      initialize__table_item(parent, style, check_null(parent).get_item_count, true)
    end
    
    typesig { [Table, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Table</code>), a style value
    # describing its behavior and appearance, and the index
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
    # @see SWT
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style, index)
      initialize__table_item(parent, style, index, true)
    end
    
    typesig { [Table, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def initialize(parent, style, index, create)
      @parent = nil
      @strings = nil
      @images = nil
      @font = nil
      @cell_font = nil
      @checked = false
      @grayed = false
      @cached = false
      @image_indent = 0
      @background = 0
      @foreground = 0
      @cell_background = nil
      @cell_foreground = nil
      super(parent, style)
      @background = -1
      @foreground = -1
      @parent = parent
      if (create)
        parent.create_item(self, index)
      end
    end
    
    class_module.module_eval {
      typesig { [Table] }
      def check_null(control)
        if ((control).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        return control
      end
    }
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [] }
    def clear
      self.attr_text = ""
      self.attr_image = nil
      @strings = nil
      @images = nil
      @image_indent = 0
      @checked = @grayed = false
      @font = nil
      @background = @foreground = -1
      @cell_font = nil
      @cell_background = @cell_foreground = nil
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        @cached = false
      end
    end
    
    typesig { [] }
    def destroy_widget
      @parent.destroy_item(self)
      release_handle
    end
    
    typesig { [::Java::Int] }
    # long
    def font_handle(index)
      if (!(@cell_font).nil? && !(@cell_font[index]).nil?)
        return @cell_font[index].attr_handle
      end
      if (!(@font).nil?)
        return @font.attr_handle
      end
      return -1
    end
    
    typesig { [] }
    # Returns the receiver's background color.
    # 
    # @return the background color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def get_background
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if ((@background).equal?(-1))
        return @parent.get_background
      end
      return Color.win32_new(self.attr_display, @background)
    end
    
    typesig { [::Java::Int] }
    # Returns the background color at the given column index in the receiver.
    # 
    # @param index the column index
    # @return the background color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_background(index)
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      count = Math.max(1, @parent.get_column_count)
      if (0 > index || index > count - 1)
        return get_background
      end
      pixel = !(@cell_background).nil? ? @cell_background[index] : -1
      return (pixel).equal?(-1) ? get_background : Color.win32_new(self.attr_display, pixel)
    end
    
    typesig { [] }
    # Returns a rectangle describing the receiver's size and location
    # relative to its parent.
    # 
    # @return the receiver's bounding rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def get_bounds
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      item_index = @parent.index_of(self)
      if ((item_index).equal?(-1))
        return Rectangle.new(0, 0, 0, 0)
      end
      rect = get_bounds(item_index, 0, true, false, false)
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      return Rectangle.new(rect.attr_left, rect.attr_top, width, height)
    end
    
    typesig { [::Java::Int] }
    # Returns a rectangle describing the receiver's size and location
    # relative to its parent at a column in the table.
    # 
    # @param index the index that specifies the column
    # @return the receiver's bounding column rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_bounds(index)
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      item_index = @parent.index_of(self)
      if ((item_index).equal?(-1))
        return Rectangle.new(0, 0, 0, 0)
      end
      rect = get_bounds(item_index, index, true, true, true)
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      return Rectangle.new(rect.attr_left, rect.attr_top, width, height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def get_bounds(row, column, get_text, get_image, full_text)
      return get_bounds(row, column, get_text, get_image, full_text, false, 0)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean, ::Java::Int] }
    # long
    def get_bounds(row, column, get_text, get_image, full_text, full_image, h_dc)
      if (!get_text && !get_image)
        return RECT.new
      end
      column_count = @parent.get_column_count
      if (!(0 <= column && column < Math.max(1, column_count)))
        return RECT.new
      end
      if (@parent.attr_fix_scroll_width)
        @parent.set_scroll_width(nil, true)
      end
      rect = RECT.new
      # long
      hwnd = @parent.attr_handle
      # 64
      bits = RJava.cast_to_int(OS._send_message(hwnd, OS::LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0))
      if ((column).equal?(0) && ((bits & OS::LVS_EX_FULLROWSELECT)).equal?(0))
        if (@parent.attr_explorer_theme)
          rect.attr_left = OS::LVIR_ICON
          @parent.attr_ignore_custom_draw = true
          # long
          code = OS._send_message(hwnd, OS::LVM_GETITEMRECT, row, rect)
          @parent.attr_ignore_custom_draw = false
          if ((code).equal?(0))
            return RECT.new
          end
          if (get_text)
            width = 0
            # long
            h_font = font_handle(column)
            if ((h_font).equal?(-1) && (h_dc).equal?(0))
              buffer = TCHAR.new(@parent.get_code_page, self.attr_text, true)
              # 64
              width = RJava.cast_to_int(OS._send_message(hwnd, OS::LVM_GETSTRINGWIDTH, 0, buffer))
            else
              buffer = TCHAR.new(@parent.get_code_page, self.attr_text, false)
              # long
              text_dc = !(h_dc).equal?(0) ? h_dc : OS._get_dc(hwnd)
              old_font = -1
              if ((h_dc).equal?(0))
                if ((h_font).equal?(-1))
                  h_font = OS._send_message(hwnd, OS::WM_GETFONT, 0, 0)
                end
                old_font = OS._select_object(text_dc, h_font)
              end
              text_rect = RECT.new
              flags = OS::DT_NOPREFIX | OS::DT_SINGLELINE | OS::DT_CALCRECT
              OS._draw_text(text_dc, buffer, buffer.length, text_rect, flags)
              width = text_rect.attr_right - text_rect.attr_left
              if ((h_dc).equal?(0))
                if (!(old_font).equal?(-1))
                  OS._select_object(text_dc, old_font)
                end
                OS._release_dc(hwnd, text_dc)
              end
            end
            if (!get_image)
              rect.attr_left = rect.attr_right
            end
            rect.attr_right += width + Table::INSET * 2
          end
        else
          if (get_text)
            rect.attr_left = OS::LVIR_SELECTBOUNDS
            @parent.attr_ignore_custom_draw = true
            # long
            code = OS._send_message(hwnd, OS::LVM_GETITEMRECT, row, rect)
            @parent.attr_ignore_custom_draw = false
            if ((code).equal?(0))
              return RECT.new
            end
            if (!get_image)
              icon_rect = RECT.new
              icon_rect.attr_left = OS::LVIR_ICON
              @parent.attr_ignore_custom_draw = true
              code = OS._send_message(hwnd, OS::LVM_GETITEMRECT, row, icon_rect)
              @parent.attr_ignore_custom_draw = false
              if (!(code).equal?(0))
                rect.attr_left = icon_rect.attr_right
              end
            end
          else
            rect.attr_left = OS::LVIR_ICON
            @parent.attr_ignore_custom_draw = true
            # long
            code = OS._send_message(hwnd, OS::LVM_GETITEMRECT, row, rect)
            @parent.attr_ignore_custom_draw = false
            if ((code).equal?(0))
              return RECT.new
            end
          end
        end
        if (full_text || full_image)
          header_rect = RECT.new
          # long
          hwnd_header = OS._send_message(hwnd, OS::LVM_GETHEADER, 0, 0)
          OS._send_message(hwnd_header, OS::HDM_GETITEMRECT, 0, header_rect)
          OS._map_window_points(hwnd_header, hwnd, header_rect, 2)
          if (get_text && full_text)
            rect.attr_right = header_rect.attr_right
          end
          if (get_image && full_image)
            rect.attr_left = header_rect.attr_left
          end
        end
      else
        # Feature in Windows.  LVM_GETSUBITEMRECT returns an image width
        # even when the subitem does not contain an image.  The fix is to
        # test for this case and adjust the rectangle to represent the area
        # the table is actually drawing.
        has_image = ((column).equal?(0) && !(self.attr_image).nil?) || (!(@images).nil? && !(@images[column]).nil?)
        rect.attr_top = column
        if (full_text || full_image || (h_dc).equal?(0))
          # Bug in Windows.  Despite the fact that the documentation states
          # that LVIR_BOUNDS and LVIR_LABEL are identical when used with
          # LVM_GETSUBITEMRECT, LVIR_BOUNDS can return a zero height.  The
          # fix is to use LVIR_LABEL.
          rect.attr_left = get_text ? OS::LVIR_LABEL : OS::LVIR_ICON
          @parent.attr_ignore_custom_draw = true
          # long
          code = OS._send_message(hwnd, OS::LVM_GETSUBITEMRECT, row, rect)
          @parent.attr_ignore_custom_draw = false
          if ((code).equal?(0))
            return RECT.new
          end
          # Feature in Windows.  Calling LVM_GETSUBITEMRECT with LVIR_LABEL
          # and zero for the column number gives the bounds of the first item
          # without including the bounds of the icon.  This is undocumented.
          # When called with values greater than zero, the icon bounds are
          # included and this behavior is documented.  If the icon is needed
          # in the bounds of the first item, the fix is to adjust the item
          # bounds using the icon bounds.
          if ((column).equal?(0) && get_text && get_image)
            icon_rect = RECT.new
            icon_rect.attr_left = OS::LVIR_ICON
            @parent.attr_ignore_custom_draw = true
            code = OS._send_message(hwnd, OS::LVM_GETSUBITEMRECT, row, icon_rect)
            @parent.attr_ignore_custom_draw = false
            if (!(code).equal?(0))
              rect.attr_left = icon_rect.attr_left
            end
          end
          if (has_image)
            if (!(column).equal?(0) && get_text && !get_image)
              icon_rect = RECT.new
              icon_rect.attr_top = column
              icon_rect.attr_left = OS::LVIR_ICON
              if (!(OS._send_message(hwnd, OS::LVM_GETSUBITEMRECT, row, icon_rect)).equal?(0))
                rect.attr_left = icon_rect.attr_right + Table::INSET / 2
              end
            end
          else
            if (get_image && !get_text)
              rect.attr_right = rect.attr_left
            end
          end
          if ((column).equal?(0) && full_image)
            header_rect = RECT.new
            # long
            hwnd_header = OS._send_message(hwnd, OS::LVM_GETHEADER, 0, 0)
            OS._send_message(hwnd_header, OS::HDM_GETITEMRECT, 0, header_rect)
            OS._map_window_points(hwnd_header, hwnd, header_rect, 2)
            rect.attr_left = header_rect.attr_left
          end
        else
          rect.attr_left = OS::LVIR_ICON
          @parent.attr_ignore_custom_draw = true
          # long
          code = OS._send_message(hwnd, OS::LVM_GETSUBITEMRECT, row, rect)
          @parent.attr_ignore_custom_draw = false
          if ((code).equal?(0))
            return RECT.new
          end
          if (!has_image)
            rect.attr_right = rect.attr_left
          end
          if (get_text)
            string = (column).equal?(0) ? self.attr_text : !(@strings).nil? ? @strings[column] : nil
            if (!(string).nil?)
              text_rect = RECT.new
              buffer = TCHAR.new(@parent.get_code_page, string, false)
              flags = OS::DT_NOPREFIX | OS::DT_SINGLELINE | OS::DT_CALCRECT
              OS._draw_text(h_dc, buffer, buffer.length, text_rect, flags)
              rect.attr_right += text_rect.attr_right - text_rect.attr_left + Table::INSET * 3 + 1
            end
          end
        end
      end
      # Bug in Windows.  In version 5.80 of COMCTL32.DLL, the top
      # of the rectangle returned by LVM_GETSUBITEMRECT is off by
      # the grid width when the grid is visible.  The fix is to
      # move the top of the rectangle up by the grid width.
      grid_width = @parent.get_lines_visible ? Table::GRID_WIDTH : 0
      if (OS::COMCTL32_VERSION >= OS._version(5, 80))
        rect.attr_top -= grid_width
      end
      if (!(column).equal?(0))
        rect.attr_left += grid_width
      end
      rect.attr_right = Math.max(rect.attr_right, rect.attr_left)
      rect.attr_top += grid_width
      rect.attr_bottom = Math.max(rect.attr_bottom - grid_width, rect.attr_top)
      return rect
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is checked,
    # and false otherwise.  When the parent does not have
    # the <code>CHECK</code> style, return false.
    # 
    # @return the checked state of the checkbox
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_checked
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if (((@parent.attr_style & SWT::CHECK)).equal?(0))
        return false
      end
      return @checked
    end
    
    typesig { [] }
    # Returns the font that the receiver will use to paint textual information for this item.
    # 
    # @return the receiver's font
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_font
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return !(@font).nil? ? @font : @parent.get_font
    end
    
    typesig { [::Java::Int] }
    # Returns the font that the receiver will use to paint textual information
    # for the specified cell in this item.
    # 
    # @param index the column index
    # @return the receiver's font
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_font(index)
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      count = Math.max(1, @parent.get_column_count)
      if (0 > index || index > count - 1)
        return get_font
      end
      if ((@cell_font).nil? || (@cell_font[index]).nil?)
        return get_font
      end
      return @cell_font[index]
    end
    
    typesig { [] }
    # Returns the foreground color that the receiver will use to draw.
    # 
    # @return the receiver's foreground color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def get_foreground
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if ((@foreground).equal?(-1))
        return @parent.get_foreground
      end
      return Color.win32_new(self.attr_display, @foreground)
    end
    
    typesig { [::Java::Int] }
    # Returns the foreground color at the given column index in the receiver.
    # 
    # @param index the column index
    # @return the foreground color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_foreground(index)
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      count = Math.max(1, @parent.get_column_count)
      if (0 > index || index > count - 1)
        return get_foreground
      end
      pixel = !(@cell_foreground).nil? ? @cell_foreground[index] : -1
      return (pixel).equal?(-1) ? get_foreground : Color.win32_new(self.attr_display, pixel)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is grayed,
    # and false otherwise. When the parent does not have
    # the <code>CHECK</code> style, return false.
    # 
    # @return the grayed state of the checkbox
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_grayed
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if (((@parent.attr_style & SWT::CHECK)).equal?(0))
        return false
      end
      return @grayed
    end
    
    typesig { [] }
    def get_image
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return super
    end
    
    typesig { [::Java::Int] }
    # Returns the image stored at the given column index in the receiver,
    # or null if the image has not been set or if the column does not exist.
    # 
    # @param index the column index
    # @return the image stored at the given column index in the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_image(index)
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if ((index).equal?(0))
        return get_image
      end
      if (!(@images).nil?)
        if (0 <= index && index < @images.attr_length)
          return @images[index]
        end
      end
      return nil
    end
    
    typesig { [::Java::Int] }
    # Returns a rectangle describing the size and location
    # relative to its parent of an image at a column in the
    # table.  An empty rectangle is returned if index exceeds
    # the index of the table's last column.
    # 
    # @param index the index that specifies the column
    # @return the receiver's bounding image rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_image_bounds(index)
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      item_index = @parent.index_of(self)
      if ((item_index).equal?(-1))
        return Rectangle.new(0, 0, 0, 0)
      end
      rect = get_bounds(item_index, index, false, true, false)
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      return Rectangle.new(rect.attr_left, rect.attr_top, width, height)
    end
    
    typesig { [] }
    # Gets the image indent.
    # 
    # @return the indent
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_image_indent
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return @image_indent
    end
    
    typesig { [] }
    def get_name_text
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        if (!@cached)
          return "*virtual*"
        end # $NON-NLS-1$
      end
      return super
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>Table</code>.
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
    
    typesig { [] }
    def get_text
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return super
    end
    
    typesig { [::Java::Int] }
    # Returns the text stored at the given column index in the receiver,
    # or empty string if the text has not been set.
    # 
    # @param index the column index
    # @return the text stored at the given column index in the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text(index)
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if ((index).equal?(0))
        return get_text
      end
      if (!(@strings).nil?)
        if (0 <= index && index < @strings.attr_length)
          string = @strings[index]
          return !(string).nil? ? string : ""
        end
      end
      return ""
    end
    
    typesig { [::Java::Int] }
    # Returns a rectangle describing the size and location
    # relative to its parent of the text at a column in the
    # table.  An empty rectangle is returned if index exceeds
    # the index of the table's last column.
    # 
    # @param index the index that specifies the column
    # @return the receiver's bounding text rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    def get_text_bounds(index)
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      item_index = @parent.index_of(self)
      if ((item_index).equal?(-1))
        return Rectangle.new(0, 0, 0, 0)
      end
      rect = get_bounds(item_index, index, true, false, true)
      rect.attr_left += 2
      if (!(index).equal?(0))
        rect.attr_left += Table::INSET
      end
      rect.attr_left = Math.min(rect.attr_left, rect.attr_right)
      rect.attr_right = rect.attr_right - Table::INSET
      width = Math.max(0, rect.attr_right - rect.attr_left)
      height = Math.max(0, rect.attr_bottom - rect.attr_top)
      return Rectangle.new(rect.attr_left, rect.attr_top, width, height)
    end
    
    typesig { [] }
    def redraw
      if ((@parent.attr_current_item).equal?(self) || !@parent.get_drawing)
        return
      end
      # long
      hwnd = @parent.attr_handle
      if (!OS._is_window_visible(hwnd))
        return
      end
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      OS._send_message(hwnd, OS::LVM_REDRAWITEMS, index, index)
    end
    
    typesig { [::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def redraw(column, draw_text, draw_image)
      if ((@parent.attr_current_item).equal?(self) || !@parent.get_drawing)
        return
      end
      # long
      hwnd = @parent.attr_handle
      if (!OS._is_window_visible(hwnd))
        return
      end
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      rect = get_bounds(index, column, draw_text, draw_image, true)
      OS._invalidate_rect(hwnd, rect, true)
    end
    
    typesig { [] }
    def release_handle
      super
      @parent = nil
    end
    
    typesig { [] }
    def release_widget
      super
      @strings = nil
      @images = nil
      @cell_font = nil
      @cell_background = @cell_foreground = nil
    end
    
    typesig { [Color] }
    # Sets the receiver's background color to the color specified
    # by the argument, or to the default system color for the item
    # if the argument is null.
    # 
    # @param color the new color (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def set_background(color)
      check_widget
      if (!(color).nil? && color.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pixel = -1
      if (!(color).nil?)
        @parent.set_custom_draw(true)
        pixel = color.attr_handle
      end
      if ((@background).equal?(pixel))
        return
      end
      @background = pixel
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        @cached = true
      end
      redraw
    end
    
    typesig { [::Java::Int, Color] }
    # Sets the background color at the given column index in the receiver
    # to the color specified by the argument, or to the default system color for the item
    # if the argument is null.
    # 
    # @param index the column index
    # @param color the new color (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_background(index, color)
      check_widget
      if (!(color).nil? && color.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      count = Math.max(1, @parent.get_column_count)
      if (0 > index || index > count - 1)
        return
      end
      pixel = -1
      if (!(color).nil?)
        @parent.set_custom_draw(true)
        pixel = color.attr_handle
      end
      if ((@cell_background).nil?)
        @cell_background = Array.typed(::Java::Int).new(count) { 0 }
        i = 0
        while i < count
          @cell_background[i] = -1
          i += 1
        end
      end
      if ((@cell_background[index]).equal?(pixel))
        return
      end
      @cell_background[index] = pixel
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        @cached = true
      end
      redraw(index, true, true)
    end
    
    typesig { [::Java::Boolean] }
    # Sets the checked state of the checkbox for this item.  This state change
    # only applies if the Table was created with the SWT.CHECK style.
    # 
    # @param checked the new checked state of the checkbox
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_checked(checked)
      check_widget
      if (((@parent.attr_style & SWT::CHECK)).equal?(0))
        return
      end
      if ((@checked).equal?(checked))
        return
      end
      set_checked(checked, false)
    end
    
    typesig { [::Java::Boolean, ::Java::Boolean] }
    def set_checked(checked, notify)
      @checked = checked
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        @cached = true
      end
      if (notify)
        event = Event.new
        event.attr_item = self
        event.attr_detail = SWT::CHECK
        @parent.post_event___org_eclipse_swt_widgets_table_item_1(SWT::Selection, event)
      end
      redraw
    end
    
    typesig { [Font] }
    # Sets the font that the receiver will use to paint textual information
    # for this item to the font specified by the argument, or to the default font
    # for that kind of control if the argument is null.
    # 
    # @param font the new font (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_font(font)
      check_widget
      if (!(font).nil? && font.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      old_font = @font
      if ((old_font).equal?(font))
        return
      end
      @font = font
      if (!(old_font).nil? && (old_font == font))
        return
      end
      if (!(font).nil?)
        @parent.set_custom_draw(true)
      end
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        @cached = true
      end
      # Bug in Windows.  Despite the fact that every item in the
      # table always has LPSTR_TEXTCALLBACK, Windows caches the
      # bounds for the selected items.  This means that
      # when you change the string to be something else, Windows
      # correctly asks you for the new string but when the item
      # is selected, the selection draws using the bounds of the
      # previous item.  The fix is to reset LPSTR_TEXTCALLBACK
      # even though it has not changed, causing Windows to flush
      # cached bounds.
      if (((@parent.attr_style & SWT::VIRTUAL)).equal?(0) && @cached)
        item_index = @parent.index_of(self)
        if (!(item_index).equal?(-1))
          # long
          hwnd = @parent.attr_handle
          lv_item = LVITEM.new
          lv_item.attr_mask = OS::LVIF_TEXT
          lv_item.attr_i_item = item_index
          lv_item.attr_psz_text = OS::LPSTR_TEXTCALLBACK
          OS._send_message(hwnd, OS::LVM_SETITEM, 0, lv_item)
          @cached = false
        end
      end
      @parent.set_scroll_width(self, false)
      redraw
    end
    
    typesig { [::Java::Int, Font] }
    # Sets the font that the receiver will use to paint textual information
    # for the specified cell in this item to the font specified by the
    # argument, or to the default font for that kind of control if the
    # argument is null.
    # 
    # @param index the column index
    # @param font the new font (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_font(index, font)
      check_widget
      if (!(font).nil? && font.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      count = Math.max(1, @parent.get_column_count)
      if (0 > index || index > count - 1)
        return
      end
      if ((@cell_font).nil?)
        if ((font).nil?)
          return
        end
        @cell_font = Array.typed(Font).new(count) { nil }
      end
      old_font = @cell_font[index]
      if ((old_font).equal?(font))
        return
      end
      @cell_font[index] = font
      if (!(old_font).nil? && (old_font == font))
        return
      end
      if (!(font).nil?)
        @parent.set_custom_draw(true)
      end
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        @cached = true
      end
      if ((index).equal?(0))
        # Bug in Windows.  Despite the fact that every item in the
        # table always has LPSTR_TEXTCALLBACK, Windows caches the
        # bounds for the selected items.  This means that
        # when you change the string to be something else, Windows
        # correctly asks you for the new string but when the item
        # is selected, the selection draws using the bounds of the
        # previous item.  The fix is to reset LPSTR_TEXTCALLBACK
        # even though it has not changed, causing Windows to flush
        # cached bounds.
        if (((@parent.attr_style & SWT::VIRTUAL)).equal?(0) && @cached)
          item_index = @parent.index_of(self)
          if (!(item_index).equal?(-1))
            # long
            hwnd = @parent.attr_handle
            lv_item = LVITEM.new
            lv_item.attr_mask = OS::LVIF_TEXT
            lv_item.attr_i_item = item_index
            lv_item.attr_psz_text = OS::LPSTR_TEXTCALLBACK
            OS._send_message(hwnd, OS::LVM_SETITEM, 0, lv_item)
            @cached = false
          end
        end
        @parent.set_scroll_width(self, false)
      end
      redraw(index, true, false)
    end
    
    typesig { [Color] }
    # Sets the receiver's foreground color to the color specified
    # by the argument, or to the default system color for the item
    # if the argument is null.
    # 
    # @param color the new color (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def set_foreground(color)
      check_widget
      if (!(color).nil? && color.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pixel = -1
      if (!(color).nil?)
        @parent.set_custom_draw(true)
        pixel = color.attr_handle
      end
      if ((@foreground).equal?(pixel))
        return
      end
      @foreground = pixel
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        @cached = true
      end
      redraw
    end
    
    typesig { [::Java::Int, Color] }
    # Sets the foreground color at the given column index in the receiver
    # to the color specified by the argument, or to the default system color for the item
    # if the argument is null.
    # 
    # @param index the column index
    # @param color the new color (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_foreground(index, color)
      check_widget
      if (!(color).nil? && color.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      count = Math.max(1, @parent.get_column_count)
      if (0 > index || index > count - 1)
        return
      end
      pixel = -1
      if (!(color).nil?)
        @parent.set_custom_draw(true)
        pixel = color.attr_handle
      end
      if ((@cell_foreground).nil?)
        @cell_foreground = Array.typed(::Java::Int).new(count) { 0 }
        i = 0
        while i < count
          @cell_foreground[i] = -1
          i += 1
        end
      end
      if ((@cell_foreground[index]).equal?(pixel))
        return
      end
      @cell_foreground[index] = pixel
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        @cached = true
      end
      redraw(index, true, false)
    end
    
    typesig { [::Java::Boolean] }
    # Sets the grayed state of the checkbox for this item.  This state change
    # only applies if the Table was created with the SWT.CHECK style.
    # 
    # @param grayed the new grayed state of the checkbox;
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_grayed(grayed)
      check_widget
      if (((@parent.attr_style & SWT::CHECK)).equal?(0))
        return
      end
      if ((@grayed).equal?(grayed))
        return
      end
      @grayed = grayed
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        @cached = true
      end
      redraw
    end
    
    typesig { [Array.typed(Image)] }
    # Sets the image for multiple columns in the table.
    # 
    # @param images the array of new images
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the array of images is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if one of the images has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_image(images)
      check_widget
      if ((images).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      i = 0
      while i < images.attr_length
        set_image(i, images[i])
        i += 1
      end
    end
    
    typesig { [::Java::Int, Image] }
    # Sets the receiver's image at a column.
    # 
    # @param index the column index
    # @param image the new image
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the image has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_image(index, image)
      check_widget
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      old_image = nil
      if ((index).equal?(0))
        if (!(image).nil? && (image.attr_type).equal?(SWT::ICON))
          if ((image == self.attr_image))
            return
          end
        end
        old_image = self.attr_image
        super(image)
      end
      count = Math.max(1, @parent.get_column_count)
      if (0 > index || index > count - 1)
        return
      end
      if ((@images).nil? && !(index).equal?(0))
        @images = Array.typed(Image).new(count) { nil }
        @images[0] = image
      end
      if (!(@images).nil?)
        if (!(image).nil? && (image.attr_type).equal?(SWT::ICON))
          if ((image == @images[index]))
            return
          end
        end
        old_image = @images[index]
        @images[index] = image
      end
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        @cached = true
      end
      # Ensure that the image list is created
      @parent.image_index(image, index)
      if ((index).equal?(0))
        @parent.set_scroll_width(self, false)
      end
      draw_text = ((image).nil? && !(old_image).nil?) || (!(image).nil? && (old_image).nil?)
      redraw(index, draw_text, true)
    end
    
    typesig { [Image] }
    def set_image(image)
      check_widget
      set_image(0, image)
    end
    
    typesig { [::Java::Int] }
    # Sets the indent of the first column's image, expressed in terms of the image's width.
    # 
    # @param indent the new indent
    # 
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @deprecated this functionality is not supported on most platforms
    def set_image_indent(indent)
      check_widget
      if (indent < 0)
        return
      end
      if ((@image_indent).equal?(indent))
        return
      end
      @image_indent = indent
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        @cached = true
      else
        index = @parent.index_of(self)
        if (!(index).equal?(-1))
          # long
          hwnd = @parent.attr_handle
          lv_item = LVITEM.new
          lv_item.attr_mask = OS::LVIF_INDENT
          lv_item.attr_i_item = index
          lv_item.attr_i_indent = indent
          OS._send_message(hwnd, OS::LVM_SETITEM, 0, lv_item)
        end
      end
      @parent.set_scroll_width(self, false)
      redraw
    end
    
    typesig { [Array.typed(String)] }
    # Sets the text for multiple columns in the table.
    # 
    # @param strings the array of new strings
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the text is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_text(strings)
      check_widget
      if ((strings).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      i = 0
      while i < strings.attr_length
        string = strings[i]
        if (!(string).nil?)
          set_text(i, string)
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int, String] }
    # Sets the receiver's text at a column
    # 
    # @param index the column index
    # @param string the new text
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the text is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_text(index, string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((index).equal?(0))
        if ((string == self.attr_text))
          return
        end
        super(string)
      end
      count = Math.max(1, @parent.get_column_count)
      if (0 > index || index > count - 1)
        return
      end
      if ((@strings).nil? && !(index).equal?(0))
        @strings = Array.typed(String).new(count) { nil }
        @strings[0] = self.attr_text
      end
      if (!(@strings).nil?)
        if ((string == @strings[index]))
          return
        end
        @strings[index] = string
      end
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        @cached = true
      end
      if ((index).equal?(0))
        # Bug in Windows.  Despite the fact that every item in the
        # table always has LPSTR_TEXTCALLBACK, Windows caches the
        # bounds for the selected items.  This means that
        # when you change the string to be something else, Windows
        # correctly asks you for the new string but when the item
        # is selected, the selection draws using the bounds of the
        # previous item.  The fix is to reset LPSTR_TEXTCALLBACK
        # even though it has not changed, causing Windows to flush
        # cached bounds.
        if (((@parent.attr_style & SWT::VIRTUAL)).equal?(0) && @cached)
          item_index = @parent.index_of(self)
          if (!(item_index).equal?(-1))
            # long
            hwnd = @parent.attr_handle
            lv_item = LVITEM.new
            lv_item.attr_mask = OS::LVIF_TEXT
            lv_item.attr_i_item = item_index
            lv_item.attr_psz_text = OS::LPSTR_TEXTCALLBACK
            OS._send_message(hwnd, OS::LVM_SETITEM, 0, lv_item)
            @cached = false
          end
        end
        @parent.set_scroll_width(self, false)
      end
      redraw(index, true, false)
    end
    
    typesig { [String] }
    def set_text(string)
      check_widget
      set_text(0, string)
    end
    
    private
    alias_method :initialize__table_item, :initialize
  end
  
end
