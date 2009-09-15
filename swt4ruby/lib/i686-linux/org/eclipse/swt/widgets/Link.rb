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
  module LinkImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Gtk
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
  # @noextend This class is not intended to be subclassed by clients.
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
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE | THEME_BACKGROUND
      self.attr_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
      if ((self.attr_handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_fixed_set_has_window(self.attr_handle, true)
      OS._gtk_widget_set_flags(self.attr_handle, OS::GTK_CAN_FOCUS)
      @layout = TextLayout.new(self.attr_display)
      @layout.set_orientation(!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0) ? SWT::RIGHT_TO_LEFT : SWT::LEFT_TO_RIGHT)
      @link_color = Color.new(self.attr_display, LINK_FOREGROUND)
      @disabled_color = Color.new(self.attr_display, LINK_DISABLED_FOREGROUND)
      @offsets = Array.typed(Point).new(0) { nil }
      @ids = Array.typed(String).new(0) { nil }
      @mnemonics = Array.typed(::Java::Int).new(0) { 0 }
      @selection = Point.new(-1, -1)
      @focus_index = -1
    end
    
    typesig { [::Java::Int] }
    def create_widget(index)
      super(index)
      @layout.set_font(get_font)
      @text = ""
      init_accessible
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      super(enabled)
      if (is_disposed)
        return
      end
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
    
    typesig { [] }
    def fix_style
      fix_style(self.attr_handle)
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
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
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
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
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
    def get_client_width
      return !((self.attr_state & ZERO_WIDTH)).equal?(0) ? 0 : OS._gtk_widget_width(self.attr_handle)
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
      OS.memmove___org_eclipse_swt_widgets_link_1(gdk_event, event, GdkEventButton.attr_sizeof)
      if ((gdk_event.attr_button).equal?(1) && (gdk_event.attr_type).equal?(OS::GDK_BUTTON_PRESS))
        if (!(@focus_index).equal?(-1))
          set_focus
        end
        x = RJava.cast_to_int(gdk_event.attr_x)
        y = RJava.cast_to_int(gdk_event.attr_y)
        if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
          x = get_client_width - x
        end
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
              @focus_index = j
              redraw
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
    # long
    def gtk_button_release_event(widget, event)
      # long
      result = super(widget, event)
      if (!(result).equal?(0))
        return result
      end
      if ((@focus_index).equal?(-1))
        return result
      end
      gdk_event = GdkEventButton.new
      OS.memmove___org_eclipse_swt_widgets_link_3(gdk_event, event, GdkEventButton.attr_sizeof)
      if ((gdk_event.attr_button).equal?(1))
        x = RJava.cast_to_int(gdk_event.attr_x)
        y = RJava.cast_to_int(gdk_event.attr_y)
        if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
          x = get_client_width - x
        end
        rects = get_rectangles(@focus_index)
        i = 0
        while i < rects.attr_length
          rect = rects[i]
          if (rect.contains(x, y))
            ev = Event.new
            ev.attr_text = @ids[@focus_index]
            send_event(SWT::Selection, ev)
            return result
          end
          i += 1
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_event_after(widget, gdk_event)
      # long
      result = super(widget, gdk_event)
      event = GdkEvent.new
      OS.memmove___org_eclipse_swt_widgets_link_5(event, gdk_event, GdkEvent.attr_sizeof)
      case (event.attr_type)
      when OS::GDK_FOCUS_CHANGE
        redraw
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_expose_event(widget, event_ptr)
      if (!((self.attr_state & OBSCURED)).equal?(0))
        return 0
      end
      gdk_event = GdkEventExpose.new
      OS.memmove___org_eclipse_swt_widgets_link_7(gdk_event, event_ptr, GdkEventExpose.attr_sizeof)
      data = SwtGCData.new
      data.attr_damage_rgn = gdk_event.attr_region
      gc = SwtGC.gtk_new(self, data)
      OS.gdk_gc_set_clip_region(gc.attr_handle, gdk_event.attr_region)
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
      if (has_focus && !(@focus_index).equal?(-1))
        rects = get_rectangles(@focus_index)
        i = 0
        while i < rects.attr_length
          rect = rects[i]
          gc.draw_focus(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
          i += 1
        end
      end
      if (hooks(SWT::Paint) || filters(SWT::Paint))
        event = Event.new
        event.attr_count = gdk_event.attr_count
        event.attr_x = gdk_event.attr_area_x
        event.attr_y = gdk_event.attr_area_y
        event.attr_width = gdk_event.attr_area_width
        event.attr_height = gdk_event.attr_area_height
        if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
          event.attr_x = get_client_width - event.attr_width - event.attr_x
        end
        event.attr_gc = gc
        send_event(SWT::Paint, event)
        event.attr_gc = nil
      end
      gc.dispose
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_key_press_event(widget, event_ptr)
      # long
      result = super(widget, event_ptr)
      if (!(result).equal?(0))
        return result
      end
      if ((@focus_index).equal?(-1))
        return result
      end
      gdk_event = GdkEventKey.new
      OS.memmove___org_eclipse_swt_widgets_link_9(gdk_event, event_ptr, GdkEventKey.attr_sizeof)
      case (gdk_event.attr_keyval)
      when OS::GDK_Return, OS::GDK_KP_Enter, OS::GDK_space
        event = Event.new
        event.attr_text = @ids[@focus_index]
        send_event(SWT::Selection, event)
      when OS::GDK_Tab
        if (@focus_index < @offsets.attr_length - 1)
          @focus_index += 1
          redraw
        end
      when OS::GDK_ISO_Left_Tab
        if (@focus_index > 0)
          @focus_index -= 1
          redraw
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_motion_notify_event(widget, event)
      # long
      result = super(widget, event)
      if (!(result).equal?(0))
        return result
      end
      gdk_event = GdkEventMotion.new
      OS.memmove___org_eclipse_swt_widgets_link_11(gdk_event, event, GdkEventMotion.attr_sizeof)
      x = RJava.cast_to_int(gdk_event.attr_x)
      y = RJava.cast_to_int(gdk_event.attr_y)
      if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
        x = get_client_width - x
      end
      if (!((gdk_event.attr_state & OS::GDK_BUTTON1_MASK)).equal?(0))
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize)
      result = super(x, y, width, height, move, resize)
      if (!((result & RESIZED)).equal?(0))
        @layout.set_width(width > 0 ? width : -1)
        redraw
      end
      return result
    end
    
    typesig { [::Java::Int] }
    # long
    def set_font_description(font)
      super(font)
      @layout.set_font(Font.gtk_new(self.attr_display, font))
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
    # HREF attribute can be used to distinguish between them.  The string may
    # include the mnemonic character and line delimiters. The only delimiter
    # the HREF attribute supports is the quotation mark (").
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
      bidi_segments = Array.typed(::Java::Int).new(@offsets.attr_length * 2) { 0 }
      i = 0
      while i < @offsets.attr_length
        point = @offsets[i]
        @layout.set_style(link_style, point.attr_x, point.attr_y)
        bidi_segments[i * 2] = point.attr_x
        bidi_segments[i * 2 + 1] = point.attr_y + 1
        i += 1
      end
      @layout.set_segments(bidi_segments)
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
    
    typesig { [] }
    def show_widget
      super
      fix_style(self.attr_handle)
    end
    
    typesig { [::Java::Int, GdkEventKey] }
    def traversal_code(key, event)
      if ((@offsets.attr_length).equal?(0))
        return 0
      end
      bits = super(key, event)
      if ((key).equal?(OS::GDK_Tab) && @focus_index < @offsets.attr_length - 1)
        return bits & ~SWT::TRAVERSE_TAB_NEXT
      end
      if ((key).equal?(OS::GDK_ISO_Left_Tab) && @focus_index > 0)
        return bits & ~SWT::TRAVERSE_TAB_PREVIOUS
      end
      return bits
    end
    
    private
    alias_method :initialize__link, :initialize
  end
  
end
