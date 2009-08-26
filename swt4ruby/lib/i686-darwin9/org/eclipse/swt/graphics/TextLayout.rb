require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Graphics
  module TextLayoutImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Carbon
      include ::Org::Eclipse::Swt
    }
  end
  
  # <code>TextLayout</code> is a graphic object that represents
  # styled text.
  # <p>
  # Instances of this class provide support for drawing, cursor
  # navigation, hit testing, text wrapping, alignment, tab expansion
  # line breaking, etc.  These are aspects required for rendering internationalized text.
  # </p><p>
  # Application code must explicitly invoke the <code>TextLayout#dispose()</code>
  # method to release the operating system resources managed by each instance
  # when those instances are no longer required.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#textlayout">TextLayout, TextStyle snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: CustomControlExample, StyledText tab</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.0
  class TextLayout < TextLayoutImports.const_get :Resource
    include_class_members TextLayoutImports
    
    class_module.module_eval {
      const_set_lazy(:StyleItem) { Class.new do
        include_class_members TextLayout
        
        attr_accessor :style
        alias_method :attr_style, :style
        undef_method :style
        alias_method :attr_style=, :style=
        undef_method :style=
        
        attr_accessor :start
        alias_method :attr_start, :start
        undef_method :start
        alias_method :attr_start=, :start=
        undef_method :start=
        
        attr_accessor :atsu_style
        alias_method :attr_atsu_style, :atsu_style
        undef_method :atsu_style
        alias_method :attr_atsu_style=, :atsu_style=
        undef_method :atsu_style=
        
        typesig { [class_self::Device, class_self::Font] }
        def create_style(device, default_font)
          if (!(@atsu_style).equal?(0))
            return
          end
          buffer = Array.typed(::Java::Int).new(1) { 0 }
          OS._atsucreate_style(buffer)
          @atsu_style = buffer[0]
          if ((@atsu_style).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          length = 0
          ptr_length = 0
          index = 0
          font = nil
          foreground = nil
          metrics = nil
          if (!(@style).nil?)
            font = @style.attr_font
            foreground = @style.attr_foreground
            metrics = @style.attr_metrics
            if (@style.attr_underline && ((@style.attr_underline_style).equal?(SWT::UNDERLINE_SINGLE) || (@style.attr_underline_style).equal?(SWT::UNDERLINE_DOUBLE)))
              length += 1
              ptr_length += 1
              if ((@style.attr_underline_style).equal?(SWT::UNDERLINE_DOUBLE))
                length += 1
                ptr_length += 2
              end
              if (!(@style.attr_underline_color).nil?)
                length += 1
                ptr_length += 4
              end
            end
            if (@style.attr_strikeout)
              length += 1
              ptr_length += 1
              if (!(@style.attr_strikeout_color).nil?)
                length += 1
                ptr_length += 4
              end
            end
            if (!(metrics).nil?)
              length += 4
              ptr_length += 28
            end
            if (!(@style.attr_rise).equal?(0))
              length += 1
              ptr_length += 4
            end
          end
          if ((font).nil?)
            font = default_font
          end
          synthesize = false
          if (!(font).nil?)
            length += 2
            ptr_length += 8
            synthesize = !(font.attr_style).equal?(0)
            if (synthesize)
              length += 2
              ptr_length += 2
            end
          end
          if (!(foreground).nil? && (metrics).nil?)
            length += 1
            ptr_length += RGBColor.attr_sizeof
          end
          buffer1 = Array.typed(::Java::Byte).new(1) { 0 }
          tags = Array.typed(::Java::Int).new(length) { 0 }
          sizes = Array.typed(::Java::Int).new(length) { 0 }
          values = Array.typed(::Java::Int).new(length) { 0 }
          ptr = OS._new_ptr(ptr_length)
          ptr1 = ptr
          if (!(font).nil?)
            buffer[0] = font.attr_handle
            tags[index] = OS.attr_k_atsufont_tag
            sizes[index] = 4
            values[index] = ptr1
            OS.memmove(values[index], buffer, sizes[index])
            ptr1 += sizes[index]
            index += 1
            buffer[0] = OS._x2fix(font.attr_size)
            tags[index] = OS.attr_k_atsusize_tag
            sizes[index] = 4
            values[index] = ptr1
            OS.memmove(values[index], buffer, sizes[index])
            ptr1 += sizes[index]
            index += 1
            if (synthesize)
              buffer1[0] = !((font.attr_style & OS.attr_italic)).equal?(0) ? 1 : 0
              tags[index] = OS.attr_k_atsuqditalic_tag
              sizes[index] = 1
              values[index] = ptr1
              OS.memmove(values[index], buffer1, sizes[index])
              ptr1 += sizes[index]
              index += 1
              buffer1[0] = !((font.attr_style & OS.attr_bold)).equal?(0) ? 1 : 0
              tags[index] = OS.attr_k_atsuqdboldface_tag
              sizes[index] = 1
              values[index] = ptr1
              OS.memmove(values[index], buffer1, sizes[index])
              ptr1 += sizes[index]
              index += 1
            end
          end
          underline_color = 0
          strikeout_color = 0
          if (!(@style).nil? && @style.attr_underline && ((@style.attr_underline_style).equal?(SWT::UNDERLINE_SINGLE) || (@style.attr_underline_style).equal?(SWT::UNDERLINE_DOUBLE)))
            buffer1[0] = 1
            tags[index] = OS.attr_k_atsuqdunderline_tag
            sizes[index] = 1
            values[index] = ptr1
            OS.memmove(values[index], buffer1, sizes[index])
            ptr1 += sizes[index]
            index += 1
            if ((@style.attr_underline_style).equal?(SWT::UNDERLINE_DOUBLE))
              buffer2 = Array.typed(::Java::Short).new([OS.attr_k_atsustyle_double_line_count])
              tags[index] = OS.attr_k_atsustyle_underline_count_option_tag
              sizes[index] = 2
              values[index] = ptr1
              OS.memmove(values[index], buffer2, sizes[index])
              ptr1 += sizes[index]
              index += 1
            end
            if (!(@style.attr_underline_color).nil?)
              buffer[0] = underline_color = OS._cgcolor_create(device.attr_colorspace, @style.attr_underline_color.attr_handle)
              tags[index] = OS.attr_k_atsustyle_underline_color_option_tag
              sizes[index] = 4
              values[index] = ptr1
              OS.memmove(values[index], buffer, sizes[index])
              ptr1 += sizes[index]
              index += 1
            end
          end
          if (!(@style).nil? && @style.attr_strikeout)
            buffer1[0] = 1
            tags[index] = OS.attr_k_atsustyle_strike_through_tag
            sizes[index] = 1
            values[index] = ptr1
            OS.memmove(values[index], buffer1, sizes[index])
            ptr1 += sizes[index]
            index += 1
            if (!(@style.attr_strikeout_color).nil?)
              buffer[0] = strikeout_color = OS._cgcolor_create(device.attr_colorspace, @style.attr_strikeout_color.attr_handle)
              tags[index] = OS.attr_k_atsustyle_strike_through_color_option_tag
              sizes[index] = 4
              values[index] = ptr1
              OS.memmove(values[index], buffer, sizes[index])
              ptr1 += sizes[index]
              index += 1
            end
          end
          if (!(metrics).nil?)
            buffer[0] = OS._long2fix(metrics.attr_ascent)
            tags[index] = OS.attr_k_atsuascent_tag
            sizes[index] = 4
            values[index] = ptr1
            OS.memmove(values[index], buffer, sizes[index])
            ptr1 += sizes[index]
            index += 1
            buffer[0] = OS._long2fix(metrics.attr_descent)
            tags[index] = OS.attr_k_atsudescent_tag
            sizes[index] = 4
            values[index] = ptr1
            OS.memmove(values[index], buffer, sizes[index])
            ptr1 += sizes[index]
            index += 1
            buffer[0] = OS._long2fix(metrics.attr_width)
            tags[index] = OS.attr_k_atsuimpose_width_tag
            sizes[index] = 4
            values[index] = ptr1
            OS.memmove(values[index], buffer, sizes[index])
            ptr1 += sizes[index]
            index += 1
            atsurgbalpha_color = Array.typed(::Java::Float).new([0, 0, 0, 0])
            tags[index] = OS.attr_k_atsurgbalpha_color_tag
            sizes[index] = 16
            values[index] = ptr1
            OS.memmove(values[index], atsurgbalpha_color, sizes[index])
            ptr1 += sizes[index]
            index += 1
          end
          if (!(@style).nil? && !(@style.attr_rise).equal?(0))
            buffer[0] = OS._long2fix(@style.attr_rise)
            tags[index] = OS.attr_k_atsucross_stream_shift_tag
            sizes[index] = 4
            values[index] = ptr1
            OS.memmove(values[index], buffer, sizes[index])
            ptr1 += sizes[index]
            index += 1
          end
          if (!(foreground).nil? && (metrics).nil?)
            rgb = self.class::RGBColor.new
            color = foreground.attr_handle
            rgb.attr_red = RJava.cast_to_short((color[0] * 0xffff))
            rgb.attr_green = RJava.cast_to_short((color[1] * 0xffff))
            rgb.attr_blue = RJava.cast_to_short((color[2] * 0xffff))
            tags[index] = OS.attr_k_atsucolor_tag
            sizes[index] = RGBColor.attr_sizeof
            values[index] = ptr1
            OS.memmove(values[index], rgb, sizes[index])
            ptr1 += sizes[index]
            index += 1
          end
          OS._atsuset_attributes(@atsu_style, tags.attr_length, tags, sizes, values)
          OS._dispose_ptr(ptr)
          if (!(underline_color).equal?(0))
            OS._cgcolor_release(underline_color)
          end
          if (!(strikeout_color).equal?(0))
            OS._cgcolor_release(strikeout_color)
          end
        end
        
        typesig { [] }
        def free_style
          if ((@atsu_style).equal?(0))
            return
          end
          OS._atsudispose_style(@atsu_style)
          @atsu_style = 0
        end
        
        typesig { [] }
        def to_s
          return "StyleItem {" + RJava.cast_to_string(@start) + ", " + RJava.cast_to_string(@style) + "}"
        end
        
        typesig { [] }
        def initialize
          @style = nil
          @start = 0
          @atsu_style = 0
        end
        
        private
        alias_method :initialize__style_item, :initialize
      end }
    }
    
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    attr_accessor :text_ptr
    alias_method :attr_text_ptr, :text_ptr
    undef_method :text_ptr
    alias_method :attr_text_ptr=, :text_ptr=
    undef_method :text_ptr=
    
    attr_accessor :styles
    alias_method :attr_styles, :styles
    undef_method :styles
    alias_method :attr_styles=, :styles=
    undef_method :styles=
    
    attr_accessor :layout
    alias_method :attr_layout, :layout
    undef_method :layout
    alias_method :attr_layout=, :layout=
    undef_method :layout=
    
    attr_accessor :spacing
    alias_method :attr_spacing, :spacing
    undef_method :spacing
    alias_method :attr_spacing=, :spacing=
    undef_method :spacing=
    
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
    
    attr_accessor :indent
    alias_method :attr_indent, :indent
    undef_method :indent
    alias_method :attr_indent=, :indent=
    undef_method :indent=
    
    attr_accessor :indent_style
    alias_method :attr_indent_style, :indent_style
    undef_method :indent_style
    alias_method :attr_indent_style=, :indent_style=
    undef_method :indent_style=
    
    attr_accessor :tabs
    alias_method :attr_tabs, :tabs
    undef_method :tabs
    alias_method :attr_tabs=, :tabs=
    undef_method :tabs=
    
    attr_accessor :segments
    alias_method :attr_segments, :segments
    undef_method :segments
    alias_method :attr_segments=, :segments=
    undef_method :segments=
    
    attr_accessor :tabs_ptr
    alias_method :attr_tabs_ptr, :tabs_ptr
    undef_method :tabs_ptr
    alias_method :attr_tabs_ptr=, :tabs_ptr=
    undef_method :tabs_ptr=
    
    attr_accessor :breaks
    alias_method :attr_breaks, :breaks
    undef_method :breaks
    alias_method :attr_breaks=, :breaks=
    undef_method :breaks=
    
    attr_accessor :hard_breaks
    alias_method :attr_hard_breaks, :hard_breaks
    undef_method :hard_breaks
    alias_method :attr_hard_breaks=, :hard_breaks=
    undef_method :hard_breaks=
    
    attr_accessor :line_x
    alias_method :attr_line_x, :line_x
    undef_method :line_x
    alias_method :attr_line_x=, :line_x=
    undef_method :line_x=
    
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
    
    attr_accessor :line_ascent
    alias_method :attr_line_ascent, :line_ascent
    undef_method :line_ascent
    alias_method :attr_line_ascent=, :line_ascent=
    undef_method :line_ascent=
    
    class_module.module_eval {
      const_set_lazy(:TAB_COUNT) { 32 }
      const_attr_reader  :TAB_COUNT
    }
    
    attr_accessor :invalid_offsets
    alias_method :attr_invalid_offsets, :invalid_offsets
    undef_method :invalid_offsets
    alias_method :attr_invalid_offsets=, :invalid_offsets=
    undef_method :invalid_offsets=
    
    class_module.module_eval {
      const_set_lazy(:LTR_MARK) { Character.new(0x200E) }
      const_attr_reader  :LTR_MARK
      
      const_set_lazy(:RTL_MARK) { Character.new(0x200F) }
      const_attr_reader  :RTL_MARK
      
      const_set_lazy(:ZWS) { Character.new(0x200B) }
      const_attr_reader  :ZWS
      
      const_set_lazy(:UNDERLINE_IME_INPUT) { 1 << 16 }
      const_attr_reader  :UNDERLINE_IME_INPUT
      
      const_set_lazy(:UNDERLINE_IME_TARGET_CONVERTED) { 2 << 16 }
      const_attr_reader  :UNDERLINE_IME_TARGET_CONVERTED
      
      const_set_lazy(:UNDERLINE_IME_CONVERTED) { 3 << 16 }
      const_attr_reader  :UNDERLINE_IME_CONVERTED
    }
    
    typesig { [Device] }
    # Constructs a new instance of this class on the given device.
    # <p>
    # You must dispose the text layout when it is no longer required.
    # </p>
    # 
    # @param device the device on which to allocate the text layout
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # </ul>
    # 
    # @see #dispose()
    def initialize(device)
      @font = nil
      @text = nil
      @text_ptr = 0
      @styles = nil
      @layout = 0
      @spacing = 0
      @ascent = 0
      @descent = 0
      @indent = 0
      @indent_style = 0
      @tabs = nil
      @segments = nil
      @tabs_ptr = 0
      @breaks = nil
      @hard_breaks = nil
      @line_x = nil
      @line_width = nil
      @line_height = nil
      @line_ascent = nil
      @invalid_offsets = nil
      super(device)
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      OS._atsucreate_text_layout(buffer)
      if ((buffer[0]).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      @layout = buffer[0]
      set_layout_control(OS.attr_k_atsuline_direction_tag, OS.attr_k_atsuleft_to_right_base_direction, 1)
      line_options = OS.attr_k_atsline_last_no_justification | OS.attr_k_atsline_use_device_metrics | OS.attr_k_atsline_keep_spaces_out_of_margin
      set_layout_control(OS.attr_k_atsuline_layout_options_tag, line_options, 4)
      OS._atsuset_highlighting_method(@layout, OS.attr_k_redraw_highlighting, ATSUUnhighlightData.new)
      @ascent = @descent = -1
      @text = ""
      @styles = Array.typed(StyleItem).new(2) { nil }
      @styles[0] = StyleItem.new
      @styles[1] = StyleItem.new
      init
    end
    
    typesig { [] }
    def check_layout
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
    end
    
    typesig { [] }
    def compute_runs
      if (!(@breaks).nil?)
        return
      end
      segments_text = get_segments_text
      text_length = segments_text.length
      chars = CharArray.new(text_length + 1)
      segments_text.get_chars(0, text_length, chars, 1)
      chars[0] = ZWS
      break_count = 1
      i = 0
      while i < chars.attr_length
        c = chars[i]
        if ((c).equal?(Character.new(?\n.ord)) || (c).equal?(Character.new(?\r.ord)))
          break_count += 1
        end
        i += 1
      end
      @hard_breaks = Array.typed(::Java::Int).new(break_count) { 0 }
      break_count = 0
      i_ = 0
      while i_ < chars.attr_length
        c = chars[i_]
        if ((c).equal?(Character.new(?\n.ord)) || (c).equal?(Character.new(?\r.ord)))
          chars[i_] = ZWS
          @hard_breaks[((break_count += 1) - 1)] = i_
        end
        i_ += 1
      end
      if (!(@invalid_offsets).nil?)
        i__ = 0
        while i__ < @invalid_offsets.attr_length
          @invalid_offsets[i__] += 1
          i__ += 1
        end
      else
        @invalid_offsets = Array.typed(::Java::Int).new(0) { 0 }
      end
      @hard_breaks[break_count] = chars.attr_length
      new_text_ptr = OS._new_ptr(chars.attr_length * 2)
      OS.memmove(new_text_ptr, chars, chars.attr_length * 2)
      OS._atsuset_text_pointer_location(@layout, new_text_ptr, 0, chars.attr_length, chars.attr_length)
      OS._atsuset_transient_font_matching(@layout, true)
      if (!(@text_ptr).equal?(0))
        OS._dispose_ptr(@text_ptr)
      end
      @text_ptr = new_text_ptr
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      font = !(@font).nil? ? @font : self.attr_device.attr_system_font
      i__ = 0
      while i__ < @styles.attr_length - 1
        run = @styles[i__]
        run.create_style(self.attr_device, font)
        # set the default font in the ZWS when text is empty fixes text metrics
        start = !(text_length).equal?(0) ? translate_offset(run.attr_start) : 0
        run_length = translate_offset(@styles[i__ + 1].attr_start) - start
        OS._atsuset_run_style(@layout, run.attr_atsu_style, start, run_length)
        i__ += 1
      end
      ptr = OS._new_ptr(12)
      buffer = Array.typed(::Java::Int).new([OS._long2fix(@indent), 0, 0])
      OS.memmove(ptr, buffer, 12)
      tags = Array.typed(::Java::Int).new([OS.attr_k_atsuimpose_width_tag, OS.attr_k_atsuascent_tag, OS.attr_k_atsudescent_tag])
      sizes = Array.typed(::Java::Int).new([4, 4, 4])
      values = Array.typed(::Java::Int).new([ptr, ptr + 4, ptr + 8])
      OS._atsucreate_style(buffer)
      @indent_style = buffer[0]
      OS._atsuset_attributes(@indent_style, tags.attr_length, tags, sizes, values)
      OS._dispose_ptr(ptr)
      OS._atsuset_run_style(@layout, @indent_style, 0, 1)
      i___ = 0
      while i___ < @hard_breaks.attr_length - 1
        offset = @hard_breaks[i___]
        OS._atsuset_run_style(@layout, @indent_style, offset, 1)
        i___ += 1
      end
      OS._atsuget_layout_control(@layout, OS.attr_k_atsuline_width_tag, 4, buffer, nil)
      wrap_width = buffer[0]
      i____ = 0
      start = 0
      while i____ < @hard_breaks.attr_length
        hard_break = @hard_breaks[i____]
        buffer[0] = 0
        if (!(wrap_width).equal?(0))
          OS._atsubatch_break_lines(@layout, start, hard_break - start, wrap_width, buffer)
        end
        OS._atsuset_soft_line_break(@layout, hard_break)
        start = hard_break
        i____ += 1
      end
      OS._atsuget_soft_line_breaks(@layout, 0, OS.attr_k_atsuto_text_end, 0, nil, buffer)
      count = buffer[0]
      @breaks = Array.typed(::Java::Int).new(count) { 0 }
      OS._atsuget_soft_line_breaks(@layout, 0, OS.attr_k_atsuto_text_end, count, @breaks, nil)
      line_count = @breaks.attr_length
      @line_x = Array.typed(::Java::Int).new(line_count) { 0 }
      @line_width = Array.typed(::Java::Int).new(line_count) { 0 }
      @line_height = Array.typed(::Java::Int).new(line_count) { 0 }
      @line_ascent = Array.typed(::Java::Int).new(line_count) { 0 }
      trapezoid = ATSTrapezoid.new
      i_____ = 0
      start_ = 0
      while i_____ < line_count
        if (!(@ascent).equal?(-1))
          ptr = OS._new_ptr(4)
          buffer[0] = OS.attr_k_atsuse_line_height
          OS.memmove(ptr, buffer, 4)
          tags = Array.typed(::Java::Int).new([OS.attr_k_atsuline_ascent_tag])
          sizes = Array.typed(::Java::Int).new([4])
          values = Array.typed(::Java::Int).new([ptr])
          OS._atsuset_line_controls(@layout, start_, tags.attr_length, tags, sizes, values)
          OS._atsuget_line_control(@layout, start_, OS.attr_k_atsuline_ascent_tag, 4, buffer, nil)
          buffer[0] = OS._long2fix(Math.max(@ascent, OS._fix2long(buffer[0])))
          OS.memmove(ptr, buffer, 4)
          OS._atsuset_line_controls(@layout, start_, tags.attr_length, tags, sizes, values)
          OS._dispose_ptr(ptr)
        end
        if (!(@descent).equal?(-1))
          ptr = OS._new_ptr(4)
          buffer[0] = OS.attr_k_atsuse_line_height
          OS.memmove(ptr, buffer, 4)
          tags = Array.typed(::Java::Int).new([OS.attr_k_atsuline_descent_tag])
          sizes = Array.typed(::Java::Int).new([4])
          values = Array.typed(::Java::Int).new([ptr])
          OS._atsuset_line_controls(@layout, start_, tags.attr_length, tags, sizes, values)
          OS._atsuget_line_control(@layout, start_, OS.attr_k_atsuline_descent_tag, 4, buffer, nil)
          buffer[0] = OS._long2fix(Math.max(@descent, OS._fix2long(buffer[0])))
          OS.memmove(ptr, buffer, 4)
          OS._atsuset_line_controls(@layout, start_, tags.attr_length, tags, sizes, values)
          OS._dispose_ptr(ptr)
        end
        line_break = @breaks[i_____]
        line_length = line_break - start_
        OS._atsuget_glyph_bounds(@layout, 0, 0, start_, line_length, RJava.cast_to_short(OS.attr_k_atsuse_device_origins), 1, trapezoid, nil)
        @line_x[i_____] = OS._fix2long(trapezoid.attr_lower_left_x)
        @line_ascent[i_____] = -OS._fix2long(trapezoid.attr_upper_right_y)
        if (!(line_length).equal?(0))
          @line_width[i_____] = OS._fix2long(trapezoid.attr_lower_right_x) - OS._fix2long(trapezoid.attr_lower_left_x)
        end
        @line_height[i_____] = OS._fix2long(trapezoid.attr_lower_right_y) + @line_ascent[i_____] + @spacing
        start_ = line_break
        i_____ += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_polyline(left, top, right, bottom)
      height = bottom - top # can be any number
      width = 2 * height # must be even
      peaks = Compatibility.ceil(right - left, width)
      if ((peaks).equal?(0) && right - left > 2)
        peaks = 1
      end
      length_ = ((2 * peaks) + 1) * 2
      if (length_ < 0)
        return Array.typed(::Java::Float).new(0) { 0.0 }
      end
      coordinates = Array.typed(::Java::Float).new(length_) { 0.0 }
      i = 0
      while i < peaks
        index = 4 * i
        coordinates[index] = left + (width * i)
        coordinates[index + 1] = bottom
        coordinates[index + 2] = coordinates[index] + width / 2
        coordinates[index + 3] = top
        i += 1
      end
      coordinates[length_ - 2] = left + (width * peaks)
      coordinates[length_ - 1] = bottom
      return coordinates
    end
    
    typesig { [] }
    def destroy
      free_runs
      @font = nil
      @text = RJava.cast_to_string(nil)
      @styles = nil
      if (!(@layout).equal?(0))
        OS._atsudispose_text_layout(@layout)
      end
      @layout = 0
      if (!(@text_ptr).equal?(0))
        OS._dispose_ptr(@text_ptr)
      end
      @text_ptr = 0
      if (!(@tabs_ptr).equal?(0))
        OS._dispose_ptr(@tabs_ptr)
      end
      @tabs_ptr = 0
      if (!(@indent_style).equal?(0))
        OS._atsudispose_style(@indent_style)
      end
      @indent_style = 0
    end
    
    typesig { [SwtGC, ::Java::Int, ::Java::Int] }
    # Draws the receiver's text using the specified GC at the specified
    # point.
    # 
    # @param gc the GC to draw
    # @param x the x coordinate of the top left corner of the rectangular area where the text is to be drawn
    # @param y the y coordinate of the top left corner of the rectangular area where the text is to be drawn
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the gc is null</li>
    # </ul>
    def draw(gc, x, y)
      draw(gc, x, y, -1, -1, nil, nil)
    end
    
    typesig { [SwtGC, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Color, Color] }
    # Draws the receiver's text using the specified GC at the specified
    # point.
    # 
    # @param gc the GC to draw
    # @param x the x coordinate of the top left corner of the rectangular area where the text is to be drawn
    # @param y the y coordinate of the top left corner of the rectangular area where the text is to be drawn
    # @param selectionStart the offset where the selections starts, or -1 indicating no selection
    # @param selectionEnd the offset where the selections ends, or -1 indicating no selection
    # @param selectionForeground selection foreground, or NULL to use the system default color
    # @param selectionBackground selection background, or NULL to use the system default color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the gc is null</li>
    # </ul>
    def draw(gc, x, y, selection_start, selection_end, selection_foreground, selection_background)
      draw(gc, x, y, selection_start, selection_end, selection_foreground, selection_background, 0)
    end
    
    typesig { [SwtGC, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Color, Color, ::Java::Int] }
    # Draws the receiver's text using the specified GC at the specified
    # point.
    # <p>
    # The parameter <code>flags</code> can include one of <code>SWT.DELIMITER_SELECTION</code>
    # or <code>SWT.FULL_SELECTION</code> to specify the selection behavior on all lines except
    # for the last line, and can also include <code>SWT.LAST_LINE_SELECTION</code> to extend
    # the specified selection behavior to the last line.
    # </p>
    # @param gc the GC to draw
    # @param x the x coordinate of the top left corner of the rectangular area where the text is to be drawn
    # @param y the y coordinate of the top left corner of the rectangular area where the text is to be drawn
    # @param selectionStart the offset where the selections starts, or -1 indicating no selection
    # @param selectionEnd the offset where the selections ends, or -1 indicating no selection
    # @param selectionForeground selection foreground, or NULL to use the system default color
    # @param selectionBackground selection background, or NULL to use the system default color
    # @param flags drawing options
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the gc is null</li>
    # </ul>
    # 
    # @since 3.3
    def draw(gc, x, y, selection_start, selection_end, selection_foreground, selection_background, flags)
      check_layout
      compute_runs
      if ((gc).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(selection_foreground).nil? && selection_foreground.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(selection_background).nil? && selection_background.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      length_ = translate_offset(@text.length)
      if ((length_).equal?(0) && (flags).equal?(0))
        return
      end
      gc.check_gc(SwtGC::FOREGROUND_FILL)
      if (gc.attr_data.attr_update_clip)
        gc.set_cgclipping
      end
      OS._cgcontext_save_gstate(gc.attr_handle)
      set_layout_control(OS.attr_k_atsucgcontext_tag, gc.attr_handle, 4)
      has_selection = selection_start <= selection_end && !(selection_start).equal?(-1) && !(selection_end).equal?(-1)
      restore_color = false
      if (has_selection || !((flags & SWT::LAST_LINE_SELECTION)).equal?(0))
        if (!(selection_background).nil?)
          restore_color = true
          color = OS._cgcolor_create(self.attr_device.attr_colorspace, selection_background.attr_handle)
          set_layout_control(OS.attr_k_atsuline_highlight_cgcolor_tag, color, 4)
          OS._cgcolor_release(color)
        else
          selection_background = self.attr_device.get_system_color(SWT::COLOR_LIST_BACKGROUND)
        end
      end
      # Feature in ATSU. There is no API to set a background attribute
      # of an ATSU style. Draw the background of styles ourselfs.
      rgn = 0
      rect = nil
      j = 0
      while j < @styles.attr_length
        run = @styles[j]
        style = run.attr_style
        if ((style).nil? || (style.attr_background).nil?)
          j += 1
          next
        end
        start = translate_offset(run.attr_start)
        end_ = j + 1 < @styles.attr_length ? translate_offset(@styles[j + 1].attr_start - 1) : length_
        i = 0
        line_start = 0
        line_y = 0
        while i < @breaks.attr_length
          line_break = @breaks[i]
          line_end = line_break - 1
          if (!(start > line_end || end_ < line_start))
            high_start = Math.max(line_start, start)
            high_end = Math.min(line_end, end_)
            high_len = high_end - high_start + 1
            if (high_len > 0)
              OS._cgcontext_save_gstate(gc.attr_handle)
              if ((rgn).equal?(0))
                rgn = OS._new_rgn
              end
              OS._atsuget_text_highlight(@layout, OS._long2fix(x), OS._long2fix(y + line_y + @line_ascent[i]), high_start, high_len, rgn)
              shape = OS._hishape_create_with_qdrgn(rgn)
              OS._hishape_replace_path_in_cgcontext(shape, gc.attr_handle)
              if ((rect).nil?)
                rect = CGRect.new
              end
              OS._cgcontext_get_path_bounding_box(gc.attr_handle, rect)
              OS._cgcontext_eoclip(gc.attr_handle)
              OS._cgcontext_set_fill_color_space(gc.attr_handle, self.attr_device.attr_colorspace)
              OS._cgcontext_set_fill_color(gc.attr_handle, style.attr_background.attr_handle)
              OS._cgcontext_fill_rect(gc.attr_handle, rect)
              OS._dispose_control(shape)
              OS._cgcontext_restore_gstate(gc.attr_handle)
            end
          end
          if (line_end > end_)
            break
          end
          line_y += @line_height[i]
          line_start = line_break
          i += 1
        end
        j += 1
      end
      selection_start = translate_offset(selection_start)
      selection_end = translate_offset(selection_end)
      OS._cgcontext_scale_ctm(gc.attr_handle, 1, -1)
      draw_x = OS._long2fix(x)
      draw_y = y
      i = 0
      start = 0
      while i < @breaks.attr_length
        line_break = @breaks[i]
        line_length = line_break - start
        if (line_length > 0)
          fix_ydraw = OS._long2fix(-(draw_y + @line_ascent[i]))
          OS._atsudraw_text(@layout, start, line_length, draw_x, fix_ydraw)
          end_ = start + line_length - 1
          if (!(flags).equal?(0) && (has_selection || !((flags & SWT::LAST_LINE_SELECTION)).equal?(0)))
            extent = false
            if ((i).equal?(@breaks.attr_length - 1) && !((flags & SWT::LAST_LINE_SELECTION)).equal?(0))
              extent = true
            else
              hard_break = false
              j_ = 0
              while j_ < @hard_breaks.attr_length
                if ((end_ + 1).equal?(@hard_breaks[j_]))
                  hard_break = true
                  break
                end
                j_ += 1
              end
              if (hard_break)
                if (selection_start <= end_ + 1 && end_ + 1 <= selection_end)
                  extent = true
                end
              else
                if (selection_start <= end_ + 1 && end_ + 1 < selection_end && !((flags & SWT::FULL_SELECTION)).equal?(0))
                  extent = true
                end
              end
            end
            if (extent)
              if ((rect).nil?)
                rect = CGRect.new
              end
              rect.attr_x = x + @line_width[i]
              rect.attr_y = draw_y
              rect.attr_width = !((flags & SWT::FULL_SELECTION)).equal?(0) ? 0x7fffffff : @line_height[i] / 3
              rect.attr_height = @line_height[i]
              OS._cgcontext_save_gstate(gc.attr_handle)
              OS._cgcontext_translate_ctm(gc.attr_handle, 0, -(@line_height[i] + 2 * draw_y))
              OS._cgcontext_set_fill_color_space(gc.attr_handle, self.attr_device.attr_colorspace)
              OS._cgcontext_set_fill_color(gc.attr_handle, selection_background.attr_handle)
              OS._cgcontext_fill_rect(gc.attr_handle, rect)
              OS._cgcontext_restore_gstate(gc.attr_handle)
            end
          end
          if (has_selection && !(selection_start > end_ || start > selection_end))
            sel_start = Math.max(selection_start, start)
            sel_end = Math.min(selection_end, end_)
            OS._atsuhighlight_text(@layout, draw_x, fix_ydraw, sel_start, sel_end - sel_start + 1)
          end
        end
        draw_y += @line_height[i]
        start = line_break
        i += 1
      end
      if (restore_color)
        set_layout_control(OS.attr_k_atsuline_highlight_cgcolor_tag, 0, 4)
      end
      OS._cgcontext_restore_gstate(gc.attr_handle)
      j_ = 0
      while j_ < @styles.attr_length
        run = @styles[j_]
        style = run.attr_style
        if ((style).nil?)
          j_ += 1
          next
        end
        draw_underline = style.attr_underline && !(style.attr_underline_style).equal?(SWT::UNDERLINE_SINGLE) && !(style.attr_underline_style).equal?(SWT::UNDERLINE_DOUBLE)
        draw_underline = draw_underline && ((j_ + 1).equal?(@styles.attr_length) || !style.is_adherent_underline(@styles[j_ + 1].attr_style))
        draw_border = !(style.attr_border_style).equal?(SWT::NONE)
        draw_border = draw_border && ((j_ + 1).equal?(@styles.attr_length) || !style.is_adherent_border(@styles[j_ + 1].attr_style))
        if (!draw_underline && !draw_border)
          j_ += 1
          next
        end
        end_ = j_ + 1 < @styles.attr_length ? translate_offset(@styles[j_ + 1].attr_start - 1) : length_
        i_ = 0
        line_start = 0
        line_y = 0
        while i_ < @breaks.attr_length
          line_break = @breaks[i_]
          line_end = line_break - 1
          if (draw_underline)
            start_ = run.attr_start
            k = j_
            while k > 0 && style.is_adherent_underline(@styles[k - 1].attr_style)
              start_ = @styles[k - 1].attr_start
              k -= 1
            end
            start_ = translate_offset(start_)
            if (!(start_ > line_end || end_ < line_start))
              high_start = Math.max(line_start, start_)
              high_end = Math.min(line_end, end_)
              high_len = high_end - high_start + 1
              if (high_len > 0)
                OS._cgcontext_save_gstate(gc.attr_handle)
                underline_y = y + line_y
                foreground = gc.attr_data.attr_foreground
                line_width = 1
                dashes = nil
                line_cap = OS.attr_k_cgline_cap_butt
                line_join = OS.attr_k_cgline_join_miter
                case (style.attr_underline_style)
                # FALLTHROUGH
                when SWT::UNDERLINE_ERROR
                  line_width = 2
                  dashes = Array.typed(::Java::Float).new([1, 3])
                  line_cap = OS.attr_k_cgline_cap_round
                  line_join = OS.attr_k_cgline_join_round
                  if (!(style.attr_underline_color).nil?)
                    foreground = style.attr_underline_color.attr_handle
                  else
                    if (!(style.attr_foreground).nil?)
                      foreground = style.attr_foreground.attr_handle
                    end
                  end
                  underline_y += 2 * @line_ascent[i_] + line_width
                when SWT::UNDERLINE_SQUIGGLE
                  if (!(style.attr_underline_color).nil?)
                    foreground = style.attr_underline_color.attr_handle
                  else
                    if (!(style.attr_foreground).nil?)
                      foreground = style.attr_foreground.attr_handle
                    end
                  end
                  underline_y += 2 * @line_ascent[i_] + line_width
                when UNDERLINE_IME_INPUT, UNDERLINE_IME_TARGET_CONVERTED, UNDERLINE_IME_CONVERTED
                  line_width = 1.5
                  foreground = (style.attr_underline_style).equal?(UNDERLINE_IME_CONVERTED) ? Array.typed(::Java::Float).new([0.5, 0.5, 0.5, 1]) : Array.typed(::Java::Float).new([0, 0, 0, 1])
                  font = style.attr_font
                  if ((font).nil?)
                    font = !(@font).nil? ? @font : self.attr_device.attr_system_font
                  end
                  metrics = ATSFontMetrics.new
                  OS._atsfont_get_horizontal_metrics(font.attr_handle, OS.attr_k_atsoption_flags_default, metrics)
                  underline_y += @line_ascent[i_] + @line_height[i_] + (metrics.attr_descent * font.attr_size)
                end
                OS._cgcontext_set_stroke_color_space(gc.attr_handle, self.attr_device.attr_colorspace)
                OS._cgcontext_set_stroke_color(gc.attr_handle, foreground)
                OS._cgcontext_set_line_width(gc.attr_handle, line_width)
                OS._cgcontext_set_line_cap(gc.attr_handle, line_cap)
                OS._cgcontext_set_line_join(gc.attr_handle, line_join)
                OS._cgcontext_set_line_dash(gc.attr_handle, 0, dashes, !(dashes).nil? ? dashes.attr_length : 0)
                OS._cgcontext_translate_ctm(gc.attr_handle, 0.5, 0.5)
                count = Array.typed(::Java::Int).new(1) { 0 }
                OS._atsuget_glyph_bounds(@layout, OS._long2fix(x), OS._x2fix(underline_y), high_start, high_len, RJava.cast_to_short(OS.attr_k_atsuse_device_origins), 0, 0, count)
                trapezoids_ptr = OS.malloc(count[0] * ATSTrapezoid.attr_sizeof)
                OS._atsuget_glyph_bounds(@layout, OS._long2fix(x), OS._x2fix(underline_y), high_start, high_len, RJava.cast_to_short(OS.attr_k_atsuse_device_origins), count[0], trapezoids_ptr, count)
                trapezoid = ATSTrapezoid.new
                k_ = 0
                while k_ < count[0]
                  OS.memmove(trapezoid, trapezoids_ptr + (k_ * ATSTrapezoid.attr_sizeof), ATSTrapezoid.attr_sizeof)
                  left = 0.0
                  right = 0.0
                  if (!(trapezoid.attr_upper_left_x).equal?(trapezoid.attr_lower_left_x))
                    ux = OS._fix2long(trapezoid.attr_upper_left_x)
                    uy = OS._fix2long(trapezoid.attr_upper_left_y)
                    lx = OS._fix2long(trapezoid.attr_lower_left_x)
                    ly = OS._fix2long(trapezoid.attr_lower_left_y)
                    a = (uy - ly) / (ux - lx)
                    b = uy - ux * a
                    left = (underline_y - b) / a
                  else
                    left = OS._fix2long(trapezoid.attr_upper_left_x)
                  end
                  if (!(trapezoid.attr_upper_right_x).equal?(trapezoid.attr_lower_right_x))
                    ux = OS._fix2long(trapezoid.attr_upper_right_x)
                    uy = OS._fix2long(trapezoid.attr_upper_right_y)
                    lx = OS._fix2long(trapezoid.attr_lower_right_x)
                    ly = OS._fix2long(trapezoid.attr_lower_right_y)
                    a = (uy - ly) / (ux - lx)
                    b = uy - ux * a
                    right = (underline_y - b) / a
                  else
                    right = OS._fix2long(trapezoid.attr_upper_right_x)
                  end
                  case (style.attr_underline_style)
                  when UNDERLINE_IME_TARGET_CONVERTED, UNDERLINE_IME_CONVERTED
                    left += 1
                    right -= 1
                  end
                  if ((style.attr_underline_style).equal?(SWT::UNDERLINE_SQUIGGLE))
                    line_bottom = y + line_y + @line_height[i_]
                    squiggly_thickness = 1
                    squiggly_height = 2 * squiggly_thickness
                    squiggly_y = Math.min(OS._fix2long(trapezoid.attr_upper_left_y) - squiggly_height / 2, line_bottom - squiggly_height - 1)
                    points = compute_polyline(RJava.cast_to_int(left), RJava.cast_to_int(squiggly_y), RJava.cast_to_int(right), RJava.cast_to_int((squiggly_y + squiggly_height)))
                    OS._cgcontext_begin_path(gc.attr_handle)
                    OS._cgcontext_add_lines(gc.attr_handle, points, points.attr_length / 2)
                  else
                    OS._cgcontext_move_to_point(gc.attr_handle, left, OS._fix2long(trapezoid.attr_upper_left_y))
                    OS._cgcontext_add_line_to_point(gc.attr_handle, right, OS._fix2long(trapezoid.attr_upper_right_y))
                  end
                  k_ += 1
                end
                OS.free(trapezoids_ptr)
                OS._cgcontext_stroke_path(gc.attr_handle)
                OS._cgcontext_restore_gstate(gc.attr_handle)
              end
            end
          end
          if (draw_border)
            start_ = run.attr_start
            k = j_
            while k > 0 && style.is_adherent_border(@styles[k - 1].attr_style)
              start_ = @styles[k - 1].attr_start
              k -= 1
            end
            start_ = translate_offset(start_)
            if (!(start_ > line_end || end_ < line_start))
              high_start = Math.max(line_start, start_)
              high_end = Math.min(line_end, end_)
              high_len = high_end - high_start + 1
              if (high_len > 0)
                OS._cgcontext_save_gstate(gc.attr_handle)
                count = Array.typed(::Java::Int).new(1) { 0 }
                OS._atsuget_glyph_bounds(@layout, OS._long2fix(x), OS._long2fix(y + line_y + @line_ascent[i_]), high_start, high_len, RJava.cast_to_short(OS.attr_k_atsuse_device_origins), 0, 0, count)
                trapezoids_ptr = OS.malloc(count[0] * ATSTrapezoid.attr_sizeof)
                OS._atsuget_glyph_bounds(@layout, OS._long2fix(x), OS._long2fix(y + line_y + @line_ascent[i_]), high_start, high_len, RJava.cast_to_short(OS.attr_k_atsuse_device_origins), count[0], trapezoids_ptr, count)
                trapezoid = ATSTrapezoid.new
                k_ = 0
                while k_ < count[0]
                  OS.memmove(trapezoid, trapezoids_ptr + (k_ * ATSTrapezoid.attr_sizeof), ATSTrapezoid.attr_sizeof)
                  upper_y = y + line_y + 1
                  lower_y = y + line_y + @line_height[i_]
                  OS._cgcontext_move_to_point(gc.attr_handle, OS._fix2long(trapezoid.attr_lower_left_x), lower_y)
                  OS._cgcontext_add_line_to_point(gc.attr_handle, OS._fix2long(trapezoid.attr_upper_left_x), upper_y)
                  OS._cgcontext_add_line_to_point(gc.attr_handle, OS._fix2long(trapezoid.attr_upper_right_x) - 1, upper_y)
                  OS._cgcontext_add_line_to_point(gc.attr_handle, OS._fix2long(trapezoid.attr_lower_right_x) - 1, lower_y)
                  OS._cgcontext_close_path(gc.attr_handle)
                  k_ += 1
                end
                OS.free(trapezoids_ptr)
                width = 1
                OS._cgcontext_set_should_antialias(gc.attr_handle, false)
                OS._cgcontext_set_line_cap(gc.attr_handle, OS.attr_k_cgline_cap_butt)
                OS._cgcontext_set_line_join(gc.attr_handle, OS.attr_k_cgline_join_miter)
                OS._cgcontext_set_line_width(gc.attr_handle, width)
                dashes = nil
                case (style.attr_border_style)
                when SWT::BORDER_SOLID
                when SWT::BORDER_DASH
                  dashes = !(width).equal?(0) ? SwtGC::LINE_DASH : SwtGC::LINE_DASH_ZERO
                when SWT::BORDER_DOT
                  dashes = !(width).equal?(0) ? SwtGC::LINE_DOT : SwtGC::LINE_DOT_ZERO
                end
                OS._cgcontext_set_line_dash(gc.attr_handle, 0, dashes, !(dashes).nil? ? dashes.attr_length : 0)
                color = nil
                if (!(style.attr_border_color).nil?)
                  color = style.attr_border_color.attr_handle
                end
                if ((color).nil? && !(style.attr_foreground).nil?)
                  color = style.attr_foreground.attr_handle
                end
                if (!(color).nil?)
                  OS._cgcontext_set_stroke_color_space(gc.attr_handle, self.attr_device.attr_colorspace)
                  OS._cgcontext_set_stroke_color(gc.attr_handle, color)
                end
                OS._cgcontext_translate_ctm(gc.attr_handle, 0.5, 0.5)
                OS._cgcontext_stroke_path(gc.attr_handle)
                OS._cgcontext_restore_gstate(gc.attr_handle)
              end
            end
          end
          if (line_end > end_)
            break
          end
          line_y += @line_height[i_]
          line_start = line_break
          i_ += 1
        end
        j_ += 1
      end
      if (!(rgn).equal?(0))
        OS._dispose_rgn(rgn)
      end
    end
    
    typesig { [] }
    def free_runs
      if ((@breaks).nil?)
        return
      end
      i = 0
      while i < @styles.attr_length
        run = @styles[i]
        run.free_style
        i += 1
      end
      if (!(@indent_style).equal?(0))
        OS._atsudispose_style(@indent_style)
      end
      @indent_style = 0
      @breaks = @line_x = @line_width = @line_height = @line_ascent = nil
      @invalid_offsets = nil
    end
    
    typesig { [] }
    # Returns the receiver's horizontal text alignment, which will be one
    # of <code>SWT.LEFT</code>, <code>SWT.CENTER</code> or
    # <code>SWT.RIGHT</code>.
    # 
    # @return the alignment used to positioned text horizontally
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_alignment
      check_layout
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      OS._atsuget_layout_control(@layout, OS.attr_k_atsuline_flush_factor_tag, 4, buffer, nil)
      case (buffer[0])
      when OS.attr_k_atsucenter_alignment
        return SWT::CENTER
      when OS.attr_k_atsuend_alignment
        return SWT::RIGHT
      end
      return SWT::LEFT
    end
    
    typesig { [] }
    # Returns the ascent of the receiver.
    # 
    # @return the ascent
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getDescent()
    # @see #setDescent(int)
    # @see #setAscent(int)
    # @see #getLineMetrics(int)
    def get_ascent
      check_layout
      return @ascent
    end
    
    typesig { [] }
    # Returns the bounds of the receiver. The width returned is either the
    # width of the longest line or the width set using {@link TextLayout#setWidth(int)}.
    # To obtain the text bounds of a line use {@link TextLayout#getLineBounds(int)}.
    # 
    # @return the bounds of the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #setWidth(int)
    # @see #getLineBounds(int)
    def get_bounds
      check_layout
      compute_runs
      width = 0
      height = 0
      length_ = @text.length
      if ((length_).equal?(0))
        font = !(@font).nil? ? @font : self.attr_device.attr_system_font
        metrics = ATSFontMetrics.new
        OS._atsfont_get_vertical_metrics(font.attr_handle, OS.attr_k_atsoption_flags_default, metrics)
        OS._atsfont_get_horizontal_metrics(font.attr_handle, OS.attr_k_atsoption_flags_default, metrics)
        ascent = RJava.cast_to_int((0.5 + metrics.attr_ascent * font.attr_size))
        descent = RJava.cast_to_int((0.5 + (-metrics.attr_descent + metrics.attr_leading) * font.attr_size))
        ascent = Math.max(ascent, @ascent)
        descent = Math.max(descent, @descent)
        height = ascent + descent
      else
        i = 0
        while i < @breaks.attr_length
          width = Math.max(width, @line_width[i])
          height += @line_height[i]
          i += 1
        end
      end
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      OS._atsuget_layout_control(@layout, OS.attr_k_atsuline_width_tag, 4, buffer, nil)
      wrap_width = OS._fix2long(buffer[0])
      if (!(wrap_width).equal?(0))
        width = Math.max(width, wrap_width)
      end
      return Rectangle.new(0, 0, width, height)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns the bounds for the specified range of characters. The
    # bounds is the smallest rectangle that encompasses all characters
    # in the range. The start and end offsets are inclusive and will be
    # clamped if out of range.
    # 
    # @param start the start offset
    # @param end the end offset
    # @return the bounds of the character range
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_bounds(start, end_)
      check_layout
      compute_runs
      length_ = @text.length
      if ((length_).equal?(0))
        return Rectangle.new(0, 0, 0, 0)
      end
      if (start > end_)
        return Rectangle.new(0, 0, 0, 0)
      end
      start = Math.min(Math.max(0, start), length_ - 1)
      end_ = Math.min(Math.max(0, end_), length_ - 1)
      start = translate_offset(start)
      end_ = translate_offset(end_)
      i = 0
      while i < @hard_breaks.attr_length
        if ((start).equal?(@hard_breaks[i]))
          if (start > 0)
            start -= 1
          end
        end
        if ((end_).equal?(@hard_breaks[i]))
          if (end_ > 0)
            end_ -= 1
          end
        end
        i += 1
      end
      rgn = OS._new_rgn
      rect = Rect.new
      rect1 = Rect.new
      i_ = 0
      line_start = 0
      line_y = 0
      while i_ < @breaks.attr_length
        line_break = @breaks[i_]
        line_end = line_break - 1
        if (!(start > line_end || end_ < line_start))
          high_start = Math.max(line_start, start)
          high_end = Math.min(line_end, end_)
          high_len = high_end - high_start + 1
          if (high_len > 0)
            OS._atsuget_text_highlight(@layout, 0, OS._long2fix(line_y + @line_ascent[i_]), high_start, high_len, rgn)
            OS._get_region_bounds(rgn, rect1)
            OS._union_rect(rect, rect1, rect)
          end
        end
        if (line_end > end_)
          break
        end
        line_y += @line_height[i_]
        line_start = line_break
        i_ += 1
      end
      OS._dispose_rgn(rgn)
      return Rectangle.new(rect.attr_left, rect.attr_top, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top)
    end
    
    typesig { [] }
    # Returns the descent of the receiver.
    # 
    # @return the descent
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getAscent()
    # @see #setAscent(int)
    # @see #setDescent(int)
    # @see #getLineMetrics(int)
    def get_descent
      check_layout
      return @descent
    end
    
    typesig { [] }
    # Returns the default font currently being used by the receiver
    # to draw and measure text.
    # 
    # @return the receiver's font
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_font
      check_layout
      return @font
    end
    
    typesig { [] }
    # Returns the receiver's indent.
    # 
    # @return the receiver's indent
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.2
    def get_indent
      check_layout
      return @indent
    end
    
    typesig { [] }
    # Returns the receiver's justification.
    # 
    # @return the receiver's justification
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.2
    def get_justify
      check_layout
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      OS._atsuget_layout_control(@layout, OS.attr_k_atsuline_justification_factor_tag, 4, buffer, nil)
      return (buffer[0]).equal?(OS.attr_k_atsufull_justification)
    end
    
    typesig { [::Java::Int] }
    # Returns the embedding level for the specified character offset. The
    # embedding level is usually used to determine the directionality of a
    # character in bidirectional text.
    # 
    # @param offset the character offset
    # @return the embedding level
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the character offset is out of range</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    def get_level(offset)
      check_layout
      compute_runs
      length_ = @text.length
      if (!(0 <= offset && offset <= length_))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      offset = translate_offset(offset)
      level = 0
      # TODO
      return level
    end
    
    typesig { [] }
    # Returns the line offsets.  Each value in the array is the
    # offset for the first character in a line except for the last
    # value, which contains the length of the text.
    # 
    # @return the line offsets
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_line_offsets
      check_layout
      compute_runs
      offsets = Array.typed(::Java::Int).new(@breaks.attr_length + 1) { 0 }
      i = 1
      while i < offsets.attr_length
        offsets[i] = untranslate_offset(@breaks[i - 1])
        i += 1
      end
      return offsets
    end
    
    typesig { [::Java::Int] }
    # Returns the index of the line that contains the specified
    # character offset.
    # 
    # @param offset the character offset
    # @return the line index
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the character offset is out of range</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_line_index(offset)
      check_layout
      compute_runs
      length_ = @text.length
      if (!(0 <= offset && offset <= length_))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      offset = translate_offset(offset)
      i = 0
      while i < @breaks.attr_length - 1
        line_break = @breaks[i]
        if (line_break > offset)
          return i
        end
        i += 1
      end
      return @breaks.attr_length - 1
    end
    
    typesig { [::Java::Int] }
    # Returns the bounds of the line for the specified line index.
    # 
    # @param lineIndex the line index
    # @return the line bounds
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the line index is out of range</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_line_bounds(line_index)
      check_layout
      compute_runs
      line_count = @breaks.attr_length
      if (!(0 <= line_index && line_index < line_count))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      line_y = 0
      i = 0
      while i < line_index
        line_y += @line_height[i]
        i += 1
      end
      line_x = @line_x[line_index]
      line_width = @line_width[line_index]
      line_height = @line_height[line_index] - @spacing
      return Rectangle.new(line_x, line_y, line_width, line_height)
    end
    
    typesig { [] }
    # Returns the receiver's line count. This includes lines caused
    # by wrapping.
    # 
    # @return the line count
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_line_count
      check_layout
      compute_runs
      return @breaks.attr_length
    end
    
    typesig { [::Java::Int] }
    # Returns the font metrics for the specified line index.
    # 
    # @param lineIndex the line index
    # @return the font metrics
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the line index is out of range</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_line_metrics(line_index)
      check_layout
      compute_runs
      line_count = @breaks.attr_length
      if (!(0 <= line_index && line_index < line_count))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      length_ = @text.length
      if ((length_).equal?(0))
        font = !(@font).nil? ? @font : self.attr_device.attr_system_font
        metrics = ATSFontMetrics.new
        OS._atsfont_get_vertical_metrics(font.attr_handle, OS.attr_k_atsoption_flags_default, metrics)
        OS._atsfont_get_horizontal_metrics(font.attr_handle, OS.attr_k_atsoption_flags_default, metrics)
        ascent = RJava.cast_to_int((0.5 + metrics.attr_ascent * font.attr_size))
        descent = RJava.cast_to_int((0.5 + (-metrics.attr_descent + metrics.attr_leading) * font.attr_size))
        ascent = Math.max(ascent, @ascent)
        descent = Math.max(descent, @descent)
        return FontMetrics.carbon_new(ascent, descent, 0, 0, ascent + descent)
      end
      start = (line_index).equal?(0) ? 0 : @breaks[line_index - 1]
      line_length = @breaks[line_index] - start
      ascent = Array.typed(::Java::Int).new(1) { 0 }
      descent = Array.typed(::Java::Int).new(1) { 0 }
      OS._atsuget_unjustified_bounds(@layout, start, line_length, nil, nil, ascent, descent)
      height = OS._fix2long(ascent[0]) + OS._fix2long(descent[0])
      return FontMetrics.carbon_new(OS._fix2long(ascent[0]), OS._fix2long(descent[0]), 0, 0, height)
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    # Returns the location for the specified character offset. The
    # <code>trailing</code> argument indicates whether the offset
    # corresponds to the leading or trailing edge of the cluster.
    # 
    # @param offset the character offset
    # @param trailing the trailing flag
    # @return the location of the character offset
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getOffset(Point, int[])
    # @see #getOffset(int, int, int[])
    def get_location(offset, trailing)
      check_layout
      compute_runs
      length_ = @text.length
      if (!(0 <= offset && offset <= length_))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      if ((length_).equal?(0))
        return Point.new(0, 0)
      end
      offset = translate_offset(offset)
      i = 0
      while i < @hard_breaks.attr_length
        if ((offset).equal?(@hard_breaks[i]))
          trailing = true
          if (offset > 0)
            offset -= 1
          end
          break
        end
        i += 1
      end
      line_y = 0
      i_ = 0
      while i_ < @breaks.attr_length - 1
        line_break = @breaks[i_]
        if (line_break > offset)
          break
        end
        line_y += @line_height[i_]
        i_ += 1
      end
      if (trailing)
        offset += 1
      end
      caret = ATSUCaret.new
      OS._atsuoffset_to_position(@layout, offset, !trailing, caret, nil, nil)
      return Point.new(Math.min(OS._fix2long(caret.attr_f_x), OS._fix2long(caret.attr_f_delta_x)), line_y)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns the next offset for the specified offset and movement
    # type.  The movement is one of <code>SWT.MOVEMENT_CHAR</code>,
    # <code>SWT.MOVEMENT_CLUSTER</code>, <code>SWT.MOVEMENT_WORD</code>,
    # <code>SWT.MOVEMENT_WORD_END</code> or <code>SWT.MOVEMENT_WORD_START</code>.
    # 
    # @param offset the start offset
    # @param movement the movement type
    # @return the next offset
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the offset is out of range</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getPreviousOffset(int, int)
    def get_next_offset(offset, movement)
      return __get_offset(offset, movement, true)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def __get_offset(offset, movement, forward)
      check_layout
      compute_runs
      length_ = @text.length
      if (!(0 <= offset && offset <= length_))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      if ((length_).equal?(0))
        return 0
      end
      offset = translate_offset(offset)
      new_offset = 0
      type = OS.attr_k_atsuby_character
      case (movement)
      when SWT::MOVEMENT_CLUSTER
        type = OS.attr_k_atsuby_character_cluster
      when SWT::MOVEMENT_WORD
        type = OS.attr_k_atsuby_word
      end
      if (forward)
        offset = __get_native_offset(offset, type, forward)
        new_offset = untranslate_offset(offset)
        if ((movement).equal?(SWT::MOVEMENT_WORD) || (movement).equal?(SWT::MOVEMENT_WORD_END))
          while (new_offset < length_ && (!(!Compatibility.is_letter_or_digit(@text.char_at(new_offset)) && Compatibility.is_letter_or_digit(@text.char_at(new_offset - 1)))))
            offset = __get_native_offset(offset, type, forward)
            new_offset = untranslate_offset(offset)
          end
        end
        if ((movement).equal?(SWT::MOVEMENT_WORD_START))
          while (new_offset < length_ && (!(Compatibility.is_letter_or_digit(@text.char_at(new_offset)) && !Compatibility.is_letter_or_digit(@text.char_at(new_offset - 1)))))
            offset = __get_native_offset(offset, type, forward)
            new_offset = untranslate_offset(offset)
          end
        end
      else
        offset = __get_native_offset(offset, type, forward)
        new_offset = untranslate_offset(offset)
        if ((movement).equal?(SWT::MOVEMENT_WORD) || (movement).equal?(SWT::MOVEMENT_WORD_START))
          while (new_offset > 0 && (!(Compatibility.is_letter_or_digit(@text.char_at(new_offset)) && !Compatibility.is_letter_or_digit(@text.char_at(new_offset - 1)))))
            offset = __get_native_offset(offset, type, forward)
            new_offset = untranslate_offset(offset)
          end
        end
        if ((movement).equal?(SWT::MOVEMENT_WORD_END))
          while (new_offset > 0 && (!(!Compatibility.is_letter_or_digit(@text.char_at(new_offset)) && Compatibility.is_letter_or_digit(@text.char_at(new_offset - 1)))))
            offset = __get_native_offset(offset, type, forward)
            new_offset = untranslate_offset(offset)
          end
        end
      end
      return new_offset
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def __get_native_offset(offset, movement, forward)
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      invalid = false
      begin
        if (forward)
          OS._atsunext_cursor_position(@layout, offset, movement, buffer)
        else
          OS._atsuprevious_cursor_position(@layout, offset, movement, buffer)
        end
        if ((buffer[0]).equal?(offset))
          return offset
        end
        offset = buffer[0]
        invalid = false
        i = 0
        while i < @invalid_offsets.attr_length
          if ((offset).equal?(@invalid_offsets[i]))
            invalid = true
            break
          end
          i += 1
        end
      end while (invalid)
      return offset
    end
    
    typesig { [Point, Array.typed(::Java::Int)] }
    # Returns the character offset for the specified point.
    # For a typical character, the trailing argument will be filled in to
    # indicate whether the point is closer to the leading edge (0) or
    # the trailing edge (1).  When the point is over a cluster composed
    # of multiple characters, the trailing argument will be filled with the
    # position of the character in the cluster that is closest to
    # the point.
    # 
    # @param point the point
    # @param trailing the trailing buffer
    # @return the character offset
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the trailing length is less than <code>1</code></li>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getLocation(int, boolean)
    def get_offset(point, trailing)
      check_layout
      compute_runs
      if ((point).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      return get_offset(point.attr_x, point.attr_y, trailing)
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    # Returns the character offset for the specified point.
    # For a typical character, the trailing argument will be filled in to
    # indicate whether the point is closer to the leading edge (0) or
    # the trailing edge (1).  When the point is over a cluster composed
    # of multiple characters, the trailing argument will be filled with the
    # position of the character in the cluster that is closest to
    # the point.
    # 
    # @param x the x coordinate of the point
    # @param y the y coordinate of the point
    # @param trailing the trailing buffer
    # @return the character offset
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the trailing length is less than <code>1</code></li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getLocation(int, boolean)
    def get_offset(x, y, trailing)
      check_layout
      compute_runs
      if (!(trailing).nil? && trailing.attr_length < 1)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      length_ = @text.length
      if ((length_).equal?(0))
        return 0
      end
      line_y = 0
      start = 0
      line_index = 0
      line_index = 0
      while line_index < @breaks.attr_length - 1
        line_break = @breaks[line_index]
        height = @line_height[line_index]
        if (line_y + height > y)
          break
        end
        line_y += height
        start = line_break
        line_index += 1
      end
      offset = Array.typed(::Java::Int).new([start])
      leading = Array.typed(::Java::Boolean).new(1) { false }
      OS._atsuposition_to_offset(@layout, OS._long2fix(x), OS._long2fix(y - line_y), offset, leading, nil)
      if (!(trailing).nil?)
        trailing[0] = (leading[0] ? 0 : 1)
      end
      if (!leading[0])
        offset[0] -= 1
      end
      i = 0
      while i < @hard_breaks.attr_length
        if ((offset[0]).equal?(@hard_breaks[i]))
          offset[0] += 1
          break
        end
        i += 1
      end
      offset[0] = untranslate_offset(offset[0])
      if (offset[0] > length_ - 1)
        offset[0] = length_ - 1
        if (!(trailing).nil?)
          trailing[0] = 1
        end
      end
      return offset[0]
    end
    
    typesig { [] }
    # Returns the orientation of the receiver.
    # 
    # @return the orientation style
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_orientation
      check_layout
      line_dir = Array.typed(::Java::Int).new(1) { 0 }
      OS._atsuget_layout_control(@layout, OS.attr_k_atsuline_direction_tag, 1, line_dir, nil)
      return (line_dir[0]).equal?(OS.attr_k_atsuright_to_left_base_direction) ? SWT::RIGHT_TO_LEFT : SWT::LEFT_TO_RIGHT
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns the previous offset for the specified offset and movement
    # type.  The movement is one of <code>SWT.MOVEMENT_CHAR</code>,
    # <code>SWT.MOVEMENT_CLUSTER</code> or <code>SWT.MOVEMENT_WORD</code>,
    # <code>SWT.MOVEMENT_WORD_END</code> or <code>SWT.MOVEMENT_WORD_START</code>.
    # 
    # @param offset the start offset
    # @param movement the movement type
    # @return the previous offset
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the offset is out of range</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getNextOffset(int, int)
    def get_previous_offset(index, movement)
      return __get_offset(index, movement, false)
    end
    
    typesig { [] }
    # Gets the ranges of text that are associated with a <code>TextStyle</code>.
    # 
    # @return the ranges, an array of offsets representing the start and end of each
    # text style.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getStyles()
    # 
    # @since 3.2
    def get_ranges
      check_layout
      result = Array.typed(::Java::Int).new(@styles.attr_length * 2) { 0 }
      count = 0
      i = 0
      while i < @styles.attr_length - 1
        if (!(@styles[i].attr_style).nil?)
          result[((count += 1) - 1)] = @styles[i].attr_start
          result[((count += 1) - 1)] = @styles[i + 1].attr_start - 1
        end
        i += 1
      end
      if (!(count).equal?(result.attr_length))
        new_result = Array.typed(::Java::Int).new(count) { 0 }
        System.arraycopy(result, 0, new_result, 0, count)
        result = new_result
      end
      return result
    end
    
    typesig { [] }
    # Returns the text segments offsets of the receiver.
    # 
    # @return the text segments offsets
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_segments
      check_layout
      return @segments
    end
    
    typesig { [] }
    def get_segments_text
      if ((@segments).nil?)
        return @text
      end
      n_segments = @segments.attr_length
      if (n_segments <= 1)
        return @text
      end
      length_ = @text.length
      if ((length_).equal?(0))
        return @text
      end
      if ((n_segments).equal?(2))
        if ((@segments[0]).equal?(0) && (@segments[1]).equal?(length_))
          return @text
        end
      end
      @invalid_offsets = Array.typed(::Java::Int).new(n_segments) { 0 }
      old_chars = CharArray.new(length_)
      @text.get_chars(0, length_, old_chars, 0)
      new_chars = CharArray.new(length_ + n_segments)
      char_count = 0
      segment_count = 0
      separator = (get_orientation).equal?(SWT::RIGHT_TO_LEFT) ? RTL_MARK : LTR_MARK
      while (char_count < length_)
        if (segment_count < n_segments && (char_count).equal?(@segments[segment_count]))
          @invalid_offsets[segment_count] = char_count + segment_count
          new_chars[char_count + ((segment_count += 1) - 1)] = separator
        else
          new_chars[char_count + segment_count] = old_chars[((char_count += 1) - 1)]
        end
      end
      if (segment_count < n_segments)
        @invalid_offsets[segment_count] = char_count + segment_count
        @segments[segment_count] = char_count
        new_chars[char_count + ((segment_count += 1) - 1)] = separator
      end
      if (!(segment_count).equal?(n_segments))
        tmp = Array.typed(::Java::Int).new(segment_count) { 0 }
        System.arraycopy(@invalid_offsets, 0, tmp, 0, segment_count)
        @invalid_offsets = tmp
      end
      return String.new(new_chars, 0, Math.min(char_count + segment_count, new_chars.attr_length))
    end
    
    typesig { [] }
    # Returns the line spacing of the receiver.
    # 
    # @return the line spacing
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_spacing
      check_layout
      return @spacing
    end
    
    typesig { [::Java::Int] }
    # Gets the style of the receiver at the specified character offset.
    # 
    # @param offset the text offset
    # @return the style or <code>null</code> if not set
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the character offset is out of range</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_style(offset)
      check_layout
      length_ = @text.length
      if (!(0 <= offset && offset < length_))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      i = 1
      while i < @styles.attr_length
        item = @styles[i]
        if (item.attr_start > offset)
          return @styles[i - 1].attr_style
        end
        i += 1
      end
      return nil
    end
    
    typesig { [] }
    # Gets all styles of the receiver.
    # 
    # @return the styles
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getRanges()
    # 
    # @since 3.2
    def get_styles
      check_layout
      result = Array.typed(TextStyle).new(@styles.attr_length) { nil }
      count = 0
      i = 0
      while i < @styles.attr_length
        if (!(@styles[i].attr_style).nil?)
          result[((count += 1) - 1)] = @styles[i].attr_style
        end
        i += 1
      end
      if (!(count).equal?(result.attr_length))
        new_result = Array.typed(TextStyle).new(count) { nil }
        System.arraycopy(result, 0, new_result, 0, count)
        result = new_result
      end
      return result
    end
    
    typesig { [] }
    # Returns the tab list of the receiver.
    # 
    # @return the tab list
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_tabs
      check_layout
      return @tabs
    end
    
    typesig { [] }
    # Gets the receiver's text, which will be an empty
    # string if it has never been set.
    # 
    # @return the receiver's text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_text
      check_layout
      return @text
    end
    
    typesig { [] }
    # Returns the width of the receiver.
    # 
    # @return the width
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_width
      check_layout
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      OS._atsuget_layout_control(@layout, OS.attr_k_atsuline_width_tag, 4, buffer, nil)
      wrap_width = OS._fix2long(buffer[0])
      return (wrap_width).equal?(0) ? -1 : wrap_width
    end
    
    typesig { [] }
    # Returns <code>true</code> if the text layout has been disposed,
    # and <code>false</code> otherwise.
    # <p>
    # This method gets the dispose state for the text layout.
    # When a text layout has been disposed, it is an error to
    # invoke any other method using the text layout.
    # </p>
    # 
    # @return <code>true</code> when the text layout is disposed and <code>false</code> otherwise
    def is_disposed
      return (@layout).equal?(0)
    end
    
    typesig { [::Java::Int] }
    # Sets the text alignment for the receiver. The alignment controls
    # how a line of text is positioned horizontally. The argument should
    # be one of <code>SWT.LEFT</code>, <code>SWT.RIGHT</code> or <code>SWT.CENTER</code>.
    # <p>
    # The default alignment is <code>SWT.LEFT</code>.  Note that the receiver's
    # width must be set in order to use <code>SWT.RIGHT</code> or <code>SWT.CENTER</code>
    # alignment.
    # </p>
    # 
    # @param alignment the new alignment
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #setWidth(int)
    def set_alignment(alignment)
      check_layout
      mask = SWT::LEFT | SWT::CENTER | SWT::RIGHT
      alignment &= mask
      if ((alignment).equal?(0))
        return
      end
      if ((alignment).equal?(get_alignment))
        return
      end
      free_runs
      if (!((alignment & SWT::LEFT)).equal?(0))
        alignment = SWT::LEFT
      end
      if (!((alignment & SWT::RIGHT)).equal?(0))
        alignment = SWT::RIGHT
      end
      align = OS.attr_k_atsustart_alignment
      case (alignment)
      when SWT::CENTER
        align = OS.attr_k_atsucenter_alignment
      when SWT::RIGHT
        align = OS.attr_k_atsuend_alignment
      end
      set_layout_control(OS.attr_k_atsuline_flush_factor_tag, align, 4)
    end
    
    typesig { [::Java::Int] }
    # Sets the ascent of the receiver. The ascent is distance in pixels
    # from the baseline to the top of the line and it is applied to all
    # lines. The default value is <code>-1</code> which means that the
    # ascent is calculated from the line fonts.
    # 
    # @param ascent the new ascent
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the ascent is less than <code>-1</code></li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #setDescent(int)
    # @see #getLineMetrics(int)
    def set_ascent(ascent)
      check_layout
      if (ascent < -1)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((@ascent).equal?(ascent))
        return
      end
      free_runs
      @ascent = ascent
    end
    
    typesig { [::Java::Int] }
    # Sets the descent of the receiver. The descent is distance in pixels
    # from the baseline to the bottom of the line and it is applied to all
    # lines. The default value is <code>-1</code> which means that the
    # descent is calculated from the line fonts.
    # 
    # @param descent the new descent
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the descent is less than <code>-1</code></li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #setAscent(int)
    # @see #getLineMetrics(int)
    def set_descent(descent)
      check_layout
      if (descent < -1)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((@descent).equal?(descent))
        return
      end
      free_runs
      @descent = descent
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def set_layout_control(tag, value, size)
      ptr1 = OS._new_ptr(size)
      if ((size).equal?(1))
        buffer = Array.typed(::Java::Byte).new(1) { 0 }
        buffer[0] = value
        OS.memmove(ptr1, buffer, size)
      else
        buffer = Array.typed(::Java::Int).new(1) { 0 }
        buffer[0] = value
        OS.memmove(ptr1, buffer, size)
      end
      tags = Array.typed(::Java::Int).new([tag])
      sizes = Array.typed(::Java::Int).new([size])
      values = Array.typed(::Java::Int).new([ptr1])
      OS._atsuset_layout_controls(@layout, tags.attr_length, tags, sizes, values)
      OS._dispose_ptr(ptr1)
    end
    
    typesig { [Font] }
    # Sets the default font which will be used by the receiver
    # to draw and measure text. If the
    # argument is null, then a default font appropriate
    # for the platform will be used instead. Note that a text
    # style can override the default font.
    # 
    # @param font the new font for the receiver, or null to indicate a default font
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the font has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def set_font(font)
      check_layout
      if (!(font).nil? && font.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      old_font = @font
      if ((old_font).equal?(font))
        return
      end
      @font = font
      if (!(old_font).nil? && (old_font == font))
        return
      end
      free_runs
    end
    
    typesig { [::Java::Int] }
    # Sets the indent of the receiver. This indent it applied of the first line of
    # each paragraph.
    # 
    # @param indent new indent
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.2
    def set_indent(indent)
      check_layout
      if (indent < 0)
        return
      end
      if ((@indent).equal?(indent))
        return
      end
      free_runs
      @indent = indent
    end
    
    typesig { [::Java::Boolean] }
    # Sets the justification of the receiver. Note that the receiver's
    # width must be set in order to use justification.
    # 
    # @param justify new justify
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.2
    def set_justify(justify)
      check_layout
      if ((justify).equal?(get_justify))
        return
      end
      free_runs
      set_layout_control(OS.attr_k_atsuline_justification_factor_tag, justify ? OS.attr_k_atsufull_justification : OS.attr_k_atsuno_justification, 4)
    end
    
    typesig { [::Java::Int] }
    # Sets the orientation of the receiver, which must be one
    # of <code>SWT.LEFT_TO_RIGHT</code> or <code>SWT.RIGHT_TO_LEFT</code>.
    # 
    # @param orientation new orientation style
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def set_orientation(orientation)
      check_layout
      mask = SWT::RIGHT_TO_LEFT | SWT::LEFT_TO_RIGHT
      orientation &= mask
      if ((orientation).equal?(0))
        return
      end
      if (!((orientation & SWT::LEFT_TO_RIGHT)).equal?(0))
        orientation = SWT::LEFT_TO_RIGHT
      end
      if ((orientation).equal?(get_orientation))
        return
      end
      free_runs
      line_dir = OS.attr_k_atsuleft_to_right_base_direction
      if ((orientation).equal?(SWT::RIGHT_TO_LEFT))
        line_dir = OS.attr_k_atsuright_to_left_base_direction
      end
      set_layout_control(OS.attr_k_atsuline_direction_tag, line_dir, 1)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Sets the offsets of the receiver's text segments. Text segments are used to
    # override the default behaviour of the bidirectional algorithm.
    # Bidirectional reordering can happen within a text segment but not
    # between two adjacent segments.
    # <p>
    # Each text segment is determined by two consecutive offsets in the
    # <code>segments</code> arrays. The first element of the array should
    # always be zero and the last one should always be equals to length of
    # the text.
    # </p>
    # 
    # @param segments the text segments offset
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def set_segments(segments)
      check_layout
      if ((@segments).nil? && (segments).nil?)
        return
      end
      if (!(@segments).nil? && !(segments).nil?)
        if ((@segments.attr_length).equal?(segments.attr_length))
          i = 0
          i = 0
          while i < segments.attr_length
            if (!(@segments[i]).equal?(segments[i]))
              break
            end
            i += 1
          end
          if ((i).equal?(segments.attr_length))
            return
          end
        end
      end
      free_runs
      @segments = segments
    end
    
    typesig { [::Java::Int] }
    # Sets the line spacing of the receiver.  The line spacing
    # is the space left between lines.
    # 
    # @param spacing the new line spacing
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the spacing is negative</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def set_spacing(spacing)
      check_layout
      if (spacing < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((@spacing).equal?(spacing))
        return
      end
      free_runs
      @spacing = spacing
    end
    
    typesig { [TextStyle, ::Java::Int, ::Java::Int] }
    # Sets the style of the receiver for the specified range.  Styles previously
    # set for that range will be overwritten.  The start and end offsets are
    # inclusive and will be clamped if out of range.
    # 
    # @param style the style
    # @param start the start offset
    # @param end the end offset
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def set_style(style, start, end_)
      check_layout
      length_ = @text.length
      if ((length_).equal?(0))
        return
      end
      if (start > end_)
        return
      end
      start = Math.min(Math.max(0, start), length_ - 1)
      end_ = Math.min(Math.max(0, end_), length_ - 1)
      low = -1
      high = @styles.attr_length
      while (high - low > 1)
        index = (high + low) / 2
        if (@styles[index + 1].attr_start > start)
          high = index
        else
          low = index
        end
      end
      if (0 <= high && high < @styles.attr_length)
        item = @styles[high]
        if ((item.attr_start).equal?(start) && (@styles[high + 1].attr_start - 1).equal?(end_))
          if ((style).nil?)
            if ((item.attr_style).nil?)
              return
            end
          else
            if ((style == item.attr_style))
              return
            end
          end
        end
      end
      free_runs
      modify_start = high
      modify_end = modify_start
      while (modify_end < @styles.attr_length)
        if (@styles[modify_end + 1].attr_start > end_)
          break
        end
        modify_end += 1
      end
      if ((modify_start).equal?(modify_end))
        style_start = @styles[modify_start].attr_start
        style_end = @styles[modify_end + 1].attr_start - 1
        if ((style_start).equal?(start) && (style_end).equal?(end_))
          @styles[modify_start].attr_style = style
          return
        end
        if (!(style_start).equal?(start) && !(style_end).equal?(end_))
          new_styles = Array.typed(StyleItem).new(@styles.attr_length + 2) { nil }
          System.arraycopy(@styles, 0, new_styles, 0, modify_start + 1)
          item = StyleItem.new
          item.attr_start = start
          item.attr_style = style
          new_styles[modify_start + 1] = item
          item = StyleItem.new
          item.attr_start = end_ + 1
          item.attr_style = @styles[modify_start].attr_style
          new_styles[modify_start + 2] = item
          System.arraycopy(@styles, modify_end + 1, new_styles, modify_end + 3, @styles.attr_length - modify_end - 1)
          @styles = new_styles
          return
        end
      end
      if ((start).equal?(@styles[modify_start].attr_start))
        modify_start -= 1
      end
      if ((end_).equal?(@styles[modify_end + 1].attr_start - 1))
        modify_end += 1
      end
      new_length = @styles.attr_length + 1 - (modify_end - modify_start - 1)
      new_styles = Array.typed(StyleItem).new(new_length) { nil }
      System.arraycopy(@styles, 0, new_styles, 0, modify_start + 1)
      item = StyleItem.new
      item.attr_start = start
      item.attr_style = style
      new_styles[modify_start + 1] = item
      @styles[modify_end].attr_start = end_ + 1
      System.arraycopy(@styles, modify_end, new_styles, modify_start + 2, @styles.attr_length - modify_end)
      @styles = new_styles
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Sets the receiver's tab list. Each value in the tab list specifies
    # the space in pixels from the origin of the text layout to the respective
    # tab stop.  The last tab stop width is repeated continuously.
    # 
    # @param tabs the new tab list
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def set_tabs(tabs)
      check_layout
      if ((@tabs).nil? && (tabs).nil?)
        return
      end
      if (!(@tabs).nil? && !(tabs).nil?)
        if ((@tabs.attr_length).equal?(tabs.attr_length))
          i = 0
          i = 0
          while i < tabs.attr_length
            if (!(@tabs[i]).equal?(tabs[i]))
              break
            end
            i += 1
          end
          if ((i).equal?(tabs.attr_length))
            return
          end
        end
      end
      free_runs
      @tabs = tabs
      if (!(@tabs_ptr).equal?(0))
        OS._dispose_ptr(@tabs_ptr)
      end
      @tabs_ptr = 0
      if ((tabs).nil?)
        OS._atsuset_tab_array(@layout, 0, 0)
      else
        tab = ATSUTab.new
        tab.attr_tab_position = OS._long2fix(0)
        length_ = Math.max(TAB_COUNT, tabs.attr_length)
        ptr = @tabs_ptr = OS._new_ptr(ATSUTab.attr_sizeof * length_)
        i = 0
        offset = 0
        i = 0
        offset = ptr
        while i < tabs.attr_length
          tab.attr_tab_type = RJava.cast_to_short(OS.attr_k_atsuleft_tab)
          tab.attr_tab_position = OS._long2fix(tabs[i])
          OS.memmove(offset, tab, ATSUTab.attr_sizeof)
          i += 1
          offset += ATSUTab.attr_sizeof
        end
        width = i - 2 >= 0 ? tabs[i - 1] - tabs[i - 2] : tabs[i - 1]
        if (width > 0)
          while i < length_
            tab.attr_tab_type = RJava.cast_to_short(OS.attr_k_atsuleft_tab)
            tab.attr_tab_position += OS._long2fix(width)
            OS.memmove(offset, tab, ATSUTab.attr_sizeof)
            i += 1
            offset += ATSUTab.attr_sizeof
          end
        end
        OS._atsuset_tab_array(@layout, ptr, i)
      end
    end
    
    typesig { [String] }
    # Sets the receiver's text.
    # 
    # @param text the new text
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the text is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def set_text(text)
      check_layout
      if ((text).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((text == @text))
        return
      end
      free_runs
      @text = text
      @styles = Array.typed(StyleItem).new(2) { nil }
      @styles[0] = StyleItem.new
      @styles[1] = StyleItem.new
      @styles[@styles.attr_length - 1].attr_start = text.length
    end
    
    typesig { [::Java::Int] }
    # Sets the line width of the receiver, which determines how
    # text should be wrapped and aligned. The default value is
    # <code>-1</code> which means wrapping is disabled.
    # 
    # @param width the new width
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the width is <code>0</code> or less than <code>-1</code></li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #setAlignment(int)
    def set_width(width)
      check_layout
      if (width < -1 || (width).equal?(0))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((width).equal?(get_width))
        return
      end
      free_runs
      set_layout_control(OS.attr_k_atsuline_width_tag, OS._long2fix(Math.max(0, width)), 4)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the receiver
    def to_s
      if (is_disposed)
        return "TextLayout {*DISPOSED*}"
      end
      return "TextLayout {" + RJava.cast_to_string(@layout) + "}"
    end
    
    typesig { [::Java::Int] }
    # Translate a client offset to an internal offset
    def translate_offset(offset)
      offset += 1
      i = 0
      while i < @invalid_offsets.attr_length
        if (offset < @invalid_offsets[i])
          break
        end
        offset += 1
        i += 1
      end
      return offset
    end
    
    typesig { [::Java::Int] }
    # Translate an internal offset to a client offset
    def untranslate_offset(offset)
      i = 0
      while i < @invalid_offsets.attr_length
        if ((offset).equal?(@invalid_offsets[i]))
          offset += 1
          i += 1
          next
        end
        if (offset < @invalid_offsets[i])
          return Math.max(0, offset - i - 1)
        end
        i += 1
      end
      return Math.max(0, offset - @invalid_offsets.attr_length - 1)
    end
    
    private
    alias_method :initialize__text_layout, :initialize
  end
  
end
