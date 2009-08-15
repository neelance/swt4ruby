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
  module TrayItemImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  # Instances of this class represent icons that can be placed on the
  # system tray or task bar status area.
  # <p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>(none)</dd>
  # <dt><b>Events:</b></dt>
  # <dd>DefaultSelection, MenuDetect, Selection</dd>
  # </dl>
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#tray">Tray, TrayItem snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.0
  class TrayItem < TrayItemImports.const_get :Item
    include_class_members TrayItemImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :id
    alias_method :attr_id, :id
    undef_method :id
    alias_method :attr_id=, :id=
    undef_method :id=
    
    attr_accessor :image2
    alias_method :attr_image2, :image2
    undef_method :image2
    alias_method :attr_image2=, :image2=
    undef_method :image2=
    
    attr_accessor :tool_tip
    alias_method :attr_tool_tip, :tool_tip
    undef_method :tool_tip
    alias_method :attr_tool_tip=, :tool_tip=
    undef_method :tool_tip=
    
    attr_accessor :tool_tip_text
    alias_method :attr_tool_tip_text, :tool_tip_text
    undef_method :tool_tip_text
    alias_method :attr_tool_tip_text=, :tool_tip_text=
    undef_method :tool_tip_text=
    
    attr_accessor :visible
    alias_method :attr_visible, :visible
    undef_method :visible
    alias_method :attr_visible=, :visible=
    undef_method :visible=
    
    typesig { [Tray, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Tray</code>) and a style value
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
      @parent = nil
      @id = 0
      @image2 = nil
      @tool_tip = nil
      @tool_tip_text = nil
      @visible = false
      super(parent, style)
      @visible = true
      @parent = parent
      parent.create_item(self, parent.get_item_count)
      create_widget
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the receiver is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is called when the receiver is selected
    # <code>widgetDefaultSelected</code> is called when the receiver is double-clicked
    # </p>
    # 
    # @param listener the listener which should be notified when the receiver is selected by the user
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
    
    typesig { [MenuDetectListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the platform-specific context menu trigger
    # has occurred, by sending it one of the messages defined in
    # the <code>MenuDetectListener</code> interface.
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
    # @see MenuDetectListener
    # @see #removeMenuDetectListener
    # 
    # @since 3.3
    def add_menu_detect_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::MenuDetect, typed_listener)
    end
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [] }
    def create_widget
      icon_data = OS::IsUnicode ? NOTIFYICONDATAW.new : NOTIFYICONDATAA.new
      icon_data.attr_cb_size = NOTIFYICONDATA.attr_sizeof
      icon_data.attr_u_id = @id = ((self.attr_display.attr_next_tray_id += 1) - 1)
      icon_data.attr_h_wnd = self.attr_display.attr_hwnd_message
      icon_data.attr_u_flags = OS::NIF_MESSAGE
      icon_data.attr_u_callback_message = Display::SWT_TRAYICONMSG
      OS._shell_notify_icon(OS::NIM_ADD, icon_data)
    end
    
    typesig { [] }
    def destroy_widget
      @parent.destroy_item(self)
      release_handle
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>Tray</code>.
    # 
    # @return the receiver's parent
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def get_parent
      check_widget
      return @parent
    end
    
    typesig { [] }
    # Returns the receiver's tool tip, or null if it has
    # not been set.
    # 
    # @return the receiver's tool tip text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def get_tool_tip
      check_widget
      return @tool_tip
    end
    
    typesig { [] }
    # Returns the receiver's tool tip text, or null if it has
    # not been set.
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
    # Returns <code>true</code> if the receiver is visible and
    # <code>false</code> otherwise.
    # 
    # @return the receiver's visibility
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_visible
      check_widget
      return @visible
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def message_proc(hwnd, msg, w_param, l_param)
      # Feature in Windows.  When the user clicks on the tray
      # icon, another application may be the foreground window.
      # This means that the event loop is not running and can
      # cause problems.  For example, if a menu is shown, when
      # the user clicks outside of the menu to cancel it, the
      # menu is not hidden until an event is processed.  If
      # another application is the foreground window, then the
      # menu is not hidden.  The fix is to force the tray icon
      # message window to the foreground when sending an event.
      # 
      # 64
      case (RJava.cast_to_int(l_param))
      when OS::WM_LBUTTONDOWN
        if (hooks(SWT::Selection))
          OS._set_foreground_window(hwnd)
          post_event(SWT::Selection)
        end
      when OS::WM_LBUTTONDBLCLK, OS::WM_RBUTTONDBLCLK
        if (hooks(SWT::DefaultSelection))
          OS._set_foreground_window(hwnd)
          post_event(SWT::DefaultSelection)
        end
      when OS::WM_RBUTTONUP
        if (hooks(SWT::MenuDetect))
          OS._set_foreground_window(hwnd)
          send_event(SWT::MenuDetect)
          # widget could be disposed at this point
          if (is_disposed)
            return 0
          end
        end
      when OS::NIN_BALLOONSHOW
        if (!(@tool_tip).nil? && !@tool_tip.attr_visible)
          @tool_tip.attr_visible = true
          if (@tool_tip.hooks(SWT::Show))
            OS._set_foreground_window(hwnd)
            @tool_tip.send_event(SWT::Show)
            # widget could be disposed at this point
            if (is_disposed)
              return 0
            end
          end
        end
      when OS::NIN_BALLOONHIDE, OS::NIN_BALLOONTIMEOUT, OS::NIN_BALLOONUSERCLICK
        if (!(@tool_tip).nil?)
          if (@tool_tip.attr_visible)
            @tool_tip.attr_visible = false
            if (@tool_tip.hooks(SWT::Hide))
              OS._set_foreground_window(hwnd)
              @tool_tip.send_event(SWT::Hide)
              # widget could be disposed at this point
              if (is_disposed)
                return 0
              end
            end
          end
          if ((l_param).equal?(OS::NIN_BALLOONUSERCLICK))
            if (@tool_tip.hooks(SWT::Selection))
              OS._set_foreground_window(hwnd)
              @tool_tip.post_event(SWT::Selection)
              # widget could be disposed at this point
              if (is_disposed)
                return 0
              end
            end
          end
        end
      end
      self.attr_display.wake_thread
      return 0
    end
    
    typesig { [] }
    def recreate
      create_widget
      if (!@visible)
        set_visible(false)
      end
      if (!(self.attr_text.length).equal?(0))
        set_text(self.attr_text)
      end
      if (!(self.attr_image).nil?)
        set_image(self.attr_image)
      end
      if (!(@tool_tip_text).nil?)
        set_tool_tip_text(@tool_tip_text)
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
      if (!(@tool_tip).nil?)
        @tool_tip.attr_item = nil
      end
      @tool_tip = nil
      if (!(@image2).nil?)
        @image2.dispose
      end
      @image2 = nil
      @tool_tip_text = RJava.cast_to_string(nil)
      icon_data = OS::IsUnicode ? NOTIFYICONDATAW.new : NOTIFYICONDATAA.new
      icon_data.attr_cb_size = NOTIFYICONDATA.attr_sizeof
      icon_data.attr_u_id = @id
      icon_data.attr_h_wnd = self.attr_display.attr_hwnd_message
      OS._shell_notify_icon(OS::NIM_DELETE, icon_data)
    end
    
    typesig { [SelectionListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the receiver is selected by the user.
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
    
    typesig { [MenuDetectListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the platform-specific context menu trigger has
    # occurred.
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
    # @see MenuDetectListener
    # @see #addMenuDetectListener
    # 
    # @since 3.3
    def remove_menu_detect_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::MenuDetect, listener)
    end
    
    typesig { [Image] }
    # Sets the receiver's image.
    # 
    # @param image the new image
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
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      super(image)
      if (!(@image2).nil?)
        @image2.dispose
      end
      @image2 = nil
      # long
      h_icon = 0
      icon = image
      if (!(icon).nil?)
        case (icon.attr_type)
        when SWT::BITMAP
          @image2 = Display.create_icon(image)
          h_icon = @image2.attr_handle
        when SWT::ICON
          h_icon = icon.attr_handle
        end
      end
      icon_data = OS::IsUnicode ? NOTIFYICONDATAW.new : NOTIFYICONDATAA.new
      icon_data.attr_cb_size = NOTIFYICONDATA.attr_sizeof
      icon_data.attr_u_id = @id
      icon_data.attr_h_wnd = self.attr_display.attr_hwnd_message
      icon_data.attr_h_icon = h_icon
      icon_data.attr_u_flags = OS::NIF_ICON
      OS._shell_notify_icon(OS::NIM_MODIFY, icon_data)
    end
    
    typesig { [ToolTip] }
    # Sets the receiver's tool tip to the argument, which
    # may be null indicating that no tool tip should be shown.
    # 
    # @param toolTip the new tool tip (or null)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def set_tool_tip(tool_tip)
      check_widget
      old_tip = @tool_tip
      new_tip = tool_tip
      if (!(old_tip).nil?)
        old_tip.attr_item = nil
      end
      @tool_tip = new_tip
      if (!(new_tip).nil?)
        new_tip.attr_item = self
      end
    end
    
    typesig { [String] }
    # Sets the receiver's tool tip text to the argument, which
    # may be null indicating that no tool tip text should be shown.
    # 
    # @param value the new tool tip text (or null)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_tool_tip_text(value)
      check_widget
      @tool_tip_text = value
      icon_data = OS::IsUnicode ? NOTIFYICONDATAW.new : NOTIFYICONDATAA.new
      buffer = TCHAR.new(0, (@tool_tip_text).nil? ? "" : @tool_tip_text, true)
      # Note that the size of the szTip field is different in version 5.0 of shell32.dll.
      length_ = OS::SHELL32_MAJOR < 5 ? 64 : 128
      if (OS::IsUnicode)
        sz_tip = (icon_data).attr_sz_tip
        length_ = Math.min(length_ - 1, buffer.length)
        System.arraycopy(buffer.attr_chars, 0, sz_tip, 0, length_)
      else
        sz_tip = (icon_data).attr_sz_tip
        length_ = Math.min(length_ - 1, buffer.length)
        System.arraycopy(buffer.attr_bytes, 0, sz_tip, 0, length_)
      end
      icon_data.attr_cb_size = NOTIFYICONDATA.attr_sizeof
      icon_data.attr_u_id = @id
      icon_data.attr_h_wnd = self.attr_display.attr_hwnd_message
      icon_data.attr_u_flags = OS::NIF_TIP
      OS._shell_notify_icon(OS::NIM_MODIFY, icon_data)
    end
    
    typesig { [::Java::Boolean] }
    # Makes the receiver visible if the argument is <code>true</code>,
    # and makes it invisible otherwise.
    # 
    # @param visible the new visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_visible(visible)
      check_widget
      if ((@visible).equal?(visible))
        return
      end
      if (visible)
        # It is possible (but unlikely), that application
        # code could have disposed the widget in the show
        # event.  If this happens, just return.
        send_event(SWT::Show)
        if (is_disposed)
          return
        end
      end
      @visible = visible
      icon_data = OS::IsUnicode ? NOTIFYICONDATAW.new : NOTIFYICONDATAA.new
      icon_data.attr_cb_size = NOTIFYICONDATA.attr_sizeof
      icon_data.attr_u_id = @id
      icon_data.attr_h_wnd = self.attr_display.attr_hwnd_message
      if (OS::SHELL32_MAJOR < 5)
        if (visible)
          icon_data.attr_u_flags = OS::NIF_MESSAGE
          icon_data.attr_u_callback_message = Display::SWT_TRAYICONMSG
          OS._shell_notify_icon(OS::NIM_ADD, icon_data)
          set_image(self.attr_image)
          set_tool_tip_text(@tool_tip_text)
        else
          OS._shell_notify_icon(OS::NIM_DELETE, icon_data)
        end
      else
        icon_data.attr_u_flags = OS::NIF_STATE
        icon_data.attr_dw_state = visible ? 0 : OS::NIS_HIDDEN
        icon_data.attr_dw_state_mask = OS::NIS_HIDDEN
        OS._shell_notify_icon(OS::NIM_MODIFY, icon_data)
      end
      if (!visible)
        send_event(SWT::Hide)
      end
    end
    
    private
    alias_method :initialize__tray_item, :initialize
  end
  
end
