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
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
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
      super(parent, style)
      @parent = parent
      parent.create_item(self, index)
    end
    
    typesig { [::Java::Int, String] }
    def __set_text(index, string)
      # Bug in Windows.  In version 6.00 of COMCTL32.DLL, tab
      # items with an image and a label that includes '&' cause
      # the tab to draw incorrectly (even when doubled '&&').
      # The image overlaps the label.  The fix is to remove
      # all '&' characters from the string.
      if (OS::COMCTL32_MAJOR >= 6 && !(self.attr_image).nil?)
        if (!(string.index_of(Character.new(?&.ord))).equal?(-1))
          length_ = string.length
          text = CharArray.new(length_)
          string.get_chars(0, length_, text, 0)
          i = 0
          j = 0
          i = 0
          while i < length_
            if (!(text[i]).equal?(Character.new(?&.ord)))
              text[((j += 1) - 1)] = text[i]
            end
            i += 1
          end
          if (j < i)
            string = RJava.cast_to_string(String.new(text, 0, j))
          end
        end
      end
      # long
      hwnd = @parent.attr_handle
      # long
      h_heap = OS._get_process_heap
      buffer = TCHAR.new(@parent.get_code_page, string, true)
      byte_count = buffer.length * TCHAR.attr_sizeof
      # long
      psz_text = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
      OS._move_memory(psz_text, buffer, byte_count)
      tc_item = TCITEM.new
      tc_item.attr_mask = OS::TCIF_TEXT
      tc_item.attr_psz_text = psz_text
      OS._send_message(hwnd, OS::TCM_SETITEM, index, tc_item)
      OS._heap_free(h_heap, 0, psz_text)
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return Rectangle.new(0, 0, 0, 0)
      end
      item_rect = RECT.new
      OS._send_message(@parent.attr_handle, OS::TCM_GETITEMRECT, index, item_rect)
      return Rectangle.new(item_rect.attr_left, item_rect.attr_top, item_rect.attr_right - item_rect.attr_left, item_rect.attr_bottom - item_rect.attr_top)
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
    
    typesig { [Image] }
    def set_image(image)
      check_widget
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      super(image)
      # Bug in Windows.  In version 6.00 of COMCTL32.DLL, tab
      # items with an image and a label that includes '&' cause
      # the tab to draw incorrectly (even when doubled '&&').
      # The image overlaps the label.  The fix is to remove
      # all '&' characters from the string and set the text
      # whenever the image or text is changed.
      if (OS::COMCTL32_MAJOR >= 6)
        if (!(self.attr_text.index_of(Character.new(?&.ord))).equal?(-1))
          __set_text(index, self.attr_text)
        end
      end
      # long
      hwnd = @parent.attr_handle
      tc_item = TCITEM.new
      tc_item.attr_mask = OS::TCIF_IMAGE
      tc_item.attr_i_image = @parent.image_index(image)
      OS._send_message(hwnd, OS::TCM_SETITEM, index, tc_item)
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
      if ((string == self.attr_text))
        return
      end
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      super(string)
      __set_text(index, string)
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
