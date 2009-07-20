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
  module ToolItemImports
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
  
  # Instances of this class represent a selectable user interface object
  # that represents a button in a tool bar.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>PUSH, CHECK, RADIO, SEPARATOR, DROP_DOWN</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles CHECK, PUSH, RADIO, SEPARATOR and DROP_DOWN
  # may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#toolbar">ToolBar, ToolItem snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class ToolItem < ToolItemImports.const_get :Item
    include_class_members ToolItemImports
    
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
    
    attr_accessor :tool_tip_text
    alias_method :attr_tool_tip_text, :tool_tip_text
    undef_method :tool_tip_text
    alias_method :attr_tool_tip_text=, :tool_tip_text=
    undef_method :tool_tip_text=
    
    attr_accessor :disabled_image
    alias_method :attr_disabled_image, :disabled_image
    undef_method :disabled_image
    alias_method :attr_disabled_image=, :disabled_image=
    undef_method :disabled_image=
    
    attr_accessor :hot_image
    alias_method :attr_hot_image, :hot_image
    undef_method :hot_image
    alias_method :attr_hot_image=, :hot_image=
    undef_method :hot_image=
    
    attr_accessor :disabled_image2
    alias_method :attr_disabled_image2, :disabled_image2
    undef_method :disabled_image2
    alias_method :attr_disabled_image2=, :disabled_image2=
    undef_method :disabled_image2=
    
    attr_accessor :id
    alias_method :attr_id, :id
    undef_method :id
    alias_method :attr_id=, :id=
    undef_method :id=
    
    typesig { [ToolBar, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>ToolBar</code>) and a style value
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
    # @see SWT#PUSH
    # @see SWT#CHECK
    # @see SWT#RADIO
    # @see SWT#SEPARATOR
    # @see SWT#DROP_DOWN
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @parent = nil
      @control = nil
      @tool_tip_text = nil
      @disabled_image = nil
      @hot_image = nil
      @disabled_image2 = nil
      @id = 0
      super(parent, check_style(style))
      @parent = parent
      parent.create_item(self, parent.get_item_count)
    end
    
    typesig { [ToolBar, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>ToolBar</code>), a style value
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
    # @see SWT#PUSH
    # @see SWT#CHECK
    # @see SWT#RADIO
    # @see SWT#SEPARATOR
    # @see SWT#DROP_DOWN
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style, index)
      @parent = nil
      @control = nil
      @tool_tip_text = nil
      @disabled_image = nil
      @hot_image = nil
      @disabled_image2 = nil
      @id = 0
      super(parent, check_style(style))
      @parent = parent
      parent.create_item(self, index)
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # When <code>widgetSelected</code> is called when the mouse is over the arrow portion of a drop-down tool,
    # the event object detail field contains the value <code>SWT.ARROW</code>.
    # <code>widgetDefaultSelected</code> is not called.
    # </p>
    # 
    # @param listener the listener which should be notified when the control is selected by the user,
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
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        return check_bits(style, SWT::PUSH, SWT::CHECK, SWT::RADIO, SWT::SEPARATOR, SWT::DROP_DOWN, 0)
      end
    }
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [::Java::Boolean] }
    def click(drop_down)
      # long
      hwnd = @parent.attr_handle
      if (OS._get_key_state(OS::VK_LBUTTON) < 0)
        return
      end
      # 64
      index = RJava.cast_to_int(OS._send_message(hwnd, OS::TB_COMMANDTOINDEX, @id, 0))
      rect = RECT.new
      OS._send_message(hwnd, OS::TB_GETITEMRECT, index, rect)
      # 64
      hot_index = RJava.cast_to_int(OS._send_message(hwnd, OS::TB_GETHOTITEM, 0, 0))
      # In order to emulate all the processing that
      # happens when a mnemonic key is pressed, fake
      # a mouse press and release.  This will ensure
      # that radio and pull down items are handled
      # properly.
      y = rect.attr_top + (rect.attr_bottom - rect.attr_top) / 2
      # long
      l_param = OS._makelparam(drop_down ? rect.attr_right - 1 : rect.attr_left, y)
      @parent.attr_ignore_mouse = true
      OS._send_message(hwnd, OS::WM_LBUTTONDOWN, 0, l_param)
      OS._send_message(hwnd, OS::WM_LBUTTONUP, 0, l_param)
      @parent.attr_ignore_mouse = false
      if (!(hot_index).equal?(-1))
        OS._send_message(hwnd, OS::TB_SETHOTITEM, hot_index, 0)
      end
    end
    
    typesig { [] }
    def destroy_widget
      @parent.destroy_item(self)
      release_handle
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
      # long
      hwnd = @parent.attr_handle
      # 64
      index = RJava.cast_to_int(OS._send_message(hwnd, OS::TB_COMMANDTOINDEX, @id, 0))
      rect = RECT.new
      OS._send_message(hwnd, OS::TB_GETITEMRECT, index, rect)
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      return Rectangle.new(rect.attr_left, rect.attr_top, width, height)
    end
    
    typesig { [] }
    # Returns the control that is used to fill the bounds of
    # the item when the item is a <code>SEPARATOR</code>.
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
    # Returns the receiver's disabled image if it has one, or null
    # if it does not.
    # <p>
    # The disabled image is displayed when the receiver is disabled.
    # </p>
    # 
    # @return the receiver's disabled image
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_disabled_image
      check_widget
      return @disabled_image
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled, and
    # <code>false</code> otherwise. A disabled control is typically
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
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return ((self.attr_state & DISABLED)).equal?(0)
      end
      # long
      hwnd = @parent.attr_handle
      # long
      fs_state = OS._send_message(hwnd, OS::TB_GETSTATE, @id, 0)
      return !((fs_state & OS::TBSTATE_ENABLED)).equal?(0)
    end
    
    typesig { [] }
    # Returns the receiver's hot image if it has one, or null
    # if it does not.
    # <p>
    # The hot image is displayed when the mouse enters the receiver.
    # </p>
    # 
    # @return the receiver's hot image
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_hot_image
      check_widget
      return @hot_image
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>ToolBar</code>.
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
    # it is selected when it is checked (which some platforms draw as a
    # pushed in button). If the receiver is of any other type, this method
    # returns false.
    # </p>
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
      # long
      hwnd = @parent.attr_handle
      # long
      fs_state = OS._send_message(hwnd, OS::TB_GETSTATE, @id, 0)
      return !((fs_state & OS::TBSTATE_CHECKED)).equal?(0)
    end
    
    typesig { [] }
    # Returns the receiver's tool tip text, or null if it has not been set.
    # 
    # @return the receiver's tool tip text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_tool_tip_text
      check_widget
      return @tool_tip_text
    end
    
    typesig { [] }
    # Gets the width of the receiver.
    # 
    # @return the width
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_width
      check_widget
      # long
      hwnd = @parent.attr_handle
      # 64
      index = RJava.cast_to_int(OS._send_message(hwnd, OS::TB_COMMANDTOINDEX, @id, 0))
      rect = RECT.new
      OS._send_message(hwnd, OS::TB_GETITEMRECT, index, rect)
      return rect.attr_right - rect.attr_left
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled and all
    # of the receiver's ancestors are enabled, and <code>false</code>
    # otherwise. A disabled control is typically not selectable from the
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
      return get_enabled && @parent.is_enabled
    end
    
    typesig { [] }
    def release_widget
      super
      release_images
      @control = nil
      @tool_tip_text = (nil).to_s
      @disabled_image = @hot_image = nil
      if (!(@disabled_image2).nil?)
        @disabled_image2.dispose
      end
      @disabled_image2 = nil
    end
    
    typesig { [] }
    def release_handle
      super
      @parent = nil
      @id = -1
    end
    
    typesig { [] }
    def release_images
      info = TBBUTTONINFO.new
      info.attr_cb_size = TBBUTTONINFO.attr_sizeof
      info.attr_dw_mask = OS::TBIF_IMAGE | OS::TBIF_STYLE
      # long
      hwnd = @parent.attr_handle
      OS._send_message(hwnd, OS::TB_GETBUTTONINFO, @id, info)
      # Feature in Windows.  For some reason, a tool item that has
      # the style BTNS_SEP does not return I_IMAGENONE when queried
      # for an image index, despite the fact that no attempt has been
      # made to assign an image to the item.  As a result, operations
      # on an image list that use the wrong index cause random results.
      # The fix is to ensure that the tool item is not a separator
      # before using the image index.  Since separators cannot have
      # an image and one is never assigned, this is not a problem.
      if (((info.attr_fs_style & OS::BTNS_SEP)).equal?(0) && !(info.attr_i_image).equal?(OS::I_IMAGENONE))
        image_list = @parent.get_image_list
        hot_image_list = @parent.get_hot_image_list
        disabled_image_list = @parent.get_disabled_image_list
        if (!(image_list).nil?)
          image_list.put(info.attr_i_image, nil)
        end
        if (!(hot_image_list).nil?)
          hot_image_list.put(info.attr_i_image, nil)
        end
        if (!(disabled_image_list).nil?)
          disabled_image_list.put(info.attr_i_image, nil)
        end
      end
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
    def resize_control
      if (!(@control).nil? && !@control.is_disposed)
        # Set the size and location of the control
        # separately to minimize flashing in the
        # case where the control does not resize
        # to the size that was requested.  This
        # case can occur when the control is a
        # combo box.
        item_rect = get_bounds
        @control.set_size(item_rect.attr_width, item_rect.attr_height)
        rect = @control.get_bounds
        rect.attr_x = item_rect.attr_x + (item_rect.attr_width - rect.attr_width) / 2
        rect.attr_y = item_rect.attr_y + (item_rect.attr_height - rect.attr_height) / 2
        @control.set_location(rect.attr_x, rect.attr_y)
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
    
    typesig { [Control] }
    # Sets the control that is used to fill the bounds of
    # the item when the item is a <code>SEPARATOR</code>.
    # 
    # @param control the new control
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
      if (((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      @control = control
      # Feature in Windows.  When a tool bar wraps, tool items
      # with the style BTNS_SEP are used as wrap points.  This
      # means that controls that are placed on top of separator
      # items are not positioned properly.  Also, vertical tool
      # bars are implemented using TB_SETROWS to set the number
      # of rows.  When a control is placed on top of a separator,
      # the height of the separator does not grow.  The fix in
      # both cases is to change the tool item style from BTNS_SEP
      # to BTNS_BUTTON, causing the item to wrap like a tool item
      # button.  The new tool item button is disabled to avoid key
      # traversal and the image is set to I_IMAGENONE to avoid
      # getting the first image from the image list.
      if (!((@parent.attr_style & (SWT::WRAP | SWT::VERTICAL))).equal?(0))
        changed = false
        # long
        hwnd = @parent.attr_handle
        info = TBBUTTONINFO.new
        info.attr_cb_size = TBBUTTONINFO.attr_sizeof
        info.attr_dw_mask = OS::TBIF_STYLE | OS::TBIF_STATE
        OS._send_message(hwnd, OS::TB_GETBUTTONINFO, @id, info)
        if ((control).nil?)
          if (((info.attr_fs_style & OS::BTNS_SEP)).equal?(0))
            changed = true
            info.attr_fs_style &= ~OS::BTNS_BUTTON
            info.attr_fs_style |= OS::BTNS_SEP
            if (!((self.attr_state & DISABLED)).equal?(0))
              info.attr_fs_state &= ~OS::TBSTATE_ENABLED
            else
              info.attr_fs_state |= OS::TBSTATE_ENABLED
            end
          end
        else
          if (!((info.attr_fs_style & OS::BTNS_SEP)).equal?(0))
            changed = true
            info.attr_fs_style &= ~OS::BTNS_SEP
            info.attr_fs_style |= OS::BTNS_BUTTON
            info.attr_fs_state &= ~OS::TBSTATE_ENABLED
            info.attr_dw_mask |= OS::TBIF_IMAGE
            info.attr_i_image = OS::I_IMAGENONE
          end
        end
        if (changed)
          OS._send_message(hwnd, OS::TB_SETBUTTONINFO, @id, info)
          # Bug in Windows.  When TB_SETBUTTONINFO changes the
          # style of a tool item from BTNS_SEP to BTNS_BUTTON
          # and the tool bar is wrapped, the tool bar does not
          # redraw properly.  Windows uses separator items as
          # wrap points and sometimes draws etching above or
          # below and entire row.  The fix is to redraw the
          # tool bar.
          if (OS._send_message(hwnd, OS::TB_GETROWS, 0, 0) > 1)
            OS._invalidate_rect(hwnd, nil, true)
          end
        end
      end
      resize_control
    end
    
    typesig { [::Java::Boolean] }
    # Enables the receiver if the argument is <code>true</code>,
    # and disables it otherwise.
    # <p>
    # A disabled control is typically
    # not selectable from the user interface and draws with an
    # inactive or "grayed" look.
    # </p>
    # 
    # @param enabled the new enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_enabled(enabled)
      check_widget
      # long
      hwnd = @parent.attr_handle
      # 64
      fs_state = RJava.cast_to_int(OS._send_message(hwnd, OS::TB_GETSTATE, @id, 0))
      # Feature in Windows.  When TB_SETSTATE is used to set the
      # state of a tool item, the item redraws even when the state
      # has not changed.  The fix is to detect this case and avoid
      # setting the state.
      if (((!((fs_state & OS::TBSTATE_ENABLED)).equal?(0))).equal?(enabled))
        return
      end
      if (enabled)
        fs_state |= OS::TBSTATE_ENABLED
        self.attr_state &= ~DISABLED
      else
        fs_state &= ~OS::TBSTATE_ENABLED
        self.attr_state |= DISABLED
      end
      OS._send_message(hwnd, OS::TB_SETSTATE, @id, fs_state)
      if (((self.attr_style & SWT::SEPARATOR)).equal?(0))
        if (!(self.attr_image).nil?)
          update_images(enabled && @parent.get_enabled)
        end
      end
    end
    
    typesig { [Image] }
    # Sets the receiver's disabled image to the argument, which may be
    # null indicating that no disabled image should be displayed.
    # <p>
    # The disabled image is displayed when the receiver is disabled.
    # </p>
    # 
    # @param image the disabled image to display on the receiver (may be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the image has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_disabled_image(image)
      check_widget
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @disabled_image = image
      update_images(get_enabled && @parent.get_enabled)
    end
    
    typesig { [Image] }
    # Sets the receiver's hot image to the argument, which may be
    # null indicating that no hot image should be displayed.
    # <p>
    # The hot image is displayed when the mouse enters the receiver.
    # </p>
    # 
    # @param image the hot image to display on the receiver (may be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the image has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_hot_image(image)
      check_widget
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @hot_image = image
      update_images(get_enabled && @parent.get_enabled)
    end
    
    typesig { [Image] }
    def set_image(image)
      check_widget
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      super(image)
      update_images(get_enabled && @parent.get_enabled)
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
    # it is selected when it is checked (which some platforms draw as a
    # pushed in button).
    # </p>
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
      # long
      hwnd = @parent.attr_handle
      # 64
      fs_state = RJava.cast_to_int(OS._send_message(hwnd, OS::TB_GETSTATE, @id, 0))
      # Feature in Windows.  When TB_SETSTATE is used to set the
      # state of a tool item, the item redraws even when the state
      # has not changed.  The fix is to detect this case and avoid
      # setting the state.
      if (((!((fs_state & OS::TBSTATE_CHECKED)).equal?(0))).equal?(selected))
        return
      end
      if (selected)
        fs_state |= OS::TBSTATE_CHECKED
      else
        fs_state &= ~OS::TBSTATE_CHECKED
      end
      OS._send_message(hwnd, OS::TB_SETSTATE, @id, fs_state)
      # Bug in Windows.  When a tool item with the style
      # BTNS_CHECK or BTNS_CHECKGROUP is selected and then
      # disabled, the item does not draw using the disabled
      # image.  The fix is to use the disabled image in all
      # image lists for the item.
      # 
      # NOTE: This means that the image list must be updated
      # when the selection changes in a disabled tool item.
      if (!((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
        if (!get_enabled || !@parent.get_enabled)
          update_images(false)
        end
      end
    end
    
    typesig { [String] }
    # Sets the receiver's text. The string may include
    # the mnemonic character.
    # </p>
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
    def set_text(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      if ((string == self.attr_text))
        return
      end
      super(string)
      # long
      hwnd = @parent.attr_handle
      info = TBBUTTONINFO.new
      info.attr_cb_size = TBBUTTONINFO.attr_sizeof
      info.attr_dw_mask = OS::TBIF_TEXT | OS::TBIF_STYLE
      info.attr_fs_style = (widget_style | OS::BTNS_AUTOSIZE)
      # long
      h_heap = OS._get_process_heap
      psz_text = 0
      if (!(string.length).equal?(0))
        info.attr_fs_style |= OS::BTNS_SHOWTEXT
        buffer = TCHAR.new(@parent.get_code_page, string, true)
        byte_count = buffer.length * TCHAR.attr_sizeof
        psz_text = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
        OS._move_memory(psz_text, buffer, byte_count)
        info.attr_psz_text = psz_text
      end
      OS._send_message(hwnd, OS::TB_SETBUTTONINFO, @id, info)
      if (!(psz_text).equal?(0))
        OS._heap_free(h_heap, 0, psz_text)
      end
      # Bug in Windows.  For some reason, when the font is set
      # before any tool item has text, the tool items resize to
      # a very small size.  Also, a tool item will only show text
      # when text has already been set on one item and then a new
      # item is created.  The fix is to use WM_SETFONT to force
      # the tool bar to redraw and layout.
      @parent.set_drop_down_items(false)
      # long
      h_font = OS._send_message(hwnd, OS::WM_GETFONT, 0, 0)
      OS._send_message(hwnd, OS::WM_SETFONT, h_font, 0)
      @parent.set_drop_down_items(true)
      @parent.layout_items
    end
    
    typesig { [String] }
    # Sets the receiver's tool tip text to the argument, which
    # may be null indicating that no tool tip text should be shown.
    # 
    # @param string the new tool tip text (or null)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_tool_tip_text(string)
      check_widget
      @tool_tip_text = string
    end
    
    typesig { [::Java::Int] }
    # Sets the width of the receiver, for <code>SEPARATOR</code> ToolItems.
    # 
    # @param width the new width
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_width(width)
      check_widget
      if (((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      if (width < 0)
        return
      end
      # long
      hwnd = @parent.attr_handle
      info = TBBUTTONINFO.new
      info.attr_cb_size = TBBUTTONINFO.attr_sizeof
      info.attr_dw_mask = OS::TBIF_SIZE
      info.attr_cx = RJava.cast_to_short(width)
      OS._send_message(hwnd, OS::TB_SETBUTTONINFO, @id, info)
      @parent.layout_items
    end
    
    typesig { [::Java::Boolean] }
    def update_images(enabled)
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      # long
      hwnd = @parent.attr_handle
      info = TBBUTTONINFO.new
      info.attr_cb_size = TBBUTTONINFO.attr_sizeof
      info.attr_dw_mask = OS::TBIF_IMAGE
      OS._send_message(hwnd, OS::TB_GETBUTTONINFO, @id, info)
      if ((info.attr_i_image).equal?(OS::I_IMAGENONE) && (self.attr_image).nil?)
        return
      end
      image_list = @parent.get_image_list
      hot_image_list = @parent.get_hot_image_list
      disabled_image_list = @parent.get_disabled_image_list
      if ((info.attr_i_image).equal?(OS::I_IMAGENONE))
        bounds = self.attr_image.get_bounds
        list_style = @parent.attr_style & SWT::RIGHT_TO_LEFT
        if ((image_list).nil?)
          image_list = self.attr_display.get_image_list_tool_bar(list_style, bounds.attr_width, bounds.attr_height)
        end
        if ((disabled_image_list).nil?)
          disabled_image_list = self.attr_display.get_image_list_tool_bar_disabled(list_style, bounds.attr_width, bounds.attr_height)
        end
        if ((hot_image_list).nil?)
          hot_image_list = self.attr_display.get_image_list_tool_bar_hot(list_style, bounds.attr_width, bounds.attr_height)
        end
        disabled = @disabled_image
        if ((@disabled_image).nil?)
          if (!(@disabled_image2).nil?)
            @disabled_image2.dispose
          end
          @disabled_image2 = nil
          disabled = self.attr_image
          if (!enabled)
            disabled = @disabled_image2 = Image.new(self.attr_display, self.attr_image, SWT::IMAGE_DISABLE)
          end
        end
        # Bug in Windows.  When a tool item with the style
        # BTNS_CHECK or BTNS_CHECKGROUP is selected and then
        # disabled, the item does not draw using the disabled
        # image.  The fix is to assign the disabled image in
        # all image lists.
        image2 = self.attr_image
        hot = @hot_image
        if (!((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
          if (!enabled)
            image2 = hot = disabled
          end
        end
        info.attr_i_image = image_list.add(image2)
        disabled_image_list.add(disabled)
        hot_image_list.add(!(hot).nil? ? hot : image2)
        @parent.set_image_list(image_list)
        @parent.set_disabled_image_list(disabled_image_list)
        @parent.set_hot_image_list(hot_image_list)
      else
        disabled = nil
        if (!(disabled_image_list).nil?)
          if (!(self.attr_image).nil?)
            if (!(@disabled_image2).nil?)
              @disabled_image2.dispose
            end
            @disabled_image2 = nil
            disabled = @disabled_image
            if ((@disabled_image).nil?)
              disabled = self.attr_image
              if (!enabled)
                disabled = @disabled_image2 = Image.new(self.attr_display, self.attr_image, SWT::IMAGE_DISABLE)
              end
            end
          end
          disabled_image_list.put(info.attr_i_image, disabled)
        end
        # Bug in Windows.  When a tool item with the style
        # BTNS_CHECK or BTNS_CHECKGROUP is selected and then
        # disabled, the item does not draw using the disabled
        # image.  The fix is to use the disabled image in all
        # image lists.
        image2 = self.attr_image
        hot = @hot_image
        if (!((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
          if (!enabled)
            image2 = hot = disabled
          end
        end
        if (!(image_list).nil?)
          image_list.put(info.attr_i_image, image2)
        end
        if (!(hot_image_list).nil?)
          hot_image_list.put(info.attr_i_image, !(hot).nil? ? hot : image2)
        end
        if ((self.attr_image).nil?)
          info.attr_i_image = OS::I_IMAGENONE
        end
      end
      # Bug in Windows.  If the width of an item has already been
      # calculated, the tool bar control will not recalculate it to
      # include the space for the image.  The fix is to set the width
      # to zero, forcing the control recalculate the width for the item.
      info.attr_dw_mask |= OS::TBIF_SIZE
      info.attr_cx = 0
      OS._send_message(hwnd, OS::TB_SETBUTTONINFO, @id, info)
      @parent.layout_items
    end
    
    typesig { [] }
    def widget_style
      if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
        return OS::BTNS_DROPDOWN
      end
      if (!((self.attr_style & SWT::PUSH)).equal?(0))
        return OS::BTNS_BUTTON
      end
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        return OS::BTNS_CHECK
      end
      # This code is intentionally commented.  In order to
      # consistently support radio tool items across platforms,
      # the platform radio behavior is not used.
      # 
      # if ((style & SWT.RADIO) != 0) return OS.BTNS_CHECKGROUP;
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        return OS::BTNS_CHECK
      end
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return OS::BTNS_SEP
      end
      return OS::BTNS_BUTTON
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_command_child(w_param, l_param)
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        if (((@parent.get_style & SWT::NO_RADIO_GROUP)).equal?(0))
          select_radio
        end
      end
      post_event(SWT::Selection)
      return nil
    end
    
    private
    alias_method :initialize__tool_item, :initialize
  end
  
end
