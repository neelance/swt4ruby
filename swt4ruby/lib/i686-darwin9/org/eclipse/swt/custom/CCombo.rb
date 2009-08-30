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
  module CComboImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Accessibility
    }
  end
  
  # The CCombo class represents a selectable user interface object
  # that combines a text field and a list and issues notification
  # when an item is selected from the list.
  # <p>
  # CCombo was written to work around certain limitations in the native
  # combo box. Specifically, on win32, the height of a CCombo can be set;
  # attempts to set the height of a Combo are ignored. CCombo can be used
  # anywhere that having the increased flexibility is more important than
  # getting native L&F, but the decision should not be taken lightly.
  # There is no is no strict requirement that CCombo look or behave
  # the same as the native combo box.
  # </p>
  # <p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not make sense to add children to it, or set a layout on it.
  # </p>
  # <dl>
  # <dt><b>Styles:</b>
  # <dd>BORDER, READ_ONLY, FLAT</dd>
  # <dt><b>Events:</b>
  # <dd>DefaultSelection, Modify, Selection, Verify</dd>
  # </dl>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#ccombo">CCombo snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: CustomControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class CCombo < CComboImports.const_get :Composite
    include_class_members CComboImports
    
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    attr_accessor :list
    alias_method :attr_list, :list
    undef_method :list
    alias_method :attr_list=, :list=
    undef_method :list=
    
    attr_accessor :visible_item_count
    alias_method :attr_visible_item_count, :visible_item_count
    undef_method :visible_item_count
    alias_method :attr_visible_item_count=, :visible_item_count=
    undef_method :visible_item_count=
    
    attr_accessor :popup
    alias_method :attr_popup, :popup
    undef_method :popup
    alias_method :attr_popup=, :popup=
    undef_method :popup=
    
    attr_accessor :arrow
    alias_method :attr_arrow, :arrow
    undef_method :arrow
    alias_method :attr_arrow=, :arrow=
    undef_method :arrow=
    
    attr_accessor :has_focus
    alias_method :attr_has_focus, :has_focus
    undef_method :has_focus
    alias_method :attr_has_focus=, :has_focus=
    undef_method :has_focus=
    
    attr_accessor :listener
    alias_method :attr_listener, :listener
    undef_method :listener
    alias_method :attr_listener=, :listener=
    undef_method :listener=
    
    attr_accessor :filter
    alias_method :attr_filter, :filter
    undef_method :filter
    alias_method :attr_filter=, :filter=
    undef_method :filter=
    
    attr_accessor :foreground
    alias_method :attr_foreground, :foreground
    undef_method :foreground
    alias_method :attr_foreground=, :foreground=
    undef_method :foreground=
    
    attr_accessor :background
    alias_method :attr_background, :background
    undef_method :background
    alias_method :attr_background=, :background=
    undef_method :background=
    
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    typesig { [Composite, ::Java::Int] }
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
    # @param parent a widget which will be the parent of the new instance (cannot be null)
    # @param style the style of widget to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # </ul>
    # 
    # @see SWT#BORDER
    # @see SWT#READ_ONLY
    # @see SWT#FLAT
    # @see Widget#getStyle()
    def initialize(parent, style)
      @text = nil
      @list = nil
      @visible_item_count = 0
      @popup = nil
      @arrow = nil
      @has_focus = false
      @listener = nil
      @filter = nil
      @foreground = nil
      @background = nil
      @font = nil
      super(parent, style = check_style(style))
      @visible_item_count = 5
      text_style = SWT::SINGLE
      if (!((style & SWT::READ_ONLY)).equal?(0))
        text_style |= SWT::READ_ONLY
      end
      if (!((style & SWT::FLAT)).equal?(0))
        text_style |= SWT::FLAT
      end
      @text = Text.new(self, text_style)
      arrow_style = SWT::ARROW | SWT::DOWN
      if (!((style & SWT::FLAT)).equal?(0))
        arrow_style |= SWT::FLAT
      end
      @arrow = Button.new(self, arrow_style)
      @listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members CCombo
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          if ((self.attr_popup).equal?(event.attr_widget))
            popup_event(event)
            return
          end
          if ((self.attr_text).equal?(event.attr_widget))
            text_event(event)
            return
          end
          if ((self.attr_list).equal?(event.attr_widget))
            list_event(event)
            return
          end
          if ((self.attr_arrow).equal?(event.attr_widget))
            arrow_event(event)
            return
          end
          if ((@local_class_parent).equal?(event.attr_widget))
            combo_event(event)
            return
          end
          if ((get_shell).equal?(event.attr_widget))
            listener_class = self.class
            get_display.async_exec(Class.new(self.class::Runnable.class == Class ? self.class::Runnable : Object) do
              extend LocalClass
              include_class_members listener_class
              include class_self::Runnable if class_self::Runnable.class == Module
              
              typesig { [] }
              define_method :run do
                if (is_disposed)
                  return
                end
                handle_focus(SWT::FocusOut)
              end
              
              typesig { [Object] }
              define_method :initialize do |*args|
                super(*args)
              end
              
              private
              alias_method :initialize_anonymous, :initialize
            end.new_local(self))
          end
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      @filter = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members CCombo
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          shell = (event.attr_widget).get_shell
          if ((shell).equal?(@local_class_parent.get_shell))
            handle_focus(SWT::FocusOut)
          end
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      combo_events = Array.typed(::Java::Int).new([SWT::Dispose, SWT::FocusIn, SWT::Move, SWT::Resize])
      i = 0
      while i < combo_events.attr_length
        self.add_listener(combo_events[i], @listener)
        i += 1
      end
      text_events = Array.typed(::Java::Int).new([SWT::DefaultSelection, SWT::KeyDown, SWT::KeyUp, SWT::MenuDetect, SWT::Modify, SWT::MouseDown, SWT::MouseUp, SWT::MouseDoubleClick, SWT::MouseWheel, SWT::Traverse, SWT::FocusIn, SWT::Verify])
      i_ = 0
      while i_ < text_events.attr_length
        @text.add_listener(text_events[i_], @listener)
        i_ += 1
      end
      arrow_events = Array.typed(::Java::Int).new([SWT::MouseDown, SWT::MouseUp, SWT::Selection, SWT::FocusIn])
      i__ = 0
      while i__ < arrow_events.attr_length
        @arrow.add_listener(arrow_events[i__], @listener)
        i__ += 1
      end
      create_popup(nil, -1)
      init_accessible
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        mask = SWT::BORDER | SWT::READ_ONLY | SWT::FLAT | SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        return SWT::NO_FOCUS | (style & mask)
      end
    }
    
    typesig { [String] }
    # Adds the argument to the end of the receiver's list.
    # 
    # @param string the new item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #add(String,int)
    def add(string)
      check_widget
      if ((string).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @list.add(string)
    end
    
    typesig { [String, ::Java::Int] }
    # Adds the argument to the receiver's list at the given
    # zero-relative index.
    # <p>
    # Note: To add an item at the end of the list, use the
    # result of calling <code>getItemCount()</code> as the
    # index or use <code>add(String)</code>.
    # </p>
    # 
    # @param string the new item
    # @param index the index for the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #add(String)
    def add(string, index)
      check_widget
      if ((string).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @list.add(string, index)
    end
    
    typesig { [ModifyListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the receiver's text is modified, by sending
    # it one of the messages defined in the <code>ModifyListener</code>
    # interface.
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
    # @see ModifyListener
    # @see #removeModifyListener
    def add_modify_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Modify, typed_listener)
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the user changes the receiver's selection, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is called when the combo's list selection changes.
    # <code>widgetDefaultSelected</code> is typically called when ENTER is pressed the combo's text area.
    # </p>
    # 
    # @param listener the listener which should be notified when the user changes the receiver's selection
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
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Selection, typed_listener)
      add_listener(SWT::DefaultSelection, typed_listener)
    end
    
    typesig { [VerifyListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the receiver's text is verified, by sending
    # it one of the messages defined in the <code>VerifyListener</code>
    # interface.
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
    # @see VerifyListener
    # @see #removeVerifyListener
    # 
    # @since 3.3
    def add_verify_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Verify, typed_listener)
    end
    
    typesig { [Event] }
    def arrow_event(event)
      case (event.attr_type)
      when SWT::FocusIn
        handle_focus(SWT::FocusIn)
      when SWT::MouseDown
        mouse_event = Event.new
        mouse_event.attr_button = event.attr_button
        mouse_event.attr_count = event.attr_count
        mouse_event.attr_state_mask = event.attr_state_mask
        mouse_event.attr_time = event.attr_time
        mouse_event.attr_x = event.attr_x
        mouse_event.attr_y = event.attr_y
        notify_listeners(SWT::MouseDown, mouse_event)
        event.attr_doit = mouse_event.attr_doit
      when SWT::MouseUp
        mouse_event = Event.new
        mouse_event.attr_button = event.attr_button
        mouse_event.attr_count = event.attr_count
        mouse_event.attr_state_mask = event.attr_state_mask
        mouse_event.attr_time = event.attr_time
        mouse_event.attr_x = event.attr_x
        mouse_event.attr_y = event.attr_y
        notify_listeners(SWT::MouseUp, mouse_event)
        event.attr_doit = mouse_event.attr_doit
      when SWT::Selection
        @text.set_focus
        drop_down(!is_dropped)
      end
    end
    
    typesig { [] }
    # Sets the selection in the receiver's text field to an empty
    # selection starting just before the first character. If the
    # text field is editable, this has the effect of placing the
    # i-beam at the start of the text.
    # <p>
    # Note: To clear the selected items in the receiver's list,
    # use <code>deselectAll()</code>.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #deselectAll
    def clear_selection
      check_widget
      @text.clear_selection
      @list.deselect_all
    end
    
    typesig { [Event] }
    def combo_event(event)
      case (event.attr_type)
      when SWT::Dispose
        if (!(@popup).nil? && !@popup.is_disposed)
          @list.remove_listener(SWT::Dispose, @listener)
          @popup.dispose
        end
        shell = get_shell
        shell.remove_listener(SWT::Deactivate, @listener)
        display = get_display
        display.remove_filter(SWT::FocusIn, @filter)
        @popup = nil
        @text = nil
        @list = nil
        @arrow = nil
      when SWT::FocusIn
        focus_control = get_display.get_focus_control
        if ((focus_control).equal?(@arrow) || (focus_control).equal?(@list))
          return
        end
        if (is_dropped)
          @list.set_focus
        else
          @text.set_focus
        end
      when SWT::Move
        drop_down(false)
      when SWT::Resize
        internal_layout(false)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = 0
      height = 0
      items = @list.get_items
      gc = SwtGC.new(@text)
      spacer = gc.string_extent(" ").attr_x # $NON-NLS-1$
      text_width = gc.string_extent(@text.get_text).attr_x
      i = 0
      while i < items.attr_length
        text_width = Math.max(gc.string_extent(items[i]).attr_x, text_width)
        i += 1
      end
      gc.dispose
      text_size = @text.compute_size(SWT::DEFAULT, SWT::DEFAULT, changed)
      arrow_size = @arrow.compute_size(SWT::DEFAULT, SWT::DEFAULT, changed)
      list_size = @list.compute_size(SWT::DEFAULT, SWT::DEFAULT, changed)
      border_width = get_border_width
      height = Math.max(text_size.attr_y, arrow_size.attr_y)
      width = Math.max(text_width + 2 * spacer + arrow_size.attr_x + 2 * border_width, list_size.attr_x)
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      return Point.new(width + 2 * border_width, height + 2 * border_width)
    end
    
    typesig { [] }
    # Copies the selected text.
    # <p>
    # The current selection is copied to the clipboard.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    def copy
      check_widget
      @text.copy
    end
    
    typesig { [Array.typed(String), ::Java::Int] }
    def create_popup(items, selection_index)
      # create shell and list
      @popup = Shell.new(get_shell, SWT::NO_TRIM | SWT::ON_TOP)
      style = get_style
      list_style = SWT::SINGLE | SWT::V_SCROLL
      if (!((style & SWT::FLAT)).equal?(0))
        list_style |= SWT::FLAT
      end
      if (!((style & SWT::RIGHT_TO_LEFT)).equal?(0))
        list_style |= SWT::RIGHT_TO_LEFT
      end
      if (!((style & SWT::LEFT_TO_RIGHT)).equal?(0))
        list_style |= SWT::LEFT_TO_RIGHT
      end
      @list = SwtList.new(@popup, list_style)
      if (!(@font).nil?)
        @list.set_font(@font)
      end
      if (!(@foreground).nil?)
        @list.set_foreground(@foreground)
      end
      if (!(@background).nil?)
        @list.set_background(@background)
      end
      popup_events = Array.typed(::Java::Int).new([SWT::Close, SWT::Paint, SWT::Deactivate])
      i = 0
      while i < popup_events.attr_length
        @popup.add_listener(popup_events[i], @listener)
        i += 1
      end
      list_events = Array.typed(::Java::Int).new([SWT::MouseUp, SWT::Selection, SWT::Traverse, SWT::KeyDown, SWT::KeyUp, SWT::FocusIn, SWT::Dispose])
      i_ = 0
      while i_ < list_events.attr_length
        @list.add_listener(list_events[i_], @listener)
        i_ += 1
      end
      if (!(items).nil?)
        @list.set_items(items)
      end
      if (!(selection_index).equal?(-1))
        @list.set_selection(selection_index)
      end
    end
    
    typesig { [] }
    # Cuts the selected text.
    # <p>
    # The current selection is first copied to the
    # clipboard and then deleted from the widget.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    def cut
      check_widget
      @text.cut
    end
    
    typesig { [::Java::Int] }
    # Deselects the item at the given zero-relative index in the receiver's
    # list.  If the item at the index was already deselected, it remains
    # deselected. Indices that are out of range are ignored.
    # 
    # @param index the index of the item to deselect
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def deselect(index)
      check_widget
      if (0 <= index && index < @list.get_item_count && (index).equal?(@list.get_selection_index) && (@text.get_text == @list.get_item(index)))
        @text.set_text("") # $NON-NLS-1$
        @list.deselect(index)
      end
    end
    
    typesig { [] }
    # Deselects all selected items in the receiver's list.
    # <p>
    # Note: To clear the selection in the receiver's text field,
    # use <code>clearSelection()</code>.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #clearSelection
    def deselect_all
      check_widget
      @text.set_text("") # $NON-NLS-1$
      @list.deselect_all
    end
    
    typesig { [::Java::Boolean] }
    def drop_down(drop)
      if ((drop).equal?(is_dropped) || !is_visible)
        return
      end
      if (!drop)
        @popup.set_visible(false)
        if (!is_disposed && is_focus_control)
          @text.set_focus
        end
        return
      end
      if (!(get_shell).equal?(@popup.get_parent))
        items = @list.get_items
        selection_index = @list.get_selection_index
        @list.remove_listener(SWT::Dispose, @listener)
        @popup.dispose
        @popup = nil
        @list = nil
        create_popup(items, selection_index)
      end
      size = get_size
      item_count = @list.get_item_count
      item_count = ((item_count).equal?(0)) ? @visible_item_count : Math.min(@visible_item_count, item_count)
      item_height = @list.get_item_height * item_count
      list_size = @list.compute_size(SWT::DEFAULT, item_height, false)
      @list.set_bounds(1, 1, Math.max(size.attr_x - 2, list_size.attr_x), list_size.attr_y)
      index = @list.get_selection_index
      if (!(index).equal?(-1))
        @list.set_top_index(index)
      end
      display = get_display
      list_rect = @list.get_bounds
      parent_rect = display.map(get_parent, nil, get_bounds)
      combo_size = get_size
      display_rect = get_monitor.get_client_area
      width = Math.max(combo_size.attr_x, list_rect.attr_width + 2)
      height = list_rect.attr_height + 2
      x = parent_rect.attr_x
      y = parent_rect.attr_y + combo_size.attr_y
      if (y + height > display_rect.attr_y + display_rect.attr_height)
        y = parent_rect.attr_y - height
      end
      if (x + width > display_rect.attr_x + display_rect.attr_width)
        x = display_rect.attr_x + display_rect.attr_width - list_rect.attr_width
      end
      @popup.set_bounds(x, y, width, height)
      @popup.set_visible(true)
      if (is_focus_control)
        @list.set_focus
      end
    end
    
    typesig { [String] }
    # Return the lowercase of the first non-'&' character following
    # an '&' character in the given string. If there are no '&'
    # characters in the given string, return '\0'.
    def __find_mnemonic(string)
      if ((string).nil?)
        return Character.new(?\0.ord)
      end
      index = 0
      length_ = string.length
      begin
        while (index < length_ && !(string.char_at(index)).equal?(Character.new(?&.ord)))
          index += 1
        end
        if ((index += 1) >= length_)
          return Character.new(?\0.ord)
        end
        if (!(string.char_at(index)).equal?(Character.new(?&.ord)))
          return Character.to_lower_case(string.char_at(index))
        end
        index += 1
      end while (index < length_)
      return Character.new(?\0.ord)
    end
    
    typesig { [] }
    # Return the Label immediately preceding the receiver in the z-order,
    # or null if none.
    def get_associated_label
      siblings = get_parent.get_children
      i = 0
      while i < siblings.attr_length
        if ((siblings[i]).equal?(self))
          if (i > 0 && siblings[i - 1].is_a?(Label))
            return siblings[i - 1]
          end
        end
        i += 1
      end
      return nil
    end
    
    typesig { [] }
    def get_children
      check_widget
      return Array.typed(Control).new(0) { nil }
    end
    
    typesig { [] }
    # Gets the editable state.
    # 
    # @return whether or not the receiver is editable
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_editable
      check_widget
      return @text.get_editable
    end
    
    typesig { [::Java::Int] }
    # Returns the item at the given, zero-relative index in the
    # receiver's list. Throws an exception if the index is out
    # of range.
    # 
    # @param index the index of the item to return
    # @return the item at the given index
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item(index)
      check_widget
      return @list.get_item(index)
    end
    
    typesig { [] }
    # Returns the number of items contained in the receiver's list.
    # 
    # @return the number of items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_count
      check_widget
      return @list.get_item_count
    end
    
    typesig { [] }
    # Returns the height of the area which would be used to
    # display <em>one</em> of the items in the receiver's list.
    # 
    # @return the height of one item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_height
      check_widget
      return @list.get_item_height
    end
    
    typesig { [] }
    # Returns an array of <code>String</code>s which are the items
    # in the receiver's list.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the items in the receiver's list
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_items
      check_widget
      return @list.get_items
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver's list is visible,
    # and <code>false</code> otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, this method
    # may still indicate that it is considered visible even though
    # it may not actually be showing.
    # </p>
    # 
    # @return the receiver's list's visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_list_visible
      check_widget
      return is_dropped
    end
    
    typesig { [] }
    def get_menu
      return @text.get_menu
    end
    
    typesig { [] }
    # Returns a <code>Point</code> whose x coordinate is the start
    # of the selection in the receiver's text field, and whose y
    # coordinate is the end of the selection. The returned values
    # are zero-relative. An "empty" selection as indicated by
    # the the x and y coordinates having the same value.
    # 
    # @return a point representing the selection start and end
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      return @text.get_selection
    end
    
    typesig { [] }
    # Returns the zero-relative index of the item which is currently
    # selected in the receiver's list, or -1 if no item is selected.
    # 
    # @return the index of the selected item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_index
      check_widget
      return @list.get_selection_index
    end
    
    typesig { [] }
    def get_style
      style = super
      style &= ~SWT::READ_ONLY
      if (!@text.get_editable)
        style |= SWT::READ_ONLY
      end
      return style
    end
    
    typesig { [] }
    # Returns a string containing a copy of the contents of the
    # receiver's text field.
    # 
    # @return the receiver's text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text
      check_widget
      return @text.get_text
    end
    
    typesig { [] }
    # Returns the height of the receivers's text field.
    # 
    # @return the text height
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text_height
      check_widget
      return @text.get_line_height
    end
    
    typesig { [] }
    # Returns the maximum number of characters that the receiver's
    # text field is capable of holding. If this has not been changed
    # by <code>setTextLimit()</code>, it will be the constant
    # <code>Combo.LIMIT</code>.
    # 
    # @return the text limit
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text_limit
      check_widget
      return @text.get_text_limit
    end
    
    typesig { [] }
    # Gets the number of items that are visible in the drop
    # down portion of the receiver's list.
    # 
    # @return the number of items that are visible
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_visible_item_count
      check_widget
      return @visible_item_count
    end
    
    typesig { [::Java::Int] }
    def handle_focus(type)
      if (is_disposed)
        return
      end
      case (type)
      when SWT::FocusIn
        if (@has_focus)
          return
        end
        if (get_editable)
          @text.select_all
        end
        @has_focus = true
        shell = get_shell
        shell.remove_listener(SWT::Deactivate, @listener)
        shell.add_listener(SWT::Deactivate, @listener)
        display = get_display
        display.remove_filter(SWT::FocusIn, @filter)
        display.add_filter(SWT::FocusIn, @filter)
        e = Event.new
        notify_listeners(SWT::FocusIn, e)
      when SWT::FocusOut
        if (!@has_focus)
          return
        end
        focus_control = get_display.get_focus_control
        if ((focus_control).equal?(@arrow) || (focus_control).equal?(@list) || (focus_control).equal?(@text))
          return
        end
        @has_focus = false
        shell = get_shell
        shell.remove_listener(SWT::Deactivate, @listener)
        display = get_display
        display.remove_filter(SWT::FocusIn, @filter)
        e = Event.new
        notify_listeners(SWT::FocusOut, e)
      end
    end
    
    typesig { [String] }
    # Searches the receiver's list starting at the first item
    # (index 0) until an item is found that is equal to the
    # argument, and returns the index of that item. If no item
    # is found, returns -1.
    # 
    # @param string the search item
    # @return the index of the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def index_of(string)
      check_widget
      if ((string).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      return @list.index_of(string)
    end
    
    typesig { [String, ::Java::Int] }
    # Searches the receiver's list starting at the given,
    # zero-relative index until an item is found that is equal
    # to the argument, and returns the index of that item. If
    # no item is found or the starting index is out of range,
    # returns -1.
    # 
    # @param string the search item
    # @param start the zero-relative index at which to begin the search
    # @return the index of the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def index_of(string, start)
      check_widget
      if ((string).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      return @list.index_of(string, start)
    end
    
    typesig { [] }
    def init_accessible
      accessible_adapter = Class.new(AccessibleAdapter.class == Class ? AccessibleAdapter : Object) do
        extend LocalClass
        include_class_members CCombo
        include AccessibleAdapter if AccessibleAdapter.class == Module
        
        typesig { [AccessibleEvent] }
        define_method :get_name do |e|
          name = nil
          label = get_associated_label
          if (!(label).nil?)
            name = RJava.cast_to_string(strip_mnemonic(label.get_text))
          end
          e.attr_result = name
        end
        
        typesig { [AccessibleEvent] }
        define_method :get_keyboard_shortcut do |e|
          shortcut = nil
          label = get_associated_label
          if (!(label).nil?)
            text = label.get_text
            if (!(text).nil?)
              mnemonic = __find_mnemonic(text)
              if (!(mnemonic).equal?(Character.new(?\0.ord)))
                shortcut = "Alt+" + RJava.cast_to_string(mnemonic) # $NON-NLS-1$
              end
            end
          end
          e.attr_result = shortcut
        end
        
        typesig { [AccessibleEvent] }
        define_method :get_help do |e|
          e.attr_result = get_tool_tip_text
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      get_accessible.add_accessible_listener(accessible_adapter)
      @text.get_accessible.add_accessible_listener(accessible_adapter)
      @list.get_accessible.add_accessible_listener(accessible_adapter)
      @arrow.get_accessible.add_accessible_listener(Class.new(AccessibleAdapter.class == Class ? AccessibleAdapter : Object) do
        extend LocalClass
        include_class_members CCombo
        include AccessibleAdapter if AccessibleAdapter.class == Module
        
        typesig { [AccessibleEvent] }
        define_method :get_name do |e|
          e.attr_result = is_dropped ? SWT.get_message("SWT_Close") : SWT.get_message("SWT_Open") # $NON-NLS-1$ //$NON-NLS-2$
        end
        
        typesig { [AccessibleEvent] }
        define_method :get_keyboard_shortcut do |e|
          e.attr_result = "Alt+Down Arrow" # $NON-NLS-1$
        end
        
        typesig { [AccessibleEvent] }
        define_method :get_help do |e|
          e.attr_result = get_tool_tip_text
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      get_accessible.add_accessible_text_listener(Class.new(AccessibleTextAdapter.class == Class ? AccessibleTextAdapter : Object) do
        extend LocalClass
        include_class_members CCombo
        include AccessibleTextAdapter if AccessibleTextAdapter.class == Module
        
        typesig { [AccessibleTextEvent] }
        define_method :get_caret_offset do |e|
          e.attr_offset = self.attr_text.get_caret_position
        end
        
        typesig { [AccessibleTextEvent] }
        define_method :get_selection_range do |e|
          sel = self.attr_text.get_selection
          e.attr_offset = sel.attr_x
          e.attr_length = sel.attr_y - sel.attr_x
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      get_accessible.add_accessible_control_listener(Class.new(AccessibleControlAdapter.class == Class ? AccessibleControlAdapter : Object) do
        extend LocalClass
        include_class_members CCombo
        include AccessibleControlAdapter if AccessibleControlAdapter.class == Module
        
        typesig { [AccessibleControlEvent] }
        define_method :get_child_at_point do |e|
          test_point = to_control(e.attr_x, e.attr_y)
          if (get_bounds.contains(test_point))
            e.attr_child_id = ACC::CHILDID_SELF
          end
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_location do |e|
          location = get_bounds
          pt = get_parent.to_display(location.attr_x, location.attr_y)
          e.attr_x = pt.attr_x
          e.attr_y = pt.attr_y
          e.attr_width = location.attr_width
          e.attr_height = location.attr_height
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_child_count do |e|
          e.attr_detail = 0
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_role do |e|
          e.attr_detail = ACC::ROLE_COMBOBOX
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_state do |e|
          e.attr_detail = ACC::STATE_NORMAL
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_value do |e|
          e.attr_result = get_text
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      @text.get_accessible.add_accessible_control_listener(Class.new(AccessibleControlAdapter.class == Class ? AccessibleControlAdapter : Object) do
        extend LocalClass
        include_class_members CCombo
        include AccessibleControlAdapter if AccessibleControlAdapter.class == Module
        
        typesig { [AccessibleControlEvent] }
        define_method :get_role do |e|
          e.attr_detail = self.attr_text.get_editable ? ACC::ROLE_TEXT : ACC::ROLE_LABEL
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      @arrow.get_accessible.add_accessible_control_listener(Class.new(AccessibleControlAdapter.class == Class ? AccessibleControlAdapter : Object) do
        extend LocalClass
        include_class_members CCombo
        include AccessibleControlAdapter if AccessibleControlAdapter.class == Module
        
        typesig { [AccessibleControlEvent] }
        define_method :get_default_action do |e|
          e.attr_result = is_dropped ? SWT.get_message("SWT_Close") : SWT.get_message("SWT_Open") # $NON-NLS-1$ //$NON-NLS-2$
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
    end
    
    typesig { [] }
    def is_dropped
      return @popup.get_visible
    end
    
    typesig { [] }
    def is_focus_control
      check_widget
      if (@text.is_focus_control || @arrow.is_focus_control || @list.is_focus_control || @popup.is_focus_control)
        return true
      end
      return super
    end
    
    typesig { [::Java::Boolean] }
    def internal_layout(changed)
      if (is_dropped)
        drop_down(false)
      end
      rect = get_client_area
      width = rect.attr_width
      height = rect.attr_height
      arrow_size = @arrow.compute_size(SWT::DEFAULT, height, changed)
      @text.set_bounds(0, 0, width - arrow_size.attr_x, height)
      @arrow.set_bounds(width - arrow_size.attr_x, 0, arrow_size.attr_x, arrow_size.attr_y)
    end
    
    typesig { [Event] }
    def list_event(event)
      catch(:break_case) do
        case (event.attr_type)
        when SWT::Dispose
          if (!(get_shell).equal?(@popup.get_parent))
            items = @list.get_items
            selection_index = @list.get_selection_index
            @popup = nil
            @list = nil
            create_popup(items, selection_index)
          end
        when SWT::FocusIn
          handle_focus(SWT::FocusIn)
        when SWT::MouseUp
          if (!(event.attr_button).equal?(1))
            return
          end
          drop_down(false)
        when SWT::Selection
          index = @list.get_selection_index
          if ((index).equal?(-1))
            return
          end
          @text.set_text(@list.get_item(index))
          @text.select_all
          @list.set_selection(index)
          e = Event.new
          e.attr_time = event.attr_time
          e.attr_state_mask = event.attr_state_mask
          e.attr_doit = event.attr_doit
          notify_listeners(SWT::Selection, e)
          event.attr_doit = e.attr_doit
        when SWT::Traverse
          case (event.attr_detail)
          when SWT::TRAVERSE_RETURN, SWT::TRAVERSE_ESCAPE, SWT::TRAVERSE_ARROW_PREVIOUS, SWT::TRAVERSE_ARROW_NEXT
            event.attr_doit = false
          when SWT::TRAVERSE_TAB_NEXT, SWT::TRAVERSE_TAB_PREVIOUS
            event.attr_doit = @text.traverse(event.attr_detail)
            event.attr_detail = SWT::TRAVERSE_NONE
            if (event.attr_doit)
              drop_down(false)
            end
            return
          end
          e = Event.new
          e.attr_time = event.attr_time
          e.attr_detail = event.attr_detail
          e.attr_doit = event.attr_doit
          e.attr_character = event.attr_character
          e.attr_key_code = event.attr_key_code
          notify_listeners(SWT::Traverse, e)
          event.attr_doit = e.attr_doit
          event.attr_detail = e.attr_detail
        when SWT::KeyUp
          e = Event.new
          e.attr_time = event.attr_time
          e.attr_character = event.attr_character
          e.attr_key_code = event.attr_key_code
          e.attr_state_mask = event.attr_state_mask
          notify_listeners(SWT::KeyUp, e)
        when SWT::KeyDown
          if ((event.attr_character).equal?(SWT::ESC))
            # Escape key cancels popup list
            drop_down(false)
          end
          if (!((event.attr_state_mask & SWT::ALT)).equal?(0) && ((event.attr_key_code).equal?(SWT::ARROW_UP) || (event.attr_key_code).equal?(SWT::ARROW_DOWN)))
            drop_down(false)
          end
          if ((event.attr_character).equal?(SWT::CR))
            # Enter causes default selection
            drop_down(false)
            e = Event.new
            e.attr_time = event.attr_time
            e.attr_state_mask = event.attr_state_mask
            notify_listeners(SWT::DefaultSelection, e)
          end
          # At this point the widget may have been disposed.
          # If so, do not continue.
          if (is_disposed)
            throw :break_case, :thrown
          end
          e = Event.new
          e.attr_time = event.attr_time
          e.attr_character = event.attr_character
          e.attr_key_code = event.attr_key_code
          e.attr_state_mask = event.attr_state_mask
          notify_listeners(SWT::KeyDown, e)
        end
      end
    end
    
    typesig { [] }
    # Pastes text from clipboard.
    # <p>
    # The selected text is deleted from the widget
    # and new text inserted from the clipboard.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    def paste
      check_widget
      @text.paste
    end
    
    typesig { [Event] }
    def popup_event(event)
      case (event.attr_type)
      when SWT::Paint
        # draw black rectangle around list
        list_rect = @list.get_bounds
        black = get_display.get_system_color(SWT::COLOR_BLACK)
        event.attr_gc.set_foreground(black)
        event.attr_gc.draw_rectangle(0, 0, list_rect.attr_width + 1, list_rect.attr_height + 1)
      when SWT::Close
        event.attr_doit = false
        drop_down(false)
      when SWT::Deactivate
        # Bug in GTK. When the arrow button is pressed the popup control receives a
        # deactivate event and then the arrow button receives a selection event. If
        # we hide the popup in the deactivate event, the selection event will show
        # it again. To prevent the popup from showing again, we will let the selection
        # event of the arrow button hide the popup.
        # In Windows, hiding the popup during the deactivate causes the deactivate
        # to be called twice and the selection event to be disappear.
        if (!("carbon" == SWT.get_platform))
          point = @arrow.to_control(get_display.get_cursor_location)
          size = @arrow.get_size
          rect = Rectangle.new(0, 0, size.attr_x, size.attr_y)
          if (!rect.contains(point))
            drop_down(false)
          end
        else
          drop_down(false)
        end
      end
    end
    
    typesig { [] }
    def redraw
      super
      @text.redraw
      @arrow.redraw
      if (@popup.is_visible)
        @list.redraw
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def redraw(x, y, width, height, all)
      super(x, y, width, height, true)
    end
    
    typesig { [::Java::Int] }
    # Removes the item from the receiver's list at the given
    # zero-relative index.
    # 
    # @param index the index for the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove(index)
      check_widget
      @list.remove(index)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Removes the items from the receiver's list which are
    # between the given zero-relative start and end
    # indices (inclusive).
    # 
    # @param start the start of the range
    # @param end the end of the range
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if either the start or end are not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove(start, end_)
      check_widget
      @list.remove(start, end_)
    end
    
    typesig { [String] }
    # Searches the receiver's list starting at the first item
    # until an item is found that is equal to the argument,
    # and removes that item from the list.
    # 
    # @param string the item to remove
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the string is not found in the list</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove(string)
      check_widget
      if ((string).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @list.remove(string)
    end
    
    typesig { [] }
    # Removes all of the items from the receiver's list and clear the
    # contents of receiver's text field.
    # <p>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove_all
      check_widget
      @text.set_text("") # $NON-NLS-1$
      @list.remove_all
    end
    
    typesig { [ModifyListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the receiver's text is modified.
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
    # @see ModifyListener
    # @see #addModifyListener
    def remove_modify_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(SWT::Modify, listener)
    end
    
    typesig { [SelectionListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the user changes the receiver's selection.
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
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(SWT::Selection, listener)
      remove_listener(SWT::DefaultSelection, listener)
    end
    
    typesig { [VerifyListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the control is verified.
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
    # @see VerifyListener
    # @see #addVerifyListener
    # 
    # @since 3.3
    def remove_verify_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(SWT::Verify, listener)
    end
    
    typesig { [::Java::Int] }
    # Selects the item at the given zero-relative index in the receiver's
    # list.  If the item at the index was already selected, it remains
    # selected. Indices that are out of range are ignored.
    # 
    # @param index the index of the item to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def select(index)
      check_widget
      if ((index).equal?(-1))
        @list.deselect_all
        @text.set_text("") # $NON-NLS-1$
        return
      end
      if (0 <= index && index < @list.get_item_count)
        if (!(index).equal?(get_selection_index))
          @text.set_text(@list.get_item(index))
          @text.select_all
          @list.select(index)
          @list.show_selection
        end
      end
    end
    
    typesig { [Color] }
    def set_background(color)
      super(color)
      @background = color
      if (!(@text).nil?)
        @text.set_background(color)
      end
      if (!(@list).nil?)
        @list.set_background(color)
      end
      if (!(@arrow).nil?)
        @arrow.set_background(color)
      end
    end
    
    typesig { [::Java::Boolean] }
    # Sets the editable state.
    # 
    # @param editable the new editable state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_editable(editable)
      check_widget
      @text.set_editable(editable)
    end
    
    typesig { [::Java::Boolean] }
    def set_enabled(enabled)
      super(enabled)
      if (!(@popup).nil?)
        @popup.set_visible(false)
      end
      if (!(@text).nil?)
        @text.set_enabled(enabled)
      end
      if (!(@arrow).nil?)
        @arrow.set_enabled(enabled)
      end
    end
    
    typesig { [] }
    def set_focus
      check_widget
      if (!is_enabled || !is_visible)
        return false
      end
      if (is_focus_control)
        return true
      end
      return @text.set_focus
    end
    
    typesig { [Font] }
    def set_font(font)
      super(font)
      @font = font
      @text.set_font(font)
      @list.set_font(font)
      internal_layout(true)
    end
    
    typesig { [Color] }
    def set_foreground(color)
      super(color)
      @foreground = color
      if (!(@text).nil?)
        @text.set_foreground(color)
      end
      if (!(@list).nil?)
        @list.set_foreground(color)
      end
      if (!(@arrow).nil?)
        @arrow.set_foreground(color)
      end
    end
    
    typesig { [::Java::Int, String] }
    # Sets the text of the item in the receiver's list at the given
    # zero-relative index to the string argument. This is equivalent
    # to <code>remove</code>'ing the old item at the index, and then
    # <code>add</code>'ing the new item at that index.
    # 
    # @param index the index for the item
    # @param string the new text for the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_item(index, string)
      check_widget
      @list.set_item(index, string)
    end
    
    typesig { [Array.typed(String)] }
    # Sets the receiver's list to be the given array of items.
    # 
    # @param items the array of items
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the items array is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if an item in the items array is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_items(items)
      check_widget
      @list.set_items(items)
      if (!@text.get_editable)
        @text.set_text("")
      end # $NON-NLS-1$
    end
    
    typesig { [SwtLayout] }
    # Sets the layout which is associated with the receiver to be
    # the argument which may be null.
    # <p>
    # Note: No Layout can be set on this Control because it already
    # manages the size and position of its children.
    # </p>
    # 
    # @param layout the receiver's new layout or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_layout(layout)
      check_widget
      return
    end
    
    typesig { [::Java::Boolean] }
    # Marks the receiver's list as visible if the argument is <code>true</code>,
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
    # 
    # @since 3.4
    def set_list_visible(visible)
      check_widget
      drop_down(visible)
    end
    
    typesig { [Menu] }
    def set_menu(menu)
      @text.set_menu(menu)
    end
    
    typesig { [Point] }
    # Sets the selection in the receiver's text field to the
    # range specified by the argument whose x coordinate is the
    # start of the selection and whose y coordinate is the end
    # of the selection.
    # 
    # @param selection a point representing the new selection start and end
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(selection)
      check_widget
      if ((selection).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @text.set_selection(selection.attr_x, selection.attr_y)
    end
    
    typesig { [String] }
    # Sets the contents of the receiver's text field to the
    # given string.
    # <p>
    # Note: The text field in a <code>Combo</code> is typically
    # only capable of displaying a single line of text. Thus,
    # setting the text to a string containing line breaks or
    # other special characters will probably cause it to
    # display incorrectly.
    # </p>
    # 
    # @param string the new text
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_text(string)
      check_widget
      if ((string).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      index = @list.index_of(string)
      if ((index).equal?(-1))
        @list.deselect_all
        @text.set_text(string)
        return
      end
      @text.set_text(string)
      @text.select_all
      @list.set_selection(index)
      @list.show_selection
    end
    
    typesig { [::Java::Int] }
    # Sets the maximum number of characters that the receiver's
    # text field is capable of holding to be the argument.
    # 
    # @param limit new text limit
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_CANNOT_BE_ZERO - if the limit is zero</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_text_limit(limit)
      check_widget
      @text.set_text_limit(limit)
    end
    
    typesig { [String] }
    def set_tool_tip_text(string)
      check_widget
      super(string)
      @arrow.set_tool_tip_text(string)
      @text.set_tool_tip_text(string)
    end
    
    typesig { [::Java::Boolean] }
    def set_visible(visible)
      super(visible)
      # At this point the widget may have been disposed in a FocusOut event.
      # If so then do not continue.
      if (is_disposed)
        return
      end
      # TEMPORARY CODE
      if ((@popup).nil? || @popup.is_disposed)
        return
      end
      if (!visible)
        @popup.set_visible(false)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the number of items that are visible in the drop
    # down portion of the receiver's list.
    # 
    # @param count the new number of items to be visible
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_visible_item_count(count)
      check_widget
      if (count < 0)
        return
      end
      @visible_item_count = count
    end
    
    typesig { [String] }
    def strip_mnemonic(string)
      index = 0
      length_ = string.length
      begin
        while ((index < length_) && (!(string.char_at(index)).equal?(Character.new(?&.ord))))
          index += 1
        end
        if ((index += 1) >= length_)
          return string
        end
        if (!(string.char_at(index)).equal?(Character.new(?&.ord)))
          return string.substring(0, index - 1) + string.substring(index, length_)
        end
        index += 1
      end while (index < length_)
      return string
    end
    
    typesig { [Event] }
    def text_event(event)
      catch(:break_case) do
        case (event.attr_type)
        when SWT::FocusIn
          handle_focus(SWT::FocusIn)
        when SWT::DefaultSelection
          drop_down(false)
          e = Event.new
          e.attr_time = event.attr_time
          e.attr_state_mask = event.attr_state_mask
          notify_listeners(SWT::DefaultSelection, e)
        when SWT::KeyDown
          key_event = Event.new
          key_event.attr_time = event.attr_time
          key_event.attr_character = event.attr_character
          key_event.attr_key_code = event.attr_key_code
          key_event.attr_state_mask = event.attr_state_mask
          notify_listeners(SWT::KeyDown, key_event)
          if (is_disposed)
            throw :break_case, :thrown
          end
          event.attr_doit = key_event.attr_doit
          if (!event.attr_doit)
            throw :break_case, :thrown
          end
          if ((event.attr_key_code).equal?(SWT::ARROW_UP) || (event.attr_key_code).equal?(SWT::ARROW_DOWN))
            event.attr_doit = false
            if (!((event.attr_state_mask & SWT::ALT)).equal?(0))
              dropped = is_dropped
              @text.select_all
              if (!dropped)
                set_focus
              end
              drop_down(!dropped)
              throw :break_case, :thrown
            end
            old_index = get_selection_index
            if ((event.attr_key_code).equal?(SWT::ARROW_UP))
              select(Math.max(old_index - 1, 0))
            else
              select(Math.min(old_index + 1, get_item_count - 1))
            end
            if (!(old_index).equal?(get_selection_index))
              e = Event.new
              e.attr_time = event.attr_time
              e.attr_state_mask = event.attr_state_mask
              notify_listeners(SWT::Selection, e)
            end
            if (is_disposed)
              throw :break_case, :thrown
            end
          end
          # Further work : Need to add support for incremental search in
          # pop up list as characters typed in text widget
        when SWT::KeyUp
          e = Event.new
          e.attr_time = event.attr_time
          e.attr_character = event.attr_character
          e.attr_key_code = event.attr_key_code
          e.attr_state_mask = event.attr_state_mask
          notify_listeners(SWT::KeyUp, e)
          event.attr_doit = e.attr_doit
        when SWT::MenuDetect
          e = Event.new
          e.attr_time = event.attr_time
          notify_listeners(SWT::MenuDetect, e)
        when SWT::Modify
          @list.deselect_all
          e = Event.new
          e.attr_time = event.attr_time
          notify_listeners(SWT::Modify, e)
        when SWT::MouseDown
          mouse_event = Event.new
          mouse_event.attr_button = event.attr_button
          mouse_event.attr_count = event.attr_count
          mouse_event.attr_state_mask = event.attr_state_mask
          mouse_event.attr_time = event.attr_time
          mouse_event.attr_x = event.attr_x
          mouse_event.attr_y = event.attr_y
          notify_listeners(SWT::MouseDown, mouse_event)
          if (is_disposed)
            throw :break_case, :thrown
          end
          event.attr_doit = mouse_event.attr_doit
          if (!event.attr_doit)
            throw :break_case, :thrown
          end
          if (!(event.attr_button).equal?(1))
            return
          end
          if (@text.get_editable)
            return
          end
          dropped = is_dropped
          @text.select_all
          if (!dropped)
            set_focus
          end
          drop_down(!dropped)
        when SWT::MouseUp
          mouse_event = Event.new
          mouse_event.attr_button = event.attr_button
          mouse_event.attr_count = event.attr_count
          mouse_event.attr_state_mask = event.attr_state_mask
          mouse_event.attr_time = event.attr_time
          mouse_event.attr_x = event.attr_x
          mouse_event.attr_y = event.attr_y
          notify_listeners(SWT::MouseUp, mouse_event)
          if (is_disposed)
            throw :break_case, :thrown
          end
          event.attr_doit = mouse_event.attr_doit
          if (!event.attr_doit)
            throw :break_case, :thrown
          end
          if (!(event.attr_button).equal?(1))
            return
          end
          if (@text.get_editable)
            return
          end
          @text.select_all
        when SWT::MouseDoubleClick
          mouse_event = Event.new
          mouse_event.attr_button = event.attr_button
          mouse_event.attr_count = event.attr_count
          mouse_event.attr_state_mask = event.attr_state_mask
          mouse_event.attr_time = event.attr_time
          mouse_event.attr_x = event.attr_x
          mouse_event.attr_y = event.attr_y
          notify_listeners(SWT::MouseDoubleClick, mouse_event)
        when SWT::MouseWheel
          key_event = Event.new
          key_event.attr_time = event.attr_time
          key_event.attr_key_code = event.attr_count > 0 ? SWT::ARROW_UP : SWT::ARROW_DOWN
          key_event.attr_state_mask = event.attr_state_mask
          notify_listeners(SWT::KeyDown, key_event)
          if (is_disposed)
            throw :break_case, :thrown
          end
          event.attr_doit = key_event.attr_doit
          if (!event.attr_doit)
            throw :break_case, :thrown
          end
          if (!(event.attr_count).equal?(0))
            event.attr_doit = false
            old_index = get_selection_index
            if (event.attr_count > 0)
              select(Math.max(old_index - 1, 0))
            else
              select(Math.min(old_index + 1, get_item_count - 1))
            end
            if (!(old_index).equal?(get_selection_index))
              e = Event.new
              e.attr_time = event.attr_time
              e.attr_state_mask = event.attr_state_mask
              notify_listeners(SWT::Selection, e)
            end
            if (is_disposed)
              throw :break_case, :thrown
            end
          end
        when SWT::Traverse
          case (event.attr_detail)
          when SWT::TRAVERSE_ARROW_PREVIOUS, SWT::TRAVERSE_ARROW_NEXT
            # The enter causes default selection and
            # the arrow keys are used to manipulate the list contents so
            # do not use them for traversal.
            event.attr_doit = false
          when SWT::TRAVERSE_TAB_PREVIOUS
            event.attr_doit = traverse(SWT::TRAVERSE_TAB_PREVIOUS)
            event.attr_detail = SWT::TRAVERSE_NONE
            return
          end
          e = Event.new
          e.attr_time = event.attr_time
          e.attr_detail = event.attr_detail
          e.attr_doit = event.attr_doit
          e.attr_character = event.attr_character
          e.attr_key_code = event.attr_key_code
          notify_listeners(SWT::Traverse, e)
          event.attr_doit = e.attr_doit
          event.attr_detail = e.attr_detail
        when SWT::Verify
          e = Event.new
          e.attr_text = event.attr_text
          e.attr_start = event.attr_start
          e.attr_end = event.attr_end
          e.attr_character = event.attr_character
          e.attr_key_code = event.attr_key_code
          e.attr_state_mask = event.attr_state_mask
          notify_listeners(SWT::Verify, e)
          event.attr_doit = e.attr_doit
        end
      end
    end
    
    private
    alias_method :initialize__ccombo, :initialize
  end
  
end
