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
  module TabItemImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
  # @noextend This class is not intended to be subclassed by clients.
  class TabItem < TabItemImports.const_get :Item
    include_class_members TabItemImports
    
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
    
    attr_accessor :ns_item
    alias_method :attr_ns_item, :ns_item
    undef_method :ns_item
    alias_method :attr_ns_item=, :ns_item=
    undef_method :ns_item=
    
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
      @parent = nil
      @control = nil
      @tool_tip_text = nil
      @ns_item = nil
      super(parent, style)
      @parent = parent
      parent.create_item(self, parent.get_item_count)
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
      @parent = nil
      @control = nil
      @tool_tip_text = nil
      @ns_item = nil
      super(parent, style)
      @parent = parent
      parent.create_item(self, index)
    end
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
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
      result = Rectangle.new(0, 0, 0, 0)
      if (@ns_item.responds_to_selector(OS.attr_sel_accessibility_attribute_value_))
        # long
        pos_value = OS.objc_msg_send(@ns_item.attr_id, OS.attr_sel_accessibility_attribute_value_, OS._nsaccessibility_position_attribute)
        # long
        size_value = OS.objc_msg_send(@ns_item.attr_id, OS.attr_sel_accessibility_attribute_value_, OS._nsaccessibility_size_attribute)
        val = NSValue.new(pos_value)
        pt = val.point_value
        window = @parent.attr_view.window___org_eclipse_swt_widgets_tab_item_1
        pt.attr_y = self.attr_display.get_primary_frame.attr_height - pt.attr_y
        pt = @parent.attr_view.convert_point_from_view_(pt, nil)
        pt = window.convert_screen_to_base(pt)
        result.attr_x = RJava.cast_to_int(pt.attr_x)
        result.attr_y = RJava.cast_to_int(pt.attr_y)
        val = NSValue.new(size_value)
        size = val.size_value
        result.attr_width = RJava.cast_to_int(Math.ceil(size.attr_width))
        result.attr_height = RJava.cast_to_int(Math.ceil(size.attr_height))
      end
      return result
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
    
    typesig { [] }
    def release_handle
      super
      if (!(@ns_item).nil?)
        @ns_item.release
      end
      @ns_item = nil
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
    
    typesig { [] }
    def release_widget
      super
      @control = nil
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
      if (!(@control).nil? && @control.is_disposed)
        @control = nil
      end
      old_control = @control
      new_control = control
      @control = control
      index = @parent.index_of(self)
      selection_index = @parent.get_selection_index
      if (!(index).equal?(selection_index))
        if (!(new_control).nil?)
          hide_control = true
          if (!(selection_index).equal?(-1))
            selected_control = @parent.get_item(selection_index).get_control
            if ((selected_control).equal?(new_control))
              hide_control = false
            end
          end
          if (hide_control)
            new_control.set_visible(false)
          end
        end
      else
        if (!(new_control).nil?)
          new_control.set_visible(true)
        end
        if (!(old_control).nil?)
          old_control.set_visible(false)
        end
      end
      view = nil
      if (!(new_control).nil?)
        view = new_control.top_view
      else
        view = NSView.new.alloc
        view.init
        view.autorelease
      end
      @ns_item.set_view(view)
      # Feature in Cocoa.  The method setView() removes the old view from
      # its parent.  The fix is to detected it has been removed and add
      # it back.
      if (!(old_control).nil?)
        top_view_ = old_control.top_view
        if ((top_view_.superview).nil?)
          @parent.content_view.add_subview(top_view_, OS::NSWindowBelow, nil)
        end
      end
    end
    
    typesig { [Image] }
    def set_image(image)
      check_widget
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      super(image)
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      super(string)
      chars = CharArray.new(string.length)
      string.get_chars(0, chars.attr_length, chars, 0)
      length_ = fix_mnemonic(chars)
      str = NSString.string_with_characters(chars, length_)
      @ns_item.set_label(str)
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
      @parent.check_tool_tip(self)
    end
    
    typesig { [] }
    def tooltip_text
      return @tool_tip_text
    end
    
    typesig { [] }
    def update
      set_text(self.attr_text)
      set_image(self.attr_image)
      set_tool_tip_text(@tool_tip_text)
    end
    
    private
    alias_method :initialize__tab_item, :initialize
  end
  
end
