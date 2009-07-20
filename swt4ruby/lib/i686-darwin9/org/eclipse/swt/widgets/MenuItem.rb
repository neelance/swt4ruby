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
  module MenuItemImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Internal::Carbon
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
    
    attr_accessor :accelerator
    alias_method :attr_accelerator, :accelerator
    undef_method :accelerator
    alias_method :attr_accelerator=, :accelerator=
    undef_method :accelerator=
    
    typesig { [Menu, ::Java::Int] }
    # int x, y, width, height;
    # 
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
      # Bug in the Macintosh.  When a menu bar item does not have
      # an associated pull down menu, the Macintosh segment faults.
      # The fix is to temporarily attach an empty menu.
      if (!((@parent.attr_style & SWT::BAR)).equal?(0))
        out_menu_ref = Array.typed(::Java::Int).new(1) { 0 }
        if (!(OS._create_new_menu(RJava.cast_to_short(0), 0, out_menu_ref)).equal?(OS.attr_no_err))
          error(SWT::ERROR_NO_HANDLES)
        end
        return out_menu_ref[0]
      end
      return 0
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
    # public
    def get_bounds
      check_widget
      if (!((@parent.attr_style & SWT::BAR)).equal?(0))
        index = @parent.index_of(self)
        if ((index).equal?(-1))
          return Rectangle.new(0, 0, 0, 0)
        end
        menu = self.attr_display.get_menu_bar
        if (!(@parent).equal?(menu))
          return Rectangle.new(0, 0, 0, 0)
        end
        out_menu_ref = Array.typed(::Java::Int).new(1) { 0 }
        if (!(OS._get_menu_item_hierarchical_menu(menu.attr_handle, RJava.cast_to_short((index + 1)), out_menu_ref)).equal?(OS.attr_no_err))
          return Rectangle.new(0, 0, 0, 0)
        end
        rect = Rect.new
        # TODO - get the bounds of the menu item from the menu title
        # if (... code needed to do this ... != OS.noErr) {
        # return new Rectangle (0 ,0, 0, 0);
        # }
        width = rect.attr_right - rect.attr_left
        height = rect.attr_bottom - rect.attr_top
        return Rectangle.new(rect.attr_left, rect.attr_top, width, height)
      end
      return Rectangle.new(0, 0, 0, 0)
      # return new Rectangle (x, y, width, height);
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return false
      end
      out_mark = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_item_mark(@parent.attr_handle, RJava.cast_to_short((index + 1)), out_mark)
      return !(out_mark[0]).equal?(0)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_process_command(next_handler, the_event, user_data)
      # TEMPORARY CODE
      if (!is_enabled)
        return OS.attr_no_err
      end
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
      modifiers = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, 4, nil, modifiers)
      event = Event.new
      set_input_state(event, RJava.cast_to_short(0), OS._get_current_event_button_state, modifiers[0])
      post_event(SWT::Selection, event)
      return OS.attr_no_err
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
    def key_glyph(key)
      case (key)
      # case ' ': return OS.kMenuSpaceGlyph;
      when SWT::BS
        return OS.attr_k_menu_delete_left_glyph
      when SWT::CR
        return OS.attr_k_menu_return_glyph
      when SWT::DEL
        return OS.attr_k_menu_delete_right_glyph
      when SWT::ESC
        return OS.attr_k_menu_escape_glyph
      when SWT::LF
        return OS.attr_k_menu_return_glyph
      when SWT::TAB
        return OS.attr_k_menu_tab_right_glyph
      when Character.new(?\s.ord)
        return OS.attr_k_menu_blank_glyph
      when SWT::ALT
        return OS.attr_k_menu_option_glyph
      when SWT::SHIFT
        return OS.attr_k_menu_shift_glyph
      when SWT::CONTROL
        return OS.attr_k_menu_control_isoglyph
      when SWT::COMMAND
        return OS.attr_k_menu_command_glyph
      when SWT::ARROW_UP
        return OS.attr_k_menu_up_arrow_glyph
      when SWT::ARROW_DOWN
        return OS.attr_k_menu_down_arrow_glyph
      when SWT::ARROW_LEFT
        return OS.attr_k_menu_left_arrow_glyph
      when SWT::ARROW_RIGHT
        return OS.attr_k_menu_right_arrow_glyph
      when SWT::PAGE_UP
        return OS.attr_k_menu_page_up_glyph
      when SWT::PAGE_DOWN
        return OS.attr_k_menu_page_down_glyph
      when SWT::F1
        return OS.attr_k_menu_f1glyph
      when SWT::F2
        return OS.attr_k_menu_f2glyph
      when SWT::F3
        return OS.attr_k_menu_f3glyph
      when SWT::F4
        return OS.attr_k_menu_f4glyph
      when SWT::F5
        return OS.attr_k_menu_f5glyph
      when SWT::F6
        return OS.attr_k_menu_f6glyph
      when SWT::F7
        return OS.attr_k_menu_f7glyph
      when SWT::F8
        return OS.attr_k_menu_f8glyph
      when SWT::F9
        return OS.attr_k_menu_f9glyph
      when SWT::F10
        return OS.attr_k_menu_f10glyph
      when SWT::F11
        return OS.attr_k_menu_f11glyph
      when SWT::F12
        return OS.attr_k_menu_f12glyph
      end
      return OS.attr_k_menu_null_glyph
    end
    
    typesig { [] }
    def release_handle
      super
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
    # public
    def select
      check_widget
      menu = @parent
      menu_parent = nil
      while (!(menu.attr_cascade).nil? && !((menu_parent = menu.attr_cascade.attr_parent)).nil?)
        if (!((menu_parent.attr_style & SWT::BAR)).equal?(0))
          break
        end
        menu = menu_parent
      end
      if ((menu).nil?)
        return
      end
      OS._hilite_menu(OS._get_menu_id(menu.attr_handle))
      event = Array.typed(::Java::Int).new(1) { 0 }
      OS._create_event(0, OS.attr_k_event_class_command, OS.attr_k_event_process_command, 0.0, 0, event)
      if (!(event[0]).equal?(0))
        parent_handle = @parent.attr_handle
        command = HICommand.new
        command.attr_attributes = OS.attr_k_hicommand_from_menu
        command.attr_menu_menu_ref = parent_handle
        command.attr_menu_menu_item_index = RJava.cast_to_short((@parent.index_of(self) + 1))
        OS._set_event_parameter(event[0], OS.attr_k_event_param_direct_object, OS.attr_type_hicommand, HICommand.attr_sizeof, command)
        OS._send_event_to_event_target(event[0], OS._get_application_event_target)
        OS._release_event(event[0])
      end
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      update = ((@accelerator).equal?(0) && !(accelerator).equal?(0)) || (!(@accelerator).equal?(0) && (accelerator).equal?(0))
      @accelerator = accelerator
      in_set_virtual_key = false
      in_modifiers = OS.attr_k_menu_no_modifiers
      in_glyph = OS.attr_k_menu_null_glyph
      in_key = 0
      if (!(accelerator).equal?(0))
        in_key = accelerator & SWT::KEY_MASK
        in_glyph = key_glyph(in_key)
        virtual_key = Display.untranslate_key(in_key)
        if ((in_key).equal?(Character.new(?\s.ord)))
          virtual_key = 49
        end
        if (!(virtual_key).equal?(0))
          in_set_virtual_key = true
          in_key = virtual_key
        else
          in_key = Character.to_upper_case(RJava.cast_to_char(in_key))
        end
        in_modifiers = OS.attr_k_menu_no_command_modifier
        if (!((accelerator & SWT::SHIFT)).equal?(0))
          in_modifiers |= OS.attr_k_menu_shift_modifier
        end
        if (!((accelerator & SWT::CONTROL)).equal?(0))
          in_modifiers |= OS.attr_k_menu_control_modifier
        end
        if (!((accelerator & SWT::COMMAND)).equal?(0))
          in_modifiers &= ~OS.attr_k_menu_no_command_modifier
        end
        if (!((accelerator & SWT::ALT)).equal?(0))
          in_modifiers |= OS.attr_k_menu_option_modifier
        end
      end
      menu_index = RJava.cast_to_short((index + 1))
      OS._set_menu_item_modifiers(@parent.attr_handle, menu_index, in_modifiers)
      OS._set_menu_item_command_key(@parent.attr_handle, menu_index, in_set_virtual_key, RJava.cast_to_char(in_key))
      OS._set_menu_item_key_glyph(@parent.attr_handle, menu_index, RJava.cast_to_short(in_glyph))
      if (update)
        update_text(menu_index)
      end
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      out_menu_ref = Array.typed(::Java::Int).new(1) { 0 }
      menu_index = RJava.cast_to_short((index + 1))
      OS._get_menu_item_hierarchical_menu(@parent.attr_handle, menu_index, out_menu_ref)
      if (enabled)
        self.attr_state &= ~DISABLED
        if (!(out_menu_ref[0]).equal?(0))
          OS._enable_menu_item(out_menu_ref[0], RJava.cast_to_short(0))
        end
        OS._enable_menu_item(@parent.attr_handle, menu_index)
      else
        self.attr_state |= DISABLED
        if (!(out_menu_ref[0]).equal?(0))
          OS._disable_menu_item(out_menu_ref[0], RJava.cast_to_short(0))
        end
        OS._disable_menu_item(@parent.attr_handle, menu_index)
      end
    end
    
    typesig { [Image] }
    # Sets the image the receiver will display to the argument.
    # <p>
    # Note: This operation is a hint and is not supported on
    # platforms that do not have this concept (for example, Windows NT).
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      super(image)
      image_handle = !(image).nil? ? image.attr_handle : 0
      type = !(image).nil? ? OS.attr_k_menu_cgimage_ref_type : OS.attr_k_menu_no_icon
      OS._set_menu_item_icon_handle(@parent.attr_handle, RJava.cast_to_short((index + 1)), type, image_handle)
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      menu_handle = 0
      if ((menu).nil?)
        menu_handle = create_empty_menu
      else
        menu.attr_cascade = self
        menu_handle = menu.attr_handle
      end
      menu_index = RJava.cast_to_short((index + 1))
      if (!(menu_handle).equal?(0))
        out_string = Array.typed(::Java::Int).new(1) { 0 }
        if (!(OS._copy_menu_item_text_as_cfstring(@parent.attr_handle, menu_index, out_string)).equal?(OS.attr_no_err))
          error(SWT::ERROR_CANNOT_SET_MENU)
        end
        OS._set_menu_title_with_cfstring(menu_handle, out_string[0])
        OS._cfrelease(out_string[0])
      end
      if (!(old_menu).nil?)
        OS._retain_menu(old_menu.attr_handle)
      end
      if (!(OS._set_menu_item_hierarchical_menu(@parent.attr_handle, menu_index, menu_handle)).equal?(OS.attr_no_err))
        error(SWT::ERROR_CANNOT_SET_MENU)
      end
      if (!(menu_handle).equal?(0))
        OS._release_menu(menu_handle)
      end
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      in_mark = selected ? (!((self.attr_style & SWT::RADIO)).equal?(0)) ? OS.attr_diamond_mark : OS.attr_check_mark : 0
      OS._set_item_mark(@parent.attr_handle, RJava.cast_to_short((index + 1)), RJava.cast_to_short(in_mark))
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      super(string)
      update_text(RJava.cast_to_short((index + 1)))
    end
    
    typesig { [::Java::Short] }
    def update_text(menu_index)
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
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
      str = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, j)
      if ((str).equal?(0))
        error(SWT::ERROR_CANNOT_SET_TEXT)
      end
      OS._set_menu_item_text_with_cfstring(@parent.attr_handle, menu_index, str)
      out_hier_menu = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_menu_item_hierarchical_menu(@parent.attr_handle, menu_index, out_hier_menu)
      if (!(out_hier_menu[0]).equal?(0))
        OS._set_menu_title_with_cfstring(out_hier_menu[0], str)
      end
      # Feature in the Macintosh.  Setting text that starts with "-" makes the
      # menu item a separator.  The fix is to clear the separator attribute.
      if (self.attr_text.starts_with("-"))
        OS._change_menu_item_attributes(@parent.attr_handle, menu_index, 0, OS.attr_k_menu_item_attr_separator)
      end
      OS._cfrelease(str)
    end
    
    private
    alias_method :initialize__menu_item, :initialize
  end
  
end
