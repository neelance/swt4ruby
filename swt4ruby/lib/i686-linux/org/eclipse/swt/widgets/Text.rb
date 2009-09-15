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
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
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
    
    # long
    attr_accessor :buffer_handle
    alias_method :attr_buffer_handle, :buffer_handle
    undef_method :buffer_handle
    alias_method :attr_buffer_handle=, :buffer_handle=
    undef_method :buffer_handle=
    
    attr_accessor :tabs
    alias_method :attr_tabs, :tabs
    undef_method :tabs
    alias_method :attr_tabs=, :tabs=
    undef_method :tabs=
    
    attr_accessor :last_event_time
    alias_method :attr_last_event_time, :last_event_time
    undef_method :last_event_time
    alias_method :attr_last_event_time=, :last_event_time=
    undef_method :last_event_time=
    
    # long
    attr_accessor :gdk_event_key
    alias_method :attr_gdk_event_key, :gdk_event_key
    undef_method :gdk_event_key
    alias_method :attr_gdk_event_key=, :gdk_event_key=
    undef_method :gdk_event_key=
    
    attr_accessor :fix_start
    alias_method :attr_fix_start, :fix_start
    undef_method :fix_start
    alias_method :attr_fix_start=, :fix_start=
    undef_method :fix_start=
    
    attr_accessor :fix_end
    alias_method :attr_fix_end, :fix_end
    undef_method :fix_end
    alias_method :attr_fix_end=, :fix_end=
    undef_method :fix_end=
    
    attr_accessor :double_click
    alias_method :attr_double_click, :double_click
    undef_method :double_click
    alias_method :attr_double_click=, :double_click=
    undef_method :double_click=
    
    attr_accessor :message
    alias_method :attr_message, :message
    undef_method :message
    alias_method :attr_message=, :message=
    undef_method :message=
    
    class_module.module_eval {
      const_set_lazy(:ITER_SIZEOF) { OS._gtk_text_iter_sizeof }
      const_attr_reader  :ITER_SIZEOF
      
      const_set_lazy(:SPACE_FOR_CURSOR) { 1 }
      const_attr_reader  :SPACE_FOR_CURSOR
      
      # These values can be different on different platforms.
      # Therefore they are not initialized in the declaration
      # to stop the compiler from inlining.
      when_class_loaded do
        const_set :LIMIT, 0x7fffffff
        const_set :DELIMITER, "\n"
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
      @buffer_handle = 0
      @tabs = 0
      @last_event_time = 0
      @gdk_event_key = 0
      @fix_start = 0
      @fix_end = 0
      @double_click = false
      @message = nil
      super(parent, check_style(style))
      @tabs = 8
      @last_event_time = 0
      @gdk_event_key = 0
      @fix_start = -1
      @fix_end = -1
      @message = ""
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
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE | MENU
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        if (((self.attr_style & (SWT::BORDER | SWT::H_SCROLL | SWT::V_SCROLL))).equal?(0))
          self.attr_state |= THEME_BACKGROUND
        end
      end
      self.attr_fixed_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
      if ((self.attr_fixed_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_fixed_set_has_window(self.attr_fixed_handle, true)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        self.attr_handle = OS.gtk_entry_new
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_container_add(self.attr_fixed_handle, self.attr_handle)
        OS.gtk_editable_set_editable(self.attr_handle, ((self.attr_style & SWT::READ_ONLY)).equal?(0))
        OS.gtk_entry_set_has_frame(self.attr_handle, !((self.attr_style & SWT::BORDER)).equal?(0))
        OS.gtk_entry_set_visibility(self.attr_handle, ((self.attr_style & SWT::PASSWORD)).equal?(0))
        alignment = 0.0
        if (!((self.attr_style & SWT::CENTER)).equal?(0))
          alignment = 0.5
        end
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          alignment = 1.0
        end
        if (alignment > 0.0)
          OS.gtk_entry_set_alignment(self.attr_handle, alignment)
        end
      else
        self.attr_scrolled_handle = OS.gtk_scrolled_window_new(0, 0)
        if ((self.attr_scrolled_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        self.attr_handle = OS.gtk_text_view_new
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        @buffer_handle = OS.gtk_text_view_get_buffer(self.attr_handle)
        if ((@buffer_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_container_add(self.attr_fixed_handle, self.attr_scrolled_handle)
        OS.gtk_container_add(self.attr_scrolled_handle, self.attr_handle)
        OS.gtk_text_view_set_editable(self.attr_handle, ((self.attr_style & SWT::READ_ONLY)).equal?(0))
        if (!((self.attr_style & SWT::WRAP)).equal?(0))
          OS.gtk_text_view_set_wrap_mode(self.attr_handle, OS::GTK_VERSION < OS._version(2, 4, 0) ? OS::GTK_WRAP_WORD : OS::GTK_WRAP_WORD_CHAR)
        end
        hsp = !((self.attr_style & SWT::H_SCROLL)).equal?(0) ? OS::GTK_POLICY_ALWAYS : OS::GTK_POLICY_NEVER
        vsp = !((self.attr_style & SWT::V_SCROLL)).equal?(0) ? OS::GTK_POLICY_ALWAYS : OS::GTK_POLICY_NEVER
        OS.gtk_scrolled_window_set_policy(self.attr_scrolled_handle, hsp, vsp)
        if (!((self.attr_style & SWT::BORDER)).equal?(0))
          OS.gtk_scrolled_window_set_shadow_type(self.attr_scrolled_handle, OS::GTK_SHADOW_ETCHED_IN)
        end
        just = OS::GTK_JUSTIFY_LEFT
        if (!((self.attr_style & SWT::CENTER)).equal?(0))
          just = OS::GTK_JUSTIFY_CENTER
        end
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          just = OS::GTK_JUSTIFY_RIGHT
        end
        OS.gtk_text_view_set_justification(self.attr_handle, just)
      end
    end
    
    typesig { [::Java::Int] }
    def create_widget(index)
      super(index)
      @double_click = true
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
      buffer = Converter.wcs_to_mbcs(nil, string, false)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        OS.gtk_editable_insert_text(self.attr_handle, buffer, buffer.attr_length, Array.typed(::Java::Int).new([-1]))
        OS.gtk_editable_set_position(self.attr_handle, -1)
      else
        position = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
        OS.gtk_text_buffer_get_end_iter(@buffer_handle, position)
        OS.gtk_text_buffer_insert(@buffer_handle, position, buffer, buffer.attr_length)
        OS.gtk_text_buffer_place_cursor(@buffer_handle, position)
        # long
        mark = OS.gtk_text_buffer_get_insert(@buffer_handle)
        OS.gtk_text_view_scroll_mark_onscreen(self.attr_handle, mark)
      end
    end
    
    typesig { [] }
    # Clears the selection.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def clear_selection
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        position = OS.gtk_editable_get_position(self.attr_handle)
        OS.gtk_editable_select_region(self.attr_handle, position, position)
      else
        position = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
        # long
        insert_mark = OS.gtk_text_buffer_get_insert(@buffer_handle)
        # long
        selection_mark = OS.gtk_text_buffer_get_selection_bound(@buffer_handle)
        OS.gtk_text_buffer_get_iter_at_mark(@buffer_handle, position, insert_mark)
        OS.gtk_text_buffer_move_mark(@buffer_handle, selection_mark, position)
        OS.gtk_text_buffer_move_mark(@buffer_handle, insert_mark, position)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      if (!(w_hint).equal?(SWT::DEFAULT) && w_hint < 0)
        w_hint = 0
      end
      if (!(h_hint).equal?(SWT::DEFAULT) && h_hint < 0)
        h_hint = 0
      end
      w = Array.typed(::Java::Int).new(1) { 0 }
      h = Array.typed(::Java::Int).new(1) { 0 }
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        OS.gtk_widget_realize(self.attr_handle)
        # long
        layout = OS.gtk_entry_get_layout(self.attr_handle)
        OS.pango_layout_get_size(layout, w, h)
      else
        start = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
        end_ = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
        OS.gtk_text_buffer_get_bounds(@buffer_handle, start, end_)
        # long
        text = OS.gtk_text_buffer_get_text(@buffer_handle, start, end_, true)
        # long
        layout = OS.gtk_widget_create_pango_layout(self.attr_handle, text)
        OS.g_free(text)
        OS.pango_layout_set_width(layout, w_hint * OS::PANGO_SCALE)
        OS.pango_layout_get_size(layout, w, h)
        OS.g_object_unref(layout)
      end
      width = OS._pango_pixels(w[0])
      height = OS._pango_pixels(h[0])
      if (!((self.attr_style & SWT::SINGLE)).equal?(0) && @message.length > 0)
        buffer = Converter.wcs_to_mbcs(nil, @message, true)
        # long
        layout = OS.gtk_widget_create_pango_layout(self.attr_handle, buffer)
        OS.pango_layout_get_size(layout, w, h)
        OS.g_object_unref(layout)
        width = Math.max(width, OS._pango_pixels(w[0]))
      end
      if ((width).equal?(0))
        width = DEFAULT_WIDTH
      end
      if ((height).equal?(0))
        height = DEFAULT_HEIGHT
      end
      width = (w_hint).equal?(SWT::DEFAULT) ? width : w_hint
      height = (h_hint).equal?(SWT::DEFAULT) ? height : h_hint
      trim = compute_trim(0, 0, width, height)
      return Point.new(trim.attr_width, trim.attr_height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      trim = super(x, y, width, height)
      xborder = 0
      yborder = 0
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        if (!((self.attr_style & SWT::BORDER)).equal?(0))
          # long
          style = OS.gtk_widget_get_style(self.attr_handle)
          xborder += OS.gtk_style_get_xthickness(style)
          yborder += OS.gtk_style_get_ythickness(style)
        end
        inner_border = Display.get_entry_inner_border(self.attr_handle)
        trim.attr_x -= inner_border.attr_left
        trim.attr_y -= inner_border.attr_top
        trim.attr_width += inner_border.attr_left + inner_border.attr_right
        trim.attr_height += inner_border.attr_top + inner_border.attr_bottom
      else
        border_width = OS.gtk_container_get_border_width(self.attr_handle)
        xborder += border_width
        yborder += border_width
      end
      property = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_widget_style_get(self.attr_handle, OS.attr_interior_focus, property, 0)
      if ((property[0]).equal?(0))
        OS.gtk_widget_style_get(self.attr_handle, OS.attr_focus_line_width, property, 0)
        xborder += property[0]
        yborder += property[0]
      end
      trim.attr_x -= xborder
      trim.attr_y -= yborder
      trim.attr_width += 2 * xborder
      trim.attr_height += 2 * yborder
      trim.attr_width += SPACE_FOR_CURSOR
      return Rectangle.new(trim.attr_x, trim.attr_y, trim.attr_width, trim.attr_height)
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
        OS.gtk_editable_copy_clipboard(self.attr_handle)
      else
        # long
        clipboard = OS.gtk_clipboard_get(OS::GDK_NONE)
        OS.gtk_text_buffer_copy_clipboard(@buffer_handle, clipboard)
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
    def cut
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        OS.gtk_editable_cut_clipboard(self.attr_handle)
      else
        # long
        clipboard = OS.gtk_clipboard_get(OS::GDK_NONE)
        OS.gtk_text_buffer_cut_clipboard(@buffer_handle, clipboard, OS.gtk_text_view_get_editable(self.attr_handle))
      end
    end
    
    typesig { [] }
    def deregister
      super
      if (!(@buffer_handle).equal?(0))
        self.attr_display.remove_widget(@buffer_handle)
      end
      # long
      im_context_ = im_context
      if (!(im_context_).equal?(0))
        self.attr_display.remove_widget(im_context_)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Boolean)] }
    def drag_detect(x, y, filter, consume)
      if (filter)
        start = 0
        end_ = 0
        if (!((self.attr_style & SWT::SINGLE)).equal?(0))
          s = Array.typed(::Java::Int).new(1) { 0 }
          e = Array.typed(::Java::Int).new(1) { 0 }
          OS.gtk_editable_get_selection_bounds(self.attr_handle, s, e)
          start = s[0]
          end_ = e[0]
        else
          s = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
          e = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
          OS.gtk_text_buffer_get_selection_bounds(@buffer_handle, s, e)
          start = OS.gtk_text_iter_get_offset(s)
          end_ = OS.gtk_text_iter_get_offset(e)
        end
        if (!(start).equal?(end_))
          if (end_ < start)
            temp = end_
            end_ = start
            start = temp
          end
          position = -1
          if (!((self.attr_style & SWT::SINGLE)).equal?(0))
            index = Array.typed(::Java::Int).new(1) { 0 }
            trailing = Array.typed(::Java::Int).new(1) { 0 }
            # long
            layout = OS.gtk_entry_get_layout(self.attr_handle)
            OS.pango_layout_xy_to_index(layout, x * OS::PANGO_SCALE, y * OS::PANGO_SCALE, index, trailing)
            # long
            ptr = OS.pango_layout_get_text(layout)
            # 64
            position = RJava.cast_to_int(OS.g_utf8_pointer_to_offset(ptr, ptr + index[0])) + trailing[0]
          else
            p = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
            OS.gtk_text_view_get_iter_at_location(self.attr_handle, p, x, y)
            position = OS.gtk_text_iter_get_offset(p)
          end
          if (start <= position && position < end_)
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
      return super(x, y, filter, consume)
    end
    
    typesig { [] }
    # long
    def event_window
      return paint_window
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    def filter_key(keyval, event)
      time = OS.gdk_event_get_time(event)
      if (!(time).equal?(@last_event_time))
        @last_event_time = time
        # long
        im_context_ = im_context
        if (!(im_context_).equal?(0))
          return OS.gtk_im_context_filter_keypress(im_context_, event)
        end
      end
      @gdk_event_key = event
      return false
    end
    
    typesig { [] }
    def fix_im
      # The IM filter has to be called one time for each key press event.
      # When the IM is open the key events are duplicated. The first event
      # is filtered by SWT and the second event is filtered by GTK.  In some
      # cases the GTK handler does not run (the widget is destroyed, the
      # application code consumes the event, etc), for these cases the IM
      # filter has to be called by SWT.
      if (!(@gdk_event_key).equal?(0) && !(@gdk_event_key).equal?(-1))
        # long
        im_context_ = im_context
        if (!(im_context_).equal?(0))
          OS.gtk_im_context_filter_keypress(im_context_, @gdk_event_key)
          @gdk_event_key = -1
          return
        end
      end
      @gdk_event_key = 0
    end
    
    typesig { [] }
    def get_background_color
      return get_base_color
    end
    
    typesig { [] }
    def get_border_width
      check_widget
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        return super
      end
      # long
      style = OS.gtk_widget_get_style(self.attr_handle)
      if (!((self.attr_style & SWT::BORDER)).equal?(0))
        return OS.gtk_style_get_xthickness(style)
      end
      return 0
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
      position = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
      # long
      mark = OS.gtk_text_buffer_get_insert(@buffer_handle)
      OS.gtk_text_buffer_get_iter_at_mark(@buffer_handle, position, mark)
      return OS.gtk_text_iter_get_line(position)
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
        index = OS.gtk_editable_get_position(self.attr_handle)
        if (OS::GTK_VERSION >= OS._version(2, 6, 0))
          index = OS.gtk_entry_text_index_to_layout_index(self.attr_handle, index)
        end
        offset_x = Array.typed(::Java::Int).new(1) { 0 }
        offset_y = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_entry_get_layout_offsets(self.attr_handle, offset_x, offset_y)
        # long
        layout = OS.gtk_entry_get_layout(self.attr_handle)
        pos = PangoRectangle.new
        OS.pango_layout_index_to_pos(layout, index, pos)
        x = offset_x[0] + OS._pango_pixels(pos.attr_x) - get_border_width
        y = offset_y[0] + OS._pango_pixels(pos.attr_y)
        return Point.new(x, y)
      end
      position = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
      # long
      mark = OS.gtk_text_buffer_get_insert(@buffer_handle)
      OS.gtk_text_buffer_get_iter_at_mark(@buffer_handle, position, mark)
      rect = GdkRectangle.new
      OS.gtk_text_view_get_iter_location(self.attr_handle, position, rect)
      x = Array.typed(::Java::Int).new(1) { 0 }
      y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_text_view_buffer_to_window_coords(self.attr_handle, OS::GTK_TEXT_WINDOW_TEXT, rect.attr_x, rect.attr_y, x, y)
      return Point.new(x[0], y[0])
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
        return OS.gtk_editable_get_position(self.attr_handle)
      end
      position = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
      # long
      mark = OS.gtk_text_buffer_get_insert(@buffer_handle)
      OS.gtk_text_buffer_get_iter_at_mark(@buffer_handle, position, mark)
      return OS.gtk_text_iter_get_offset(position)
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
        # long
        ptr = OS.gtk_entry_get_text(self.attr_handle)
        # 64
        return RJava.cast_to_int(OS.g_utf8_strlen(ptr, -1))
      end
      return OS.gtk_text_buffer_get_char_count(@buffer_handle)
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
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        if (!OS.gtk_entry_get_visibility(self.attr_handle))
          return OS.gtk_entry_get_invisible_char(self.attr_handle)
        end
      end
      return Character.new(?\0.ord)
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
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return OS.gtk_editable_get_editable(self.attr_handle)
      end
      return OS.gtk_text_view_get_editable(self.attr_handle)
    end
    
    typesig { [] }
    def get_foreground_color
      return get_text_color
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
      return OS.gtk_text_buffer_get_line_count(@buffer_handle)
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
      return "\n"
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
      return font_height(get_font_description, self.attr_handle)
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
    
    typesig { [Point] }
    # public
    def get_position(point)
      check_widget
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      position = -1
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        index = Array.typed(::Java::Int).new(1) { 0 }
        trailing = Array.typed(::Java::Int).new(1) { 0 }
        # long
        layout = OS.gtk_entry_get_layout(self.attr_handle)
        OS.pango_layout_xy_to_index(layout, point.attr_x * OS::PANGO_SCALE, point.attr_y * OS::PANGO_SCALE, index, trailing)
        # long
        ptr = OS.pango_layout_get_text(layout)
        # 64
        position = RJava.cast_to_int(OS.g_utf8_pointer_to_offset(ptr, ptr + index[0])) + trailing[0]
      else
        p = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
        OS.gtk_text_view_get_iter_at_location(self.attr_handle, p, point.attr_x, point.attr_y)
        position = OS.gtk_text_iter_get_offset(p)
      end
      return position
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
        start = Array.typed(::Java::Int).new(1) { 0 }
        end_ = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_editable_get_selection_bounds(self.attr_handle, start, end_)
        return Point.new(start[0], end_[0])
      end
      start = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
      end_ = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
      OS.gtk_text_buffer_get_selection_bounds(@buffer_handle, start, end_)
      return Point.new(OS.gtk_text_iter_get_offset(start), OS.gtk_text_iter_get_offset(end_))
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
      selection = get_selection
      return Math.abs(selection.attr_y - selection.attr_x)
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
      selection = get_selection
      return get_text.substring(selection.attr_x, selection.attr_y)
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
    
    typesig { [::Java::Int] }
    def get_tab_width(tabs)
      buffer = Converter.wcs_to_mbcs(nil, " ", true)
      # long
      layout = OS.gtk_widget_create_pango_layout(self.attr_handle, buffer)
      width = Array.typed(::Java::Int).new(1) { 0 }
      height = Array.typed(::Java::Int).new(1) { 0 }
      OS.pango_layout_get_size(layout, width, height)
      OS.g_object_unref(layout)
      return width[0] * tabs
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
      # long
      address = 0
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        address = OS.gtk_entry_get_text(self.attr_handle)
      else
        start = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
        end_ = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
        OS.gtk_text_buffer_get_bounds(@buffer_handle, start, end_)
        address = OS.gtk_text_buffer_get_text(@buffer_handle, start, end_, true)
      end
      if ((address).equal?(0))
        return ""
      end
      length_ = OS.strlen(address)
      buffer = Array.typed(::Java::Byte).new(length_) { 0 }
      OS.memmove___org_eclipse_swt_widgets_text_1(buffer, address, length_)
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        OS.g_free(address)
      end
      return String.new(Converter.mbcs_to_wcs(nil, buffer))
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
      end
      # long
      address = 0
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        start = Math.max(0, start)
        address = OS.gtk_editable_get_chars(self.attr_handle, start, end_ + 1)
      else
        length_ = OS.gtk_text_buffer_get_char_count(@buffer_handle)
        end_ = Math.min(end_, length_ - 1)
        if (start > end_)
          return ""
        end
        start = Math.max(0, start)
        start_iter = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
        end_iter = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
        OS.gtk_text_buffer_get_iter_at_offset(@buffer_handle, start_iter, start)
        OS.gtk_text_buffer_get_iter_at_offset(@buffer_handle, end_iter, end_ + 1)
        address = OS.gtk_text_buffer_get_text(@buffer_handle, start_iter, end_iter, true)
      end
      if ((address).equal?(0))
        error(SWT::ERROR_CANNOT_GET_TEXT)
      end
      length_ = OS.strlen(address)
      buffer = Array.typed(::Java::Byte).new(length_) { 0 }
      OS.memmove___org_eclipse_swt_widgets_text_3(buffer, address, length_)
      OS.g_free(address)
      return String.new(Converter.mbcs_to_wcs(nil, buffer))
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
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        return LIMIT
      end
      limit = OS.gtk_entry_get_max_length(self.attr_handle)
      return (limit).equal?(0) ? 0xffff : limit
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
      position = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
      rect = GdkRectangle.new
      OS.gtk_text_view_get_visible_rect(self.attr_handle, rect)
      OS.gtk_text_view_get_line_at_y(self.attr_handle, position, rect.attr_y, nil)
      return OS.gtk_text_iter_get_line(position)
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
      position = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
      rect = GdkRectangle.new
      OS.gtk_text_view_get_visible_rect(self.attr_handle, rect)
      line_top = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_text_view_get_line_at_y(self.attr_handle, position, rect.attr_y, line_top)
      return line_top[0]
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_activate(widget)
      post_event___org_eclipse_swt_widgets_text_5(SWT::DefaultSelection)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_button_press_event(widget, event)
      # long
      result = super(widget, event)
      if (!(result).equal?(0))
        return result
      end
      gdk_event = GdkEventButton.new
      OS.memmove___org_eclipse_swt_widgets_text_7(gdk_event, event, GdkEventButton.attr_sizeof)
      if (!@double_click)
        case (gdk_event.attr_type)
        when OS::GDK_2BUTTON_PRESS, OS::GDK_3BUTTON_PRESS
          return 1
        end
      end
      return result
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_changed(widget)
      # Feature in GTK.  When the user types, GTK positions
      # the caret after sending the changed signal.  This
      # means that application code that attempts to position
      # the caret during a changed signal will fail.  The fix
      # is to post the modify event when the user is typing.
      key_press = false
      # long
      event_ptr = OS.gtk_get_current_event
      if (!(event_ptr).equal?(0))
        gdk_event = GdkEventKey.new
        OS.memmove___org_eclipse_swt_widgets_text_9(gdk_event, event_ptr, GdkEventKey.attr_sizeof)
        case (gdk_event.attr_type)
        when OS::GDK_KEY_PRESS
          key_press = true
        end
        OS.gdk_event_free(event_ptr)
      end
      if (key_press)
        post_event___org_eclipse_swt_widgets_text_11(SWT::Modify)
      else
        send_event(SWT::Modify)
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_commit(im_context_, text)
      if ((text).equal?(0))
        return 0
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        if (!OS.gtk_editable_get_editable(self.attr_handle))
          return 0
        end
      end
      length_ = OS.strlen(text)
      if ((length_).equal?(0))
        return 0
      end
      buffer = Array.typed(::Java::Byte).new(length_) { 0 }
      OS.memmove___org_eclipse_swt_widgets_text_13(buffer, text, length_)
      chars = Converter.mbcs_to_wcs(nil, buffer)
      new_chars = send_imkey_event(SWT::KeyDown, nil, chars)
      if ((new_chars).nil?)
        return 0
      end
      # Feature in GTK.  For a GtkEntry, during the insert-text signal,
      # GTK allows the programmer to change only the caret location,
      # not the selection.  If the programmer changes the selection,
      # the new selection is lost.  The fix is to detect a selection
      # change and set it after the insert-text signal has completed.
      @fix_start = @fix_end = -1
      OS.g_signal_handlers_block_matched(im_context_, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, COMMIT)
      id = OS.g_signal_lookup(OS.attr_commit, OS.gtk_im_context_get_type)
      mask = OS::G_SIGNAL_MATCH_DATA | OS::G_SIGNAL_MATCH_ID
      OS.g_signal_handlers_unblock_matched(im_context_, mask, id, 0, 0, 0, self.attr_handle)
      if ((new_chars).equal?(chars))
        OS.g_signal_emit_by_name(im_context_, OS.attr_commit, text)
      else
        buffer = Converter.wcs_to_mbcs(nil, new_chars, true)
        OS.g_signal_emit_by_name(im_context_, OS.attr_commit, buffer)
      end
      OS.g_signal_handlers_unblock_matched(im_context_, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, COMMIT)
      OS.g_signal_handlers_block_matched(im_context_, mask, id, 0, 0, 0, self.attr_handle)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        if (!(@fix_start).equal?(-1) && !(@fix_end).equal?(-1))
          OS.gtk_editable_set_position(self.attr_handle, @fix_start)
          OS.gtk_editable_select_region(self.attr_handle, @fix_start, @fix_end)
        end
      end
      @fix_start = @fix_end = -1
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def gtk_delete_range(widget, iter1, iter2)
      if (!hooks(SWT::Verify) && !filters(SWT::Verify))
        return 0
      end
      start_iter = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
      end_iter = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
      OS.memmove___org_eclipse_swt_widgets_text_15(start_iter, iter1, start_iter.attr_length)
      OS.memmove___org_eclipse_swt_widgets_text_17(end_iter, iter2, end_iter.attr_length)
      start = OS.gtk_text_iter_get_offset(start_iter)
      end_ = OS.gtk_text_iter_get_offset(end_iter)
      new_text = verify_text("", start, end_)
      if ((new_text).nil?)
        # Remember the selection when the text was deleted
        OS.gtk_text_buffer_get_selection_bounds(@buffer_handle, start_iter, end_iter)
        start = OS.gtk_text_iter_get_offset(start_iter)
        end_ = OS.gtk_text_iter_get_offset(end_iter)
        if (!(start).equal?(end_))
          @fix_start = start
          @fix_end = end_
        end
        OS.g_signal_stop_emission_by_name(@buffer_handle, OS.attr_delete_range)
      else
        if (new_text.length > 0)
          buffer = Converter.wcs_to_mbcs(nil, new_text, false)
          OS.g_signal_handlers_block_matched(@buffer_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
          OS.g_signal_handlers_block_matched(@buffer_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, DELETE_RANGE)
          OS.gtk_text_buffer_delete(@buffer_handle, start_iter, end_iter)
          OS.g_signal_handlers_unblock_matched(@buffer_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, DELETE_RANGE)
          OS.g_signal_handlers_unblock_matched(@buffer_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
          OS.g_signal_handlers_block_matched(@buffer_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, TEXT_BUFFER_INSERT_TEXT)
          OS.gtk_text_buffer_insert(@buffer_handle, start_iter, buffer, buffer.attr_length)
          OS.g_signal_handlers_unblock_matched(@buffer_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, TEXT_BUFFER_INSERT_TEXT)
          OS.g_signal_stop_emission_by_name(@buffer_handle, OS.attr_delete_range)
        end
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def gtk_delete_text(widget, start_pos, end_pos)
      if (!hooks(SWT::Verify) && !filters(SWT::Verify))
        return 0
      end
      # 64
      # 64
      new_text = verify_text("", RJava.cast_to_int(start_pos), RJava.cast_to_int(end_pos))
      if ((new_text).nil?)
        # Remember the selection when the text was deleted
        new_start = Array.typed(::Java::Int).new(1) { 0 }
        new_end = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_editable_get_selection_bounds(self.attr_handle, new_start, new_end)
        if (!(new_start[0]).equal?(new_end[0]))
          @fix_start = new_start[0]
          @fix_end = new_end[0]
        end
        OS.g_signal_stop_emission_by_name(self.attr_handle, OS.attr_delete_text)
      else
        if (new_text.length > 0)
          pos = Array.typed(::Java::Int).new(1) { 0 }
          # 64
          pos[0] = RJava.cast_to_int(end_pos)
          buffer = Converter.wcs_to_mbcs(nil, new_text, false)
          OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
          OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, INSERT_TEXT)
          OS.gtk_editable_insert_text(self.attr_handle, buffer, buffer.attr_length, pos)
          OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, INSERT_TEXT)
          OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
          OS.gtk_editable_set_position(self.attr_handle, pos[0])
        end
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_event_after(widget, gdk_event)
      if (!(self.attr_cursor).nil?)
        set_cursor(self.attr_cursor.attr_handle)
      end
      # Feature in GTK.  The gtk-entry-select-on-focus property is a global
      # setting.  Return it to its default value after the GtkEntry has done
      # its focus in processing so that other widgets (such as the combo)
      # use the correct value.
      if (!((self.attr_style & SWT::SINGLE)).equal?(0) && self.attr_display.attr_entry_select_on_focus)
        event = GdkEvent.new
        OS.memmove___org_eclipse_swt_widgets_text_19(event, gdk_event, GdkEvent.attr_sizeof)
        case (event.attr_type)
        when OS::GDK_FOCUS_CHANGE
          gdk_event_focus = GdkEventFocus.new
          OS.memmove___org_eclipse_swt_widgets_text_21(gdk_event_focus, gdk_event, GdkEventFocus.attr_sizeof)
          if ((gdk_event_focus.attr_in).equal?(0))
            # long
            settings = OS.gtk_settings_get_default
            OS.g_object_set(settings, OS.attr_gtk_entry_select_on_focus, true, 0)
          end
        end
      end
      return super(widget, gdk_event)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_expose_event(widget, event)
      if (!((self.attr_state & OBSCURED)).equal?(0))
        return 0
      end
      # long
      result = super(widget, event)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0) && @message.length > 0)
        # long
        str = OS.gtk_entry_get_text(self.attr_handle)
        if (!OS._gtk_widget_has_focus(self.attr_handle) && (OS.strlen(str)).equal?(0))
          gdk_event = GdkEventExpose.new
          OS.memmove___org_eclipse_swt_widgets_text_23(gdk_event, event, GdkEventExpose.attr_sizeof)
          # long
          window = paint_window
          w = Array.typed(::Java::Int).new(1) { 0 }
          h = Array.typed(::Java::Int).new(1) { 0 }
          OS.gdk_drawable_get_size(window, w, h)
          inner_border = Display.get_entry_inner_border(self.attr_handle)
          width = w[0] - inner_border.attr_left - inner_border.attr_right
          height = h[0] - inner_border.attr_top - inner_border.attr_bottom
          # long
          context = OS.gtk_widget_get_pango_context(self.attr_handle)
          # long
          lang = OS.pango_context_get_language(context)
          # long
          metrics = OS.pango_context_get_metrics(context, get_font_description, lang)
          ascent = OS._pango_pixels(OS.pango_font_metrics_get_ascent(metrics))
          descent = OS._pango_pixels(OS.pango_font_metrics_get_descent(metrics))
          OS.pango_font_metrics_unref(metrics)
          buffer = Converter.wcs_to_mbcs(nil, @message, true)
          # long
          layout = OS.gtk_widget_create_pango_layout(self.attr_handle, buffer)
          # long
          line = OS.pango_layout_get_line(layout, 0)
          rect = PangoRectangle.new
          OS.pango_layout_line_get_extents(line, nil, rect)
          rect.attr_y = OS._pango_pixels(rect.attr_y)
          rect.attr_height = OS._pango_pixels(rect.attr_height)
          rect.attr_width = OS._pango_pixels(rect.attr_width)
          y = (height - ascent - descent) / 2 + ascent + rect.attr_y
          if (rect.attr_height > height)
            y = (height - rect.attr_height) / 2
          else
            if (y < 0)
              y = 0
            else
              if (y + rect.attr_height > height)
                y = height - rect.attr_height
              end
            end
          end
          y += inner_border.attr_top
          x = inner_border.attr_left
          rtl = !((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0)
          alignment = self.attr_style & (SWT::LEFT | SWT::CENTER | SWT::RIGHT)
          case (alignment)
          when SWT::LEFT
            x = rtl ? width - rect.attr_width : inner_border.attr_left
          when SWT::CENTER
            x = (width - rect.attr_width) / 2
          when SWT::RIGHT
            x = rtl ? inner_border.attr_left : width - rect.attr_width
          end
          # long
          gc = OS.gdk_gc_new(window)
          # long
          style = OS.gtk_widget_get_style(self.attr_handle)
          text_color = GdkColor.new
          OS.gtk_style_get_text(style, OS::GTK_STATE_INSENSITIVE, text_color)
          base_color = GdkColor.new
          OS.gtk_style_get_base(style, OS::GTK_STATE_NORMAL, base_color)
          OS.gdk_draw_layout_with_colors(window, gc, x, y, layout, text_color, base_color)
          OS.g_object_unref(gc)
          OS.g_object_unref(layout)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_focus_out_event(widget, event)
      fix_im
      return super(widget, event)
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_grab_focus(widget)
      # long
      result = super(widget)
      # Feature in GTK.  GtkEntry widgets select their text on focus in,
      # clearing the previous selection.  This behavior is controlled by
      # the gtk-entry-select-on-focus property.  The fix is to disable
      # this property when a GtkEntry is given focus and restore it after
      # the entry has done focus in processing.
      if (!((self.attr_style & SWT::SINGLE)).equal?(0) && self.attr_display.attr_entry_select_on_focus)
        # long
        settings = OS.gtk_settings_get_default
        OS.g_object_set(settings, OS.attr_gtk_entry_select_on_focus, false, 0)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def gtk_insert_text(widget, new_text, new_text_length, position)
      if (!hooks(SWT::Verify) && !filters(SWT::Verify))
        return 0
      end
      if ((new_text).equal?(0) || (new_text_length).equal?(0))
        return 0
      end
      # 64
      buffer = Array.typed(::Java::Byte).new(RJava.cast_to_int(new_text_length)) { 0 }
      OS.memmove___org_eclipse_swt_widgets_text_25(buffer, new_text, buffer.attr_length)
      old_text = String.new(Converter.mbcs_to_wcs(nil, buffer))
      pos = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove___org_eclipse_swt_widgets_text_27(pos, position, 4)
      if ((pos[0]).equal?(-1))
        # long
        ptr = OS.gtk_entry_get_text(self.attr_handle)
        # 64
        pos[0] = RJava.cast_to_int(OS.g_utf8_strlen(ptr, -1))
      end
      # Use the selection when the text was deleted
      start = pos[0]
      end_ = pos[0]
      if (!(@fix_start).equal?(-1) && !(@fix_end).equal?(-1))
        start = pos[0] = @fix_start
        end_ = @fix_end
        @fix_start = @fix_end = -1
      end
      new_text_ = verify_text(old_text, start, end_)
      if (!(new_text_).equal?(old_text))
        new_start = Array.typed(::Java::Int).new(1) { 0 }
        new_end = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_editable_get_selection_bounds(self.attr_handle, new_start, new_end)
        if (!(new_text_).nil?)
          if (!(new_start[0]).equal?(new_end[0]))
            OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, DELETE_TEXT)
            OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
            OS.gtk_editable_delete_selection(self.attr_handle)
            OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, DELETE_TEXT)
            OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
          end
          buffer3 = Converter.wcs_to_mbcs(nil, new_text_, false)
          OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, INSERT_TEXT)
          OS.gtk_editable_insert_text(self.attr_handle, buffer3, buffer3.attr_length, pos)
          OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, INSERT_TEXT)
          new_start[0] = new_end[0] = pos[0]
        end
        pos[0] = new_end[0]
        if (!(new_start[0]).equal?(new_end[0]))
          @fix_start = new_start[0]
          @fix_end = new_end[0]
        end
        OS.memmove___org_eclipse_swt_widgets_text_29(position, pos, 4)
        OS.g_signal_stop_emission_by_name(self.attr_handle, OS.attr_insert_text)
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_key_press_event(widget, event)
      # long
      result = super(widget, event)
      if (!(result).equal?(0))
        fix_im
      end
      if ((@gdk_event_key).equal?(-1))
        result = 1
      end
      @gdk_event_key = 0
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_populate_popup(widget, menu)
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        OS.gtk_widget_set_direction(menu, OS::GTK_TEXT_DIR_RTL)
        OS.gtk_container_forall(menu, self.attr_display.attr_set_direction_proc, OS::GTK_TEXT_DIR_RTL)
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def gtk_text_buffer_insert_text(widget, iter, text, length_)
      if (!hooks(SWT::Verify) && !filters(SWT::Verify))
        return 0
      end
      position = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
      OS.memmove___org_eclipse_swt_widgets_text_31(position, iter, position.attr_length)
      # Use the selection when the text was deleted
      start = OS.gtk_text_iter_get_offset(position)
      end_ = start
      if (!(@fix_start).equal?(-1) && !(@fix_end).equal?(-1))
        start = @fix_start
        end_ = @fix_end
        @fix_start = @fix_end = -1
      end
      # 64
      buffer = Array.typed(::Java::Byte).new(RJava.cast_to_int(length_)) { 0 }
      OS.memmove___org_eclipse_swt_widgets_text_33(buffer, text, buffer.attr_length)
      old_text = String.new(Converter.mbcs_to_wcs(nil, buffer))
      new_text = verify_text(old_text, start, end_)
      if ((new_text).nil?)
        OS.g_signal_stop_emission_by_name(@buffer_handle, OS.attr_insert_text)
      else
        if (!(new_text).equal?(old_text))
          buffer1 = Converter.wcs_to_mbcs(nil, new_text, false)
          OS.g_signal_handlers_block_matched(@buffer_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, TEXT_BUFFER_INSERT_TEXT)
          OS.gtk_text_buffer_insert(@buffer_handle, iter, buffer1, buffer1.attr_length)
          OS.g_signal_handlers_unblock_matched(@buffer_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, TEXT_BUFFER_INSERT_TEXT)
          OS.g_signal_stop_emission_by_name(@buffer_handle, OS.attr_insert_text)
        end
      end
      return 0
    end
    
    typesig { [] }
    def hook_events
      super
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        OS.g_signal_connect_closure(self.attr_handle, OS.attr_changed, self.attr_display.attr_closures[CHANGED], true)
        OS.g_signal_connect_closure(self.attr_handle, OS.attr_insert_text, self.attr_display.attr_closures[INSERT_TEXT], false)
        OS.g_signal_connect_closure(self.attr_handle, OS.attr_delete_text, self.attr_display.attr_closures[DELETE_TEXT], false)
        OS.g_signal_connect_closure(self.attr_handle, OS.attr_activate, self.attr_display.attr_closures[ACTIVATE], false)
        OS.g_signal_connect_closure(self.attr_handle, OS.attr_grab_focus, self.attr_display.attr_closures[GRAB_FOCUS], false)
        OS.g_signal_connect_closure(self.attr_handle, OS.attr_populate_popup, self.attr_display.attr_closures[POPULATE_POPUP], false)
      else
        OS.g_signal_connect_closure(@buffer_handle, OS.attr_changed, self.attr_display.attr_closures[CHANGED], false)
        OS.g_signal_connect_closure(@buffer_handle, OS.attr_insert_text, self.attr_display.attr_closures[TEXT_BUFFER_INSERT_TEXT], false)
        OS.g_signal_connect_closure(@buffer_handle, OS.attr_delete_range, self.attr_display.attr_closures[DELETE_RANGE], false)
        OS.g_signal_connect_closure(self.attr_handle, OS.attr_populate_popup, self.attr_display.attr_closures[POPULATE_POPUP], false)
      end
      # long
      im_context_ = im_context
      if (!(im_context_).equal?(0))
        OS.g_signal_connect_closure(im_context_, OS.attr_commit, self.attr_display.attr_closures[COMMIT], false)
        id = OS.g_signal_lookup(OS.attr_commit, OS.gtk_im_context_get_type)
        mask = OS::G_SIGNAL_MATCH_DATA | OS::G_SIGNAL_MATCH_ID
        OS.g_signal_handlers_block_matched(im_context_, mask, id, 0, 0, 0, self.attr_handle)
      end
    end
    
    typesig { [] }
    # long
    def im_context
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return OS.gtk_editable_get_editable(self.attr_handle) ? OS._gtk_entry_im_context(self.attr_handle) : 0
      end
      return OS._gtk_textview_im_context(self.attr_handle)
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
    def insert(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      buffer = Converter.wcs_to_mbcs(nil, string, false)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        start = Array.typed(::Java::Int).new(1) { 0 }
        end_ = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_editable_get_selection_bounds(self.attr_handle, start, end_)
        OS.gtk_editable_delete_selection(self.attr_handle)
        OS.gtk_editable_insert_text(self.attr_handle, buffer, buffer.attr_length, start)
        OS.gtk_editable_set_position(self.attr_handle, start[0])
      else
        start = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
        end_ = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
        if (OS.gtk_text_buffer_get_selection_bounds(@buffer_handle, start, end_))
          OS.gtk_text_buffer_delete(@buffer_handle, start, end_)
        end
        OS.gtk_text_buffer_insert(@buffer_handle, start, buffer, buffer.attr_length)
        OS.gtk_text_buffer_place_cursor(@buffer_handle, start)
        # long
        mark = OS.gtk_text_buffer_get_insert(@buffer_handle)
        OS.gtk_text_view_scroll_mark_onscreen(self.attr_handle, mark)
      end
    end
    
    typesig { [] }
    # long
    def paint_window
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # long
        window = super
        # long
        children = OS.gdk_window_get_children(window)
        if (!(children).equal?(0))
          window = OS.g_list_data(children)
        end
        OS.g_list_free(children)
        return window
      end
      OS.gtk_widget_realize(self.attr_handle)
      return OS.gtk_text_view_get_window(self.attr_handle, OS::GTK_TEXT_WINDOW_TEXT)
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
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        OS.gtk_editable_paste_clipboard(self.attr_handle)
      else
        # long
        clipboard = OS.gtk_clipboard_get(OS::GDK_NONE)
        OS.gtk_text_buffer_paste_clipboard(@buffer_handle, clipboard, nil, OS.gtk_text_view_get_editable(self.attr_handle))
      end
    end
    
    typesig { [] }
    def register
      super
      if (!(@buffer_handle).equal?(0))
        self.attr_display.add_widget(@buffer_handle, self)
      end
      # long
      im_context_ = im_context
      if (!(im_context_).equal?(0))
        self.attr_display.add_widget(im_context_, self)
      end
    end
    
    typesig { [] }
    def release_widget
      super
      fix_im
      if (OS::GTK_VERSION < OS._version(2, 6, 0))
        # Bug in GTK.  Any text copied into the clipboard will be lost when
        # the GtkTextView is destroyed.  The fix is to paste the contents as
        # the widget is being destroyed to reference the text buffer, keeping
        # it around until ownership of the clipboard is lost.
        if (!((self.attr_style & SWT::MULTI)).equal?(0))
          # long
          clipboard = OS.gtk_clipboard_get(OS::GDK_NONE)
          OS.gtk_text_buffer_paste_clipboard(@buffer_handle, clipboard, nil, OS.gtk_text_view_get_editable(self.attr_handle))
        end
      end
      @message = RJava.cast_to_string(nil)
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
        OS.gtk_editable_select_region(self.attr_handle, 0, -1)
      else
        start = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
        end_ = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
        OS.gtk_text_buffer_get_iter_at_offset(@buffer_handle, start, 0)
        OS.gtk_text_buffer_get_end_iter(@buffer_handle, end_)
        # long
        insert_mark = OS.gtk_text_buffer_get_insert(@buffer_handle)
        # long
        selection_mark = OS.gtk_text_buffer_get_selection_bound(@buffer_handle)
        OS.gtk_text_buffer_move_mark(@buffer_handle, selection_mark, start)
        OS.gtk_text_buffer_move_mark(@buffer_handle, insert_mark, end_)
      end
    end
    
    typesig { [GdkColor] }
    def set_background_color(color)
      super(color)
      OS.gtk_widget_modify_base(self.attr_handle, 0, color)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_cursor(cursor)
      # long
      default_cursor = 0
      if ((cursor).equal?(0))
        default_cursor = OS.gdk_cursor_new(OS::GDK_XTERM)
      end
      super(!(cursor).equal?(0) ? cursor : default_cursor)
      if ((cursor).equal?(0))
        OS.gdk_cursor_destroy(default_cursor)
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
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        OS.gtk_entry_set_visibility(self.attr_handle, (echo).equal?(Character.new(?\0.ord)))
        OS.gtk_entry_set_invisible_char(self.attr_handle, echo)
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
    def set_editable(editable)
      check_widget
      self.attr_style &= ~SWT::READ_ONLY
      if (!editable)
        self.attr_style |= SWT::READ_ONLY
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        OS.gtk_editable_set_editable(self.attr_handle, editable)
      else
        OS.gtk_text_view_set_editable(self.attr_handle, editable)
      end
    end
    
    typesig { [::Java::Int] }
    # long
    def set_font_description(font)
      super(font)
      set_tab_stops(@tabs)
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
      redraw(false)
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
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        OS.gtk_editable_set_position(self.attr_handle, start)
      else
        position = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
        OS.gtk_text_buffer_get_iter_at_offset(@buffer_handle, position, start)
        OS.gtk_text_buffer_place_cursor(@buffer_handle, position)
        # long
        mark = OS.gtk_text_buffer_get_insert(@buffer_handle)
        OS.gtk_text_view_scroll_mark_onscreen(self.attr_handle, mark)
      end
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
        OS.gtk_editable_set_position(self.attr_handle, start)
        OS.gtk_editable_select_region(self.attr_handle, start, end_)
      else
        start_iter = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
        end_iter = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
        OS.gtk_text_buffer_get_iter_at_offset(@buffer_handle, start_iter, start)
        OS.gtk_text_buffer_get_iter_at_offset(@buffer_handle, end_iter, end_)
        # long
        insert_mark = OS.gtk_text_buffer_get_insert(@buffer_handle)
        # long
        selection_mark = OS.gtk_text_buffer_get_selection_bound(@buffer_handle)
        OS.gtk_text_buffer_move_mark(@buffer_handle, selection_mark, start_iter)
        OS.gtk_text_buffer_move_mark(@buffer_handle, insert_mark, end_iter)
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
      if (tabs < 0)
        return
      end
      set_tab_stops(@tabs = tabs)
    end
    
    typesig { [::Java::Int] }
    def set_tab_stops(tabs)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return
      end
      tab_width = get_tab_width(tabs)
      # long
      tab_array = OS.pango_tab_array_new(1, false)
      OS.pango_tab_array_set_tab(tab_array, 0, OS::PANGO_TAB_LEFT, tab_width)
      OS.gtk_text_view_set_tabs(self.attr_handle, tab_array)
      OS.pango_tab_array_free(tab_array)
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
    def set_text(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      # Feature in gtk.  When text is set in gtk, separate events are fired for the deletion and
      # insertion of the text.  This is not wrong, but is inconsistent with other platforms.  The
      # fix is to block the firing of these events and fire them ourselves in a consistent manner.
      if (hooks(SWT::Verify) || filters(SWT::Verify))
        string = RJava.cast_to_string(verify_text(string, 0, get_char_count))
        if ((string).nil?)
          return
        end
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        buffer = Converter.wcs_to_mbcs(nil, string, true)
        OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
        OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, DELETE_TEXT)
        OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, INSERT_TEXT)
        OS.gtk_entry_set_text(self.attr_handle, buffer)
        OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
        OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, DELETE_TEXT)
        OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, INSERT_TEXT)
      else
        buffer = Converter.wcs_to_mbcs(nil, string, false)
        position = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
        OS.g_signal_handlers_block_matched(@buffer_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
        OS.g_signal_handlers_block_matched(@buffer_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, DELETE_RANGE)
        OS.g_signal_handlers_block_matched(@buffer_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, TEXT_BUFFER_INSERT_TEXT)
        OS.gtk_text_buffer_set_text(@buffer_handle, buffer, buffer.attr_length)
        OS.g_signal_handlers_unblock_matched(@buffer_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
        OS.g_signal_handlers_unblock_matched(@buffer_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, DELETE_RANGE)
        OS.g_signal_handlers_unblock_matched(@buffer_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, TEXT_BUFFER_INSERT_TEXT)
        OS.gtk_text_buffer_get_iter_at_offset(@buffer_handle, position, 0)
        OS.gtk_text_buffer_place_cursor(@buffer_handle, position)
        # long
        mark = OS.gtk_text_buffer_get_insert(@buffer_handle)
        OS.gtk_text_view_scroll_mark_onscreen(self.attr_handle, mark)
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
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        OS.gtk_entry_set_max_length(self.attr_handle, limit)
      end
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
      position = Array.typed(::Java::Byte).new(ITER_SIZEOF) { 0 }
      OS.gtk_text_buffer_get_iter_at_line(@buffer_handle, position, index)
      OS.gtk_text_view_scroll_to_iter(self.attr_handle, position, 0, true, 0, 0)
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
        return
      end
      # long
      mark = OS.gtk_text_buffer_get_selection_bound(@buffer_handle)
      OS.gtk_text_view_scroll_mark_onscreen(self.attr_handle, mark)
      mark = OS.gtk_text_buffer_get_insert(@buffer_handle)
      OS.gtk_text_view_scroll_mark_onscreen(self.attr_handle, mark)
    end
    
    typesig { [GdkEventKey] }
    def translate_traversal(key_event)
      key = key_event.attr_keyval
      case (key)
      when OS::GDK_KP_Enter, OS::GDK_Return
        # long
        im_context_ = im_context
        if (!(im_context_).equal?(0))
          # long
          # long
          preedit_string = Array.typed(::Java::Int).new(1) { 0 }
          OS.gtk_im_context_get_preedit_string(im_context_, preedit_string, nil, nil)
          if (!(preedit_string[0]).equal?(0))
            length_ = OS.strlen(preedit_string[0])
            OS.g_free(preedit_string[0])
            if (!(length_).equal?(0))
              return false
            end
          end
        end
      end
      return super(key_event)
    end
    
    typesig { [::Java::Int, GdkEventKey] }
    def traversal_code(key, event)
      bits = super(key, event)
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return bits
      end
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        bits &= ~SWT::TRAVERSE_RETURN
        if ((key).equal?(OS::GDK_Tab) && !(event).nil?)
          next_ = ((event.attr_state & OS::GDK_SHIFT_MASK)).equal?(0)
          if (next_ && ((event.attr_state & OS::GDK_CONTROL_MASK)).equal?(0))
            bits &= ~(SWT::TRAVERSE_TAB_NEXT | SWT::TRAVERSE_TAB_PREVIOUS)
          end
        end
      end
      return bits
    end
    
    typesig { [String, ::Java::Int, ::Java::Int] }
    def verify_text(string, start, end_)
      if ((string.length).equal?(0) && (start).equal?(end_))
        return nil
      end
      event = Event.new
      event.attr_text = string
      event.attr_start = start
      event.attr_end = end_
      # long
      event_ptr = OS.gtk_get_current_event
      if (!(event_ptr).equal?(0))
        gdk_event = GdkEventKey.new
        OS.memmove___org_eclipse_swt_widgets_text_35(gdk_event, event_ptr, GdkEventKey.attr_sizeof)
        case (gdk_event.attr_type)
        when OS::GDK_KEY_PRESS
          set_key_state(event, gdk_event)
        end
        OS.gdk_event_free(event_ptr)
      end
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
