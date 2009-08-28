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
  module TrayItemImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
    
    attr_accessor :highlight
    alias_method :attr_highlight, :highlight
    undef_method :highlight
    alias_method :attr_highlight=, :highlight=
    undef_method :highlight=
    
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    attr_accessor :ns_image
    alias_method :attr_ns_image, :ns_image
    undef_method :ns_image
    alias_method :attr_ns_image=, :ns_image=
    undef_method :ns_image=
    
    attr_accessor :view
    alias_method :attr_view, :view
    undef_method :view
    alias_method :attr_view=, :view=
    undef_method :view=
    
    attr_accessor :jni_ref
    alias_method :attr_jni_ref, :jni_ref
    undef_method :jni_ref
    alias_method :attr_jni_ref=, :jni_ref=
    undef_method :jni_ref=
    
    class_module.module_eval {
      const_set_lazy(:BORDER) { 8 }
      const_attr_reader  :BORDER
    }
    
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
      @visible = false
      @highlight = false
      @handle = 0
      @ns_image = 0
      @view = 0
      @jni_ref = 0
      super(parent, style)
      @visible = true
      @parent = parent
      parent.create_item(self, parent.get_item_count)
      create_widget
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
    
    typesig { [] }
    def create_widget
      status_bar = Cocoa.objc_msg_send(Cocoa::C_NSStatusBar, Cocoa::S_systemStatusBar)
      @handle = Cocoa.objc_msg_send(status_bar, Cocoa::S_statusItemWithLength, 0)
      if ((@handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      Cocoa.objc_msg_send(@handle, Cocoa::S_retain)
      Cocoa.objc_msg_send(@handle, Cocoa::S_setHighlightMode, 1)
      @jni_ref = OS._new_global_ref(self)
      if ((@jni_ref).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      rect = NSRect.new
      @view = Cocoa.objc_msg_send(Cocoa::C_NSStatusItemImageView, Cocoa::S_alloc)
      if ((@view).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      @view = Cocoa.objc_msg_send(@view, Cocoa::S_initWithProc_frame_user_data, self.attr_display.attr_tray_item_proc, rect, @jni_ref)
      Cocoa.objc_msg_send(@handle, Cocoa::S_setView, @view)
    end
    
    typesig { [] }
    def destroy_widget
      @parent.destroy_item(self)
      release_handle
    end
    
    typesig { [] }
    def get_location
      rect = NSRect.new
      Cocoa.objc_msg_send_stret(rect, @view, Cocoa::S_frame)
      window_rect = NSRect.new
      Cocoa.objc_msg_send_stret(window_rect, Cocoa.objc_msg_send(@view, Cocoa::S_window), Cocoa::S_frame)
      rect.attr_x += rect.attr_width / 2
      rect.attr_y += rect.attr_height
      Cocoa.objc_msg_send_stret(rect, @view, Cocoa::S_convertRect_toView, rect, 0)
      rect.attr_x += window_rect.attr_x
      return Point.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y))
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
    
    typesig { [] }
    def release_handle
      super
      @parent = nil
      @handle = 0
    end
    
    typesig { [] }
    def release_widget
      status_bar = Cocoa.objc_msg_send(Cocoa::C_NSStatusBar, Cocoa::S_systemStatusBar)
      Cocoa.objc_msg_send(status_bar, Cocoa::S_removeStatusItem, @handle)
      Cocoa.objc_msg_send(@ns_image, Cocoa::S_release, @handle)
      if (!(@ns_image).equal?(0))
        Cocoa.objc_msg_send(@ns_image, Cocoa::S_release)
      end
      if (!(@view).equal?(0))
        Cocoa.objc_msg_send(@view, Cocoa::S_release)
      end
      if (!(@jni_ref).equal?(0))
        OS._delete_global_ref(@jni_ref)
      end
      @handle = @ns_image = @view = @jni_ref = 0
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
      super(image)
      if (!(@ns_image).equal?(0))
        Cocoa.objc_msg_send(@ns_image, Cocoa::S_release, @ns_image)
      end
      @ns_image = 0
      if (!(image).nil?)
        rect = CGRect.new
        rect.attr_width = OS._cgimage_get_width(image.attr_handle)
        rect.attr_height = OS._cgimage_get_height(image.attr_handle)
        size = NSSize.new
        size.attr_width = rect.attr_width
        size.attr_height = rect.attr_height
        @ns_image = Cocoa.objc_msg_send(Cocoa::C_NSImage, Cocoa::S_alloc)
        @ns_image = Cocoa.objc_msg_send(@ns_image, Cocoa::S_initWithSize, size)
        Cocoa.objc_msg_send(@ns_image, Cocoa::S_lockFocus)
        image_context = Cocoa.objc_msg_send(Cocoa::C_NSGraphicsContext, Cocoa::S_currentContext)
        image_context = Cocoa.objc_msg_send(image_context, Cocoa::S_graphicsPort)
        OS._cgcontext_draw_image(image_context, rect, image.attr_handle)
        Cocoa.objc_msg_send(@ns_image, Cocoa::S_unlockFocus)
      end
      Cocoa.objc_msg_send(@view, Cocoa::S_setImage, @ns_image)
      width = !(image).nil? && @visible ? OS._cgimage_get_width(image.attr_handle) + BORDER : 0
      Cocoa.objc_msg_send(@handle, Cocoa::S_setLength, width)
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
    def set_tool_tip_text(string)
      check_widget
      @tool_tip_text = string
      __set_tool_tip_text(string)
    end
    
    typesig { [String] }
    def __set_tool_tip_text(string)
      ptr = 0
      if (!(string).nil?)
        chars = CharArray.new(string.length)
        string.get_chars(0, chars.attr_length, chars, 0)
        ptr = OS._cfstring_create_with_characters(0, chars, chars.attr_length)
      end
      Cocoa.objc_msg_send(@view, Cocoa::S_setToolTip, ptr)
      if (!(ptr).equal?(0))
        OS._cfrelease(ptr)
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
      if ((@visible).equal?(visible))
        return
      end
      if (visible)
        send_event(SWT::Show)
        if (is_disposed)
          return
        end
      end
      @visible = visible
      width = !(self.attr_image).nil? && visible ? OS._cgimage_get_width(self.attr_image.attr_handle) + BORDER : 0
      Cocoa.objc_msg_send(@handle, Cocoa::S_setLength, width)
      if (!visible)
        send_event(SWT::Hide)
      end
    end
    
    typesig { [] }
    def show_menu
      __set_tool_tip_text(nil)
      send_event(SWT::MenuDetect)
      if (is_disposed)
        return
      end
      self.attr_display.run_popups
      if (is_disposed)
        return
      end
      __set_tool_tip_text(@tool_tip_text)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def tray_item_proc(target, user_data, selector, arg0)
      case (selector)
      when 0
        mask = Cocoa.objc_msg_send(arg0, Cocoa::S_modifierFlags) & Cocoa::NSDeviceIndependentModifierFlagsMask
        if ((mask).equal?(Cocoa::NSControlKeyMask))
          show_menu
        else
          @highlight = true
          Cocoa.objc_msg_send(@view, Cocoa::S_setNeedsDisplay, 1)
          click_count = Cocoa.objc_msg_send(arg0, Cocoa::S_clickCount)
          post_event((click_count).equal?(2) ? SWT::DefaultSelection : SWT::Selection)
        end
      when 1
        @highlight = false
        Cocoa.objc_msg_send(@view, Cocoa::S_setNeedsDisplay, 1)
      when 2
        show_menu
      when 3
        rect = NSRect.new
        Cocoa.memcpy(rect, arg0, NSRect.attr_sizeof)
        Cocoa.objc_msg_send(@handle, Cocoa::S_drawStatusBarBackgroundInRect_withHighlight, rect, @highlight ? 1 : 0)
      end
      return 0
    end
    
    private
    alias_method :initialize__tray_item, :initialize
  end
  
end
