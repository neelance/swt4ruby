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
  module ToolTipImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # Instances of this class represent popup windows that are used
  # to inform or warn the user.
  # <p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>BALLOON, ICON_ERROR, ICON_INFORMATION, ICON_WARNING</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # </p><p>
  # Note: Only one of the styles ICON_ERROR, ICON_INFORMATION,
  # and ICON_WARNING may be specified.
  # </p><p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#tooltips">Tool Tips snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.2
  class ToolTip < ToolTipImports.const_get :Widget
    include_class_members ToolTipImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :item
    alias_method :attr_item, :item
    undef_method :item
    alias_method :attr_item=, :item=
    undef_method :item=
    
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    attr_accessor :message
    alias_method :attr_message, :message
    undef_method :message
    alias_method :attr_message=, :message=
    undef_method :message=
    
    attr_accessor :id
    alias_method :attr_id, :id
    undef_method :id
    alias_method :attr_id=, :id=
    undef_method :id=
    
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
    
    attr_accessor :auto_hide
    alias_method :attr_auto_hide, :auto_hide
    undef_method :auto_hide
    alias_method :attr_auto_hide=, :auto_hide=
    undef_method :auto_hide=
    
    attr_accessor :has_location
    alias_method :attr_has_location, :has_location
    undef_method :has_location
    alias_method :attr_has_location=, :has_location=
    undef_method :has_location=
    
    attr_accessor :visible
    alias_method :attr_visible, :visible
    undef_method :visible
    alias_method :attr_visible=, :visible=
    undef_method :visible=
    
    class_module.module_eval {
      const_set_lazy(:TIMER_ID) { 100 }
      const_attr_reader  :TIMER_ID
    }
    
    typesig { [Shell, ::Java::Int] }
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
    # @see SWT#ICON_ERROR
    # @see SWT#ICON_INFORMATION
    # @see SWT#ICON_WARNING
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @parent = nil
      @item = nil
      @text = nil
      @message = nil
      @id = 0
      @x = 0
      @y = 0
      @auto_hide = false
      @has_location = false
      @visible = false
      super(parent, check_style(style))
      @text = ""
      @message = ""
      @auto_hide = true
      @parent = parent
      check_orientation(parent)
      parent.create_tool_tip(self)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        mask = SWT::ICON_ERROR | SWT::ICON_INFORMATION | SWT::ICON_WARNING
        if (((style & mask)).equal?(0))
          return style
        end
        return check_bits(style, SWT::ICON_INFORMATION, SWT::ICON_WARNING, SWT::ICON_ERROR, 0, 0, 0)
      end
    }
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the receiver is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is called when the receiver is selected.
    # <code>widgetDefaultSelected</code> is not called.
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
    
    typesig { [] }
    def destroy_widget
      if (!(@parent).nil?)
        @parent.destroy_tool_tip(self)
      end
      release_handle
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is automatically
    # hidden by the platform, and <code>false</code> otherwise.
    # 
    # @return the receiver's auto hide state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_auto_hide
      check_widget
      return @auto_hide
    end
    
    typesig { [] }
    # Returns the receiver's message, which will be an empty
    # string if it has never been set.
    # 
    # @return the receiver's message
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_message
      check_widget
      return @message
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>Shell</code>.
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
    # Returns the receiver's text, which will be an empty
    # string if it has never been set.
    # 
    # @return the receiver's text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text
      check_widget
      return @text
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
      if (OS::IsWinCE)
        return false
      end
      if (!(@item).nil?)
        return @visible
      end
      # long
      hwnd_tool_tip_ = hwnd_tool_tip
      if (!(OS._send_message(hwnd_tool_tip_, OS::TTM_GETCURRENTTOOL, 0, 0)).equal?(0))
        lpti = TOOLINFO.new
        lpti.attr_cb_size = TOOLINFO.attr_sizeof
        if (!(OS._send_message(hwnd_tool_tip_, OS::TTM_GETCURRENTTOOL, 0, lpti)).equal?(0))
          return ((lpti.attr_u_flags & OS::TTF_IDISHWND)).equal?(0) && (lpti.attr_u_id).equal?(@id)
        end
      end
      return false
    end
    
    typesig { [] }
    # long
    def hwnd_tool_tip
      return !((self.attr_style & SWT::BALLOON)).equal?(0) ? @parent.balloon_tip_handle : @parent.tool_tip_handle
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
      if (!(@item).nil?)
        return get_visible && @item.get_visible
      end
      return get_visible
    end
    
    typesig { [] }
    def release_handle
      super
      @parent = nil
      @item = nil
      @id = -1
    end
    
    typesig { [] }
    def release_widget
      super
      if ((@item).nil?)
        if (@auto_hide)
          # long
          hwnd_tool_tip_ = hwnd_tool_tip
          if (!(OS._send_message(hwnd_tool_tip_, OS::TTM_GETCURRENTTOOL, 0, 0)).equal?(0))
            lpti = TOOLINFO.new
            lpti.attr_cb_size = TOOLINFO.attr_sizeof
            if (!(OS._send_message(hwnd_tool_tip_, OS::TTM_GETCURRENTTOOL, 0, lpti)).equal?(0))
              if (((lpti.attr_u_flags & OS::TTF_IDISHWND)).equal?(0))
                if ((lpti.attr_u_id).equal?(@id))
                  OS._send_message(hwnd_tool_tip_, OS::TTM_TRACKACTIVATE, 0, lpti)
                  OS._send_message(hwnd_tool_tip_, OS::TTM_POP, 0, 0)
                  OS._kill_timer(hwnd_tool_tip_, TIMER_ID)
                end
              end
            end
          end
        end
      end
      if (!(@item).nil? && (@item.attr_tool_tip).equal?(self))
        @item.attr_tool_tip = nil
      end
      @item = nil
      @text = (@message = (nil).to_s).to_s
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
    
    typesig { [::Java::Boolean] }
    # Makes the receiver hide automatically when <code>true</code>,
    # and remain visible when <code>false</code>.
    # 
    # @param autoHide the auto hide state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getVisible
    # @see #setVisible
    def set_auto_hide(auto_hide)
      check_widget
      @auto_hide = auto_hide
      # TODO - update when visible
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the location of the receiver, which must be a tooltip,
    # to the point specified by the arguments which are relative
    # to the display.
    # <p>
    # Note that this is different from most widgets where the
    # location of the widget is relative to the parent.
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
      @x = x
      @y = y
      @has_location = true
      # TODO - update when visible
    end
    
    typesig { [Point] }
    # Sets the location of the receiver, which must be a tooltip,
    # to the point specified by the argument which is relative
    # to the display.
    # <p>
    # Note that this is different from most widgets where the
    # location of the widget is relative to the parent.
    # </p><p>
    # Note that the platform window manager ultimately has control
    # over the location of tooltips.
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
    def set_location(location)
      check_widget
      if ((location).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_location(location.attr_x, location.attr_y)
    end
    
    typesig { [String] }
    # Sets the receiver's message.
    # 
    # @param string the new message
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the text is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_message(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      @message = string
      # TODO - update when visible
    end
    
    typesig { [String] }
    # Sets the receiver's text.
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
      @text = string
      # TODO - update when visible
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
      if (OS::IsWinCE)
        return
      end
      if ((visible).equal?(get_visible))
        return
      end
      if ((@item).nil?)
        # long
        hwnd = @parent.attr_handle
        lpti = TOOLINFO.new
        lpti.attr_cb_size = TOOLINFO.attr_sizeof
        lpti.attr_u_id = @id
        lpti.attr_hwnd = hwnd
        # long
        hwnd_tool_tip_ = hwnd_tool_tip
        shell = @parent.get_shell
        if (!(@text.length).equal?(0))
          icon = OS::TTI_NONE
          if (!((self.attr_style & SWT::ICON_INFORMATION)).equal?(0))
            icon = OS::TTI_INFO
          end
          if (!((self.attr_style & SWT::ICON_WARNING)).equal?(0))
            icon = OS::TTI_WARNING
          end
          if (!((self.attr_style & SWT::ICON_ERROR)).equal?(0))
            icon = OS::TTI_ERROR
          end
          shell.set_tool_tip_title(hwnd_tool_tip_, @text, icon)
        else
          shell.set_tool_tip_title(hwnd_tool_tip_, nil, 0)
        end
        max_width = 0
        if (OS::IsWinCE || OS::WIN32_VERSION < OS._version(4, 10))
          rect = RECT.new
          OS._system_parameters_info(OS::SPI_GETWORKAREA, 0, rect, 0)
          max_width = (rect.attr_right - rect.attr_left) / 4
        else
          # long
          hmonitor = OS._monitor_from_window(hwnd, OS::MONITOR_DEFAULTTONEAREST)
          lpmi = MONITORINFO.new
          lpmi.attr_cb_size = MONITORINFO.attr_sizeof
          OS._get_monitor_info(hmonitor, lpmi)
          max_width = (lpmi.attr_rc_work_right - lpmi.attr_rc_work_left) / 4
        end
        OS._send_message(hwnd_tool_tip_, OS::TTM_SETMAXTIPWIDTH, 0, max_width)
        if (visible)
          n_x = @x
          n_y = @y
          if (!@has_location)
            pt = POINT.new
            if (OS._get_cursor_pos(pt))
              n_x = pt.attr_x
              n_y = pt.attr_y
            end
          end
          # long
          l_param = OS._makelparam(n_x, n_y)
          OS._send_message(hwnd_tool_tip_, OS::TTM_TRACKPOSITION, 0, l_param)
          # Feature in Windows.  Windows will not show a tool tip
          # if the cursor is outside the parent window (even on XP,
          # TTM_POPUP will not do this).  The fix is to temporarily
          # move the cursor into the tool window, show the tool tip,
          # and then restore the cursor.
          pt = POINT.new
          OS._get_cursor_pos(pt)
          rect = RECT.new
          OS._get_client_rect(hwnd, rect)
          OS._map_window_points(hwnd, 0, rect, 2)
          if (!OS._pt_in_rect(rect, pt))
            # long
            h_cursor = OS._get_cursor
            OS._set_cursor(0)
            OS._set_cursor_pos(rect.attr_left, rect.attr_top)
            OS._send_message(hwnd_tool_tip_, OS::TTM_TRACKACTIVATE, 1, lpti)
            OS._set_cursor_pos(pt.attr_x, pt.attr_y)
            OS._set_cursor(h_cursor)
          else
            OS._send_message(hwnd_tool_tip_, OS::TTM_TRACKACTIVATE, 1, lpti)
          end
          # 64
          time = RJava.cast_to_int(OS._send_message(hwnd_tool_tip_, OS::TTM_GETDELAYTIME, OS::TTDT_AUTOPOP, 0))
          OS._set_timer(hwnd_tool_tip_, TIMER_ID, time, 0)
        else
          OS._send_message(hwnd_tool_tip_, OS::TTM_TRACKACTIVATE, 0, lpti)
          OS._send_message(hwnd_tool_tip_, OS::TTM_POP, 0, 0)
          OS._kill_timer(hwnd_tool_tip_, TIMER_ID)
        end
        return
      end
      if (!(@item).nil? && OS::SHELL32_MAJOR >= 5)
        if (visible)
          icon_data = OS::IsUnicode ? NOTIFYICONDATAW.new : NOTIFYICONDATAA.new
          buffer1 = TCHAR.new(0, @text, true)
          buffer2 = TCHAR.new(0, @message, true)
          if (OS::IsUnicode)
            sz_info_title = (icon_data).attr_sz_info_title
            length1 = Math.min(sz_info_title.attr_length - 1, buffer1.length)
            System.arraycopy(buffer1.attr_chars, 0, sz_info_title, 0, length1)
            sz_info = (icon_data).attr_sz_info
            length2 = Math.min(sz_info.attr_length - 1, buffer2.length)
            System.arraycopy(buffer2.attr_chars, 0, sz_info, 0, length2)
          else
            sz_info_title = (icon_data).attr_sz_info_title
            length_ = Math.min(sz_info_title.attr_length - 1, buffer1.length)
            System.arraycopy(buffer1.attr_bytes, 0, sz_info_title, 0, length_)
            sz_info = (icon_data).attr_sz_info
            length2 = Math.min(sz_info.attr_length - 1, buffer2.length)
            System.arraycopy(buffer2.attr_bytes, 0, sz_info, 0, length2)
          end
          display = @item.get_display
          icon_data.attr_cb_size = NOTIFYICONDATA.attr_sizeof
          icon_data.attr_u_id = @item.attr_id
          icon_data.attr_h_wnd = display.attr_hwnd_message
          icon_data.attr_u_flags = OS::NIF_INFO
          if (!((self.attr_style & SWT::ICON_INFORMATION)).equal?(0))
            icon_data.attr_dw_info_flags = OS::NIIF_INFO
          end
          if (!((self.attr_style & SWT::ICON_WARNING)).equal?(0))
            icon_data.attr_dw_info_flags = OS::NIIF_WARNING
          end
          if (!((self.attr_style & SWT::ICON_ERROR)).equal?(0))
            icon_data.attr_dw_info_flags = OS::NIIF_ERROR
          end
          send_event(SWT::Show)
          @visible = OS._shell_notify_icon(OS::NIM_MODIFY, icon_data)
        else
          # TODO - hide the tray item
        end
      end
    end
    
    private
    alias_method :initialize__tool_tip, :initialize
  end
  
end
