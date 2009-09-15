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
  module ToolBarImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class support the layout of selectable
  # tool bar items.
  # <p>
  # The item children that may be added to instances of this class
  # must be of type <code>ToolItem</code>.
  # </p><p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not make sense to add <code>Control</code> children to it,
  # or set a layout on it.
  # </p><p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>FLAT, WRAP, RIGHT, HORIZONTAL, VERTICAL, SHADOW_OUT</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles HORIZONTAL and VERTICAL may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#toolbar">ToolBar, ToolItem snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class ToolBar < ToolBarImports.const_get :Composite
    include_class_members ToolBarImports
    
    attr_accessor :last_focus_id
    alias_method :attr_last_focus_id, :last_focus_id
    undef_method :last_focus_id
    alias_method :attr_last_focus_id=, :last_focus_id=
    undef_method :last_focus_id=
    
    attr_accessor :last_arrow_id
    alias_method :attr_last_arrow_id, :last_arrow_id
    undef_method :last_arrow_id
    alias_method :attr_last_arrow_id=, :last_arrow_id=
    undef_method :last_arrow_id=
    
    attr_accessor :last_hot_id
    alias_method :attr_last_hot_id, :last_hot_id
    undef_method :last_hot_id
    alias_method :attr_last_hot_id=, :last_hot_id=
    undef_method :last_hot_id=
    
    attr_accessor :items
    alias_method :attr_items, :items
    undef_method :items
    alias_method :attr_items=, :items=
    undef_method :items=
    
    attr_accessor :tab_item_list
    alias_method :attr_tab_item_list, :tab_item_list
    undef_method :tab_item_list
    alias_method :attr_tab_item_list=, :tab_item_list=
    undef_method :tab_item_list=
    
    attr_accessor :ignore_resize
    alias_method :attr_ignore_resize, :ignore_resize
    undef_method :ignore_resize
    alias_method :attr_ignore_resize=, :ignore_resize=
    undef_method :ignore_resize=
    
    attr_accessor :ignore_mouse
    alias_method :attr_ignore_mouse, :ignore_mouse
    undef_method :ignore_mouse
    alias_method :attr_ignore_mouse=, :ignore_mouse=
    undef_method :ignore_mouse=
    
    attr_accessor :image_list
    alias_method :attr_image_list, :image_list
    undef_method :image_list
    alias_method :attr_image_list=, :image_list=
    undef_method :image_list=
    
    attr_accessor :disabled_image_list
    alias_method :attr_disabled_image_list, :disabled_image_list
    undef_method :disabled_image_list
    alias_method :attr_disabled_image_list=, :disabled_image_list=
    undef_method :disabled_image_list=
    
    attr_accessor :hot_image_list
    alias_method :attr_hot_image_list, :hot_image_list
    undef_method :hot_image_list
    alias_method :attr_hot_image_list=, :hot_image_list=
    undef_method :hot_image_list=
    
    class_module.module_eval {
      const_set_lazy(:ToolBarClass) { TCHAR.new(0, OS::TOOLBARCLASSNAME, true) }
      const_attr_reader  :ToolBarClass
      
      when_class_loaded do
        lp_wnd_class = WNDCLASS.new
        OS._get_class_info(0, ToolBarClass, lp_wnd_class)
        const_set :ToolBarProc, lp_wnd_class.attr_lpfn_wnd_proc
      end
      
      # From the Windows SDK for TB_SETBUTTONSIZE:
      # 
      # "If an application does not explicitly
      # set the button size, the size defaults
      # to 24 by 22 pixels".
      const_set_lazy(:DEFAULT_WIDTH) { 24 }
      const_attr_reader  :DEFAULT_WIDTH
      
      const_set_lazy(:DEFAULT_HEIGHT) { 22 }
      const_attr_reader  :DEFAULT_HEIGHT
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
    # @see SWT#FLAT
    # @see SWT#WRAP
    # @see SWT#RIGHT
    # @see SWT#HORIZONTAL
    # @see SWT#SHADOW_OUT
    # @see SWT#VERTICAL
    # @see Widget#checkSubclass()
    # @see Widget#getStyle()
    def initialize(parent, style)
      @last_focus_id = 0
      @last_arrow_id = 0
      @last_hot_id = 0
      @items = nil
      @tab_item_list = nil
      @ignore_resize = false
      @ignore_mouse = false
      @image_list = nil
      @disabled_image_list = nil
      @hot_image_list = nil
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
        # Feature in Windows.  When a tool bar has the style
        # TBSTYLE_LIST and has a drop down item, Window leaves
        # too much padding around the button.  This affects
        # every button in the tool bar and makes the preferred
        # height too big.  The fix is to set the TBSTYLE_LIST
        # when the tool bar contains both text and images.
        # 
        # NOTE: Tool bars with CCS_VERT must have TBSTYLE_LIST
        # set before any item is added or the tool bar does
        # not lay out properly.  The work around does not run
        # in this case.
        if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
          if (!((style & SWT::RIGHT)).equal?(0))
            bits |= OS::TBSTYLE_LIST
          end
        end
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
      # Bug in Windows.  For some reason, during the processing
      # of WM_SYSCHAR, the tool bar window proc does not call the
      # default window proc causing mnemonics for the menu bar
      # to be ignored.  The fix is to always call the default
      # window proc for WM_SYSCHAR.
      if ((msg).equal?(OS::WM_SYSCHAR))
        return OS._def_window_proc(hwnd, msg, w_param, l_param)
      end
      return OS._call_window_proc(ToolBarProc, hwnd, msg, w_param, l_param)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        # On Windows, only flat tool bars can be traversed.
        if (((style & SWT::FLAT)).equal?(0))
          style |= SWT::NO_FOCUS
        end
        # A vertical tool bar cannot wrap because TB_SETROWS
        # fails when the toolbar has TBSTYLE_WRAPABLE.
        if (!((style & SWT::VERTICAL)).equal?(0))
          style &= ~SWT::WRAP
        end
        # Even though it is legal to create this widget
        # with scroll bars, they serve no useful purpose
        # because they do not automatically scroll the
        # widget's client area.  The fix is to clear
        # the SWT style.
        return style & ~(SWT::H_SCROLL | SWT::V_SCROLL)
      end
    }
    
    typesig { [] }
    def check_buffered
      super
      if (OS::COMCTL32_MAJOR >= 6)
        self.attr_style |= SWT::DOUBLE_BUFFERED
      end
    end
    
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
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        rect = RECT.new
        lp_button = TBBUTTON.new
        # 64
        count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_BUTTONCOUNT, 0, 0))
        i = 0
        while i < count
          OS._send_message(self.attr_handle, OS::TB_GETITEMRECT, i, rect)
          height = Math.max(height, rect.attr_bottom)
          OS._send_message(self.attr_handle, OS::TB_GETBUTTON, i, lp_button)
          if (!((lp_button.attr_fs_style & OS::BTNS_SEP)).equal?(0))
            info = TBBUTTONINFO.new
            info.attr_cb_size = TBBUTTONINFO.attr_sizeof
            info.attr_dw_mask = OS::TBIF_SIZE
            OS._send_message(self.attr_handle, OS::TB_GETBUTTONINFO, lp_button.attr_id_command, info)
            width = Math.max(width, info.attr_cx)
          else
            width = Math.max(width, rect.attr_right)
          end
          i += 1
        end
      else
        old_rect = RECT.new
        OS._get_window_rect(self.attr_handle, old_rect)
        old_width = old_rect.attr_right - old_rect.attr_left
        old_height = old_rect.attr_bottom - old_rect.attr_top
        border = get_border_width
        new_width = (w_hint).equal?(SWT::DEFAULT) ? 0x3fff : w_hint + border * 2
        new_height = (h_hint).equal?(SWT::DEFAULT) ? 0x3fff : h_hint + border * 2
        redraw = get_drawing && OS._is_window_visible(self.attr_handle)
        @ignore_resize = true
        if (redraw)
          OS._update_window(self.attr_handle)
        end
        flags = OS::SWP_NOACTIVATE | OS::SWP_NOMOVE | OS::SWP_NOREDRAW | OS::SWP_NOZORDER
        _set_window_pos(self.attr_handle, 0, 0, 0, new_width, new_height, flags)
        # 64
        count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_BUTTONCOUNT, 0, 0))
        if (!(count).equal?(0))
          rect = RECT.new
          OS._send_message(self.attr_handle, OS::TB_GETITEMRECT, count - 1, rect)
          width = Math.max(width, rect.attr_right)
          height = Math.max(height, rect.attr_bottom)
        end
        _set_window_pos(self.attr_handle, 0, 0, 0, old_width, old_height, flags)
        if (redraw)
          OS._validate_rect(self.attr_handle, nil)
        end
        @ignore_resize = false
      end
      # From the Windows SDK for TB_SETBUTTONSIZE:
      # 
      # "If an application does not explicitly
      # set the button size, the size defaults
      # to 24 by 22 pixels".
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
      width = trim.attr_width
      height = trim.attr_height
      return Point.new(width, height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      trim = super(x, y, width, height)
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      if (((bits & OS::CCS_NODIVIDER)).equal?(0))
        trim.attr_height += 2
      end
      return trim
    end
    
    typesig { [] }
    def compute_tab_group
      items = __get_items
      if ((@tab_item_list).nil?)
        i = 0
        while (i < items.attr_length && (items[i].attr_control).nil?)
          i += 1
        end
        if ((i).equal?(items.attr_length))
          return super
        end
      end
      # 64
      index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_GETHOTITEM, 0, 0))
      if ((index).equal?(-1))
        index = @last_hot_id
      end
      while (index >= 0)
        item = items[index]
        if (item.is_tab_group)
          return item
        end
        index -= 1
      end
      return super
    end
    
    typesig { [] }
    def compute_tab_list
      items = __get_items
      if ((@tab_item_list).nil?)
        i = 0
        while (i < items.attr_length && (items[i].attr_control).nil?)
          i += 1
        end
        if ((i).equal?(items.attr_length))
          return super
        end
      end
      result = Array.typed(Widget).new([])
      if (!is_tab_group || !is_enabled || !is_visible)
        return result
      end
      list = !(self.attr_tab_list).nil? ? __get_tab_item_list : items
      i = 0
      while i < list.attr_length
        child = list[i]
        child_list = child.compute_tab_list
        if (!(child_list.attr_length).equal?(0))
          new_result = Array.typed(Widget).new(result.attr_length + child_list.attr_length) { nil }
          System.arraycopy(result, 0, new_result, 0, result.attr_length)
          System.arraycopy(child_list, 0, new_result, result.attr_length, child_list.attr_length)
          result = new_result
        end
        i += 1
      end
      if ((result.attr_length).equal?(0))
        result = Array.typed(Widget).new([self])
      end
      return result
    end
    
    typesig { [] }
    def create_handle
      super
      self.attr_state &= ~CANVAS
      # Feature in Windows.  When TBSTYLE_FLAT is used to create
      # a flat toolbar, for some reason TBSTYLE_TRANSPARENT is
      # also set.  This causes the toolbar to flicker when it is
      # moved or resized.  The fix is to clear TBSTYLE_TRANSPARENT.
      # 
      # NOTE:  This work around is unnecessary on XP.  There is no
      # flickering and clearing the TBSTYLE_TRANSPARENT interferes
      # with the XP theme.
      if (!((self.attr_style & SWT::FLAT)).equal?(0))
        if (OS::COMCTL32_MAJOR < 6 || !OS._is_app_themed)
          bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          bits &= ~OS::TBSTYLE_TRANSPARENT
          OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits)
        end
      end
      # Feature in Windows.  Despite the fact that the
      # tool tip text contains \r\n, the tooltip will
      # not honour the new line unless TTM_SETMAXTIPWIDTH
      # is set.  The fix is to set TTM_SETMAXTIPWIDTH to
      # a large value.
      # 
      # 
      # These lines are intentionally commented.  The tool
      # bar currently sets this value to 300 so it is not
      # necessary to set TTM_SETMAXTIPWIDTH.
      # 
      # int /*long*/ hwndToolTip = OS.SendMessage (handle, OS.TB_GETTOOLTIPS, 0, 0);
      # OS.SendMessage (hwndToolTip, OS.TTM_SETMAXTIPWIDTH, 0, 0x7FFF);
      # 
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
      # Set the button struct, bitmap and button sizes
      OS._send_message(self.attr_handle, OS::TB_BUTTONSTRUCTSIZE, TBBUTTON.attr_sizeof, 0)
      OS._send_message(self.attr_handle, OS::TB_SETBITMAPSIZE, 0, 0)
      OS._send_message(self.attr_handle, OS::TB_SETBUTTONSIZE, 0, 0)
      # Set the extended style bits
      bits = OS::TBSTYLE_EX_DRAWDDARROWS | OS::TBSTYLE_EX_MIXEDBUTTONS | OS::TBSTYLE_EX_HIDECLIPPEDBUTTONS
      if (OS::COMCTL32_MAJOR >= 6)
        bits |= OS::TBSTYLE_EX_DOUBLEBUFFER
      end
      OS._send_message(self.attr_handle, OS::TB_SETEXTENDEDSTYLE, 0, bits)
    end
    
    typesig { [ToolItem, ::Java::Int] }
    def create_item(item, index)
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_BUTTONCOUNT, 0, 0))
      if (!(0 <= index && index <= count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      id = 0
      while (id < @items.attr_length && !(@items[id]).nil?)
        id += 1
      end
      if ((id).equal?(@items.attr_length))
        new_items = Array.typed(ToolItem).new(@items.attr_length + 4) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      bits = item.widget_style
      lp_button = TBBUTTON.new
      lp_button.attr_id_command = id
      lp_button.attr_fs_style = bits
      lp_button.attr_fs_state = OS::TBSTATE_ENABLED
      # Bug in Windows.  Despite the fact that the image list
      # index has never been set for the item, Windows always
      # assumes that the image index for the item is valid.
      # When an item is inserted, the image index is zero.
      # Therefore, when the first image is inserted and is
      # assigned image index zero, every item draws with this
      # image.  The fix is to set the image index to none
      # when the item is created.  This is not necessary in
      # the case when the item has the BTNS_SEP style because
      # separators cannot show images.
      if (((bits & OS::BTNS_SEP)).equal?(0))
        lp_button.attr_i_bitmap = OS::I_IMAGENONE
      end
      if ((OS._send_message(self.attr_handle, OS::TB_INSERTBUTTON, index, lp_button)).equal?(0))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      @items[item.attr_id = id] = item
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        set_row_count(count + 1)
      end
      layout_items
    end
    
    typesig { [] }
    def create_widget
      super
      @items = Array.typed(ToolItem).new(4) { nil }
      @last_focus_id = @last_arrow_id = @last_hot_id = -1
    end
    
    typesig { [] }
    def default_background
      if (OS::IsWinCE)
        return OS._get_sys_color(OS::COLOR_BTNFACE)
      end
      return super
    end
    
    typesig { [ToolItem] }
    def destroy_item(item)
      info = TBBUTTONINFO.new
      info.attr_cb_size = TBBUTTONINFO.attr_sizeof
      info.attr_dw_mask = OS::TBIF_IMAGE | OS::TBIF_STYLE
      # 64
      index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_GETBUTTONINFO, item.attr_id, info))
      # Feature in Windows.  For some reason, a tool item that has
      # the style BTNS_SEP does not return I_IMAGENONE when queried
      # for an image index, despite the fact that no attempt has been
      # made to assign an image to the item.  As a result, operations
      # on an image list that use the wrong index cause random results.
      # The fix is to ensure that the tool item is not a separator
      # before using the image index.  Since separators cannot have
      # an image and one is never assigned, this is not a problem.
      if (((info.attr_fs_style & OS::BTNS_SEP)).equal?(0) && !(info.attr_i_image).equal?(OS::I_IMAGENONE))
        if (!(@image_list).nil?)
          @image_list.put(info.attr_i_image, nil)
        end
        if (!(@hot_image_list).nil?)
          @hot_image_list.put(info.attr_i_image, nil)
        end
        if (!(@disabled_image_list).nil?)
          @disabled_image_list.put(info.attr_i_image, nil)
        end
      end
      OS._send_message(self.attr_handle, OS::TB_DELETEBUTTON, index, 0)
      if ((item.attr_id).equal?(@last_focus_id))
        @last_focus_id = -1
      end
      if ((item.attr_id).equal?(@last_arrow_id))
        @last_arrow_id = -1
      end
      if ((item.attr_id).equal?(@last_hot_id))
        @last_hot_id = -1
      end
      @items[item.attr_id] = nil
      item.attr_id = -1
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_BUTTONCOUNT, 0, 0))
      if ((count).equal?(0))
        if (!(@image_list).nil?)
          OS._send_message(self.attr_handle, OS::TB_SETIMAGELIST, 0, 0)
          self.attr_display.release_tool_image_list(@image_list)
        end
        if (!(@hot_image_list).nil?)
          OS._send_message(self.attr_handle, OS::TB_SETHOTIMAGELIST, 0, 0)
          self.attr_display.release_tool_hot_image_list(@hot_image_list)
        end
        if (!(@disabled_image_list).nil?)
          OS._send_message(self.attr_handle, OS::TB_SETDISABLEDIMAGELIST, 0, 0)
          self.attr_display.release_tool_disabled_image_list(@disabled_image_list)
        end
        @image_list = @hot_image_list = @disabled_image_list = nil
        @items = Array.typed(ToolItem).new(4) { nil }
      end
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        set_row_count(count - 1)
      end
      layout_items
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      super(enabled)
      # Bug in Windows.  When a tool item with the style
      # BTNS_CHECK or BTNS_CHECKGROUP is selected and then
      # disabled, the item does not draw using the disabled
      # image.  The fix is to use the disabled image in all
      # image lists for the item.
      # 
      # Feature in Windows.  When a tool bar is disabled,
      # the text draws disabled but the images do not.
      # The fix is to use the disabled image in all image
      # lists for all items.
      i = 0
      while i < @items.attr_length
        item = @items[i]
        if (!(item).nil?)
          if (((item.attr_style & SWT::SEPARATOR)).equal?(0))
            item.update_images(enabled && item.get_enabled)
          end
        end
        i += 1
      end
    end
    
    typesig { [] }
    def get_disabled_image_list
      return @disabled_image_list
    end
    
    typesig { [] }
    def get_hot_image_list
      return @hot_image_list
    end
    
    typesig { [] }
    def get_image_list
      return @image_list
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
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_BUTTONCOUNT, 0, 0))
      if (!(0 <= index && index < count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      lp_button = TBBUTTON.new
      # long
      result = OS._send_message(self.attr_handle, OS::TB_GETBUTTON, index, lp_button)
      if ((result).equal?(0))
        error(SWT::ERROR_CANNOT_GET_ITEM)
      end
      return @items[lp_button.attr_id_command]
    end
    
    typesig { [Point] }
    # Returns the item at the given point in the receiver
    # or null if no such item exists. The point is in the
    # coordinate system of the receiver.
    # 
    # @param point the point used to locate the item
    # @return the item at the given point
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item(point)
      check_widget
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      items = get_items
      i = 0
      while i < items.attr_length
        rect = items[i].get_bounds
        if (rect.contains(point))
          return items[i]
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
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_BUTTONCOUNT, 0, 0))
    end
    
    typesig { [] }
    # Returns an array of <code>ToolItem</code>s which are the items
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
      return __get_items
    end
    
    typesig { [] }
    def __get_items
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_BUTTONCOUNT, 0, 0))
      lp_button = TBBUTTON.new
      result = Array.typed(ToolItem).new(count) { nil }
      i = 0
      while i < count
        OS._send_message(self.attr_handle, OS::TB_GETBUTTON, i, lp_button)
        result[i] = @items[lp_button.attr_id_command]
        i += 1
      end
      return result
    end
    
    typesig { [] }
    # Returns the number of rows in the receiver. When
    # the receiver has the <code>WRAP</code> style, the
    # number of rows can be greater than one.  Otherwise,
    # the number of rows is always one.
    # 
    # @return the number of items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_row_count
      check_widget
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        # 64
        return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_BUTTONCOUNT, 0, 0))
      end
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_GETROWS, 0, 0))
    end
    
    typesig { [] }
    def __get_tab_item_list
      if ((@tab_item_list).nil?)
        return @tab_item_list
      end
      count = 0
      i = 0
      while i < @tab_item_list.attr_length
        if (!@tab_item_list[i].is_disposed)
          count += 1
        end
        i += 1
      end
      if ((count).equal?(@tab_item_list.attr_length))
        return @tab_item_list
      end
      new_list = Array.typed(ToolItem).new(count) { nil }
      index = 0
      i_ = 0
      while i_ < @tab_item_list.attr_length
        if (!@tab_item_list[i_].is_disposed)
          new_list[((index += 1) - 1)] = @tab_item_list[i_]
        end
        i_ += 1
      end
      @tab_item_list = new_list
      return @tab_item_list
    end
    
    typesig { [ToolItem] }
    # Searches the receiver's list starting at the first item
    # (index 0) until an item is found that is equal to the
    # argument, and returns the index of that item. If no item
    # is found, returns -1.
    # 
    # @param item the search item
    # @return the index of the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the tool item is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the tool item has been disposed</li>
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
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_COMMANDTOINDEX, item.attr_id, 0))
    end
    
    typesig { [] }
    def layout_items
      # Feature in Windows.  When a tool bar has the style
      # TBSTYLE_LIST and has a drop down item, Window leaves
      # too much padding around the button.  This affects
      # every button in the tool bar and makes the preferred
      # height too big.  The fix is to set the TBSTYLE_LIST
      # when the tool bar contains both text and images.
      # 
      # NOTE: Tool bars with CCS_VERT must have TBSTYLE_LIST
      # set before any item is added or the tool bar does
      # not lay out properly.  The work around does not run
      # in this case.
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        if (!((self.attr_style & SWT::RIGHT)).equal?(0) && ((self.attr_style & SWT::VERTICAL)).equal?(0))
          has_text = false
          has_image = false
          i = 0
          while i < @items.attr_length
            item = @items[i]
            if (!(item).nil?)
              if (!has_text)
                has_text = !(item.attr_text.length).equal?(0)
              end
              if (!has_image)
                has_image = !(item.attr_image).nil?
              end
              if (has_text && has_image)
                break
              end
            end
            i += 1
          end
          old_bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          new_bits = old_bits
          if (has_text && has_image)
            new_bits |= OS::TBSTYLE_LIST
          else
            new_bits &= ~OS::TBSTYLE_LIST
          end
          if (!(new_bits).equal?(old_bits))
            set_drop_down_items(false)
            OS._set_window_long(self.attr_handle, OS::GWL_STYLE, new_bits)
            # Feature in Windows.  For some reason, when the style
            # is changed to TBSTYLE_LIST, Windows does not lay out
            # the tool items.  The fix is to use WM_SETFONT to force
            # the tool bar to redraw and lay out.
            # 
            # long
            h_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
            OS._send_message(self.attr_handle, OS::WM_SETFONT, h_font, 0)
            set_drop_down_items(true)
          end
        end
      end
      if (!((self.attr_style & SWT::WRAP)).equal?(0))
        OS._send_message(self.attr_handle, OS::TB_AUTOSIZE, 0, 0)
      end
      # When the tool bar is vertical, make the width of each button
      # be the width of the widest button in the tool bar.  Note that
      # when the tool bar contains a drop down item, it needs to take
      # into account extra padding.
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        # 64
        item_count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_BUTTONCOUNT, 0, 0))
        if (item_count > 1)
          info = TBBUTTONINFO.new
          info.attr_cb_size = TBBUTTONINFO.attr_sizeof
          info.attr_dw_mask = OS::TBIF_SIZE
          # long
          size = OS._send_message(self.attr_handle, OS::TB_GETBUTTONSIZE, 0, 0)
          info.attr_cx = RJava.cast_to_short(OS._loword(size))
          index = 0
          while (index < @items.attr_length)
            item = @items[index]
            if (!(item).nil? && !((item.attr_style & SWT::DROP_DOWN)).equal?(0))
              break
            end
            index += 1
          end
          if (index < @items.attr_length)
            # long
            padding = OS._send_message(self.attr_handle, OS::TB_GETPADDING, 0, 0)
            info.attr_cx += OS._loword(padding) * 2
          end
          i = 0
          while i < @items.attr_length
            item = @items[i]
            if (!(item).nil? && ((item.attr_style & SWT::SEPARATOR)).equal?(0))
              OS._send_message(self.attr_handle, OS::TB_SETBUTTONINFO, item.attr_id, info)
            end
            i += 1
          end
        end
      end
      i = 0
      while i < @items.attr_length
        item = @items[i]
        if (!(item).nil?)
          item.resize_control
        end
        i += 1
      end
    end
    
    typesig { [::Java::Char] }
    def mnemonic_hit(ch)
      key = Display.wcs_to_mbcs(ch)
      id = Array.typed(::Java::Int).new(1) { 0 }
      if ((OS._send_message(self.attr_handle, OS::TB_MAPACCELERATOR, key, id)).equal?(0))
        return false
      end
      if (!((self.attr_style & SWT::FLAT)).equal?(0) && !set_tab_group_focus)
        return false
      end
      # 64
      index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_COMMANDTOINDEX, id[0], 0))
      if ((index).equal?(-1))
        return false
      end
      OS._send_message(self.attr_handle, OS::TB_SETHOTITEM, index, 0)
      @items[id[0]].click(false)
      return true
    end
    
    typesig { [::Java::Char] }
    def mnemonic_match(ch)
      key = Display.wcs_to_mbcs(ch)
      id = Array.typed(::Java::Int).new(1) { 0 }
      if ((OS._send_message(self.attr_handle, OS::TB_MAPACCELERATOR, key, id)).equal?(0))
        return false
      end
      # Feature in Windows.  TB_MAPACCELERATOR matches either the mnemonic
      # character or the first character in a tool item.  This behavior is
      # undocumented and unwanted.  The fix is to ensure that the tool item
      # contains a mnemonic when TB_MAPACCELERATOR returns true.
      # 
      # 64
      index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_COMMANDTOINDEX, id[0], 0))
      if ((index).equal?(-1))
        return false
      end
      return !(find_mnemonic(@items[id[0]].attr_text)).equal?(Character.new(?\0.ord))
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
        OS._send_message(self.attr_handle, OS::TB_SETIMAGELIST, 0, 0)
        self.attr_display.release_tool_image_list(@image_list)
      end
      if (!(@hot_image_list).nil?)
        OS._send_message(self.attr_handle, OS::TB_SETHOTIMAGELIST, 0, 0)
        self.attr_display.release_tool_hot_image_list(@hot_image_list)
      end
      if (!(@disabled_image_list).nil?)
        OS._send_message(self.attr_handle, OS::TB_SETDISABLEDIMAGELIST, 0, 0)
        self.attr_display.release_tool_disabled_image_list(@disabled_image_list)
      end
      @image_list = @hot_image_list = @disabled_image_list = nil
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
    # long
    def set_background_image(h_bitmap)
      super(h_bitmap)
      set_background_transparent(!(h_bitmap).equal?(0))
    end
    
    typesig { [::Java::Int] }
    def set_background_pixel(pixel)
      super(pixel)
      set_background_transparent(!(pixel).equal?(-1))
    end
    
    typesig { [::Java::Boolean] }
    def set_background_transparent(transparent)
      # Feature in Windows.  When TBSTYLE_TRANSPARENT is set
      # in a tool bar that is drawing a background, images in
      # the image list that include transparency information
      # do not draw correctly.  The fix is to clear and set
      # TBSTYLE_TRANSPARENT depending on the background color.
      # 
      # NOTE:  This work around is unnecessary on XP.  The
      # TBSTYLE_TRANSPARENT style is never cleared on that
      # platform.
      if (!((self.attr_style & SWT::FLAT)).equal?(0))
        if (OS::COMCTL32_MAJOR < 6 || !OS._is_app_themed)
          bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          if (!transparent && (find_background_control).nil?)
            bits &= ~OS::TBSTYLE_TRANSPARENT
          else
            bits |= OS::TBSTYLE_TRANSPARENT
          end
          OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits)
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def set_bounds(x, y, width, height, flags)
      # Feature in Windows.  For some reason, when a tool bar is
      # repositioned more than once using DeferWindowPos () into
      # the same HDWP, the toolbar redraws more than once, defeating
      # the purpose of DeferWindowPos ().  The fix is to end the
      # deferred positioning before the next tool bar is added,
      # ensuring that only one tool bar position is deferred at
      # any given time.
      if (!(self.attr_parent.attr_lpwp).nil?)
        if (get_drawing && OS._is_window_visible(self.attr_handle))
          self.attr_parent.set_resize_children(false)
          self.attr_parent.set_resize_children(true)
        end
      end
      super(x, y, width, height, flags)
    end
    
    typesig { [] }
    def set_default_font
      super
      OS._send_message(self.attr_handle, OS::TB_SETBITMAPSIZE, 0, 0)
      OS._send_message(self.attr_handle, OS::TB_SETBUTTONSIZE, 0, 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_drop_down_items(set)
      # Feature in Windows.  When the first button in a tool bar
      # is a drop down item, Window leaves too much padding around
      # the button.  This affects every button in the tool bar and
      # makes the preferred height too big.  The fix is clear the
      # BTNS_DROPDOWN before Windows lays out the tool bar and set
      # the bit afterwards.
      # 
      # NOTE:  This work around only runs when the tool bar contains
      # only images.
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        has_text = false
        has_image = false
        i = 0
        while i < @items.attr_length
          item = @items[i]
          if (!(item).nil?)
            if (!has_text)
              has_text = !(item.attr_text.length).equal?(0)
            end
            if (!has_image)
              has_image = !(item.attr_image).nil?
            end
            if (has_text && has_image)
              break
            end
          end
          i += 1
        end
        if (has_image && !has_text)
          i_ = 0
          while i_ < @items.attr_length
            item = @items[i_]
            if (!(item).nil? && !((item.attr_style & SWT::DROP_DOWN)).equal?(0))
              info = TBBUTTONINFO.new
              info.attr_cb_size = TBBUTTONINFO.attr_sizeof
              info.attr_dw_mask = OS::TBIF_STYLE
              OS._send_message(self.attr_handle, OS::TB_GETBUTTONINFO, item.attr_id, info)
              if (set)
                info.attr_fs_style |= OS::BTNS_DROPDOWN
              else
                info.attr_fs_style &= ~OS::BTNS_DROPDOWN
              end
              OS._send_message(self.attr_handle, OS::TB_SETBUTTONINFO, item.attr_id, info)
            end
            i_ += 1
          end
        end
      end
    end
    
    typesig { [ImageList] }
    def set_disabled_image_list(image_list)
      if ((@disabled_image_list).equal?(image_list))
        return
      end
      # long
      h_image_list = 0
      if (!((@disabled_image_list = image_list)).nil?)
        h_image_list = @disabled_image_list.get_handle
      end
      set_drop_down_items(false)
      OS._send_message(self.attr_handle, OS::TB_SETDISABLEDIMAGELIST, 0, h_image_list)
      set_drop_down_items(true)
    end
    
    typesig { [Font] }
    def set_font(font)
      check_widget
      set_drop_down_items(false)
      super(font)
      set_drop_down_items(true)
      # Bug in Windows.  When WM_SETFONT is sent to a tool bar
      # that contains only separators, causes the bitmap and button
      # sizes to be set.  The fix is to reset these sizes after the font
      # has been changed when the tool bar contains only separators.
      index = 0
      mask = SWT::PUSH | SWT::CHECK | SWT::RADIO | SWT::DROP_DOWN
      while (index < @items.attr_length)
        item = @items[index]
        if (!(item).nil? && !((item.attr_style & mask)).equal?(0))
          break
        end
        index += 1
      end
      if ((index).equal?(@items.attr_length))
        OS._send_message(self.attr_handle, OS::TB_SETBITMAPSIZE, 0, 0)
        OS._send_message(self.attr_handle, OS::TB_SETBUTTONSIZE, 0, 0)
      end
      layout_items
    end
    
    typesig { [ImageList] }
    def set_hot_image_list(image_list)
      if ((@hot_image_list).equal?(image_list))
        return
      end
      # long
      h_image_list = 0
      if (!((@hot_image_list = image_list)).nil?)
        h_image_list = @hot_image_list.get_handle
      end
      set_drop_down_items(false)
      OS._send_message(self.attr_handle, OS::TB_SETHOTIMAGELIST, 0, h_image_list)
      set_drop_down_items(true)
    end
    
    typesig { [ImageList] }
    def set_image_list(image_list)
      if ((@image_list).equal?(image_list))
        return
      end
      # long
      h_image_list = 0
      if (!((@image_list = image_list)).nil?)
        h_image_list = image_list.get_handle
      end
      set_drop_down_items(false)
      OS._send_message(self.attr_handle, OS::TB_SETIMAGELIST, 0, h_image_list)
      set_drop_down_items(true)
    end
    
    typesig { [Composite] }
    def set_parent(parent)
      check_widget
      if (!super(parent))
        return false
      end
      # long
      hwnd_parent = parent.attr_handle
      OS._send_message(self.attr_handle, OS::TB_SETPARENT, hwnd_parent, 0)
      # Bug in Windows.  When a tool bar is reparented, the tooltip
      # control that is automatically created for the item is not
      # reparented to the new shell.  The fix is to move the tooltip
      # over using SetWindowLongPtr().  Note that for some reason,
      # SetParent() does not work.
      # 
      # long
      hwnd_shell = parent.get_shell.attr_handle
      # long
      hwnd_tool_tip = OS._send_message(self.attr_handle, OS::TB_GETTOOLTIPS, 0, 0)
      OS._set_window_long_ptr(hwnd_tool_tip, OS::GWLP_HWNDPARENT, hwnd_shell)
      return true
    end
    
    typesig { [::Java::Boolean] }
    def set_redraw(redraw)
      check_widget
      set_drop_down_items(false)
      super(redraw)
      set_drop_down_items(true)
    end
    
    typesig { [::Java::Int] }
    def set_row_count(count)
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        # Feature in Windows.  When the TB_SETROWS is used to set the
        # number of rows in a tool bar, the tool bar is resized to show
        # the items.  This is unexpected.  The fix is to save and restore
        # the current size of the tool bar.
        rect = RECT.new
        OS._get_window_rect(self.attr_handle, rect)
        OS._map_window_points(0, self.attr_parent.attr_handle, rect, 2)
        @ignore_resize = true
        # Feature in Windows.  When the last button in a tool bar has the
        # style BTNS_SEP and TB_SETROWS is used to set the number of rows
        # in the tool bar, depending on the number of buttons, the toolbar
        # will wrap items with the style BTNS_CHECK, even when the fLarger
        # flags is used to force the number of rows to be larger than the
        # number of items.  The fix is to set the number of rows to be two
        # larger than the actual number of rows in the tool bar.  When items
        # are being added, as long as the number of rows is at least one
        # item larger than the count, the tool bar is laid out properly.
        # When items are being removed, setting the number of rows to be
        # one more than the item count has no effect.  The number of rows
        # is already one more causing TB_SETROWS to do nothing.  Therefore,
        # choosing two instead of one as the row increment fixes both cases.
        count += 2
        OS._send_message(self.attr_handle, OS::TB_SETROWS, OS._makewparam(count, 1), 0)
        flags = OS::SWP_NOACTIVATE | OS::SWP_NOMOVE | OS::SWP_NOZORDER
        _set_window_pos(self.attr_handle, 0, 0, 0, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top, flags)
        @ignore_resize = false
      end
    end
    
    typesig { [Array.typed(ToolItem)] }
    # public
    def set_tab_item_list(tab_list)
      check_widget
      if (!(tab_list).nil?)
        i = 0
        while i < tab_list.attr_length
          item = tab_list[i]
          if ((item).nil?)
            error(SWT::ERROR_INVALID_ARGUMENT)
          end
          if (item.is_disposed)
            error(SWT::ERROR_INVALID_ARGUMENT)
          end
          if (!(item.attr_parent).equal?(self))
            error(SWT::ERROR_INVALID_PARENT)
          end
          i += 1
        end
        new_list = Array.typed(ToolItem).new(tab_list.attr_length) { nil }
        System.arraycopy(tab_list, 0, new_list, 0, tab_list.attr_length)
        tab_list = new_list
      end
      @tab_item_list = tab_list
    end
    
    typesig { [] }
    def set_tab_item_focus
      index = 0
      while (index < @items.attr_length)
        item = @items[index]
        if (!(item).nil? && ((item.attr_style & SWT::SEPARATOR)).equal?(0))
          if (item.get_enabled)
            break
          end
        end
        index += 1
      end
      if ((index).equal?(@items.attr_length))
        return false
      end
      return super
    end
    
    typesig { [NMTTDISPINFO] }
    def tool_tip_text(hdr)
      if (!((hdr.attr_u_flags & OS::TTF_IDISHWND)).equal?(0))
        return nil
      end
      # Bug in Windows.  On Windows XP, when TB_SETHOTITEM is
      # used to set the hot item, the tool bar control attempts
      # to display the tool tip, even when the cursor is not in
      # the hot item.  The fix is to detect this case and fail to
      # provide the string, causing no tool tip to be displayed.
      if (!has_cursor)
        return ""
      end # $NON-NLS-1$
      # 64
      index = RJava.cast_to_int(hdr.attr_id_from)
      # long
      hwnd_tool_tip = OS._send_message(self.attr_handle, OS::TB_GETTOOLTIPS, 0, 0)
      if ((hwnd_tool_tip).equal?(hdr.attr_hwnd_from))
        # Bug in Windows. For some reason the reading order
        # in NMTTDISPINFO is sometimes set incorrectly.  The
        # reading order seems to change every time the mouse
        # enters the control from the top edge.  The fix is
        # to explicitly set TTF_RTLREADING.
        if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
          hdr.attr_u_flags |= OS::TTF_RTLREADING
        else
          hdr.attr_u_flags &= ~OS::TTF_RTLREADING
        end
        if (!(self.attr_tool_tip_text).nil?)
          return ""
        end # $NON-NLS-1$
        if (0 <= index && index < @items.attr_length)
          item = @items[index]
          if (!(item).nil?)
            # But in Windows.  When the  arrow keys are used to change
            # the hot item, for some reason, Windows displays the tool
            # tip for the hot item in at (0, 0) on the screen rather
            # than next to the current hot item.  This fix is to disallow
            # tool tips while the user is traversing with the arrow keys.
            if (!(@last_arrow_id).equal?(-1))
              return ""
            end
            return item.attr_tool_tip_text
          end
        end
      end
      return super(hdr)
    end
    
    typesig { [] }
    def widget_style
      bits = super | OS::CCS_NORESIZE | OS::TBSTYLE_TOOLTIPS | OS::TBSTYLE_CUSTOMERASE
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        bits |= OS::TBSTYLE_TRANSPARENT
      end
      if (((self.attr_style & SWT::SHADOW_OUT)).equal?(0))
        bits |= OS::CCS_NODIVIDER
      end
      if (!((self.attr_style & SWT::WRAP)).equal?(0))
        bits |= OS::TBSTYLE_WRAPABLE
      end
      if (!((self.attr_style & SWT::FLAT)).equal?(0))
        bits |= OS::TBSTYLE_FLAT
      end
      # Feature in Windows.  When a tool bar has the style
      # TBSTYLE_LIST and has a drop down item, Window leaves
      # too much padding around the button.  This affects
      # every button in the tool bar and makes the preferred
      # height too big.  The fix is to set the TBSTYLE_LIST
      # when the tool bar contains both text and images.
      # 
      # NOTE: Tool bars with CCS_VERT must have TBSTYLE_LIST
      # set before any item is added or the tool bar does
      # not lay out properly.  The work around does not run
      # in this case.
      if (OS::COMCTL32_MAJOR < 6 || !OS._is_app_themed)
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          bits |= OS::TBSTYLE_LIST
        end
      end
      return bits
    end
    
    typesig { [] }
    def window_class
      return ToolBarClass
    end
    
    typesig { [] }
    # long
    def window_proc
      return ToolBarProc
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_capturechanged(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Bug in Windows.  When the tool bar loses capture while an
      # item is pressed, the item remains pressed.  The fix is
      # unpress all items using TB_SETSTATE and TBSTATE_PRESSED.
      i = 0
      while i < @items.attr_length
        item = @items[i]
        if (!(item).nil?)
          # 64
          fs_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_GETSTATE, item.attr_id, 0))
          if (!((fs_state & OS::TBSTATE_PRESSED)).equal?(0))
            fs_state &= ~OS::TBSTATE_PRESSED
            OS._send_message(self.attr_handle, OS::TB_SETSTATE, item.attr_id, fs_state)
          end
        end
        i += 1
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_char(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # 64
      case (RJava.cast_to_int(w_param))
      when Character.new(?\s.ord)
        # 64
        index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_GETHOTITEM, 0, 0))
        if (!(index).equal?(-1))
          lp_button = TBBUTTON.new
          # long
          code = OS._send_message(self.attr_handle, OS::TB_GETBUTTON, index, lp_button)
          if (!(code).equal?(0))
            @items[lp_button.attr_id_command].click(false)
            return LRESULT::ZERO
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_command(w_param, l_param)
      # Feature in Windows.  When the toolbar window
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
      # Bug in Windows.  For some reason, NM_CUSTOMDRAW with
      # CDDS_PREERASE and CDDS_POSTERASE is never sent for
      # versions of Windows earlier than XP.  The fix is to
      # draw the background in WM_ERASEBKGND;
      if (!(find_background_control).nil?)
        if (OS::COMCTL32_MAJOR < 6)
          draw_background(w_param)
          return LRESULT::ONE
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_getdlgcode(w_param, l_param)
      result = super(w_param, l_param)
      # Return DLGC_BUTTON so that mnemonics will be
      # processed without needing to press the ALT key
      # when the widget has focus.
      if (!(result).nil?)
        return result
      end
      return LRESULT.new(OS::DLGC_BUTTON | OS::DLGC_WANTARROWS)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_keydown(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # 64
      case (RJava.cast_to_int(w_param))
      when OS::VK_SPACE
        # Ensure that the window proc does not process VK_SPACE
        # so that it can be handled in WM_CHAR.  This allows the
        # application the opportunity to cancel the operation.
        return LRESULT::ZERO
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_killfocus(w_param, l_param)
      # 64
      index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_GETHOTITEM, 0, 0))
      lp_button = TBBUTTON.new
      # long
      code = OS._send_message(self.attr_handle, OS::TB_GETBUTTON, index, lp_button)
      if (!(code).equal?(0))
        @last_focus_id = lp_button.attr_id_command
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondown(w_param, l_param)
      if (@ignore_mouse)
        return nil
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttonup(w_param, l_param)
      if (@ignore_mouse)
        return nil
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mouseleave(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Bug in Windows.  On XP, when a tooltip is
      # hidden due to a time out or mouse press,
      # the tooltip remains active although no
      # longer visible and won't show again until
      # another tooltip becomes active.  If there
      # is only one tooltip in the window,  it will
      # never show again.  The fix is to remove the
      # current tooltip and add it again every time
      # the mouse leaves the control.
      if (OS::COMCTL32_MAJOR >= 6)
        lpti = TOOLINFO.new
        lpti.attr_cb_size = TOOLINFO.attr_sizeof
        # long
        hwnd_tool_tip = OS._send_message(self.attr_handle, OS::TB_GETTOOLTIPS, 0, 0)
        if (!(OS._send_message(hwnd_tool_tip, OS::TTM_GETCURRENTTOOL, 0, lpti)).equal?(0))
          if (((lpti.attr_u_flags & OS::TTF_IDISHWND)).equal?(0))
            OS._send_message(hwnd_tool_tip, OS::TTM_DELTOOL, 0, lpti)
            OS._send_message(hwnd_tool_tip, OS::TTM_ADDTOOL, 0, lpti)
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mousemove(w_param, l_param)
      if (!(OS._get_message_pos).equal?(self.attr_display.attr_last_mouse))
        @last_arrow_id = -1
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_notify(w_param, l_param)
      # Feature in Windows.  When the toolbar window
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
    def _wm_setfocus(w_param, l_param)
      result = super(w_param, l_param)
      if (!(@last_focus_id).equal?(-1) && (self.attr_handle).equal?(OS._get_focus))
        # 64
        index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_COMMANDTOINDEX, @last_focus_id, 0))
        OS._send_message(self.attr_handle, OS::TB_SETHOTITEM, index, 0)
      end
      return result
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
      result = super(w_param, l_param)
      if (is_disposed)
        return result
      end
      # Bug in Windows.  The code in Windows that determines
      # when tool items should wrap seems to use the window
      # bounds rather than the client area.  Unfortunately,
      # tool bars with the style TBSTYLE_EX_HIDECLIPPEDBUTTONS
      # use the client area.  This means that buttons which
      # overlap the border are hidden before they are wrapped.
      # The fix is to compute TBSTYLE_EX_HIDECLIPPEDBUTTONS
      # and set it each time the tool bar is resized.
      if (!((self.attr_style & SWT::BORDER)).equal?(0) && !((self.attr_style & SWT::WRAP)).equal?(0))
        window_rect = RECT.new
        OS._get_window_rect(self.attr_handle, window_rect)
        index = 0
        border = get_border_width * 2
        rect = RECT.new
        # 64
        count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_BUTTONCOUNT, 0, 0))
        while (index < count)
          OS._send_message(self.attr_handle, OS::TB_GETITEMRECT, index, rect)
          OS._map_window_points(self.attr_handle, 0, rect, 2)
          if (rect.attr_right > window_rect.attr_right - border * 2)
            break
          end
          index += 1
        end
        # 64
        bits = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_GETEXTENDEDSTYLE, 0, 0))
        if ((index).equal?(count))
          bits |= OS::TBSTYLE_EX_HIDECLIPPEDBUTTONS
        else
          bits &= ~OS::TBSTYLE_EX_HIDECLIPPEDBUTTONS
        end
        OS._send_message(self.attr_handle, OS::TB_SETEXTENDEDSTYLE, 0, bits)
      end
      layout_items
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_windowposchanging(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (@ignore_resize)
        return result
      end
      # Bug in Windows.  When a flat tool bar is wrapped,
      # Windows draws a horizontal separator between the
      # rows.  The tool bar does not draw the first or
      # the last two pixels of this separator.  When the
      # toolbar is resized to be bigger, only the new
      # area is drawn and the last two pixels, which are
      # blank are drawn over by separator.  This leaves
      # garbage on the screen.  The fix is to damage the
      # pixels.
      if (!get_drawing)
        return result
      end
      if (((self.attr_style & SWT::WRAP)).equal?(0))
        return result
      end
      if (!OS._is_window_visible(self.attr_handle))
        return result
      end
      if ((OS._send_message(self.attr_handle, OS::TB_GETROWS, 0, 0)).equal?(1))
        return result
      end
      lpwp = WINDOWPOS.new
      OS._move_memory(lpwp, l_param, WINDOWPOS.attr_sizeof)
      if (!((lpwp.attr_flags & (OS::SWP_NOSIZE | OS::SWP_NOREDRAW))).equal?(0))
        return result
      end
      old_rect = RECT.new
      OS._get_client_rect(self.attr_handle, old_rect)
      new_rect = RECT.new
      OS._set_rect(new_rect, 0, 0, lpwp.attr_cx, lpwp.attr_cy)
      OS._send_message(self.attr_handle, OS::WM_NCCALCSIZE, 0, new_rect)
      old_width = old_rect.attr_right - old_rect.attr_left
      new_width = new_rect.attr_right - new_rect.attr_left
      if (new_width > old_width)
        rect = RECT.new
        new_height = new_rect.attr_bottom - new_rect.attr_top
        OS._set_rect(rect, old_width - 2, 0, old_width, new_height)
        OS._invalidate_rect(self.attr_handle, rect, false)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_command_child(w_param, l_param)
      child = @items[OS._loword(w_param)]
      if ((child).nil?)
        return nil
      end
      return child.wm_command_child(w_param, l_param)
    end
    
    typesig { [NMHDR, ::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_notify_child(hdr, w_param, l_param)
      catch(:break_case) do
        case (hdr.attr_code)
        when OS::TBN_DROPDOWN
          lpnmtb = NMTOOLBAR.new
          OS._move_memory(lpnmtb, l_param, NMTOOLBAR.attr_sizeof)
          child = @items[lpnmtb.attr_i_item]
          if (!(child).nil?)
            event = Event.new
            event.attr_detail = SWT::ARROW
            # 64
            index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_COMMANDTOINDEX, lpnmtb.attr_i_item, 0))
            rect = RECT.new
            OS._send_message(self.attr_handle, OS::TB_GETITEMRECT, index, rect)
            event.attr_x = rect.attr_left
            event.attr_y = rect.attr_bottom
            child.post_event___org_eclipse_swt_widgets_tool_bar_1(SWT::Selection, event)
          end
        when OS::NM_CUSTOMDRAW
          if (OS::COMCTL32_MAJOR < 6)
            throw :break_case, :thrown
          end
          # Bug in Windows.  For some reason, under the XP Silver
          # theme, tool bars continue to draw using the gray color
          # from the default Blue theme.  The fix is to draw the
          # background.
          nmcd = NMCUSTOMDRAW.new
          OS._move_memory(nmcd, l_param, NMCUSTOMDRAW.attr_sizeof)
          # if (drawCount != 0 || !OS.IsWindowVisible (handle)) {
          # if (!OS.IsWinCE && OS.WindowFromDC (nmcd.hdc) == handle) break;
          # }
          case (nmcd.attr_dw_draw_stage)
          when OS::CDDS_PREERASE
            # Bug in Windows.  When a tool bar does not have the style
            # TBSTYLE_FLAT, the rectangle to be erased in CDDS_PREERASE
            # is empty.  The fix is to draw the whole client area.
            bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
            if (((bits & OS::TBSTYLE_FLAT)).equal?(0))
              draw_background(nmcd.attr_hdc)
            else
              rect = RECT.new
              OS._set_rect(rect, nmcd.attr_left, nmcd.attr_top, nmcd.attr_right, nmcd.attr_bottom)
              draw_background(nmcd.attr_hdc, rect)
            end
            return LRESULT.new(OS::CDRF_SKIPDEFAULT)
          end
        when OS::TBN_HOTITEMCHANGE
          if (!OS::IsWinCE)
            lpnmhi = NMTBHOTITEM.new
            OS._move_memory(lpnmhi, l_param, NMTBHOTITEM.attr_sizeof)
            case (lpnmhi.attr_dw_flags)
            when OS::HICF_MOUSE
              # But in Windows.  When the tool bar has focus, a mouse is
              # in an item and hover help for that item is displayed and
              # then the arrow keys are used to change the hot item,
              # for some reason, Windows snaps the hot item back to the
              # one that is under the mouse.  The fix is to disallow
              # hot item changes when the user is traversing using the
              # arrow keys.
              if (!(@last_arrow_id).equal?(-1))
                return LRESULT::ONE
              end
            when OS::HICF_ARROWKEYS
              client = RECT.new
              OS._get_client_rect(self.attr_handle, client)
              # 64
              index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TB_COMMANDTOINDEX, lpnmhi.attr_id_new, 0))
              rect = RECT.new
              OS._send_message(self.attr_handle, OS::TB_GETITEMRECT, index, rect)
              if (rect.attr_right > client.attr_right || rect.attr_bottom > client.attr_bottom)
                return LRESULT::ONE
              end
              @last_arrow_id = lpnmhi.attr_id_new
            else
              @last_arrow_id = -1
            end
            if (((lpnmhi.attr_dw_flags & OS::HICF_LEAVING)).equal?(0))
              @last_hot_id = lpnmhi.attr_id_new
            end
          end
        end
      end
      return super(hdr, w_param, l_param)
    end
    
    private
    alias_method :initialize__tool_bar, :initialize
  end
  
end
