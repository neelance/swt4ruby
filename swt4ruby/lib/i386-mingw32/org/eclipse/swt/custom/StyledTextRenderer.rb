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
  module StyledTextRendererImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include_const ::Org::Eclipse::Swt, :SWT
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # A StyledTextRenderer renders the content of a StyledText widget.
  # This class can be used to render to the display or to a printer.
  class StyledTextRenderer 
    include_class_members StyledTextRendererImports
    
    attr_accessor :device
    alias_method :attr_device, :device
    undef_method :device
    alias_method :attr_device=, :device=
    undef_method :device=
    
    attr_accessor :styled_text
    alias_method :attr_styled_text, :styled_text
    undef_method :styled_text
    alias_method :attr_styled_text=, :styled_text=
    undef_method :styled_text=
    
    attr_accessor :content
    alias_method :attr_content, :content
    undef_method :content
    alias_method :attr_content=, :content=
    undef_method :content=
    
    # Font info
    attr_accessor :regular_font
    alias_method :attr_regular_font, :regular_font
    undef_method :regular_font
    alias_method :attr_regular_font=, :regular_font=
    undef_method :regular_font=
    
    attr_accessor :bold_font
    alias_method :attr_bold_font, :bold_font
    undef_method :bold_font
    alias_method :attr_bold_font=, :bold_font=
    undef_method :bold_font=
    
    attr_accessor :italic_font
    alias_method :attr_italic_font, :italic_font
    undef_method :italic_font
    alias_method :attr_italic_font=, :italic_font=
    undef_method :italic_font=
    
    attr_accessor :bold_italic_font
    alias_method :attr_bold_italic_font, :bold_italic_font
    undef_method :bold_italic_font
    alias_method :attr_bold_italic_font=, :bold_italic_font=
    undef_method :bold_italic_font=
    
    attr_accessor :tab_width
    alias_method :attr_tab_width, :tab_width
    undef_method :tab_width
    alias_method :attr_tab_width=, :tab_width=
    undef_method :tab_width=
    
    attr_accessor :ascent
    alias_method :attr_ascent, :ascent
    undef_method :ascent
    alias_method :attr_ascent=, :ascent=
    undef_method :ascent=
    
    attr_accessor :descent
    alias_method :attr_descent, :descent
    undef_method :descent
    alias_method :attr_descent=, :descent=
    undef_method :descent=
    
    attr_accessor :average_char_width
    alias_method :attr_average_char_width, :average_char_width
    undef_method :average_char_width
    alias_method :attr_average_char_width=, :average_char_width=
    undef_method :average_char_width=
    
    # Line data
    attr_accessor :top_index
    alias_method :attr_top_index, :top_index
    undef_method :top_index
    alias_method :attr_top_index=, :top_index=
    undef_method :top_index=
    
    attr_accessor :layouts
    alias_method :attr_layouts, :layouts
    undef_method :layouts
    alias_method :attr_layouts=, :layouts=
    undef_method :layouts=
    
    attr_accessor :line_count
    alias_method :attr_line_count, :line_count
    undef_method :line_count
    alias_method :attr_line_count=, :line_count=
    undef_method :line_count=
    
    attr_accessor :line_width
    alias_method :attr_line_width, :line_width
    undef_method :line_width
    alias_method :attr_line_width=, :line_width=
    undef_method :line_width=
    
    attr_accessor :line_height
    alias_method :attr_line_height, :line_height
    undef_method :line_height
    alias_method :attr_line_height=, :line_height=
    undef_method :line_height=
    
    attr_accessor :lines
    alias_method :attr_lines, :lines
    undef_method :lines
    alias_method :attr_lines=, :lines=
    undef_method :lines=
    
    attr_accessor :max_width
    alias_method :attr_max_width, :max_width
    undef_method :max_width
    alias_method :attr_max_width=, :max_width=
    undef_method :max_width=
    
    attr_accessor :max_width_line_index
    alias_method :attr_max_width_line_index, :max_width_line_index
    undef_method :max_width_line_index
    alias_method :attr_max_width_line_index=, :max_width_line_index=
    undef_method :max_width_line_index=
    
    attr_accessor :idle_running
    alias_method :attr_idle_running, :idle_running
    undef_method :idle_running
    alias_method :attr_idle_running=, :idle_running=
    undef_method :idle_running=
    
    # Bullet
    attr_accessor :bullets
    alias_method :attr_bullets, :bullets
    undef_method :bullets
    alias_method :attr_bullets=, :bullets=
    undef_method :bullets=
    
    attr_accessor :bullets_indices
    alias_method :attr_bullets_indices, :bullets_indices
    undef_method :bullets_indices
    alias_method :attr_bullets_indices=, :bullets_indices=
    undef_method :bullets_indices=
    
    attr_accessor :redraw_lines
    alias_method :attr_redraw_lines, :redraw_lines
    undef_method :redraw_lines
    alias_method :attr_redraw_lines=, :redraw_lines=
    undef_method :redraw_lines=
    
    # Style data
    attr_accessor :ranges
    alias_method :attr_ranges, :ranges
    undef_method :ranges
    alias_method :attr_ranges=, :ranges=
    undef_method :ranges=
    
    attr_accessor :style_count
    alias_method :attr_style_count, :style_count
    undef_method :style_count
    alias_method :attr_style_count=, :style_count=
    undef_method :style_count=
    
    attr_accessor :styles
    alias_method :attr_styles, :styles
    undef_method :styles
    alias_method :attr_styles=, :styles=
    undef_method :styles=
    
    attr_accessor :styles_set
    alias_method :attr_styles_set, :styles_set
    undef_method :styles_set
    alias_method :attr_styles_set=, :styles_set=
    undef_method :styles_set=
    
    attr_accessor :styles_set_count
    alias_method :attr_styles_set_count, :styles_set_count
    undef_method :styles_set_count
    alias_method :attr_styles_set_count=, :styles_set_count=
    undef_method :styles_set_count=
    
    class_module.module_eval {
      const_set_lazy(:BULLET_MARGIN) { 8 }
      const_attr_reader  :BULLET_MARGIN
      
      const_set_lazy(:COMPACT_STYLES) { true }
      const_attr_reader  :COMPACT_STYLES
      
      const_set_lazy(:MERGE_STYLES) { true }
      const_attr_reader  :MERGE_STYLES
      
      const_set_lazy(:GROW) { 32 }
      const_attr_reader  :GROW
      
      const_set_lazy(:IDLE_TIME) { 50 }
      const_attr_reader  :IDLE_TIME
      
      const_set_lazy(:CACHE_SIZE) { 128 }
      const_attr_reader  :CACHE_SIZE
      
      const_set_lazy(:BACKGROUND) { 1 << 0 }
      const_attr_reader  :BACKGROUND
      
      const_set_lazy(:ALIGNMENT) { 1 << 1 }
      const_attr_reader  :ALIGNMENT
      
      const_set_lazy(:INDENT) { 1 << 2 }
      const_attr_reader  :INDENT
      
      const_set_lazy(:JUSTIFY) { 1 << 3 }
      const_attr_reader  :JUSTIFY
      
      const_set_lazy(:SEGMENTS) { 1 << 5 }
      const_attr_reader  :SEGMENTS
      
      const_set_lazy(:LineInfo) { Class.new do
        include_class_members StyledTextRenderer
        
        attr_accessor :flags
        alias_method :attr_flags, :flags
        undef_method :flags
        alias_method :attr_flags=, :flags=
        undef_method :flags=
        
        attr_accessor :background
        alias_method :attr_background, :background
        undef_method :background
        alias_method :attr_background=, :background=
        undef_method :background=
        
        attr_accessor :alignment
        alias_method :attr_alignment, :alignment
        undef_method :alignment
        alias_method :attr_alignment=, :alignment=
        undef_method :alignment=
        
        attr_accessor :indent
        alias_method :attr_indent, :indent
        undef_method :indent
        alias_method :attr_indent=, :indent=
        undef_method :indent=
        
        attr_accessor :justify
        alias_method :attr_justify, :justify
        undef_method :justify
        alias_method :attr_justify=, :justify=
        undef_method :justify=
        
        attr_accessor :segments
        alias_method :attr_segments, :segments
        undef_method :segments
        alias_method :attr_segments=, :segments=
        undef_method :segments=
        
        typesig { [] }
        def initialize
          @flags = 0
          @background = nil
          @alignment = 0
          @indent = 0
          @justify = false
          @segments = nil
        end
        
        typesig { [class_self::LineInfo] }
        def initialize(info)
          @flags = 0
          @background = nil
          @alignment = 0
          @indent = 0
          @justify = false
          @segments = nil
          if (!(info).nil?)
            @flags = info.attr_flags
            @background = info.attr_background
            @alignment = info.attr_alignment
            @indent = info.attr_indent
            @justify = info.attr_justify
            @segments = info.attr_segments
          end
        end
        
        private
        alias_method :initialize__line_info, :initialize
      end }
    }
    
    typesig { [Device, StyledText] }
    def initialize(device, styled_text)
      @device = nil
      @styled_text = nil
      @content = nil
      @regular_font = nil
      @bold_font = nil
      @italic_font = nil
      @bold_italic_font = nil
      @tab_width = 0
      @ascent = 0
      @descent = 0
      @average_char_width = 0
      @top_index = -1
      @layouts = nil
      @line_count = 0
      @line_width = nil
      @line_height = nil
      @lines = nil
      @max_width = 0
      @max_width_line_index = 0
      @idle_running = false
      @bullets = nil
      @bullets_indices = nil
      @redraw_lines = nil
      @ranges = nil
      @style_count = 0
      @styles = nil
      @styles_set = nil
      @styles_set_count = 0
      @device = device
      @styled_text = styled_text
    end
    
    typesig { [Array.typed(::Java::Int), Array.typed(StyleRange), ::Java::Int, ::Java::Int, ::Java::Int] }
    def add_merge(merge_ranges, merge_styles, merge_count, modify_start, modify_end)
      range_count = @style_count << 1
      end_style = nil
      end_start = 0
      end_length = 0
      if (modify_end < range_count)
        end_style = @styles[modify_end >> 1]
        end_start = @ranges[modify_end]
        end_length = @ranges[modify_end + 1]
      end
      grow = merge_count - (modify_end - modify_start)
      if (range_count + grow >= @ranges.attr_length)
        tmp_ranges = Array.typed(::Java::Int).new(@ranges.attr_length + grow + (GROW << 1)) { 0 }
        System.arraycopy(@ranges, 0, tmp_ranges, 0, modify_start)
        tmp_styles = Array.typed(StyleRange).new(@styles.attr_length + (grow >> 1) + GROW) { nil }
        System.arraycopy(@styles, 0, tmp_styles, 0, modify_start >> 1)
        if (range_count > modify_end)
          System.arraycopy(@ranges, modify_end, tmp_ranges, modify_start + merge_count, range_count - modify_end)
          System.arraycopy(@styles, modify_end >> 1, tmp_styles, (modify_start + merge_count) >> 1, @style_count - (modify_end >> 1))
        end
        @ranges = tmp_ranges
        @styles = tmp_styles
      else
        if (range_count > modify_end)
          System.arraycopy(@ranges, modify_end, @ranges, modify_start + merge_count, range_count - modify_end)
          System.arraycopy(@styles, modify_end >> 1, @styles, (modify_start + merge_count) >> 1, @style_count - (modify_end >> 1))
        end
      end
      if (MERGE_STYLES)
        j = modify_start
        i = 0
        while i < merge_count
          if (j > 0 && (@ranges[j - 2] + @ranges[j - 1]).equal?(merge_ranges[i]) && merge_styles[i >> 1].similar_to(@styles[(j - 2) >> 1]))
            @ranges[j - 1] += merge_ranges[i + 1]
          else
            @styles[j >> 1] = merge_styles[i >> 1]
            @ranges[((j += 1) - 1)] = merge_ranges[i]
            @ranges[((j += 1) - 1)] = merge_ranges[i + 1]
          end
          i += 2
        end
        if (!(end_style).nil? && (@ranges[j - 2] + @ranges[j - 1]).equal?(end_start) && end_style.similar_to(@styles[(j - 2) >> 1]))
          @ranges[j - 1] += end_length
          modify_end += 2
          merge_count += 2
        end
        if (range_count > modify_end)
          System.arraycopy(@ranges, modify_start + merge_count, @ranges, j, range_count - modify_end)
          System.arraycopy(@styles, (modify_start + merge_count) >> 1, @styles, j >> 1, @style_count - (modify_end >> 1))
        end
        grow = (j - modify_start) - (modify_end - modify_start)
      else
        System.arraycopy(merge_ranges, 0, @ranges, modify_start, merge_count)
        System.arraycopy(merge_styles, 0, @styles, modify_start >> 1, merge_count >> 1)
      end
      @style_count += grow >> 1
      return grow
    end
    
    typesig { [Array.typed(StyleRange), ::Java::Int, ::Java::Int, ::Java::Int] }
    def add_merge(merge_styles, merge_count, modify_start, modify_end)
      grow = merge_count - (modify_end - modify_start)
      end_style = nil
      if (modify_end < @style_count)
        end_style = @styles[modify_end]
      end
      if (@style_count + grow >= @styles.attr_length)
        tmp_styles = Array.typed(StyleRange).new(@styles.attr_length + grow + GROW) { nil }
        System.arraycopy(@styles, 0, tmp_styles, 0, modify_start)
        if (@style_count > modify_end)
          System.arraycopy(@styles, modify_end, tmp_styles, modify_start + merge_count, @style_count - modify_end)
        end
        @styles = tmp_styles
      else
        if (@style_count > modify_end)
          System.arraycopy(@styles, modify_end, @styles, modify_start + merge_count, @style_count - modify_end)
        end
      end
      if (MERGE_STYLES)
        j = modify_start
        i = 0
        while i < merge_count
          new_style = merge_styles[i]
          style = nil
          if (j > 0 && ((style = @styles[j - 1]).attr_start + style.attr_length).equal?(new_style.attr_start) && new_style.similar_to(style))
            style.attr_length += new_style.attr_length
          else
            @styles[((j += 1) - 1)] = new_style
          end
          i += 1
        end
        style = @styles[j - 1]
        if (!(end_style).nil? && (style.attr_start + style.attr_length).equal?(end_style.attr_start) && end_style.similar_to(style))
          style.attr_length += end_style.attr_length
          modify_end += 1
          merge_count += 1
        end
        if (@style_count > modify_end)
          System.arraycopy(@styles, modify_start + merge_count, @styles, j, @style_count - modify_end)
        end
        grow = (j - modify_start) - (modify_end - modify_start)
      else
        System.arraycopy(merge_styles, 0, @styles, modify_start, merge_count)
      end
      @style_count += grow
      return grow
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def calculate(start_line, line_count)
      end_line = start_line + line_count
      if (start_line < 0 || end_line > @line_width.attr_length)
        return
      end
      h_trim = @styled_text.attr_left_margin + @styled_text.attr_right_margin + @styled_text.get_caret_width
      i = start_line
      while i < end_line
        if ((@line_width[i]).equal?(-1) || (@line_height[i]).equal?(-1))
          layout = get_text_layout(i)
          rect = layout.get_bounds
          @line_width[i] = rect.attr_width + h_trim
          @line_height[i] = rect.attr_height
          dispose_text_layout(layout)
        end
        if (@line_width[i] > @max_width)
          @max_width = @line_width[i]
          @max_width_line_index = i
        end
        i += 1
      end
    end
    
    typesig { [] }
    def calculate_client_area
      index = @styled_text.get_top_index
      line_count = @content.get_line_count
      height = @styled_text.get_client_area.attr_height
      y = 0
      while (height > y && line_count > index)
        calculate(index, 1)
        y += @line_height[((index += 1) - 1)]
      end
    end
    
    typesig { [] }
    def calculate_idle
      if (@idle_running)
        return
      end
      runnable = Class.new(Runnable.class == Class ? Runnable : Object) do
        extend LocalClass
        include_class_members StyledTextRenderer
        include Runnable if Runnable.class == Module
        
        typesig { [] }
        define_method :run do
          if ((self.attr_styled_text).nil?)
            return
          end
          i = 0
          start = System.current_time_millis
          i = 0
          while i < self.attr_line_count
            if ((self.attr_line_height[i]).equal?(-1) || (self.attr_line_width[i]).equal?(-1))
              calculate(i, 1)
              if (System.current_time_millis - start > IDLE_TIME)
                break
              end
            end
            i += 1
          end
          if (i < self.attr_line_count)
            display = self.attr_styled_text.get_display
            display.async_exec(self)
          else
            self.attr_idle_running = false
            self.attr_styled_text.set_scroll_bars(true)
            bar = self.attr_styled_text.get_vertical_bar
            if (!(bar).nil?)
              bar.set_selection(self.attr_styled_text.get_vertical_scroll_offset)
            end
          end
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      display = @styled_text.get_display
      display.async_exec(runnable)
      @idle_running = true
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def clear_line_background(start_line, count)
      if ((@lines).nil?)
        return
      end
      i = start_line
      while i < start_line + count
        info = @lines[i]
        if (!(info).nil?)
          info.attr_flags &= ~BACKGROUND
          info.attr_background = nil
          if ((info.attr_flags).equal?(0))
            @lines[i] = nil
          end
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def clear_line_style(start_line, count)
      if ((@lines).nil?)
        return
      end
      i = start_line
      while i < start_line + count
        info = @lines[i]
        if (!(info).nil?)
          info.attr_flags &= ~(ALIGNMENT | INDENT | JUSTIFY)
          if ((info.attr_flags).equal?(0))
            @lines[i] = nil
          end
        end
        i += 1
      end
    end
    
    typesig { [StyledTextRenderer] }
    def copy_into(renderer)
      if (!(@ranges).nil?)
        new_ranges = renderer.attr_ranges = Array.typed(::Java::Int).new(@style_count << 1) { 0 }
        System.arraycopy(@ranges, 0, new_ranges, 0, new_ranges.attr_length)
      end
      if (!(@styles).nil?)
        new_styles = renderer.attr_styles = Array.typed(StyleRange).new(@style_count) { nil }
        i = 0
        while i < new_styles.attr_length
          new_styles[i] = @styles[i].clone
          i += 1
        end
        renderer.attr_style_count = @style_count
      end
      if (!(@lines).nil?)
        new_lines = renderer.attr_lines = Array.typed(LineInfo).new(@line_count) { nil }
        i = 0
        while i < new_lines.attr_length
          new_lines[i] = LineInfo.new(@lines[i])
          i += 1
        end
        renderer.attr_line_count = @line_count
      end
    end
    
    typesig { [] }
    def dispose
      if (!(@bold_font).nil?)
        @bold_font.dispose
      end
      if (!(@italic_font).nil?)
        @italic_font.dispose
      end
      if (!(@bold_italic_font).nil?)
        @bold_italic_font.dispose
      end
      @bold_font = @italic_font = @bold_italic_font = nil
      reset
      @content = nil
      @device = nil
      @styled_text = nil
    end
    
    typesig { [TextLayout] }
    def dispose_text_layout(layout)
      if (!(@layouts).nil?)
        i = 0
        while i < @layouts.attr_length
          if ((@layouts[i]).equal?(layout))
            return
          end
          i += 1
        end
      end
      layout.dispose
    end
    
    typesig { [Bullet, SwtGC, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def draw_bullet(bullet, gc, paint_x, paint_y, index, line_ascent, line_descent)
      style = bullet.attr_style
      metrics = style.attr_metrics
      color = style.attr_foreground
      if (!(color).nil?)
        gc.set_foreground(color)
      end
      if (!((bullet.attr_type & ST::BULLET_DOT)).equal?(0) && StyledText::IS_MOTIF)
        size = Math.max(4, (line_ascent + line_descent) / 4)
        if (((size & 1)).equal?(0))
          size += 1
        end
        if ((color).nil?)
          display = @styled_text.get_display
          color = display.get_system_color(SWT::COLOR_BLACK)
        end
        gc.set_background(color)
        x = paint_x + Math.max(0, metrics.attr_width - size - BULLET_MARGIN)
        gc.fill_arc(x, paint_y + size, size + 1, size + 1, 0, 360)
        return
      end
      font = style.attr_font
      if (!(font).nil?)
        gc.set_font(font)
      end
      string = ""
      type = bullet.attr_type & (ST::BULLET_DOT | ST::BULLET_NUMBER | ST::BULLET_LETTER_LOWER | ST::BULLET_LETTER_UPPER)
      case (type)
      when ST::BULLET_DOT
        string = ("".to_u << 0x2022 << "")
      when ST::BULLET_NUMBER
        string = RJava.cast_to_string(String.value_of(index))
      when ST::BULLET_LETTER_LOWER
        string = RJava.cast_to_string(String.value_of(RJava.cast_to_char((index % 26 + 97))))
      when ST::BULLET_LETTER_UPPER
        string = RJava.cast_to_string(String.value_of(RJava.cast_to_char((index % 26 + 65))))
      end
      if (!((bullet.attr_type & ST::BULLET_TEXT)).equal?(0))
        string += RJava.cast_to_string(bullet.attr_text)
      end
      display = @styled_text.get_display
      layout = TextLayout.new(display)
      layout.set_text(string)
      layout.set_ascent(line_ascent)
      layout.set_descent(line_descent)
      style = style.clone
      style.attr_metrics = nil
      if ((style.attr_font).nil?)
        style.attr_font = get_font(style.attr_font_style)
      end
      layout.set_style(style, 0, string.length)
      x = paint_x + Math.max(0, metrics.attr_width - layout.get_bounds.attr_width - BULLET_MARGIN)
      layout.draw(gc, x, paint_y)
      layout.dispose
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, SwtGC, Color, Color] }
    def draw_line(line_index, paint_x, paint_y, gc, widget_background, widget_foreground)
      layout = get_text_layout(line_index)
      line = @content.get_line(line_index)
      line_offset = @content.get_offset_at_line(line_index)
      line_length = line.length
      selection = @styled_text.get_selection
      selection_start = selection.attr_x - line_offset
      selection_end = selection.attr_y - line_offset
      client = @styled_text.get_client_area
      line_background = get_line_background(line_index, nil)
      event = @styled_text.get_line_background_data(line_offset, line)
      if (!(event).nil? && !(event.attr_line_background).nil?)
        line_background = event.attr_line_background
      end
      height = layout.get_bounds.attr_height
      if (!(line_background).nil?)
        gc.set_background(line_background)
        gc.fill_rectangle(client.attr_x, paint_y, client.attr_width, height)
      else
        gc.set_background(widget_background)
        @styled_text.draw_background(gc, client.attr_x, paint_y, client.attr_width, height)
      end
      gc.set_foreground(widget_foreground)
      if ((selection_start).equal?(selection_end) || (selection_end <= 0 && selection_start > line_length - 1))
        layout.draw(gc, paint_x, paint_y)
      else
        start = Math.max(0, selection_start)
        end_ = Math.min(line_length, selection_end)
        selection_fg = @styled_text.get_selection_foreground
        selection_bg = @styled_text.get_selection_background
        flags = 0
        if (!((@styled_text.get_style & SWT::FULL_SELECTION)).equal?(0))
          flags = SWT::FULL_SELECTION
        else
          flags = SWT::DELIMITER_SELECTION
        end
        if (selection_start <= line_length && line_length < selection_end)
          flags |= SWT::LAST_LINE_SELECTION
        end
        layout.draw(gc, paint_x, paint_y, start, end_ - 1, selection_fg, selection_bg, flags)
      end
      # draw objects
      bullet = nil
      bullet_index = -1
      if (!(@bullets).nil?)
        if (!(@bullets_indices).nil?)
          index = line_index - @top_index
          if (0 <= index && index < CACHE_SIZE)
            bullet = @bullets[index]
            bullet_index = @bullets_indices[index]
          end
        else
          i = 0
          while i < @bullets.attr_length
            bullet = @bullets[i]
            bullet_index = bullet.index_of(line_index)
            if (!(bullet_index).equal?(-1))
              break
            end
            i += 1
          end
        end
      end
      if (!(bullet_index).equal?(-1) && !(bullet).nil?)
        metrics = layout.get_line_metrics(0)
        line_ascent = metrics.get_ascent + metrics.get_leading
        if ((bullet.attr_type).equal?(ST::BULLET_CUSTOM))
          bullet.attr_style.attr_start = line_offset
          @styled_text.paint_object(gc, paint_x, paint_y, line_ascent, metrics.get_descent, bullet.attr_style, bullet, bullet_index)
        else
          draw_bullet(bullet, gc, paint_x, paint_y, bullet_index, line_ascent, metrics.get_descent)
        end
      end
      styles = layout.get_styles
      ranges = nil
      i = 0
      while i < styles.attr_length
        if (!(styles[i].attr_metrics).nil?)
          if ((ranges).nil?)
            ranges = layout.get_ranges
          end
          start = ranges[i << 1]
          length_ = ranges[(i << 1) + 1] - start
          point = layout.get_location(start, false)
          metrics = layout.get_line_metrics(layout.get_line_index(start))
          style = (styles[i]).clone
          style.attr_start = start + line_offset
          style.attr_length = length_
          line_ascent = metrics.get_ascent + metrics.get_leading
          @styled_text.paint_object(gc, point.attr_x + paint_x, point.attr_y + paint_y, line_ascent, metrics.get_descent, style, nil, 0)
        end
        i += 1
      end
      dispose_text_layout(layout)
      return height
    end
    
    typesig { [] }
    def get_baseline
      return @ascent
    end
    
    typesig { [::Java::Int] }
    def get_font(style)
      case (style)
      when SWT::BOLD
        if (!(@bold_font).nil?)
          return @bold_font
        end
        return @bold_font = Font.new(@device, get_font_data(style))
      when SWT::ITALIC
        if (!(@italic_font).nil?)
          return @italic_font
        end
        return @italic_font = Font.new(@device, get_font_data(style))
      when SWT::BOLD | SWT::ITALIC
        if (!(@bold_italic_font).nil?)
          return @bold_italic_font
        end
        return @bold_italic_font = Font.new(@device, get_font_data(style))
      else
        return @regular_font
      end
    end
    
    typesig { [::Java::Int] }
    def get_font_data(style)
      font_datas = @regular_font.get_font_data
      i = 0
      while i < font_datas.attr_length
        font_datas[i].set_style(style)
        i += 1
      end
      return font_datas
    end
    
    typesig { [] }
    def get_height
      default_line_height = get_line_height
      if (@styled_text.is_fixed_line_height)
        return @line_count * default_line_height
      end
      total_height = 0
      width = @styled_text.get_wrap_width
      i = 0
      while i < @line_count
        height = @line_height[i]
        if ((height).equal?(-1))
          if (width > 0)
            length_ = @content.get_line(i).length
            height = ((length_ * @average_char_width / width) + 1) * default_line_height
          else
            height = default_line_height
          end
        end
        total_height += height
        i += 1
      end
      return total_height + @styled_text.attr_top_margin + @styled_text.attr_bottom_margin
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def get_line_alignment(index, default_alignment)
      if ((@lines).nil?)
        return default_alignment
      end
      info = @lines[index]
      if (!(info).nil? && !((info.attr_flags & ALIGNMENT)).equal?(0))
        return info.attr_alignment
      end
      return default_alignment
    end
    
    typesig { [::Java::Int, Color] }
    def get_line_background(index, default_background)
      if ((@lines).nil?)
        return default_background
      end
      info = @lines[index]
      if (!(info).nil? && !((info.attr_flags & BACKGROUND)).equal?(0))
        return info.attr_background
      end
      return default_background
    end
    
    typesig { [::Java::Int, Bullet] }
    def get_line_bullet(index, default_bullet)
      if ((@bullets).nil?)
        return default_bullet
      end
      if (!(@bullets_indices).nil?)
        return default_bullet
      end
      i = 0
      while i < @bullets.attr_length
        bullet = @bullets[i]
        if (!(bullet.index_of(index)).equal?(-1))
          return bullet
        end
        i += 1
      end
      return default_bullet
    end
    
    typesig { [] }
    def get_line_height
      return @ascent + @descent
    end
    
    typesig { [::Java::Int] }
    def get_line_height(line_index)
      if ((@line_height[line_index]).equal?(-1))
        calculate(line_index, 1)
      end
      return @line_height[line_index]
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def get_line_indent(index, default_indent)
      if ((@lines).nil?)
        return default_indent
      end
      info = @lines[index]
      if (!(info).nil? && !((info.attr_flags & INDENT)).equal?(0))
        return info.attr_indent
      end
      return default_indent
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def get_line_justify(index, default_justify)
      if ((@lines).nil?)
        return default_justify
      end
      info = @lines[index]
      if (!(info).nil? && !((info.attr_flags & JUSTIFY)).equal?(0))
        return info.attr_justify
      end
      return default_justify
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    def get_line_segments(index, default_segments)
      if ((@lines).nil?)
        return default_segments
      end
      info = @lines[index]
      if (!(info).nil? && !((info.attr_flags & SEGMENTS)).equal?(0))
        return info.attr_segments
      end
      return default_segments
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_range_index(offset, low, high)
      if ((@style_count).equal?(0))
        return 0
      end
      if (!(@ranges).nil?)
        while (high - low > 2)
          index = ((high + low) / 2) / 2 * 2
          end_ = @ranges[index] + @ranges[index + 1]
          if (end_ > offset)
            high = index
          else
            low = index
          end
        end
      else
        while (high - low > 1)
          index = ((high + low) / 2)
          end_ = @styles[index].attr_start + @styles[index].attr_length
          if (end_ > offset)
            high = index
          else
            low = index
          end
        end
      end
      return high
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def get_ranges(start, length_)
      new_ranges = nil
      end_ = start + length_ - 1
      if (!(@ranges).nil?)
        range_count = @style_count << 1
        range_start = get_range_index(start, -1, range_count)
        if (range_start >= range_count)
          return nil
        end
        if (@ranges[range_start] > end_)
          return nil
        end
        range_end = Math.min(range_count - 2, get_range_index(end_, range_start - 1, range_count) + 1)
        new_ranges = Array.typed(::Java::Int).new(range_end - range_start + 2) { 0 }
        System.arraycopy(@ranges, range_start, new_ranges, 0, new_ranges.attr_length)
      else
        range_start = get_range_index(start, -1, @style_count)
        if (range_start >= @style_count)
          return nil
        end
        if (@styles[range_start].attr_start > end_)
          return nil
        end
        range_end = Math.min(@style_count - 1, get_range_index(end_, range_start - 1, @style_count))
        new_ranges = Array.typed(::Java::Int).new((range_end - range_start + 1) << 1) { 0 }
        i = range_start
        j = 0
        while i <= range_end
          style = @styles[i]
          new_ranges[j] = style.attr_start
          new_ranges[j + 1] = style.attr_length
          i += 1
          j += 2
        end
      end
      if (start > new_ranges[0])
        new_ranges[1] = new_ranges[0] + new_ranges[1] - start
        new_ranges[0] = start
      end
      if (end_ < new_ranges[new_ranges.attr_length - 2] + new_ranges[new_ranges.attr_length - 1] - 1)
        new_ranges[new_ranges.attr_length - 1] = end_ - new_ranges[new_ranges.attr_length - 2] + 1
      end
      return new_ranges
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def get_style_ranges(start, length_, include_ranges)
      new_styles = nil
      end_ = start + length_ - 1
      if (!(@ranges).nil?)
        range_count = @style_count << 1
        range_start = get_range_index(start, -1, range_count)
        if (range_start >= range_count)
          return nil
        end
        if (@ranges[range_start] > end_)
          return nil
        end
        range_end = Math.min(range_count - 2, get_range_index(end_, range_start - 1, range_count) + 1)
        new_styles = Array.typed(StyleRange).new(((range_end - range_start) >> 1) + 1) { nil }
        if (include_ranges)
          i = range_start
          j = 0
          while i <= range_end
            new_styles[j] = @styles[i >> 1].clone
            new_styles[j].attr_start = @ranges[i]
            new_styles[j].attr_length = @ranges[i + 1]
            i += 2
            j += 1
          end
        else
          System.arraycopy(@styles, range_start >> 1, new_styles, 0, new_styles.attr_length)
        end
      else
        range_start = get_range_index(start, -1, @style_count)
        if (range_start >= @style_count)
          return nil
        end
        if (@styles[range_start].attr_start > end_)
          return nil
        end
        range_end = Math.min(@style_count - 1, get_range_index(end_, range_start - 1, @style_count))
        new_styles = Array.typed(StyleRange).new(range_end - range_start + 1) { nil }
        System.arraycopy(@styles, range_start, new_styles, 0, new_styles.attr_length)
      end
      style = new_styles[0]
      if (start > style.attr_start)
        if (!include_ranges || (@ranges).nil?)
          new_styles[0] = style = style.clone
        end
        style.attr_length = style.attr_start + style.attr_length - start
        style.attr_start = start
      end
      style = new_styles[new_styles.attr_length - 1]
      if (end_ < style.attr_start + style.attr_length - 1)
        if (end_ < style.attr_start)
          tmp = Array.typed(StyleRange).new(new_styles.attr_length - 1) { nil }
          System.arraycopy(new_styles, 0, tmp, 0, new_styles.attr_length - 1)
          new_styles = tmp
        else
          if (!include_ranges || (@ranges).nil?)
            new_styles[new_styles.attr_length - 1] = style = style.clone
          end
          style.attr_length = end_ - style.attr_start + 1
        end
      end
      return new_styles
    end
    
    typesig { [StyleRange] }
    def get_style_range(style)
      if ((style.attr_start).equal?(0) && (style.attr_length).equal?(0) && (style.attr_font_style).equal?(SWT::NORMAL))
        return style
      end
      clone_ = style.clone
      clone_.attr_start = clone_.attr_length = 0
      clone_.attr_font_style = SWT::NORMAL
      if ((clone_.attr_font).nil?)
        clone_.attr_font = get_font(style.attr_font_style)
      end
      return clone_
    end
    
    typesig { [::Java::Int] }
    def get_text_layout(line_index)
      return get_text_layout(line_index, @styled_text.get_orientation, @styled_text.get_wrap_width, @styled_text.attr_line_spacing)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def get_text_layout(line_index, orientation, width, line_spacing)
      layout = nil
      if (!(@styled_text).nil?)
        top_index = @styled_text.attr_top_index > 0 ? @styled_text.attr_top_index - 1 : 0
        if ((@layouts).nil? || !(top_index).equal?(@top_index))
          new_layouts = Array.typed(TextLayout).new(CACHE_SIZE) { nil }
          if (!(@layouts).nil?)
            i = 0
            while i < @layouts.attr_length
              if (!(@layouts[i]).nil?)
                layout_index = (i + @top_index) - top_index
                if (0 <= layout_index && layout_index < new_layouts.attr_length)
                  new_layouts[layout_index] = @layouts[i]
                else
                  @layouts[i].dispose
                end
              end
              i += 1
            end
          end
          if (!(@bullets).nil? && !(@bullets_indices).nil? && !(top_index).equal?(@top_index))
            delta = top_index - @top_index
            if (delta > 0)
              if (delta < @bullets.attr_length)
                System.arraycopy(@bullets, delta, @bullets, 0, @bullets.attr_length - delta)
                System.arraycopy(@bullets_indices, delta, @bullets_indices, 0, @bullets_indices.attr_length - delta)
              end
              start_index = Math.max(0, @bullets.attr_length - delta)
              i = start_index
              while i < @bullets.attr_length
                @bullets[i] = nil
                i += 1
              end
            else
              if (-delta < @bullets.attr_length)
                System.arraycopy(@bullets, 0, @bullets, -delta, @bullets.attr_length + delta)
                System.arraycopy(@bullets_indices, 0, @bullets_indices, -delta, @bullets_indices.attr_length + delta)
              end
              end_index = Math.min(@bullets.attr_length, -delta)
              i = 0
              while i < end_index
                @bullets[i] = nil
                i += 1
              end
            end
          end
          @top_index = top_index
          @layouts = new_layouts
        end
        if (!(@layouts).nil?)
          layout_index = line_index - top_index
          if (0 <= layout_index && layout_index < @layouts.attr_length)
            layout = @layouts[layout_index]
            if (!(layout).nil?)
              if (!(@line_width[line_index]).equal?(-1))
                return layout
              end
            else
              layout = @layouts[layout_index] = TextLayout.new(@device)
            end
          end
        end
      end
      if ((layout).nil?)
        layout = TextLayout.new(@device)
      end
      line = @content.get_line(line_index)
      line_offset = @content.get_offset_at_line(line_index)
      segments = nil
      indent = 0
      alignment = SWT::LEFT
      justify = false
      bullet = nil
      ranges = nil
      styles = nil
      range_start = 0
      style_count = 0
      event = nil
      if (!(@styled_text).nil?)
        event = @styled_text.get_line_style_data(line_offset, line)
        segments = @styled_text.get_bidi_segments(line_offset, line)
        indent = @styled_text.attr_indent
        alignment = @styled_text.attr_alignment
        justify = @styled_text.attr_justify
      end
      if (!(event).nil?)
        indent = event.attr_indent
        alignment = event.attr_alignment
        justify = event.attr_justify
        bullet = event.attr_bullet
        ranges = event.attr_ranges
        styles = event.attr_styles
        if (!(styles).nil?)
          style_count = styles.attr_length
          if (@styled_text.is_fixed_line_height)
            i = 0
            while i < style_count
              if (styles[i].is_variable_height)
                @styled_text.attr_vertical_scroll_offset = -1
                @styled_text.set_variable_line_height
                @styled_text.redraw
                break
              end
              i += 1
            end
          end
        end
        if ((@bullets).nil? || (@bullets_indices).nil?)
          @bullets = Array.typed(Bullet).new(CACHE_SIZE) { nil }
          @bullets_indices = Array.typed(::Java::Int).new(CACHE_SIZE) { 0 }
        end
        index = line_index - @top_index
        if (0 <= index && index < CACHE_SIZE)
          @bullets[index] = bullet
          @bullets_indices[index] = event.attr_bullet_index
        end
      else
        if (!(@lines).nil?)
          info = @lines[line_index]
          if (!(info).nil?)
            if (!((info.attr_flags & INDENT)).equal?(0))
              indent = info.attr_indent
            end
            if (!((info.attr_flags & ALIGNMENT)).equal?(0))
              alignment = info.attr_alignment
            end
            if (!((info.attr_flags & JUSTIFY)).equal?(0))
              justify = info.attr_justify
            end
            if (!((info.attr_flags & SEGMENTS)).equal?(0))
              segments = info.attr_segments
            end
          end
        end
        if (!(@bullets_indices).nil?)
          @bullets = nil
          @bullets_indices = nil
        end
        if (!(@bullets).nil?)
          i = 0
          while i < @bullets.attr_length
            if (!(@bullets[i].index_of(line_index)).equal?(-1))
              bullet = @bullets[i]
              break
            end
            i += 1
          end
        end
        ranges = @ranges
        styles = @styles
        style_count = @style_count
        if (!(ranges).nil?)
          range_start = get_range_index(line_offset, -1, style_count << 1)
        else
          range_start = get_range_index(line_offset, -1, style_count)
        end
      end
      if (!(bullet).nil?)
        style = bullet.attr_style
        metrics = style.attr_metrics
        indent += metrics.attr_width
      end
      layout.set_font(@regular_font)
      layout.set_ascent(@ascent)
      layout.set_descent(@descent)
      layout.set_text(line)
      layout.set_orientation(orientation)
      layout.set_segments(segments)
      layout.set_width(width)
      layout.set_spacing(line_spacing)
      layout.set_tabs(Array.typed(::Java::Int).new([@tab_width]))
      layout.set_indent(indent)
      layout.set_alignment(alignment)
      layout.set_justify(justify)
      last_offset = 0
      length_ = line.length
      if (!(styles).nil?)
        if (!(ranges).nil?)
          range_count = style_count << 1
          i = range_start
          while i < range_count
            start = 0
            end_ = 0
            if (line_offset > ranges[i])
              start = 0
              end_ = Math.min(length_, ranges[i + 1] - line_offset + ranges[i])
            else
              start = ranges[i] - line_offset
              end_ = Math.min(length_, start + ranges[i + 1])
            end
            if (start >= length_)
              break
            end
            if (last_offset < start)
              layout.set_style(nil, last_offset, start - 1)
            end
            layout.set_style(get_style_range(styles[i >> 1]), start, end_)
            last_offset = Math.max(last_offset, end_)
            i += 2
          end
        else
          i = range_start
          while i < style_count
            start = 0
            end_ = 0
            if (line_offset > styles[i].attr_start)
              start = 0
              end_ = Math.min(length_, styles[i].attr_length - line_offset + styles[i].attr_start)
            else
              start = styles[i].attr_start - line_offset
              end_ = Math.min(length_, start + styles[i].attr_length)
            end
            if (start >= length_)
              break
            end
            if (last_offset < start)
              layout.set_style(nil, last_offset, start - 1)
            end
            layout.set_style(get_style_range(styles[i]), start, end_)
            last_offset = Math.max(last_offset, end_)
            i += 1
          end
        end
      end
      if (last_offset < length_)
        layout.set_style(nil, last_offset, length_)
      end
      if (!(@styled_text).nil? && !(@styled_text.attr_ime).nil?)
        ime = @styled_text.attr_ime
        composition_offset = ime.get_composition_offset
        if (!(composition_offset).equal?(-1))
          commit_count = ime.get_commit_count
          composition_length = ime.get_text.length
          if (!(composition_length).equal?(commit_count))
            composition_line = @content.get_line_at_offset(composition_offset)
            if ((composition_line).equal?(line_index))
              ime_ranges = ime.get_ranges
              ime_styles = ime.get_styles
              if (ime_ranges.attr_length > 0)
                i = 0
                while i < ime_styles.attr_length
                  start = ime_ranges[i * 2] - line_offset
                  end_ = ime_ranges[i * 2 + 1] - line_offset
                  ime_style = ime_styles[i]
                  user_style = nil
                  j = start
                  while j <= end_
                    user_style = layout.get_style(j)
                    if ((user_style).nil? && j > 0)
                      user_style = layout.get_style(j - 1)
                    end
                    if ((user_style).nil? && j + 1 < length_)
                      user_style = layout.get_style(j + 1)
                    end
                    if ((user_style).nil?)
                      layout.set_style(ime_style, j, j)
                    else
                      new_style = TextStyle.new(ime_style)
                      if ((new_style.attr_font).nil?)
                        new_style.attr_font = user_style.attr_font
                      end
                      if ((new_style.attr_foreground).nil?)
                        new_style.attr_foreground = user_style.attr_foreground
                      end
                      if ((new_style.attr_background).nil?)
                        new_style.attr_background = user_style.attr_background
                      end
                      layout.set_style(new_style, j, j)
                    end
                    j += 1
                  end
                  i += 1
                end
              else
                start = composition_offset - line_offset
                end_ = start + composition_length - 1
                user_style = layout.get_style(start)
                if ((user_style).nil?)
                  if (start > 0)
                    user_style = layout.get_style(start - 1)
                  end
                  if ((user_style).nil? && end_ + 1 < length_)
                    user_style = layout.get_style(end_ + 1)
                  end
                  if (!(user_style).nil?)
                    new_style = TextStyle.new
                    new_style.attr_font = user_style.attr_font
                    new_style.attr_foreground = user_style.attr_foreground
                    new_style.attr_background = user_style.attr_background
                    layout.set_style(new_style, start, end_)
                  end
                end
              end
            end
          end
        end
      end
      if (!(@styled_text).nil? && @styled_text.is_fixed_line_height)
        index = -1
        line_count = layout.get_line_count
        height = get_line_height
        i = 0
        while i < line_count
          line_height = layout.get_line_bounds(i).attr_height
          if (line_height > height)
            height = line_height
            index = i
          end
          i += 1
        end
        if (!(index).equal?(-1))
          metrics = layout.get_line_metrics(index)
          @ascent = metrics.get_ascent + metrics.get_leading
          @descent = metrics.get_descent
          if (!(@layouts).nil?)
            i_ = 0
            while i_ < @layouts.attr_length
              if (!(@layouts[i_]).nil? && !(@layouts[i_]).equal?(layout))
                @layouts[i_].set_ascent(@ascent)
                @layouts[i_].set_descent(@descent)
              end
              i_ += 1
            end
          end
          if (!(@styled_text.attr_vertical_scroll_offset).equal?(0))
            top_index = @styled_text.attr_top_index
            top_index_y = @styled_text.attr_top_index_y
            line_height = get_line_height
            if (top_index_y >= 0)
              @styled_text.attr_vertical_scroll_offset = (top_index - 1) * line_height + line_height - top_index_y
            else
              @styled_text.attr_vertical_scroll_offset = top_index * line_height - top_index_y
            end
          end
          @styled_text.calculate_scroll_bars
          if (@styled_text.is_bidi_caret)
            @styled_text.create_caret_bitmaps
          end
          @styled_text.attr_caret_direction = SWT::NULL
          @styled_text.set_caret_location
          @styled_text.redraw
        end
      end
      return layout
    end
    
    typesig { [] }
    def get_width
      return @max_width
    end
    
    typesig { [] }
    def reset
      if (!(@layouts).nil?)
        i = 0
        while i < @layouts.attr_length
          layout = @layouts[i]
          if (!(layout).nil?)
            layout.dispose
          end
          i += 1
        end
        @layouts = nil
      end
      @top_index = -1
      @styles_set_count = @style_count = @line_count = 0
      @ranges = nil
      @styles = nil
      @styles_set = nil
      @lines = nil
      @line_width = nil
      @line_height = nil
      @bullets = nil
      @bullets_indices = nil
      @redraw_lines = nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def reset(start_line, line_count)
      end_line = start_line + line_count
      if (start_line < 0 || end_line > @line_width.attr_length)
        return
      end
      i = start_line
      while i < end_line
        @line_width[i] = -1
        @line_height[i] = -1
        i += 1
      end
      if (start_line <= @max_width_line_index && @max_width_line_index < end_line)
        @max_width = 0
        @max_width_line_index = -1
        if (!(line_count).equal?(@line_count))
          i_ = 0
          while i_ < @line_count
            if (@line_width[i_] > @max_width)
              @max_width = @line_width[i_]
              @max_width_line_index = i_
            end
            i_ += 1
          end
        end
      end
    end
    
    typesig { [StyledTextContent] }
    def set_content(content)
      reset
      @content = content
      @line_count = content.get_line_count
      @line_width = Array.typed(::Java::Int).new(@line_count) { 0 }
      @line_height = Array.typed(::Java::Int).new(@line_count) { 0 }
      reset(0, @line_count)
    end
    
    typesig { [Font, ::Java::Int] }
    def set_font(font, tabs)
      layout = TextLayout.new(@device)
      layout.set_font(@regular_font)
      if (!(font).nil?)
        if (!(@bold_font).nil?)
          @bold_font.dispose
        end
        if (!(@italic_font).nil?)
          @italic_font.dispose
        end
        if (!(@bold_italic_font).nil?)
          @bold_italic_font.dispose
        end
        @bold_font = @italic_font = @bold_italic_font = nil
        @regular_font = font
        layout.set_text("    ")
        layout.set_font(font)
        layout.set_style(TextStyle.new(get_font(SWT::NORMAL), nil, nil), 0, 0)
        layout.set_style(TextStyle.new(get_font(SWT::BOLD), nil, nil), 1, 1)
        layout.set_style(TextStyle.new(get_font(SWT::ITALIC), nil, nil), 2, 2)
        layout.set_style(TextStyle.new(get_font(SWT::BOLD | SWT::ITALIC), nil, nil), 3, 3)
        metrics = layout.get_line_metrics(0)
        @ascent = metrics.get_ascent + metrics.get_leading
        @descent = metrics.get_descent
        @bold_font.dispose
        @italic_font.dispose
        @bold_italic_font.dispose
        @bold_font = @italic_font = @bold_italic_font = nil
      end
      layout.dispose
      layout = TextLayout.new(@device)
      layout.set_font(@regular_font)
      tab_buffer = StringBuffer.new(tabs)
      i = 0
      while i < tabs
        tab_buffer.append(Character.new(?\s.ord))
        i += 1
      end
      layout.set_text(tab_buffer.to_s)
      @tab_width = layout.get_bounds.attr_width
      layout.dispose
      if (!(@styled_text).nil?)
        gc = SwtGC.new(@styled_text)
        @average_char_width = gc.get_font_metrics.get_average_char_width
        gc.dispose
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def set_line_alignment(start_line, count, alignment)
      if ((@lines).nil?)
        @lines = Array.typed(LineInfo).new(@line_count) { nil }
      end
      i = start_line
      while i < start_line + count
        if ((@lines[i]).nil?)
          @lines[i] = LineInfo.new
        end
        @lines[i].attr_flags |= ALIGNMENT
        @lines[i].attr_alignment = alignment
        i += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, Color] }
    def set_line_background(start_line, count, background)
      if ((@lines).nil?)
        @lines = Array.typed(LineInfo).new(@line_count) { nil }
      end
      i = start_line
      while i < start_line + count
        if ((@lines[i]).nil?)
          @lines[i] = LineInfo.new
        end
        @lines[i].attr_flags |= BACKGROUND
        @lines[i].attr_background = background
        i += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, Bullet] }
    def set_line_bullet(start_line, count, bullet)
      if (!(@bullets_indices).nil?)
        @bullets_indices = nil
        @bullets = nil
      end
      if ((@bullets).nil?)
        if ((bullet).nil?)
          return
        end
        @bullets = Array.typed(Bullet).new(1) { nil }
        @bullets[0] = bullet
      end
      index = 0
      while (index < @bullets.attr_length)
        if ((bullet).equal?(@bullets[index]))
          break
        end
        index += 1
      end
      if (!(bullet).nil?)
        if ((index).equal?(@bullets.attr_length))
          new_bullets_list = Array.typed(Bullet).new(@bullets.attr_length + 1) { nil }
          System.arraycopy(@bullets, 0, new_bullets_list, 0, @bullets.attr_length)
          new_bullets_list[index] = bullet
          @bullets = new_bullets_list
        end
        bullet.add_indices(start_line, count)
      else
        update_bullets(start_line, count, 0, false)
        @styled_text.redraw_lines_bullet(@redraw_lines)
        @redraw_lines = nil
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def set_line_indent(start_line, count, indent)
      if ((@lines).nil?)
        @lines = Array.typed(LineInfo).new(@line_count) { nil }
      end
      i = start_line
      while i < start_line + count
        if ((@lines[i]).nil?)
          @lines[i] = LineInfo.new
        end
        @lines[i].attr_flags |= INDENT
        @lines[i].attr_indent = indent
        i += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def set_line_justify(start_line, count, justify)
      if ((@lines).nil?)
        @lines = Array.typed(LineInfo).new(@line_count) { nil }
      end
      i = start_line
      while i < start_line + count
        if ((@lines[i]).nil?)
          @lines[i] = LineInfo.new
        end
        @lines[i].attr_flags |= JUSTIFY
        @lines[i].attr_justify = justify
        i += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    def set_line_segments(start_line, count, segments)
      if ((@lines).nil?)
        @lines = Array.typed(LineInfo).new(@line_count) { nil }
      end
      i = start_line
      while i < start_line + count
        if ((@lines[i]).nil?)
          @lines[i] = LineInfo.new
        end
        @lines[i].attr_flags |= SEGMENTS
        @lines[i].attr_segments = segments
        i += 1
      end
    end
    
    typesig { [Array.typed(::Java::Int), Array.typed(StyleRange)] }
    def set_style_ranges(new_ranges, new_styles)
      if ((new_styles).nil?)
        @styles_set_count = @style_count = 0
        @ranges = nil
        @styles = nil
        @styles_set = nil
        return
      end
      if ((new_ranges).nil? && COMPACT_STYLES)
        new_ranges = Array.typed(::Java::Int).new(new_styles.attr_length << 1) { 0 }
        tmp_styles = Array.typed(StyleRange).new(new_styles.attr_length) { nil }
        if ((@styles_set).nil?)
          @styles_set = Array.typed(StyleRange).new(4) { nil }
        end
        i = 0
        j = 0
        while i < new_styles.attr_length
          new_style = new_styles[i]
          new_ranges[((j += 1) - 1)] = new_style.attr_start
          new_ranges[((j += 1) - 1)] = new_style.attr_length
          index = 0
          while (index < @styles_set_count)
            if (@styles_set[index].similar_to(new_style))
              break
            end
            index += 1
          end
          if ((index).equal?(@styles_set_count))
            if ((@styles_set_count).equal?(@styles_set.attr_length))
              tmp_styles_set = Array.typed(StyleRange).new(@styles_set_count + 4) { nil }
              System.arraycopy(@styles_set, 0, tmp_styles_set, 0, @styles_set_count)
              @styles_set = tmp_styles_set
            end
            @styles_set[((@styles_set_count += 1) - 1)] = new_style
          end
          tmp_styles[i] = @styles_set[index]
          i += 1
        end
        new_styles = tmp_styles
      end
      if ((@style_count).equal?(0))
        if (!(new_ranges).nil?)
          @ranges = Array.typed(::Java::Int).new(new_ranges.attr_length) { 0 }
          System.arraycopy(new_ranges, 0, @ranges, 0, @ranges.attr_length)
        end
        @styles = Array.typed(StyleRange).new(new_styles.attr_length) { nil }
        System.arraycopy(new_styles, 0, @styles, 0, @styles.attr_length)
        @style_count = new_styles.attr_length
        return
      end
      if (!(new_ranges).nil? && (@ranges).nil?)
        @ranges = Array.typed(::Java::Int).new(@styles.attr_length << 1) { 0 }
        i = 0
        j = 0
        while i < @style_count
          @ranges[((j += 1) - 1)] = @styles[i].attr_start
          @ranges[((j += 1) - 1)] = @styles[i].attr_length
          i += 1
        end
      end
      if ((new_ranges).nil? && !(@ranges).nil?)
        new_ranges = Array.typed(::Java::Int).new(new_styles.attr_length << 1) { 0 }
        i = 0
        j = 0
        while i < new_styles.attr_length
          new_ranges[((j += 1) - 1)] = new_styles[i].attr_start
          new_ranges[((j += 1) - 1)] = new_styles[i].attr_length
          i += 1
        end
      end
      if (!(@ranges).nil?)
        range_count = @style_count << 1
        start = new_ranges[0]
        modify_start = get_range_index(start, -1, range_count)
        modify_end = 0
        insert = (modify_start).equal?(range_count)
        if (!insert)
          end_ = new_ranges[new_ranges.attr_length - 2] + new_ranges[new_ranges.attr_length - 1]
          modify_end = get_range_index(end_, modify_start - 1, range_count)
          insert = (modify_start).equal?(modify_end) && @ranges[modify_start] >= end_
        end
        if (insert)
          add_merge(new_ranges, new_styles, new_ranges.attr_length, modify_start, modify_start)
          return
        end
        modify_end = modify_start
        merge_ranges = Array.typed(::Java::Int).new(6) { 0 }
        merge_styles = Array.typed(StyleRange).new(3) { nil }
        i = 0
        while i < new_ranges.attr_length
          new_start = new_ranges[i]
          new_end = new_start + new_ranges[i + 1]
          if ((new_start).equal?(new_end))
            i += 2
            next
          end
          modify_last = 0
          merge_count = 0
          while (modify_end < range_count)
            if (new_start >= @ranges[modify_start] + @ranges[modify_start + 1])
              modify_start += 2
            end
            if (@ranges[modify_end] + @ranges[modify_end + 1] > new_end)
              break
            end
            modify_end += 2
          end
          if (@ranges[modify_start] < new_start && new_start < @ranges[modify_start] + @ranges[modify_start + 1])
            merge_styles[merge_count >> 1] = @styles[modify_start >> 1]
            merge_ranges[merge_count] = @ranges[modify_start]
            merge_ranges[merge_count + 1] = new_start - @ranges[modify_start]
            merge_count += 2
          end
          merge_styles[merge_count >> 1] = new_styles[i >> 1]
          merge_ranges[merge_count] = new_start
          merge_ranges[merge_count + 1] = new_ranges[i + 1]
          merge_count += 2
          if (modify_end < range_count && @ranges[modify_end] < new_end && new_end < @ranges[modify_end] + @ranges[modify_end + 1])
            merge_styles[merge_count >> 1] = @styles[modify_end >> 1]
            merge_ranges[merge_count] = new_end
            merge_ranges[merge_count + 1] = @ranges[modify_end] + @ranges[modify_end + 1] - new_end
            merge_count += 2
            modify_last = 2
          end
          grow = add_merge(merge_ranges, merge_styles, merge_count, modify_start, modify_end + modify_last)
          range_count += grow
          modify_start = modify_end += grow
          i += 2
        end
      else
        start = new_styles[0].attr_start
        modify_start = get_range_index(start, -1, @style_count)
        modify_end = 0
        insert = (modify_start).equal?(@style_count)
        if (!insert)
          end_ = new_styles[new_styles.attr_length - 1].attr_start + new_styles[new_styles.attr_length - 1].attr_length
          modify_end = get_range_index(end_, modify_start - 1, @style_count)
          insert = (modify_start).equal?(modify_end) && @styles[modify_start].attr_start >= end_
        end
        if (insert)
          add_merge(new_styles, new_styles.attr_length, modify_start, modify_start)
          return
        end
        modify_end = modify_start
        merge_styles = Array.typed(StyleRange).new(3) { nil }
        i = 0
        while i < new_styles.attr_length
          new_style = new_styles[i]
          style = nil
          new_start = new_style.attr_start
          new_end = new_start + new_style.attr_length
          if ((new_start).equal?(new_end))
            i += 1
            next
          end
          modify_last = 0
          merge_count = 0
          while (modify_end < @style_count)
            if (new_start >= @styles[modify_start].attr_start + @styles[modify_start].attr_length)
              modify_start += 1
            end
            if (@styles[modify_end].attr_start + @styles[modify_end].attr_length > new_end)
              break
            end
            modify_end += 1
          end
          style = @styles[modify_start]
          if (style.attr_start < new_start && new_start < style.attr_start + style.attr_length)
            style = merge_styles[((merge_count += 1) - 1)] = style.clone
            style.attr_length = new_start - style.attr_start
          end
          merge_styles[((merge_count += 1) - 1)] = new_style
          if (modify_end < @style_count)
            style = @styles[modify_end]
            if (style.attr_start < new_end && new_end < style.attr_start + style.attr_length)
              style = merge_styles[((merge_count += 1) - 1)] = style.clone
              style.attr_length += style.attr_start - new_end
              style.attr_start = new_end
              modify_last = 1
            end
          end
          grow = add_merge(merge_styles, merge_count, modify_start, modify_end + modify_last)
          modify_start = modify_end += grow
          i += 1
        end
      end
    end
    
    typesig { [TextChangingEvent] }
    def text_changing(event)
      start = event.attr_start
      new_char_count = event.attr_new_char_count
      replace_char_count = event.attr_replace_char_count
      new_line_count = event.attr_new_line_count
      replace_line_count = event.attr_replace_line_count
      update_ranges(start, replace_char_count, new_char_count)
      start_line = @content.get_line_at_offset(start)
      if ((replace_char_count).equal?(@content.get_char_count))
        @lines = nil
      end
      if ((replace_line_count).equal?(@line_count))
        @line_count = new_line_count
        @line_width = Array.typed(::Java::Int).new(@line_count) { 0 }
        @line_height = Array.typed(::Java::Int).new(@line_count) { 0 }
        reset(0, @line_count)
      else
        delta = new_line_count - replace_line_count
        if (@line_count + delta > @line_width.attr_length)
          new_widths = Array.typed(::Java::Int).new(@line_count + delta + GROW) { 0 }
          System.arraycopy(@line_width, 0, new_widths, 0, @line_count)
          @line_width = new_widths
          new_heights = Array.typed(::Java::Int).new(@line_count + delta + GROW) { 0 }
          System.arraycopy(@line_height, 0, new_heights, 0, @line_count)
          @line_height = new_heights
        end
        if (!(@lines).nil?)
          if (@line_count + delta > @lines.attr_length)
            new_lines = Array.typed(LineInfo).new(@line_count + delta + GROW) { nil }
            System.arraycopy(@lines, 0, new_lines, 0, @line_count)
            @lines = new_lines
          end
        end
        start_index = start_line + replace_line_count + 1
        end_index = start_line + new_line_count + 1
        System.arraycopy(@line_width, start_index, @line_width, end_index, @line_count - start_index)
        System.arraycopy(@line_height, start_index, @line_height, end_index, @line_count - start_index)
        i = start_line
        while i < end_index
          @line_width[i] = @line_height[i] = -1
          i += 1
        end
        i_ = @line_count + delta
        while i_ < @line_count
          @line_width[i_] = @line_height[i_] = -1
          i_ += 1
        end
        if (!(@layouts).nil?)
          layout_start_line = start_line - @top_index
          layout_end_line = layout_start_line + replace_line_count + 1
          i__ = layout_start_line
          while i__ < layout_end_line
            if (0 <= i__ && i__ < @layouts.attr_length)
              if (!(@layouts[i__]).nil?)
                @layouts[i__].dispose
              end
              @layouts[i__] = nil
              if (!(@bullets).nil? && !(@bullets_indices).nil?)
                @bullets[i__] = nil
              end
            end
            i__ += 1
          end
          if (delta > 0)
            i___ = @layouts.attr_length - 1
            while i___ >= layout_end_line
              if (0 <= i___ && i___ < @layouts.attr_length)
                end_index = i___ + delta
                if (0 <= end_index && end_index < @layouts.attr_length)
                  @layouts[end_index] = @layouts[i___]
                  @layouts[i___] = nil
                  if (!(@bullets).nil? && !(@bullets_indices).nil?)
                    @bullets[end_index] = @bullets[i___]
                    @bullets_indices[end_index] = @bullets_indices[i___]
                    @bullets[i___] = nil
                  end
                else
                  if (!(@layouts[i___]).nil?)
                    @layouts[i___].dispose
                  end
                  @layouts[i___] = nil
                  if (!(@bullets).nil? && !(@bullets_indices).nil?)
                    @bullets[i___] = nil
                  end
                end
              end
              i___ -= 1
            end
          else
            if (delta < 0)
              i___ = layout_end_line
              while i___ < @layouts.attr_length
                if (0 <= i___ && i___ < @layouts.attr_length)
                  end_index = i___ + delta
                  if (0 <= end_index && end_index < @layouts.attr_length)
                    @layouts[end_index] = @layouts[i___]
                    @layouts[i___] = nil
                    if (!(@bullets).nil? && !(@bullets_indices).nil?)
                      @bullets[end_index] = @bullets[i___]
                      @bullets_indices[end_index] = @bullets_indices[i___]
                      @bullets[i___] = nil
                    end
                  else
                    if (!(@layouts[i___]).nil?)
                      @layouts[i___].dispose
                    end
                    @layouts[i___] = nil
                    if (!(@bullets).nil? && !(@bullets_indices).nil?)
                      @bullets[i___] = nil
                    end
                  end
                end
                i___ += 1
              end
            end
          end
        end
        if (!(replace_line_count).equal?(0) || !(new_line_count).equal?(0))
          start_line_offset = @content.get_offset_at_line(start_line)
          if (!(start_line_offset).equal?(start))
            start_line += 1
          end
          update_bullets(start_line, replace_line_count, new_line_count, true)
          if (!(@lines).nil?)
            start_index = start_line + replace_line_count
            end_index = start_line + new_line_count
            System.arraycopy(@lines, start_index, @lines, end_index, @line_count - start_index)
            i__ = start_line
            while i__ < end_index
              @lines[i__] = nil
              i__ += 1
            end
            i___ = @line_count + delta
            while i___ < @line_count
              @lines[i___] = nil
              i___ += 1
            end
          end
        end
        @line_count += delta
        if (!(@max_width_line_index).equal?(-1) && start_line <= @max_width_line_index && @max_width_line_index <= start_line + replace_line_count)
          @max_width = 0
          @max_width_line_index = -1
          i__ = 0
          while i__ < @line_count
            if (@line_width[i__] > @max_width)
              @max_width = @line_width[i__]
              @max_width_line_index = i__
            end
            i__ += 1
          end
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def update_bullets(start_line, replace_line_count, new_line_count, update)
      if ((@bullets).nil?)
        return
      end
      if (!(@bullets_indices).nil?)
        return
      end
      i = 0
      while i < @bullets.attr_length
        bullet = @bullets[i]
        lines = bullet.remove_indices(start_line, replace_line_count, new_line_count, update)
        if (!(lines).nil?)
          if ((@redraw_lines).nil?)
            @redraw_lines = lines
          else
            new_redraw_bullets = Array.typed(::Java::Int).new(@redraw_lines.attr_length + lines.attr_length) { 0 }
            System.arraycopy(@redraw_lines, 0, new_redraw_bullets, 0, @redraw_lines.attr_length)
            System.arraycopy(lines, 0, new_redraw_bullets, @redraw_lines.attr_length, lines.attr_length)
            @redraw_lines = new_redraw_bullets
          end
        end
        i += 1
      end
      removed = 0
      i_ = 0
      while i_ < @bullets.attr_length
        if ((@bullets[i_].size).equal?(0))
          removed += 1
        end
        i_ += 1
      end
      if (removed > 0)
        if ((removed).equal?(@bullets.attr_length))
          @bullets = nil
        else
          new_bullets_list = Array.typed(Bullet).new(@bullets.attr_length - removed) { nil }
          i__ = 0
          j = 0
          while i__ < @bullets.attr_length
            bullet = @bullets[i__]
            if (bullet.size > 0)
              new_bullets_list[((j += 1) - 1)] = bullet
            end
            i__ += 1
          end
          @bullets = new_bullets_list
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def update_ranges(start, replace_char_count, new_char_count)
      if ((@style_count).equal?(0) || ((replace_char_count).equal?(0) && (new_char_count).equal?(0)))
        return
      end
      if (!(@ranges).nil?)
        range_count = @style_count << 1
        modify_start = get_range_index(start, -1, range_count)
        if ((modify_start).equal?(range_count))
          return
        end
        end_ = start + replace_char_count
        modify_end = get_range_index(end_, modify_start - 1, range_count)
        offset = new_char_count - replace_char_count
        if ((modify_start).equal?(modify_end) && @ranges[modify_start] < start && end_ < @ranges[modify_end] + @ranges[modify_end + 1])
          if ((new_char_count).equal?(0))
            @ranges[modify_start + 1] -= replace_char_count
            modify_end += 2
          else
            if (range_count + 2 > @ranges.attr_length)
              new_ranges = Array.typed(::Java::Int).new(@ranges.attr_length + (GROW << 1)) { 0 }
              System.arraycopy(@ranges, 0, new_ranges, 0, range_count)
              @ranges = new_ranges
              new_styles = Array.typed(StyleRange).new(@styles.attr_length + GROW) { nil }
              System.arraycopy(@styles, 0, new_styles, 0, @style_count)
              @styles = new_styles
            end
            System.arraycopy(@ranges, modify_start + 2, @ranges, modify_start + 4, range_count - (modify_start + 2))
            System.arraycopy(@styles, (modify_start + 2) >> 1, @styles, (modify_start + 4) >> 1, @style_count - ((modify_start + 2) >> 1))
            @ranges[modify_start + 3] = @ranges[modify_start] + @ranges[modify_start + 1] - end_
            @ranges[modify_start + 2] = start + new_char_count
            @ranges[modify_start + 1] = start - @ranges[modify_start]
            @styles[(modify_start >> 1) + 1] = @styles[modify_start >> 1]
            range_count += 2
            @style_count += 1
            modify_end += 4
          end
          if (!(offset).equal?(0))
            i = modify_end
            while i < range_count
              @ranges[i] += offset
              i += 2
            end
          end
        else
          if (@ranges[modify_start] < start && start < @ranges[modify_start] + @ranges[modify_start + 1])
            @ranges[modify_start + 1] = start - @ranges[modify_start]
            modify_start += 2
          end
          if (modify_end < range_count && @ranges[modify_end] < end_ && end_ < @ranges[modify_end] + @ranges[modify_end + 1])
            @ranges[modify_end + 1] = @ranges[modify_end] + @ranges[modify_end + 1] - end_
            @ranges[modify_end] = end_
          end
          if (!(offset).equal?(0))
            i = modify_end
            while i < range_count
              @ranges[i] += offset
              i += 2
            end
          end
          System.arraycopy(@ranges, modify_end, @ranges, modify_start, range_count - modify_end)
          System.arraycopy(@styles, modify_end >> 1, @styles, modify_start >> 1, @style_count - (modify_end >> 1))
          @style_count -= (modify_end - modify_start) >> 1
        end
      else
        modify_start = get_range_index(start, -1, @style_count)
        if ((modify_start).equal?(@style_count))
          return
        end
        end_ = start + replace_char_count
        modify_end = get_range_index(end_, modify_start - 1, @style_count)
        offset = new_char_count - replace_char_count
        if ((modify_start).equal?(modify_end) && @styles[modify_start].attr_start < start && end_ < @styles[modify_end].attr_start + @styles[modify_end].attr_length)
          if ((new_char_count).equal?(0))
            @styles[modify_start].attr_length -= replace_char_count
            modify_end += 1
          else
            if (@style_count + 1 > @styles.attr_length)
              new_styles = Array.typed(StyleRange).new(@styles.attr_length + GROW) { nil }
              System.arraycopy(@styles, 0, new_styles, 0, @style_count)
              @styles = new_styles
            end
            System.arraycopy(@styles, modify_start + 1, @styles, modify_start + 2, @style_count - (modify_start + 1))
            @styles[modify_start + 1] = @styles[modify_start].clone
            @styles[modify_start + 1].attr_length = @styles[modify_start].attr_start + @styles[modify_start].attr_length - end_
            @styles[modify_start + 1].attr_start = start + new_char_count
            @styles[modify_start].attr_length = start - @styles[modify_start].attr_start
            @style_count += 1
            modify_end += 2
          end
          if (!(offset).equal?(0))
            i = modify_end
            while i < @style_count
              @styles[i].attr_start += offset
              i += 1
            end
          end
        else
          if (@styles[modify_start].attr_start < start && start < @styles[modify_start].attr_start + @styles[modify_start].attr_length)
            @styles[modify_start].attr_length = start - @styles[modify_start].attr_start
            modify_start += 1
          end
          if (modify_end < @style_count && @styles[modify_end].attr_start < end_ && end_ < @styles[modify_end].attr_start + @styles[modify_end].attr_length)
            @styles[modify_end].attr_length = @styles[modify_end].attr_start + @styles[modify_end].attr_length - end_
            @styles[modify_end].attr_start = end_
          end
          if (!(offset).equal?(0))
            i = modify_end
            while i < @style_count
              @styles[i].attr_start += offset
              i += 1
            end
          end
          System.arraycopy(@styles, modify_end, @styles, modify_start, @style_count - modify_end)
          @style_count -= modify_end - modify_start
        end
      end
    end
    
    private
    alias_method :initialize__styled_text_renderer, :initialize
  end
  
end
