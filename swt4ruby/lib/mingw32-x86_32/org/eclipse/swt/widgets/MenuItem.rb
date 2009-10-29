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
  module MenuItemImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # Instances of this class represent a selectable user interface object
  # that issues notification when pressed and released.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>CHECK, CASCADE, PUSH, RADIO, SEPARATOR</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Arm, Help, Selection</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles CHECK, CASCADE, PUSH, RADIO and SEPARATOR
  # may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class MenuItem < MenuItemImports.const_get :Item
    include_class_members MenuItemImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :menu
    alias_method :attr_menu, :menu
    undef_method :menu
    alias_method :attr_menu=, :menu=
    undef_method :menu=
    
    # long
    attr_accessor :h_bitmap
    alias_method :attr_h_bitmap, :h_bitmap
    undef_method :h_bitmap
    alias_method :attr_h_bitmap=, :h_bitmap=
    undef_method :h_bitmap=
    
    attr_accessor :id
    alias_method :attr_id, :id
    undef_method :id
    alias_method :attr_id=, :id=
    undef_method :id=
    
    attr_accessor :accelerator
    alias_method :attr_accelerator, :accelerator
    undef_method :accelerator
    alias_method :attr_accelerator=, :accelerator=
    undef_method :accelerator=
    
    class_module.module_eval {
      # Feature in Windows.  On Windows 98, it is necessary
      # to add 4 pixels to the width of the image or the image
      # and text are too close.  On other Windows platforms,
      # this causes the text of the longest item to touch the
      # accelerator text.  The fix is to use smaller margins
      # everywhere but on Windows 98.
      const_set_lazy(:MARGIN_WIDTH) { OS::IsWin95 ? 2 : 1 }
      const_attr_reader  :MARGIN_WIDTH
      
      const_set_lazy(:MARGIN_HEIGHT) { OS::IsWin95 ? 2 : 1 }
      const_attr_reader  :MARGIN_HEIGHT
    }
    
    typesig { [Menu, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Menu</code>) and a style value
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
    # @param parent a menu control which will be the parent of the new instance (cannot be null)
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
    # @see SWT#CHECK
    # @see SWT#CASCADE
    # @see SWT#PUSH
    # @see SWT#RADIO
    # @see SWT#SEPARATOR
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @parent = nil
      @menu = nil
      @h_bitmap = 0
      @id = 0
      @accelerator = 0
      super(parent, check_style(style))
      @parent = parent
      parent.create_item(self, parent.get_item_count)
    end
    
    typesig { [Menu, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Menu</code>), a style value
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
    # @param parent a menu control which will be the parent of the new instance (cannot be null)
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
    # @see SWT#CHECK
    # @see SWT#CASCADE
    # @see SWT#PUSH
    # @see SWT#RADIO
    # @see SWT#SEPARATOR
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style, index)
      @parent = nil
      @menu = nil
      @h_bitmap = 0
      @id = 0
      @accelerator = 0
      super(parent, check_style(style))
      @parent = parent
      parent.create_item(self, index)
    end
    
    typesig { [Menu, Menu, ::Java::Int, ::Java::Int] }
    def initialize(parent, menu, style, index)
      @parent = nil
      @menu = nil
      @h_bitmap = 0
      @id = 0
      @accelerator = 0
      super(parent, check_style(style))
      @parent = parent
      @menu = menu
      if (!(menu).nil?)
        menu.attr_cascade = self
      end
      self.attr_display.add_menu_item(self)
    end
    
    typesig { [ArmListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the arm events are generated for the control, by sending
    # it one of the messages defined in the <code>ArmListener</code>
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
    # @see ArmListener
    # @see #removeArmListener
    def add_arm_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Arm, typed_listener)
    end
    
    typesig { [HelpListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the help events are generated for the control, by sending
    # it one of the messages defined in the <code>HelpListener</code>
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
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the menu item is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # When <code>widgetSelected</code> is called, the stateMask field of the event object is valid.
    # <code>widgetDefaultSelected</code> is not called.
    # </p>
    # 
    # @param listener the listener which should be notified when the menu item is selected by the user
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
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        return check_bits(style, SWT::PUSH, SWT::CHECK, SWT::RADIO, SWT::SEPARATOR, SWT::CASCADE, 0)
      end
    }
    
    typesig { [] }
    def destroy_widget
      @parent.destroy_item(self)
      release_handle
    end
    
    typesig { [ACCEL] }
    def fill_accel(accel)
      accel.attr_cmd = accel.attr_key = accel.attr_f_virt = 0
      if ((@accelerator).equal?(0) || !get_enabled)
        return false
      end
      if (!((@accelerator & SWT::COMMAND)).equal?(0))
        return false
      end
      f_virt = OS::FVIRTKEY
      key = @accelerator & SWT::KEY_MASK
      v_key = Display.untranslate_key(key)
      if (!(v_key).equal?(0))
        key = v_key
      else
        case (key)
        # Bug in Windows.  For some reason, VkKeyScan
        # fails to map ESC to VK_ESCAPE and DEL to
        # VK_DELETE.  The fix is to map these keys
        # as a special case.
        when 27
          key = OS::VK_ESCAPE
        when 127
          key = OS::VK_DELETE
        else
          key = Display.wcs_to_mbcs(RJava.cast_to_char(key))
          if ((key).equal?(0))
            return false
          end
          if (OS::IsWinCE)
            # 64
            key = RJava.cast_to_int(OS._char_upper(RJava.cast_to_short(key)))
          else
            v_key = OS._vk_key_scan(RJava.cast_to_short(key)) & 0xff
            if ((v_key).equal?(-1))
              f_virt = 0
            else
              key = v_key
            end
          end
        end
      end
      accel.attr_key = RJava.cast_to_short(key)
      accel.attr_cmd = RJava.cast_to_short(@id)
      accel.attr_f_virt = f_virt
      if (!((@accelerator & SWT::ALT)).equal?(0))
        accel.attr_f_virt |= OS::FALT
      end
      if (!((@accelerator & SWT::SHIFT)).equal?(0))
        accel.attr_f_virt |= OS::FSHIFT
      end
      if (!((@accelerator & SWT::CONTROL)).equal?(0))
        accel.attr_f_virt |= OS::FCONTROL
      end
      return true
    end
    
    typesig { [Decorations] }
    def fix_menus(new_parent)
      if (!(@menu).nil?)
        @menu.fix_menus(new_parent)
      end
    end
    
    typesig { [] }
    # Returns the widget accelerator.  An accelerator is the bit-wise
    # OR of zero or more modifier masks and a key. Examples:
    # <code>SWT.CONTROL | SWT.SHIFT | 'T', SWT.ALT | SWT.F2</code>.
    # The default value is zero, indicating that the menu item does
    # not have an accelerator.
    # 
    # @return the accelerator or 0
    # 
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_accelerator
      check_widget
      return @accelerator
    end
    
    typesig { [] }
    # Returns a rectangle describing the receiver's size and location
    # relative to its parent (or its display if its parent is null).
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return Rectangle.new(0, 0, 0, 0)
      end
      if (!((@parent.attr_style & SWT::BAR)).equal?(0))
        shell = @parent.attr_parent
        if (!(shell.attr_menu_bar).equal?(@parent))
          return Rectangle.new(0, 0, 0, 0)
        end
        # long
        hwnd_shell = shell.attr_handle
        info1 = MENUBARINFO.new
        info1.attr_cb_size = MENUBARINFO.attr_sizeof
        if (!OS._get_menu_bar_info(hwnd_shell, OS::OBJID_MENU, 1, info1))
          return Rectangle.new(0, 0, 0, 0)
        end
        info2 = MENUBARINFO.new
        info2.attr_cb_size = MENUBARINFO.attr_sizeof
        if (!OS._get_menu_bar_info(hwnd_shell, OS::OBJID_MENU, index + 1, info2))
          return Rectangle.new(0, 0, 0, 0)
        end
        x = info2.attr_left - info1.attr_left
        y = info2.attr_top - info1.attr_top
        width = info2.attr_right - info2.attr_left
        height = info2.attr_bottom - info2.attr_top
        return Rectangle.new(x, y, width, height)
      else
        # long
        h_menu = @parent.attr_handle
        rect1 = RECT.new
        if (!OS._get_menu_item_rect(0, h_menu, 0, rect1))
          return Rectangle.new(0, 0, 0, 0)
        end
        rect2 = RECT.new
        if (!OS._get_menu_item_rect(0, h_menu, index, rect2))
          return Rectangle.new(0, 0, 0, 0)
        end
        x = rect2.attr_left - rect1.attr_left + 2
        y = rect2.attr_top - rect1.attr_top + 2
        width = rect2.attr_right - rect2.attr_left
        height = rect2.attr_bottom - rect2.attr_top
        return Rectangle.new(x, y, width, height)
      end
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled, and
    # <code>false</code> otherwise. A disabled menu item is typically
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
      if ((OS::IsPPC || OS::IsSP) && !(@parent.attr_hwnd_cb).equal?(0))
        # long
        hwnd_cb = @parent.attr_hwnd_cb
        info = TBBUTTONINFO.new
        info.attr_cb_size = TBBUTTONINFO.attr_sizeof
        info.attr_dw_mask = OS::TBIF_STATE
        OS._send_message(hwnd_cb, OS::TB_GETBUTTONINFO, @id, info)
        return !((info.attr_fs_state & OS::TBSTATE_ENABLED)).equal?(0)
      end
      # Feature in Windows.  For some reason, when the menu item
      # is a separator, GetMenuItemInfo() always indicates that
      # the item is not enabled.  The fix is to track the enabled
      # state for separators.
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return ((self.attr_state & DISABLED)).equal?(0)
      end
      # long
      h_menu = @parent.attr_handle
      info = MENUITEMINFO.new
      info.attr_cb_size = MENUITEMINFO.attr_sizeof
      info.attr_f_mask = OS::MIIM_STATE
      success = false
      if (OS::IsWinCE)
        index = @parent.index_of(self)
        if ((index).equal?(-1))
          error(SWT::ERROR_CANNOT_GET_ENABLED)
        end
        success = OS._get_menu_item_info(h_menu, index, true, info)
      else
        success = OS._get_menu_item_info(h_menu, @id, false, info)
      end
      if (!success)
        error(SWT::ERROR_CANNOT_GET_ENABLED)
      end
      return ((info.attr_f_state & (OS::MFS_DISABLED | OS::MFS_GRAYED))).equal?(0)
    end
    
    typesig { [] }
    # Returns the receiver's cascade menu if it has one or null
    # if it does not. Only <code>CASCADE</code> menu items can have
    # a pull down menu. The sequence of key strokes, button presses
    # and/or button releases that are used to request a pull down
    # menu is platform specific.
    # 
    # @return the receiver's menu
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_menu
      check_widget
      return @menu
    end
    
    typesig { [] }
    def get_name_text
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return "|"
      end
      return super
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>Menu</code>.
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
    # Returns <code>true</code> if the receiver is selected,
    # and false otherwise.
    # <p>
    # When the receiver is of type <code>CHECK</code> or <code>RADIO</code>,
    # it is selected when it is checked.
    # 
    # @return the selection state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      if (((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
        return false
      end
      if ((OS::IsPPC || OS::IsSP) && !(@parent.attr_hwnd_cb).equal?(0))
        return false
      end
      # long
      h_menu = @parent.attr_handle
      info = MENUITEMINFO.new
      info.attr_cb_size = MENUITEMINFO.attr_sizeof
      info.attr_f_mask = OS::MIIM_STATE
      success = OS._get_menu_item_info(h_menu, @id, false, info)
      if (!success)
        error(SWT::ERROR_CANNOT_GET_SELECTION)
      end
      return !((info.attr_f_state & OS::MFS_CHECKED)).equal?(0)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled and all
    # of the receiver's ancestors are enabled, and <code>false</code>
    # otherwise. A disabled menu item is typically not selectable from the
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
      return get_enabled && @parent.is_enabled
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (!(@menu).nil?)
        @menu.release(false)
        @menu = nil
      end
      super(destroy)
    end
    
    typesig { [] }
    def release_handle
      super
      @parent = nil
      @id = -1
    end
    
    typesig { [] }
    def release_parent
      super
      if (!(@menu).nil?)
        @menu.dispose
      end
      @menu = nil
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@h_bitmap).equal?(0))
        OS._delete_object(@h_bitmap)
      end
      @h_bitmap = 0
      if (!(@accelerator).equal?(0))
        @parent.destroy_accelerators
      end
      @accelerator = 0
      self.attr_display.remove_menu_item(self)
    end
    
    typesig { [ArmListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the arm events are generated for the control.
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
    # @see ArmListener
    # @see #addArmListener
    def remove_arm_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Arm, listener)
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
    
    typesig { [SelectionListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the control is selected by the user.
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
    
    typesig { [] }
    def select_radio
      index = 0
      items = @parent.get_items
      while (index < items.attr_length && !(items[index]).equal?(self))
        index += 1
      end
      i = index - 1
      while (i >= 0 && items[i].set_radio_selection(false))
        (i -= 1)
      end
      j = index + 1
      while (j < items.attr_length && items[j].set_radio_selection(false))
        j += 1
      end
      set_selection(true)
    end
    
    typesig { [::Java::Int] }
    # Sets the widget accelerator.  An accelerator is the bit-wise
    # OR of zero or more modifier masks and a key. Examples:
    # <code>SWT.MOD1 | SWT.MOD2 | 'T', SWT.MOD3 | SWT.F2</code>.
    # <code>SWT.CONTROL | SWT.SHIFT | 'T', SWT.ALT | SWT.F2</code>.
    # The default value is zero, indicating that the menu item does
    # not have an accelerator.
    # 
    # @param accelerator an integer that is the bit-wise OR of masks and a key
    # 
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_accelerator(accelerator)
      check_widget
      if ((@accelerator).equal?(accelerator))
        return
      end
      @accelerator = accelerator
      @parent.destroy_accelerators
    end
    
    typesig { [::Java::Boolean] }
    # Enables the receiver if the argument is <code>true</code>,
    # and disables it otherwise. A disabled menu item is typically
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
      if ((OS::IsPPC || OS::IsSP) && !(@parent.attr_hwnd_cb).equal?(0))
        # long
        hwnd_cb = @parent.attr_hwnd_cb
        info = TBBUTTONINFO.new
        info.attr_cb_size = TBBUTTONINFO.attr_sizeof
        info.attr_dw_mask = OS::TBIF_STATE
        OS._send_message(hwnd_cb, OS::TB_GETBUTTONINFO, @id, info)
        info.attr_fs_state &= ~OS::TBSTATE_ENABLED
        if (enabled)
          info.attr_fs_state |= OS::TBSTATE_ENABLED
        end
        OS._send_message(hwnd_cb, OS::TB_SETBUTTONINFO, @id, info)
      else
        # Feature in Windows.  For some reason, when the menu item
        # is a separator, GetMenuItemInfo() always indicates that
        # the item is not enabled.  The fix is to track the enabled
        # state for separators.
        if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
          if (enabled)
            self.attr_state &= ~DISABLED
          else
            self.attr_state |= DISABLED
          end
        end
        # long
        h_menu = @parent.attr_handle
        if (OS::IsWinCE)
          index = @parent.index_of(self)
          if ((index).equal?(-1))
            return
          end
          u_enable = OS::MF_BYPOSITION | (enabled ? OS::MF_ENABLED : OS::MF_GRAYED)
          OS._enable_menu_item(h_menu, index, u_enable)
        else
          info = MENUITEMINFO.new
          info.attr_cb_size = MENUITEMINFO.attr_sizeof
          info.attr_f_mask = OS::MIIM_STATE
          success = OS._get_menu_item_info(h_menu, @id, false, info)
          if (!success)
            error(SWT::ERROR_CANNOT_SET_ENABLED)
          end
          bits = OS::MFS_DISABLED | OS::MFS_GRAYED
          if (enabled)
            if (((info.attr_f_state & bits)).equal?(0))
              return
            end
            info.attr_f_state &= ~bits
          else
            if (((info.attr_f_state & bits)).equal?(bits))
              return
            end
            info.attr_f_state |= bits
          end
          success = OS._set_menu_item_info(h_menu, @id, false, info)
          if (!success)
            # Bug in Windows.  For some reason SetMenuItemInfo(),
            # returns a fail code when setting the enabled or
            # selected state of a default item, but sets the
            # state anyway.  The fix is to ignore the error.
            # 
            # NOTE:  This only happens on Vista.
            if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
              success = (@id).equal?(OS._get_menu_default_item(h_menu, OS::MF_BYCOMMAND, OS::GMDI_USEDISABLED))
            end
            if (!success)
              error(SWT::ERROR_CANNOT_SET_ENABLED)
            end
          end
        end
      end
      @parent.destroy_accelerators
      @parent.redraw
    end
    
    typesig { [Image] }
    # Sets the image the receiver will display to the argument.
    # <p>
    # Note: This operation is a hint and is not supported on
    # platforms that do not have this concept (for example, Windows NT).
    # Furthermore, some platforms (such as GTK), cannot display both
    # a check box and an image at the same time.  Instead, they hide
    # the image and display the check box.
    # </p>
    # 
    # @param image the image to display
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_image(image)
      check_widget
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      super(image)
      if (OS::IsWinCE)
        if ((OS::IsPPC || OS::IsSP) && !(@parent.attr_hwnd_cb).equal?(0))
          # long
          hwnd_cb = @parent.attr_hwnd_cb
          info = TBBUTTONINFO.new
          info.attr_cb_size = TBBUTTONINFO.attr_sizeof
          info.attr_dw_mask = OS::TBIF_IMAGE
          info.attr_i_image = @parent.image_index(image)
          OS._send_message(hwnd_cb, OS::TB_SETBUTTONINFO, @id, info)
        end
        return
      end
      if (OS::WIN32_VERSION < OS._version(4, 10))
        return
      end
      info = MENUITEMINFO.new
      info.attr_cb_size = MENUITEMINFO.attr_sizeof
      info.attr_f_mask = OS::MIIM_BITMAP
      if (!(@parent.attr_foreground).equal?(-1))
        info.attr_hbmp_item = OS::HBMMENU_CALLBACK
      else
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
          if (!(@h_bitmap).equal?(0))
            OS._delete_object(@h_bitmap)
          end
          info.attr_hbmp_item = @h_bitmap = !(image).nil? ? Display.create32bit_dib(image) : 0
        else
          info.attr_hbmp_item = !(image).nil? ? OS::HBMMENU_CALLBACK : 0
        end
      end
      # long
      h_menu = @parent.attr_handle
      OS._set_menu_item_info(h_menu, @id, false, info)
      @parent.redraw
    end
    
    typesig { [Menu] }
    # Sets the receiver's pull down menu to the argument.
    # Only <code>CASCADE</code> menu items can have a
    # pull down menu. The sequence of key strokes, button presses
    # and/or button releases that are used to request a pull down
    # menu is platform specific.
    # <p>
    # Note: Disposing of a menu item that has a pull down menu
    # will dispose of the menu.  To avoid this behavior, set the
    # menu to null before the menu item is disposed.
    # </p>
    # 
    # @param menu the new pull down menu
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_MENU_NOT_DROP_DOWN - if the menu is not a drop down menu</li>
    # <li>ERROR_MENUITEM_NOT_CASCADE - if the menu item is not a <code>CASCADE</code></li>
    # <li>ERROR_INVALID_ARGUMENT - if the menu has been disposed</li>
    # <li>ERROR_INVALID_PARENT - if the menu is not in the same widget tree</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_menu(menu)
      check_widget
      # Check to make sure the new menu is valid
      if (((self.attr_style & SWT::CASCADE)).equal?(0))
        error(SWT::ERROR_MENUITEM_NOT_CASCADE)
      end
      if (!(menu).nil?)
        if (menu.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (((menu.attr_style & SWT::DROP_DOWN)).equal?(0))
          error(SWT::ERROR_MENU_NOT_DROP_DOWN)
        end
        if (!(menu.attr_parent).equal?(@parent.attr_parent))
          error(SWT::ERROR_INVALID_PARENT)
        end
      end
      set_menu(menu, false)
    end
    
    typesig { [Menu, ::Java::Boolean] }
    def set_menu(menu, dispose_)
      # Assign the new menu
      old_menu = @menu
      if ((old_menu).equal?(menu))
        return
      end
      if (!(old_menu).nil?)
        old_menu.attr_cascade = nil
      end
      @menu = menu
      # Assign the new menu in the OS
      if ((OS::IsPPC || OS::IsSP) && !(@parent.attr_hwnd_cb).equal?(0))
        if (OS::IsPPC)
          # long
          hwnd_cb = @parent.attr_hwnd_cb
          # long
          h_menu = (menu).nil? ? 0 : menu.attr_handle
          OS._send_message(hwnd_cb, OS::SHCMBM_SETSUBMENU, @id, h_menu)
        end
        if (OS::IsSP)
          error(SWT::ERROR_CANNOT_SET_MENU)
        end
      else
        # long
        h_menu = @parent.attr_handle
        info = MENUITEMINFO.new
        info.attr_cb_size = MENUITEMINFO.attr_sizeof
        info.attr_f_mask = OS::MIIM_DATA
        index = 0
        while (OS._get_menu_item_info(h_menu, index, true, info))
          if ((info.attr_dw_item_data).equal?(@id))
            break
          end
          index += 1
        end
        if (!(info.attr_dw_item_data).equal?(@id))
          return
        end
        cch = 128
        # long
        h_heap = OS._get_process_heap
        byte_count = cch * TCHAR.attr_sizeof
        # long
        psz_text = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
        info.attr_f_mask = OS::MIIM_STATE | OS::MIIM_ID | OS::MIIM_DATA
        # Bug in Windows.  When GetMenuItemInfo() is used to get the text,
        # for an item that has a bitmap set using MIIM_BITMAP, the text is
        # not returned.  This means that when SetMenuItemInfo() is used to
        # set the submenu and the current menu state, the text is lost.
        # The fix is use MIIM_BITMAP and MIIM_STRING.
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(4, 10))
          info.attr_f_mask |= OS::MIIM_BITMAP | OS::MIIM_STRING
        else
          info.attr_f_mask |= OS::MIIM_TYPE
        end
        info.attr_dw_type_data = psz_text
        info.attr_cch = cch
        success = OS._get_menu_item_info(h_menu, index, true, info)
        if (!(menu).nil?)
          menu.attr_cascade = self
          info.attr_f_mask |= OS::MIIM_SUBMENU
          info.attr_h_sub_menu = menu.attr_handle
        end
        if (OS::IsWinCE)
          OS._remove_menu(h_menu, index, OS::MF_BYPOSITION)
          # On WinCE, InsertMenuItem() is not available.  The fix is to
          # use SetMenuItemInfo() but this call does not set the menu item
          # state and submenu.  The fix is to use InsertMenu() to insert
          # the item, SetMenuItemInfo() to set the string and EnableMenuItem()
          # and CheckMenuItem() to set the state.
          # 
          # long
          u_idnew_item = @id
          u_flags = OS::MF_BYPOSITION
          if (!(menu).nil?)
            u_flags |= OS::MF_POPUP
            u_idnew_item = menu.attr_handle
          end
          lp_new_item = TCHAR.new(0, " ", true)
          success = OS._insert_menu(h_menu, index, u_flags, u_idnew_item, lp_new_item)
          if (success)
            info.attr_f_mask = OS::MIIM_DATA | OS::MIIM_TYPE
            success = OS._set_menu_item_info(h_menu, index, true, info)
            if (!((info.attr_f_state & (OS::MFS_DISABLED | OS::MFS_GRAYED))).equal?(0))
              OS._enable_menu_item(h_menu, index, OS::MF_BYPOSITION | OS::MF_GRAYED)
            end
            if (!((info.attr_f_state & OS::MFS_CHECKED)).equal?(0))
              OS._check_menu_item(h_menu, index, OS::MF_BYPOSITION | OS::MF_CHECKED)
            end
          end
        else
          if (dispose_ || (old_menu).nil?)
            success = OS._set_menu_item_info(h_menu, index, true, info)
          else
            # Feature in Windows.  When SetMenuItemInfo () is used to
            # set a submenu and the menu item already has a submenu,
            # Windows destroys the previous menu.  This is undocumented
            # and unexpected but not necessarily wrong.  The fix is to
            # remove the item with RemoveMenu () which does not destroy
            # the submenu and then insert the item with InsertMenuItem ().
            OS._remove_menu(h_menu, index, OS::MF_BYPOSITION)
            success = OS._insert_menu_item(h_menu, index, true, info)
          end
        end
        if (!(psz_text).equal?(0))
          OS._heap_free(h_heap, 0, psz_text)
        end
        if (!success)
          error(SWT::ERROR_CANNOT_SET_MENU)
        end
      end
      @parent.destroy_accelerators
    end
    
    typesig { [::Java::Boolean] }
    def set_radio_selection(value)
      if (((self.attr_style & SWT::RADIO)).equal?(0))
        return false
      end
      if (!(get_selection).equal?(value))
        set_selection(value)
        post_event___org_eclipse_swt_widgets_menu_item_1(SWT::Selection)
      end
      return true
    end
    
    typesig { [::Java::Boolean] }
    # Sets the selection state of the receiver.
    # <p>
    # When the receiver is of type <code>CHECK</code> or <code>RADIO</code>,
    # it is selected when it is checked.
    # 
    # @param selected the new selection state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(selected)
      check_widget
      if (((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
        return
      end
      if ((OS::IsPPC || OS::IsSP) && !(@parent.attr_hwnd_cb).equal?(0))
        return
      end
      # long
      h_menu = @parent.attr_handle
      if (OS::IsWinCE)
        index = @parent.index_of(self)
        if ((index).equal?(-1))
          return
        end
        u_check = OS::MF_BYPOSITION | (selected ? OS::MF_CHECKED : OS::MF_UNCHECKED)
        OS._check_menu_item(h_menu, index, u_check)
      else
        info = MENUITEMINFO.new
        info.attr_cb_size = MENUITEMINFO.attr_sizeof
        info.attr_f_mask = OS::MIIM_STATE
        success = OS._get_menu_item_info(h_menu, @id, false, info)
        if (!success)
          error(SWT::ERROR_CANNOT_SET_SELECTION)
        end
        info.attr_f_state &= ~OS::MFS_CHECKED
        if (selected)
          info.attr_f_state |= OS::MFS_CHECKED
        end
        success = OS._set_menu_item_info(h_menu, @id, false, info)
        if (!success)
          # Bug in Windows.  For some reason SetMenuItemInfo(),
          # returns a fail code when setting the enabled or
          # selected state of a default item, but sets the
          # state anyway.  The fix is to ignore the error.
          # 
          # NOTE:  This only happens on Vista.
          if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
            success = (@id).equal?(OS._get_menu_default_item(h_menu, OS::MF_BYCOMMAND, OS::GMDI_USEDISABLED))
          end
          if (!success)
            error(SWT::ERROR_CANNOT_SET_SELECTION)
          end
        end
      end
      @parent.redraw
    end
    
    typesig { [String] }
    # Sets the receiver's text. The string may include
    # the mnemonic character and accelerator text.
    # <p>
    # Mnemonics are indicated by an '&amp;' that causes the next
    # character to be the mnemonic.  When the user presses a
    # key sequence that matches the mnemonic, a selection
    # event occurs. On most platforms, the mnemonic appears
    # underlined but may be emphasised in a platform specific
    # manner.  The mnemonic indicator character '&amp;' can be
    # escaped by doubling it in the string, causing a single
    # '&amp;' to be displayed.
    # </p>
    # <p>
    # Accelerator text is indicated by the '\t' character.
    # On platforms that support accelerator text, the text
    # that follows the '\t' character is displayed to the user,
    # typically indicating the key stroke that will cause
    # the item to become selected.  On most platforms, the
    # accelerator text appears right aligned in the menu.
    # Setting the accelerator text does not install the
    # accelerator key sequence. The accelerator key sequence
    # is installed using #setAccelerator.
    # </p>
    # 
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
    # @see #setAccelerator
    def set_text(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      if ((self.attr_text == string))
        return
      end
      super(string)
      # long
      h_heap = OS._get_process_heap
      # long
      psz_text = 0
      success = false
      if ((OS::IsPPC || OS::IsSP) && !(@parent.attr_hwnd_cb).equal?(0))
        # Bug in WinCE PPC.  Tool items on the menubar don't resize
        # correctly when the character '&' is used (even when it
        # is a sequence '&&').  The fix is to remove all '&' from
        # the string.
        if (!(string.index_of(Character.new(?&.ord))).equal?(-1))
          length_ = string.length
          text = CharArray.new(length_)
          string.get_chars(0, length_, text, 0)
          i = 0
          j = 0
          i = 0
          while i < length_
            if (!(text[i]).equal?(Character.new(?&.ord)))
              text[((j += 1) - 1)] = text[i]
            end
            i += 1
          end
          if (j < i)
            string = RJava.cast_to_string(String.new(text, 0, j))
          end
        end
        # Use the character encoding for the default locale
        buffer = TCHAR.new(0, string, true)
        byte_count = buffer.length * TCHAR.attr_sizeof
        psz_text = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
        OS._move_memory(psz_text, buffer, byte_count)
        # long
        hwnd_cb = @parent.attr_hwnd_cb
        info2 = TBBUTTONINFO.new
        info2.attr_cb_size = TBBUTTONINFO.attr_sizeof
        info2.attr_dw_mask = OS::TBIF_TEXT
        info2.attr_psz_text = psz_text
        success = !(OS._send_message(hwnd_cb, OS::TB_SETBUTTONINFO, @id, info2)).equal?(0)
      else
        info = MENUITEMINFO.new
        info.attr_cb_size = MENUITEMINFO.attr_sizeof
        # long
        h_menu = @parent.attr_handle
        # Use the character encoding for the default locale
        buffer = TCHAR.new(0, string, true)
        byte_count = buffer.length * TCHAR.attr_sizeof
        psz_text = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
        OS._move_memory(psz_text, buffer, byte_count)
        # Bug in Windows 2000.  For some reason, when MIIM_TYPE is set
        # on a menu item that also has MIIM_BITMAP, the MIIM_TYPE clears
        # the MIIM_BITMAP style.  The fix is to use MIIM_STRING.
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(4, 10))
          info.attr_f_mask = OS::MIIM_STRING
        else
          info.attr_f_mask = OS::MIIM_TYPE
          info.attr_f_type = widget_style
        end
        info.attr_dw_type_data = psz_text
        success = OS._set_menu_item_info(h_menu, @id, false, info)
      end
      if (!(psz_text).equal?(0))
        OS._heap_free(h_heap, 0, psz_text)
      end
      if (!success)
        error(SWT::ERROR_CANNOT_SET_TEXT)
      end
      @parent.redraw
    end
    
    typesig { [] }
    def widget_style
      bits = 0
      shell = @parent.attr_parent
      if (!((shell.attr_style & SWT::MIRRORED)).equal?(0))
        if (!((@parent.attr_style & SWT::LEFT_TO_RIGHT)).equal?(0))
          bits |= OS::MFT_RIGHTJUSTIFY | OS::MFT_RIGHTORDER
        end
      else
        if (!((@parent.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
          bits |= OS::MFT_RIGHTJUSTIFY | OS::MFT_RIGHTORDER
        end
      end
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return bits | OS::MFT_SEPARATOR
      end
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        return bits | OS::MFT_RADIOCHECK
      end
      return bits | OS::MFT_STRING
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_command_child(w_param, l_param)
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        set_selection(!get_selection)
      else
        if (!((self.attr_style & SWT::RADIO)).equal?(0))
          if (!((@parent.get_style & SWT::NO_RADIO_GROUP)).equal?(0))
            set_selection(!get_selection)
          else
            select_radio
          end
        end
      end
      event = Event.new
      set_input_state(event, SWT::Selection)
      post_event___org_eclipse_swt_widgets_menu_item_3(SWT::Selection, event)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_draw_child(w_param, l_param)
      struct = DRAWITEMSTRUCT.new
      OS._move_memory(struct, l_param, DRAWITEMSTRUCT.attr_sizeof)
      if (!(self.attr_image).nil?)
        data = SwtGCData.new
        data.attr_device = self.attr_display
        gc = SwtGC.win32_new(struct.attr_h_dc, data)
        # Bug in Windows.  When a bitmap is included in the
        # menu bar, the HDC seems to already include the left
        # coordinate.  The fix is to ignore this value when
        # the item is in a menu bar.
        x = !((@parent.attr_style & SWT::BAR)).equal?(0) ? MARGIN_WIDTH * 2 : struct.attr_left
        image = get_enabled ? self.attr_image : Image.new(self.attr_display, self.attr_image, SWT::IMAGE_DISABLE)
        gc.draw_image(image, x, struct.attr_top + MARGIN_HEIGHT)
        if (!(self.attr_image).equal?(image))
          image.dispose
        end
        gc.dispose
      end
      if (!(@parent.attr_foreground).equal?(-1))
        OS._set_text_color(struct.attr_h_dc, @parent.attr_foreground)
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_measure_child(w_param, l_param)
      struct = MEASUREITEMSTRUCT.new
      OS._move_memory(struct, l_param, MEASUREITEMSTRUCT.attr_sizeof)
      width = 0
      height = 0
      if (!(self.attr_image).nil?)
        rect = self.attr_image.get_bounds
        width = rect.attr_width
        height = rect.attr_height
      else
        # Bug in Windows.  If a menu contains items that have
        # images and can be checked, Windows does not include
        # the width of the image and the width of the check when
        # computing the width of the menu.  When the longest item
        # does not have an image, the label and the accelerator
        # text can overlap.  The fix is to use SetMenuItemInfo()
        # to indicate that all items have a bitmap and then include
        # the width of the widest bitmap in WM_MEASURECHILD.
        lpcmi = MENUINFO.new
        lpcmi.attr_cb_size = MENUINFO.attr_sizeof
        lpcmi.attr_f_mask = OS::MIM_STYLE
        # long
        h_menu = @parent.attr_handle
        OS._get_menu_info(h_menu, lpcmi)
        if (((lpcmi.attr_dw_style & OS::MNS_CHECKORBMP)).equal?(0))
          items = @parent.get_items
          i = 0
          while i < items.attr_length
            item = items[i]
            if (!(item.attr_image).nil?)
              rect = item.attr_image.get_bounds
              width = Math.max(width, rect.attr_width)
            end
            i += 1
          end
        end
      end
      if (!(width).equal?(0) || !(height).equal?(0))
        struct.attr_item_width = width + MARGIN_WIDTH * 2
        struct.attr_item_height = height + MARGIN_HEIGHT * 2
        OS._move_memory(l_param, struct, MEASUREITEMSTRUCT.attr_sizeof)
      end
      return nil
    end
    
    private
    alias_method :initialize__menu_item, :initialize
  end
  
end
