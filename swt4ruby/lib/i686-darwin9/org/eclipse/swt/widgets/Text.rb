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
  module TextImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HILayoutInfo
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HISideBinding
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HIThemeFrameDrawInfo
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :RGBColor
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :ControlEditTextSelectionRec
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :ControlFontStyleRec
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CFRange
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :TXNTab
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGPoint
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
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
  # <dd>CANCEL, CENTER, LEFT, MULTI, PASSWORD, SEARCH, SINGLE, RIGHT, READ_ONLY, WRAP</dd>
  # <dt><b>Events:</b></dt>
  # <dd>DefaultSelection, Modify, Verify</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles MULTI and SINGLE may be specified,
  # and only one of the styles LEFT, CENTER, and RIGHT may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#text">Text snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Text < TextImports.const_get :Scrollable
    include_class_members TextImports
    
    attr_accessor :txn_object
    alias_method :attr_txn_object, :txn_object
    undef_method :txn_object
    alias_method :attr_txn_object=, :txn_object=
    undef_method :txn_object=
    
    attr_accessor :frame_handle
    alias_method :attr_frame_handle, :frame_handle
    undef_method :frame_handle
    alias_method :attr_frame_handle=, :frame_handle=
    undef_method :frame_handle=
    
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
    
    attr_accessor :selection
    alias_method :attr_selection, :selection
    undef_method :selection
    alias_method :attr_selection=, :selection=
    undef_method :selection=
    
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
      
      const_set_lazy(:AX_ATTRIBUTES) { Array.typed(String).new([OS.attr_k_axtitle_attribute, OS.attr_k_axvalue_attribute, OS.attr_k_axnumber_of_characters_attribute, OS.attr_k_axselected_text_attribute, OS.attr_k_axselected_text_range_attribute, OS.attr_k_axstring_for_range_parameterized_attribute, ]) }
      const_attr_reader  :AX_ATTRIBUTES
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
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @txn_object = 0
      @frame_handle = 0
      @text_limit = 0
      @tabs = 0
      @selection = nil
      @echo_character = 0
      @double_click = false
      @hidden_text = nil
      @message = nil
      super(parent, check_style(style))
      @text_limit = LIMIT
      @tabs = 8
      if (!((style & SWT::SEARCH)).equal?(0))
        in_attributes_to_set = !((style & SWT::CANCEL)).equal?(0) ? OS.attr_k_hisearch_field_attributes_cancel : 0
        OS._hisearch_field_change_attributes(self.attr_handle, in_attributes_to_set, 0)
        # Ensure that SWT.CANCEL is set.
        # NOTE: CANCEL has the same value as H_SCROLL so it is
        # necessary to first clear these bits to avoid a scroll
        # bar and then reset the bit using the original style
        # supplied by the programmer.
        if (!((style & SWT::CANCEL)).equal?(0))
          self.attr_style |= SWT::CANCEL
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
        string = (verify_text(string, char_count, char_count, nil)).to_s
        if ((string).nil?)
          return
        end
      end
      if ((@txn_object).equal?(0))
        set_selection(get_char_count)
        insert_edit_text(string)
      else
        set_txntext(OS.attr_k_txnend_offset, OS.attr_k_txnend_offset, string)
        OS._txnset_selection(@txn_object, OS.attr_k_txnend_offset, OS.attr_k_txnend_offset)
        OS._txnshow_selection(@txn_object, false)
      end
      if (!(string.length).equal?(0))
        send_modify_event(true)
      end
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        if (!((style & SWT::SEARCH)).equal?(0))
          style |= SWT::SINGLE | SWT::BORDER
          style &= ~SWT::PASSWORD
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def call_paint_event_handler(control, damage_rgn, visible_rgn, the_event, next_handler)
      result = super(control, damage_rgn, visible_rgn, the_event, next_handler)
      if ((@frame_handle).equal?(control))
        context = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_cgcontext_ref, OS.attr_type_cgcontext_ref, nil, 4, nil, context)
        OS._cgcontext_save_gstate(context[0])
        out_metric = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_theme_metric(OS.attr_k_theme_metric_focus_rect_outset, out_metric)
        rect = CGRect.new
        OS._hiview_get_bounds(@frame_handle, rect)
        rect.attr_x += out_metric[0]
        rect.attr_y += out_metric[0]
        rect.attr_width -= out_metric[0] * 2
        rect.attr_height -= out_metric[0] * 2
        state = 0
        if (OS._is_control_enabled(control))
          state = OS._is_control_active(control) ? OS.attr_k_theme_state_active : OS.attr_k_theme_state_inactive
        else
          state = OS._is_control_active(control) ? OS.attr_k_theme_state_unavailable : OS.attr_k_theme_state_unavailable_inactive
        end
        info = HIThemeFrameDrawInfo.new
        info.attr_state = state
        info.attr_is_focused = has_focus
        info.attr_kind = OS.attr_k_hitheme_frame_text_field_square
        OS._hitheme_draw_frame(rect, info, context[0], OS.attr_k_hitheme_orientation_normal)
        if (((self.attr_style & (SWT::H_SCROLL | SWT::V_SCROLL))).equal?((SWT::V_SCROLL | SWT::H_SCROLL)))
          OS._hiview_get_bounds(@frame_handle, rect)
          rect.attr_x = rect.attr_width - out_metric[0]
          rect.attr_y = rect.attr_height - out_metric[0]
          OS._get_theme_metric(OS.attr_k_theme_metric_edit_text_frame_outset, out_metric)
          rect.attr_x -= out_metric[0]
          rect.attr_y -= out_metric[0]
          OS._get_theme_metric(OS.attr_k_theme_metric_scroll_bar_width, out_metric)
          rect.attr_x -= out_metric[0]
          rect.attr_y -= out_metric[0]
          rect.attr_width = rect.attr_height = out_metric[0]
          OS._cgcontext_set_fill_color(context[0], Array.typed(::Java::Float).new([1, 1, 1, 1]))
          OS._cgcontext_fill_rect(context[0], rect)
        end
        OS._cgcontext_restore_gstate(context[0])
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def call_focus_event_handler(next_handler, the_event)
      part = Array.typed(::Java::Short).new(1) { 0 }
      if ((@txn_object).equal?(0))
        OS._get_event_parameter(the_event, OS.attr_k_event_param_control_part, OS.attr_type_control_part_code, nil, 2, nil, part)
        if ((part[0]).equal?(OS.attr_k_control_focus_no_part))
          @selection = ControlEditTextSelectionRec.new
          OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_selection_tag, 4, @selection, nil)
        end
      end
      result = super(next_handler, the_event)
      if (is_disposed)
        return result
      end
      if (!(@frame_handle).equal?(0))
        OS._hiview_set_needs_display(@frame_handle, true)
      end
      if ((@txn_object).equal?(0))
        if (!(part[0]).equal?(OS.attr_k_control_focus_no_part) && !(@selection).nil?)
          OS._set_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_selection_tag, 4, @selection)
          @selection = nil
        end
      end
      return result
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
      if ((@txn_object).equal?(0))
        selection = get_selection
        set_selection(selection.attr_x)
      else
        o_start_offset = Array.typed(::Java::Int).new(1) { 0 }
        o_end_offset = Array.typed(::Java::Int).new(1) { 0 }
        OS._txnget_selection(@txn_object, o_start_offset, o_end_offset)
        OS._txnset_selection(@txn_object, o_start_offset[0], o_start_offset[0])
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = 0
      height = 0
      if ((@txn_object).equal?(0))
        if (!((self.attr_style & SWT::SEARCH)).equal?(0))
          ptr1 = Array.typed(::Java::Int).new(1) { 0 }
          OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_cfstring_tag, 4, ptr1, nil)
          size1 = text_extent(ptr1[0], 0)
          if (!(ptr1[0]).equal?(0))
            OS._cfrelease(ptr1[0])
          end
          width = size1.attr_x
          height = size1.attr_y
          metric = Array.typed(::Java::Int).new(1) { 0 }
          OS._get_theme_metric(OS.attr_k_theme_metric_edit_text_whitespace, metric)
          height += metric[0] * 2
          OS._get_theme_metric(OS.attr_k_theme_metric_edit_text_frame_outset, metric)
          height += metric[0] * 2
          # This code is intentionally commented
          # int [] ptr2 = new int [1];
          # OS.HISearchFieldCopyDescriptiveText (handle, ptr2);
          # Point size2 = textExtent (ptr2 [0], 0);
          # width = Math.max (width, size2.x);
          # if (ptr2 [0] != 0) OS.CFRelease (ptr2 [0]);
        else
          if (!((self.attr_style & SWT::RIGHT)).equal?(0))
            OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_edit_text_single_line_tag, 1, Array.typed(::Java::Byte).new([1]))
          end
          rect = Rect.new
          OS._get_best_control_rect(self.attr_handle, rect, nil)
          if (!((self.attr_style & SWT::RIGHT)).equal?(0))
            OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_edit_text_single_line_tag, 1, Array.typed(::Java::Byte).new([0]))
          end
          width = rect.attr_right - rect.attr_left
          height = rect.attr_bottom - rect.attr_top
        end
      else
        o_data_handle = Array.typed(::Java::Int).new(1) { 0 }
        OS._txnget_data(@txn_object, OS.attr_k_txnstart_offset, OS.attr_k_txnend_offset, o_data_handle)
        if (!(o_data_handle[0]).equal?(0))
          length_ = OS._get_handle_size(o_data_handle[0])
          str = 0
          if (!(length_).equal?(0))
            ptr = Array.typed(::Java::Int).new(1) { 0 }
            OS._hlock(o_data_handle[0])
            OS.memmove(ptr, o_data_handle[0], 4)
            str = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, ptr[0], length_ / 2)
            OS._hunlock(o_data_handle[0])
          end
          OS._dispose_handle(o_data_handle[0])
          size = text_extent(str, !(w_hint).equal?(SWT::DEFAULT) && !((self.attr_style & SWT::WRAP)).equal?(0) ? w_hint : 0)
          if (!(str).equal?(0))
            OS._cfrelease(str)
          end
          width = size.attr_x
          height = size.attr_y
        end
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
      trim = compute_trim(0, 0, width, height)
      width = trim.attr_width
      height = trim.attr_height
      return Point.new(width, height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      size = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_theme_metric(OS.attr_k_theme_metric_scroll_bar_width, size)
      if (!(self.attr_horizontal_bar).nil?)
        height += size[0]
      end
      if (!(self.attr_vertical_bar).nil?)
        width += size[0]
      end
      inset_ = inset
      x -= inset_.attr_left
      y -= inset_.attr_top
      width += inset_.attr_left + inset_.attr_right
      height += inset_.attr_top + inset_.attr_bottom
      if ((@txn_object).equal?(0))
        inset_ = get_inset
        x -= inset_.attr_left
        y -= inset_.attr_top
        width += inset_.attr_left + inset_.attr_right
        height += inset_.attr_top + inset_.attr_bottom
      end
      if (!((self.attr_style & SWT::SEARCH)).equal?(0))
        left = Array.typed(::Java::Int).new(1) { 0 }
        right = Array.typed(::Java::Int).new(1) { 0 }
        out_attributes = Array.typed(::Java::Int).new(1) { 0 }
        OS._hisearch_field_get_attributes(self.attr_handle, out_attributes)
        if (!((out_attributes[0] & OS.attr_k_hisearch_field_attributes_search_icon)).equal?(0))
          OS._get_theme_metric(self.attr_display.attr_small_fonts ? OS.attr_k_theme_metric_round_text_field_small_content_inset_with_icon_left : OS.attr_k_theme_metric_round_text_field_content_inset_with_icon_left, left)
        else
          OS._get_theme_metric(self.attr_display.attr_small_fonts ? OS.attr_k_theme_metric_round_text_field_small_content_inset_left : OS.attr_k_theme_metric_round_text_field_content_inset_left, left)
        end
        if (!((out_attributes[0] & OS.attr_k_hisearch_field_attributes_cancel)).equal?(0))
          OS._get_theme_metric(self.attr_display.attr_small_fonts ? OS.attr_k_theme_metric_round_text_field_small_content_inset_with_icon_right : OS.attr_k_theme_metric_round_text_field_content_inset_with_icon_right, right)
        else
          OS._get_theme_metric(self.attr_display.attr_small_fonts ? OS.attr_k_theme_metric_round_text_field_small_content_inset_right : OS.attr_k_theme_metric_round_text_field_content_inset_right, right)
        end
        width += left[0] + right[0]
      end
      return Rectangle.new(x, y, width, height)
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
      if ((@txn_object).equal?(0))
        selection = get_selection
        if ((selection.attr_x).equal?(selection.attr_y))
          return
        end
        copy_to_clipboard(get_edit_text(selection.attr_x, selection.attr_y - 1))
      else
        OS._txncopy(@txn_object)
      end
    end
    
    typesig { [] }
    def create_handle
      out_control = Array.typed(::Java::Int).new(1) { 0 }
      if (!((self.attr_style & SWT::MULTI)).equal?(0) || ((self.attr_style & (SWT::BORDER | SWT::SEARCH))).equal?(0))
        if (!((self.attr_style & (SWT::H_SCROLL | SWT::V_SCROLL))).equal?(0) || OS::VERSION >= 0x1050)
          options = 0
          if (((self.attr_style & (SWT::H_SCROLL | SWT::V_SCROLL))).equal?((SWT::H_SCROLL | SWT::V_SCROLL)))
            options |= OS.attr_k_hiscroll_view_options_allow_grow
          end
          if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
            options |= OS.attr_k_hiscroll_view_options_horiz_scroll
          end
          if (!((self.attr_style & SWT::V_SCROLL)).equal?(0))
            options |= OS.attr_k_hiscroll_view_options_vert_scroll
          end
          # Bug in the Macintosh.  HIScrollViewCreate() fails if no scroll bit is
          # specified. In order to get horizontal scrolling in a single line text, a
          # scroll view is created with the vertical bit set and the scroll bars
          # are set to auto hide.  But calling HIScrollViewSetScrollBarAutoHide()
          # before the view has been resized still leaves space for the vertical
          # scroll bar.  The fix is to call HIScrollViewSetScrollBarAutoHide()
          # once the widget has been resized.
          if ((options).equal?(0))
            options |= OS.attr_k_hiscroll_view_options_vert_scroll
          end
          OS._hiscroll_view_create(options, out_control)
          if ((out_control[0]).equal?(0))
            error(SWT::ERROR_NO_HANDLES)
          end
          self.attr_scrolled_handle = out_control[0]
          OS._hiview_set_visible(self.attr_scrolled_handle, true)
        end
        i_frame_options = OS.attr_k_txndont_draw_caret_when_inactive_mask | OS.attr_k_txnmonostyled_text_mask
        # Bug in the Macintosh.  For some reason a single line text does not
        # display properly when it is right aligned.  The fix is to use a
        # multi line text when right aligned.
        if (((self.attr_style & SWT::RIGHT)).equal?(0))
          if (!((self.attr_style & SWT::SINGLE)).equal?(0))
            i_frame_options |= OS.attr_k_txnsingle_line_only_mask
          end
        end
        if (!((self.attr_style & SWT::WRAP)).equal?(0))
          i_frame_options |= OS.attr_k_txnalways_wrap_at_view_edge_mask
        end
        OS._hitext_view_create(nil, 0, i_frame_options, out_control)
        if ((out_control[0]).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        self.attr_handle = out_control[0]
        OS._hiview_set_visible(self.attr_handle, true)
        if (!((self.attr_style & SWT::MULTI)).equal?(0) && !((self.attr_style & SWT::BORDER)).equal?(0))
          features = OS.attr_k_control_supports_embedding
          OS._create_user_pane_control(0, nil, features, out_control)
          if ((out_control[0]).equal?(0))
            error(SWT::ERROR_NO_HANDLES)
          end
          @frame_handle = out_control[0]
        end
        @txn_object = OS._hitext_view_get_txnobject(self.attr_handle)
        ptr = OS._new_ptr(Rect.attr_sizeof)
        rect = !((self.attr_style & SWT::SINGLE)).equal?(0) ? inset : Rect.new
        OS.memmove(ptr, rect, Rect.attr_sizeof)
        tags = Array.typed(::Java::Int).new([OS.attr_k_txndisable_drag_and_drop_tag, OS.attr_k_txndo_font_substitution, OS.attr_k_txnioprivileges_tag, OS.attr_k_txnmargins_tag, OS.attr_k_txnjustification_tag, ])
        just = OS.attr_k_txnflush_left
        if (!((self.attr_style & SWT::CENTER)).equal?(0))
          just = OS.attr_k_txncenter
        end
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          just = OS.attr_k_txnflush_right
        end
        datas = Array.typed(::Java::Int).new([1, 1, !((self.attr_style & SWT::READ_ONLY)).equal?(0) ? 1 : 0, ptr, just, ])
        OS._txnset_txnobject_controls(@txn_object, false, tags.attr_length, tags, datas)
        OS._dispose_ptr(ptr)
      else
        if (!((self.attr_style & SWT::SEARCH)).equal?(0))
          attributes = !((self.attr_style & SWT::CANCEL)).equal?(0) ? OS.attr_k_hisearch_field_attributes_cancel : 0
          OS._hisearch_field_create(nil, attributes, 0, 0, out_control)
        else
          window = OS._get_control_owner(self.attr_parent.attr_handle)
          OS._create_edit_unicode_text_control(window, nil, 0, !((self.attr_style & SWT::PASSWORD)).equal?(0), nil, out_control)
        end
        if ((out_control[0]).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        self.attr_handle = out_control[0]
        if (!((self.attr_style & SWT::SEARCH)).equal?(0) && self.attr_display.attr_small_fonts)
          OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_size_tag, 2, Array.typed(::Java::Short).new([OS.attr_k_control_size_small]))
        end
        # Bug in the Macintosh.  For some reason a single line text does not
        # display selection properly when it is right aligned.  The fix is to use a
        # multi line text when right aligned.
        if (((self.attr_style & SWT::RIGHT)).equal?(0))
          OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_edit_text_single_line_tag, 1, Array.typed(::Java::Byte).new([1]))
        end
        if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
          OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_edit_text_locked_tag, 1, Array.typed(::Java::Byte).new([1]))
        end
        if (!((self.attr_style & (SWT::RIGHT | SWT::CENTER))).equal?(0))
          font_style = ControlFontStyleRec.new
          font_style.attr_flags |= OS.attr_k_control_use_just_mask
          if (!((self.attr_style & SWT::CENTER)).equal?(0))
            font_style.attr_just = OS.attr_te_just_center
          end
          if (!((self.attr_style & SWT::RIGHT)).equal?(0))
            font_style.attr_just = OS.attr_te_just_right
          end
          OS._set_control_font_style(self.attr_handle, font_style)
        end
        if (!((self.attr_style & SWT::SEARCH)).equal?(0))
          OS._hiview_set_visible(self.attr_handle, true)
        end
      end
    end
    
    typesig { [::Java::Int] }
    def create_scroll_bar(style)
      return create_standard_bar(style)
    end
    
    typesig { [] }
    def create_widget
      super
      @double_click = true
      if (!((self.attr_style & SWT::PASSWORD)).equal?(0))
        set_echo_char(PASSWORD)
      end
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
            if ((@txn_object).equal?(0))
              insert_edit_text(new_text)
            else
              set_txntext(OS.attr_k_txnuse_current_selection, OS.attr_k_txnuse_current_selection, new_text)
              OS._txnshow_selection(@txn_object, false)
            end
            cut = false
          end
        end
      end
      if (cut)
        if ((@txn_object).equal?(0))
          if ((old_text).nil?)
            old_text = get_edit_text(old_selection.attr_x, old_selection.attr_y - 1)
          end
          copy_to_clipboard(old_text)
          insert_edit_text("")
        else
          OS._txncut(@txn_object)
          # Feature in the Macintosh.  When an empty string is set in the TXNObject,
          # the font attributes are cleared.  The fix is to reset them.
          if ((OS._txndata_size(@txn_object) / 2).equal?(0))
            set_font_style(self.attr_font)
          end
        end
      end
      new_selection = get_selection
      if (!cut || !(old_selection == new_selection))
        send_modify_event(true)
      end
    end
    
    typesig { [] }
    def default_background
      return self.attr_display.get_system_color(SWT::COLOR_LIST_BACKGROUND)
    end
    
    typesig { [] }
    def default_foreground
      return self.attr_display.get_system_color(SWT::COLOR_LIST_FOREGROUND)
    end
    
    typesig { [] }
    def deregister
      super
      if (!(@frame_handle).equal?(0))
        self.attr_display.remove_widget(@frame_handle)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Boolean)] }
    def drag_detect(x, y, filter, consume)
      if (filter)
        selection = get_selection
        if (!(selection.attr_x).equal?(selection.attr_y))
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
      return super(x, y, filter, consume)
    end
    
    typesig { [] }
    def focus_part
      if (!((self.attr_style & SWT::SEARCH)).equal?(0))
        return OS.attr_k_control_edit_text_part
      end
      return super
    end
    
    typesig { [] }
    def get_ax_attributes
      return AX_ATTRIBUTES
    end
    
    typesig { [] }
    def get_border_width
      check_widget
      if (has_border)
        out_metric = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_theme_metric(OS.attr_k_theme_metric_edit_text_frame_outset, out_metric)
        return out_metric[0]
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
      return (get_top_pixel + get_caret_location.attr_y) / get_line_height
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
      if ((@txn_object).equal?(0))
        # TODO - caret location for unicode text
        return Point.new(0, 0)
      end
      o_point = CGPoint.new
      o_start_offset = Array.typed(::Java::Int).new(1) { 0 }
      o_end_offset = Array.typed(::Java::Int).new(1) { 0 }
      OS._txnget_selection(@txn_object, o_start_offset, o_end_offset)
      OS._txnoffset_to_hipoint(@txn_object, o_start_offset[0], o_point)
      o_view_rect = Rect.new
      OS._txnget_view_rect(@txn_object, o_view_rect)
      return Point.new(RJava.cast_to_int(o_point.attr_x) - o_view_rect.attr_left, RJava.cast_to_int(o_point.attr_y) - o_view_rect.attr_top)
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
      if ((@txn_object).equal?(0))
        return get_selection.attr_x
      end
      o_start_offset = Array.typed(::Java::Int).new(1) { 0 }
      o_end_offset = Array.typed(::Java::Int).new(1) { 0 }
      OS._txnget_selection(@txn_object, o_start_offset, o_end_offset)
      return o_start_offset[0]
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
      if ((@txn_object).equal?(0))
        ptr = Array.typed(::Java::Int).new(1) { 0 }
        result = OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_cfstring_tag, 4, ptr, nil)
        if (!(result).equal?(OS.attr_no_err))
          return 0
        end
        length_ = OS._cfstring_get_length(ptr[0])
        OS._cfrelease(ptr[0])
        return length_
      end
      return OS._txndata_size(@txn_object) / 2
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
    def get_inset
      if (!((self.attr_style & SWT::SEARCH)).equal?(0))
        return self.attr_display.attr_search_text_inset
      end
      if (!(@txn_object).equal?(0))
        return super
      end
      return self.attr_display.attr_edit_text_inset
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
      o_line_total = Array.typed(::Java::Int).new(1) { 0 }
      OS._txnget_line_count(@txn_object, o_line_total)
      return o_line_total[0]
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
      if ((@txn_object).equal?(0))
        return text_extent(Array.typed(::Java::Char).new([Character.new(?\s.ord)]), 0).attr_y
      end
      o_line_width = Array.typed(::Java::Int).new(1) { 0 }
      o_line_height = Array.typed(::Java::Int).new(1) { 0 }
      OS._txnget_line_metrics(@txn_object, 0, o_line_width, o_line_height)
      return OS._fix2long(o_line_height[0])
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
    # Returns the widget message. When the widget is created
    # with the style <code>SWT.SEARCH</code>, the message text
    # is displayed as a hint for the user, indicating the
    # purpose of the field.
    # <p>
    # Note: This operation is a <em>HINT</em> and is not
    # supported on platforms that do not have this concept.
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
    def get_position(x, y)
      # checkWidget ();
      if ((@txn_object).equal?(0))
        return -1
      end
      o_offset = Array.typed(::Java::Int).new(1) { 0 }
      o_view_rect = Rect.new
      OS._txnget_view_rect(@txn_object, o_view_rect)
      i_point = CGPoint.new
      i_point.attr_x = x + o_view_rect.attr_left
      i_point.attr_y = y + o_view_rect.attr_top
      return (OS._txnhipoint_to_offset(@txn_object, i_point, o_offset)).equal?(OS.attr_no_err) ? o_offset[0] : -1
    end
    
    typesig { [Point] }
    # public
    def get_position(point)
      check_widget
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      return get_position(point.attr_x, point.attr_y)
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
      if ((@txn_object).equal?(0))
        selection = nil
        if (!(@selection).nil?)
          selection = @selection
        else
          selection = ControlEditTextSelectionRec.new
          OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_selection_tag, 4, selection, nil)
        end
        return Point.new(selection.attr_sel_start, selection.attr_sel_end)
      else
        o_start_offset = Array.typed(::Java::Int).new(1) { 0 }
        o_end_offset = Array.typed(::Java::Int).new(1) { 0 }
        OS._txnget_selection(@txn_object, o_start_offset, o_end_offset)
        return Point.new(o_start_offset[0], o_end_offset[0])
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
      if ((@txn_object).equal?(0))
        selection = get_selection
        return selection.attr_y - selection.attr_x
      else
        o_start_offset = Array.typed(::Java::Int).new(1) { 0 }
        o_end_offset = Array.typed(::Java::Int).new(1) { 0 }
        OS._txnget_selection(@txn_object, o_start_offset, o_end_offset)
        return o_end_offset[0] - o_start_offset[0]
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
      if ((@txn_object).equal?(0))
        selection = get_selection
        if ((selection.attr_x).equal?(selection.attr_y))
          return ""
        end
        return String.new(get_edit_text(selection.attr_x, selection.attr_y - 1))
      else
        return get_txntext(OS.attr_k_txnuse_current_selection, OS.attr_k_txnuse_current_selection)
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
      if ((@txn_object).equal?(0))
        return String.new(get_edit_text(0, -1))
      else
        return get_txntext(OS.attr_k_txnstart_offset, OS.attr_k_txnend_offset)
      end
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
      if ((@txn_object).equal?(0))
        return String.new(get_edit_text(start, end_))
      else
        if (!(start <= end_ && 0 <= end_))
          return ""
        end
        length_ = OS._txndata_size(@txn_object) / 2
        start = Math.max(0, start)
        end_ = Math.min(end_, length_ - 1)
        return get_txntext(start, end_ + 1)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def get_edit_text(start, end_)
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      actual_size = Array.typed(::Java::Int).new(1) { 0 }
      result = OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_cfstring_tag, 4, ptr, actual_size)
      if (!(result).equal?(OS.attr_no_err))
        return CharArray.new(0)
      end
      length_ = OS._cfstring_get_length(ptr[0])
      range = CFRange.new
      start = Math.min(Math.max(0, start), length_)
      range.attr_location = start
      if ((end_).equal?(-1))
        range.attr_length = Math.max(0, length_ - start)
      else
        end_ = Math.min(Math.max(0, end_), length_ - 1)
        range.attr_length = Math.max(0, end_ - start + 1)
      end
      buffer = CharArray.new(range.attr_length)
      if (!(@hidden_text).nil?)
        @hidden_text.get_chars(range.attr_location, range.attr_location + range.attr_length, buffer, 0)
      else
        OS._cfstring_get_characters(ptr[0], range, buffer)
      end
      OS._cfrelease(ptr[0])
      return buffer
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
      rect = CGRect.new
      OS._txnget_hirect(@txn_object, OS.attr_k_txndestination_rect_key, rect)
      dest_y = RJava.cast_to_int(rect.attr_y)
      OS._txnget_hirect(@txn_object, OS.attr_k_txntext_rect_key, rect)
      return dest_y - RJava.cast_to_int(rect.attr_y)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def get_txnchars(i_start_offset, i_end_offset)
      o_data_handle = Array.typed(::Java::Int).new(1) { 0 }
      OS._txnget_data(@txn_object, i_start_offset, i_end_offset, o_data_handle)
      if ((o_data_handle[0]).equal?(0))
        return CharArray.new(0)
      end
      length_ = OS._get_handle_size(o_data_handle[0])
      if ((length_).equal?(0))
        return CharArray.new(0)
      end
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      OS._hlock(o_data_handle[0])
      OS.memmove(ptr, o_data_handle[0], 4)
      buffer = CharArray.new(length_ / 2)
      OS.memmove(buffer, ptr[0], length_)
      OS._hunlock(o_data_handle[0])
      OS._dispose_handle(o_data_handle[0])
      return buffer
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def get_txntext(i_start_offset, i_end_offset)
      return String.new(get_txnchars(i_start_offset, i_end_offset))
    end
    
    typesig { [] }
    def hook_events
      super
      if (!((self.attr_style & SWT::SEARCH)).equal?(0))
        search_proc = self.attr_display.attr_search_proc
        mask = Array.typed(::Java::Int).new([OS.attr_k_event_class_search_field, OS.attr_k_event_search_field_cancel_clicked, ])
        control_target = OS._get_control_event_target(self.attr_handle)
        OS._install_event_handler(control_target, search_proc, mask.attr_length / 2, mask, self.attr_handle, nil)
      end
      if (!(@frame_handle).equal?(0))
        control_proc = self.attr_display.attr_control_proc
        mask = Array.typed(::Java::Int).new([OS.attr_k_event_class_control, OS.attr_k_event_control_draw, ])
        control_target = OS._get_control_event_target(@frame_handle)
        OS._install_event_handler(control_target, control_proc, mask.attr_length / 2, mask, @frame_handle, nil)
      end
    end
    
    typesig { [] }
    def inset
      if (!((self.attr_style & SWT::SEARCH)).equal?(0))
        return super
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0) && ((self.attr_style & SWT::BORDER)).equal?(0))
        rect = Rect.new
        rect.attr_left = rect.attr_top = rect.attr_right = rect.attr_bottom = 1
        return rect
      end
      if (!((self.attr_style & SWT::MULTI)).equal?(0) && !((self.attr_style & SWT::BORDER)).equal?(0))
        out_metric = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_theme_metric(OS.attr_k_theme_metric_focus_rect_outset, out_metric)
        rect = Rect.new
        rect.attr_left += out_metric[0]
        rect.attr_top += out_metric[0]
        rect.attr_right += out_metric[0]
        rect.attr_bottom += out_metric[0]
        OS._get_theme_metric(OS.attr_k_theme_metric_edit_text_frame_outset, out_metric)
        rect.attr_left += out_metric[0]
        rect.attr_top += out_metric[0]
        rect.attr_right += out_metric[0]
        rect.attr_bottom += out_metric[0]
        return rect
      end
      return Rect.new
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
      if (hooks(SWT::Verify) || filters(SWT::Verify))
        selection = get_selection
        string = (verify_text(string, selection.attr_x, selection.attr_y, nil)).to_s
        if ((string).nil?)
          return
        end
      end
      if ((@txn_object).equal?(0))
        insert_edit_text(string)
      else
        set_txntext(OS.attr_k_txnuse_current_selection, OS.attr_k_txnuse_current_selection, string)
        OS._txnshow_selection(@txn_object, false)
      end
      if (!(string.length).equal?(0))
        send_modify_event(true)
      end
    end
    
    typesig { [String] }
    def insert_edit_text(string)
      length_ = string.length
      selection = get_selection
      if (has_focus && (@hidden_text).nil?)
        if (!(@text_limit).equal?(LIMIT))
          char_count = get_char_count
          if (char_count - (selection.attr_y - selection.attr_x) + length_ > @text_limit)
            length_ = @text_limit - char_count + (selection.attr_y - selection.attr_x)
          end
        end
        buffer = CharArray.new(length_)
        string.get_chars(0, buffer.attr_length, buffer, 0)
        ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
        if ((ptr).equal?(0))
          error(SWT::ERROR_CANNOT_SET_TEXT)
        end
        OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_edit_text_insert_cfstring_ref_tag, 4, Array.typed(::Java::Int).new([ptr]))
        OS._cfrelease(ptr)
      else
        old_text = get_text
        if (!(@text_limit).equal?(LIMIT))
          char_count = old_text.length
          if (char_count - (selection.attr_y - selection.attr_x) + length_ > @text_limit)
            string = (string.substring(0, @text_limit - char_count + (selection.attr_y - selection.attr_x))).to_s
          end
        end
        new_text = (old_text.substring(0, selection.attr_x)).to_s + string + (old_text.substring(selection.attr_y)).to_s
        set_edit_text(new_text)
        set_selection(selection.attr_x + string.length)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_accessible_get_named_attribute(next_handler, the_event, user_data)
      code = OS.attr_event_not_handled_err
      if (!(@txn_object).equal?(0))
        string_ref = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_name, OS.attr_type_cfstring_ref, nil, 4, nil, string_ref)
        length_ = 0
        if (!(string_ref[0]).equal?(0))
          length_ = OS._cfstring_get_length(string_ref[0])
        end
        buffer = CharArray.new(length_)
        range = CFRange.new
        range.attr_length = length_
        OS._cfstring_get_characters(string_ref[0], range, buffer)
        attribute_name = String.new(buffer)
        if ((attribute_name == OS.attr_k_axrole_attribute) || (attribute_name == OS.attr_k_axrole_description_attribute))
          role_text = !((self.attr_style & SWT::MULTI)).equal?(0) ? OS.attr_k_axtext_area_role : OS.attr_k_axtext_field_role
          buffer = CharArray.new(role_text.length)
          role_text.get_chars(0, buffer.attr_length, buffer, 0)
          string_ref[0] = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
          if (!(string_ref[0]).equal?(0))
            if ((attribute_name == OS.attr_k_axrole_attribute))
              OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, string_ref)
            else
              # kAXRoleDescriptionAttribute
              string_ref2 = OS._hicopy_accessibility_role_description(string_ref[0], 0)
              OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, Array.typed(::Java::Int).new([string_ref2]))
              OS._cfrelease(string_ref2)
            end
            OS._cfrelease(string_ref[0])
            code = OS.attr_no_err
          end
        else
          if (OS::VERSION < 0x1050 && (attribute_name == OS.attr_k_axfocused_attribute))
            OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_boolean, 4, Array.typed(::Java::Boolean).new([has_focus]))
            code = OS.attr_no_err
          else
            if ((attribute_name == OS.attr_k_axtitle_attribute))
              # Feature of the Macintosh.  For some reason, AXTextFields return their text contents
              # when they are asked for their title.  Since they also return their text contents
              # when they are asked for their value, this causes screen readers to speak the text
              # twice.  The fix is to return nothing when asked for a title.
              code = OS.attr_no_err
            else
              if ((attribute_name == OS.attr_k_axvalue_attribute))
                buffer = get_txnchars(OS.attr_k_txnstart_offset, OS.attr_k_txnend_offset)
                string_ref[0] = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
                if (!(string_ref[0]).equal?(0))
                  OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, string_ref)
                  OS._cfrelease(string_ref[0])
                  code = OS.attr_no_err
                end
              else
                if ((attribute_name == OS.attr_k_axnumber_of_characters_attribute))
                  OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_sint32, 4, Array.typed(::Java::Int).new([get_char_count]))
                  code = OS.attr_no_err
                else
                  if ((attribute_name == OS.attr_k_axselected_text_attribute))
                    sel = get_selection
                    buffer = get_txnchars(sel.attr_x, sel.attr_y)
                    string_ref[0] = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
                    if (!(string_ref[0]).equal?(0))
                      OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, string_ref)
                      OS._cfrelease(string_ref[0])
                      code = OS.attr_no_err
                    end
                  else
                    if ((attribute_name == OS.attr_k_axselected_text_range_attribute))
                      sel = get_selection
                      range = CFRange.new
                      range.attr_location = sel.attr_x
                      range.attr_length = sel.attr_y - sel.attr_x
                      value_ref = OS._axvalue_create(OS.attr_k_axvalue_cfrange_type, range)
                      OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cftype_ref, 4, Array.typed(::Java::Int).new([value_ref]))
                      OS._cfrelease(value_ref)
                      code = OS.attr_no_err
                    else
                      if ((attribute_name == OS.attr_k_axstring_for_range_parameterized_attribute))
                        value_ref = Array.typed(::Java::Int).new(1) { 0 }
                        status = OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_parameter, OS.attr_type_cftype_ref, nil, 4, nil, value_ref)
                        if ((status).equal?(OS.attr_no_err))
                          range = CFRange.new
                          ok = OS._axvalue_get_value(value_ref[0], OS.attr_k_axvalue_cfrange_type, range)
                          if (ok)
                            buffer = get_txnchars(range.attr_location, range.attr_location + range.attr_length)
                            string_ref[0] = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
                            if (!(string_ref[0]).equal?(0))
                              OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, string_ref)
                              OS._cfrelease(string_ref[0])
                              code = OS.attr_no_err
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      if (!(self.attr_accessible).nil?)
        code = self.attr_accessible.internal_k_event_accessible_get_named_attribute(next_handler, the_event, code)
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_down(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      if (!@double_click)
        click_count = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_click_count, OS.attr_type_uint32, nil, 4, nil, click_count)
        if (click_count[0] > 1)
          return OS.attr_no_err
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_search_field_cancel_clicked(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      set_text("")
      event = Event.new
      event.attr_detail = SWT::CANCEL
      post_event(SWT::DefaultSelection, event)
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_unicode_key_pressed(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      keyboard_event = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_text_input_send_keyboard_event, OS.attr_type_event_ref, nil, keyboard_event.attr_length * 4, nil, keyboard_event)
      modifiers = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(keyboard_event[0], OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, 4, nil, modifiers)
      if ((modifiers[0]).equal?(OS.attr_cmd_key))
        key_code = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(keyboard_event[0], OS.attr_k_event_param_key_code, OS.attr_type_uint32, nil, key_code.attr_length * 4, nil, key_code)
        case (key_code[0])
        when 7
          # X
          cut
          return OS.attr_no_err
        when 8
          # C
          copy
          return OS.attr_no_err
        when 9
          # V
          paste
          return OS.attr_no_err
        end
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        key_code = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(keyboard_event[0], OS.attr_k_event_param_key_code, OS.attr_type_uint32, nil, key_code.attr_length * 4, nil, key_code)
        case (key_code[0])
        # Feature in the Macintosh.  Tab and Return characters are inserted into a
        # single line TXN Object.  While this may be correct platform behavior, it is
        # unexpected.  The fix is to avoid calling the default handler.
        # 
        # KP Enter
        when 76, 36
          # Return
          post_event(SWT::DefaultSelection)
          return OS.attr_no_err
        when 48
          # Tab
          return OS.attr_no_err
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_text_input_update_active_input_area(next_handler, the_event, user_data)
      length_ = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_text_input_send_text, OS.attr_type_unicode_text, nil, 0, length_, nil)
      fixed_length = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_text_input_send_fix_len, OS.attr_type_long_integer, nil, 4, nil, fixed_length)
      if ((fixed_length[0]).equal?(-1) || (fixed_length[0]).equal?(length_[0]))
        send_modify_event(false)
      end
      return OS.attr_event_not_handled_err
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
      paste_ = true
      old_text = nil
      if (hooks(SWT::Verify) || filters(SWT::Verify))
        old_text = (get_clipboard_text).to_s
        if (!(old_text).nil?)
          selection = get_selection
          new_text = verify_text(old_text, selection.attr_x, selection.attr_y, nil)
          if ((new_text).nil?)
            return
          end
          if (!(new_text == old_text))
            if ((@txn_object).equal?(0))
              insert_edit_text(new_text)
            else
              set_txntext(OS.attr_k_txnuse_current_selection, OS.attr_k_txnuse_current_selection, new_text)
              OS._txnshow_selection(@txn_object, false)
            end
            paste_ = false
          end
        end
      end
      if (paste_)
        if ((@txn_object).equal?(0))
          if ((old_text).nil?)
            old_text = (get_clipboard_text).to_s
          end
          insert_edit_text(old_text)
        else
          if (!(@text_limit).equal?(LIMIT))
            if ((old_text).nil?)
              old_text = (get_clipboard_text).to_s
            end
            set_txntext(OS.attr_k_txnuse_current_selection, OS.attr_k_txnuse_current_selection, old_text)
            OS._txnshow_selection(@txn_object, false)
          else
            OS._txnpaste(@txn_object)
          end
        end
      end
      send_modify_event(true)
    end
    
    typesig { [] }
    def poll_track_event
      return true
    end
    
    typesig { [] }
    def register
      super
      if (!(@frame_handle).equal?(0))
        self.attr_display.add_widget(@frame_handle, self)
      end
    end
    
    typesig { [] }
    def release_widget
      super
      @txn_object = 0
      @hidden_text = (@message = (nil).to_s).to_s
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
      if ((@txn_object).equal?(0))
        set_selection(0, get_char_count)
      else
        OS._txnselect_all(@txn_object)
      end
    end
    
    typesig { [::Java::Int, Event] }
    def send_key_event(type, event)
      if (!super(type, event))
        return false
      end
      if (!(type).equal?(SWT::KeyDown))
        return true
      end
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return true
      end
      if ((event.attr_character).equal?(0))
        return true
      end
      if (!((event.attr_state_mask & SWT::COMMAND)).equal?(0))
        return true
      end
      old_text = ""
      char_count = get_char_count
      selection = get_selection
      start = selection.attr_x
      end_ = selection.attr_y
      case (event.attr_character)
      when SWT::BS
        if ((start).equal?(end_))
          if ((start).equal?(0))
            return true
          end
          start = Math.max(0, start - 1)
        end
      when SWT::DEL
        if ((start).equal?(end_))
          if ((start).equal?(char_count))
            return true
          end
          end_ = Math.min(end_ + 1, char_count)
        end
      when SWT::CR
        if (!((self.attr_style & SWT::SINGLE)).equal?(0))
          return true
        end
        old_text = DELIMITER
      else
        if (!(event.attr_character).equal?(Character.new(?\t.ord)) && event.attr_character < 0x20)
          return true
        end
        old_text = (String.new(Array.typed(::Java::Char).new([event.attr_character]))).to_s
      end
      new_text = verify_text(old_text, start, end_, event)
      if ((new_text).nil?)
        return false
      end
      if (char_count - (end_ - start) + new_text.length > @text_limit)
        return false
      end
      result = (new_text).equal?(old_text)
      if (!(new_text).equal?(old_text) || !(@hidden_text).nil?)
        if ((@txn_object).equal?(0))
          text = String.new(get_edit_text(0, -1))
          left_text = text.substring(0, start)
          right_text = text.substring(end_, text.length)
          set_edit_text(left_text + new_text + right_text)
          start += new_text.length
          set_selection(Point.new(start, start))
          result = false
        else
          set_txntext(start, end_, new_text)
        end
      end
      # Post the modify event so that the character will be inserted
      # into the widget when the modify event is delivered.  Normally,
      # modify events are sent but it is safe to post the event here
      # because this method is called from the event loop.
      send_modify_event(false)
      return result
    end
    
    typesig { [::Java::Boolean] }
    def send_modify_event(send)
      string = OS.attr_k_axselected_text_changed_notification
      buffer = CharArray.new(string.length)
      string.get_chars(0, buffer.attr_length, buffer, 0)
      string_ref = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      OS._axnotification_hiobject_notify(string_ref, self.attr_handle, 0)
      OS._cfrelease(string_ref)
      string = (OS.attr_k_axvalue_changed_notification).to_s
      buffer = CharArray.new(string.length)
      string.get_chars(0, buffer.attr_length, buffer, 0)
      string_ref = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      OS._axnotification_hiobject_notify(string_ref, self.attr_handle, 0)
      OS._cfrelease(string_ref)
      if (send)
        send_event(SWT::Modify)
      else
        post_event(SWT::Modify)
      end
    end
    
    typesig { [Array.typed(::Java::Float)] }
    def set_background(color)
      if ((@txn_object).equal?(0))
        super(color)
      else
        colorspace = OS._cgcolor_space_create_device_rgb
        color_ref = OS._cgcolor_create(colorspace, color)
        OS._hitext_view_set_background_color(self.attr_handle, color_ref)
        OS._cgcolor_release(color_ref)
        OS._cgcolor_space_release(colorspace)
      end
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Float)] }
    def set_background(control, color)
      # Bug in the Macintosh. For some reason, when the same background
      # color is set in two instances of an EditUnicodeTextControl, the
      # color is not set in the second instance.  It seems that the edit
      # control is checking globally that the last color that was set is the
      # same.  The fix is to ensure the that the color that is about to
      # be set is not the same as the last globally remembered color by
      # first setting it to black, then white and finally the color.
      if ((self.attr_handle).equal?(control))
        font_style = ControlFontStyleRec.new
        OS._get_control_data(control, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_font_style_tag, ControlFontStyleRec.attr_sizeof, font_style, nil)
        font_style.attr_flags |= OS.attr_k_control_use_back_color_mask
        OS._set_control_font_style(control, font_style)
        font_style.attr_back_color_red = font_style.attr_back_color_green = font_style.attr_back_color_blue = RJava.cast_to_short(0xffff)
        OS._set_control_font_style(control, font_style)
      end
      super(control, color)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize, events)
      bounds = nil
      if ((@txn_object).equal?(0) && resize)
        bounds = get_bounds
      end
      result = super(x, y, width, height, move, resize, events)
      if (!(bounds).nil? && !((result & RESIZED)).equal?(0))
        # Feature in the Macintosh.  When the caret is moved,
        # the text widget scrolls to show the new location.
        # This means that the text widget may be scrolled
        # to the right in order to show the caret when the
        # widget is not large enough to show both the caret
        # location and all the text.  Unfortunately, when
        # the text widget is resized such that all the text
        # and the caret could be visible, Macintosh does not
        # scroll the widget back.  The fix is to reset the
        # selection or the text depend on if the widget
        # is on focus or not.
        inset_ = get_inset
        min_width = inset_.attr_left + inset_.attr_right
        if (bounds.attr_width <= min_width && width > min_width)
          if (has_focus)
            selection = ControlEditTextSelectionRec.new
            if ((OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_selection_tag, 4, selection, nil)).equal?(OS.attr_no_err))
              OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_edit_text_selection_tag, 4, selection)
            end
          else
            ptr = Array.typed(::Java::Int).new(1) { 0 }
            if ((OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_edit_text_cfstring_tag, 4, ptr, nil)).equal?(OS.attr_no_err))
              OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_edit_text_cfstring_tag, 4, ptr)
            end
            if (!(ptr[0]).equal?(0))
              OS._cfrelease(ptr[0])
            end
          end
        end
      end
      # Bug in the Macintosh.  HIScrollViewCreate() fails if no scroll bit is
      # specified. In order to get horizontal scrolling in a single line text, a
      # scroll view is created with the vertical bit set and the scroll bars
      # are set to auto hide.  But calling HIScrollViewSetScrollBarAutoHide()
      # before the view has been resized still leaves space for the vertical
      # scroll bar.  The fix is to call HIScrollViewSetScrollBarAutoHide()
      # once the widget has been resized.
      if (!(self.attr_scrolled_handle).equal?(0) && ((self.attr_style & (SWT::H_SCROLL | SWT::V_SCROLL))).equal?(0))
        OS._hiscroll_view_set_scroll_bar_auto_hide(self.attr_scrolled_handle, true)
      end
      return result
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
      if ((@txn_object).equal?(0))
        if (((self.attr_style & SWT::PASSWORD)).equal?(0))
          selection = get_selection
          text = get_text
          @echo_character = echo
          set_edit_text(text)
          set_selection(selection)
        end
      else
        OS._txnecho_mode(@txn_object, echo, OS.attr_k_text_encoding_mac_unicode, !(echo).equal?(Character.new(?\0.ord)))
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
      if ((@txn_object).equal?(0))
        OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_edit_text_locked_tag, 1, Array.typed(::Java::Byte).new([(!((self.attr_style & SWT::READ_ONLY)).equal?(0) ? 1 : 0)]))
      else
        OS._txnset_txnobject_controls(@txn_object, false, 1, Array.typed(::Java::Int).new([OS.attr_k_txnioprivileges_tag]), Array.typed(::Java::Int).new([(!((self.attr_style & SWT::READ_ONLY)).equal?(0)) ? 1 : 0]))
      end
    end
    
    typesig { [Array.typed(::Java::Float)] }
    def set_foreground(color)
      if ((@txn_object).equal?(0))
        super(color)
      else
        ptr2 = OS._new_ptr(OS.attr_k_txnqdfont_color_attribute_size)
        rgb = nil
        if ((color).nil?)
          rgb = RGBColor.new
        else
          rgb = to_rgbcolor(color)
        end
        OS.memmove(ptr2, rgb, RGBColor.attr_sizeof)
        attribs = Array.typed(::Java::Int).new([OS.attr_k_txnqdfont_color_attribute, OS.attr_k_txnqdfont_color_attribute_size, ptr2, ])
        ptr1 = OS._new_ptr(attribs.attr_length * 4)
        OS.memmove(ptr1, attribs, attribs.attr_length * 4)
        read_only = !((self.attr_style & SWT::READ_ONLY)).equal?(0)
        tag = Array.typed(::Java::Int).new([OS.attr_k_txnioprivileges_tag])
        if (read_only)
          OS._txnset_txnobject_controls(@txn_object, false, 1, tag, Array.typed(::Java::Int).new([0]))
        end
        OS._txnset_type_attributes(@txn_object, attribs.attr_length / 3, ptr1, 0, 0)
        if (read_only)
          OS._txnset_txnobject_controls(@txn_object, false, 1, tag, Array.typed(::Java::Int).new([1]))
        end
        OS._dispose_ptr(ptr1)
        OS._dispose_ptr(ptr2)
      end
    end
    
    typesig { [Font] }
    def set_font_style(font)
      if ((@txn_object).equal?(0))
        super(font)
      else
        family = OS.attr_k_txndefault_font_name
        font_style = OS.attr_k_txndefault_font_style
        size = OS.attr_k_txndefault_font_size
        if (!(font).nil?)
          id = Array.typed(::Java::Short).new(1) { 0 }
          s = Array.typed(::Java::Short).new(1) { 0 }
          OS._fmget_font_family_instance_from_font(font.attr_handle, id, s)
          family = id[0]
          font_style = s[0] | font.attr_style
          size = OS._x2fix(font.attr_size)
        end
        attribs = Array.typed(::Java::Int).new([OS.attr_k_txnqdfont_size_attribute, OS.attr_k_txnqdfont_size_attribute_size, size, OS.attr_k_txnqdfont_style_attribute, OS.attr_k_txnqdfont_style_attribute_size, font_style, OS.attr_k_txnqdfont_family_idattribute, OS.attr_k_txnqdfont_family_idattribute_size, family, ])
        ptr = OS._new_ptr(attribs.attr_length * 4)
        OS.memmove(ptr, attribs, attribs.attr_length * 4)
        read_only = !((self.attr_style & SWT::READ_ONLY)).equal?(0)
        tag = Array.typed(::Java::Int).new([OS.attr_k_txnioprivileges_tag])
        if (read_only)
          OS._txnset_txnobject_controls(@txn_object, false, 1, tag, Array.typed(::Java::Int).new([0]))
        end
        OS._txnset_type_attributes(@txn_object, attribs.attr_length / 3, ptr, 0, 0)
        if (read_only)
          OS._txnset_txnobject_controls(@txn_object, false, 1, tag, Array.typed(::Java::Int).new([1]))
        end
        OS._dispose_ptr(ptr)
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
    # Sets the widget message. When the widget is created
    # with the style <code>SWT.SEARCH</code>, the message text
    # is displayed as a hint for the user, indicating the
    # purpose of the field.
    # <p>
    # Note: This operation is a <em>HINT</em> and is not
    # supported on platforms that do not have this concept.
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
      if (!((self.attr_style & SWT::SEARCH)).equal?(0))
        buffer = CharArray.new(message.length)
        message.get_chars(0, buffer.attr_length, buffer, 0)
        ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
        if ((ptr).equal?(0))
          error(SWT::ERROR_CANNOT_SET_TEXT)
        end
        OS._hisearch_field_set_descriptive_text(self.attr_handle, ptr)
        OS._cfrelease(ptr)
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
      if ((@txn_object).equal?(0))
        length_ = get_char_count
        selection = ControlEditTextSelectionRec.new
        selection.attr_sel_start = RJava.cast_to_short(Math.min(Math.max(Math.min(start, end_), 0), length_))
        selection.attr_sel_end = RJava.cast_to_short(Math.min(Math.max(Math.max(start, end_), 0), length_))
        if (has_focus)
          OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_edit_text_selection_tag, 4, selection)
        else
          @selection = selection
        end
      else
        length_ = OS._txndata_size(@txn_object) / 2
        n_start = Math.min(Math.max(Math.min(start, end_), 0), length_)
        n_end = Math.min(Math.max(Math.max(start, end_), 0), length_)
        OS._txnset_selection(@txn_object, n_start, n_end)
        OS._txnshow_selection(@txn_object, false)
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
      if ((@txn_object).equal?(0))
        return
      end
      @tabs = tabs
      tab = TXNTab.new
      tab.attr_value = RJava.cast_to_short((text_extent(Array.typed(::Java::Char).new([Character.new(?\s.ord)]), 0).attr_x * tabs))
      tags = Array.typed(::Java::Int).new([OS.attr_k_txntab_settings_tag])
      datas = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove(datas, tab, TXNTab.attr_sizeof)
      OS._txnset_txnobject_controls(@txn_object, false, tags.attr_length, tags, datas)
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
      if (hooks(SWT::Verify) || filters(SWT::Verify))
        string = (verify_text(string, 0, get_char_count, nil)).to_s
        if ((string).nil?)
          return
        end
      end
      if ((@txn_object).equal?(0))
        set_edit_text(string)
      else
        set_txntext(OS.attr_k_txnstart_offset, OS.attr_k_txnend_offset, string)
        OS._txnset_selection(@txn_object, OS.attr_k_txnstart_offset, OS.attr_k_txnstart_offset)
        OS._txnshow_selection(@txn_object, false)
      end
      send_modify_event(true)
    end
    
    typesig { [String] }
    def set_edit_text(string)
      buffer = nil
      if (((self.attr_style & SWT::PASSWORD)).equal?(0) && !(@echo_character).equal?(Character.new(?\0.ord)))
        @hidden_text = string
        buffer = CharArray.new(Math.min(@hidden_text.length, @text_limit))
        i = 0
        while i < buffer.attr_length
          buffer[i] = @echo_character
          i += 1
        end
      else
        @hidden_text = (nil).to_s
        buffer = CharArray.new(Math.min(string.length, @text_limit))
        string.get_chars(0, buffer.attr_length, buffer, 0)
      end
      ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      if ((ptr).equal?(0))
        error(SWT::ERROR_CANNOT_SET_TEXT)
      end
      OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_edit_text_cfstring_tag, 4, Array.typed(::Java::Int).new([ptr]))
      OS._cfrelease(ptr)
      if (!(@selection).nil?)
        @selection = nil
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, String] }
    def set_txntext(i_start_offset, i_end_offset, string)
      length_ = string.length
      if (!(@text_limit).equal?(LIMIT))
        char_count = OS._txndata_size(@txn_object) / 2
        start = i_start_offset
        end_ = i_end_offset
        if ((i_start_offset).equal?(OS.attr_k_txnuse_current_selection) || (i_end_offset).equal?(OS.attr_k_txnuse_current_selection))
          o_start_offset = Array.typed(::Java::Int).new(1) { 0 }
          o_end_offset = Array.typed(::Java::Int).new(1) { 0 }
          OS._txnget_selection(@txn_object, o_start_offset, o_end_offset)
          start = o_start_offset[0]
          end_ = o_end_offset[0]
        else
          if ((i_start_offset).equal?(OS.attr_k_txnend_offset))
            start = char_count
          end
          if ((i_end_offset).equal?(OS.attr_k_txnend_offset))
            end_ = char_count
          end
        end
        if (char_count - (end_ - start) + length_ > @text_limit)
          length_ = @text_limit - char_count + (end_ - start)
        end
      end
      buffer = CharArray.new(length_)
      string.get_chars(0, buffer.attr_length, buffer, 0)
      read_only = !((self.attr_style & SWT::READ_ONLY)).equal?(0)
      tag = Array.typed(::Java::Int).new([OS.attr_k_txnioprivileges_tag])
      if (read_only)
        OS._txnset_txnobject_controls(@txn_object, false, 1, tag, Array.typed(::Java::Int).new([0]))
      end
      OS._txnset_data(@txn_object, OS.attr_k_txnunicode_text_data, buffer, buffer.attr_length * 2, i_start_offset, i_end_offset)
      if (read_only)
        OS._txnset_txnobject_controls(@txn_object, false, 1, tag, Array.typed(::Java::Int).new([1]))
      end
      # Feature in the Macintosh.  When an empty string is set in the TXNObject,
      # the font attributes are cleared.  The fix is to reset them.
      if ((OS._txndata_size(@txn_object) / 2).equal?(0))
        set_font_style(self.attr_font)
      end
    end
    
    typesig { [] }
    def set_zorder
      if (!(@frame_handle).equal?(0))
        child = !(self.attr_scrolled_handle).equal?(0) ? self.attr_scrolled_handle : self.attr_handle
        OS._hiview_add_subview(@frame_handle, child)
        layout = HILayoutInfo.new
        layout.attr_version = 0
        OS._hiview_get_layout_info(child, layout)
        biding = layout.attr_binding.attr_top
        biding.attr_to_view = 0
        biding.attr_kind = OS.attr_k_hilayout_bind_min
        biding.attr_offset = 0
        biding = layout.attr_binding.attr_left
        biding.attr_to_view = 0
        biding.attr_kind = OS.attr_k_hilayout_bind_min
        biding.attr_offset = 0
        biding = layout.attr_binding.attr_bottom
        biding.attr_to_view = 0
        biding.attr_kind = OS.attr_k_hilayout_bind_max
        biding.attr_offset = 0
        biding = layout.attr_binding.attr_right
        biding.attr_to_view = 0
        biding.attr_kind = OS.attr_k_hilayout_bind_max
        biding.attr_offset = 0
        r = CGRect.new
        r.attr_width = r.attr_height = 100
        OS._hiview_set_frame(@frame_handle, r)
        inset_ = inset
        r.attr_x += inset_.attr_left
        r.attr_y += inset_.attr_top
        r.attr_width -= inset_.attr_left + inset_.attr_right
        r.attr_height -= inset_.attr_top + inset_.attr_bottom
        OS._hiview_set_frame(child, r)
        OS._hiview_set_layout_info(child, layout)
      end
      super
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
      event = Array.typed(::Java::Int).new(1) { 0 }
      OS._create_event(0, OS.attr_k_event_class_scrollable, OS.attr_k_event_scrollable_scroll_to, 0.0, 0, event)
      if (!(event[0]).equal?(0))
        line_height = get_line_height
        pt = CGPoint.new
        pt.attr_y = line_height * Math.min(get_line_count, index)
        OS._set_event_parameter(event[0], OS.attr_k_event_param_origin, OS.attr_type_hipoint, CGPoint.attr_sizeof, pt)
        OS._send_event_to_event_target(event[0], OS._get_control_event_target(self.attr_handle))
        OS._release_event(event[0])
      end
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
      if ((@txn_object).equal?(0))
        set_selection(get_selection)
      else
        OS._txnshow_selection(@txn_object, false)
      end
    end
    
    typesig { [] }
    def top_handle
      if (!(@frame_handle).equal?(0))
        return @frame_handle
      end
      return super
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def traversal_code(key, the_event)
      bits = super(key, the_event)
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return bits
      end
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        bits &= ~SWT::TRAVERSE_RETURN
        # Tab
        if ((key).equal?(48) && !(the_event).equal?(0))
          modifiers = Array.typed(::Java::Int).new(1) { 0 }
          OS._get_event_parameter(the_event, OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, 4, nil, modifiers)
          next_ = ((modifiers[0] & OS.attr_shift_key)).equal?(0)
          if (next_ && ((modifiers[0] & OS.attr_control_key)).equal?(0))
            bits &= ~(SWT::TRAVERSE_TAB_NEXT | SWT::TRAVERSE_TAB_PREVIOUS)
          end
        end
      end
      return bits
    end
    
    typesig { [String, ::Java::Int, ::Java::Int, Event] }
    def verify_text(string, start, end_, key_event)
      event = Event.new
      event.attr_text = string
      event.attr_start = start
      event.attr_end = end_
      if (!(key_event).nil?)
        event.attr_character = key_event.attr_character
        event.attr_key_code = key_event.attr_key_code
        event.attr_state_mask = key_event.attr_state_mask
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
