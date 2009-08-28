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
  module TabItemImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class represent a selectable user interface object
  # corresponding to a tab for a page in a tab folder.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>(none)</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#tabfolder">TabFolder, TabItem snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class TabItem < TabItemImports.const_get :Item
    include_class_members TabItemImports
    
    # long
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
    
    attr_accessor :page_handle
    alias_method :attr_page_handle, :page_handle
    undef_method :page_handle
    alias_method :attr_page_handle=, :page_handle=
    undef_method :page_handle=
    
    attr_accessor :control
    alias_method :attr_control, :control
    undef_method :control
    alias_method :attr_control=, :control=
    undef_method :control=
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :tool_tip_text
    alias_method :attr_tool_tip_text, :tool_tip_text
    undef_method :tool_tip_text
    alias_method :attr_tool_tip_text=, :tool_tip_text=
    undef_method :tool_tip_text=
    
    typesig { [TabFolder, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>TabFolder</code>) and a style value
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
      @label_handle = 0
      @image_handle = 0
      @page_handle = 0
      @control = nil
      @parent = nil
      @tool_tip_text = nil
      super(parent, style)
      @parent = parent
      create_widget(parent.get_item_count)
    end
    
    typesig { [TabFolder, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>TabFolder</code>), a style value
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
    # @see SWT
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style, index)
      @label_handle = 0
      @image_handle = 0
      @page_handle = 0
      @control = nil
      @parent = nil
      @tool_tip_text = nil
      super(parent, style)
      @parent = parent
      create_widget(index)
    end
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [::Java::Int] }
    def create_widget(index)
      @parent.create_item(self, index)
      set_orientation
      hook_events
      register
      self.attr_text = ""
    end
    
    typesig { [] }
    def deregister
      super
      if (!(@label_handle).equal?(0))
        self.attr_display.remove_widget(@label_handle)
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
    # 
    # @since 3.4
    def get_bounds
      check_widget
      x = OS._gtk_widget_x(self.attr_handle)
      y = OS._gtk_widget_y(self.attr_handle)
      width = !((self.attr_state & ZERO_WIDTH)).equal?(0) ? 0 : OS._gtk_widget_width(self.attr_handle)
      height = !((self.attr_state & ZERO_HEIGHT)).equal?(0) ? 0 : OS._gtk_widget_height(self.attr_handle)
      if (!((@parent.attr_style & SWT::MIRRORED)).equal?(0))
        x = @parent.get_client_width - width - x
      end
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [] }
    # Returns the control that is used to fill the client area of
    # the tab folder when the user selects the tab item.  If no
    # control has been set, return <code>null</code>.
    # <p>
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
    # Returns the receiver's parent, which must be a <code>TabFolder</code>.
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
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_enter_notify_event(widget, event)
      @parent.gtk_enter_notify_event(widget, event)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_mnemonic_activate(widget, arg1)
      return @parent.gtk_mnemonic_activate(widget, arg1)
    end
    
    typesig { [] }
    def hook_events
      super
      if (!(@label_handle).equal?(0))
        OS.g_signal_connect_closure_by_id(@label_handle, self.attr_display.attr_signal_ids[MNEMONIC_ACTIVATE], 0, self.attr_display.attr_closures[MNEMONIC_ACTIVATE], false)
      end
      OS.g_signal_connect_closure_by_id(self.attr_handle, self.attr_display.attr_signal_ids[ENTER_NOTIFY_EVENT], 0, self.attr_display.attr_closures[ENTER_NOTIFY_EVENT], false)
    end
    
    typesig { [] }
    def register
      super
      if (!(@label_handle).equal?(0))
        self.attr_display.add_widget(@label_handle, self)
      end
    end
    
    typesig { [] }
    def release_handle
      super
      @page_handle = @label_handle = @image_handle = 0
      @parent = nil
    end
    
    typesig { [] }
    def release_parent
      super
      index = @parent.index_of(self)
      if ((index).equal?(@parent.get_selection_index))
        if (!(@control).nil?)
          @control.set_visible(false)
        end
      end
    end
    
    typesig { [Control] }
    # Sets the control that is used to fill the client area of
    # the tab folder when the user selects the tab item.
    # <p>
    # @param control the new control (or null)
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
      old_control = @control
      new_control = control
      @control = control
      index = @parent.index_of(self)
      if (!(index).equal?(@parent.get_selection_index))
        if (!(new_control).nil?)
          new_control.set_visible(false)
        end
        return
      end
      if (!(new_control).nil?)
        new_control.set_bounds(@parent.get_client_area)
        new_control.set_visible(true)
      end
      if (!(old_control).nil?)
        old_control.set_visible(false)
      end
    end
    
    typesig { [::Java::Int] }
    # long
    def set_font_description(font)
      OS.gtk_widget_modify_font(@label_handle, font)
      OS.gtk_widget_modify_font(@image_handle, font)
    end
    
    typesig { [GdkColor] }
    def set_foreground_color(color)
      # Don't set the color in vbox handle (it doesn't draw)
      set_foreground_color(@label_handle, color)
      set_foreground_color(@image_handle, color)
    end
    
    typesig { [Image] }
    def set_image(image)
      check_widget
      super(image)
      if (!(image).nil?)
        image_list = @parent.attr_image_list
        if ((image_list).nil?)
          image_list = @parent.attr_image_list = ImageList.new
        end
        image_index = image_list.index_of(image)
        if ((image_index).equal?(-1))
          image_index = image_list.add(image)
        else
          image_list.put(image_index, image)
        end
        # long
        pixbuf = image_list.get_pixbuf(image_index)
        OS.gtk_image_set_from_pixbuf(@image_handle, pixbuf)
        OS.gtk_widget_show(@image_handle)
      else
        OS.gtk_image_set_from_pixbuf(@image_handle, 0)
        OS.gtk_widget_hide(@image_handle)
      end
    end
    
    typesig { [] }
    def set_orientation
      if (!((@parent.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        if (!(self.attr_handle).equal?(0))
          OS.gtk_widget_set_direction(self.attr_handle, OS::GTK_TEXT_DIR_RTL)
        end
        if (!(@label_handle).equal?(0))
          OS.gtk_widget_set_direction(@label_handle, OS::GTK_TEXT_DIR_RTL)
        end
        if (!(@image_handle).equal?(0))
          OS.gtk_widget_set_direction(@image_handle, OS::GTK_TEXT_DIR_RTL)
        end
        if (!(@page_handle).equal?(0))
          OS.gtk_widget_set_direction(@page_handle, OS::GTK_TEXT_DIR_RTL)
        end
      end
    end
    
    typesig { [String] }
    # Sets the receiver's text.  The string may include
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
      super(string)
      chars = fix_mnemonic(string)
      buffer = Converter.wcs_to_mbcs(nil, chars, true)
      OS.gtk_label_set_text_with_mnemonic(@label_handle, buffer)
      if (!(string.length).equal?(0))
        OS.gtk_widget_show(@label_handle)
      else
        OS.gtk_widget_hide(@label_handle)
      end
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
    
    private
    alias_method :initialize__tab_item, :initialize
  end
  
end
