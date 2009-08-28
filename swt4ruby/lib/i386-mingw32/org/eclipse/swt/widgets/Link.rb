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
  module LinkImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Accessibility
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
    
    attr_accessor :mouse_down_index
    alias_method :attr_mouse_down_index, :mouse_down_index
    undef_method :mouse_down_index
    alias_method :attr_mouse_down_index=, :mouse_down_index=
    undef_method :mouse_down_index=
    
    # long
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    class_module.module_eval {
      const_set_lazy(:LINK_FOREGROUND) { RGB.new(0, 51, 153) }
      const_attr_reader  :LINK_FOREGROUND
      
      const_set_lazy(:LinkClass) { TCHAR.new(0, OS::WC_LINK, true) }
      const_attr_reader  :LinkClass
      
      when_class_loaded do
        if (OS::COMCTL32_MAJOR >= 6)
          lp_wnd_class = WNDCLASS.new
          OS._get_class_info(0, LinkClass, lp_wnd_class)
          const_set :LinkProc, lp_wnd_class.attr_lpfn_wnd_proc
          # Feature in Windows.  The SysLink window class
          # does not include CS_DBLCLKS.  This means that these
          # controls will not get double click messages such as
          # WM_LBUTTONDBLCLK.  The fix is to register a new
          # window class with CS_DBLCLKS.
          # 
          # NOTE:  Screen readers look for the exact class name
          # of the control in order to provide the correct kind
          # of assistance.  Therefore, it is critical that the
          # new window class have the same name.  It is possible
          # to register a local window class with the same name
          # as a global class.  Since bits that affect the class
          # are being changed, it is possible that other native
          # code, other than SWT, could create a control with
          # this class name, and fail unexpectedly.
          # 
          # long
          h_instance = OS._get_module_handle(nil)
          # long
          h_heap = OS._get_process_heap
          lp_wnd_class.attr_h_instance = h_instance
          lp_wnd_class.attr_style &= ~OS::CS_GLOBALCLASS
          lp_wnd_class.attr_style |= OS::CS_DBLCLKS
          byte_count = LinkClass.length * TCHAR.attr_sizeof
          # long
          lpsz_class_name = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
          OS._move_memory(lpsz_class_name, LinkClass, byte_count)
          lp_wnd_class.attr_lpsz_class_name = lpsz_class_name
          OS._register_class(lp_wnd_class)
          OS._heap_free(h_heap, 0, lpsz_class_name)
        else
          const_set :LinkProc, 0
        end
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
      @mouse_down_index = 0
      @font = 0
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def call_window_proc(hwnd, msg, w_param, l_param)
      if ((self.attr_handle).equal?(0))
        return 0
      end
      if (!(LinkProc).equal?(0))
        # Feature in Windows.  By convention, native Windows controls
        # check for a non-NULL wParam, assume that it is an HDC and
        # paint using that device.  The SysLink control does not.
        # The fix is to check for an HDC and use WM_PRINTCLIENT.
        case (msg)
        when OS::WM_PAINT
          if (!(w_param).equal?(0))
            OS._send_message(hwnd, OS::WM_PRINTCLIENT, w_param, 0)
            return 0
          end
        end
        return OS._call_window_proc(LinkProc, hwnd, msg, w_param, l_param)
      end
      return OS._def_window_proc(hwnd, msg, w_param, l_param)
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
      if (OS::COMCTL32_MAJOR >= 6)
        # long
        h_dc = OS._get_dc(self.attr_handle)
        # long
        new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
        # long
        old_font = OS._select_object(h_dc, new_font)
        if (@text.length > 0)
          buffer = TCHAR.new(get_code_page, parse(@text), false)
          rect = RECT.new
          flags = OS::DT_CALCRECT | OS::DT_NOPREFIX
          if (!(w_hint).equal?(SWT::DEFAULT))
            flags |= OS::DT_WORDBREAK
            rect.attr_right = w_hint
          end
          OS._draw_text(h_dc, buffer, buffer.length, rect, flags)
          width = rect.attr_right - rect.attr_left
          height = rect.attr_bottom
        else
          lptm = OS::IsUnicode ? TEXTMETRICW.new : TEXTMETRICA.new
          OS._get_text_metrics(h_dc, lptm)
          width = 0
          height = lptm.attr_tm_height
        end
        if (!(new_font).equal?(0))
          OS._select_object(h_dc, old_font)
        end
        OS._release_dc(self.attr_handle, h_dc)
      else
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
      end
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
      super
      self.attr_state |= THEME_BACKGROUND
      if (OS::COMCTL32_MAJOR < 6)
        @layout = TextLayout.new(self.attr_display)
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(4, 10))
          @link_color = Color.win32_new(self.attr_display, OS._get_sys_color(OS::COLOR_HOTLIGHT))
        else
          @link_color = Color.new(self.attr_display, LINK_FOREGROUND)
        end
        @disabled_color = Color.win32_new(self.attr_display, OS._get_sys_color(OS::COLOR_GRAYTEXT))
        @offsets = Array.typed(Point).new(0) { nil }
        @ids = Array.typed(String).new(0) { nil }
        @mnemonics = Array.typed(::Java::Int).new(0) { 0 }
        @selection = Point.new(-1, -1)
        @focus_index = @mouse_down_index = -1
      end
    end
    
    typesig { [] }
    def create_widget
      super
      @text = ""
      if (OS::COMCTL32_MAJOR < 6)
        if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
          @layout.set_orientation(SWT::RIGHT_TO_LEFT)
        end
        init_accessible
      end
    end
    
    typesig { [SwtGC, RECT] }
    def draw_widget(gc, rect)
      draw_background(gc.attr_handle, rect)
      sel_start = @selection.attr_x
      sel_end = @selection.attr_y
      if (sel_start > sel_end)
        sel_start = @selection.attr_y
        sel_end = @selection.attr_x
      end
      # temporary code to disable text selection
      sel_start = sel_end = -1
      if (!OS._is_window_enabled(self.attr_handle))
        gc.set_foreground(@disabled_color)
      end
      @layout.draw(gc, 0, 0, sel_start, sel_end, nil, nil)
      if (has_focus && !(@focus_index).equal?(-1))
        rects = get_rectangles(@focus_index)
        i = 0
        while i < rects.attr_length
          rectangle = rects[i]
          gc.draw_focus(rectangle.attr_x, rectangle.attr_y, rectangle.attr_width, rectangle.attr_height)
          i += 1
        end
      end
      if (hooks(SWT::Paint) || filters(SWT::Paint))
        event = Event.new
        event.attr_gc = gc
        event.attr_x = rect.attr_left
        event.attr_y = rect.attr_top
        event.attr_width = rect.attr_right - rect.attr_left
        event.attr_height = rect.attr_bottom - rect.attr_top
        send_event(SWT::Paint, event)
        event.attr_gc = nil
      end
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      if (OS::COMCTL32_MAJOR >= 6)
        item = LITEM.new
        item.attr_mask = OS::LIF_ITEMINDEX | OS::LIF_STATE
        item.attr_state_mask = OS::LIS_ENABLED
        item.attr_state = enabled ? OS::LIS_ENABLED : 0
        while (!(OS._send_message(self.attr_handle, OS::LM_SETITEM, 0, item)).equal?(0))
          item.attr_i_link += 1
        end
      else
        link_style = TextStyle.new(nil, enabled ? @link_color : @disabled_color, nil)
        link_style.attr_underline = true
        i = 0
        while i < @offsets.attr_length
          point = @offsets[i]
          @layout.set_style(link_style, point.attr_x, point.attr_y)
          i += 1
        end
        redraw
      end
      # Feature in Windows.  For some reason, setting
      # LIS_ENABLED state using LM_SETITEM causes the
      # SysLink to become enabled.  To be specific,
      # calling IsWindowEnabled() returns true.  The
      # fix is disable the SysLink after LM_SETITEM.
      super(enabled)
    end
    
    typesig { [] }
    def init_accessible
      accessible = get_accessible
      accessible.add_accessible_listener(Class.new(AccessibleAdapter.class == Class ? AccessibleAdapter : Object) do
        extend LocalClass
        include_class_members Link
        include AccessibleAdapter if AccessibleAdapter.class == Module
        
        typesig { [AccessibleEvent] }
        define_method :get_name do |e|
          e.attr_result = parse(self.attr_text)
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      accessible.add_accessible_control_listener(Class.new(AccessibleControlAdapter.class == Class ? AccessibleControlAdapter : Object) do
        extend LocalClass
        include_class_members Link
        include AccessibleControlAdapter if AccessibleControlAdapter.class == Module
        
        typesig { [AccessibleControlEvent] }
        define_method :get_child_at_point do |e|
          e.attr_child_id = ACC::CHILDID_SELF
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_location do |e|
          rect = self.attr_display.map(get_parent, nil, get_bounds)
          e.attr_x = rect.attr_x
          e.attr_y = rect.attr_y
          e.attr_width = rect.attr_width
          e.attr_height = rect.attr_height
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_child_count do |e|
          e.attr_detail = 0
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_role do |e|
          e.attr_detail = ACC::ROLE_LINK
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_state do |e|
          e.attr_detail = ACC::STATE_FOCUSABLE
          if (has_focus)
            e.attr_detail |= ACC::STATE_FOCUSED
          end
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_default_action do |e|
          e.attr_result = SWT.get_message("SWT_Press") # $NON-NLS-1$
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_selection do |e|
          if (has_focus)
            e.attr_child_id = ACC::CHILDID_SELF
          end
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_focus do |e|
          if (has_focus)
            e.attr_child_id = ACC::CHILDID_SELF
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
        line_start += 1
      end
      line_end = 1
      while (point.attr_y > line_offsets[line_end])
        line_end += 1
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
            i += 1
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
            state += 1
          end
        when 1
          if ((c).equal?(Character.new(?a.ord)))
            state += 1
          end
        when 2
          case (c)
          when Character.new(?h.ord)
            state = 7
          when Character.new(?>.ord)
            link_start = index + 1
            state += 1
          else
            if (Character.is_whitespace(c))
            else
              state = 13
            end
          end
        when 3
          if ((c).equal?(Character.new(?<.ord)))
            endtag_start = index
            state += 1
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
            link_index += 1
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
            state += 1
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
              state += 1
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
        index += 1
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
            index += 1
          else
            mnemonic = result.length
          end
        else
          result.append(buffer[index])
        end
        index += 1
      end
      return mnemonic
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
      @disabled_color = nil
      @offsets = nil
      @ids = nil
      @mnemonics = nil
      @text = RJava.cast_to_string(nil)
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
      if (OS::COMCTL32_MAJOR >= 6)
        enabled = OS._is_window_enabled(self.attr_handle)
        # Bug in Windows.  For some reason, when SetWindowText()
        # is used to set the text of a link control to the empty
        # string, the old text remains.  The fix is to set the
        # text to a space instead.
        if ((string.length).equal?(0))
          string = " "
        end # $NON-NLS-1$
        buffer = TCHAR.new(get_code_page, string, true)
        OS._set_window_text(self.attr_handle, buffer)
        parse(@text)
        enable_widget(enabled)
      else
        @layout.set_text(parse(@text))
        @focus_index = @offsets.attr_length > 0 ? 0 : -1
        @selection.attr_x = @selection.attr_y = -1
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        if (@offsets.attr_length > 0)
          bits |= OS::WS_TABSTOP
        else
          bits &= ~OS::WS_TABSTOP
        end
        OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits)
        enabled = OS._is_window_enabled(self.attr_handle)
        link_style = TextStyle.new(nil, enabled ? @link_color : @disabled_color, nil)
        link_style.attr_underline = true
        i = 0
        while i < @offsets.attr_length
          point = @offsets[i]
          @layout.set_style(link_style, point.attr_x, point.attr_y)
          i += 1
        end
        mnemonic_style = TextStyle.new(nil, nil, nil)
        mnemonic_style.attr_underline = true
        i_ = 0
        while i_ < @mnemonics.attr_length
          mnemonic = @mnemonics[i_]
          if (!(mnemonic).equal?(-1))
            @layout.set_style(mnemonic_style, mnemonic, mnemonic)
          end
          i_ += 1
        end
        redraw
      end
    end
    
    typesig { [] }
    def widget_style
      bits = super
      return bits | OS::WS_TABSTOP
    end
    
    typesig { [] }
    def window_class
      return OS::COMCTL32_MAJOR >= 6 ? LinkClass : self.attr_display.attr_window_class
    end
    
    typesig { [] }
    # long
    def window_proc
      return !(LinkProc).equal?(0) ? LinkProc : self.attr_display.attr_window_proc
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_char(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (OS::COMCTL32_MAJOR < 6)
        if ((@focus_index).equal?(-1))
          return result
        end
        # 64
        case (RJava.cast_to_int(w_param))
        when Character.new(?\s.ord), SWT::CR
          event = Event.new
          event.attr_text = @ids[@focus_index]
          send_event(SWT::Selection, event)
        when SWT::TAB
          next_ = OS._get_key_state(OS::VK_SHIFT) >= 0
          if (next_)
            if (@focus_index < @offsets.attr_length - 1)
              @focus_index += 1
              redraw
            end
          else
            if (@focus_index > 0)
              @focus_index -= 1
              redraw
            end
          end
        end
      else
        # 64
        case (RJava.cast_to_int(w_param))
        when Character.new(?\s.ord), SWT::CR, SWT::TAB
          # NOTE: Call the window proc with WM_KEYDOWN rather than WM_CHAR
          # so that the key that was ignored during WM_KEYDOWN is processed.
          # This allows the application to cancel an operation that is normally
          # performed in WM_KEYDOWN from WM_CHAR.
          # 
          # long
          code = call_window_proc(self.attr_handle, OS::WM_KEYDOWN, w_param, l_param)
          return LRESULT.new(code)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_getdlgcode(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      index = 0
      count = 0
      # long
      code = 0
      if (OS::COMCTL32_MAJOR >= 6)
        item = LITEM.new
        item.attr_mask = OS::LIF_ITEMINDEX | OS::LIF_STATE
        item.attr_state_mask = OS::LIS_FOCUSED
        index = 0
        while (!(OS._send_message(self.attr_handle, OS::LM_GETITEM, 0, item)).equal?(0))
          if (!((item.attr_state & OS::LIS_FOCUSED)).equal?(0))
            index = item.attr_i_link
          end
          item.attr_i_link += 1
        end
        count = item.attr_i_link
        code = call_window_proc(self.attr_handle, OS::WM_GETDLGCODE, w_param, l_param)
      else
        index = @focus_index
        count = @offsets.attr_length
      end
      if ((count).equal?(0))
        return LRESULT.new(code | OS::DLGC_STATIC)
      end
      next_ = OS._get_key_state(OS::VK_SHIFT) >= 0
      if (next_ && index < count - 1)
        return LRESULT.new(code | OS::DLGC_WANTTAB)
      end
      if (!next_ && index > 0)
        return LRESULT.new(code | OS::DLGC_WANTTAB)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_getfont(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # long
      code = call_window_proc(self.attr_handle, OS::WM_GETFONT, w_param, l_param)
      if (!(code).equal?(0))
        return LRESULT.new(code)
      end
      if ((@font).equal?(0))
        @font = default_font
      end
      return LRESULT.new(@font)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_keydown(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (OS::COMCTL32_MAJOR >= 6)
        # 64
        case (RJava.cast_to_int(w_param))
        when OS::VK_SPACE, OS::VK_RETURN, OS::VK_TAB
          # Ensure that the window proc does not process VK_SPACE,
          # VK_RETURN or VK_TAB so that it can be handled in WM_CHAR.
          # This allows the application to cancel an operation that
          # is normally performed in WM_KEYDOWN from WM_CHAR.
          return LRESULT::ZERO
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_killfocus(w_param, l_param)
      result = super(w_param, l_param)
      if (OS::COMCTL32_MAJOR < 6)
        redraw
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondown(w_param, l_param)
      result = super(w_param, l_param)
      if ((result).equal?(LRESULT::ZERO))
        return result
      end
      if (OS::COMCTL32_MAJOR < 6)
        if (!(@focus_index).equal?(-1))
          set_focus
        end
        x = OS._get_x_lparam(l_param)
        y = OS._get_y_lparam(l_param)
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
          rect = @layout.get_bounds(old_selection_x, old_selection_y)
          redraw(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height, false)
        end
        j = 0
        while j < @offsets.attr_length
          rects = get_rectangles(j)
          i = 0
          while i < rects.attr_length
            rect = rects[i]
            if (rect.contains(x, y))
              if (!(j).equal?(@focus_index))
                redraw
              end
              @focus_index = @mouse_down_index = j
              return result
            end
            i += 1
          end
          j += 1
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttonup(w_param, l_param)
      result = super(w_param, l_param)
      if ((result).equal?(LRESULT::ZERO))
        return result
      end
      if (OS::COMCTL32_MAJOR < 6)
        if ((@mouse_down_index).equal?(-1))
          return result
        end
        x = OS._get_x_lparam(l_param)
        y = OS._get_y_lparam(l_param)
        rects = get_rectangles(@mouse_down_index)
        i = 0
        while i < rects.attr_length
          rect = rects[i]
          if (rect.contains(x, y))
            event = Event.new
            event.attr_text = @ids[@mouse_down_index]
            send_event(SWT::Selection, event)
            break
          end
          i += 1
        end
      end
      @mouse_down_index = -1
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_nchittest(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows. For WM_NCHITTEST, the Syslink window proc
      # returns HTTRANSPARENT when mouse is over plain text. The fix is
      # to always return HTCLIENT.
      if (OS::COMCTL32_MAJOR >= 6)
        return LRESULT.new(OS::HTCLIENT)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mousemove(w_param, l_param)
      result = super(w_param, l_param)
      if (OS::COMCTL32_MAJOR < 6)
        x = OS._get_x_lparam(l_param)
        y = OS._get_y_lparam(l_param)
        if (OS._get_key_state(OS::VK_LBUTTON) < 0)
          old_selection = @selection.attr_y
          @selection.attr_y = @layout.get_offset(x, y, nil)
          if (!(@selection.attr_y).equal?(old_selection))
            new_selection = @selection.attr_y
            if (old_selection > new_selection)
              temp = old_selection
              old_selection = new_selection
              new_selection = temp
            end
            rect = @layout.get_bounds(old_selection, new_selection)
            redraw(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height, false)
          end
        else
          j = 0
          while j < @offsets.attr_length
            rects = get_rectangles(j)
            i = 0
            while i < rects.attr_length
              rect = rects[i]
              if (rect.contains(x, y))
                set_cursor(self.attr_display.get_system_cursor(SWT::CURSOR_HAND))
                return result
              end
              i += 1
            end
            j += 1
          end
          set_cursor(nil)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_paint(w_param, l_param)
      if (OS::COMCTL32_MAJOR >= 6)
        return super(w_param, l_param)
      end
      ps = PAINTSTRUCT.new
      data = SwtGCData.new
      data.attr_ps = ps
      data.attr_hwnd = self.attr_handle
      gc = new__gc(data)
      if (!(gc).nil?)
        width = ps.attr_right - ps.attr_left
        height = ps.attr_bottom - ps.attr_top
        if (!(width).equal?(0) && !(height).equal?(0))
          rect = RECT.new
          OS._set_rect(rect, ps.attr_left, ps.attr_top, ps.attr_right, ps.attr_bottom)
          draw_widget(gc, rect)
        end
        gc.dispose
      end
      return LRESULT::ZERO
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_printclient(w_param, l_param)
      result = super(w_param, l_param)
      if (OS::COMCTL32_MAJOR < 6)
        rect = RECT.new
        OS._get_client_rect(self.attr_handle, rect)
        data = SwtGCData.new
        data.attr_device = self.attr_display
        data.attr_foreground = get_foreground_pixel
        gc = SwtGC.win32_new(w_param, data)
        draw_widget(gc, rect)
        gc.dispose
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setfocus(w_param, l_param)
      result = super(w_param, l_param)
      if (OS::COMCTL32_MAJOR < 6)
        redraw
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setfont(w_param, l_param)
      if (OS::COMCTL32_MAJOR < 6)
        @layout.set_font(Font.win32_new(self.attr_display, w_param))
      end
      if (!(l_param).equal?(0))
        OS._invalidate_rect(self.attr_handle, nil, true)
      end
      return super(@font = w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_size(w_param, l_param)
      result = super(w_param, l_param)
      if (OS::COMCTL32_MAJOR < 6)
        rect = RECT.new
        OS._get_client_rect(self.attr_handle, rect)
        @layout.set_width(rect.attr_right > 0 ? rect.attr_right : -1)
        redraw
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_color_child(w_param, l_param)
      result = super(w_param, l_param)
      # Feature in Windows.  When a SysLink is disabled, it does
      # not gray out the non-link portion of the text.  The fix
      # is to set the text color to the system gray color.
      if (OS::COMCTL32_MAJOR >= 6)
        if (!OS._is_window_enabled(self.attr_handle))
          OS._set_text_color(w_param, OS._get_sys_color(OS::COLOR_GRAYTEXT))
          if ((result).nil?)
            back_pixel = get_background_pixel
            OS._set_bk_color(w_param, back_pixel)
            # long
            h_brush = find_brush(back_pixel, OS::BS_SOLID)
            return LRESULT.new(h_brush)
          end
        end
      end
      return result
    end
    
    typesig { [NMHDR, ::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_notify_child(hdr, w_param, l_param)
      if (OS::COMCTL32_MAJOR >= 6)
        case (hdr.attr_code)
        when OS::NM_RETURN, OS::NM_CLICK
          item = NMLINK.new
          OS._move_memory(item, l_param, NMLINK.attr_sizeof)
          event = Event.new
          event.attr_text = @ids[item.attr_i_link]
          send_event(SWT::Selection, event)
        end
      end
      return super(hdr, w_param, l_param)
    end
    
    private
    alias_method :initialize__link, :initialize
  end
  
end
