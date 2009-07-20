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
  module LinkImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CFRange
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGPoint
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class represent a selectable
  # user interface object that displays a text with
  # links.
  # <p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>(none)</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#link">Link snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.1
  class Link < LinkImports.const_get :Control
    include_class_members LinkImports
    
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    attr_accessor :layout
    alias_method :attr_layout, :layout
    undef_method :layout
    alias_method :attr_layout=, :layout=
    undef_method :layout=
    
    attr_accessor :link_color
    alias_method :attr_link_color, :link_color
    undef_method :link_color
    alias_method :attr_link_color=, :link_color=
    undef_method :link_color=
    
    attr_accessor :disabled_color
    alias_method :attr_disabled_color, :disabled_color
    undef_method :disabled_color
    alias_method :attr_disabled_color=, :disabled_color=
    undef_method :disabled_color=
    
    attr_accessor :offsets
    alias_method :attr_offsets, :offsets
    undef_method :offsets
    alias_method :attr_offsets=, :offsets=
    undef_method :offsets=
    
    attr_accessor :selection
    alias_method :attr_selection, :selection
    undef_method :selection
    alias_method :attr_selection=, :selection=
    undef_method :selection=
    
    attr_accessor :ids
    alias_method :attr_ids, :ids
    undef_method :ids
    alias_method :attr_ids=, :ids=
    undef_method :ids=
    
    attr_accessor :mnemonics
    alias_method :attr_mnemonics, :mnemonics
    undef_method :mnemonics
    alias_method :attr_mnemonics=, :mnemonics=
    undef_method :mnemonics=
    
    attr_accessor :focus_index
    alias_method :attr_focus_index, :focus_index
    undef_method :focus_index
    alias_method :attr_focus_index=, :focus_index=
    undef_method :focus_index=
    
    class_module.module_eval {
      const_set_lazy(:LINK_FOREGROUND) { RGB.new(0, 51, 153) }
      const_attr_reader  :LINK_FOREGROUND
      
      const_set_lazy(:LINK_DISABLED_FOREGROUND) { RGB.new(172, 168, 153) }
      const_attr_reader  :LINK_DISABLED_FOREGROUND
      
      const_set_lazy(:AX_ATTRIBUTES) { Array.typed(String).new([OS.attr_k_axtitle_attribute, ]) }
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
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @text = nil
      @layout = nil
      @link_color = nil
      @disabled_color = nil
      @offsets = nil
      @selection = nil
      @ids = nil
      @mnemonics = nil
      @focus_index = 0
      super(parent, style)
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is called when the control is selected by the user.
    # <code>widgetDefaultSelected</code> is not called.
    # </p>
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
    
    typesig { [::Java::Int, ::Java::Int] }
    def call_focus_event_handler(next_handler, the_event)
      return OS.attr_no_err
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
      width = 0
      height = 0
      layout_width = @layout.get_width
      # TEMPORARY CODE
      if ((w_hint).equal?(0))
        @layout.set_width(1)
        rect = @layout.get_bounds
        width = 0
        height = rect.attr_height
      else
        @layout.set_width(w_hint)
        rect = @layout.get_bounds
        width = rect.attr_width
        height = rect.attr_height
      end
      @layout.set_width(layout_width)
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      border = get_border_width
      width += border * 2
      height += border * 2
      return Point.new(width, height)
    end
    
    typesig { [] }
    def create_handle
      self.attr_state |= GRAB | THEME_BACKGROUND
      features = OS.attr_k_control_supports_focus
      out_control = Array.typed(::Java::Int).new(1) { 0 }
      window = OS._get_control_owner(self.attr_parent.attr_handle)
      OS._create_user_pane_control(window, nil, features, out_control)
      if ((out_control[0]).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      self.attr_handle = out_control[0]
      @layout = TextLayout.new(self.attr_display)
      @link_color = Color.new(self.attr_display, LINK_FOREGROUND)
      @disabled_color = Color.new(self.attr_display, LINK_DISABLED_FOREGROUND)
      @offsets = Array.typed(Point).new(0) { nil }
      @ids = Array.typed(String).new(0) { nil }
      @mnemonics = Array.typed(::Java::Int).new(0) { 0 }
      @selection = Point.new(-1, -1)
      @focus_index = -1
    end
    
    typesig { [] }
    def create_widget
      super
      @layout.set_font(get_font)
      @text = ""
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def draw_background(control, context)
      fill_background(control, context, nil)
      if (!has_focus || !draw_focus_ring || (@focus_index).equal?(-1))
        return
      end
      out_metric = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_theme_metric(OS.attr_k_theme_metric_focus_rect_outset, out_metric)
      ((out_metric[0] -= 1) + 1)
      r = Rect.new
      rects = get_rectangles(@focus_index)
      i = 0
      while i < rects.attr_length
        rect = rects[i]
        r.attr_left = RJava.cast_to_short((rect.attr_x + out_metric[0]))
        r.attr_top = RJava.cast_to_short((rect.attr_y + out_metric[0]))
        r.attr_right = RJava.cast_to_short((r.attr_left + rect.attr_width - (out_metric[0] * 2)))
        r.attr_bottom = RJava.cast_to_short((r.attr_top + rect.attr_height - (out_metric[0] * 2)))
        OS._draw_theme_focus_rect(r, true)
        ((i += 1) - 1)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def draw_widget(control, context, damage_rgn, visible_rgn, the_event)
      data = SwtGCData.new
      data.attr_paint_event = the_event
      data.attr_visible_rgn = visible_rgn
      gc = SwtGC.carbon_new(self, data)
      sel_start = @selection.attr_x
      sel_end = @selection.attr_y
      if (sel_start > sel_end)
        sel_start = @selection.attr_y
        sel_end = @selection.attr_x
      end
      # temporary code to disable text selection
      sel_start = sel_end = -1
      if (!((self.attr_state & DISABLED)).equal?(0))
        gc.set_foreground(@disabled_color)
      end
      @layout.draw(gc, 0, 0, sel_start, sel_end, nil, nil)
      gc.dispose
      super(control, context, damage_rgn, visible_rgn, the_event)
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      super(enabled)
      link_style = TextStyle.new(nil, enabled ? @link_color : @disabled_color, nil)
      link_style.attr_underline = true
      i = 0
      while i < @offsets.attr_length
        point = @offsets[i]
        @layout.set_style(link_style, point.attr_x, point.attr_y)
        ((i += 1) - 1)
      end
      redraw
    end
    
    typesig { [] }
    def get_ax_attributes
      return AX_ATTRIBUTES
    end
    
    typesig { [] }
    def get_name_text
      return get_text
    end
    
    typesig { [::Java::Int] }
    def get_rectangles(link_index)
      line_count = @layout.get_line_count
      rects = Array.typed(Rectangle).new(line_count) { nil }
      line_offsets = @layout.get_line_offsets
      point = @offsets[link_index]
      line_start = 1
      while (point.attr_x > line_offsets[line_start])
        ((line_start += 1) - 1)
      end
      line_end = 1
      while (point.attr_y > line_offsets[line_end])
        ((line_end += 1) - 1)
      end
      index = 0
      if ((line_start).equal?(line_end))
        rects[((index += 1) - 1)] = @layout.get_bounds(point.attr_x, point.attr_y)
      else
        rects[((index += 1) - 1)] = @layout.get_bounds(point.attr_x, line_offsets[line_start] - 1)
        rects[((index += 1) - 1)] = @layout.get_bounds(line_offsets[line_end - 1], point.attr_y)
        if (line_end - line_start > 1)
          i = line_start
          while i < line_end - 1
            rects[((index += 1) - 1)] = @layout.get_line_bounds(i)
            ((i += 1) - 1)
          end
        end
      end
      if (!(rects.attr_length).equal?(index))
        tmp = Array.typed(Rectangle).new(index) { nil }
        System.arraycopy(rects, 0, tmp, 0, index)
        rects = tmp
      end
      return rects
    end
    
    typesig { [] }
    # Returns the receiver's text, which will be an empty
    # string if it has never been set.
    # 
    # @return the receiver's text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text
      check_widget
      return @text
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_accessible_get_named_attribute(next_handler, the_event, user_data)
      code = OS.attr_event_not_handled_err
      string_ref = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_name, OS.attr_type_cfstring_ref, nil, 4, nil, string_ref)
      length = 0
      if (!(string_ref[0]).equal?(0))
        length = OS._cfstring_get_length(string_ref[0])
      end
      buffer = CharArray.new(length)
      range = CFRange.new
      range.attr_length = length
      OS._cfstring_get_characters(string_ref[0], range, buffer)
      attribute_name = String.new(buffer)
      if ((attribute_name == OS.attr_k_axrole_attribute) || (attribute_name == OS.attr_k_axrole_description_attribute))
        role_text = OS.attr_k_axlink_role
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
        if ((attribute_name == OS.attr_k_axtitle_attribute) || (attribute_name == OS.attr_k_axdescription_attribute))
          text = parse(get_text)
          if (!(text).nil?)
            buffer = CharArray.new(text.length)
            text.get_chars(0, buffer.attr_length, buffer, 0)
            string_ref[0] = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
            if (!(string_ref[0]).equal?(0))
              OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, string_ref)
              OS._cfrelease(string_ref[0])
              code = OS.attr_no_err
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
    def k_event_control_get_focus_part(next_handler, the_event, user_data)
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_set_focus_part(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        redraw
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_moved(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      pt = CGPoint.new
      OS._get_event_parameter(the_event, OS.attr_k_event_param_window_mouse_location, OS.attr_type_hipoint, nil, CGPoint.attr_sizeof, nil, pt)
      OS._hiview_convert_point(pt, 0, self.attr_handle)
      x = RJava.cast_to_int(pt.attr_x)
      y = RJava.cast_to_int(pt.attr_y)
      j = 0
      while j < @offsets.attr_length
        rects = get_rectangles(j)
        i = 0
        while i < rects.attr_length
          rectangle = rects[i]
          if (rectangle.contains(x, y))
            set_cursor(self.attr_display.get_system_cursor(SWT::CURSOR_HAND))
            return result
          end
          ((i += 1) - 1)
        end
        ((j += 1) - 1)
      end
      set_cursor(nil)
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_unicode_key_pressed(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      if ((@focus_index).equal?(-1))
        return result
      end
      keyboard_event = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_text_input_send_keyboard_event, OS.attr_type_event_ref, nil, keyboard_event.attr_length * 4, nil, keyboard_event)
      key_code = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(keyboard_event[0], OS.attr_k_event_param_key_code, OS.attr_type_uint32, nil, key_code.attr_length * 4, nil, key_code)
      case (key_code[0])
      # Return
      # Space
      when 36, 49, 76
        # Enter
        event = Event.new
        event.attr_text = @ids[@focus_index]
        send_event(SWT::Selection, event)
      when 48
        # Tab
        modifiers = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(keyboard_event[0], OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, 4, nil, modifiers)
        next_ = ((modifiers[0] & OS.attr_shift_key)).equal?(0)
        if (next_)
          if (@focus_index < @offsets.attr_length - 1)
            ((@focus_index += 1) - 1)
            redraw
          end
        else
          if (@focus_index > 0)
            ((@focus_index -= 1) + 1)
            redraw
          end
        end
      end
      return result
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@layout).nil?)
        @layout.dispose
      end
      @layout = nil
      if (!(@link_color).nil?)
        @link_color.dispose
      end
      @link_color = nil
      if (!(@disabled_color).nil?)
        @disabled_color.dispose
      end
      @disabled_color = nil
      @offsets = nil
      @ids = nil
      @mnemonics = nil
      @text = (nil).to_s
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
    
    typesig { [String] }
    def parse(string)
      length_ = string.length
      @offsets = Array.typed(Point).new(length_ / 4) { nil }
      @ids = Array.typed(String).new(length_ / 4) { nil }
      @mnemonics = Array.typed(::Java::Int).new(length_ / 4 + 1) { 0 }
      result = StringBuffer.new
      buffer = CharArray.new(length_)
      string.get_chars(0, string.length, buffer, 0)
      index = 0
      state = 0
      link_index = 0
      start = 0
      tag_start = 0
      link_start = 0
      endtag_start = 0
      ref_start = 0
      while (index < length_)
        c = Character.to_lower_case(buffer[index])
        case (state)
        when 0
          if ((c).equal?(Character.new(?<.ord)))
            tag_start = index
            ((state += 1) - 1)
          end
        when 1
          if ((c).equal?(Character.new(?a.ord)))
            ((state += 1) - 1)
          end
        when 2
          case (c)
          when Character.new(?h.ord)
            state = 7
          when Character.new(?>.ord)
            link_start = index + 1
            ((state += 1) - 1)
          else
            if (Character.is_whitespace(c))
            else
              state = 13
            end
          end
        when 3
          if ((c).equal?(Character.new(?<.ord)))
            endtag_start = index
            ((state += 1) - 1)
          end
        when 4
          state = (c).equal?(Character.new(?/.ord)) ? state + 1 : 3
        when 5
          state = (c).equal?(Character.new(?a.ord)) ? state + 1 : 3
        when 6
          if ((c).equal?(Character.new(?>.ord)))
            @mnemonics[link_index] = parse_mnemonics(buffer, start, tag_start, result)
            offset = result.length
            parse_mnemonics(buffer, link_start, endtag_start, result)
            @offsets[link_index] = Point.new(offset, result.length - 1)
            if ((@ids[link_index]).nil?)
              @ids[link_index] = String.new(buffer, link_start, endtag_start - link_start)
            end
            ((link_index += 1) - 1)
            start = tag_start = link_start = endtag_start = ref_start = index + 1
            state = 0
          else
            state = 3
          end
        when 7
          state = (c).equal?(Character.new(?r.ord)) ? state + 1 : 0
        when 8
          state = (c).equal?(Character.new(?e.ord)) ? state + 1 : 0
        when 9
          state = (c).equal?(Character.new(?f.ord)) ? state + 1 : 0
        when 10
          state = (c).equal?(Character.new(?=.ord)) ? state + 1 : 0
        when 11
          if ((c).equal?(Character.new(?".ord)))
            ((state += 1) - 1)
            ref_start = index + 1
          else
            state = 0
          end
        when 12
          if ((c).equal?(Character.new(?".ord)))
            @ids[link_index] = String.new(buffer, ref_start, index - ref_start)
            state = 2
          end
        when 13
          if (Character.is_whitespace(c))
            state = 0
          else
            if ((c).equal?(Character.new(?=.ord)))
              ((state += 1) - 1)
            end
          end
        when 14
          state = (c).equal?(Character.new(?".ord)) ? state + 1 : 0
        when 15
          if ((c).equal?(Character.new(?".ord)))
            state = 2
          end
        else
          state = 0
        end
        ((index += 1) - 1)
      end
      if (start < length_)
        tmp = parse_mnemonics(buffer, start, tag_start, result)
        mnemonic = parse_mnemonics(buffer, Math.max(tag_start, link_start), length_, result)
        if ((mnemonic).equal?(-1))
          mnemonic = tmp
        end
        @mnemonics[link_index] = mnemonic
      else
        @mnemonics[link_index] = -1
      end
      if (!(@offsets.attr_length).equal?(link_index))
        new_offsets = Array.typed(Point).new(link_index) { nil }
        System.arraycopy(@offsets, 0, new_offsets, 0, link_index)
        @offsets = new_offsets
        new_ids = Array.typed(String).new(link_index) { nil }
        System.arraycopy(@ids, 0, new_ids, 0, link_index)
        @ids = new_ids
        new_mnemonics = Array.typed(::Java::Int).new(link_index + 1) { 0 }
        System.arraycopy(@mnemonics, 0, new_mnemonics, 0, link_index + 1)
        @mnemonics = new_mnemonics
      end
      return result.to_s
    end
    
    typesig { [Array.typed(::Java::Char), ::Java::Int, ::Java::Int, StringBuffer] }
    def parse_mnemonics(buffer, start, end_, result)
      mnemonic = -1
      index = start
      while (index < end_)
        if ((buffer[index]).equal?(Character.new(?&.ord)))
          if (index + 1 < end_ && (buffer[index + 1]).equal?(Character.new(?&.ord)))
            result.append(buffer[index])
            ((index += 1) - 1)
          else
            mnemonic = result.length
          end
        else
          result.append(buffer[index])
        end
        ((index += 1) - 1)
      end
      return mnemonic
    end
    
    typesig { [::Java::Int, ::Java::Short, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Short, ::Java::Short, ::Java::Int] }
    def send_mouse_event(type, button, count, detail, send, chord, x, y, modifiers)
      result = super(type, button, count, detail, send, chord, x, y, modifiers)
      catch(:break_case) do
        case (type)
        when SWT::MouseDown
          if ((button).equal?(1) && (count).equal?(1))
            offset = @layout.get_offset(x, y, nil)
            old_selection_x = @selection.attr_x
            old_selection_y = @selection.attr_y
            @selection.attr_x = offset
            @selection.attr_y = -1
            if (!(old_selection_x).equal?(-1) && !(old_selection_y).equal?(-1))
              if (old_selection_x > old_selection_y)
                temp = old_selection_x
                old_selection_x = old_selection_y
                old_selection_y = temp
              end
              rectangle = @layout.get_bounds(old_selection_x, old_selection_y)
              redraw(rectangle.attr_x, rectangle.attr_y, rectangle.attr_width, rectangle.attr_height, false)
            end
            j = 0
            while j < @offsets.attr_length
              rects = get_rectangles(j)
              i = 0
              while i < rects.attr_length
                rectangle = rects[i]
                if (rectangle.contains(x, y))
                  @focus_index = j
                  redraw
                  set_focus
                  return result
                end
                ((i += 1) - 1)
              end
              ((j += 1) - 1)
            end
          end
        when SWT::MouseMove
          if (!((chord & 0x1)).equal?(0))
            old_selection = @selection.attr_y
            @selection.attr_y = @layout.get_offset(x, y, nil)
            if (!(@selection.attr_y).equal?(old_selection))
              new_selection = @selection.attr_y
              if (old_selection > new_selection)
                temp = old_selection
                old_selection = new_selection
                new_selection = temp
              end
              rectangle = @layout.get_bounds(old_selection, new_selection)
              redraw(rectangle.attr_x, rectangle.attr_y, rectangle.attr_width, rectangle.attr_height, false)
            end
          end
        when SWT::MouseUp
          if ((@focus_index).equal?(-1))
            throw :break_case, :thrown
          end
          if ((button).equal?(1))
            rects = get_rectangles(@focus_index)
            i = 0
            while i < rects.attr_length
              rectangle = rects[i]
              if (rectangle.contains(x, y))
                event = Event.new
                event.attr_text = @ids[@focus_index]
                notify_listeners(SWT::Selection, event)
                return result
              end
              ((i += 1) - 1)
            end
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize, events)
      result = super(x, y, width, height, move, resize, events)
      if (!((result & RESIZED)).equal?(0))
        @layout.set_width(width > 0 ? width : -1)
      end
      return result
    end
    
    typesig { [Font] }
    def set_font_style(font)
      super(font)
      @layout.set_font(get_font)
    end
    
    typesig { [String] }
    # Sets the receiver's text.
    # <p>
    # The string can contain both regular text and hyperlinks.  A hyperlink
    # is delimited by an anchor tag, &lt;A&gt; and &lt;/A&gt;.  Within an
    # anchor, a single HREF attribute is supported.  When a hyperlink is
    # selected, the text field of the selection event contains either the
    # text of the hyperlink or the value of its HREF, if one was specified.
    # In the rare case of identical hyperlinks within the same string, the
    # HREF tag can be used to distinguish between them.  The string may
    # include the mnemonic character and line delimiters.
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
      if ((string == @text))
        return
      end
      @text = string
      @layout.set_text(parse(string))
      @focus_index = @offsets.attr_length > 0 ? 0 : -1
      @selection.attr_x = @selection.attr_y = -1
      enabled = ((self.attr_state & DISABLED)).equal?(0)
      link_style = TextStyle.new(nil, enabled ? @link_color : @disabled_color, nil)
      link_style.attr_underline = true
      i = 0
      while i < @offsets.attr_length
        point = @offsets[i]
        @layout.set_style(link_style, point.attr_x, point.attr_y)
        ((i += 1) - 1)
      end
      # This code is intentionally commented. Mnemonics are
      # not drawn on the Macintosh.
      # 
      # TextStyle mnemonicStyle = new TextStyle (null, null, null);
      # mnemonicStyle.underline = true;
      # for (int i = 0; i < mnemonics.length; i++) {
      # int mnemonic  = mnemonics [i];
      # if (mnemonic != -1) {
      # layout.setStyle (mnemonicStyle, mnemonic, mnemonic);
      # }
      # }
      redraw
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def traversal_code(key, the_event)
      if ((@offsets.attr_length).equal?(0))
        return 0
      end
      bits = super(key, the_event)
      # Tab
      if ((key).equal?(48) && !(the_event).equal?(0))
        modifiers = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, 4, nil, modifiers)
        next_ = ((modifiers[0] & OS.attr_shift_key)).equal?(0)
        if (next_ && @focus_index < @offsets.attr_length - 1)
          return bits & ~SWT::TRAVERSE_TAB_NEXT
        end
        if (!next_ && @focus_index > 0)
          return bits & ~SWT::TRAVERSE_TAB_PREVIOUS
        end
      end
      return bits
    end
    
    private
    alias_method :initialize__link, :initialize
  end
  
end
