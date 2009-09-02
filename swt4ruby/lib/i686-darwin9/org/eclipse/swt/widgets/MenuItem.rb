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
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
    
    attr_accessor :ns_item
    alias_method :attr_ns_item, :ns_item
    undef_method :ns_item
    alias_method :attr_ns_item=, :ns_item=
    undef_method :ns_item=
    
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
    
    attr_accessor :accelerator
    alias_method :attr_accelerator, :accelerator
    undef_method :accelerator
    alias_method :attr_accelerator=, :accelerator=
    undef_method :accelerator=
    
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
      @ns_item = nil
      @parent = nil
      @menu = nil
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
      @ns_item = nil
      @parent = nil
      @menu = nil
      @accelerator = 0
      super(parent, check_style(style))
      @parent = parent
      parent.create_item(self, index)
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
    def create_empty_menu
      if (!((@parent.attr_style & SWT::BAR)).equal?(0))
        return SWTMenu.new.alloc.init
      end
      return nil
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(@ns_item)
    end
    
    typesig { [] }
    def destroy_widget
      @parent.destroy_item(self)
      release_handle
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
      return ((self.attr_state & DISABLED)).equal?(0)
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
      return (@ns_item.state).equal?(OS::NSOnState)
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
    
    typesig { [::Java::Int] }
    def key_char(key)
      # TODO - use the NS key constants
      case (key)
      # case ' ': return OS.kMenuBlankGlyph;
      # case ' ': return OS.kMenuSpaceGlyph;
      # case SWT.CAPS_LOCK: return ??;
      when SWT::BS
        return OS::NSBackspaceCharacter
      when SWT::CR
        return OS::NSCarriageReturnCharacter
      when SWT::DEL
        return OS::NSDeleteCharacter
      when SWT::ESC
        return SWT::ESC
      when SWT::LF
        return OS::NSNewlineCharacter
      when SWT::TAB
        return OS::NSTabCharacter
      when SWT::ALT
        return 0x2325
      when SWT::SHIFT
        return 0x21e7
      when SWT::CONTROL
        return 0xf2303
      when SWT::COMMAND
        return 0x2318
      when SWT::ARROW_UP
        return 0x2191
      when SWT::ARROW_DOWN
        return 0x2193
      when SWT::ARROW_LEFT
        return 0x2190
      when SWT::ARROW_RIGHT
        return 0x2192
      when SWT::PAGE_UP
        return 0x21de
      when SWT::PAGE_DOWN
        return 0x21df
      when SWT::KEYPAD_CR
        return OS::NSEnterCharacter
      when SWT::HELP
        return OS::NSHelpFunctionKey
      when SWT::HOME
        return 0xf729
      when SWT::END_
        return 0xf72b
      when SWT::F1
        return 0xf704
      when SWT::F2
        return 0xf705
      when SWT::F3
        return 0xf706
      when SWT::F4
        return 0xf707
      when SWT::F5
        return 0xf708
      when SWT::F6
        return 0xf709
      when SWT::F7
        return 0xf70a
      when SWT::F8
        return 0xf70b
      when SWT::F9
        return 0xf70c
      when SWT::F10
        return 0xf70d
      when SWT::F11
        return 0xf70e
      when SWT::F12
        return 0xf70f
      when SWT::F13
        return 0xf710
      when SWT::F14
        return 0xf711
      when SWT::F15
        return 0xf712
      end
      # The following lines are intentionally commented.
      # 
      # case SWT.INSERT: return ??;
      return 0
    end
    
    typesig { [] }
    def register
      super
      self.attr_display.add_widget(@ns_item, self)
    end
    
    typesig { [] }
    def release_handle
      super
      if (!(@ns_item).nil?)
        @ns_item.release
      end
      @ns_item = nil
      @parent = nil
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
    def release_widget
      super
      @accelerator = 0
      if ((self).equal?(@parent.attr_default_item))
        @parent.attr_default_item = nil
      end
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
    
    typesig { [] }
    def send_selection
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
      ns_event = NSApplication.shared_application.current_event
      if (!(ns_event).nil?)
        set_input_state(event, ns_event, 0)
      end
      post_event(SWT::Selection, event)
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
      key = accelerator & SWT::KEY_MASK
      virtual_key = key_char(key)
      string = nil
      if (!(virtual_key).equal?(0))
        string = NSString.string_with(RJava.cast_to_string(RJava.cast_to_char(virtual_key)) + "")
      else
        string = NSString.string_with(RJava.cast_to_string(RJava.cast_to_char(key)) + "")
      end
      @ns_item.set_key_equivalent(string.lowercase_string)
      mask = 0
      if (!((accelerator & SWT::SHIFT)).equal?(0))
        mask |= OS::NSShiftKeyMask
      end
      if (!((accelerator & SWT::CONTROL)).equal?(0))
        mask |= OS::NSControlKeyMask
      end
      if (!((accelerator & SWT::COMMAND)).equal?(0))
        mask |= OS::NSCommandKeyMask
      end
      if (!((accelerator & SWT::ALT)).equal?(0))
        mask |= OS::NSAlternateKeyMask
      end
      @ns_item.set_key_equivalent_modifier_mask(mask)
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
      if (enabled)
        self.attr_state &= ~DISABLED
      else
        self.attr_state |= DISABLED
      end
      @ns_item.set_enabled(enabled)
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
      @ns_item.set_image(!(image).nil? ? image.attr_handle : nil)
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
      # Assign the new menu
      old_menu = @menu
      if ((old_menu).equal?(menu))
        return
      end
      if (!(old_menu).nil?)
        old_menu.attr_cascade = nil
      end
      @menu = menu
      # Update the menu in the OS
      if ((menu).nil?)
        empty_menu = create_empty_menu
        if (!(empty_menu).nil?)
          @ns_item.set_submenu(empty_menu)
          empty_menu.release
        end
      else
        menu.attr_cascade = self
        @ns_item.set_submenu(menu.attr_ns_menu)
      end
      if (!(menu).nil?)
        @ns_item.set_target(nil)
        @ns_item.set_action(0)
      else
        @ns_item.set_target(@ns_item)
        @ns_item.set_action(OS.attr_sel_send_selection)
      end
      # Update menu title with parent item title
      update_text
    end
    
    typesig { [::Java::Boolean] }
    def set_radio_selection(value)
      if (((self.attr_style & SWT::RADIO)).equal?(0))
        return false
      end
      if (!(get_selection).equal?(value))
        set_selection(value)
        post_event(SWT::Selection)
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
      @ns_item.set_state(selected ? OS::NSOnState : OS::NSOffState)
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
      update_text
    end
    
    typesig { [] }
    def update_text
      buffer = CharArray.new(self.attr_text.length)
      self.attr_text.get_chars(0, buffer.attr_length, buffer, 0)
      i = 0
      j = 0
      while (i < buffer.attr_length)
        if ((buffer[i]).equal?(Character.new(?\t.ord)))
          break
        end
        if (((buffer[((j += 1) - 1)] = buffer[((i += 1) - 1)])).equal?(Character.new(?&.ord)))
          if ((i).equal?(buffer.attr_length))
            next
          end
          if ((buffer[i]).equal?(Character.new(?&.ord)))
            i += 1
            next
          end
          j -= 1
        end
      end
      text = String.new(buffer, 0, j)
      submenu_ = @ns_item.submenu
      label = NSString.string_with(text)
      if (!(submenu_).nil? && !((@parent.get_style & SWT::BAR)).equal?(0))
        submenu_.set_title(label)
      else
        @ns_item.set_title(label)
      end
    end
    
    typesig { [::Java::Boolean] }
    def update_accelerator(show)
      if (!(@accelerator).equal?(0))
        return
      end
      mask = 0
      key = 0
      if (show)
        buffer = CharArray.new(self.attr_text.length)
        self.attr_text.get_chars(0, buffer.attr_length, buffer, 0)
        i = 0
        j = 0
        while (i < buffer.attr_length)
          if ((buffer[i]).equal?(Character.new(?\t.ord)))
            break
          end
          if (((buffer[((j += 1) - 1)] = buffer[((i += 1) - 1)])).equal?(Character.new(?&.ord)))
            if ((i).equal?(buffer.attr_length))
              next
            end
            if ((buffer[i]).equal?(Character.new(?&.ord)))
              i += 1
              next
            end
            j -= 1
          end
        end
        if (i < buffer.attr_length && (buffer[i]).equal?(Character.new(?\t.ord)))
          j = i + 1
          while j < buffer.attr_length
            case (buffer[j])
            when Character.new(0x2303)
              mask |= OS::NSControlKeyMask
              i += 1
            when Character.new(0x2325)
              mask |= OS::NSAlternateKeyMask
              i += 1
            when Character.new(0x21E7)
              mask |= OS::NSShiftKeyMask
              i += 1
            when Character.new(0x2318)
              mask |= OS::NSCommandKeyMask
              i += 1
            else
              j = buffer.attr_length
            end
            j += 1
          end
          case (buffer.attr_length - i - 1)
          when 1
            key = buffer[i + 1]
            if ((key).equal?(0x2423))
              key = Character.new(?\s.ord)
            end
          when 2
            if ((buffer[i + 1]).equal?(Character.new(?F.ord)))
              case (buffer[i + 2])
              when Character.new(?1.ord)
                key = 0xf704
              when Character.new(?2.ord)
                key = 0xf705
              when Character.new(?3.ord)
                key = 0xf706
              when Character.new(?4.ord)
                key = 0xf707
              when Character.new(?5.ord)
                key = 0xf708
              when Character.new(?6.ord)
                key = 0xf709
              when Character.new(?7.ord)
                key = 0xf70a
              when Character.new(?8.ord)
                key = 0xf70b
              when Character.new(?9.ord)
                key = 0xf70c
              end
            end
          when 3
            if ((buffer[i + 1]).equal?(Character.new(?F.ord)) && (buffer[i + 2]).equal?(Character.new(?1.ord)))
              case (buffer[i + 3])
              when Character.new(?0.ord)
                key = 0xf70d
              when Character.new(?1.ord)
                key = 0xf70e
              when Character.new(?2.ord)
                key = 0xf70f
              when Character.new(?3.ord)
                key = 0xf710
              when Character.new(?4.ord)
                key = 0xf711
              when Character.new(?5.ord)
                key = 0xf712
              end
            end
          end
        end
      end
      string = NSString.string_with((key).equal?(0) ? "" : String.value_of(RJava.cast_to_char(key)))
      @ns_item.set_key_equivalent_modifier_mask(mask)
      @ns_item.set_key_equivalent(string.lowercase_string)
    end
    
    private
    alias_method :initialize__menu_item, :initialize
  end
  
end
