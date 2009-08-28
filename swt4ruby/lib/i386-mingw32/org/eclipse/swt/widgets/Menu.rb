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
  module MenuImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # Instances of this class are user interface objects that contain
  # menu items.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>BAR, DROP_DOWN, POP_UP, NO_RADIO_GROUP</dd>
  # <dd>LEFT_TO_RIGHT, RIGHT_TO_LEFT</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Help, Hide, Show </dd>
  # </dl>
  # <p>
  # Note: Only one of BAR, DROP_DOWN and POP_UP may be specified.
  # Only one of LEFT_TO_RIGHT or RIGHT_TO_LEFT may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#menu">Menu snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Menu < MenuImports.const_get :Widget
    include_class_members MenuImports
    
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
    
    # long
    attr_accessor :h_brush
    alias_method :attr_h_brush, :h_brush
    undef_method :h_brush
    alias_method :attr_h_brush=, :h_brush=
    undef_method :h_brush=
    
    attr_accessor :hwnd_cb
    alias_method :attr_hwnd_cb, :hwnd_cb
    undef_method :hwnd_cb
    alias_method :attr_hwnd_cb=, :hwnd_cb=
    undef_method :hwnd_cb=
    
    attr_accessor :id0
    alias_method :attr_id0, :id0
    undef_method :id0
    alias_method :attr_id0=, :id0=
    undef_method :id0=
    
    attr_accessor :id1
    alias_method :attr_id1, :id1
    undef_method :id1
    alias_method :attr_id1=, :id1=
    undef_method :id1=
    
    attr_accessor :foreground
    alias_method :attr_foreground, :foreground
    undef_method :foreground
    alias_method :attr_foreground=, :foreground=
    undef_method :foreground=
    
    attr_accessor :background
    alias_method :attr_background, :background
    undef_method :background
    alias_method :attr_background=, :background=
    undef_method :background=
    
    attr_accessor :background_image
    alias_method :attr_background_image, :background_image
    undef_method :background_image
    alias_method :attr_background_image=, :background_image=
    undef_method :background_image=
    
    attr_accessor :has_location
    alias_method :attr_has_location, :has_location
    undef_method :has_location
    alias_method :attr_has_location=, :has_location=
    undef_method :has_location=
    
    attr_accessor :cascade
    alias_method :attr_cascade, :cascade
    undef_method :cascade
    alias_method :attr_cascade=, :cascade=
    undef_method :cascade=
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :image_list
    alias_method :attr_image_list, :image_list
    undef_method :image_list
    alias_method :attr_image_list=, :image_list=
    undef_method :image_list=
    
    class_module.module_eval {
      # Resource ID for SHMENUBARINFO
      const_set_lazy(:ID_PPC) { 100 }
      const_attr_reader  :ID_PPC
      
      # SmartPhone SoftKeyBar resource ids
      const_set_lazy(:ID_SPMM) { 102 }
      const_attr_reader  :ID_SPMM
      
      const_set_lazy(:ID_SPBM) { 103 }
      const_attr_reader  :ID_SPBM
      
      const_set_lazy(:ID_SPMB) { 104 }
      const_attr_reader  :ID_SPMB
      
      const_set_lazy(:ID_SPBB) { 105 }
      const_attr_reader  :ID_SPBB
      
      const_set_lazy(:ID_SPSOFTKEY0) { 106 }
      const_attr_reader  :ID_SPSOFTKEY0
      
      const_set_lazy(:ID_SPSOFTKEY1) { 107 }
      const_attr_reader  :ID_SPSOFTKEY1
    }
    
    typesig { [Control] }
    # Constructs a new instance of this class given its parent,
    # and sets the style for the instance so that the instance
    # will be a popup menu on the given parent's shell.
    # <p>
    # After constructing a menu, it can be set into its parent
    # using <code>parent.setMenu(menu)</code>.  In this case, the parent may
    # be any control in the same widget tree as the parent.
    # </p>
    # 
    # @param parent a control which will be the parent of the new instance (cannot be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#POP_UP
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent)
      initialize__menu(check_null(parent).menu_shell, SWT::POP_UP)
    end
    
    typesig { [Decorations, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Decorations</code>) and a style value
    # describing its behavior and appearance.
    # <p>
    # The style value is either one of the style constants defined in
    # class <code>SWT</code> which is applicable to instances of this
    # class, or must be built by <em>bitwise OR</em>'ing together
    # (that is, using the <code>int</code> "|" operator) two or more
    # of those <code>SWT</code> style constants. The class description
    # lists the style constants that are applicable to the class.
    # Style bits are also inherited from superclasses.
    # </p><p>
    # After constructing a menu or menuBar, it can be set into its parent
    # using <code>parent.setMenu(menu)</code> or <code>parent.setMenuBar(menuBar)</code>.
    # </p>
    # 
    # @param parent a decorations control which will be the parent of the new instance (cannot be null)
    # @param style the style of menu to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#BAR
    # @see SWT#DROP_DOWN
    # @see SWT#POP_UP
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      initialize__menu(parent, check_style(style), 0)
    end
    
    typesig { [Menu] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Menu</code>) and sets the style
    # for the instance so that the instance will be a drop-down
    # menu on the given parent's parent.
    # <p>
    # After constructing a drop-down menu, it can be set into its parentMenu
    # using <code>parentMenu.setMenu(menu)</code>.
    # </p>
    # 
    # @param parentMenu a menu which will be the parent of the new instance (cannot be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#DROP_DOWN
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent_menu)
      initialize__menu(check_null(parent_menu).attr_parent, SWT::DROP_DOWN)
    end
    
    typesig { [MenuItem] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>MenuItem</code>) and sets the style
    # for the instance so that the instance will be a drop-down
    # menu on the given parent's parent menu.
    # <p>
    # After constructing a drop-down menu, it can be set into its parentItem
    # using <code>parentItem.setMenu(menu)</code>.
    # </p>
    # 
    # @param parentItem a menu item which will be the parent of the new instance (cannot be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#DROP_DOWN
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent_item)
      initialize__menu(check_null(parent_item).attr_parent)
    end
    
    typesig { [Decorations, ::Java::Int, ::Java::Int] }
    # long
    def initialize(parent, style, handle)
      @handle = 0
      @x = 0
      @y = 0
      @h_brush = 0
      @hwnd_cb = 0
      @id0 = 0
      @id1 = 0
      @foreground = 0
      @background = 0
      @background_image = nil
      @has_location = false
      @cascade = nil
      @parent = nil
      @image_list = nil
      super(parent, check_style(style))
      @foreground = -1
      @background = -1
      @parent = parent
      @handle = handle
      # Bug in IBM JVM 1.3.1.  For some reason, when the checkOrientation() is
      # called from createWidget(), the JVM issues this error:
      # 
      # JVM Exception 0x2 (subcode 0x0) occurred in thread "main" (TID:0x9F19D8)
      # 
      # In addition, on Windows XP, a dialog appears with following error message,
      # indicating that the problem may be in the JIT:
      # 
      # AppName: java.exe	 AppVer: 0.0.0.0	 ModName: jitc.dll
      # ModVer: 0.0.0.0	 Offset: 000b6912
      # 
      # The fix is to call checkOrientation() from here.
      check_orientation(parent)
      create_widget
    end
    
    typesig { [::Java::Boolean] }
    def __set_visible(visible)
      if (!((self.attr_style & (SWT::BAR | SWT::DROP_DOWN))).equal?(0))
        return
      end
      # long
      hwnd_parent = @parent.attr_handle
      if (visible)
        flags = OS::TPM_LEFTBUTTON
        if (OS._get_key_state(OS::VK_LBUTTON) >= 0)
          flags |= OS::TPM_RIGHTBUTTON
        end
        if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
          flags |= OS::TPM_RIGHTALIGN
        end
        if (!((@parent.attr_style & SWT::MIRRORED)).equal?(0))
          flags &= ~OS::TPM_RIGHTALIGN
          if (!((self.attr_style & SWT::LEFT_TO_RIGHT)).equal?(0))
            flags |= OS::TPM_RIGHTALIGN
          end
        end
        n_x = @x
        n_y = @y
        if (!@has_location)
          pos = OS._get_message_pos
          n_x = OS._get_x_lparam(pos)
          n_y = OS._get_y_lparam(pos)
        end
        # Feature in Windows.  It is legal use TrackPopupMenu()
        # to display an empty menu as long as menu items are added
        # inside of WM_INITPOPUPMENU.  If no items are added, then
        # TrackPopupMenu() fails and does not send an indication
        # that the menu has been closed.  This is not strictly a
        # bug but leads to unwanted behavior when application code
        # assumes that every WM_INITPOPUPMENU will eventually result
        # in a WM_MENUSELECT, wParam=MAKEWPARAM (0, 0xFFFF), lParam=0 to
        # indicate that the menu has been closed.  The fix is to detect
        # the case when TrackPopupMenu() fails and the number of items in
        # the menu is zero and issue a fake WM_MENUSELECT.
        success = OS._track_popup_menu(@handle, flags, n_x, n_y, 0, hwnd_parent, nil)
        if (!success && (_get_menu_item_count(@handle)).equal?(0))
          OS._send_message(hwnd_parent, OS::WM_MENUSELECT, OS._makewparam(0, 0xffff), 0)
        end
      else
        OS._send_message(hwnd_parent, OS::WM_CANCELMODE, 0, 0)
      end
    end
    
    typesig { [HelpListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when help events are generated for the control,
    # by sending it one of the messages defined in the
    # <code>HelpListener</code> interface.
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
    # @see HelpListener
    # @see #removeHelpListener
    def add_help_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Help, typed_listener)
    end
    
    typesig { [MenuListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when menus are hidden or shown, by sending it
    # one of the messages defined in the <code>MenuListener</code>
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
    # @see MenuListener
    # @see #removeMenuListener
    def add_menu_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Hide, typed_listener)
      add_listener(SWT::Show, typed_listener)
    end
    
    class_module.module_eval {
      typesig { [Control] }
      def check_null(control)
        if ((control).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        return control
      end
      
      typesig { [Menu] }
      def check_null(menu)
        if ((menu).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        return menu
      end
      
      typesig { [MenuItem] }
      def check_null(item)
        if ((item).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        return item
      end
      
      typesig { [::Java::Int] }
      def check_style(style)
        return check_bits(style, SWT::POP_UP, SWT::BAR, SWT::DROP_DOWN, 0, 0, 0)
      end
    }
    
    typesig { [] }
    def create_handle
      if (!(@handle).equal?(0))
        return
      end
      if (!((self.attr_style & SWT::BAR)).equal?(0))
        if (OS::IsPPC)
          # long
          hwnd_shell = @parent.attr_handle
          mbi = SHMENUBARINFO.new
          mbi.attr_cb_size = SHMENUBARINFO.attr_sizeof
          mbi.attr_hwnd_parent = hwnd_shell
          mbi.attr_dw_flags = OS::SHCMBF_HIDDEN
          mbi.attr_n_tool_bar_id = ID_PPC
          mbi.attr_h_inst_res = OS._get_library_handle
          success = OS._shcreate_menu_bar(mbi)
          @hwnd_cb = mbi.attr_hwnd_mb
          if (!success)
            error(SWT::ERROR_NO_HANDLES)
          end
          # Remove the item from the resource file
          OS._send_message(@hwnd_cb, OS::TB_DELETEBUTTON, 0, 0)
          return
        end
        # Note in WinCE SmartPhone.  The SoftBar contains only 2 items.
        # An item can either be a menu or a button.
        # SWT.BAR: creates a SoftBar with 2 menus
        # SWT.BAR | SWT.BUTTON1: creates a SoftBar with 1 button
        # for button1, and a menu for button2
        # SWT.BAR | SWT.BUTTON1 | SWT.BUTTON2: creates a SoftBar with
        # 2 buttons
        if (OS::IsSP)
          # Determine type of menubar
          n_tool_bar_id = 0
          if (!((self.attr_style & SWT::BUTTON1)).equal?(0))
            n_tool_bar_id = (!((self.attr_style & SWT::BUTTON2)).equal?(0)) ? ID_SPBB : ID_SPBM
          else
            n_tool_bar_id = (!((self.attr_style & SWT::BUTTON2)).equal?(0)) ? ID_SPMB : ID_SPMM
          end
          # Create SHMENUBAR
          mbi = SHMENUBARINFO.new
          mbi.attr_cb_size = SHMENUBARINFO.attr_sizeof
          mbi.attr_hwnd_parent = @parent.attr_handle
          mbi.attr_dw_flags = OS::SHCMBF_HIDDEN
          mbi.attr_n_tool_bar_id = n_tool_bar_id
          # as defined in .rc file
          mbi.attr_h_inst_res = OS._get_library_handle
          if (!OS._shcreate_menu_bar(mbi))
            error(SWT::ERROR_NO_HANDLES)
          end
          @hwnd_cb = mbi.attr_hwnd_mb
          # Feature on WinCE SmartPhone.  The SHCMBF_HIDDEN flag causes the
          # SHMENUBAR to not be drawn. However the keyboard events still go
          # through it.  The workaround is to also hide the SHMENUBAR with
          # ShowWindow ().
          OS._show_window(@hwnd_cb, OS::SW_HIDE)
          info = TBBUTTONINFO.new
          info.attr_cb_size = TBBUTTONINFO.attr_sizeof
          info.attr_dw_mask = OS::TBIF_COMMAND
          item = nil
          # Set first item
          if ((n_tool_bar_id).equal?(ID_SPMM) || (n_tool_bar_id).equal?(ID_SPMB))
            # long
            h_menu = OS._send_message(@hwnd_cb, OS::SHCMBM_GETSUBMENU, 0, ID_SPSOFTKEY0)
            # Remove the item from the resource file
            OS._remove_menu(h_menu, 0, OS::MF_BYPOSITION)
            menu = Menu.new(@parent, SWT::DROP_DOWN, h_menu)
            item = MenuItem.new(self, menu, SWT::CASCADE, 0)
          else
            item = MenuItem.new(self, nil, SWT::PUSH, 0)
          end
          info.attr_id_command = @id0 = item.attr_id
          OS._send_message(@hwnd_cb, OS::TB_SETBUTTONINFO, ID_SPSOFTKEY0, info)
          # Set second item
          if ((n_tool_bar_id).equal?(ID_SPMM) || (n_tool_bar_id).equal?(ID_SPBM))
            # long
            h_menu = OS._send_message(@hwnd_cb, OS::SHCMBM_GETSUBMENU, 0, ID_SPSOFTKEY1)
            OS._remove_menu(h_menu, 0, OS::MF_BYPOSITION)
            menu = Menu.new(@parent, SWT::DROP_DOWN, h_menu)
            item = MenuItem.new(self, menu, SWT::CASCADE, 1)
          else
            item = MenuItem.new(self, nil, SWT::PUSH, 1)
          end
          info.attr_id_command = @id1 = item.attr_id
          OS._send_message(@hwnd_cb, OS::TB_SETBUTTONINFO, ID_SPSOFTKEY1, info)
          # Override the Back key.  For some reason, the owner of the menubar
          # must be a Dialog or it won't receive the WM_HOTKEY message.  As
          # a result, Shell on WinCE SP must use the class Dialog.
          dw_mask = OS::SHMBOF_NODEFAULT | OS::SHMBOF_NOTIFY
          # long
          l_param = OS._makelparam(dw_mask, dw_mask)
          OS._send_message(@hwnd_cb, OS::SHCMBM_OVERRIDEKEY, OS::VK_ESCAPE, l_param)
          return
        end
        @handle = OS._create_menu
        if ((@handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        if (OS::IsHPC)
          # long
          hwnd_shell = @parent.attr_handle
          @hwnd_cb = OS._command_bar_create(OS._get_module_handle(nil), hwnd_shell, 1)
          if ((@hwnd_cb).equal?(0))
            error(SWT::ERROR_NO_HANDLES)
          end
          OS._command_bar_show(@hwnd_cb, false)
          OS._command_bar_insert_menubar_ex(@hwnd_cb, 0, @handle, 0)
          # The command bar hosts the 'close' button when the window does not
          # have a caption.
          if (!((@parent.attr_style & SWT::CLOSE)).equal?(0) && ((@parent.attr_style & SWT::TITLE)).equal?(0))
            OS._command_bar_add_adornments(@hwnd_cb, 0, 0)
          end
        end
      else
        @handle = OS._create_popup_menu
        if ((@handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
      end
    end
    
    typesig { [MenuItem, ::Java::Int] }
    def create_item(item, index)
      count = _get_menu_item_count(@handle)
      if (!(0 <= index && index <= count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      self.attr_display.add_menu_item(item)
      success = false
      if ((OS::IsPPC || OS::IsSP) && !(@hwnd_cb).equal?(0))
        if (OS::IsSP)
          return
        end
        lp_button = TBBUTTON.new
        lp_button.attr_id_command = item.attr_id
        lp_button.attr_fs_style = OS::TBSTYLE_AUTOSIZE
        if (!((item.attr_style & SWT::CASCADE)).equal?(0))
          lp_button.attr_fs_style |= OS::TBSTYLE_DROPDOWN | 0x80
        end
        if (!((item.attr_style & SWT::SEPARATOR)).equal?(0))
          lp_button.attr_fs_style = OS::BTNS_SEP
        end
        lp_button.attr_fs_state = OS::TBSTATE_ENABLED
        lp_button.attr_i_bitmap = OS::I_IMAGENONE
        success = !(OS._send_message(@hwnd_cb, OS::TB_INSERTBUTTON, index, lp_button)).equal?(0)
      else
        if (OS::IsWinCE)
          u_flags = OS::MF_BYPOSITION
          lp_new_item = nil
          if (!((item.attr_style & SWT::SEPARATOR)).equal?(0))
            u_flags |= OS::MF_SEPARATOR
          else
            lp_new_item = TCHAR.new(0, " ", true)
          end
          success = OS._insert_menu(@handle, index, u_flags, item.attr_id, lp_new_item)
          if (success)
            info = MENUITEMINFO.new
            info.attr_cb_size = MENUITEMINFO.attr_sizeof
            info.attr_f_mask = OS::MIIM_DATA
            info.attr_dw_item_data = item.attr_id
            success = OS._set_menu_item_info(@handle, index, true, info)
          end
        else
          # Bug in Windows.  For some reason, when InsertMenuItem()
          # is used to insert an item without text, it is not possible
          # to use SetMenuItemInfo() to set the text at a later time.
          # The fix is to insert the item with some text.
          # 
          # Feature in Windows.  When an empty string is used instead
          # of a space and InsertMenuItem() is used to set a submenu
          # before setting text to a non-empty string, the menu item
          # becomes unexpectedly disabled.  The fix is to insert a
          # space.
          # 
          # long
          h_heap = OS._get_process_heap
          buffer = TCHAR.new(0, " ", true)
          byte_count = buffer.length * TCHAR.attr_sizeof
          # long
          psz_text = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
          OS._move_memory(psz_text, buffer, byte_count)
          info = MENUITEMINFO.new
          info.attr_cb_size = MENUITEMINFO.attr_sizeof
          info.attr_f_mask = OS::MIIM_ID | OS::MIIM_TYPE | OS::MIIM_DATA
          info.attr_w_id = item.attr_id
          info.attr_dw_item_data = item.attr_id
          info.attr_f_type = item.widget_style
          info.attr_dw_type_data = psz_text
          success = OS._insert_menu_item(@handle, index, true, info)
          if (!(psz_text).equal?(0))
            OS._heap_free(h_heap, 0, psz_text)
          end
        end
      end
      if (!success)
        self.attr_display.remove_menu_item(item)
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      redraw
    end
    
    typesig { [] }
    def create_widget
      # Bug in IBM JVM 1.3.1.  For some reason, when the following code is called
      # from this method, the JVM issues this error:
      # 
      # JVM Exception 0x2 (subcode 0x0) occurred in thread "main" (TID:0x9F19D8)
      # 
      # In addition, on Windows XP, a dialog appears with following error message,
      # indicating that the problem may be in the JIT:
      # 
      # AppName: java.exe	 AppVer: 0.0.0.0	 ModName: jitc.dll
      # ModVer: 0.0.0.0	 Offset: 000b6912
      # 
      # The fix is to move the code to the caller of this method.
      # 
      # checkOrientation (parent);
      create_handle
      @parent.add_menu(self)
    end
    
    typesig { [] }
    def default_background
      return OS._get_sys_color(OS::COLOR_MENU)
    end
    
    typesig { [] }
    def default_foreground
      return OS._get_sys_color(OS::COLOR_MENUTEXT)
    end
    
    typesig { [] }
    def destroy_accelerators
      @parent.destroy_accelerators
    end
    
    typesig { [MenuItem] }
    def destroy_item(item)
      if (OS::IsWinCE)
        if ((OS::IsPPC || OS::IsSP) && !(@hwnd_cb).equal?(0))
          if (OS::IsSP)
            redraw
            return
          end
          # 64
          index = RJava.cast_to_int(OS._send_message(@hwnd_cb, OS::TB_COMMANDTOINDEX, item.attr_id, 0))
          if ((OS._send_message(@hwnd_cb, OS::TB_DELETEBUTTON, index, 0)).equal?(0))
            error(SWT::ERROR_ITEM_NOT_REMOVED)
          end
          # 64
          count = RJava.cast_to_int(OS._send_message(@hwnd_cb, OS::TB_BUTTONCOUNT, 0, 0))
          if ((count).equal?(0))
            if (!(@image_list).nil?)
              OS._send_message(@handle, OS::TB_SETIMAGELIST, 0, 0)
              self.attr_display.release_image_list(@image_list)
              @image_list = nil
            end
          end
        else
          index = 0
          info = MENUITEMINFO.new
          info.attr_cb_size = MENUITEMINFO.attr_sizeof
          info.attr_f_mask = OS::MIIM_DATA
          while (OS._get_menu_item_info(@handle, index, true, info))
            if ((info.attr_dw_item_data).equal?(item.attr_id))
              break
            end
            index += 1
          end
          if (!(info.attr_dw_item_data).equal?(item.attr_id))
            error(SWT::ERROR_ITEM_NOT_REMOVED)
          end
          if (!OS._delete_menu(@handle, index, OS::MF_BYPOSITION))
            error(SWT::ERROR_ITEM_NOT_REMOVED)
          end
        end
      else
        if (!OS._delete_menu(@handle, item.attr_id, OS::MF_BYCOMMAND))
          error(SWT::ERROR_ITEM_NOT_REMOVED)
        end
      end
      redraw
    end
    
    typesig { [] }
    def destroy_widget
      cascade = @cascade
      # long
      h_menu = @handle
      h_cb = @hwnd_cb
      release_handle
      if (OS::IsWinCE && !(h_cb).equal?(0))
        OS._command_bar_destroy(h_cb)
      else
        if (!(cascade).nil?)
          if (!OS::IsSP)
            cascade.set_menu(nil, true)
          end
        else
          if (!(h_menu).equal?(0))
            OS._destroy_menu(h_menu)
          end
        end
      end
    end
    
    typesig { [Decorations] }
    def fix_menus(new_parent)
      items = get_items
      i = 0
      while i < items.attr_length
        items[i].fix_menus(new_parent)
        i += 1
      end
      @parent.remove_menu(self)
      new_parent.add_menu(self)
      @parent = new_parent
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
    # @since 3.3
    # 
    # public
    def get_background
      check_widget
      return Color.win32_new(self.attr_display, !(@background).equal?(-1) ? @background : default_background)
    end
    
    typesig { [] }
    # Returns the receiver's background image.
    # 
    # @return the background image
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    # 
    # public
    def get_background_image
      check_widget
      return @background_image
    end
    
    typesig { [] }
    # Returns a rectangle describing the receiver's size and location
    # relative to its parent (or its display if its parent is null),
    # unless the receiver is a menu or a shell. In this case, the
    # location is relative to the display.
    # <p>
    # Note that the bounds of a menu or menu item are undefined when
    # the menu is not visible.  This is because most platforms compute
    # the bounds of a menu dynamically just before it is displayed.
    # </p>
    # 
    # @return the receiver's bounding rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    # 
    # public
    def get_bounds
      check_widget
      if (OS::IsWinCE)
        return Rectangle.new(0, 0, 0, 0)
      end
      if (!((self.attr_style & SWT::BAR)).equal?(0))
        if (!(@parent.attr_menu_bar).equal?(self))
          return Rectangle.new(0, 0, 0, 0)
        end
        # long
        hwnd_shell = @parent.attr_handle
        info = MENUBARINFO.new
        info.attr_cb_size = MENUBARINFO.attr_sizeof
        if (OS._get_menu_bar_info(hwnd_shell, OS::OBJID_MENU, 0, info))
          width = info.attr_right - info.attr_left
          height = info.attr_bottom - info.attr_top
          return Rectangle.new(info.attr_left, info.attr_top, width, height)
        end
      else
        count = _get_menu_item_count(@handle)
        if (!(count).equal?(0))
          rect1 = RECT.new
          if (OS._get_menu_item_rect(0, @handle, 0, rect1))
            rect2 = RECT.new
            if (OS._get_menu_item_rect(0, @handle, count - 1, rect2))
              x = rect1.attr_left - 2
              y = rect1.attr_top - 2
              width = (rect2.attr_right - rect2.attr_left) + 4
              height = (rect2.attr_bottom - rect1.attr_top) + 4
              return Rectangle.new(x, y, width, height)
            end
          end
        end
      end
      return Rectangle.new(0, 0, 0, 0)
    end
    
    typesig { [] }
    # Returns the default menu item or null if none has
    # been previously set.
    # 
    # @return the default menu item.
    # 
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_default_item
      check_widget
      if (OS::IsWinCE)
        return nil
      end
      id = OS._get_menu_default_item(@handle, OS::MF_BYCOMMAND, OS::GMDI_USEDISABLED)
      if ((id).equal?(-1))
        return nil
      end
      info = MENUITEMINFO.new
      info.attr_cb_size = MENUITEMINFO.attr_sizeof
      info.attr_f_mask = OS::MIIM_ID
      if (OS._get_menu_item_info(@handle, id, false, info))
        return self.attr_display.get_menu_item(info.attr_w_id)
      end
      return nil
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled, and
    # <code>false</code> otherwise. A disabled menu is typically
    # not selectable from the user interface and draws with an
    # inactive or "grayed" look.
    # 
    # @return the receiver's enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #isEnabled
    def get_enabled
      check_widget
      return ((self.attr_state & DISABLED)).equal?(0)
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
    # public
    def get_foreground
      check_widget
      return Color.win32_new(self.attr_display, !(@foreground).equal?(-1) ? @foreground : default_foreground)
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
      id = 0
      if ((OS::IsPPC || OS::IsSP) && !(@hwnd_cb).equal?(0))
        if (OS::IsPPC)
          lp_button = TBBUTTON.new
          # long
          result = OS._send_message(@hwnd_cb, OS::TB_GETBUTTON, index, lp_button)
          if ((result).equal?(0))
            error(SWT::ERROR_CANNOT_GET_ITEM)
          end
          id = lp_button.attr_id_command
        end
        if (OS::IsSP)
          if (!(0 <= index && index <= 1))
            error(SWT::ERROR_CANNOT_GET_ITEM)
          end
          id = (index).equal?(0) ? @id0 : @id1
        end
      else
        info = MENUITEMINFO.new
        info.attr_cb_size = MENUITEMINFO.attr_sizeof
        info.attr_f_mask = OS::MIIM_DATA
        if (!OS._get_menu_item_info(@handle, index, true, info))
          error(SWT::ERROR_INVALID_RANGE)
        end
        # 64
        id = RJava.cast_to_int(info.attr_dw_item_data)
      end
      return self.attr_display.get_menu_item(id)
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
      return _get_menu_item_count(@handle)
    end
    
    typesig { [] }
    # Returns a (possibly empty) array of <code>MenuItem</code>s which
    # are the items in the receiver.
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
      if ((OS::IsPPC || OS::IsSP) && !(@hwnd_cb).equal?(0))
        if (OS::IsSP)
          result = Array.typed(MenuItem).new(2) { nil }
          result[0] = self.attr_display.get_menu_item(@id0)
          result[1] = self.attr_display.get_menu_item(@id1)
          return result
        end
        # 64
        count = RJava.cast_to_int(OS._send_message(@hwnd_cb, OS::TB_BUTTONCOUNT, 0, 0))
        lp_button = TBBUTTON.new
        result = Array.typed(MenuItem).new(count) { nil }
        i = 0
        while i < count
          OS._send_message(@hwnd_cb, OS::TB_GETBUTTON, i, lp_button)
          result[i] = self.attr_display.get_menu_item(lp_button.attr_id_command)
          i += 1
        end
        return result
      end
      index = 0
      count = 0
      length_ = OS::IsWinCE ? 4 : OS._get_menu_item_count(@handle)
      items = Array.typed(MenuItem).new(length_) { nil }
      info = MENUITEMINFO.new
      info.attr_cb_size = MENUITEMINFO.attr_sizeof
      info.attr_f_mask = OS::MIIM_DATA
      while (OS._get_menu_item_info(@handle, index, true, info))
        if ((count).equal?(items.attr_length))
          new_items = Array.typed(MenuItem).new(count + 4) { nil }
          System.arraycopy(items, 0, new_items, 0, count)
          items = new_items
        end
        # 64
        item = self.attr_display.get_menu_item(RJava.cast_to_int(info.attr_dw_item_data))
        if (!(item).nil?)
          items[((count += 1) - 1)] = item
        end
        index += 1
      end
      if ((count).equal?(items.attr_length))
        return items
      end
      result = Array.typed(MenuItem).new(count) { nil }
      System.arraycopy(items, 0, result, 0, count)
      return result
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_menu_item_count(handle)
      if (OS::IsWinCE)
        if ((OS::IsPPC || OS::IsSP) && !(@hwnd_cb).equal?(0))
          # 64
          return OS::IsSP ? 2 : RJava.cast_to_int(OS._send_message(@hwnd_cb, OS::TB_BUTTONCOUNT, 0, 0))
        end
        count = 0
        info = MENUITEMINFO.new
        info.attr_cb_size = MENUITEMINFO.attr_sizeof
        while (OS._get_menu_item_info(handle, count, true, info))
          count += 1
        end
        return count
      end
      return OS._get_menu_item_count(handle)
    end
    
    typesig { [] }
    def get_name_text
      result = ""
      items = get_items
      length_ = items.attr_length
      if (length_ > 0)
        i = 0
        while i < length_ - 1
          result = result + RJava.cast_to_string(items[i].get_name_text) + ", "
          i += 1
        end
        result = result + RJava.cast_to_string(items[length_ - 1].get_name_text)
      end
      return result
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>Decorations</code>.
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
    # <code>MenuItem</code> or null when the receiver is a
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
      return @cascade
    end
    
    typesig { [] }
    # Returns the receiver's parent item, which must be a
    # <code>Menu</code> or null when the receiver is a
    # root.
    # 
    # @return the receiver's parent item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_parent_menu
      check_widget
      if (!(@cascade).nil?)
        return @cascade.attr_parent
      end
      return nil
    end
    
    typesig { [] }
    # Returns the receiver's shell. For all controls other than
    # shells, this simply returns the control's nearest ancestor
    # shell. Shells return themselves, even if they are children
    # of other shells.
    # 
    # @return the receiver's shell
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getParent
    def get_shell
      check_widget
      return @parent.get_shell
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is visible, and
    # <code>false</code> otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, this method
    # may still indicate that it is considered visible even though
    # it may not actually be showing.
    # </p>
    # 
    # @return the receiver's visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_visible
      check_widget
      if (!((self.attr_style & SWT::BAR)).equal?(0))
        return (self).equal?(@parent.menu_shell.attr_menu_bar)
      end
      if (!((self.attr_style & SWT::POP_UP)).equal?(0))
        popups = self.attr_display.attr_popups
        if ((popups).nil?)
          return false
        end
        i = 0
        while i < popups.attr_length
          if ((popups[i]).equal?(self))
            return true
          end
          i += 1
        end
      end
      shell = get_shell
      menu = shell.attr_active_menu
      while (!(menu).nil? && !(menu).equal?(self))
        menu = menu.get_parent_menu
      end
      return (self).equal?(menu)
    end
    
    typesig { [Image] }
    def image_index(image)
      if ((@hwnd_cb).equal?(0) || (image).nil?)
        return OS::I_IMAGENONE
      end
      if ((@image_list).nil?)
        bounds = image.get_bounds
        @image_list = self.attr_display.get_image_list(self.attr_style & SWT::RIGHT_TO_LEFT, bounds.attr_width, bounds.attr_height)
        index = @image_list.add(image)
        # long
        h_image_list = @image_list.get_handle
        OS._send_message(@hwnd_cb, OS::TB_SETIMAGELIST, 0, h_image_list)
        return index
      end
      index = @image_list.index_of(image)
      if ((index).equal?(-1))
        index = @image_list.add(image)
      else
        @image_list.put(index, image)
      end
      return index
    end
    
    typesig { [MenuItem] }
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
      if (item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(item.attr_parent).equal?(self))
        return -1
      end
      if ((OS::IsPPC || OS::IsSP) && !(@hwnd_cb).equal?(0))
        if (OS::IsPPC)
          # 64
          return RJava.cast_to_int(OS._send_message(@hwnd_cb, OS::TB_COMMANDTOINDEX, item.attr_id, 0))
        end
        if (OS::IsSP)
          if ((item.attr_id).equal?(@id0))
            return 0
          end
          if ((item.attr_id).equal?(@id1))
            return 1
          end
          return -1
        end
      end
      index = 0
      info = MENUITEMINFO.new
      info.attr_cb_size = MENUITEMINFO.attr_sizeof
      info.attr_f_mask = OS::MIIM_DATA
      while (OS._get_menu_item_info(@handle, index, true, info))
        if ((info.attr_dw_item_data).equal?(item.attr_id))
          return index
        end
        index += 1
      end
      return -1
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled and all
    # of the receiver's ancestors are enabled, and <code>false</code>
    # otherwise. A disabled menu is typically not selectable from the
    # user interface and draws with an inactive or "grayed" look.
    # 
    # @return the receiver's enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getEnabled
    def is_enabled
      check_widget
      parent_menu = get_parent_menu
      if ((parent_menu).nil?)
        return get_enabled && @parent.is_enabled
      end
      return get_enabled && parent_menu.is_enabled
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is visible and all
    # of the receiver's ancestors are visible and <code>false</code>
    # otherwise.
    # 
    # @return the receiver's visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getVisible
    def is_visible
      check_widget
      return get_visible
    end
    
    typesig { [] }
    def redraw
      if (!is_visible)
        return
      end
      if (!((self.attr_style & SWT::BAR)).equal?(0))
        self.attr_display.add_bar(self)
      else
        update
      end
    end
    
    typesig { [] }
    def release_handle
      super
      @handle = @hwnd_cb = 0
      @cascade = nil
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      items = get_items
      i = 0
      while i < items.attr_length
        item = items[i]
        if (!(item).nil? && !item.is_disposed)
          if (OS::IsPPC && !(@hwnd_cb).equal?(0))
            item.dispose
          else
            item.release(false)
          end
        end
        i += 1
      end
      super(destroy)
    end
    
    typesig { [] }
    def release_parent
      super
      if (!((self.attr_style & SWT::BAR)).equal?(0))
        self.attr_display.remove_bar(self)
        if ((self).equal?(@parent.attr_menu_bar))
          @parent.set_menu_bar(nil)
        end
      else
        if (!((self.attr_style & SWT::POP_UP)).equal?(0))
          self.attr_display.remove_popup(self)
        end
      end
    end
    
    typesig { [] }
    def release_widget
      super
      @background_image = nil
      if ((@h_brush).equal?(0))
        OS._delete_object(@h_brush)
      end
      @h_brush = 0
      if (OS::IsPPC && !(@hwnd_cb).equal?(0))
        if (!(@image_list).nil?)
          OS._send_message(@hwnd_cb, OS::TB_SETIMAGELIST, 0, 0)
          self.attr_display.release_tool_image_list(@image_list)
          @image_list = nil
        end
      end
      if (!(@parent).nil?)
        @parent.remove_menu(self)
      end
      @parent = nil
    end
    
    typesig { [HelpListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the help events are generated for the control.
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
    # @see HelpListener
    # @see #addHelpListener
    def remove_help_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Help, listener)
    end
    
    typesig { [MenuListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the menu events are generated for the control.
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
    # @see MenuListener
    # @see #addMenuListener
    def remove_menu_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Hide, listener)
      self.attr_event_table.unhook(SWT::Show, listener)
    end
    
    typesig { [Color] }
    # Sets the receiver's background color to the color specified
    # by the argument, or to the default system color for the control
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
    # @since 3.3
    # 
    # public
    def set_background(color)
      check_widget
      pixel = -1
      if (!(color).nil?)
        if (color.is_disposed)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        pixel = color.attr_handle
      end
      if ((pixel).equal?(@background))
        return
      end
      @background = pixel
      update_background
    end
    
    typesig { [Image] }
    # Sets the receiver's background image to the image specified
    # by the argument, or to the default system color for the control
    # if the argument is null.  The background image is tiled to fill
    # the available space.
    # 
    # @param image the new image (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # <li>ERROR_INVALID_ARGUMENT - if the argument is not a bitmap</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    # 
    # public
    def set_background_image(image)
      check_widget
      if (!(image).nil?)
        if (image.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (!(image.attr_type).equal?(SWT::BITMAP))
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
      end
      if ((@background_image).equal?(image))
        return
      end
      @background_image = image
      update_background
    end
    
    typesig { [Color] }
    # Sets the receiver's foreground color to the color specified
    # by the argument, or to the default system color for the control
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
    # @since 3.3
    # 
    # public
    def set_foreground(color)
      check_widget
      pixel = -1
      if (!(color).nil?)
        if (color.is_disposed)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        pixel = color.attr_handle
      end
      if ((pixel).equal?(@foreground))
        return
      end
      @foreground = pixel
      update_foreground
    end
    
    typesig { [MenuItem] }
    # Sets the default menu item to the argument or removes
    # the default emphasis when the argument is <code>null</code>.
    # 
    # @param item the default menu item or null
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the menu item has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_default_item(item)
      check_widget
      new_id = -1
      if (!(item).nil?)
        if (item.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (!(item.attr_parent).equal?(self))
          return
        end
        new_id = item.attr_id
      end
      if (OS::IsWinCE)
        return
      end
      old_id = OS._get_menu_default_item(@handle, OS::MF_BYCOMMAND, OS::GMDI_USEDISABLED)
      if ((new_id).equal?(old_id))
        return
      end
      OS._set_menu_default_item(@handle, new_id, OS::MF_BYCOMMAND)
      redraw
    end
    
    typesig { [::Java::Boolean] }
    # Enables the receiver if the argument is <code>true</code>,
    # and disables it otherwise. A disabled menu is typically
    # not selectable from the user interface and draws with an
    # inactive or "grayed" look.
    # 
    # @param enabled the new enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_enabled(enabled)
      check_widget
      self.attr_state &= ~DISABLED
      if (!enabled)
        self.attr_state |= DISABLED
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the location of the receiver, which must be a popup,
    # to the point specified by the arguments which are relative
    # to the display.
    # <p>
    # Note that this is different from most widgets where the
    # location of the widget is relative to the parent.
    # </p><p>
    # Note that the platform window manager ultimately has control
    # over the location of popup menus.
    # </p>
    # 
    # @param x the new x coordinate for the receiver
    # @param y the new y coordinate for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_location(x, y)
      check_widget
      if (!((self.attr_style & (SWT::BAR | SWT::DROP_DOWN))).equal?(0))
        return
      end
      @x = x
      @y = y
      @has_location = true
    end
    
    typesig { [Point] }
    # Sets the location of the receiver, which must be a popup,
    # to the point specified by the argument which is relative
    # to the display.
    # <p>
    # Note that this is different from most widgets where the
    # location of the widget is relative to the parent.
    # </p><p>
    # Note that the platform window manager ultimately has control
    # over the location of popup menus.
    # </p>
    # 
    # @param location the new location for the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1
    def set_location(location)
      check_widget
      if ((location).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_location(location.attr_x, location.attr_y)
    end
    
    typesig { [::Java::Boolean] }
    # Marks the receiver as visible if the argument is <code>true</code>,
    # and marks it invisible otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, marking
    # it visible may not actually cause it to be displayed.
    # </p>
    # 
    # @param visible the new visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_visible(visible)
      check_widget
      if (!((self.attr_style & (SWT::BAR | SWT::DROP_DOWN))).equal?(0))
        return
      end
      if (visible)
        self.attr_display.add_popup(self)
      else
        self.attr_display.remove_popup(self)
        __set_visible(false)
      end
    end
    
    typesig { [] }
    def update
      if (OS::IsPPC || OS::IsSP)
        return
      end
      if (OS::IsHPC)
        # Each time a menu has been modified, the command menu bar
        # must be redrawn or it won't update properly.  For example,
        # a submenu will not drop down.
        menu_bar = @parent.attr_menu_bar
        if (!(menu_bar).nil?)
          menu = self
          while (!(menu).nil? && !(menu).equal?(menu_bar))
            menu = menu.get_parent_menu
          end
          if ((menu).equal?(menu_bar))
            OS._command_bar_draw_menu_bar(menu_bar.attr_hwnd_cb, 0)
            OS._command_bar_show(menu_bar.attr_hwnd_cb, true)
          end
        end
        return
      end
      if (OS::IsWinCE)
        return
      end
      if (!((self.attr_style & SWT::BAR)).equal?(0))
        if ((self).equal?(@parent.attr_menu_bar))
          OS._draw_menu_bar(@parent.attr_handle)
        end
        return
      end
      if (OS::WIN32_VERSION < OS._version(4, 10))
        return
      end
      has_check = false
      has_image = false
      items = get_items
      i = 0
      while i < items.attr_length
        item = items[i]
        if (!(item.attr_image).nil?)
          if ((has_image = true) && has_check)
            break
          end
        end
        if (!((item.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
          if ((has_check = true) && has_image)
            break
          end
        end
        i += 1
      end
      # Bug in Windows.  If a menu contains items that have
      # images and can be checked, Windows does not include
      # the width of the image and the width of the check when
      # computing the width of the menu.  When the longest item
      # does not have an image, the label and the accelerator
      # text can overlap.  The fix is to use SetMenuItemInfo()
      # to indicate that all items have a bitmap and then include
      # the width of the widest bitmap in WM_MEASURECHILD.
      # 
      # NOTE:  This work around causes problems on Windows 98.
      # Under certain circumstances that have yet to be isolated,
      # some menus can become huge and blank.  For now, do not
      # run the code on Windows 98.
      # 
      # NOTE:  This work around doesn't run on Vista because
      # WM_MEASURECHILD and WM_DRAWITEM cause Vista to lose
      # the menu theme.
      if (!OS::IsWin95)
        if (OS::WIN32_VERSION < OS._version(6, 0))
          info = MENUITEMINFO.new
          info.attr_cb_size = MENUITEMINFO.attr_sizeof
          info.attr_f_mask = OS::MIIM_BITMAP
          i_ = 0
          while i_ < items.attr_length
            item = items[i_]
            if (((self.attr_style & SWT::SEPARATOR)).equal?(0))
              if ((item.attr_image).nil? || !(@foreground).equal?(-1))
                info.attr_hbmp_item = has_image || !(@foreground).equal?(-1) ? OS::HBMMENU_CALLBACK : 0
                OS._set_menu_item_info(@handle, item.attr_id, false, info)
              end
            end
            i_ += 1
          end
        end
      end
      # Update the menu to hide or show the space for bitmaps
      lpcmi = MENUINFO.new
      lpcmi.attr_cb_size = MENUINFO.attr_sizeof
      lpcmi.attr_f_mask = OS::MIM_STYLE
      OS._get_menu_info(@handle, lpcmi)
      if (has_image && !has_check)
        lpcmi.attr_dw_style |= OS::MNS_CHECKORBMP
      else
        lpcmi.attr_dw_style &= ~OS::MNS_CHECKORBMP
      end
      OS._set_menu_info(@handle, lpcmi)
    end
    
    typesig { [] }
    def update_background
      if ((@h_brush).equal?(0))
        OS._delete_object(@h_brush)
      end
      @h_brush = 0
      if (!(@background_image).nil?)
        @h_brush = OS._create_pattern_brush(@background_image.attr_handle)
      else
        if (!(@background).equal?(-1))
          @h_brush = OS._create_solid_brush(@background)
        end
      end
      lpcmi = MENUINFO.new
      lpcmi.attr_cb_size = MENUINFO.attr_sizeof
      lpcmi.attr_f_mask = OS::MIM_BACKGROUND
      lpcmi.attr_hbr_back = @h_brush
      OS._set_menu_info(@handle, lpcmi)
    end
    
    typesig { [] }
    def update_foreground
      if (OS::WIN32_VERSION < OS._version(4, 10))
        return
      end
      info = MENUITEMINFO.new
      info.attr_cb_size = MENUITEMINFO.attr_sizeof
      index = 0
      while (OS._get_menu_item_info(@handle, index, true, info))
        info.attr_f_mask = OS::MIIM_BITMAP
        info.attr_hbmp_item = OS::HBMMENU_CALLBACK
        OS._set_menu_item_info(@handle, index, true, info)
        index += 1
      end
      redraw
    end
    
    private
    alias_method :initialize__menu, :initialize
  end
  
end
