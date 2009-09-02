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
    
    attr_accessor :item
    alias_method :attr_item, :item
    undef_method :item
    alias_method :attr_item=, :item=
    undef_method :item=
    
    attr_accessor :view
    alias_method :attr_view, :view
    undef_method :view
    alias_method :attr_view=, :view=
    undef_method :view=
    
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
      @item = nil
      @view = nil
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
    def create_handle
      status_bar = NSStatusBar.system_status_bar
      @item = status_bar.status_item_with_length(0)
      if ((@item).nil?)
        error(SWT::ERROR_NO_HANDLES)
      end
      @item.retain
      @item.set_highlight_mode(true)
      @view = SWTImageView.new.alloc
      if ((@view).nil?)
        error(SWT::ERROR_NO_HANDLES)
      end
      @view.init
      @item.set_view(@view)
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(@view)
      self.attr_display.remove_widget(@view.cell)
    end
    
    typesig { [] }
    def destroy_widget
      @parent.destroy_item(self)
      release_handle
    end
    
    typesig { [] }
    def get_location
      rect = @view.frame
      window_rect = @view.window.frame
      pt = NSPoint.new
      pt.attr_x = rect.attr_width / 2
      pt = @view.convert_point_from_view_(pt, nil)
      pt.attr_x += window_rect.attr_x
      return Point.new(RJava.cast_to_int(pt.attr_x), RJava.cast_to_int(pt.attr_y))
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
    def register
      super
      self.attr_display.add_widget(@view, self)
      self.attr_display.add_widget((@view).cell, self)
    end
    
    typesig { [] }
    def release_handle
      super
      @parent = nil
      if (!(@item).nil?)
        @item.release
      end
      if (!(@view).nil?)
        @view.release
      end
      @item = nil
      @view = nil
    end
    
    typesig { [] }
    def release_widget
      super
      status_bar = NSStatusBar.system_status_bar
      status_bar.remove_status_item(@item)
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
      # double
      width = 0
      if ((image).nil?)
        @view.set_image(nil)
      else
        # Feature in Cocoa.  If the NSImage object being set into the view is
        # the same NSImage object that is already there then the new image is
        # not taken.  This results in the view's image not changing even if the
        # NSImage object's content has changed since it was last set into the
        # view.  The workaround is to temporarily set the view's image to null
        # so that the new image will then be taken.
        current = @view.image
        if (!(current).nil? && (current.attr_id).equal?(image.attr_handle.attr_id))
          @view.set_image(nil)
        end
        @view.set_image(image.attr_handle)
        if (@visible)
          width = image.attr_handle.size.attr_width + BORDER
        end
      end
      @item.set_length(width)
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
      __set_tool_tip_text(string)
    end
    
    typesig { [String] }
    def __set_tool_tip_text(string)
      if (!(string).nil?)
        chars = CharArray.new(string.length)
        string.get_chars(0, chars.attr_length, chars, 0)
        length_ = fix_mnemonic(chars)
        str = NSString.string_with_characters(chars, length_)
        @view.set_tool_tip(str)
      else
        @view.set_tool_tip(nil)
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
      # double
      width = !(self.attr_image).nil? && visible ? self.attr_image.attr_handle.size.attr_width + BORDER : 0
      @item.set_length(width)
      if (!visible)
        send_event(SWT::Hide)
      end
    end
    
    typesig { [Menu] }
    def show_menu(menu)
      self.attr_display.attr_tray_item_menu = menu
      @item.pop_up_status_item_menu(menu.attr_ns_menu)
    end
    
    typesig { [] }
    def show_menu
      __set_tool_tip_text(nil)
      display = self.attr_display
      display.attr_current_tray_item = self
      send_event(SWT::MenuDetect)
      if (!is_disposed)
        display.run_popups
      end
      display.attr_current_tray_item = nil
      if (is_disposed)
        return
      end
      __set_tool_tip_text(@tool_tip_text)
    end
    
    typesig { [] }
    def display_menu
      if (@highlight)
        @view.display
        self.attr_display.attr_tray_item_menu = nil
        show_menu
        if (!(self.attr_display.attr_tray_item_menu).nil?)
          self.attr_display.attr_tray_item_menu = nil
          @highlight = false
          @view.set_needs_display(true)
        end
      end
    end
    
    typesig { [NSEvent] }
    def should_show_menu(event)
      if (!hooks(SWT::MenuDetect))
        return false
      end
      # 64
      case (RJava.cast_to_int(event.type))
      when OS::NSRightMouseDown
        return true
      when OS::NSLeftMouseDown
        if (!(hooks(SWT::Selection) || hooks(SWT::DefaultSelection)))
          return true
        end
        if (((event.modifier_flags & OS::NSDeviceIndependentModifierFlagsMask)).equal?(OS::NSControlKeyMask))
          return true
        end
        return false
      when OS::NSLeftMouseDragged, OS::NSRightMouseDragged
        return true
      end
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_down(id, sel, the_event)
      ns_event = NSEvent.new(the_event)
      @highlight = true
      @view.set_needs_display(true)
      if (should_show_menu(ns_event))
        display_menu
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_dragged(id, sel, the_event)
      ns_event = NSEvent.new(the_event)
      frame_ = @view.frame
      @highlight = OS._nspoint_in_rect(ns_event.location_in_window, frame_)
      @view.set_needs_display(true)
      if (should_show_menu(ns_event))
        display_menu
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_up(id, sel, the_event)
      if (@highlight)
        ns_event = NSEvent.new(the_event)
        if ((ns_event.type).equal?(OS::NSLeftMouseUp))
          post_event((ns_event.click_count).equal?(2) ? SWT::DefaultSelection : SWT::Selection)
        end
      end
      @highlight = false
      @view.set_needs_display(true)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def right_mouse_down(id, sel, the_event)
      mouse_down(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def right_mouse_up(id, sel, the_event)
      mouse_up(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def right_mouse_dragged(id, sel, the_event)
      mouse_dragged(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect] }
    # long
    # long
    def draw_rect(id, sel, rect)
      @item.draw_status_bar_background_in_rect(rect, @highlight)
      super(id, sel, rect)
    end
    
    private
    alias_method :initialize__tray_item, :initialize
  end
  
end
