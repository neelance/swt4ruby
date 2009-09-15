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
  module TrayItemImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
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
  # @noextend This class is not intended to be subclassed by clients.
  class TrayItem < TrayItemImports.const_get :Item
    include_class_members TrayItemImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
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
    
    # long
    attr_accessor :image_handle
    alias_method :attr_image_handle, :image_handle
    undef_method :image_handle
    alias_method :attr_image_handle=, :image_handle=
    undef_method :image_handle=
    
    # long
    attr_accessor :tooltips_handle
    alias_method :attr_tooltips_handle, :tooltips_handle
    undef_method :tooltips_handle
    alias_method :attr_tooltips_handle=, :tooltips_handle=
    undef_method :tooltips_handle=
    
    attr_accessor :image_list
    alias_method :attr_image_list, :image_list
    undef_method :image_list
    alias_method :attr_image_list=, :image_list=
    undef_method :image_list=
    
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
      @tool_tip = nil
      @tool_tip_text = nil
      @image_handle = 0
      @tooltips_handle = 0
      @image_list = nil
      super(parent, style)
      @parent = parent
      create_widget(parent.get_item_count)
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
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [::Java::Int] }
    def create_widget(index)
      super(index)
      @parent.create_item(self, index)
    end
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE
      if (OS::GTK_VERSION >= OS._version(2, 10, 0))
        self.attr_handle = OS.gtk_status_icon_new
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        @image_handle = OS.gtk_image_new
        OS.gtk_status_icon_set_visible(self.attr_handle, true)
      else
        self.attr_handle = OS.gtk_plug_new(0)
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        @image_handle = OS.gtk_image_new
        if ((@image_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_container_add(self.attr_handle, @image_handle)
        OS.gtk_widget_show(self.attr_handle)
        OS.gtk_widget_show(@image_handle)
        # long
        id = OS.gtk_plug_get_id(self.attr_handle)
        monitor = 0
        # long
        screen = OS.gdk_screen_get_default
        if (!(screen).equal?(0))
          monitor = OS.gdk_screen_get_number(screen)
        end
        tray_buffer = Converter.wcs_to_mbcs(nil, "_NET_SYSTEM_TRAY_S" + RJava.cast_to_string(monitor), true)
        # long
        tray_atom = OS.gdk_atom_intern(tray_buffer, true)
        # long
        x_tray_atom = OS.gdk_x11_atom_to_xatom(tray_atom)
        # long
        x_display = OS._gdk_display
        # long
        tray_window = OS._xget_selection_owner(x_display, x_tray_atom)
        message_buffer = Converter.wcs_to_mbcs(nil, "_NET_SYSTEM_TRAY_OPCODE", true)
        # long
        message_atom = OS.gdk_atom_intern(message_buffer, true)
        # long
        x_message_atom = OS.gdk_x11_atom_to_xatom(message_atom)
        event = XClientMessageEvent.new
        event.attr_type = OS::ClientMessage
        event.attr_window = tray_window
        event.attr_message_type = x_message_atom
        event.attr_format = 32
        event.attr_data[0] = OS::GDK_CURRENT_TIME
        event.attr_data[1] = OS::SYSTEM_TRAY_REQUEST_DOCK
        event.attr_data[2] = id
        # long
        client_event = OS.g_malloc(XClientMessageEvent.attr_sizeof)
        OS.memmove___org_eclipse_swt_widgets_tray_item_1(client_event, event, XClientMessageEvent.attr_sizeof)
        OS._xsend_event(x_display, tray_window, false, OS::NoEventMask, client_event)
        OS.g_free(client_event)
      end
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(@image_handle)
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
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_activate(widget)
      post_event(SWT::Selection)
      # Feature in GTK. GTK will generate a single-click event before sending
      # a double-click event. To know when to send a DefaultSelection, look for
      # the single-click as the current event and for the double-click in the
      # event queue.
      # 
      # long
      next_event = OS.gdk_event_peek
      if (!(next_event).equal?(0))
        next_event_type = OS._gdk_event_type(next_event)
        # long
        curr_event = OS.gtk_get_current_event
        curr_event_type = 0
        if (!(curr_event).equal?(0))
          curr_event_type = OS._gdk_event_type(curr_event)
          OS.gdk_event_free(curr_event)
        end
        OS.gdk_event_free(next_event)
        if ((curr_event_type).equal?(OS::GDK_BUTTON_PRESS) && (next_event_type).equal?(OS::GDK_2BUTTON_PRESS))
          post_event(SWT::DefaultSelection)
        end
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_button_press_event(widget, event_ptr)
      gdk_event = GdkEventButton.new
      OS.memmove___org_eclipse_swt_widgets_tray_item_3(gdk_event, event_ptr, GdkEventButton.attr_sizeof)
      if ((gdk_event.attr_type).equal?(OS::GDK_3BUTTON_PRESS))
        return 0
      end
      if ((gdk_event.attr_button).equal?(3) && (gdk_event.attr_type).equal?(OS::GDK_BUTTON_PRESS))
        send_event(SWT::MenuDetect)
        return 0
      end
      if ((gdk_event.attr_type).equal?(OS::GDK_2BUTTON_PRESS))
        post_event(SWT::DefaultSelection)
      else
        post_event(SWT::Selection)
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_size_allocate(widget, allocation)
      if (!(self.attr_image).nil? && !(self.attr_image.attr_mask).equal?(0))
        if ((OS.gdk_drawable_get_depth(self.attr_image.attr_mask)).equal?(1))
          xoffset = RJava.cast_to_int(Math.floor(OS._gtk_widget_x(widget) + ((OS._gtk_widget_width(widget) - OS._gtk_widget_requisition_width(widget)) * 0.5) + 0.5))
          yoffset = RJava.cast_to_int(Math.floor(OS._gtk_widget_y(widget) + ((OS._gtk_widget_height(widget) - OS._gtk_widget_requisition_height(widget)) * 0.5) + 0.5))
          b = self.attr_image.get_bounds
          # long
          gdk_image_ptr = OS.gdk_drawable_get_image(self.attr_image.attr_mask, 0, 0, b.attr_width, b.attr_height)
          if ((gdk_image_ptr).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          gdk_image = GdkImage.new
          OS.memmove___org_eclipse_swt_widgets_tray_item_5(gdk_image, gdk_image_ptr)
          mask_data = Array.typed(::Java::Byte).new(gdk_image.attr_bpl * gdk_image.attr_height) { 0 }
          OS.memmove___org_eclipse_swt_widgets_tray_item_7(mask_data, gdk_image.attr_mem, mask_data.attr_length)
          OS.g_object_unref(gdk_image_ptr)
          region = Region.new(self.attr_display)
          y = 0
          while y < b.attr_height
            x = 0
            while x < b.attr_width
              index = (y * gdk_image.attr_bpl) + (x >> 3)
              the_byte = mask_data[index] & 0xff
              mask = 1 << (x & 0x7)
              if (!((the_byte & mask)).equal?(0))
                region.add(xoffset + x, yoffset + y, 1, 1)
              end
              x += 1
            end
            y += 1
          end
          OS.gtk_widget_realize(self.attr_handle)
          # long
          window = OS._gtk_widget_window(self.attr_handle)
          OS.gdk_window_shape_combine_region(window, region.attr_handle, 0, 0)
          region.dispose
        end
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def gtk_status_icon_popup_menu(widget, button, activate_time)
      send_event(SWT::MenuDetect)
      return 0
    end
    
    typesig { [] }
    def hook_events
      if (OS::GTK_VERSION >= OS._version(2, 10, 0))
        OS.g_signal_connect_closure(self.attr_handle, OS.attr_activate, self.attr_display.attr_closures[ACTIVATE], false)
        OS.g_signal_connect_closure(self.attr_handle, OS.attr_popup_menu, self.attr_display.attr_closures[STATUS_ICON_POPUP_MENU], false)
      else
        event_mask = OS::GDK_BUTTON_PRESS_MASK
        OS.gtk_widget_add_events(self.attr_handle, event_mask)
        OS.g_signal_connect_closure_by_id(self.attr_handle, self.attr_display.attr_signal_ids[BUTTON_PRESS_EVENT], 0, self.attr_display.attr_closures[BUTTON_PRESS_EVENT], false)
        OS.g_signal_connect_closure_by_id(@image_handle, self.attr_display.attr_signal_ids[SIZE_ALLOCATE], 0, self.attr_display.attr_closures[SIZE_ALLOCATE], false)
      end
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
      if (OS::GTK_VERSION >= OS._version(2, 10, 0))
        return OS.gtk_status_icon_get_visible(self.attr_handle)
      end
      return OS._gtk_widget_visible(self.attr_handle)
    end
    
    typesig { [] }
    def register
      super
      self.attr_display.add_widget(@image_handle, self)
    end
    
    typesig { [] }
    def release_handle
      if (!(self.attr_handle).equal?(0))
        if (OS::GTK_VERSION >= OS._version(2, 10, 0))
          OS.g_object_unref(self.attr_handle)
        else
          OS.gtk_widget_destroy(self.attr_handle)
        end
      end
      self.attr_handle = @image_handle = 0
      super
      @parent = nil
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@tooltips_handle).equal?(0))
        OS.g_object_unref(@tooltips_handle)
      end
      @tooltips_handle = 0
      if (!(@image_list).nil?)
        @image_list.dispose
      end
      @image_list = nil
      @tool_tip_text = RJava.cast_to_string(nil)
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
      self.attr_image = image
      if (!(image).nil?)
        if ((@image_list).nil?)
          @image_list = ImageList.new
        end
        image_index = @image_list.index_of(image)
        if ((image_index).equal?(-1))
          image_index = @image_list.add(image)
        else
          @image_list.put(image_index, image)
        end
        # long
        pixbuf = @image_list.get_pixbuf(image_index)
        if (OS::GTK_VERSION >= OS._version(2, 10, 0))
          OS.gtk_status_icon_set_from_pixbuf(self.attr_handle, pixbuf)
          OS.gtk_status_icon_set_visible(self.attr_handle, true)
        else
          rect = image.get_bounds
          OS.gtk_widget_set_size_request(self.attr_handle, rect.attr_width, rect.attr_height)
          OS.gtk_image_set_from_pixbuf(@image_handle, pixbuf)
          OS.gtk_widget_show(@image_handle)
        end
      else
        OS.gtk_widget_set_size_request(self.attr_handle, 1, 1)
        if (OS::GTK_VERSION >= OS._version(2, 10, 0))
          OS.gtk_status_icon_set_from_pixbuf(self.attr_handle, 0)
          OS.gtk_status_icon_set_visible(self.attr_handle, false)
        else
          OS.gtk_image_set_from_pixbuf(@image_handle, 0)
          OS.gtk_widget_hide(@image_handle)
        end
      end
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
    # may be null indicating that the default tool tip for the
    # control will be shown. For a control that has a default
    # tool tip, such as the Tree control on Windows, setting
    # the tool tip text to an empty string replaces the default,
    # causing no tool tip text to be shown.
    # <p>
    # The mnemonic indicator (character '&amp;') is not displayed in a tool tip.
    # To display a single '&amp;' in the tool tip, the character '&amp;' can be
    # escaped by doubling it in the string.
    # </p>
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
      buffer = nil
      if (!(string).nil? && string.length > 0)
        buffer = Converter.wcs_to_mbcs(nil, string, true)
      end
      if ((@tooltips_handle).equal?(0))
        @tooltips_handle = OS.gtk_tooltips_new
        if ((@tooltips_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.g_object_ref(@tooltips_handle)
        OS.gtk_object_sink(@tooltips_handle)
      end
      if (OS::GTK_VERSION >= OS._version(2, 10, 0))
        OS.gtk_status_icon_set_tooltip(self.attr_handle, buffer)
      else
        OS.gtk_tooltips_set_tip(@tooltips_handle, self.attr_handle, buffer, nil)
      end
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
      if (OS::GTK_VERSION >= OS._version(2, 10, 0))
        if ((OS.gtk_status_icon_get_visible(self.attr_handle)).equal?(visible))
          return
        end
      else
        if ((OS._gtk_widget_visible(self.attr_handle)).equal?(visible))
          return
        end
      end
      if (visible)
        # It is possible (but unlikely), that application
        # code could have disposed the widget in the show
        # event.  If this happens, just return.
        send_event(SWT::Show)
        if (is_disposed)
          return
        end
        if (OS::GTK_VERSION >= OS._version(2, 10, 0))
          OS.gtk_status_icon_set_visible(self.attr_handle, visible)
        else
          OS.gtk_widget_show(self.attr_handle)
        end
      else
        if (OS::GTK_VERSION >= OS._version(2, 10, 0))
          OS.gtk_status_icon_set_visible(self.attr_handle, visible)
        else
          OS.gtk_widget_hide(self.attr_handle)
        end
        send_event(SWT::Hide)
      end
    end
    
    private
    alias_method :initialize__tray_item, :initialize
  end
  
end
