require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module PopupListImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # A PopupList is a list of selectable items that appears in its own shell positioned above
  # its parent shell.  It is used for selecting items when editing a Table cell (similar to the
  # list that appears when you open a Combo box).
  # 
  # The list will be positioned so that it does not run off the screen and the largest number of items
  # are visible.  It may appear above the current cursor location or below it depending how close you
  # are to the edge of the screen.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class PopupList 
    include_class_members PopupListImports
    
    attr_accessor :shell
    alias_method :attr_shell, :shell
    undef_method :shell
    alias_method :attr_shell=, :shell=
    undef_method :shell=
    
    attr_accessor :list
    alias_method :attr_list, :list
    undef_method :list
    alias_method :attr_list=, :list=
    undef_method :list=
    
    attr_accessor :minimum_width
    alias_method :attr_minimum_width, :minimum_width
    undef_method :minimum_width
    alias_method :attr_minimum_width=, :minimum_width=
    undef_method :minimum_width=
    
    typesig { [Shell] }
    # Creates a PopupList above the specified shell.
    # 
    # @param parent a Shell control which will be the parent of the new instance (cannot be null)
    def initialize(parent)
      initialize__popup_list(parent, 0)
    end
    
    typesig { [Shell, ::Java::Int] }
    # Creates a PopupList above the specified shell.
    # 
    # @param parent a widget which will be the parent of the new instance (cannot be null)
    # @param style the style of widget to construct
    # 
    # @since 3.0
    def initialize(parent, style)
      @shell = nil
      @list = nil
      @minimum_width = 0
      @shell = Shell.new(parent, check_style(style))
      @list = SwtList.new(@shell, SWT::SINGLE | SWT::V_SCROLL)
      @shell.add_listener(SWT::Deactivate, # close dialog if user selects outside of the shell
      Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members PopupList
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |e|
          self.attr_shell.set_visible(false)
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      @shell.add_control_listener(# resize shell when list resizes
      Class.new(ControlListener.class == Class ? ControlListener : Object) do
        extend LocalClass
        include_class_members PopupList
        include ControlListener if ControlListener.class == Module
        
        typesig { [ControlEvent] }
        define_method :control_moved do |e|
        end
        
        typesig { [ControlEvent] }
        define_method :control_resized do |e|
          shell_size = self.attr_shell.get_client_area
          self.attr_list.set_size(shell_size.attr_width, shell_size.attr_height)
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      @list.add_mouse_listener(# return list selection on Mouse Up or Carriage Return
      Class.new(MouseListener.class == Class ? MouseListener : Object) do
        extend LocalClass
        include_class_members PopupList
        include MouseListener if MouseListener.class == Module
        
        typesig { [MouseEvent] }
        define_method :mouse_double_click do |e|
        end
        
        typesig { [MouseEvent] }
        define_method :mouse_down do |e|
        end
        
        typesig { [MouseEvent] }
        define_method :mouse_up do |e|
          self.attr_shell.set_visible(false)
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      @list.add_key_listener(Class.new(KeyListener.class == Class ? KeyListener : Object) do
        extend LocalClass
        include_class_members PopupList
        include KeyListener if KeyListener.class == Module
        
        typesig { [KeyEvent] }
        define_method :key_released do |e|
        end
        
        typesig { [KeyEvent] }
        define_method :key_pressed do |e|
          if ((e.attr_character).equal?(Character.new(?\r.ord)))
            self.attr_shell.set_visible(false)
          end
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        mask = SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        return style & mask
      end
    }
    
    typesig { [] }
    # Gets the widget font.
    # <p>
    # @return the widget font
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_font
      return @list.get_font
    end
    
    typesig { [] }
    # Gets the items.
    # <p>
    # This operation will fail if the items cannot
    # be queried from the OS.
    # 
    # @return the items in the widget
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_items
      return @list.get_items
    end
    
    typesig { [] }
    # Gets the minimum width of the list.
    # 
    # @return the minimum width of the list
    def get_minimum_width
      return @minimum_width
    end
    
    typesig { [Rectangle] }
    # Launches the Popup List, waits for an item to be selected and then closes the PopupList.
    # 
    # @param rect the initial size and location of the PopupList; the dialog will be
    # positioned so that it does not run off the screen and the largest number of items are visible
    # 
    # @return the text of the selected item or null if no item is selected
    def open(rect)
      list_size = @list.compute_size(rect.attr_width, SWT::DEFAULT, false)
      screen_size = @shell.get_display.get_bounds
      # Position the dialog so that it does not run off the screen and the largest number of items are visible
      space_below = screen_size.attr_height - (rect.attr_y + rect.attr_height) - 30
      space_above = rect.attr_y - 30
      y = 0
      if (space_above > space_below && list_size.attr_y > space_below)
        # place popup list above table cell
        if (list_size.attr_y > space_above)
          list_size.attr_y = space_above
        else
          list_size.attr_y += 2
        end
        y = rect.attr_y - list_size.attr_y
      else
        # place popup list below table cell
        if (list_size.attr_y > space_below)
          list_size.attr_y = space_below
        else
          list_size.attr_y += 2
        end
        y = rect.attr_y + rect.attr_height
      end
      # Make dialog as wide as the cell
      list_size.attr_x = rect.attr_width
      # dialog width should not be less than minimumWidth
      if (list_size.attr_x < @minimum_width)
        list_size.attr_x = @minimum_width
      end
      # Align right side of dialog with right side of cell
      x = rect.attr_x + rect.attr_width - list_size.attr_x
      @shell.set_bounds(x, y, list_size.attr_x, list_size.attr_y)
      @shell.open
      @list.set_focus
      display = @shell.get_display
      while (!@shell.is_disposed && @shell.is_visible)
        if (!display.read_and_dispatch)
          display.sleep
        end
      end
      result = nil
      if (!@shell.is_disposed)
        strings = @list.get_selection
        @shell.dispose
        if (!(strings.attr_length).equal?(0))
          result = (strings[0]).to_s
        end
      end
      return result
    end
    
    typesig { [String] }
    # Selects an item with text that starts with specified String.
    # <p>
    # If the item is not currently selected, it is selected.
    # If the item at an index is selected, it remains selected.
    # If the string is not matched, it is ignored.
    # 
    # @param string the text of the item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def select(string)
      items = @list.get_items
      # find the first entry in the list that starts with the
      # specified string
      if (!(string).nil?)
        i = 0
        while i < items.attr_length
          if (items[i].starts_with(string))
            index = @list.index_of(items[i])
            @list.select(index)
            break
          end
          ((i += 1) - 1)
        end
      end
    end
    
    typesig { [Font] }
    # Sets the widget font.
    # <p>
    # When new font is null, the font reverts
    # to the default system font for the widget.
    # 
    # @param font the new font (or null)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_font(font)
      @list.set_font(font)
    end
    
    typesig { [Array.typed(String)] }
    # Sets all items.
    # <p>
    # The previous selection is cleared.
    # The previous items are deleted.
    # The new items are added.
    # The top index is set to 0.
    # 
    # @param strings the array of items
    # 
    # This operation will fail when an item is null
    # or could not be added in the OS.
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the items array is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if an item in the items array is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_items(strings)
      @list.set_items(strings)
    end
    
    typesig { [::Java::Int] }
    # Sets the minimum width of the list.
    # 
    # @param width the minimum width of the list
    def set_minimum_width(width)
      if (width < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @minimum_width = width
    end
    
    private
    alias_method :initialize__popup_list, :initialize
  end
  
end
