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
  module TreeItemImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class represent a selectable user interface object
  # that represents a hierarchy of tree items in a tree widget.
  # 
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
  # @see <a href="http://www.eclipse.org/swt/snippets/#tree">Tree, TreeItem, TreeColumn snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class TreeItem < TreeItemImports.const_get :Item
    include_class_members TreeItemImports
    
    # the handle to the OS resource
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    # 
    # long
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
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
    
    attr_accessor :cached
    alias_method :attr_cached, :cached
    undef_method :cached
    alias_method :attr_cached=, :cached=
    undef_method :cached=
    
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
    
    typesig { [Tree, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Tree</code> or a <code>TreeItem</code>)
    # and a style value describing its behavior and appearance.
    # The item is added to the end of the items maintained by its parent.
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
    # @param parent a tree control which will be the parent of the new instance (cannot be null)
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
      initialize__tree_item(parent, style, OS::TVGN_ROOT, OS::TVI_LAST, 0)
    end
    
    typesig { [Tree, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Tree</code> or a <code>TreeItem</code>),
    # a style value describing its behavior and appearance, and the index
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
    # @param parent a tree control which will be the parent of the new instance (cannot be null)
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
      initialize__tree_item(parent, style, OS::TVGN_ROOT, find_previous(parent, index), 0)
    end
    
    typesig { [TreeItem, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Tree</code> or a <code>TreeItem</code>)
    # and a style value describing its behavior and appearance.
    # The item is added to the end of the items maintained by its parent.
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
    # @param parentItem a tree control which will be the parent of the new instance (cannot be null)
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
    def initialize(parent_item, style)
      initialize__tree_item(check_null(parent_item).attr_parent, style, parent_item.attr_handle, OS::TVI_LAST, 0)
    end
    
    typesig { [TreeItem, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Tree</code> or a <code>TreeItem</code>),
    # a style value describing its behavior and appearance, and the index
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
    # @param parentItem a tree control which will be the parent of the new instance (cannot be null)
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
    def initialize(parent_item, style, index)
      initialize__tree_item(check_null(parent_item).attr_parent, style, parent_item.attr_handle, find_previous(parent_item, index), 0)
    end
    
    typesig { [Tree, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def initialize(parent, style, h_parent, h_insert_after, h_item)
      @handle = 0
      @parent = nil
      @strings = nil
      @images = nil
      @font = nil
      @cell_font = nil
      @cached = false
      @background = 0
      @foreground = 0
      @cell_background = nil
      @cell_foreground = nil
      super(parent, style)
      @background = -1
      @foreground = -1
      @parent = parent
      parent.create_item(self, h_parent, h_insert_after, h_item)
    end
    
    class_module.module_eval {
      typesig { [TreeItem] }
      def check_null(item)
        if ((item).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        return item
      end
      
      typesig { [Tree, ::Java::Int] }
      # long
      def find_previous(parent, index)
        if ((parent).nil?)
          return 0
        end
        if (index < 0)
          SWT.error(SWT::ERROR_INVALID_RANGE)
        end
        if ((index).equal?(0))
          return OS::TVI_FIRST
        end
        # long
        hwnd = parent.attr_handle
        # long
        h_first_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
        # long
        h_item = parent.find_item(h_first_item, index - 1)
        if ((h_item).equal?(0))
          SWT.error(SWT::ERROR_INVALID_RANGE)
        end
        return h_item
      end
      
      typesig { [TreeItem, ::Java::Int] }
      # long
      def find_previous(parent_item, index)
        if ((parent_item).nil?)
          return 0
        end
        if (index < 0)
          SWT.error(SWT::ERROR_INVALID_RANGE)
        end
        if ((index).equal?(0))
          return OS::TVI_FIRST
        end
        parent = parent_item.attr_parent
        # long
        hwnd = parent.attr_handle
        h_parent = parent_item.attr_handle
        # long
        h_first_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, h_parent)
        # long
        h_item = parent.find_item(h_first_item, index - 1)
        if ((h_item).equal?(0))
          SWT.error(SWT::ERROR_INVALID_RANGE)
        end
        return h_item
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
      if (!((@parent.attr_style & SWT::CHECK)).equal?(0))
        # long
        hwnd = @parent.attr_handle
        tv_item = TVITEM.new
        tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
        tv_item.attr_state_mask = OS::TVIS_STATEIMAGEMASK
        tv_item.attr_state = 1 << 12
        tv_item.attr_h_item = @handle
        OS._send_message(hwnd, OS::TVM_SETITEM, 0, tv_item)
      end
      @background = @foreground = -1
      @font = nil
      @cell_background = @cell_foreground = nil
      @cell_font = nil
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        @cached = false
      end
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    # Clears the item at the given zero-relative index in the receiver.
    # The text, icon and other attributes of the item are set to the default
    # value.  If the tree was created with the <code>SWT.VIRTUAL</code> style,
    # these attributes are requested again as needed.
    # 
    # @param index the index of the item to clear
    # @param all <code>true</code> if all child items of the indexed item should be
    # cleared recursively, and <code>false</code> otherwise
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SWT#VIRTUAL
    # @see SWT#SetData
    # 
    # @since 3.2
    def clear(index, all)
      check_widget
      # long
      hwnd = @parent.attr_handle
      # long
      h_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, @handle)
      if ((h_item).equal?(0))
        error(SWT::ERROR_INVALID_RANGE)
      end
      h_item = @parent.find_item(h_item, index)
      if ((h_item).equal?(0))
        error(SWT::ERROR_INVALID_RANGE)
      end
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM
      @parent.clear(h_item, tv_item)
      if (all)
        h_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, h_item)
        @parent.clear_all(h_item, tv_item, all)
      end
    end
    
    typesig { [::Java::Boolean] }
    # Clears all the items in the receiver. The text, icon and other
    # attributes of the items are set to their default values. If the
    # tree was created with the <code>SWT.VIRTUAL</code> style, these
    # attributes are requested again as needed.
    # 
    # @param all <code>true</code> if all child items should be cleared
    # recursively, and <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SWT#VIRTUAL
    # @see SWT#SetData
    # 
    # @since 3.2
    def clear_all(all)
      check_widget
      # long
      hwnd = @parent.attr_handle
      # long
      h_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, @handle)
      if ((h_item).equal?(0))
        return
      end
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM
      @parent.clear_all(h_item, tv_item, all)
    end
    
    typesig { [] }
    def destroy_widget
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM
      @parent.release_item(@handle, tv_item, false)
      @parent.destroy_item(self, @handle)
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
    # @since 3.1
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
    def get_bounds
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      rect = get_bounds(0, true, false, false)
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      return Rectangle.new(rect.attr_left, rect.attr_top, width, height)
    end
    
    typesig { [::Java::Int] }
    # Returns a rectangle describing the receiver's size and location
    # relative to its parent at a column in the tree.
    # 
    # @param index the index that specifies the column
    # @return the receiver's bounding column rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def get_bounds(index)
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      rect = get_bounds(index, true, true, true)
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      return Rectangle.new(rect.attr_left, rect.attr_top, width, height)
    end
    
    typesig { [::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def get_bounds(index, get_text, get_image, full_text)
      return get_bounds(index, get_text, get_image, full_text, false, true, 0)
    end
    
    typesig { [::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean, ::Java::Int] }
    # TODO - take into account grid (add boolean arg) to damage less during redraw
    # long
    def get_bounds(index, get_text, get_image, full_text, full_image, clip, h_dc)
      if (!get_text && !get_image)
        return RECT.new
      end
      # long
      hwnd = @parent.attr_handle
      if (((@parent.attr_style & SWT::VIRTUAL)).equal?(0) && !@cached && !@parent.attr_painted)
        tv_item = TVITEM.new
        tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_TEXT
        tv_item.attr_h_item = @handle
        tv_item.attr_psz_text = OS::LPSTR_TEXTCALLBACK
        @parent.attr_ignore_custom_draw = true
        OS._send_message(hwnd, OS::TVM_SETITEM, 0, tv_item)
        @parent.attr_ignore_custom_draw = false
      end
      first_column = (index).equal?(0)
      column_count = 0
      # long
      hwnd_header = @parent.attr_hwnd_header
      if (!(hwnd_header).equal?(0))
        column_count = @parent.attr_column_count
        first_column = (index).equal?(OS._send_message(hwnd_header, OS::HDM_ORDERTOINDEX, 0, 0))
      end
      rect = RECT.new
      if (first_column)
        full = (column_count).equal?(0) && get_text && get_image && full_text && full_image
        if (!OS._tree_view_get_item_rect(hwnd, @handle, rect, !full))
          return RECT.new
        end
        if (get_image && !full_image)
          if (!(OS._send_message(hwnd, OS::TVM_GETIMAGELIST, OS::TVSIL_NORMAL, 0)).equal?(0))
            size = @parent.get_image_size
            rect.attr_left -= size.attr_x + Tree::INSET
            if (!get_text)
              rect.attr_right = rect.attr_left + size.attr_x
            end
          else
            if (!get_text)
              rect.attr_right = rect.attr_left
            end
          end
        end
        if (full_text || full_image || clip)
          if (!(hwnd_header).equal?(0))
            header_rect = RECT.new
            if (!(column_count).equal?(0))
              if ((OS._send_message(hwnd_header, OS::HDM_GETITEMRECT, index, header_rect)).equal?(0))
                return RECT.new
              end
            else
              header_rect.attr_right = @parent.attr_scroll_width
              if ((header_rect.attr_right).equal?(0))
                header_rect = rect
              end
            end
            if (full_text && clip)
              rect.attr_right = header_rect.attr_right
            end
            if (full_image)
              rect.attr_left = header_rect.attr_left
            end
            if (clip && header_rect.attr_right < rect.attr_right)
              rect.attr_right = header_rect.attr_right
            end
          end
        end
      else
        if (!(0 <= index && index < column_count))
          return RECT.new
        end
        header_rect = RECT.new
        if ((OS._send_message(hwnd_header, OS::HDM_GETITEMRECT, index, header_rect)).equal?(0))
          return RECT.new
        end
        if (!OS._tree_view_get_item_rect(hwnd, @handle, rect, false))
          return RECT.new
        end
        rect.attr_left = header_rect.attr_left
        if (full_text && get_image && clip)
          rect.attr_right = header_rect.attr_right
        else
          rect.attr_right = header_rect.attr_left
          image = nil
          if ((index).equal?(0))
            image = self.attr_image
          else
            if (!(@images).nil?)
              image = @images[index]
            end
          end
          if (!(image).nil?)
            size = @parent.get_image_size
            rect.attr_right += size.attr_x
          end
          if (get_text)
            if (full_text && clip)
              rect.attr_left = rect.attr_right + Tree::INSET
              rect.attr_right = header_rect.attr_right
            else
              string = (index).equal?(0) ? self.attr_text : !(@strings).nil? ? @strings[index] : nil
              if (!(string).nil?)
                text_rect = RECT.new
                buffer = TCHAR.new(@parent.get_code_page, string, false)
                flags = OS::DT_NOPREFIX | OS::DT_SINGLELINE | OS::DT_CALCRECT
                # long
                h_new_dc = h_dc
                h_font = 0
                if ((h_dc).equal?(0))
                  h_new_dc = OS._get_dc(hwnd)
                  h_font = font_handle(index)
                  if ((h_font).equal?(-1))
                    h_font = OS._send_message(hwnd, OS::WM_GETFONT, 0, 0)
                  end
                  h_font = OS._select_object(h_new_dc, h_font)
                end
                OS._draw_text(h_new_dc, buffer, buffer.length, text_rect, flags)
                if ((h_dc).equal?(0))
                  OS._select_object(h_new_dc, h_font)
                  OS._release_dc(hwnd, h_new_dc)
                end
                if (get_image)
                  rect.attr_right += text_rect.attr_right - text_rect.attr_left + Tree::INSET * 3
                else
                  rect.attr_left = rect.attr_right + Tree::INSET
                  rect.attr_right = rect.attr_left + (text_rect.attr_right - text_rect.attr_left) + Tree::INSET
                end
              end
            end
          end
          if (clip && header_rect.attr_right < rect.attr_right)
            rect.attr_right = header_rect.attr_right
          end
        end
      end
      grid_width = @parent.attr_lines_visible && !(column_count).equal?(0) ? Tree::GRID_WIDTH : 0
      if (get_text || !get_image)
        rect.attr_right = Math.max(rect.attr_left, rect.attr_right - grid_width)
      end
      rect.attr_bottom = Math.max(rect.attr_top, rect.attr_bottom - grid_width)
      return rect
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is checked,
    # and false otherwise.  When the parent does not have
    # the <code>CHECK style, return false.
    # <p>
    # 
    # @return the checked state
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
      # long
      hwnd = @parent.attr_handle
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
      tv_item.attr_state_mask = OS::TVIS_STATEIMAGEMASK
      tv_item.attr_h_item = @handle
      # long
      result = OS._send_message(hwnd, OS::TVM_GETITEM, 0, tv_item)
      return (!(result).equal?(0)) && ((((tv_item.attr_state >> 12) & 1)).equal?(0))
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is expanded,
    # and false otherwise.
    # <p>
    # 
    # @return the expanded state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_expanded
      check_widget
      # long
      hwnd = @parent.attr_handle
      state = 0
      if (OS::IsWinCE)
        tv_item = TVITEM.new
        tv_item.attr_h_item = @handle
        tv_item.attr_mask = OS::TVIF_STATE
        OS._send_message(hwnd, OS::TVM_GETITEM, 0, tv_item)
        state = tv_item.attr_state
      else
        # Bug in Windows.  Despite the fact that TVM_GETITEMSTATE claims
        # to return only the bits specified by the stateMask, when called
        # with TVIS_EXPANDED, the entire state is returned.  The fix is
        # to explicitly check for the TVIS_EXPANDED bit.
        # 
        # 64
        state = RJava.cast_to_int(OS._send_message(hwnd, OS::TVM_GETITEMSTATE, @handle, OS::TVIS_EXPANDED))
      end
      return !((state & OS::TVIS_EXPANDED)).equal?(0)
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
    # @since 3.1
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
    # @since 3.1
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
    # the <code>CHECK style, return false.
    # <p>
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
      # long
      hwnd = @parent.attr_handle
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
      tv_item.attr_state_mask = OS::TVIS_STATEIMAGEMASK
      tv_item.attr_h_item = @handle
      # long
      result = OS._send_message(hwnd, OS::TVM_GETITEM, 0, tv_item)
      return (!(result).equal?(0)) && ((tv_item.attr_state >> 12) > 2)
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
    # 
    # @since 3.1
    def get_item(index)
      check_widget
      if (index < 0)
        error(SWT::ERROR_INVALID_RANGE)
      end
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      # long
      hwnd = @parent.attr_handle
      # long
      h_first_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, @handle)
      if ((h_first_item).equal?(0))
        error(SWT::ERROR_INVALID_RANGE)
      end
      # long
      h_item = @parent.find_item(h_first_item, index)
      if ((h_item).equal?(0))
        error(SWT::ERROR_INVALID_RANGE)
      end
      return @parent.__get_item(h_item)
    end
    
    typesig { [] }
    # Returns the number of items contained in the receiver
    # that are direct item children of the receiver.
    # 
    # @return the number of items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_count
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      # long
      hwnd = @parent.attr_handle
      # long
      h_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, @handle)
      if ((h_item).equal?(0))
        return 0
      end
      return @parent.get_item_count(h_item)
    end
    
    typesig { [] }
    # Returns a (possibly empty) array of <code>TreeItem</code>s which
    # are the direct item children of the receiver.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the receiver's items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_items
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      # long
      hwnd = @parent.attr_handle
      # long
      h_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, @handle)
      if ((h_item).equal?(0))
        return Array.typed(TreeItem).new(0) { nil }
      end
      return @parent.get_items(h_item)
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
    # 
    # @since 3.1
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
    # tree.
    # 
    # @param index the index that specifies the column
    # @return the receiver's bounding image rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def get_image_bounds(index)
      check_widget
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      rect = get_bounds(index, false, true, false)
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      return Rectangle.new(rect.attr_left, rect.attr_top, width, height)
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>Tree</code>.
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
    # Returns the receiver's parent item, which must be a
    # <code>TreeItem</code> or null when the receiver is a
    # root.
    # 
    # @return the receiver's parent item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_parent_item
      check_widget
      # long
      hwnd = @parent.attr_handle
      # long
      h_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_PARENT, @handle)
      return !(h_item).equal?(0) ? @parent.__get_item(h_item) : nil
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
    # 
    # @since 3.1
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
    # tree.
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
      rect = get_bounds(index, true, false, true)
      if ((index).equal?(0))
        rect.attr_left += Tree::INSET - 1
      end
      rect.attr_left = Math.min(rect.attr_left, rect.attr_right)
      rect.attr_right = rect.attr_right - Tree::INSET
      width = Math.max(0, rect.attr_right - rect.attr_left)
      height = Math.max(0, rect.attr_bottom - rect.attr_top)
      return Rectangle.new(rect.attr_left, rect.attr_top, width, height)
    end
    
    typesig { [TreeItem] }
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
    # 
    # @since 3.1
    def index_of(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # long
      hwnd = @parent.attr_handle
      # long
      h_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, @handle)
      return (h_item).equal?(0) ? -1 : @parent.find_index(h_item, item.attr_handle)
    end
    
    typesig { [] }
    def redraw
      if ((@parent.attr_current_item).equal?(self) || !(@parent.attr_draw_count).equal?(0))
        return
      end
      # long
      hwnd = @parent.attr_handle
      if (!OS._is_window_visible(hwnd))
        return
      end
      # When there are no columns and the tree is not
      # full selection, redraw only the text.  This is
      # an optimization to reduce flashing.
      full = !((@parent.attr_style & (SWT::FULL_SELECTION | SWT::VIRTUAL))).equal?(0)
      if (!full)
        full = !(@parent.attr_column_count).equal?(0)
        if (!full)
          if (@parent.hooks(SWT::EraseItem) || @parent.hooks(SWT::PaintItem))
            full = true
          end
        end
      end
      rect = RECT.new
      if (OS._tree_view_get_item_rect(hwnd, @handle, rect, !full))
        OS._invalidate_rect(hwnd, rect, true)
      end
    end
    
    typesig { [::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def redraw(column, draw_text, draw_image)
      if ((@parent.attr_current_item).equal?(self) || !(@parent.attr_draw_count).equal?(0))
        return
      end
      # long
      hwnd = @parent.attr_handle
      if (!OS._is_window_visible(hwnd))
        return
      end
      full_image = (column).equal?(0) && draw_text && draw_image
      rect = get_bounds(column, draw_text, draw_image, true, full_image, true, 0)
      OS._invalidate_rect(hwnd, rect, true)
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (destroy)
        tv_item = TVITEM.new
        tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM
        @parent.release_items(@handle, tv_item)
      end
      super(destroy)
    end
    
    typesig { [] }
    def release_handle
      super
      @handle = 0
      @parent = nil
    end
    
    typesig { [] }
    def release_widget
      super
      @strings = nil
      @images = nil
      @cell_background = @cell_foreground = nil
      @cell_font = nil
    end
    
    typesig { [] }
    # Removes all of the items from the receiver.
    # <p>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def remove_all
      check_widget
      # long
      hwnd = @parent.attr_handle
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM
      tv_item.attr_h_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, @handle)
      while (!(tv_item.attr_h_item).equal?(0))
        OS._send_message(hwnd, OS::TVM_GETITEM, 0, tv_item)
        # 64
        item = !(tv_item.attr_l_param).equal?(-1) ? @parent.attr_items[RJava.cast_to_int(tv_item.attr_l_param)] : nil
        if (!(item).nil? && !item.is_disposed)
          item.dispose
        else
          @parent.release_item(tv_item.attr_h_item, tv_item, false)
          @parent.destroy_item(nil, tv_item.attr_h_item)
        end
        tv_item.attr_h_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, @handle)
      end
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
        @parent.attr_custom_draw = true
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
    # @since 3.1
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
        @parent.attr_custom_draw = true
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
    # Sets the checked state of the receiver.
    # <p>
    # 
    # @param checked the new checked state
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
      # long
      hwnd = @parent.attr_handle
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
      tv_item.attr_state_mask = OS::TVIS_STATEIMAGEMASK
      tv_item.attr_h_item = @handle
      OS._send_message(hwnd, OS::TVM_GETITEM, 0, tv_item)
      state = tv_item.attr_state >> 12
      if (checked)
        if (!((state & 0x1)).equal?(0))
          state += 1
        end
      else
        if (((state & 0x1)).equal?(0))
          (state -= 1)
        end
      end
      state <<= 12
      if ((tv_item.attr_state).equal?(state))
        return
      end
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        @cached = true
      end
      tv_item.attr_state = state
      OS._send_message(hwnd, OS::TVM_SETITEM, 0, tv_item)
      # Bug in Windows.  When TVM_SETITEM is used to set
      # the state image of an item inside TVN_GETDISPINFO,
      # the new state is not redrawn.  The fix is to force
      # a redraw.
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        if ((@parent.attr_current_item).equal?(self) && OS._is_window_visible(hwnd))
          rect = RECT.new
          if (OS._tree_view_get_item_rect(hwnd, @handle, rect, false))
            OS._invalidate_rect(hwnd, rect, true)
          end
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    # Sets the expanded state of the receiver.
    # <p>
    # 
    # @param expanded the new expanded state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_expanded(expanded)
      check_widget
      # Do nothing when the item is a leaf or already expanded
      # long
      hwnd = @parent.attr_handle
      if ((OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, @handle)).equal?(0))
        return
      end
      state = 0
      if (OS::IsWinCE)
        tv_item = TVITEM.new
        tv_item.attr_h_item = @handle
        tv_item.attr_mask = OS::TVIF_STATE
        OS._send_message(hwnd, OS::TVM_GETITEM, 0, tv_item)
        state = tv_item.attr_state
      else
        # Bug in Windows.  Despite the fact that TVM_GETITEMSTATE claims
        # to return only the bits specified by the stateMask, when called
        # with TVIS_EXPANDED, the entire state is returned.  The fix is
        # to explicitly check for the TVIS_EXPANDED bit.
        # 
        # 64
        state = RJava.cast_to_int(OS._send_message(hwnd, OS::TVM_GETITEMSTATE, @handle, OS::TVIS_EXPANDED))
      end
      if (((!((state & OS::TVIS_EXPANDED)).equal?(0))).equal?(expanded))
        return
      end
      # Feature in Windows.  When TVM_EXPAND is used to expand
      # an item, the widget scrolls to show the item and the
      # newly expanded items.  While not strictly incorrect,
      # this means that application code that expands tree items
      # in a background thread can scroll the widget while the
      # user is interacting with it.  The fix is to remember
      # the top item and the bounds of every tree item, turn
      # redraw off, expand the item, scroll back to the top
      # item.  If none of the rectangles have moved, then
      # it is safe to turn redraw back on without redrawing
      # the control.
      old_rect = nil
      rects = nil
      old_info = nil
      count = 0
      # long
      h_bottom_item = 0
      redraw_ = false
      no_scroll = true
      # long
      h_top_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_FIRSTVISIBLE, 0)
      if (no_scroll && !(h_top_item).equal?(0))
        old_info = SCROLLINFO.new
        old_info.attr_cb_size = SCROLLINFO.attr_sizeof
        old_info.attr_f_mask = OS::SIF_ALL
        if (!OS._get_scroll_info(hwnd, OS::SB_HORZ, old_info))
          old_info = nil
        end
        if ((@parent.attr_draw_count).equal?(0) && OS._is_window_visible(hwnd))
          no_animate = true
          # 64
          count = RJava.cast_to_int(OS._send_message(hwnd, OS::TVM_GETVISIBLECOUNT, 0, 0))
          rects = Array.typed(RECT).new(count + 1) { nil }
          # long
          h_item = h_top_item
          index = 0
          while (!(h_item).equal?(0) && (no_animate || !(h_item).equal?(@handle)) && index < count)
            rect = RECT.new
            if (OS._tree_view_get_item_rect(hwnd, h_item, rect, true))
              rects[((index += 1) - 1)] = rect
            end
            h_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_NEXTVISIBLE, h_item)
          end
          if (no_animate || !(h_item).equal?(@handle))
            redraw_ = true
            count = index
            h_bottom_item = h_item
            old_rect = RECT.new
            OS._get_client_rect(hwnd, old_rect)
            # long
            top_handle_ = @parent.top_handle
            OS._update_window(top_handle_)
            OS._def_window_proc(top_handle_, OS::WM_SETREDRAW, 0, 0)
            if (!(hwnd).equal?(top_handle_))
              OS._update_window(hwnd)
              OS._def_window_proc(hwnd, OS::WM_SETREDRAW, 0, 0)
            end
            # This code is intentionally commented.
            # 
            # OS.SendMessage (hwnd, OS.WM_SETREDRAW, 0, 0);
          end
        end
      end
      # Feature in Windows.  When the user collapses the root
      # of a subtree that has the focus item, Windows moves
      # the selection to the root of the subtree and issues
      # a TVN_SELCHANGED to inform the programmer that the
      # selection has changed.  When the programmer collapses
      # the same subtree using TVM_EXPAND, Windows does not
      # send the selection changed notification.  This is not
      # strictly wrong but is inconsistent.  The fix is to
      # check whether the selection has changed and issue
      # the event.
      # 
      # long
      h_old_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
      # Expand or collapse the item
      @parent.attr_ignore_expand = true
      OS._send_message(hwnd, OS::TVM_EXPAND, expanded ? OS::TVE_EXPAND : OS::TVE_COLLAPSE, @handle)
      @parent.attr_ignore_expand = false
      # Scroll back to the top item
      if (no_scroll && !(h_top_item).equal?(0))
        collapsed = false
        if (!expanded)
          rect = RECT.new
          while (!(h_top_item).equal?(0) && !OS._tree_view_get_item_rect(hwnd, h_top_item, rect, false))
            h_top_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_PARENT, h_top_item)
            collapsed = true
          end
        end
        scrolled = true
        if (!(h_top_item).equal?(0))
          OS._send_message(hwnd, OS::TVM_SELECTITEM, OS::TVGN_FIRSTVISIBLE, h_top_item)
          scrolled = !(h_top_item).equal?(OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_FIRSTVISIBLE, 0))
        end
        if (!collapsed && !scrolled && !(old_info).nil?)
          new_info = SCROLLINFO.new
          new_info.attr_cb_size = SCROLLINFO.attr_sizeof
          new_info.attr_f_mask = OS::SIF_ALL
          if (OS._get_scroll_info(hwnd, OS::SB_HORZ, new_info))
            if (!(old_info.attr_n_pos).equal?(new_info.attr_n_pos))
              # long
              l_param = OS._makelparam(OS::SB_THUMBPOSITION, old_info.attr_n_pos)
              OS._send_message(hwnd, OS::WM_HSCROLL, l_param, 0)
            end
          end
        end
        if (redraw_)
          fix_scroll = false
          if (!collapsed && !scrolled)
            new_rect = RECT.new
            OS._get_client_rect(hwnd, new_rect)
            if (OS._equal_rect(old_rect, new_rect))
              # long
              h_item = h_top_item
              index = 0
              while (!(h_item).equal?(0) && index < count)
                rect = RECT.new
                if (OS._tree_view_get_item_rect(hwnd, h_item, rect, true))
                  if (!OS._equal_rect(rect, rects[index]))
                    break
                  end
                end
                h_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_NEXTVISIBLE, h_item)
                index += 1
              end
              fix_scroll = (index).equal?(count) && (h_item).equal?(h_bottom_item)
            end
          end
          # long
          top_handle_ = @parent.top_handle
          OS._def_window_proc(top_handle_, OS::WM_SETREDRAW, 1, 0)
          if (!(hwnd).equal?(top_handle_))
            OS._def_window_proc(hwnd, OS::WM_SETREDRAW, 1, 0)
          end
          # This code is intentionally commented.
          # 
          # OS.SendMessage (hwnd, OS.WM_SETREDRAW, 1, 0);
          if (fix_scroll)
            @parent.update_scroll_bar
            info = SCROLLINFO.new
            info.attr_cb_size = SCROLLINFO.attr_sizeof
            info.attr_f_mask = OS::SIF_ALL
            if (OS._get_scroll_info(hwnd, OS::SB_VERT, info))
              OS._set_scroll_info(hwnd, OS::SB_VERT, info, true)
            end
            if ((@handle).equal?(h_bottom_item))
              rect = RECT.new
              if (OS._tree_view_get_item_rect(hwnd, h_bottom_item, rect, false))
                OS._invalidate_rect(hwnd, rect, true)
              end
            end
          else
            if (OS::IsWinCE)
              OS._invalidate_rect(top_handle_, nil, true)
              if (!(hwnd).equal?(top_handle_))
                OS._invalidate_rect(hwnd, nil, true)
              end
            else
              flags = OS::RDW_ERASE | OS::RDW_FRAME | OS::RDW_INVALIDATE | OS::RDW_ALLCHILDREN
              OS._redraw_window(top_handle_, nil, 0, flags)
            end
          end
        end
      end
      # Check for a selection event
      # long
      h_new_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_CARET, 0)
      if (!(h_new_item).equal?(h_old_item))
        event = Event.new
        if (!(h_new_item).equal?(0))
          event.attr_item = @parent.__get_item(h_new_item)
          @parent.attr_h_anchor = h_new_item
        end
        @parent.send_event(SWT::Selection, event)
      end
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
        @parent.attr_custom_draw = true
      end
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        @cached = true
      end
      # Bug in Windows.  When the font is changed for an item,
      # the bounds for the item are not updated, causing the text
      # to be clipped.  The fix is to reset the text, causing
      # Windows to compute the new bounds using the new font.
      if (((@parent.attr_style & SWT::VIRTUAL)).equal?(0) && !@cached && !@parent.attr_painted)
        return
      end
      # long
      hwnd = @parent.attr_handle
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_TEXT
      tv_item.attr_h_item = @handle
      tv_item.attr_psz_text = OS::LPSTR_TEXTCALLBACK
      OS._send_message(hwnd, OS::TVM_SETITEM, 0, tv_item)
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
    # @since 3.1
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
        @parent.attr_custom_draw = true
      end
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        @cached = true
      end
      # Bug in Windows.  When the font is changed for an item,
      # the bounds for the item are not updated, causing the text
      # to be clipped.  The fix is to reset the text, causing
      # Windows to compute the new bounds using the new font.
      if ((index).equal?(0))
        if (((@parent.attr_style & SWT::VIRTUAL)).equal?(0) && !@cached && !@parent.attr_painted)
          return
        end
        # long
        hwnd = @parent.attr_handle
        tv_item = TVITEM.new
        tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_TEXT
        tv_item.attr_h_item = @handle
        tv_item.attr_psz_text = OS::LPSTR_TEXTCALLBACK
        OS._send_message(hwnd, OS::TVM_SETITEM, 0, tv_item)
      else
        redraw(index, true, false)
      end
    end
    
    typesig { [Color] }
    # Sets the receiver's foreground color to the color specified
    # by the argument, or to the default system color for the item
    # if the argument is null.
    # 
    # @param color the new color (or null)
    # 
    # @since 2.0
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
        @parent.attr_custom_draw = true
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
    # @since 3.1
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
        @parent.attr_custom_draw = true
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
    # only applies if the Tree was created with the SWT.CHECK style.
    # 
    # @param grayed the new grayed state of the checkbox
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
      # long
      hwnd = @parent.attr_handle
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
      tv_item.attr_state_mask = OS::TVIS_STATEIMAGEMASK
      tv_item.attr_h_item = @handle
      OS._send_message(hwnd, OS::TVM_GETITEM, 0, tv_item)
      state = tv_item.attr_state >> 12
      if (grayed)
        if (state <= 2)
          state += 2
        end
      else
        if (state > 2)
          state -= 2
        end
      end
      state <<= 12
      if ((tv_item.attr_state).equal?(state))
        return
      end
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        @cached = true
      end
      tv_item.attr_state = state
      OS._send_message(hwnd, OS::TVM_SETITEM, 0, tv_item)
      # Bug in Windows.  When TVM_SETITEM is used to set
      # the state image of an item inside TVN_GETDISPINFO,
      # the new state is not redrawn.  The fix is to force
      # a redraw.
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        if ((@parent.attr_current_item).equal?(self) && OS._is_window_visible(hwnd))
          rect = RECT.new
          if (OS._tree_view_get_item_rect(hwnd, @handle, rect, false))
            OS._invalidate_rect(hwnd, rect, true)
          end
        end
      end
    end
    
    typesig { [Array.typed(Image)] }
    # Sets the image for multiple columns in the tree.
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
    # 
    # @since 3.1
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
    # 
    # @since 3.1
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
      # TODO - items that are not in column zero don't need to be in the image list
      @parent.image_index(image, index)
      if ((index).equal?(0))
        if (((@parent.attr_style & SWT::VIRTUAL)).equal?(0) && !@cached && !@parent.attr_painted)
          return
        end
        # long
        hwnd = @parent.attr_handle
        tv_item = TVITEM.new
        tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_IMAGE | OS::TVIF_SELECTEDIMAGE
        tv_item.attr_h_item = @handle
        tv_item.attr_i_image = tv_item.attr_i_selected_image = OS::I_IMAGECALLBACK
        # Bug in Windows.  When I_IMAGECALLBACK is used with TVM_SETITEM
        # to indicate that an image has changed, Windows does not draw
        # the new image.  The fix is to use LPSTR_TEXTCALLBACK to force
        # Windows to ask for the text, causing Windows to ask for both.
        tv_item.attr_mask |= OS::TVIF_TEXT
        tv_item.attr_psz_text = OS::LPSTR_TEXTCALLBACK
        OS._send_message(hwnd, OS::TVM_SETITEM, 0, tv_item)
      else
        draw_text = ((image).nil? && !(old_image).nil?) || (!(image).nil? && (old_image).nil?)
        redraw(index, draw_text, true)
      end
    end
    
    typesig { [Image] }
    def set_image(image)
      check_widget
      set_image(0, image)
    end
    
    typesig { [::Java::Int] }
    # Sets the number of child items contained in the receiver.
    # 
    # @param count the number of items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def set_item_count(count)
      check_widget
      count = Math.max(0, count)
      # long
      hwnd = @parent.attr_handle
      # long
      h_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, @handle)
      @parent.set_item_count(count, @handle, h_item)
    end
    
    typesig { [Array.typed(String)] }
    # Sets the text for multiple columns in the tree.
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
    # 
    # @since 3.1
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
    # 
    # @since 3.1
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
        if (((@parent.attr_style & SWT::VIRTUAL)).equal?(0) && !@cached && !@parent.attr_painted)
          return
        end
        # long
        hwnd = @parent.attr_handle
        tv_item = TVITEM.new
        tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_TEXT
        tv_item.attr_h_item = @handle
        tv_item.attr_psz_text = OS::LPSTR_TEXTCALLBACK
        OS._send_message(hwnd, OS::TVM_SETITEM, 0, tv_item)
      else
        redraw(index, true, false)
      end
    end
    
    typesig { [String] }
    def set_text(string)
      check_widget
      set_text(0, string)
    end
    
    typesig { [] }
    # public
    def sort
      check_widget
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        return
      end
      @parent.sort(@handle, false)
    end
    
    private
    alias_method :initialize__tree_item, :initialize
  end
  
end
