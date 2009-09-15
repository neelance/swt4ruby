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
  module TextImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  # Instances of this class are selectable user interface
  # objects that allow the user to enter and modify text.
  # Text controls can be either single or multi-line.
  # When a text control is created with a border, the
  # operating system includes a platform specific inset
  # around the contents of the control.  When created
  # without a border, an effort is made to remove the
  # inset such that the preferred size of the control
  # is the same size as the contents.
  # <p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>CENTER, ICON_CANCEL, ICON_SEARCH, LEFT, MULTI, PASSWORD, SEARCH, SINGLE, RIGHT, READ_ONLY, WRAP</dd>
  # <dt><b>Events:</b></dt>
  # <dd>DefaultSelection, Modify, Verify</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles MULTI and SINGLE may be specified,
  # and only one of the styles LEFT, CENTER, and RIGHT may be specified.
  # </p>
  # <p>
  # Note: The styles ICON_CANCEL and ICON_SEARCH are hints used in combination with SEARCH.
  # When the platform supports the hint, the text control shows these icons.  When an icon
  # is selected, a default selection event is sent with the detail field set to one of
  # ICON_CANCEL or ICON_SEARCH.  Normally, application code does not need to check the
  # detail.  In the case of ICON_CANCEL, the text is cleared before the default selection
  # event is sent causing the application to search for an empty string.
  # </p>
  # <p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#text">Text snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class Text < TextImports.const_get :Scrollable
    include_class_members TextImports
    
    attr_accessor :text_limit
    alias_method :attr_text_limit, :text_limit
    undef_method :text_limit
    alias_method :attr_text_limit=, :text_limit=
    undef_method :text_limit=
    
    attr_accessor :tabs
    alias_method :attr_tabs, :tabs
    undef_method :tabs
    alias_method :attr_tabs=, :tabs=
    undef_method :tabs=
    
    attr_accessor :echo_character
    alias_method :attr_echo_character, :echo_character
    undef_method :echo_character
    alias_method :attr_echo_character=, :echo_character=
    undef_method :echo_character=
    
    attr_accessor :double_click
    alias_method :attr_double_click, :double_click
    undef_method :double_click
    alias_method :attr_double_click=, :double_click=
    undef_method :double_click=
    
    attr_accessor :receiving_focus
    alias_method :attr_receiving_focus, :receiving_focus
    undef_method :receiving_focus
    alias_method :attr_receiving_focus=, :receiving_focus=
    undef_method :receiving_focus=
    
    attr_accessor :hidden_text
    alias_method :attr_hidden_text, :hidden_text
    undef_method :hidden_text
    alias_method :attr_hidden_text=, :hidden_text=
    undef_method :hidden_text=
    
    attr_accessor :message
    alias_method :attr_message, :message
    undef_method :message
    alias_method :attr_message=, :message=
    undef_method :message=
    
    attr_accessor :selection_range
    alias_method :attr_selection_range, :selection_range
    undef_method :selection_range
    alias_method :attr_selection_range=, :selection_range=
    undef_method :selection_range=
    
    attr_accessor :target_search
    alias_method :attr_target_search, :target_search
    undef_method :target_search
    alias_method :attr_target_search=, :target_search=
    undef_method :target_search=
    
    attr_accessor :target_cancel
    alias_method :attr_target_cancel, :target_cancel
    undef_method :target_cancel
    alias_method :attr_target_cancel=, :target_cancel=
    undef_method :target_cancel=
    
    # long
    attr_accessor :action_search
    alias_method :attr_action_search, :action_search
    undef_method :action_search
    alias_method :attr_action_search=, :action_search=
    undef_method :action_search=
    
    attr_accessor :action_cancel
    alias_method :attr_action_cancel, :action_cancel
    undef_method :action_cancel
    alias_method :attr_action_cancel=, :action_cancel=
    undef_method :action_cancel=
    
    class_module.module_eval {
      const_set_lazy(:PASSWORD) { Character.new(0x2022) }
      const_attr_reader  :PASSWORD
      
      # These values can be different on different platforms.
      # Therefore they are not initialized in the declaration
      # to stop the compiler from inlining.
      when_class_loaded do
        const_set :LIMIT, 0x7fffffff
        const_set :DELIMITER, "\r"
      end
    }
    
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
    # @see SWT#SINGLE
    # @see SWT#MULTI
    # @see SWT#READ_ONLY
    # @see SWT#WRAP
    # @see SWT#LEFT
    # @see SWT#RIGHT
    # @see SWT#CENTER
    # @see SWT#PASSWORD
    # @see SWT#SEARCH
    # @see SWT#ICON_SEARCH
    # @see SWT#ICON_CANCEL
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @text_limit = 0
      @tabs = 0
      @echo_character = 0
      @double_click = false
      @receiving_focus = false
      @hidden_text = nil
      @message = nil
      @selection_range = nil
      @target_search = nil
      @target_cancel = nil
      @action_search = 0
      @action_cancel = 0
      super(parent, check_style(style))
      @text_limit = LIMIT
      @tabs = 8
      if (!((style & SWT::SEARCH)).equal?(0))
        # Ensure that SWT.ICON_CANCEL and ICON_SEARCH are set.
        # NOTE: ICON_CANCEL has the same value as H_SCROLL and
        # ICON_SEARCH has the same value as V_SCROLL so it is
        # necessary to first clear these bits to avoid a scroll
        # bar and then reset the bit using the original style
        # supplied by the programmer.
        cell = NSSearchFieldCell.new((self.attr_view).cell)
        if (!((style & SWT::ICON_CANCEL)).equal?(0))
          self.attr_style |= SWT::ICON_CANCEL
          cancel_cell = cell.cancel_button_cell
          @target_cancel = cancel_cell.target
          @action_cancel = cancel_cell.action
          cancel_cell.set_target(self.attr_view)
          cancel_cell.set_action(OS.attr_sel_send_cancel_selection)
        else
          cell.set_cancel_button_cell(nil)
        end
        if (!((style & SWT::ICON_SEARCH)).equal?(0))
          self.attr_style |= SWT::ICON_SEARCH
          search_cell = cell.search_button_cell
          @target_search = search_cell.target
          @action_search = search_cell.action
          search_cell.set_target(self.attr_view)
          search_cell.set_action(OS.attr_sel_send_search_selection)
        else
          cell.set_search_button_cell(nil)
        end
      end
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
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Modify, typed_listener)
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is not called for texts.
    # <code>widgetDefaultSelected</code> is typically called when ENTER is pressed in a single-line text,
    # or when ENTER is pressed in a search text. If the receiver has the <code>SWT.SEARCH | SWT.CANCEL</code> style
    # and the user cancels the search, the event object detail field contains the value <code>SWT.CANCEL</code>.
    # </p>
    # 
    # @param listener the listener which should be notified when the control is selected by the user
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
    def add_verify_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Verify, typed_listener)
    end
    
    typesig { [String] }
    # Appends a string.
    # <p>
    # The new text is appended to the text at
    # the end of the widget.
    # </p>
    # 
    # @param string the string to be appended
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def append(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (hooks(SWT::Verify) || filters(SWT::Verify))
        char_count = get_char_count
        string = RJava.cast_to_string(verify_text(string, char_count, char_count, nil))
        if ((string).nil?)
          return
        end
      end
      str = NSString.string_with(string)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        set_selection(get_char_count)
        insert_edit_text(string)
      else
        widget = self.attr_view
        storage = widget.text_storage
        range = NSRange.new
        range.attr_location = storage.length
        storage.replace_characters_in_range(range, str)
        range.attr_location = storage.length
        widget.scroll_range_to_visible(range)
        widget.set_selected_range(range)
      end
      if (!(string.length).equal?(0))
        send_event(SWT::Modify)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def become_first_responder(id, sel)
      @receiving_focus = true
      result = super(id, sel)
      @receiving_focus = false
      return result
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        if (!((style & SWT::SEARCH)).equal?(0))
          style |= SWT::SINGLE | SWT::BORDER
          style &= ~SWT::PASSWORD
          # NOTE: ICON_CANCEL has the same value as H_SCROLL and
          # ICON_SEARCH has the same value as V_SCROLL so they are
          # cleared because SWT.SINGLE is set.
        end
        if (!((style & SWT::SINGLE)).equal?(0) && !((style & SWT::MULTI)).equal?(0))
          style &= ~SWT::MULTI
        end
        style = check_bits(style, SWT::LEFT, SWT::CENTER, SWT::RIGHT, 0, 0, 0)
        if (!((style & SWT::SINGLE)).equal?(0))
          style &= ~(SWT::H_SCROLL | SWT::V_SCROLL | SWT::WRAP)
        end
        if (!((style & SWT::WRAP)).equal?(0))
          style |= SWT::MULTI
          style &= ~SWT::H_SCROLL
        end
        if (!((style & SWT::MULTI)).equal?(0))
          style &= ~SWT::PASSWORD
        end
        if (!((style & (SWT::SINGLE | SWT::MULTI))).equal?(0))
          return style
        end
        if (!((style & (SWT::H_SCROLL | SWT::V_SCROLL))).equal?(0))
          return style | SWT::MULTI
        end
        return style | SWT::SINGLE
      end
    }
    
    typesig { [] }
    # Clears the selection.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def clear_selection
      check_widget
      selection = get_selection
      set_selection(selection.attr_x)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = 0
      height = 0
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        widget = self.attr_view
        size = widget.cell.cell_size
        width = RJava.cast_to_int(Math.ceil(size.attr_width))
        height = RJava.cast_to_int(Math.ceil(size.attr_height))
        border = nil
        if (!((self.attr_style & SWT::BORDER)).equal?(0) && (!(w_hint).equal?(SWT::DEFAULT) || !(h_hint).equal?(SWT::DEFAULT)))
          # determine the size of the cell without its border
          insets = widget.cell.title_rect_for_bounds(NSRect.new)
          border = Point.new(-RJava.cast_to_int(Math.ceil(insets.attr_width)), -RJava.cast_to_int(Math.ceil(insets.attr_height)))
          width -= border.attr_x
          height -= border.attr_y
        end
        if (width <= 0)
          width = DEFAULT_WIDTH
        end
        if (height <= 0)
          height = DEFAULT_HEIGHT
        end
        if (!(w_hint).equal?(SWT::DEFAULT))
          width = w_hint
        end
        if (!(h_hint).equal?(SWT::DEFAULT))
          height = h_hint
        end
        if (!(border).nil?)
          # re-add the border size (if any) now that wHint/hHint is taken
          width += border.attr_x
          height += border.attr_y
        end
      else
        layout_manager = NSLayoutManager.new.alloc.init
        text_container = NSTextContainer.new.alloc
        size = NSSize.new
        size.attr_width = size.attr_height = Float::MAX_VALUE
        if (!((self.attr_style & SWT::WRAP)).equal?(0))
          if (!(w_hint).equal?(SWT::DEFAULT))
            size.attr_width = w_hint
          end
          if (!(h_hint).equal?(SWT::DEFAULT))
            size.attr_height = h_hint
          end
        end
        text_container.init_with_container_size(size)
        layout_manager.add_text_container(text_container)
        text_storage_ = NSTextStorage.new.alloc.init
        text_storage_.set_attributed_string((self.attr_view).text_storage)
        layout_manager.set_text_storage(text_storage_)
        layout_manager.glyph_range_for_text_container(text_container)
        rect = layout_manager.used_rect_for_text_container(text_container)
        width = (layout_manager.number_of_glyphs).equal?(0) ? DEFAULT_WIDTH : RJava.cast_to_int(Math.ceil(rect.attr_width))
        height = RJava.cast_to_int(Math.ceil(rect.attr_height))
        text_storage_.release
        text_container.release
        layout_manager.release
        if (width <= 0)
          width = DEFAULT_WIDTH
        end
        if (height <= 0)
          height = DEFAULT_HEIGHT
        end
        if (!(w_hint).equal?(SWT::DEFAULT))
          width = w_hint
        end
        if (!(h_hint).equal?(SWT::DEFAULT))
          height = h_hint
        end
        trim = compute_trim(0, 0, width, height)
        width = trim.attr_width
        height = trim.attr_height
      end
      return Point.new(width, height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      result = super(x, y, width, height)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        widget = self.attr_view
        if (!((self.attr_style & SWT::SEARCH)).equal?(0))
          cell_ = NSSearchFieldCell.new(widget.cell)
          test_width = 100
          rect = NSRect.new
          rect.attr_width = test_width
          rect = cell_.search_text_rect_for_bounds(rect)
          left_indent = RJava.cast_to_int(rect.attr_x)
          right_indent = test_width - left_indent - RJava.cast_to_int(Math.ceil(rect.attr_width))
          result.attr_x -= left_indent
          result.attr_width += left_indent + right_indent
        end
        inset = widget.cell.title_rect_for_bounds(NSRect.new)
        result.attr_x -= inset.attr_x
        result.attr_y -= inset.attr_y
        result.attr_width -= inset.attr_width
        result.attr_height -= inset.attr_height
      end
      return result
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
    def copy
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        selection = get_selection
        if ((selection.attr_x).equal?(selection.attr_y))
          return
        end
        copy_to_clipboard(get_edit_text(selection.attr_x, selection.attr_y - 1))
      else
        text = self.attr_view
        if ((text.selected_range.attr_length).equal?(0))
          return
        end
        text.copy(nil)
      end
    end
    
    typesig { [] }
    def create_handle
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        if (((self.attr_style & (SWT::BORDER | SWT::H_SCROLL | SWT::V_SCROLL))).equal?(0))
          self.attr_state |= THEME_BACKGROUND
        end
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        widget = nil
        if (!((self.attr_style & SWT::PASSWORD)).equal?(0))
          widget = SWTSecureTextField.new.alloc
        else
          if (!((self.attr_style & SWT::SEARCH)).equal?(0))
            widget = SWTSearchField.new.alloc
          else
            widget = SWTTextField.new.alloc
          end
        end
        widget.init
        widget.set_selectable(true)
        widget.set_editable(((self.attr_style & SWT::READ_ONLY)).equal?(0))
        if (((self.attr_style & SWT::BORDER)).equal?(0))
          widget.set_focus_ring_type(OS::NSFocusRingTypeNone)
          widget.set_bordered(false)
        end
        align = OS::NSLeftTextAlignment
        if (!((self.attr_style & SWT::CENTER)).equal?(0))
          align = OS::NSCenterTextAlignment
        end
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          align = OS::NSRightTextAlignment
        end
        widget.set_alignment(align)
        cell_ = widget.cell
        cell_.set_wraps(false)
        cell_.set_scrollable(true)
        # widget.setTarget(widget);
        # widget.setAction(OS.sel_sendSelection);
        self.attr_view = widget
      else
        scroll_widget = SWTScrollView.new.alloc
        scroll_widget.init
        scroll_widget.set_has_vertical_scroller(!((self.attr_style & SWT::VERTICAL)).equal?(0))
        scroll_widget.set_has_horizontal_scroller(!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
        scroll_widget.set_autoresizes_subviews(true)
        if (!((self.attr_style & SWT::BORDER)).equal?(0))
          scroll_widget.set_border_type(OS::NSBezelBorder)
        end
        widget = SWTTextView.new.alloc
        widget.init
        widget.set_editable(((self.attr_style & SWT::READ_ONLY)).equal?(0))
        size = NSSize.new
        size.attr_width = size.attr_height = Float::MAX_VALUE
        widget.set_max_size(size)
        widget.set_autoresizing_mask(OS::NSViewWidthSizable | OS::NSViewHeightSizable)
        if (((self.attr_style & SWT::WRAP)).equal?(0))
          text_container_ = widget.text_container
          widget.set_horizontally_resizable(true)
          text_container_.set_width_tracks_text_view(false)
          csize = NSSize.new
          csize.attr_width = csize.attr_height = Float::MAX_VALUE
          text_container_.set_container_size(csize)
        end
        align = OS::NSLeftTextAlignment
        if (!((self.attr_style & SWT::CENTER)).equal?(0))
          align = OS::NSCenterTextAlignment
        end
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          align = OS::NSRightTextAlignment
        end
        widget.set_alignment(align)
        # widget.setTarget(widget);
        # widget.setAction(OS.sel_sendSelection);
        widget.set_rich_text(false)
        widget.set_delegate(widget)
        widget.set_font(self.attr_display.get_system_font.attr_handle)
        self.attr_view = widget
        self.attr_scroll_view = scroll_widget
      end
    end
    
    typesig { [] }
    def create_widget
      super
      @double_click = true
      @message = ""
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
    def cut
      check_widget
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return
      end
      cut = true
      old_text = nil
      old_selection = get_selection
      if (hooks(SWT::Verify) || filters(SWT::Verify))
        if (!(old_selection.attr_x).equal?(old_selection.attr_y))
          old_text = get_edit_text(old_selection.attr_x, old_selection.attr_y - 1)
          new_text = verify_text("", old_selection.attr_x, old_selection.attr_y, nil)
          if ((new_text).nil?)
            return
          end
          if (!(new_text.length).equal?(0))
            copy_to_clipboard(old_text)
            if (!((self.attr_style & SWT::SINGLE)).equal?(0))
              insert_edit_text(new_text)
            else
              widget = self.attr_view
              widget.replace_characters_in_range(widget.selected_range, NSString.string_with(new_text))
            end
            cut = false
          end
        end
      end
      if (cut)
        if (!((self.attr_style & SWT::SINGLE)).equal?(0))
          if ((old_text).nil?)
            old_text = get_edit_text(old_selection.attr_x, old_selection.attr_y - 1)
          end
          copy_to_clipboard(old_text)
          insert_edit_text("")
        else
          (self.attr_view).cut(nil)
        end
      end
      new_selection = get_selection
      if (!cut || !(old_selection == new_selection))
        send_event(SWT::Modify)
      end
    end
    
    typesig { [] }
    def default_background
      return self.attr_display.get_widget_color(SWT::COLOR_LIST_BACKGROUND)
    end
    
    typesig { [] }
    def default_nsfont
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        return self.attr_display.attr_text_view_font
      end
      if (!((self.attr_style & SWT::SEARCH)).equal?(0))
        return self.attr_display.attr_search_field_font
      end
      if (!((self.attr_style & SWT::PASSWORD)).equal?(0))
        return self.attr_display.attr_secure_text_field_font
      end
      return self.attr_display.attr_text_field_font
    end
    
    typesig { [] }
    def default_foreground
      return self.attr_display.get_widget_color(SWT::COLOR_LIST_FOREGROUND)
    end
    
    typesig { [] }
    def deregister
      super
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        self.attr_display.remove_widget((self.attr_view).cell)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Boolean)] }
    def drag_detect(x, y, filter, consume)
      selection = get_selection
      if (!(selection.attr_x).equal?(selection.attr_y))
        # long
        position = get_position(x, y)
        if (selection.attr_x <= position && position < selection.attr_y)
          if (super(x, y, filter, consume))
            if (!(consume).nil?)
              consume[0] = true
            end
            return true
          end
        end
      end
      return false
    end
    
    typesig { [] }
    # Returns the line number of the caret.
    # <p>
    # The line number of the caret is returned.
    # </p>
    # 
    # @return the line number
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_caret_line_number
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return 0
      end
      return (get_top_pixel + get_caret_location.attr_y) / get_line_height
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def accepts_first_responder(id, sel)
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return true
      end
      return super(id, sel)
    end
    
    typesig { [] }
    # Returns a point describing the receiver's location relative
    # to its parent (or its display if its parent is null).
    # <p>
    # The location of the caret is returned.
    # </p>
    # 
    # @return a point, the location of the caret
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_caret_location
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # TODO - caret location for single text
        return Point.new(0, 0)
      end
      widget = self.attr_view
      layout_manager_ = widget.layout_manager
      container = widget.text_container
      range = widget.selected_range
      # long
      p_rect_count = OS.malloc(C::PTR_SIZEOF)
      # long
      p_array = layout_manager_.rect_array_for_character_range(range, range, container, p_rect_count)
      # long
      # long
      rect_count = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove___org_eclipse_swt_widgets_text_1(rect_count, p_rect_count, C::PTR_SIZEOF)
      OS.free(p_rect_count)
      rect = NSRect.new
      if (rect_count[0] > 0)
        OS.memmove___org_eclipse_swt_widgets_text_3(rect, p_array, NSRect.attr_sizeof)
      end
      return Point.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y))
    end
    
    typesig { [] }
    # Returns the character position of the caret.
    # <p>
    # Indexing is zero based.
    # </p>
    # 
    # @return the position of the caret
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_caret_position
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # 64
        return !(@selection_range).nil? ? RJava.cast_to_int(@selection_range.attr_location) : 0
      else
        range = (self.attr_view).selected_range
        # 64
        return RJava.cast_to_int(range.attr_location)
      end
    end
    
    typesig { [] }
    # Returns the number of characters.
    # 
    # @return number of characters in the widget
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_char_count
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # 64
        return RJava.cast_to_int(NSCell.new((self.attr_view).cell).title.length)
      else
        # 64
        return RJava.cast_to_int((self.attr_view).text_storage.length)
      end
    end
    
    typesig { [] }
    # Returns the double click enabled flag.
    # <p>
    # The double click flag enables or disables the
    # default action of the text widget when the user
    # double clicks.
    # </p>
    # 
    # @return whether or not double click is enabled
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_double_click_enabled
      check_widget
      return @double_click
    end
    
    typesig { [] }
    # Returns the echo character.
    # <p>
    # The echo character is the character that is
    # displayed when the user enters text or the
    # text is changed by the programmer.
    # </p>
    # 
    # @return the echo character
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setEchoChar
    def get_echo_char
      check_widget
      return @echo_character
    end
    
    typesig { [] }
    # Returns the editable state.
    # 
    # @return whether or not the receiver is editable
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_editable
      check_widget
      return ((self.attr_style & SWT::READ_ONLY)).equal?(0)
    end
    
    typesig { [] }
    def get_edit_text
      str = nil
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        str = NSTextFieldCell.new((self.attr_view).cell).title
      else
        str = (self.attr_view).text_storage.string
      end
      # 64
      length_ = RJava.cast_to_int(str.length)
      buffer = CharArray.new(length_)
      if (!(@hidden_text).nil?)
        @hidden_text.get_chars(0, length_, buffer, 0)
      else
        range = NSRange.new
        range.attr_length = length_
        str.get_characters(buffer, range)
      end
      return buffer
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def get_edit_text(start, end_)
      str = nil
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        str = NSTextFieldCell.new((self.attr_view).cell).title
      else
        str = (self.attr_view).text_storage.string
      end
      # 64
      length_ = RJava.cast_to_int(str.length)
      end_ = Math.min(end_, length_ - 1)
      if (start > end_)
        return CharArray.new(0)
      end
      start = Math.max(0, start)
      range = NSRange.new
      range.attr_location = start
      range.attr_length = Math.max(0, end_ - start + 1)
      # 64
      buffer = CharArray.new(RJava.cast_to_int(range.attr_length))
      if (!(@hidden_text).nil?)
        # 64
        # 64
        @hidden_text.get_chars(RJava.cast_to_int(range.attr_location), RJava.cast_to_int((range.attr_location + range.attr_length)), buffer, 0)
      else
        str.get_characters(buffer, range)
      end
      return buffer
    end
    
    typesig { [] }
    # Returns the number of lines.
    # 
    # @return the number of lines in the widget
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_line_count
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return 1
      end
      storage = (self.attr_view).text_storage
      # 64
      count = RJava.cast_to_int(storage.paragraphs.count)
      string_ = storage.string
      # long
      length_ = string_.length
      c = 0
      if ((length_).equal?(0) || ((c = string_.character_at_index(length_ - 1))).equal?(Character.new(?\n.ord)) || (c).equal?(Character.new(?\r.ord)))
        count += 1
      end
      return count
    end
    
    typesig { [] }
    # Returns the line delimiter.
    # 
    # @return a string that is the line delimiter
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #DELIMITER
    def get_line_delimiter
      check_widget
      return DELIMITER
    end
    
    typesig { [] }
    # Returns the height of a line.
    # 
    # @return the height of a row of text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_line_height
      check_widget
      font = !(self.attr_font).nil? ? self.attr_font : default_font
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        dict = NSDictionary.dictionary_with_object(font.attr_handle, OS::NSFontAttributeName)
        str = NSString.string_with(" ")
        attrib_str = (NSAttributedString.new.alloc).init_with_string(str, dict)
        size_ = attrib_str.size
        attrib_str.release
        return RJava.cast_to_int(size_.attr_height)
      else
        widget = self.attr_view
        return RJava.cast_to_int(Math.ceil(widget.layout_manager.default_line_height_for_font(font.attr_handle)))
      end
    end
    
    typesig { [] }
    # Returns the orientation of the receiver, which will be one of the
    # constants <code>SWT.LEFT_TO_RIGHT</code> or <code>SWT.RIGHT_TO_LEFT</code>.
    # 
    # @return the orientation style
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1.2
    def get_orientation
      check_widget
      return self.attr_style & (SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT)
    end
    
    typesig { [] }
    # Returns the widget message.  The message text is displayed
    # as a hint for the user, indicating the purpose of the field.
    # <p>
    # Typically this is used in conjunction with <code>SWT.SEARCH</code>.
    # </p>
    # 
    # @return the widget message
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    def get_message
      check_widget
      return @message
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def get_position(x, y)
      # checkWidget ();
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        widget = self.attr_view
        view_location = NSPoint.new
        view_location.attr_x = x
        view_location.attr_y = y
        return widget.character_index_for_insertion_at_point(view_location)
      else
        # TODO
        return 0
      end
    end
    
    typesig { [] }
    # Returns a <code>Point</code> whose x coordinate is the
    # character position representing the start of the selected
    # text, and whose y coordinate is the character position
    # representing the end of the selection. An "empty" selection
    # is indicated by the x and y coordinates having the same value.
    # <p>
    # Indexing is zero based.  The range of a selection is from
    # 0..N where N is the number of characters in the widget.
    # </p>
    # 
    # @return a point representing the selection start and end
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        if ((@selection_range).nil?)
          str = NSTextFieldCell.new((self.attr_view).cell).title
          # 64
          # 64
          return Point.new(RJava.cast_to_int(str.length), RJava.cast_to_int(str.length))
        end
        # 64
        # 64
        return Point.new(RJava.cast_to_int(@selection_range.attr_location), RJava.cast_to_int((@selection_range.attr_location + @selection_range.attr_length)))
      else
        widget = self.attr_view
        range = widget.selected_range
        # 64
        # 64
        return Point.new(RJava.cast_to_int(range.attr_location), RJava.cast_to_int((range.attr_location + range.attr_length)))
      end
    end
    
    typesig { [] }
    # Returns the number of selected characters.
    # 
    # @return the number of selected characters.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_count
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # 64
        return !(@selection_range).nil? ? RJava.cast_to_int(@selection_range.attr_length) : 0
      else
        widget = self.attr_view
        range = widget.selected_range
        # 64
        return RJava.cast_to_int(range.attr_length)
      end
    end
    
    typesig { [] }
    # Gets the selected text, or an empty string if there is no current selection.
    # 
    # @return the selected text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_text
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        selection = get_selection
        if ((selection.attr_x).equal?(selection.attr_y))
          return ""
        end
        return String.new(get_edit_text(selection.attr_x, selection.attr_y - 1))
      else
        widget = self.attr_view
        range = widget.selected_range
        str = widget.text_storage.string
        # 64
        buffer = CharArray.new(RJava.cast_to_int(range.attr_length))
        str.get_characters(buffer, range)
        return String.new(buffer)
      end
    end
    
    typesig { [] }
    # Returns the number of tabs.
    # <p>
    # Tab stop spacing is specified in terms of the
    # space (' ') character.  The width of a single
    # tab stop is the pixel width of the spaces.
    # </p>
    # 
    # @return the number of tab characters
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_tabs
      check_widget
      return @tabs
    end
    
    typesig { [] }
    # Returns the widget text.
    # <p>
    # The text for a text widget is the characters in the widget, or
    # an empty string if this has never been set.
    # </p>
    # 
    # @return the widget text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text
      check_widget
      str = nil
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return String.new(get_edit_text)
      else
        str = (self.attr_view).text_storage.string
      end
      return str.get_string
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns a range of text.  Returns an empty string if the
    # start of the range is greater than the end.
    # <p>
    # Indexing is zero based.  The range of
    # a selection is from 0..N-1 where N is
    # the number of characters in the widget.
    # </p>
    # 
    # @param start the start of the range
    # @param end the end of the range
    # @return the range of text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text(start, end_)
      check_widget
      if (!(start <= end_ && 0 <= end_))
        return ""
      end # $NON-NLS-1$
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return String.new(get_edit_text(start, end_))
      end
      storage = (self.attr_view).text_storage
      # 64
      end_ = Math.min(end_, RJava.cast_to_int(storage.length) - 1)
      if (start > end_)
        return ""
      end # $NON-NLS-1$
      start = Math.max(0, start)
      range = NSRange.new
      range.attr_location = start
      range.attr_length = end_ - start + 1
      substring = storage.attributed_substring_from_range(range)
      string_ = substring.string
      return string_.get_string
    end
    
    typesig { [] }
    # Returns the maximum number of characters that the receiver is capable of holding.
    # <p>
    # If this has not been changed by <code>setTextLimit()</code>,
    # it will be the constant <code>Text.LIMIT</code>.
    # </p>
    # 
    # @return the text limit
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #LIMIT
    def get_text_limit
      check_widget
      return @text_limit
    end
    
    typesig { [] }
    # Returns the zero-relative index of the line which is currently
    # at the top of the receiver.
    # <p>
    # This index can change when lines are scrolled or new lines are added or removed.
    # </p>
    # 
    # @return the index of the top line
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_top_index
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return 0
      end
      return get_top_pixel / get_line_height
    end
    
    typesig { [] }
    # Returns the top pixel.
    # <p>
    # The top pixel is the pixel position of the line
    # that is currently at the top of the widget.  On
    # some platforms, a text widget can be scrolled by
    # pixels instead of lines so that a partial line
    # is displayed at the top of the widget.
    # </p><p>
    # The top pixel changes when the widget is scrolled.
    # The top pixel does not include the widget trimming.
    # </p>
    # 
    # @return the pixel position of the top line
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_top_pixel
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return 0
      end
      return RJava.cast_to_int(self.attr_scroll_view.content_view.bounds.attr_y)
    end
    
    typesig { [String] }
    # Inserts a string.
    # <p>
    # The old selection is replaced with the new text.
    # </p>
    # 
    # @param string the string
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is <code>null</code></li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def insert(string_)
      check_widget
      if ((string_).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (hooks(SWT::Verify) || filters(SWT::Verify))
        selection = get_selection
        string_ = RJava.cast_to_string(verify_text(string_, selection.attr_x, selection.attr_y, nil))
        if ((string_).nil?)
          return
        end
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        insert_edit_text(string_)
      else
        str = NSString.string_with(string_)
        widget = self.attr_view
        range = widget.selected_range
        widget.text_storage.replace_characters_in_range(range, str)
      end
      if (!(string_.length).equal?(0))
        send_event(SWT::Modify)
      end
    end
    
    typesig { [String] }
    def insert_edit_text(string_)
      length_ = string_.length
      selection = get_selection
      if (has_focus && (@hidden_text).nil?)
        if (!(@text_limit).equal?(LIMIT))
          char_count = get_char_count
          if (char_count - (selection.attr_y - selection.attr_x) + length_ > @text_limit)
            length_ = @text_limit - char_count + (selection.attr_y - selection.attr_x)
          end
        end
        buffer = CharArray.new(length_)
        string_.get_chars(0, buffer.attr_length, buffer, 0)
        nsstring = NSString.string_with_characters(buffer, buffer.attr_length)
        field_editor = (self.attr_view).current_editor
        if (!(field_editor).nil?)
          field_editor.replace_characters_in_range(field_editor.selected_range, nsstring)
        end
        @selection_range = nil
      else
        old_text = get_text
        if (!(@text_limit).equal?(LIMIT))
          char_count = old_text.length
          if (char_count - (selection.attr_y - selection.attr_x) + length_ > @text_limit)
            string_ = RJava.cast_to_string(string_.substring(0, @text_limit - char_count + (selection.attr_y - selection.attr_x)))
          end
        end
        new_text = RJava.cast_to_string(old_text.substring(0, selection.attr_x)) + string_ + RJava.cast_to_string(old_text.substring(selection.attr_y))
        set_edit_text(new_text)
        set_selection(selection.attr_x + string_.length)
      end
    end
    
    typesig { [::Java::Int] }
    # long
    def is_event_view(id)
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        return super(id)
      end
      return true
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
    def paste
      check_widget
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return
      end
      paste = true
      old_text = nil
      if (hooks(SWT::Verify) || filters(SWT::Verify))
        old_text = RJava.cast_to_string(get_clipboard_text)
        if (!(old_text).nil?)
          selection = get_selection
          new_text = verify_text(old_text, selection.attr_x, selection.attr_y, nil)
          if ((new_text).nil?)
            return
          end
          if (!(new_text == old_text))
            if (!((self.attr_style & SWT::SINGLE)).equal?(0))
              insert_edit_text(new_text)
            else
              text_view = self.attr_view
              text_view.replace_characters_in_range(text_view.selected_range, NSString.string_with(new_text))
            end
            paste = false
          end
        end
      end
      if (paste)
        if (!((self.attr_style & SWT::SINGLE)).equal?(0))
          if ((old_text).nil?)
            old_text = RJava.cast_to_string(get_clipboard_text)
          end
          if ((old_text).nil?)
            return
          end
          insert_edit_text(old_text)
        else
          # TODO check text limit
          (self.attr_view).paste(nil)
        end
      end
      send_event(SWT::Modify)
    end
    
    typesig { [] }
    def register
      super
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        self.attr_display.add_widget((self.attr_view).cell, self)
      end
    end
    
    typesig { [] }
    def release_widget
      super
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        (self.attr_view).abort_editing
      end
      @hidden_text = RJava.cast_to_string(@message = RJava.cast_to_string(nil))
      @selection_range = nil
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
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Modify, listener)
    end
    
    typesig { [SelectionListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the control is selected by the user.
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
    def remove_verify_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Verify, listener)
    end
    
    typesig { [] }
    # Selects all the text in the receiver.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def select_all
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        set_selection(0, get_char_count)
      else
        (self.attr_view).select_all(nil)
      end
    end
    
    typesig { [NSEvent, ::Java::Int] }
    def send_key_event(ns_event, type)
      result = super(ns_event, type)
      if (!result)
        return result
      end
      if (!(type).equal?(SWT::KeyDown))
        return result
      end
      state_mask = 0
      # long
      modifier_flags_ = ns_event.modifier_flags
      if (!((modifier_flags_ & OS::NSAlternateKeyMask)).equal?(0))
        state_mask |= SWT::ALT
      end
      if (!((modifier_flags_ & OS::NSShiftKeyMask)).equal?(0))
        state_mask |= SWT::SHIFT
      end
      if (!((modifier_flags_ & OS::NSControlKeyMask)).equal?(0))
        state_mask |= SWT::CONTROL
      end
      if (!((modifier_flags_ & OS::NSCommandKeyMask)).equal?(0))
        state_mask |= SWT::COMMAND
      end
      if ((state_mask).equal?(SWT::COMMAND))
        key_code_ = ns_event.key_code
        case (key_code_)
        when 7
          # X
          cut
          return false
        when 8
          # C
          copy
          return false
        when 9
          # V
          paste
          return false
        end
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        key_code_ = ns_event.key_code
        case (key_code_)
        # KP Enter
        when 76, 36
          # Return
          post_event(SWT::DefaultSelection)
        end
      end
      return result
    end
    
    typesig { [] }
    def send_search_selection
      if (!(@target_search).nil?)
        (self.attr_view).send_action(@action_search, @target_search)
      end
      event = Event.new
      event.attr_detail = SWT::ICON_SEARCH
      post_event(SWT::DefaultSelection, event)
    end
    
    typesig { [] }
    def send_cancel_selection
      if (!(@target_cancel).nil?)
        (self.attr_view).send_action(@action_cancel, @target_cancel)
      end
      event = Event.new
      event.attr_detail = SWT::ICON_CANCEL
      post_event(SWT::DefaultSelection, event)
    end
    
    typesig { [] }
    def update_background
      ns_color = nil
      if (!(self.attr_background_image).nil?)
        ns_color = NSColor.color_with_pattern_image(self.attr_background_image.attr_handle)
      else
        if (!(self.attr_background).nil?)
          ns_color = NSColor.color_with_device_red(self.attr_background[0], self.attr_background[1], self.attr_background[2], self.attr_background[3])
        else
          ns_color = NSColor.text_background_color
        end
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        (self.attr_view).set_background_color(ns_color)
      else
        (self.attr_view).set_background_color(ns_color)
      end
    end
    
    typesig { [::Java::Boolean] }
    # Sets the double click enabled flag.
    # <p>
    # The double click flag enables or disables the
    # default action of the text widget when the user
    # double clicks.
    # </p><p>
    # Note: This operation is a hint and is not supported on
    # platforms that do not have this concept.
    # </p>
    # 
    # @param doubleClick the new double click flag
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_double_click_enabled(double_click)
      check_widget
      @double_click = double_click
    end
    
    typesig { [::Java::Char] }
    # Sets the echo character.
    # <p>
    # The echo character is the character that is
    # displayed when the user enters text or the
    # text is changed by the programmer. Setting
    # the echo character to '\0' clears the echo
    # character and redraws the original text.
    # If for any reason the echo character is invalid,
    # or if the platform does not allow modification
    # of the echo character, the default echo character
    # for the platform is used.
    # </p>
    # 
    # @param echo the new echo character
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_echo_char(echo)
      check_widget
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        return
      end
      if (((self.attr_style & SWT::PASSWORD)).equal?(0))
        selection = get_selection
        text = get_text
        @echo_character = echo
        set_edit_text(text)
        set_selection(selection)
      end
      @echo_character = echo
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
    def set_editable(editable)
      check_widget
      if (editable)
        self.attr_style &= ~SWT::READ_ONLY
      else
        self.attr_style |= SWT::READ_ONLY
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        (self.attr_view).set_editable(editable)
      else
        (self.attr_view).set_editable(editable)
      end
    end
    
    typesig { [String] }
    def set_edit_text(string_)
      buffer = nil
      if (((self.attr_style & SWT::PASSWORD)).equal?(0) && !(@echo_character).equal?(Character.new(?\0.ord)))
        @hidden_text = string_
        buffer = CharArray.new(Math.min(@hidden_text.length, @text_limit))
        i = 0
        while i < buffer.attr_length
          buffer[i] = @echo_character
          i += 1
        end
      else
        @hidden_text = RJava.cast_to_string(nil)
        buffer = CharArray.new(Math.min(string_.length, @text_limit))
        string_.get_chars(0, buffer.attr_length, buffer, 0)
      end
      nsstring = NSString.string_with_characters(buffer, buffer.attr_length)
      NSCell.new((self.attr_view).cell).set_title(nsstring)
      @selection_range = nil
    end
    
    typesig { [NSFont] }
    def set_font(font)
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        (self.attr_view).set_font(font)
        return
      end
      super(font)
    end
    
    typesig { [Array.typed(::Java::Float)] }
    # double
    def set_foreground(color)
      ns_color = nil
      if ((color).nil?)
        ns_color = NSColor.text_color
      else
        ns_color = NSColor.color_with_device_red(color[0], color[1], color[2], 1)
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        (self.attr_view).set_text_color(ns_color)
      else
        (self.attr_view).set_text_color(ns_color)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the orientation of the receiver, which must be one
    # of the constants <code>SWT.LEFT_TO_RIGHT</code> or <code>SWT.RIGHT_TO_LEFT</code>.
    # <p>
    # Note: This operation is a hint and is not supported on
    # platforms that do not have this concept.
    # </p>
    # 
    # @param orientation new orientation style
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1.2
    def set_orientation(orientation)
      check_widget
    end
    
    typesig { [String] }
    # Sets the widget message. The message text is displayed
    # as a hint for the user, indicating the purpose of the field.
    # <p>
    # Typically this is used in conjunction with <code>SWT.SEARCH</code>.
    # </p>
    # 
    # @param message the new message
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the message is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    def set_message(message)
      check_widget
      if ((message).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      @message = message
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        str = NSString.string_with(message)
        cell_ = NSTextFieldCell.new((self.attr_view).cell)
        cell_.set_placeholder_string(str)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the selection.
    # <p>
    # Indexing is zero based.  The range of
    # a selection is from 0..N where N is
    # the number of characters in the widget.
    # </p><p>
    # Text selections are specified in terms of
    # caret positions.  In a text widget that
    # contains N characters, there are N+1 caret
    # positions, ranging from 0..N.  This differs
    # from other functions that address character
    # position such as getText () that use the
    # regular array indexing rules.
    # </p>
    # 
    # @param start new caret position
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(start)
      check_widget
      set_selection(start, start)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the selection to the range specified
    # by the given start and end indices.
    # <p>
    # Indexing is zero based.  The range of
    # a selection is from 0..N where N is
    # the number of characters in the widget.
    # </p><p>
    # Text selections are specified in terms of
    # caret positions.  In a text widget that
    # contains N characters, there are N+1 caret
    # positions, ranging from 0..N.  This differs
    # from other functions that address character
    # position such as getText () that use the
    # usual array indexing rules.
    # </p>
    # 
    # @param start the start of the range
    # @param end the end of the range
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(start, end_)
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        str = NSCell.new((self.attr_view).cell).title
        # 64
        length_ = RJava.cast_to_int(str.length)
        sel_start = Math.min(Math.max(Math.min(start, end_), 0), length_)
        sel_end = Math.min(Math.max(Math.max(start, end_), 0), length_)
        @selection_range = NSRange.new
        @selection_range.attr_location = sel_start
        @selection_range.attr_length = sel_end - sel_start
        field_editor = (self.attr_view).current_editor
        if (!(field_editor).nil?)
          field_editor.set_selected_range(@selection_range)
        end
      else
        # 64
        length_ = RJava.cast_to_int((self.attr_view).text_storage.length)
        sel_start = Math.min(Math.max(Math.min(start, end_), 0), length_)
        sel_end = Math.min(Math.max(Math.max(start, end_), 0), length_)
        range = NSRange.new
        range.attr_location = sel_start
        range.attr_length = sel_end - sel_start
        (self.attr_view).set_selected_range(range)
      end
    end
    
    typesig { [Point] }
    # Sets the selection to the range specified
    # by the given point, where the x coordinate
    # represents the start index and the y coordinate
    # represents the end index.
    # <p>
    # Indexing is zero based.  The range of
    # a selection is from 0..N where N is
    # the number of characters in the widget.
    # </p><p>
    # Text selections are specified in terms of
    # caret positions.  In a text widget that
    # contains N characters, there are N+1 caret
    # positions, ranging from 0..N.  This differs
    # from other functions that address character
    # position such as getText () that use the
    # usual array indexing rules.
    # </p>
    # 
    # @param selection the point
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
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_selection(selection.attr_x, selection.attr_y)
    end
    
    typesig { [::Java::Int] }
    # Sets the number of tabs.
    # <p>
    # Tab stop spacing is specified in terms of the
    # space (' ') character.  The width of a single
    # tab stop is the pixel width of the spaces.
    # </p>
    # 
    # @param tabs the number of tabs
    # 
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_tabs(tabs)
      check_widget
      if ((@tabs).equal?(tabs))
        return
      end
      @tabs = tabs
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return
      end
      # double
      size_ = text_extent("s").attr_width * tabs
      widget = self.attr_view
      default_style = widget.default_paragraph_style
      paragraph_style = NSMutableParagraphStyle.new(default_style.mutable_copy)
      paragraph_style.set_tab_stops(NSArray.array)
      tab = NSTextTab.new.alloc
      tab = tab.init_with_type(OS::NSLeftTabStopType, size_)
      paragraph_style.add_tab_stop(tab)
      tab.release
      paragraph_style.set_default_tab_interval(size_)
      widget.set_default_paragraph_style(paragraph_style)
      paragraph_style.release
    end
    
    typesig { [String] }
    # Sets the contents of the receiver to the given string. If the receiver has style
    # SINGLE and the argument contains multiple lines of text, the result of this
    # operation is undefined and may vary from platform to platform.
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
    def set_text(string_)
      check_widget
      if ((string_).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (hooks(SWT::Verify) || filters(SWT::Verify))
        string_ = RJava.cast_to_string(verify_text(string_, 0, get_char_count, nil))
        if ((string_).nil?)
          return
        end
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        set_edit_text(string_)
      else
        widget = self.attr_view
        str = NSString.string_with(string_)
        widget.set_string(str)
        widget.set_selected_range(NSRange.new)
      end
      send_event(SWT::Modify)
    end
    
    typesig { [::Java::Int] }
    # Sets the maximum number of characters that the receiver
    # is capable of holding to be the argument.
    # <p>
    # Instead of trying to set the text limit to zero, consider
    # creating a read-only text widget.
    # </p><p>
    # To reset this value to the default, use <code>setTextLimit(Text.LIMIT)</code>.
    # Specifying a limit value larger than <code>Text.LIMIT</code> sets the
    # receiver's limit to <code>Text.LIMIT</code>.
    # </p>
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
    # 
    # @see #LIMIT
    def set_text_limit(limit)
      check_widget
      if ((limit).equal?(0))
        error(SWT::ERROR_CANNOT_BE_ZERO)
      end
      @text_limit = limit
    end
    
    typesig { [::Java::Int] }
    # Sets the zero-relative index of the line which is currently
    # at the top of the receiver. This index can change when lines
    # are scrolled or new lines are added and removed.
    # 
    # @param index the index of the top item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_top_index(index)
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return
      end
      row = Math.max(0, Math.min(index, get_line_count - 1))
      pt = NSPoint.new
      pt.attr_x = self.attr_scroll_view.content_view.bounds.attr_x
      pt.attr_y = get_line_height * row
      self.attr_view.scroll_point(pt)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def should_change_text_in_range_replacement_string(id, sel, affected_char_range, replacement_string)
      range = NSRange.new
      OS.memmove___org_eclipse_swt_widgets_text_5(range, affected_char_range, NSRange.attr_sizeof)
      result = call_super_boolean(id, sel, range, replacement_string)
      if (!hooks(SWT::Verify) && (@echo_character).equal?(Character.new(?\0.ord)))
        return result
      end
      text = NSString.new(replacement_string).get_string
      new_text = text
      if (hooks(SWT::Verify))
        current_event_ = self.attr_display.attr_application.current_event
        # long
        type_ = current_event_.type
        if (!(type_).equal?(OS::NSKeyDown) && !(type_).equal?(OS::NSKeyUp))
          current_event_ = nil
        end
        # 64
        # 64
        new_text = RJava.cast_to_string(verify_text(text, RJava.cast_to_int(range.attr_location), RJava.cast_to_int((range.attr_location + range.attr_length)), current_event_))
      end
      if ((new_text).nil?)
        return false
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        if (!(text).equal?(new_text) || !(@echo_character).equal?(Character.new(?\0.ord)))
          # handle backspace and delete
          if ((range.attr_length).equal?(1))
            editor = NSText.new(id)
            editor.set_selected_range(range)
          end
          insert_edit_text(new_text)
          result = false
        end
      else
        if (!(text).equal?(new_text))
          widget = self.attr_view
          selection = get_selection
          sel_range = NSRange.new
          sel_range.attr_location = selection.attr_x
          sel_range.attr_length = selection.attr_x + selection.attr_y
          widget.text_storage.replace_characters_in_range(sel_range, NSString.string_with(new_text))
          result = false
        end
      end
      if (!result)
        send_event(SWT::Modify)
      end
      return result
    end
    
    typesig { [] }
    # Shows the selection.
    # <p>
    # If the selection is already showing
    # in the receiver, this method simply returns.  Otherwise,
    # lines are scrolled until the selection is visible.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def show_selection
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        set_selection(get_selection)
      else
        widget = self.attr_view
        widget.scroll_range_to_visible(widget.selected_range)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def text_view_did_change_selection(id, sel, a_notification)
      notification = NSNotification.new(a_notification)
      editor = NSText.new(notification.object.attr_id)
      @selection_range = editor.selected_range
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def text_did_change(id, sel, a_notification)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        super(id, sel, a_notification)
      end
      post_event(SWT::Modify)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def text_view_will_change_selection_from_character_range_to_character_range(id, sel, a_text_view, old_selected_char_range, new_selected_char_range)
      # If the selection is changing as a result of the receiver getting focus
      # then return the receiver's last selection range, otherwise the full
      # text will be automatically selected.
      if (@receiving_focus && !(@selection_range).nil?)
        return @selection_range
      end
      # allow the selection change to proceed
      result = NSRange.new
      OS.memmove___org_eclipse_swt_widgets_text_7(result, new_selected_char_range, NSRange.attr_sizeof)
      return result
    end
    
    typesig { [::Java::Int, NSEvent] }
    def traversal_code(key, the_event)
      bits = super(key, the_event)
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return bits
      end
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        bits &= ~SWT::TRAVERSE_RETURN
        # Tab
        if ((key).equal?(48) && !(the_event).nil?)
          # long
          modifiers = the_event.modifier_flags
          next_ = ((modifiers & OS::NSShiftKeyMask)).equal?(0)
          if (next_ && ((modifiers & OS::NSControlKeyMask)).equal?(0))
            bits &= ~(SWT::TRAVERSE_TAB_NEXT | SWT::TRAVERSE_TAB_PREVIOUS)
          end
        end
      end
      return bits
    end
    
    typesig { [::Java::Boolean] }
    def update_cursor_rects(enabled)
      super(enabled)
      if ((self.attr_scroll_view).nil?)
        return
      end
      content_view_ = self.attr_scroll_view.content_view
      content_view_.set_document_cursor(enabled ? NSCursor._ibeam_cursor : nil)
    end
    
    typesig { [String, ::Java::Int, ::Java::Int, NSEvent] }
    def verify_text(string_, start, end_, key_event)
      event = Event.new
      if (!(key_event).nil?)
        set_key_state(event, SWT::MouseDown, key_event)
      end
      event.attr_text = string_
      event.attr_start = start
      event.attr_end = end_
      # It is possible (but unlikely), that application
      # code could have disposed the widget in the verify
      # event.  If this happens, answer null to cancel
      # the operation.
      send_event(SWT::Verify, event)
      if (!event.attr_doit || is_disposed)
        return nil
      end
      return event.attr_text
    end
    
    private
    alias_method :initialize__text, :initialize
  end
  
end
