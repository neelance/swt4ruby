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
  module ButtonImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # Instances of this class represent a selectable user interface object that
  # issues notification when pressed and released.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>ARROW, CHECK, PUSH, RADIO, TOGGLE, FLAT</dd>
  # <dd>UP, DOWN, LEFT, RIGHT, CENTER</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles ARROW, CHECK, PUSH, RADIO, and TOGGLE
  # may be specified.
  # </p><p>
  # Note: Only one of the styles LEFT, RIGHT, and CENTER may be specified.
  # </p><p>
  # Note: Only one of the styles UP, DOWN, LEFT, and RIGHT may be specified
  # when the ARROW style is specified.
  # </p><p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#button">Button snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Button < ButtonImports.const_get :Control
    include_class_members ButtonImports
    
    # int
    attr_accessor :box_handle
    alias_method :attr_box_handle, :box_handle
    undef_method :box_handle
    alias_method :attr_box_handle=, :box_handle=
    undef_method :box_handle=
    
    attr_accessor :label_handle
    alias_method :attr_label_handle, :label_handle
    undef_method :label_handle
    alias_method :attr_label_handle=, :label_handle=
    undef_method :label_handle=
    
    attr_accessor :image_handle
    alias_method :attr_image_handle, :image_handle
    undef_method :image_handle
    alias_method :attr_image_handle=, :image_handle=
    undef_method :image_handle=
    
    attr_accessor :arrow_handle
    alias_method :attr_arrow_handle, :arrow_handle
    undef_method :arrow_handle
    alias_method :attr_arrow_handle=, :arrow_handle=
    undef_method :arrow_handle=
    
    attr_accessor :group_handle
    alias_method :attr_group_handle, :group_handle
    undef_method :group_handle
    alias_method :attr_group_handle=, :group_handle=
    undef_method :group_handle=
    
    attr_accessor :selected
    alias_method :attr_selected, :selected
    undef_method :selected
    alias_method :attr_selected=, :selected=
    undef_method :selected=
    
    attr_accessor :grayed
    alias_method :attr_grayed, :grayed
    undef_method :grayed
    alias_method :attr_grayed=, :grayed=
    undef_method :grayed=
    
    attr_accessor :image_list
    alias_method :attr_image_list, :image_list
    undef_method :image_list
    alias_method :attr_image_list=, :image_list=
    undef_method :image_list=
    
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
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
    # @see SWT#ARROW
    # @see SWT#CHECK
    # @see SWT#PUSH
    # @see SWT#RADIO
    # @see SWT#TOGGLE
    # @see SWT#FLAT
    # @see SWT#LEFT
    # @see SWT#RIGHT
    # @see SWT#CENTER
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @box_handle = 0
      @label_handle = 0
      @image_handle = 0
      @arrow_handle = 0
      @group_handle = 0
      @selected = false
      @grayed = false
      @image_list = nil
      @image = nil
      @text = nil
      super(parent, check_style(style))
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        style = check_bits(style, SWT::PUSH, SWT::ARROW, SWT::CHECK, SWT::RADIO, SWT::TOGGLE, 0)
        if (!((style & (SWT::PUSH | SWT::TOGGLE))).equal?(0))
          return check_bits(style, SWT::CENTER, SWT::LEFT, SWT::RIGHT, 0, 0, 0)
        end
        if (!((style & (SWT::CHECK | SWT::RADIO))).equal?(0))
          return check_bits(style, SWT::LEFT, SWT::RIGHT, SWT::CENTER, 0, 0, 0)
        end
        if (!((style & SWT::ARROW)).equal?(0))
          style |= SWT::NO_FOCUS
          return check_bits(style, SWT::UP, SWT::DOWN, SWT::LEFT, SWT::RIGHT, 0, 0)
        end
        return style
      end
    }
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is called when the control is selected by the user.
    # <code>widgetDefaultSelected</code> is not called.
    # </p>
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      if (!(w_hint).equal?(SWT::DEFAULT) && w_hint < 0)
        w_hint = 0
      end
      if (!(h_hint).equal?(SWT::DEFAULT) && h_hint < 0)
        h_hint = 0
      end
      # Feature in GTK, GtkCheckButton and GtkRadioButton allocate
      # only the minimum size necessary for its child. This causes the child
      # alignment to fail. The fix is to set the child size to the size
      # of the button.
      force_resize
      req_width = nil
      req_height = nil
      if (!((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
        req_width = Array.typed(::Java::Int).new(1) { 0 }
        req_height = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_widget_get_size_request(@box_handle, req_width, req_height)
        OS.gtk_widget_set_size_request(@box_handle, -1, -1)
      end
      size = compute_native_size(self.attr_handle, w_hint, h_hint, changed)
      if (!((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
        OS.gtk_widget_set_size_request(@box_handle, req_width[0], req_height[0])
      end
      if (!(w_hint).equal?(SWT::DEFAULT) || !(h_hint).equal?(SWT::DEFAULT))
        if (!((OS._gtk_widget_flags(self.attr_handle) & OS::GTK_CAN_DEFAULT)).equal?(0))
          # int
          # int
          buffer = Array.typed(::Java::Long).new(1) { 0 }
          border = GtkBorder.new
          OS.gtk_widget_style_get(self.attr_handle, OS.attr_default_border, buffer, 0)
          if (!(buffer[0]).equal?(0))
            OS.memmove(border, buffer[0], GtkBorder.attr_sizeof)
          else
            # Use the GTK+ default value of 1 for each.
            border.attr_left = border.attr_right = border.attr_top = border.attr_bottom = 1
          end
          if (!(w_hint).equal?(SWT::DEFAULT))
            size.attr_x += border.attr_left + border.attr_right
          end
          if (!(h_hint).equal?(SWT::DEFAULT))
            size.attr_y += border.attr_top + border.attr_bottom
          end
        end
      end
      return size
    end
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE
      if (((self.attr_style & (SWT::PUSH | SWT::TOGGLE))).equal?(0))
        self.attr_state |= THEME_BACKGROUND
      end
      bits = SWT::ARROW | SWT::TOGGLE | SWT::CHECK | SWT::RADIO | SWT::PUSH
      self.attr_fixed_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
      if ((self.attr_fixed_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_fixed_set_has_window(self.attr_fixed_handle, true)
      case (self.attr_style & bits)
      when SWT::ARROW
        arrow_type = OS::GTK_ARROW_UP
        if (!((self.attr_style & SWT::UP)).equal?(0))
          arrow_type = OS::GTK_ARROW_UP
        end
        if (!((self.attr_style & SWT::DOWN)).equal?(0))
          arrow_type = OS::GTK_ARROW_DOWN
        end
        if (!((self.attr_style & SWT::LEFT)).equal?(0))
          arrow_type = OS::GTK_ARROW_LEFT
        end
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          arrow_type = OS::GTK_ARROW_RIGHT
        end
        self.attr_handle = OS.gtk_button_new
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        @arrow_handle = OS.gtk_arrow_new(arrow_type, OS::GTK_SHADOW_OUT)
        if ((@arrow_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
      when SWT::TOGGLE
        self.attr_handle = OS.gtk_toggle_button_new
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
      when SWT::CHECK
        self.attr_handle = OS.gtk_check_button_new
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
      when SWT::RADIO
        # Feature in GTK.  In GTK, radio button must always be part of
        # a radio button group.  In a GTK radio group, one button is always
        # selected.  This means that it is not possible to have a single
        # radio button that is unselected.  This is necessary to allow
        # applications to implement their own radio behavior or use radio
        # buttons outside of radio groups.  The fix is to create a hidden
        # radio button for each radio button we create and add them
        # to the same group.  This allows the visible button to be
        # unselected.
        @group_handle = OS.gtk_radio_button_new(0)
        if ((@group_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.g_object_ref(@group_handle)
        OS.gtk_object_sink(@group_handle)
        self.attr_handle = OS.gtk_radio_button_new(OS.gtk_radio_button_get_group(@group_handle))
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
      when SWT::PUSH
        self.attr_handle = OS.gtk_button_new
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS._gtk_widget_set_flags(self.attr_handle, OS::GTK_CAN_DEFAULT)
      else
        self.attr_handle = OS.gtk_button_new
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS._gtk_widget_set_flags(self.attr_handle, OS::GTK_CAN_DEFAULT)
      end
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        OS.gtk_container_add(self.attr_handle, @arrow_handle)
      else
        @box_handle = OS.gtk_hbox_new(false, 4)
        if ((@box_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        @label_handle = OS.gtk_label_new_with_mnemonic(nil)
        if ((@label_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        @image_handle = OS.gtk_image_new
        if ((@image_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_container_add(self.attr_handle, @box_handle)
        OS.gtk_container_add(@box_handle, @image_handle)
        OS.gtk_container_add(@box_handle, @label_handle)
      end
      OS.gtk_container_add(self.attr_fixed_handle, self.attr_handle)
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        return
      end
      __set_alignment(self.attr_style & (SWT::LEFT | SWT::CENTER | SWT::RIGHT))
    end
    
    typesig { [::Java::Int] }
    def create_widget(index)
      super(index)
      @text = ""
    end
    
    typesig { [] }
    def deregister
      super
      if (!(@box_handle).equal?(0))
        self.attr_display.remove_widget(@box_handle)
      end
      if (!(@label_handle).equal?(0))
        self.attr_display.remove_widget(@label_handle)
      end
      if (!(@image_handle).equal?(0))
        self.attr_display.remove_widget(@image_handle)
      end
      if (!(@arrow_handle).equal?(0))
        self.attr_display.remove_widget(@arrow_handle)
      end
    end
    
    typesig { [] }
    # int
    def font_handle
      if (!(@label_handle).equal?(0))
        return @label_handle
      end
      return super
    end
    
    typesig { [] }
    # Returns a value which describes the position of the
    # text or image in the receiver. The value will be one of
    # <code>LEFT</code>, <code>RIGHT</code> or <code>CENTER</code>
    # unless the receiver is an <code>ARROW</code> button, in
    # which case, the alignment will indicate the direction of
    # the arrow (one of <code>LEFT</code>, <code>RIGHT</code>,
    # <code>UP</code> or <code>DOWN</code>).
    # 
    # @return the alignment
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_alignment
      check_widget
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        if (!((self.attr_style & SWT::UP)).equal?(0))
          return SWT::UP
        end
        if (!((self.attr_style & SWT::DOWN)).equal?(0))
          return SWT::DOWN
        end
        if (!((self.attr_style & SWT::LEFT)).equal?(0))
          return SWT::LEFT
        end
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          return SWT::RIGHT
        end
        return SWT::UP
      end
      if (!((self.attr_style & SWT::LEFT)).equal?(0))
        return SWT::LEFT
      end
      if (!((self.attr_style & SWT::CENTER)).equal?(0))
        return SWT::CENTER
      end
      if (!((self.attr_style & SWT::RIGHT)).equal?(0))
        return SWT::RIGHT
      end
      return SWT::LEFT
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is grayed,
    # and false otherwise. When the widget does not have
    # the <code>CHECK</code> style, return false.
    # 
    # @return the grayed state of the checkbox
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_grayed
      check_widget
      if (((self.attr_style & SWT::CHECK)).equal?(0))
        return false
      end
      return @grayed
    end
    
    typesig { [] }
    # Returns the receiver's image if it has one, or null
    # if it does not.
    # 
    # @return the receiver's image
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_image
      check_widget
      return @image
    end
    
    typesig { [] }
    def get_name_text
      return get_text
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is selected,
    # and false otherwise.
    # <p>
    # When the receiver is of type <code>CHECK</code> or <code>RADIO</code>,
    # it is selected when it is checked. When it is of type <code>TOGGLE</code>,
    # it is selected when it is pushed in. If the receiver is of any other type,
    # this method returns false.
    # 
    # @return the selection state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      if (((self.attr_style & (SWT::CHECK | SWT::RADIO | SWT::TOGGLE))).equal?(0))
        return false
      end
      return OS.gtk_toggle_button_get_active(self.attr_handle)
    end
    
    typesig { [] }
    # Returns the receiver's text, which will be an empty
    # string if it has never been set or if the receiver is
    # an <code>ARROW</code> button.
    # 
    # @return the receiver's text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text
      check_widget
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        return ""
      end
      return @text
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_button_press_event(widget, event)
      # int
      result = super(widget, event)
      if (!(result).equal?(0))
        return result
      end
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        @selected = get_selection
      end
      return result
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def gtk_clicked(widget)
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        if (!((self.attr_parent.get_style & SWT::NO_RADIO_GROUP)).equal?(0))
          set_selection(!@selected)
        else
          select_radio
        end
      else
        if (!((self.attr_style & SWT::CHECK)).equal?(0))
          if (@grayed)
            if (OS.gtk_toggle_button_get_active(self.attr_handle))
              OS.gtk_toggle_button_set_inconsistent(self.attr_handle, true)
            else
              OS.gtk_toggle_button_set_inconsistent(self.attr_handle, false)
            end
          end
        end
      end
      post_event(SWT::Selection)
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_focus_in_event(widget, event)
      # int
      result = super(widget, event)
      # widget could be disposed at this point
      if ((self.attr_handle).equal?(0))
        return 0
      end
      if (!((self.attr_style & SWT::PUSH)).equal?(0) && OS._gtk_widget_has_default(self.attr_handle))
        menu_shell_ = menu_shell
        menu_shell_.attr_default_button = self
      end
      return result
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_focus_out_event(widget, event)
      # int
      result = super(widget, event)
      # widget could be disposed at this point
      if ((self.attr_handle).equal?(0))
        return 0
      end
      if (!((self.attr_style & SWT::PUSH)).equal?(0) && !OS._gtk_widget_has_default(self.attr_handle))
        menu_shell_ = menu_shell
        if ((menu_shell_.attr_default_button).equal?(self))
          menu_shell_.attr_default_button = nil
        end
      end
      return result
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_key_press_event(widget, event)
      # int
      result = super(widget, event)
      if (!(result).equal?(0))
        return result
      end
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        @selected = get_selection
      end
      return result
    end
    
    typesig { [] }
    def hook_events
      super
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_clicked, self.attr_display.attr_closures[CLICKED], false)
      if (!(@label_handle).equal?(0))
        OS.g_signal_connect_closure_by_id(@label_handle, self.attr_display.attr_signal_ids[MNEMONIC_ACTIVATE], 0, self.attr_display.attr_closures[MNEMONIC_ACTIVATE], false)
      end
    end
    
    typesig { [] }
    def is_described_by_label
      return false
    end
    
    typesig { [::Java::Char] }
    def mnemonic_hit(key)
      if ((@label_handle).equal?(0))
        return false
      end
      result = super(@label_handle, key)
      if (result)
        set_focus
      end
      return result
    end
    
    typesig { [::Java::Char] }
    def mnemonic_match(key)
      if ((@label_handle).equal?(0))
        return false
      end
      return mnemonic_match(@label_handle, key)
    end
    
    typesig { [] }
    def register
      super
      if (!(@box_handle).equal?(0))
        self.attr_display.add_widget(@box_handle, self)
      end
      if (!(@label_handle).equal?(0))
        self.attr_display.add_widget(@label_handle, self)
      end
      if (!(@image_handle).equal?(0))
        self.attr_display.add_widget(@image_handle, self)
      end
      if (!(@arrow_handle).equal?(0))
        self.attr_display.add_widget(@arrow_handle, self)
      end
    end
    
    typesig { [] }
    def release_handle
      super
      @box_handle = @image_handle = @label_handle = @arrow_handle = 0
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@group_handle).equal?(0))
        OS.g_object_unref(@group_handle)
      end
      @group_handle = 0
      if (!(@image_list).nil?)
        @image_list.dispose
      end
      @image_list = nil
      @image = nil
      @text = RJava.cast_to_string(nil)
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
    
    typesig { [::Java::Int, ::Java::Int] }
    def resize_handle(width, height)
      super(width, height)
      # Feature in GTK, GtkCheckButton and GtkRadioButton allocate
      # only the minimum size necessary for its child. This causes the child
      # alignment to fail. The fix is to set the child size to the size
      # of the button.
      if (!((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
        OS.gtk_widget_set_size_request(@box_handle, width, -1)
      end
    end
    
    typesig { [] }
    def select_radio
      # This code is intentionally commented.  When two groups
      # of radio buttons with the same parent are separated by
      # another control, the correct behavior should be that
      # the two groups act independently.  This is consistent
      # with radio tool and menu items.  The commented code
      # implements this behavior.
      # 
      # int index = 0;
      # Control [] children = parent._getChildren ();
      # while (index < children.length && children [index] != this) index++;
      # int i = index - 1;
      # while (i >= 0 && children [i].setRadioSelection (false)) --i;
      # int j = index + 1;
      # while (j < children.length && children [j].setRadioSelection (false)) j++;
      # setSelection (true);
      children = self.attr_parent.__get_children
      i = 0
      while i < children.attr_length
        child = children[i]
        if (!(self).equal?(child))
          child.set_radio_selection(false)
        end
        i += 1
      end
      set_selection(true)
    end
    
    typesig { [::Java::Int] }
    # Controls how text, images and arrows will be displayed
    # in the receiver. The argument should be one of
    # <code>LEFT</code>, <code>RIGHT</code> or <code>CENTER</code>
    # unless the receiver is an <code>ARROW</code> button, in
    # which case, the argument indicates the direction of
    # the arrow (one of <code>LEFT</code>, <code>RIGHT</code>,
    # <code>UP</code> or <code>DOWN</code>).
    # 
    # @param alignment the new alignment
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_alignment(alignment)
      check_widget
      __set_alignment(alignment)
    end
    
    typesig { [::Java::Int] }
    def __set_alignment(alignment)
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        if (((self.attr_style & (SWT::UP | SWT::DOWN | SWT::LEFT | SWT::RIGHT))).equal?(0))
          return
        end
        self.attr_style &= ~(SWT::UP | SWT::DOWN | SWT::LEFT | SWT::RIGHT)
        self.attr_style |= alignment & (SWT::UP | SWT::DOWN | SWT::LEFT | SWT::RIGHT)
        arrow_type = OS::GTK_ARROW_UP
        is_rtl = !((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0)
        case (alignment)
        when SWT::UP
          arrow_type = OS::GTK_ARROW_UP
        when SWT::DOWN
          arrow_type = OS::GTK_ARROW_DOWN
        when SWT::LEFT
          arrow_type = is_rtl ? OS::GTK_ARROW_RIGHT : OS::GTK_ARROW_LEFT
        when SWT::RIGHT
          arrow_type = is_rtl ? OS::GTK_ARROW_LEFT : OS::GTK_ARROW_RIGHT
        end
        OS.gtk_arrow_set(@arrow_handle, arrow_type, OS::GTK_SHADOW_OUT)
        return
      end
      if (((alignment & (SWT::LEFT | SWT::RIGHT | SWT::CENTER))).equal?(0))
        return
      end
      self.attr_style &= ~(SWT::LEFT | SWT::RIGHT | SWT::CENTER)
      self.attr_style |= alignment & (SWT::LEFT | SWT::RIGHT | SWT::CENTER)
      # Alignment not honoured when image and text are visible
      both_visible = OS._gtk_widget_visible(@label_handle) && OS._gtk_widget_visible(@image_handle)
      if (both_visible)
        if (!((self.attr_style & (SWT::RADIO | SWT::CHECK))).equal?(0))
          alignment = SWT::LEFT
        end
        if (!((self.attr_style & (SWT::PUSH | SWT::TOGGLE))).equal?(0))
          alignment = SWT::CENTER
        end
      end
      if (!((alignment & SWT::LEFT)).equal?(0))
        if (both_visible)
          OS.gtk_box_set_child_packing(@box_handle, @label_handle, false, false, 0, OS::GTK_PACK_START)
          OS.gtk_box_set_child_packing(@box_handle, @image_handle, false, false, 0, OS::GTK_PACK_START)
        end
        OS.gtk_misc_set_alignment(@label_handle, 0.0, 0.5)
        OS.gtk_label_set_justify(@label_handle, OS::GTK_JUSTIFY_LEFT)
        OS.gtk_misc_set_alignment(@image_handle, 0.0, 0.5)
        return
      end
      if (!((alignment & SWT::CENTER)).equal?(0))
        if (both_visible)
          OS.gtk_box_set_child_packing(@box_handle, @label_handle, true, true, 0, OS::GTK_PACK_END)
          OS.gtk_box_set_child_packing(@box_handle, @image_handle, true, true, 0, OS::GTK_PACK_START)
          OS.gtk_misc_set_alignment(@label_handle, 0, 0.5)
          OS.gtk_misc_set_alignment(@image_handle, 1, 0.5)
        else
          OS.gtk_misc_set_alignment(@label_handle, 0.5, 0.5)
          OS.gtk_label_set_justify(@label_handle, OS::GTK_JUSTIFY_CENTER)
          OS.gtk_misc_set_alignment(@image_handle, 0.5, 0.5)
        end
        return
      end
      if (!((alignment & SWT::RIGHT)).equal?(0))
        if (both_visible)
          OS.gtk_box_set_child_packing(@box_handle, @label_handle, false, false, 0, OS::GTK_PACK_END)
          OS.gtk_box_set_child_packing(@box_handle, @image_handle, false, false, 0, OS::GTK_PACK_END)
        end
        OS.gtk_misc_set_alignment(@label_handle, 1.0, 0.5)
        OS.gtk_label_set_justify(@label_handle, OS::GTK_JUSTIFY_RIGHT)
        OS.gtk_misc_set_alignment(@image_handle, 1.0, 0.5)
        return
      end
    end
    
    typesig { [GdkColor] }
    def set_background_color(color)
      super(color)
      set_background_color(self.attr_fixed_handle, color)
      if (!(@label_handle).equal?(0))
        set_background_color(@label_handle, color)
      end
      if (!(@image_handle).equal?(0))
        set_background_color(@image_handle, color)
      end
    end
    
    typesig { [::Java::Long] }
    # int
    def set_font_description(font)
      super(font)
      if (!(@label_handle).equal?(0))
        OS.gtk_widget_modify_font(@label_handle, font)
      end
      if (!(@image_handle).equal?(0))
        OS.gtk_widget_modify_font(@image_handle, font)
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
    
    typesig { [GdkColor] }
    def set_foreground_color(color)
      super(color)
      set_foreground_color(self.attr_fixed_handle, color)
      if (!(@label_handle).equal?(0))
        set_foreground_color(@label_handle, color)
      end
      if (!(@image_handle).equal?(0))
        set_foreground_color(@image_handle, color)
      end
    end
    
    typesig { [::Java::Boolean] }
    # Sets the grayed state of the receiver.  This state change
    # only applies if the control was created with the SWT.CHECK
    # style.
    # 
    # @param grayed the new grayed state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def set_grayed(grayed)
      check_widget
      if (((self.attr_style & SWT::CHECK)).equal?(0))
        return
      end
      @grayed = grayed
      if (grayed && OS.gtk_toggle_button_get_active(self.attr_handle))
        OS.gtk_toggle_button_set_inconsistent(self.attr_handle, true)
      else
        OS.gtk_toggle_button_set_inconsistent(self.attr_handle, false)
      end
    end
    
    typesig { [Image] }
    # Sets the receiver's image to the argument, which may be
    # <code>null</code> indicating that no image should be displayed.
    # <p>
    # Note that a Button can display an image and text simultaneously
    # on Windows (starting with XP), GTK+ and OSX.  On other platforms,
    # a Button that has an image and text set into it will display the
    # image or text that was set most recently.
    # </p>
    # @param image the image to display on the receiver (may be <code>null</code>)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the image has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_image(image)
      check_widget
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        return
      end
      if (!(@image_list).nil?)
        @image_list.dispose
      end
      @image_list = nil
      if (!(image).nil?)
        if (image.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        @image_list = ImageList.new
        image_index = @image_list.add(image)
        # int
        pixbuf = @image_list.get_pixbuf(image_index)
        OS.gtk_image_set_from_pixbuf(@image_handle, pixbuf)
        if ((@text.length).equal?(0))
          OS.gtk_widget_hide(@label_handle)
        end
        OS.gtk_widget_show(@image_handle)
      else
        OS.gtk_image_set_from_pixbuf(@image_handle, 0)
        OS.gtk_widget_show(@label_handle)
        OS.gtk_widget_hide(@image_handle)
      end
      @image = image
      __set_alignment(self.attr_style)
    end
    
    typesig { [] }
    def set_orientation
      super
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        if (!(@box_handle).equal?(0))
          OS.gtk_widget_set_direction(@box_handle, OS::GTK_TEXT_DIR_RTL)
        end
        if (!(@label_handle).equal?(0))
          OS.gtk_widget_set_direction(@label_handle, OS::GTK_TEXT_DIR_RTL)
        end
        if (!(@image_handle).equal?(0))
          OS.gtk_widget_set_direction(@image_handle, OS::GTK_TEXT_DIR_RTL)
        end
        if (!(@arrow_handle).equal?(0))
          case (self.attr_style & (SWT::LEFT | SWT::RIGHT))
          when SWT::LEFT
            OS.gtk_arrow_set(@arrow_handle, OS::GTK_ARROW_RIGHT, OS::GTK_SHADOW_OUT)
          when SWT::RIGHT
            OS.gtk_arrow_set(@arrow_handle, OS::GTK_ARROW_LEFT, OS::GTK_SHADOW_OUT)
          end
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    # Sets the selection state of the receiver, if it is of type <code>CHECK</code>,
    # <code>RADIO</code>, or <code>TOGGLE</code>.
    # 
    # <p>
    # When the receiver is of type <code>CHECK</code> or <code>RADIO</code>,
    # it is selected when it is checked. When it is of type <code>TOGGLE</code>,
    # it is selected when it is pushed in.
    # 
    # @param selected the new selection state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(selected)
      check_widget
      if (((self.attr_style & (SWT::CHECK | SWT::RADIO | SWT::TOGGLE))).equal?(0))
        return
      end
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CLICKED)
      OS.gtk_toggle_button_set_active(self.attr_handle, selected)
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        if (selected && @grayed)
          OS.gtk_toggle_button_set_inconsistent(self.attr_handle, true)
        else
          OS.gtk_toggle_button_set_inconsistent(self.attr_handle, false)
        end
      end
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        OS.gtk_toggle_button_set_active(@group_handle, !selected)
      end
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CLICKED)
    end
    
    typesig { [String] }
    # Sets the receiver's text.
    # <p>
    # This method sets the button label.  The label may include
    # the mnemonic character but must not contain line delimiters.
    # </p>
    # <p>
    # Mnemonics are indicated by an '&amp;' that causes the next
    # character to be the mnemonic.  When the user presses a
    # key sequence that matches the mnemonic, a selection
    # event occurs. On most platforms, the mnemonic appears
    # underlined but may be emphasized in a platform specific
    # manner.  The mnemonic indicator character '&amp;' can be
    # escaped by doubling it in the string, causing a single
    # '&amp;' to be displayed.
    # </p><p>
    # Note that a Button can display an image and text simultaneously
    # on Windows (starting with XP), GTK+ and OSX.  On other platforms,
    # a Button that has an image and text set into it will display the
    # image or text that was set most recently.
    # </p>
    # @param string the new text
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the text is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_text(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        return
      end
      @text = string
      chars = fix_mnemonic(string)
      buffer = Converter.wcs_to_mbcs(nil, chars, true)
      OS.gtk_label_set_text_with_mnemonic(@label_handle, buffer)
      if ((@image).nil?)
        OS.gtk_widget_hide(@image_handle)
      end
      OS.gtk_widget_show(@label_handle)
      __set_alignment(self.attr_style)
    end
    
    typesig { [] }
    def show_widget
      super
      if (!(@box_handle).equal?(0))
        OS.gtk_widget_show(@box_handle)
      end
      if (!(@label_handle).equal?(0))
        OS.gtk_widget_show(@label_handle)
      end
      if (!(@arrow_handle).equal?(0))
        OS.gtk_widget_show(@arrow_handle)
      end
    end
    
    typesig { [::Java::Int, GdkEventKey] }
    def traversal_code(key, event)
      code = super(key, event)
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        code &= ~(SWT::TRAVERSE_TAB_NEXT | SWT::TRAVERSE_TAB_PREVIOUS)
      end
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        code |= SWT::TRAVERSE_ARROW_NEXT | SWT::TRAVERSE_ARROW_PREVIOUS
      end
      return code
    end
    
    private
    alias_method :initialize__button, :initialize
  end
  
end
