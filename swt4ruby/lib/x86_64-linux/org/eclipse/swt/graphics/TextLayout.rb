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
  module TextLayoutImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Cairo
      include ::Org::Eclipse::Swt::Internal::Gtk
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
        
        typesig { [] }
        def to_s
          return "StyleItem {" + RJava.cast_to_string(@start) + ", " + RJava.cast_to_string(@style) + "}"
        end
        
        typesig { [] }
        def initialize
          @style = nil
          @start = 0
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
    
    attr_accessor :segments
    alias_method :attr_segments, :segments
    undef_method :segments
    alias_method :attr_segments=, :segments=
    undef_method :segments=
    
    attr_accessor :tabs
    alias_method :attr_tabs, :tabs
    undef_method :tabs
    alias_method :attr_tabs=, :tabs=
    undef_method :tabs=
    
    attr_accessor :styles
    alias_method :attr_styles, :styles
    undef_method :styles
    alias_method :attr_styles=, :styles=
    undef_method :styles=
    
    # int
    attr_accessor :layout
    alias_method :attr_layout, :layout
    undef_method :layout
    alias_method :attr_layout=, :layout=
    undef_method :layout=
    
    attr_accessor :context
    alias_method :attr_context, :context
    undef_method :context
    alias_method :attr_context=, :context=
    undef_method :context=
    
    attr_accessor :attr_list
    alias_method :attr_attr_list, :attr_list
    undef_method :attr_list
    alias_method :attr_attr_list=, :attr_list=
    undef_method :attr_list=
    
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
      
      const_set_lazy(:ZWNBS) { Character.new(0xFEFF) }
      const_attr_reader  :ZWNBS
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
      @ascent = 0
      @descent = 0
      @segments = nil
      @tabs = nil
      @styles = nil
      @layout = 0
      @context = 0
      @attr_list = 0
      @invalid_offsets = nil
      super(device)
      device = self.attr_device
      @context = OS.gdk_pango_context_get
      if ((@context).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS.pango_context_set_language(@context, OS.gtk_get_default_language)
      OS.pango_context_set_base_dir(@context, OS::PANGO_DIRECTION_LTR)
      OS.gdk_pango_context_set_colormap(@context, OS.gdk_colormap_get_system)
      @layout = OS.pango_layout_new(@context)
      if ((@layout).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS.pango_layout_set_font_description(@layout, device.attr_system_font.attr_handle)
      OS.pango_layout_set_wrap(@layout, OS::PANGO_WRAP_WORD_CHAR)
      OS.pango_layout_set_tabs(@layout, device.attr_empty_tab)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        OS.pango_layout_set_auto_dir(@layout, false)
      end
      @text = ""
      @ascent = @descent = -1
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
      if (!(@attr_list).equal?(0))
        return
      end
      segments_text = get_segments_text
      buffer = Converter.wcs_to_mbcs(nil, segments_text, false)
      OS.pango_layout_set_text(@layout, buffer, buffer.attr_length)
      if ((@styles.attr_length).equal?(2) && (@styles[0].attr_style).nil? && (@ascent).equal?(-1) && (@descent).equal?(-1) && (@segments).nil?)
        return
      end
      # int
      ptr = OS.pango_layout_get_text(@layout)
      @attr_list = OS.pango_attr_list_new
      attribute = PangoAttribute.new
      chars = nil
      segements_length = segments_text.length
      if ((!(@ascent).equal?(-1) || !(@descent).equal?(-1)) && segements_length > 0)
        rect = PangoRectangle.new
        if (!(@ascent).equal?(-1))
          rect.attr_y = -(@ascent * OS::PANGO_SCALE)
        end
        rect.attr_height = (Math.max(0, @ascent) + Math.max(0, @descent)) * OS::PANGO_SCALE
        line_count = OS.pango_layout_get_line_count(@layout)
        chars = CharArray.new(segements_length + line_count * 2)
        old_pos = 0
        line_index = 0
        line = PangoLayoutLine.new
        while (line_index < line_count)
          # int
          line_ptr = OS.pango_layout_get_line(@layout, line_index)
          OS.memmove(line, line_ptr, PangoLayoutLine.attr_sizeof)
          byte_pos = line.attr_start_index
          # Note: The length in bytes of ZWS and ZWNBS are both equals to 3
          offset = line_index * 6
          # int
          attr = OS.pango_attr_shape_new(rect, rect)
          OS.memmove(attribute, attr, PangoAttribute.attr_sizeof)
          attribute.attr_start_index = byte_pos + offset
          attribute.attr_end_index = byte_pos + offset + 3
          OS.memmove(attr, attribute, PangoAttribute.attr_sizeof)
          OS.pango_attr_list_insert(@attr_list, attr)
          attr = OS.pango_attr_shape_new(rect, rect)
          OS.memmove(attribute, attr, PangoAttribute.attr_sizeof)
          attribute.attr_start_index = byte_pos + offset + 3
          attribute.attr_end_index = byte_pos + offset + 6
          OS.memmove(attr, attribute, PangoAttribute.attr_sizeof)
          OS.pango_attr_list_insert(@attr_list, attr)
          # 64
          pos = RJava.cast_to_int(OS.g_utf8_pointer_to_offset(ptr, ptr + byte_pos))
          chars[pos + line_index * 2] = ZWS
          chars[pos + line_index * 2 + 1] = ZWNBS
          segments_text.get_chars(old_pos, pos, chars, old_pos + line_index * 2)
          old_pos = pos
          line_index += 1
        end
        segments_text.get_chars(old_pos, segements_length, chars, old_pos + line_index * 2)
        buffer = Converter.wcs_to_mbcs(nil, chars, false)
        OS.pango_layout_set_text(@layout, buffer, buffer.attr_length)
        ptr = OS.pango_layout_get_text(@layout)
      else
        chars = CharArray.new(segements_length)
        segments_text.get_chars(0, segements_length, chars, 0)
      end
      offset_count = 0
      i = 0
      while i < chars.attr_length
        c = chars[i]
        if ((c).equal?(LTR_MARK) || (c).equal?(RTL_MARK) || (c).equal?(ZWNBS) || (c).equal?(ZWS))
          offset_count += 1
        end
        i += 1
      end
      @invalid_offsets = Array.typed(::Java::Int).new(offset_count) { 0 }
      offset_count = 0
      i_ = 0
      while i_ < chars.attr_length
        c = chars[i_]
        if ((c).equal?(LTR_MARK) || (c).equal?(RTL_MARK) || (c).equal?(ZWNBS) || (c).equal?(ZWS))
          @invalid_offsets[((offset_count += 1) - 1)] = i_
        end
        i_ += 1
      end
      strlen_ = OS.strlen(ptr)
      default_font = !(@font).nil? ? @font : self.attr_device.attr_system_font
      i__ = 0
      while i__ < @styles.attr_length - 1
        style_item = @styles[i__]
        style = style_item.attr_style
        if ((style).nil?)
          i__ += 1
          next
        end
        start = translate_offset(style_item.attr_start)
        end_ = translate_offset(@styles[i__ + 1].attr_start - 1)
        # 64
        byte_start = RJava.cast_to_int((OS.g_utf8_offset_to_pointer(ptr, start) - ptr))
        # 64
        byte_end = RJava.cast_to_int((OS.g_utf8_offset_to_pointer(ptr, end_ + 1) - ptr))
        byte_start = Math.min(byte_start, strlen_)
        byte_end = Math.min(byte_end, strlen_)
        font = style.attr_font
        if (!(font).nil? && !font.is_disposed && !(default_font == font))
          # int
          attr = OS.pango_attr_font_desc_new(font.attr_handle)
          OS.memmove(attribute, attr, PangoAttribute.attr_sizeof)
          attribute.attr_start_index = byte_start
          attribute.attr_end_index = byte_end
          OS.memmove(attr, attribute, PangoAttribute.attr_sizeof)
          OS.pango_attr_list_insert(@attr_list, attr)
        end
        if (style.attr_underline)
          underline_style = OS::PANGO_UNDERLINE_NONE
          case (style.attr_underline_style)
          when SWT::UNDERLINE_SINGLE
            underline_style = OS::PANGO_UNDERLINE_SINGLE
          when SWT::UNDERLINE_DOUBLE
            underline_style = OS::PANGO_UNDERLINE_DOUBLE
          when SWT::UNDERLINE_SQUIGGLE, SWT::UNDERLINE_ERROR
            if (OS::GTK_VERSION >= OS._version(2, 4, 0))
              underline_style = OS::PANGO_UNDERLINE_ERROR
            end
          end
          if (!(underline_style).equal?(OS::PANGO_UNDERLINE_NONE) && (style.attr_underline_color).nil?)
            # int
            attr = OS.pango_attr_underline_new(underline_style)
            OS.memmove(attribute, attr, PangoAttribute.attr_sizeof)
            attribute.attr_start_index = byte_start
            attribute.attr_end_index = byte_end
            OS.memmove(attr, attribute, PangoAttribute.attr_sizeof)
            OS.pango_attr_list_insert(@attr_list, attr)
          end
        end
        if (style.attr_strikeout && (style.attr_strikeout_color).nil?)
          # int
          attr = OS.pango_attr_strikethrough_new(true)
          OS.memmove(attribute, attr, PangoAttribute.attr_sizeof)
          attribute.attr_start_index = byte_start
          attribute.attr_end_index = byte_end
          OS.memmove(attr, attribute, PangoAttribute.attr_sizeof)
          OS.pango_attr_list_insert(@attr_list, attr)
        end
        foreground = style.attr_foreground
        if (!(foreground).nil? && !foreground.is_disposed)
          fg = foreground.attr_handle
          # int
          attr = OS.pango_attr_foreground_new(fg.attr_red, fg.attr_green, fg.attr_blue)
          OS.memmove(attribute, attr, PangoAttribute.attr_sizeof)
          attribute.attr_start_index = byte_start
          attribute.attr_end_index = byte_end
          OS.memmove(attr, attribute, PangoAttribute.attr_sizeof)
          OS.pango_attr_list_insert(@attr_list, attr)
        end
        background = style.attr_background
        if (!(background).nil? && !background.is_disposed)
          bg = background.attr_handle
          # int
          attr = OS.pango_attr_background_new(bg.attr_red, bg.attr_green, bg.attr_blue)
          OS.memmove(attribute, attr, PangoAttribute.attr_sizeof)
          attribute.attr_start_index = byte_start
          attribute.attr_end_index = byte_end
          OS.memmove(attr, attribute, PangoAttribute.attr_sizeof)
          OS.pango_attr_list_insert(@attr_list, attr)
        end
        metrics = style.attr_metrics
        if (!(metrics).nil?)
          rect = PangoRectangle.new
          rect.attr_y = -(metrics.attr_ascent * OS::PANGO_SCALE)
          rect.attr_height = (metrics.attr_ascent + metrics.attr_descent) * OS::PANGO_SCALE
          rect.attr_width = metrics.attr_width * OS::PANGO_SCALE
          # int
          attr = OS.pango_attr_shape_new(rect, rect)
          OS.memmove(attribute, attr, PangoAttribute.attr_sizeof)
          attribute.attr_start_index = byte_start
          attribute.attr_end_index = byte_end
          OS.memmove(attr, attribute, PangoAttribute.attr_sizeof)
          OS.pango_attr_list_insert(@attr_list, attr)
        end
        rise = style.attr_rise
        if (!(rise).equal?(0))
          # int
          attr = OS.pango_attr_rise_new(rise * OS::PANGO_SCALE)
          OS.memmove(attribute, attr, PangoAttribute.attr_sizeof)
          attribute.attr_start_index = byte_start
          attribute.attr_end_index = byte_end
          OS.memmove(attr, attribute, PangoAttribute.attr_sizeof)
          OS.pango_attr_list_insert(@attr_list, attr)
        end
        i__ += 1
      end
      OS.pango_layout_set_attributes(@layout, @attr_list)
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
        return Array.typed(::Java::Int).new(0) { 0 }
      end
      coordinates = Array.typed(::Java::Int).new(length_) { 0 }
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
      @font = nil
      @text = RJava.cast_to_string(nil)
      @styles = nil
      free_runs
      if (!(@layout).equal?(0))
        OS.g_object_unref(@layout)
      end
      @layout = 0
      if (!(@context).equal?(0))
        OS.g_object_unref(@context)
      end
      @context = 0
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
      gc.check_gc(SwtGC::FOREGROUND)
      length_ = @text.length
      has_selection = selection_start <= selection_end && !(selection_start).equal?(-1) && !(selection_end).equal?(-1)
      data = gc.attr_data
      # int
      cairo = data.attr_cairo
      if (!(flags).equal?(0) && (has_selection || !((flags & SWT::LAST_LINE_SELECTION)).equal?(0)))
        # int
        # int
        attrs = Array.typed(::Java::Long).new(1) { 0 }
        n_attrs = Array.typed(::Java::Int).new(1) { 0 }
        log_attr = PangoLogAttr.new
        rect = PangoRectangle.new
        line_count = OS.pango_layout_get_line_count(@layout)
        # int
        ptr = OS.pango_layout_get_text(@layout)
        # int
        iter = OS.pango_layout_get_iter(@layout)
        if ((selection_background).nil?)
          selection_background = self.attr_device.get_system_color(SWT::COLOR_LIST_SELECTION)
        end
        if (!(cairo).equal?(0) && OS::GTK_VERSION >= OS._version(2, 8, 0))
          SwtCairo.cairo_save(cairo)
          color = selection_background.attr_handle
          SwtCairo.cairo_set_source_rgba(cairo, (color.attr_red & 0xffff) / (0xffff).to_f, (color.attr_green & 0xffff) / (0xffff).to_f, (color.attr_blue & 0xffff) / (0xffff).to_f, data.attr_alpha / (0xff).to_f)
        else
          OS.gdk_gc_set_foreground(gc.attr_handle, selection_background.attr_handle)
        end
        line_index = 0
        begin
          line_end = 0
          OS.pango_layout_iter_get_line_extents(iter, nil, rect)
          if (OS.pango_layout_iter_next_line(iter))
            byte_pos = OS.pango_layout_iter_get_index(iter)
            # 64
            line_end = RJava.cast_to_int(OS.g_utf8_pointer_to_offset(ptr, ptr + byte_pos))
          else
            # 64
            line_end = RJava.cast_to_int(OS.g_utf8_strlen(ptr, -1))
          end
          extent = false
          if ((line_index).equal?(line_count - 1) && !((flags & SWT::LAST_LINE_SELECTION)).equal?(0))
            extent = true
          else
            if ((attrs[0]).equal?(0))
              OS.pango_layout_get_log_attrs(@layout, attrs, n_attrs)
            end
            OS.memmove(log_attr, attrs[0] + line_end * PangoLogAttr.attr_sizeof, PangoLogAttr.attr_sizeof)
            if (!log_attr.attr_is_line_break)
              if (selection_start <= line_end && line_end <= selection_end)
                extent = true
              end
            else
              if (selection_start <= line_end && line_end < selection_end && !((flags & SWT::FULL_SELECTION)).equal?(0))
                extent = true
              end
            end
          end
          if (extent)
            line_x = x + OS._pango_pixels(rect.attr_x) + OS._pango_pixels(rect.attr_width)
            line_y = y + OS._pango_pixels(rect.attr_y)
            height = OS._pango_pixels(rect.attr_height)
            if (!(@ascent).equal?(-1) && !(@descent).equal?(-1))
              height = Math.max(height, @ascent + @descent)
            end
            width = !((flags & SWT::FULL_SELECTION)).equal?(0) ? 0x7fffffff : height / 3
            if (!(cairo).equal?(0) && OS::GTK_VERSION >= OS._version(2, 8, 0))
              SwtCairo.cairo_rectangle(cairo, line_x, line_y, width, height)
              SwtCairo.cairo_fill(cairo)
            else
              OS.gdk_draw_rectangle(data.attr_drawable, gc.attr_handle, 1, line_x, line_y, width, height)
            end
          end
          line_index += 1
        end while (line_index < line_count)
        OS.pango_layout_iter_free(iter)
        if (!(attrs[0]).equal?(0))
          OS.g_free(attrs[0])
        end
        if (!(cairo).equal?(0) && OS::GTK_VERSION >= OS._version(2, 8, 0))
          SwtCairo.cairo_restore(cairo)
        else
          OS.gdk_gc_set_foreground(gc.attr_handle, data.attr_foreground)
        end
      end
      if ((length_).equal?(0))
        return
      end
      if (!has_selection)
        if (!(cairo).equal?(0) && OS::GTK_VERSION >= OS._version(2, 8, 0))
          if (!((data.attr_style & SWT::MIRRORED)).equal?(0))
            SwtCairo.cairo_save(cairo)
            SwtCairo.cairo_scale(cairo, -1, 1)
            SwtCairo.cairo_translate(cairo, -2 * x - width, 0)
          end
          SwtCairo.cairo_move_to(cairo, x, y)
          OS.pango_cairo_show_layout(cairo, @layout)
          draw_border(gc, x, y, nil)
          if (!((data.attr_style & SWT::MIRRORED)).equal?(0))
            SwtCairo.cairo_restore(cairo)
          end
        else
          OS.gdk_draw_layout(data.attr_drawable, gc.attr_handle, x, y, @layout)
          draw_border(gc, x, y, nil)
        end
      else
        selection_start = Math.min(Math.max(0, selection_start), length_ - 1)
        selection_end = Math.min(Math.max(0, selection_end), length_ - 1)
        # 64
        length_ = RJava.cast_to_int(OS.g_utf8_strlen(OS.pango_layout_get_text(@layout), -1))
        selection_start = translate_offset(selection_start)
        selection_end = translate_offset(selection_end)
        if ((selection_foreground).nil?)
          selection_foreground = self.attr_device.get_system_color(SWT::COLOR_LIST_SELECTION_TEXT)
        end
        if ((selection_background).nil?)
          selection_background = self.attr_device.get_system_color(SWT::COLOR_LIST_SELECTION)
        end
        full_selection = (selection_start).equal?(0) && (selection_end).equal?(length_ - 1)
        if (full_selection)
          if (!(cairo).equal?(0) && OS::GTK_VERSION >= OS._version(2, 8, 0))
            # int
            ptr = OS.pango_layout_get_text(@layout)
            if (!((data.attr_style & SWT::MIRRORED)).equal?(0))
              SwtCairo.cairo_save(cairo)
              SwtCairo.cairo_scale(cairo, -1, 1)
              SwtCairo.cairo_translate(cairo, -2 * x - width, 0)
            end
            draw_with_cairo(gc, x, y, 0, OS.strlen(ptr), full_selection, selection_foreground.attr_handle, selection_background.attr_handle)
            if (!((data.attr_style & SWT::MIRRORED)).equal?(0))
              SwtCairo.cairo_restore(cairo)
            end
          else
            OS.gdk_draw_layout_with_colors(data.attr_drawable, gc.attr_handle, x, y, @layout, selection_foreground.attr_handle, selection_background.attr_handle)
            draw_border(gc, x, y, selection_foreground.attr_handle)
          end
        else
          # int
          ptr = OS.pango_layout_get_text(@layout)
          # 64
          byte_sel_start = RJava.cast_to_int((OS.g_utf8_offset_to_pointer(ptr, selection_start) - ptr))
          # 64
          byte_sel_end = RJava.cast_to_int((OS.g_utf8_offset_to_pointer(ptr, selection_end + 1) - ptr))
          strlen_ = OS.strlen(ptr)
          byte_sel_start = Math.min(byte_sel_start, strlen_)
          byte_sel_end = Math.min(byte_sel_end, strlen_)
          if (!(cairo).equal?(0) && OS::GTK_VERSION >= OS._version(2, 8, 0))
            if (!((data.attr_style & SWT::MIRRORED)).equal?(0))
              SwtCairo.cairo_save(cairo)
              SwtCairo.cairo_scale(cairo, -1, 1)
              SwtCairo.cairo_translate(cairo, -2 * x - width, 0)
            end
            draw_with_cairo(gc, x, y, byte_sel_start, byte_sel_end, full_selection, selection_foreground.attr_handle, selection_background.attr_handle)
            if (!((data.attr_style & SWT::MIRRORED)).equal?(0))
              SwtCairo.cairo_restore(cairo)
            end
          else
            clipping = Region.new
            gc.get_clipping(clipping)
            OS.gdk_draw_layout(data.attr_drawable, gc.attr_handle, x, y, @layout)
            draw_border(gc, x, y, nil)
            ranges = Array.typed(::Java::Int).new([byte_sel_start, byte_sel_end])
            # int
            rgn = OS.gdk_pango_layout_get_clip_region(@layout, x, y, ranges, ranges.attr_length / 2)
            if (!(rgn).equal?(0))
              OS.gdk_gc_set_clip_region(gc.attr_handle, rgn)
              OS.gdk_region_destroy(rgn)
            end
            OS.gdk_draw_layout_with_colors(data.attr_drawable, gc.attr_handle, x, y, @layout, selection_foreground.attr_handle, selection_background.attr_handle)
            draw_border(gc, x, y, selection_foreground.attr_handle)
            gc.set_clipping(clipping)
            clipping.dispose
          end
        end
      end
    end
    
    typesig { [SwtGC, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, GdkColor, GdkColor] }
    def draw_with_cairo(gc, x, y, start, end_, full_selection, fg, bg)
      data = gc.attr_data
      # int
      cairo = data.attr_cairo
      SwtCairo.cairo_save(cairo)
      if (!full_selection)
        SwtCairo.cairo_move_to(cairo, x, y)
        OS.pango_cairo_show_layout(cairo, @layout)
        draw_border(gc, x, y, nil)
      end
      ranges = Array.typed(::Java::Int).new([start, end_])
      # int
      rgn = OS.gdk_pango_layout_get_clip_region(@layout, x, y, ranges, ranges.attr_length / 2)
      if (!(rgn).equal?(0))
        OS.gdk_cairo_region(cairo, rgn)
        SwtCairo.cairo_clip(cairo)
        SwtCairo.cairo_set_source_rgba(cairo, (bg.attr_red & 0xffff) / (0xffff).to_f, (bg.attr_green & 0xffff) / (0xffff).to_f, (bg.attr_blue & 0xffff) / (0xffff).to_f, data.attr_alpha / (0xff).to_f)
        SwtCairo.cairo_paint(cairo)
        OS.gdk_region_destroy(rgn)
      end
      SwtCairo.cairo_set_source_rgba(cairo, (fg.attr_red & 0xffff) / (0xffff).to_f, (fg.attr_green & 0xffff) / (0xffff).to_f, (fg.attr_blue & 0xffff) / (0xffff).to_f, data.attr_alpha / (0xff).to_f)
      SwtCairo.cairo_move_to(cairo, x, y)
      OS.pango_cairo_show_layout(cairo, @layout)
      draw_border(gc, x, y, fg)
      SwtCairo.cairo_restore(cairo)
    end
    
    typesig { [SwtGC, ::Java::Int, ::Java::Int, GdkColor] }
    def draw_border(gc, x, y, selection_color)
      data = gc.attr_data
      # int
      cairo = data.attr_cairo
      # int
      gdk_gc = gc.attr_handle
      # int
      ptr = OS.pango_layout_get_text(@layout)
      gc_values = nil
      if (!(cairo).equal?(0) && OS::GTK_VERSION >= OS._version(2, 8, 0))
        SwtCairo.cairo_save(cairo)
      end
      i = 0
      while i < @styles.attr_length - 1
        style = @styles[i].attr_style
        if ((style).nil?)
          i += 1
          next
        end
        draw_border_ = !(style.attr_border_style).equal?(SWT::NONE)
        if (draw_border_ && !style.is_adherent_border(@styles[i + 1].attr_style))
          start = @styles[i].attr_start
          j = i
          while j > 0 && style.is_adherent_border(@styles[j - 1].attr_style)
            start = @styles[j - 1].attr_start
            j -= 1
          end
          start = translate_offset(start)
          end_ = translate_offset(@styles[i + 1].attr_start - 1)
          # 64
          byte_start = RJava.cast_to_int((OS.g_utf8_offset_to_pointer(ptr, start) - ptr))
          # 64
          byte_end = RJava.cast_to_int((OS.g_utf8_offset_to_pointer(ptr, end_ + 1) - ptr))
          ranges = Array.typed(::Java::Int).new([byte_start, byte_end])
          # int
          rgn = OS.gdk_pango_layout_get_clip_region(@layout, x, y, ranges, ranges.attr_length / 2)
          if (!(rgn).equal?(0))
            n_rects = Array.typed(::Java::Int).new(1) { 0 }
            # int
            # int
            rects = Array.typed(::Java::Long).new(1) { 0 }
            OS.gdk_region_get_rectangles(rgn, rects, n_rects)
            rect = GdkRectangle.new
            color = nil
            if ((color).nil? && !(style.attr_border_color).nil?)
              color = style.attr_border_color.attr_handle
            end
            if ((color).nil? && !(selection_color).nil?)
              color = selection_color
            end
            if ((color).nil? && !(style.attr_foreground).nil?)
              color = style.attr_foreground.attr_handle
            end
            if ((color).nil?)
              color = data.attr_foreground
            end
            width_ = 1
            dashes = nil
            case (style.attr_border_style)
            when SWT::BORDER_SOLID
            when SWT::BORDER_DASH
              dashes = !(width_).equal?(0) ? SwtGC::LINE_DASH : SwtGC::LINE_DASH_ZERO
            when SWT::BORDER_DOT
              dashes = !(width_).equal?(0) ? SwtGC::LINE_DOT : SwtGC::LINE_DOT_ZERO
            end
            if (!(cairo).equal?(0) && OS::GTK_VERSION >= OS._version(2, 8, 0))
              SwtCairo.cairo_set_source_rgba(cairo, (color.attr_red & 0xffff) / (0xffff).to_f, (color.attr_green & 0xffff) / (0xffff).to_f, (color.attr_blue & 0xffff) / (0xffff).to_f, data.attr_alpha / (0xff).to_f)
              SwtCairo.cairo_set_line_width(cairo, width_)
              if (!(dashes).nil?)
                cairo_dashes = Array.typed(::Java::Double).new(dashes.attr_length) { 0.0 }
                j_ = 0
                while j_ < cairo_dashes.attr_length
                  cairo_dashes[j_] = (width_).equal?(0) || (data.attr_line_style).equal?(SWT::LINE_CUSTOM) ? dashes[j_] : dashes[j_] * width_
                  j_ += 1
                end
                SwtCairo.cairo_set_dash(cairo, cairo_dashes, cairo_dashes.attr_length, 0)
              else
                SwtCairo.cairo_set_dash(cairo, nil, 0, 0)
              end
              j_ = 0
              while j_ < n_rects[0]
                OS.memmove(rect, rects[0] + (j_ * GdkRectangle.attr_sizeof), GdkRectangle.attr_sizeof)
                SwtCairo.cairo_rectangle(cairo, rect.attr_x + 0.5, rect.attr_y + 0.5, rect.attr_width - 1, rect.attr_height - 1)
                j_ += 1
              end
              SwtCairo.cairo_stroke(cairo)
            else
              if ((gc_values).nil?)
                gc_values = GdkGCValues.new
                OS.gdk_gc_get_values(gdk_gc, gc_values)
              end
              OS.gdk_gc_set_foreground(gdk_gc, color)
              cap_style = OS::GDK_CAP_BUTT
              join_style = OS::GDK_JOIN_MITER
              line_style = 0
              if (!(dashes).nil?)
                dash_list = Array.typed(::Java::Byte).new(dashes.attr_length) { 0 }
                j_ = 0
                while j_ < dash_list.attr_length
                  dash_list[j_] = ((width_).equal?(0) || (data.attr_line_style).equal?(SWT::LINE_CUSTOM) ? dashes[j_] : dashes[j_] * width_)
                  j_ += 1
                end
                OS.gdk_gc_set_dashes(gdk_gc, 0, dash_list, dash_list.attr_length)
                line_style = OS::GDK_LINE_ON_OFF_DASH
              else
                line_style = OS::GDK_LINE_SOLID
              end
              OS.gdk_gc_set_line_attributes(gdk_gc, width_, line_style, cap_style, join_style)
              j_ = 0
              while j_ < n_rects[0]
                OS.memmove(rect, rects[0] + (j_ * GdkRectangle.attr_sizeof), GdkRectangle.attr_sizeof)
                OS.gdk_draw_rectangle(data.attr_drawable, gdk_gc, 0, rect.attr_x, rect.attr_y, rect.attr_width - 1, rect.attr_height - 1)
                j_ += 1
              end
            end
            if (!(rects[0]).equal?(0))
              OS.g_free(rects[0])
            end
            OS.gdk_region_destroy(rgn)
          end
        end
        draw_underline = false
        if (style.attr_underline && !(style.attr_underline_color).nil?)
          draw_underline = true
        end
        if (style.attr_underline && ((style.attr_underline_style).equal?(SWT::UNDERLINE_ERROR) || (style.attr_underline_style).equal?(SWT::UNDERLINE_SQUIGGLE)) && OS::GTK_VERSION < OS._version(2, 4, 0))
          draw_underline = true
        end
        if (draw_underline && !style.is_adherent_underline(@styles[i + 1].attr_style))
          start = @styles[i].attr_start
          j = i
          while j > 0 && style.is_adherent_underline(@styles[j - 1].attr_style)
            start = @styles[j - 1].attr_start
            j -= 1
          end
          start = translate_offset(start)
          end_ = translate_offset(@styles[i + 1].attr_start - 1)
          # 64
          byte_start = RJava.cast_to_int((OS.g_utf8_offset_to_pointer(ptr, start) - ptr))
          # 64
          byte_end = RJava.cast_to_int((OS.g_utf8_offset_to_pointer(ptr, end_ + 1) - ptr))
          ranges = Array.typed(::Java::Int).new([byte_start, byte_end])
          # int
          rgn = OS.gdk_pango_layout_get_clip_region(@layout, x, y, ranges, ranges.attr_length / 2)
          if (!(rgn).equal?(0))
            n_rects = Array.typed(::Java::Int).new(1) { 0 }
            # int
            # int
            rects = Array.typed(::Java::Long).new(1) { 0 }
            OS.gdk_region_get_rectangles(rgn, rects, n_rects)
            rect = GdkRectangle.new
            color = nil
            if ((color).nil? && !(style.attr_underline_color).nil?)
              color = style.attr_underline_color.attr_handle
            end
            if ((color).nil? && !(selection_color).nil?)
              color = selection_color
            end
            if ((color).nil? && !(style.attr_foreground).nil?)
              color = style.attr_foreground.attr_handle
            end
            if ((color).nil?)
              color = data.attr_foreground
            end
            if (!(cairo).equal?(0) && OS::GTK_VERSION >= OS._version(2, 8, 0))
              SwtCairo.cairo_set_source_rgba(cairo, (color.attr_red & 0xffff) / (0xffff).to_f, (color.attr_green & 0xffff) / (0xffff).to_f, (color.attr_blue & 0xffff) / (0xffff).to_f, data.attr_alpha / (0xff).to_f)
            else
              if ((gc_values).nil?)
                gc_values = GdkGCValues.new
                OS.gdk_gc_get_values(gdk_gc, gc_values)
              end
              OS.gdk_gc_set_foreground(gdk_gc, color)
            end
            underline_position = -1
            underline_thickness = 1
            if (OS::GTK_VERSION >= OS._version(2, 6, 0))
              font = style.attr_font
              if ((font).nil?)
                font = @font
              end
              if ((font).nil?)
                font = self.attr_device.attr_system_font
              end
              # int
              lang = OS.pango_context_get_language(@context)
              # int
              metrics = OS.pango_context_get_metrics(@context, font.attr_handle, lang)
              underline_position = OS._pango_pixels(OS.pango_font_metrics_get_underline_position(metrics))
              underline_thickness = OS._pango_pixels(OS.pango_font_metrics_get_underline_thickness(metrics))
              OS.pango_font_metrics_unref(metrics)
            end
            j_ = 0
            while j_ < n_rects[0]
              OS.memmove(rect, rects[0] + (j_ * GdkRectangle.attr_sizeof), GdkRectangle.attr_sizeof)
              offset = get_offset(rect.attr_x - x, rect.attr_y - y, nil)
              line_index = get_line_index(offset)
              metrics = get_line_metrics(line_index)
              underline_y = rect.attr_y + metrics.attr_ascent - underline_position - style.attr_rise
              case (style.attr_underline_style)
              # FALLTHROUGH
              when SWT::UNDERLINE_SQUIGGLE, SWT::UNDERLINE_ERROR
                squiggly_thickness = underline_thickness
                squiggly_height = 2 * squiggly_thickness
                squiggly_y = Math.min(underline_y, rect.attr_y + rect.attr_height - squiggly_height - 1)
                points = compute_polyline(rect.attr_x, squiggly_y, rect.attr_x + rect.attr_width, squiggly_y + squiggly_height)
                if (!(cairo).equal?(0) && OS::GTK_VERSION >= OS._version(2, 8, 0))
                  SwtCairo.cairo_set_line_width(cairo, squiggly_thickness)
                  SwtCairo.cairo_set_line_cap(cairo, SwtCairo::CAIRO_LINE_CAP_BUTT)
                  SwtCairo.cairo_set_line_join(cairo, SwtCairo::CAIRO_LINE_JOIN_MITER)
                  if (points.attr_length > 0)
                    x_offset = 0.5
                    y_offset = 0.5
                    SwtCairo.cairo_move_to(cairo, points[0] + x_offset, points[1] + y_offset)
                    k = 2
                    while k < points.attr_length
                      SwtCairo.cairo_line_to(cairo, points[k] + x_offset, points[k + 1] + y_offset)
                      k += 2
                    end
                    SwtCairo.cairo_stroke(cairo)
                  end
                else
                  OS.gdk_gc_set_line_attributes(gdk_gc, squiggly_thickness, OS::GDK_LINE_SOLID, OS::GDK_CAP_BUTT, OS::GDK_JOIN_MITER)
                  OS.gdk_draw_lines(data.attr_drawable, gdk_gc, points, points.attr_length / 2)
                end
              when SWT::UNDERLINE_DOUBLE
                if (!(cairo).equal?(0) && OS::GTK_VERSION >= OS._version(2, 8, 0))
                  SwtCairo.cairo_rectangle(cairo, rect.attr_x, underline_y + underline_thickness * 2, rect.attr_width, underline_thickness)
                  SwtCairo.cairo_fill(cairo)
                else
                  OS.gdk_draw_rectangle(data.attr_drawable, gdk_gc, 1, rect.attr_x, underline_y + underline_thickness * 2, rect.attr_width, underline_thickness)
                end
                if (!(cairo).equal?(0) && OS::GTK_VERSION >= OS._version(2, 8, 0))
                  SwtCairo.cairo_rectangle(cairo, rect.attr_x, underline_y, rect.attr_width, underline_thickness)
                  SwtCairo.cairo_fill(cairo)
                else
                  OS.gdk_draw_rectangle(data.attr_drawable, gdk_gc, 1, rect.attr_x, underline_y, rect.attr_width, underline_thickness)
                end
              when SWT::UNDERLINE_SINGLE
                if (!(cairo).equal?(0) && OS::GTK_VERSION >= OS._version(2, 8, 0))
                  SwtCairo.cairo_rectangle(cairo, rect.attr_x, underline_y, rect.attr_width, underline_thickness)
                  SwtCairo.cairo_fill(cairo)
                else
                  OS.gdk_draw_rectangle(data.attr_drawable, gdk_gc, 1, rect.attr_x, underline_y, rect.attr_width, underline_thickness)
                end
              end
              j_ += 1
            end
            if (!(rects[0]).equal?(0))
              OS.g_free(rects[0])
            end
            OS.gdk_region_destroy(rgn)
          end
        end
        draw_strikeout = false
        if (style.attr_strikeout && !(style.attr_strikeout_color).nil?)
          draw_strikeout = true
        end
        if (draw_strikeout && !style.is_adherent_strikeout(@styles[i + 1].attr_style))
          start = @styles[i].attr_start
          j = i
          while j > 0 && style.is_adherent_strikeout(@styles[j - 1].attr_style)
            start = @styles[j - 1].attr_start
            j -= 1
          end
          start = translate_offset(start)
          end_ = translate_offset(@styles[i + 1].attr_start - 1)
          # 64
          byte_start = RJava.cast_to_int((OS.g_utf8_offset_to_pointer(ptr, start) - ptr))
          # 64
          byte_end = RJava.cast_to_int((OS.g_utf8_offset_to_pointer(ptr, end_ + 1) - ptr))
          ranges = Array.typed(::Java::Int).new([byte_start, byte_end])
          # int
          rgn = OS.gdk_pango_layout_get_clip_region(@layout, x, y, ranges, ranges.attr_length / 2)
          if (!(rgn).equal?(0))
            n_rects = Array.typed(::Java::Int).new(1) { 0 }
            # int
            # int
            rects = Array.typed(::Java::Long).new(1) { 0 }
            OS.gdk_region_get_rectangles(rgn, rects, n_rects)
            rect = GdkRectangle.new
            color = nil
            if ((color).nil? && !(style.attr_strikeout_color).nil?)
              color = style.attr_strikeout_color.attr_handle
            end
            if ((color).nil? && !(selection_color).nil?)
              color = selection_color
            end
            if ((color).nil? && !(style.attr_foreground).nil?)
              color = style.attr_foreground.attr_handle
            end
            if ((color).nil?)
              color = data.attr_foreground
            end
            if (!(cairo).equal?(0) && OS::GTK_VERSION >= OS._version(2, 8, 0))
              SwtCairo.cairo_set_source_rgba(cairo, (color.attr_red & 0xffff) / (0xffff).to_f, (color.attr_green & 0xffff) / (0xffff).to_f, (color.attr_blue & 0xffff) / (0xffff).to_f, data.attr_alpha / (0xff).to_f)
            else
              if ((gc_values).nil?)
                gc_values = GdkGCValues.new
                OS.gdk_gc_get_values(gdk_gc, gc_values)
              end
              OS.gdk_gc_set_foreground(gdk_gc, color)
            end
            strikeout_position = -1
            strikeout_thickness = 1
            if (OS::GTK_VERSION >= OS._version(2, 6, 0))
              font = style.attr_font
              if ((font).nil?)
                font = @font
              end
              if ((font).nil?)
                font = self.attr_device.attr_system_font
              end
              # int
              lang = OS.pango_context_get_language(@context)
              # int
              metrics = OS.pango_context_get_metrics(@context, font.attr_handle, lang)
              strikeout_position = OS._pango_pixels(OS.pango_font_metrics_get_strikethrough_position(metrics))
              strikeout_thickness = OS._pango_pixels(OS.pango_font_metrics_get_strikethrough_thickness(metrics))
              OS.pango_font_metrics_unref(metrics)
            end
            j_ = 0
            while j_ < n_rects[0]
              OS.memmove(rect, rects[0] + (j_ * GdkRectangle.attr_sizeof), GdkRectangle.attr_sizeof)
              strikeout_y = rect.attr_y + rect.attr_height / 2 - style.attr_rise
              if (OS::GTK_VERSION >= OS._version(2, 6, 0))
                offset = get_offset(rect.attr_x - x, rect.attr_y - y, nil)
                line_index = get_line_index(offset)
                metrics = get_line_metrics(line_index)
                strikeout_y = rect.attr_y + metrics.attr_ascent - strikeout_position - style.attr_rise
              end
              if (!(cairo).equal?(0) && OS::GTK_VERSION >= OS._version(2, 8, 0))
                SwtCairo.cairo_rectangle(cairo, rect.attr_x, strikeout_y, rect.attr_width, strikeout_thickness)
                SwtCairo.cairo_fill(cairo)
              else
                OS.gdk_draw_rectangle(data.attr_drawable, gdk_gc, 1, rect.attr_x, strikeout_y, rect.attr_width, strikeout_thickness)
              end
              j_ += 1
            end
            if (!(rects[0]).equal?(0))
              OS.g_free(rects[0])
            end
            OS.gdk_region_destroy(rgn)
          end
        end
        i += 1
      end
      if (!(gc_values).nil?)
        mask = OS::GDK_GC_FOREGROUND | OS::GDK_GC_LINE_WIDTH | OS::GDK_GC_LINE_STYLE | OS::GDK_GC_CAP_STYLE | OS::GDK_GC_JOIN_STYLE
        OS.gdk_gc_set_values(gdk_gc, gc_values, mask)
        data.attr_state &= ~SwtGC::LINE_STYLE
      end
      if (!(cairo).equal?(0) && OS::GTK_VERSION >= OS._version(2, 8, 0))
        SwtCairo.cairo_restore(cairo)
      end
    end
    
    typesig { [] }
    def free_runs
      if ((@attr_list).equal?(0))
        return
      end
      OS.pango_layout_set_attributes(@layout, 0)
      OS.pango_attr_list_unref(@attr_list)
      @attr_list = 0
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
      align = OS.pango_layout_get_alignment(@layout)
      rtl = (OS.pango_context_get_base_dir(@context)).equal?(OS::PANGO_DIRECTION_RTL)
      case (align)
      when OS::PANGO_ALIGN_LEFT
        return rtl ? SWT::RIGHT : SWT::LEFT
      when OS::PANGO_ALIGN_RIGHT
        return rtl ? SWT::LEFT : SWT::RIGHT
      end
      return SWT::CENTER
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
      w = Array.typed(::Java::Int).new(1) { 0 }
      h = Array.typed(::Java::Int).new(1) { 0 }
      OS.pango_layout_get_size(@layout, w, h)
      wrap_width = OS.pango_layout_get_width(@layout)
      w[0] = !(wrap_width).equal?(-1) ? wrap_width : w[0] + OS.pango_layout_get_indent(@layout)
      width_ = OS._pango_pixels(w[0])
      height = OS._pango_pixels(h[0])
      if (!(@ascent).equal?(-1) && !(@descent).equal?(-1))
        height = Math.max(height, @ascent + @descent)
      end
      return Rectangle.new(0, 0, width_, height)
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
      # int
      ptr = OS.pango_layout_get_text(@layout)
      # 64
      byte_start = RJava.cast_to_int((OS.g_utf8_offset_to_pointer(ptr, start) - ptr))
      # 64
      byte_end = RJava.cast_to_int((OS.g_utf8_offset_to_pointer(ptr, end_ + 1) - ptr))
      strlen_ = OS.strlen(ptr)
      byte_start = Math.min(byte_start, strlen_)
      byte_end = Math.min(byte_end, strlen_)
      ranges = Array.typed(::Java::Int).new([byte_start, byte_end])
      # int
      clip_region = OS.gdk_pango_layout_get_clip_region(@layout, 0, 0, ranges, 1)
      if ((clip_region).equal?(0))
        return Rectangle.new(0, 0, 0, 0)
      end
      rect = GdkRectangle.new
      # Bug in Pango. The region returned by gdk_pango_layout_get_clip_region()
      # includes areas from lines outside of the requested range.  The fix
      # is to subtract these areas from the clip region.
      pango_rect = PangoRectangle.new
      # int
      iter = OS.pango_layout_get_iter(@layout)
      if ((iter).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      # int
      lines_region = OS.gdk_region_new
      if ((lines_region).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      line_end = 0
      begin
        OS.pango_layout_iter_get_line_extents(iter, nil, pango_rect)
        if (OS.pango_layout_iter_next_line(iter))
          line_end = OS.pango_layout_iter_get_index(iter) - 1
        else
          line_end = strlen_
        end
        if (byte_start > line_end)
          next
        end
        rect.attr_x = OS._pango_pixels(pango_rect.attr_x)
        rect.attr_y = OS._pango_pixels(pango_rect.attr_y)
        rect.attr_width = OS._pango_pixels(pango_rect.attr_width)
        rect.attr_height = OS._pango_pixels(pango_rect.attr_height)
        OS.gdk_region_union_with_rect(lines_region, rect)
      end while (line_end + 1 <= byte_end)
      OS.gdk_region_intersect(clip_region, lines_region)
      OS.gdk_region_destroy(lines_region)
      OS.pango_layout_iter_free(iter)
      OS.gdk_region_get_clipbox(clip_region, rect)
      OS.gdk_region_destroy(clip_region)
      if ((OS.pango_context_get_base_dir(@context)).equal?(OS::PANGO_DIRECTION_RTL))
        rect.attr_x = width - rect.attr_x - rect.attr_width
      end
      return Rectangle.new(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
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
      return OS._pango_pixels(OS.pango_layout_get_indent(@layout))
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
      return OS.pango_layout_get_justify(@layout)
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
      # int
      iter = OS.pango_layout_get_iter(@layout)
      if ((iter).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      level = 0
      item = PangoItem.new
      run = PangoLayoutRun.new
      # int
      ptr = OS.pango_layout_get_text(@layout)
      # int
      byte_offset = OS.g_utf8_offset_to_pointer(ptr, offset) - ptr
      strlen_ = OS.strlen(ptr)
      byte_offset = Math.min(byte_offset, strlen_)
      begin
        # int
        run_ptr = OS.pango_layout_iter_get_run(iter)
        if (!(run_ptr).equal?(0))
          OS.memmove(run, run_ptr, PangoLayoutRun.attr_sizeof)
          OS.memmove(item, run.attr_item, PangoItem.attr_sizeof)
          if (item.attr_offset <= byte_offset && byte_offset < item.attr_offset + item.attr_length)
            level = item.attr_analysis_level
            break
          end
        end
      end while (OS.pango_layout_iter_next_run(iter))
      OS.pango_layout_iter_free(iter)
      return level
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
      line_count = OS.pango_layout_get_line_count(@layout)
      if (!(0 <= line_index && line_index < line_count))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      # int
      iter = OS.pango_layout_get_iter(@layout)
      if ((iter).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      i = 0
      while i < line_index
        OS.pango_layout_iter_next_line(iter)
        i += 1
      end
      rect = PangoRectangle.new
      OS.pango_layout_iter_get_line_extents(iter, nil, rect)
      OS.pango_layout_iter_free(iter)
      x = OS._pango_pixels(rect.attr_x)
      y = OS._pango_pixels(rect.attr_y)
      width_ = OS._pango_pixels(rect.attr_width)
      height = OS._pango_pixels(rect.attr_height)
      if (!(@ascent).equal?(-1) && !(@descent).equal?(-1))
        height = Math.max(height, @ascent + @descent)
      end
      if ((OS.pango_context_get_base_dir(@context)).equal?(OS::PANGO_DIRECTION_RTL))
        x = width - x - width_
      end
      return Rectangle.new(x, y, width_, height)
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
      return OS.pango_layout_get_line_count(@layout)
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
      line = 0
      # int
      ptr = OS.pango_layout_get_text(@layout)
      # int
      byte_offset = OS.g_utf8_offset_to_pointer(ptr, offset) - ptr
      strlen_ = OS.strlen(ptr)
      byte_offset = Math.min(byte_offset, strlen_)
      # int
      iter = OS.pango_layout_get_iter(@layout)
      if ((iter).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      while (OS.pango_layout_iter_next_line(iter))
        if (OS.pango_layout_iter_get_index(iter) > byte_offset)
          break
        end
        line += 1
      end
      OS.pango_layout_iter_free(iter)
      return line
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
      line_count = OS.pango_layout_get_line_count(@layout)
      if (!(0 <= line_index && line_index < line_count))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      ascent = 0
      descent = 0
      line = PangoLayoutLine.new
      OS.memmove(line, OS.pango_layout_get_line(@layout, line_index), PangoLayoutLine.attr_sizeof)
      if ((line.attr_runs).equal?(0))
        # int
        font = !(@font).nil? ? @font.attr_handle : self.attr_device.attr_system_font.attr_handle
        # int
        lang = OS.pango_context_get_language(@context)
        # int
        metrics = OS.pango_context_get_metrics(@context, font, lang)
        ascent = OS.pango_font_metrics_get_ascent(metrics)
        descent = OS.pango_font_metrics_get_descent(metrics)
        OS.pango_font_metrics_unref(metrics)
      else
        rect = PangoRectangle.new
        OS.pango_layout_line_get_extents(OS.pango_layout_get_line(@layout, line_index), nil, rect)
        ascent = -rect.attr_y
        descent = rect.attr_height - ascent
      end
      ascent = Math.max(@ascent, OS._pango_pixels(ascent))
      descent = Math.max(@descent, OS._pango_pixels(descent))
      return FontMetrics.gtk_new(ascent, descent, 0, 0, ascent + descent)
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
      line_count = OS.pango_layout_get_line_count(@layout)
      offsets = Array.typed(::Java::Int).new(line_count + 1) { 0 }
      # int
      ptr = OS.pango_layout_get_text(@layout)
      line = PangoLayoutLine.new
      i = 0
      while i < line_count
        # int
        line_ptr = OS.pango_layout_get_line(@layout, i)
        OS.memmove(line, line_ptr, PangoLayoutLine.attr_sizeof)
        # 64
        pos = RJava.cast_to_int(OS.g_utf8_pointer_to_offset(ptr, ptr + line.attr_start_index))
        offsets[i] = untranslate_offset(pos)
        i += 1
      end
      offsets[line_count] = @text.length
      return offsets
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
      offset = translate_offset(offset)
      # int
      ptr = OS.pango_layout_get_text(@layout)
      # 64
      byte_offset = RJava.cast_to_int((OS.g_utf8_offset_to_pointer(ptr, offset) - ptr))
      strlen_ = OS.strlen(ptr)
      byte_offset = Math.min(byte_offset, strlen_)
      pos = PangoRectangle.new
      OS.pango_layout_index_to_pos(@layout, byte_offset, pos)
      x = trailing ? pos.attr_x + pos.attr_width : pos.attr_x
      y = pos.attr_y
      x = OS._pango_pixels(x)
      if ((OS.pango_context_get_base_dir(@context)).equal?(OS::PANGO_DIRECTION_RTL))
        x = width - x
      end
      return Point.new(x, OS._pango_pixels(y))
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
      if (forward)
        if ((offset).equal?(length_))
          return length_
        end
      else
        if ((offset).equal?(0))
          return 0
        end
      end
      step = forward ? 1 : -1
      if (!((movement & SWT::MOVEMENT_CHAR)).equal?(0))
        return offset + step
      end
      # int
      # int
      attrs = Array.typed(::Java::Long).new(1) { 0 }
      n_attrs = Array.typed(::Java::Int).new(1) { 0 }
      OS.pango_layout_get_log_attrs(@layout, attrs, n_attrs)
      if ((attrs[0]).equal?(0))
        return offset + step
      end
      # 64
      length_ = RJava.cast_to_int(OS.g_utf8_strlen(OS.pango_layout_get_text(@layout), -1))
      offset = translate_offset(offset)
      log_attr = PangoLogAttr.new
      offset = validate_offset(offset, step)
      while (0 < offset && offset < length_)
        OS.memmove(log_attr, attrs[0] + offset * PangoLogAttr.attr_sizeof, PangoLogAttr.attr_sizeof)
        if ((!((movement & SWT::MOVEMENT_CLUSTER)).equal?(0)) && log_attr.attr_is_cursor_position)
          break
        end
        if (!((movement & SWT::MOVEMENT_WORD)).equal?(0))
          if (forward)
            if (log_attr.attr_is_word_end)
              break
            end
          else
            if (log_attr.attr_is_word_start)
              break
            end
          end
        end
        if (!((movement & SWT::MOVEMENT_WORD_START)).equal?(0))
          if (log_attr.attr_is_word_start)
            break
          end
        end
        if (!((movement & SWT::MOVEMENT_WORD_END)).equal?(0))
          if (log_attr.attr_is_word_end)
            break
          end
        end
        offset = validate_offset(offset, step)
      end
      OS.g_free(attrs[0])
      return Math.min(Math.max(0, untranslate_offset(offset)), @text.length)
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
      if ((OS.pango_context_get_base_dir(@context)).equal?(OS::PANGO_DIRECTION_RTL))
        x = width - x
      end
      # Feature in GTK.  pango_layout_xy_to_index() returns the
      # logical end/start offset of a line when the coordinates are outside
      # the line bounds. In SWT the correct behavior is to return the closest
      # visual offset. The fix is to clamp the coordinates inside the
      # line bounds.
      # 
      # int
      iter = OS.pango_layout_get_iter(@layout)
      if ((iter).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      rect = PangoRectangle.new
      begin
        OS.pango_layout_iter_get_line_extents(iter, nil, rect)
        rect.attr_y = OS._pango_pixels(rect.attr_y)
        rect.attr_height = OS._pango_pixels(rect.attr_height)
        if (rect.attr_y <= y && y < rect.attr_y + rect.attr_height)
          rect.attr_x = OS._pango_pixels(rect.attr_x)
          rect.attr_width = OS._pango_pixels(rect.attr_width)
          if (x >= rect.attr_x + rect.attr_width)
            x = rect.attr_x + rect.attr_width - 1
          end
          if (x < rect.attr_x)
            x = rect.attr_x
          end
          break
        end
      end while (OS.pango_layout_iter_next_line(iter))
      OS.pango_layout_iter_free(iter)
      index = Array.typed(::Java::Int).new(1) { 0 }
      pi_trailing = Array.typed(::Java::Int).new(1) { 0 }
      OS.pango_layout_xy_to_index(@layout, x * OS::PANGO_SCALE, y * OS::PANGO_SCALE, index, pi_trailing)
      # int
      ptr = OS.pango_layout_get_text(@layout)
      # 64
      offset = RJava.cast_to_int(OS.g_utf8_pointer_to_offset(ptr, ptr + index[0]))
      if (!(trailing).nil?)
        trailing[0] = pi_trailing[0]
      end
      return untranslate_offset(offset)
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
      base_dir = OS.pango_context_get_base_dir(@context)
      return (base_dir).equal?(OS::PANGO_DIRECTION_RTL) ? SWT::RIGHT_TO_LEFT : SWT::LEFT_TO_RIGHT
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
      old_chars = CharArray.new(length_)
      @text.get_chars(0, length_, old_chars, 0)
      new_chars = CharArray.new(length_ + n_segments)
      char_count = 0
      segment_count = 0
      separator = (get_orientation).equal?(SWT::RIGHT_TO_LEFT) ? RTL_MARK : LTR_MARK
      while (char_count < length_)
        if (segment_count < n_segments && (char_count).equal?(@segments[segment_count]))
          new_chars[char_count + ((segment_count += 1) - 1)] = separator
        else
          new_chars[char_count + segment_count] = old_chars[((char_count += 1) - 1)]
        end
      end
      if (segment_count < n_segments)
        @segments[segment_count] = char_count
        new_chars[char_count + ((segment_count += 1) - 1)] = separator
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
      return OS._pango_pixels(OS.pango_layout_get_spacing(@layout))
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
      width_ = OS.pango_layout_get_width(@layout)
      return !(width_).equal?(-1) ? OS._pango_pixels(width_) : -1
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
      if (!((alignment & SWT::LEFT)).equal?(0))
        alignment = SWT::LEFT
      end
      if (!((alignment & SWT::RIGHT)).equal?(0))
        alignment = SWT::RIGHT
      end
      rtl = (OS.pango_context_get_base_dir(@context)).equal?(OS::PANGO_DIRECTION_RTL)
      align = OS::PANGO_ALIGN_CENTER
      case (alignment)
      when SWT::LEFT
        align = rtl ? OS::PANGO_ALIGN_RIGHT : OS::PANGO_ALIGN_LEFT
      when SWT::RIGHT
        align = rtl ? OS::PANGO_ALIGN_LEFT : OS::PANGO_ALIGN_RIGHT
      end
      OS.pango_layout_set_alignment(@layout, align)
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
      free_runs
      @font = font
      if (!(old_font).nil? && (old_font == font))
        return
      end
      OS.pango_layout_set_font_description(@layout, !(font).nil? ? font.attr_handle : self.attr_device.attr_system_font.attr_handle)
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
      OS.pango_layout_set_indent(@layout, indent * OS::PANGO_SCALE)
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
      OS.pango_layout_set_justify(@layout, justify)
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
      base_dir = (orientation).equal?(SWT::RIGHT_TO_LEFT) ? OS::PANGO_DIRECTION_RTL : OS::PANGO_DIRECTION_LTR
      if ((OS.pango_context_get_base_dir(@context)).equal?(base_dir))
        return
      end
      OS.pango_context_set_base_dir(@context, base_dir)
      OS.pango_layout_context_changed(@layout)
      align = OS.pango_layout_get_alignment(@layout)
      if (!(align).equal?(OS::PANGO_ALIGN_CENTER))
        align = (align).equal?(OS::PANGO_ALIGN_LEFT) ? OS::PANGO_ALIGN_RIGHT : OS::PANGO_ALIGN_LEFT
        OS.pango_layout_set_alignment(@layout, align)
      end
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
      OS.pango_layout_set_spacing(@layout, spacing * OS::PANGO_SCALE)
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
      # Bug in Pango. Pango 1.2.2 will cause a segmentation fault if a style
      # is not applied for a whole ligature.  The fix is to applied the
      # style for the whole ligature.
      # 
      # NOTE that fix only LamAlef ligatures.
      if (start > 0 && is_alef(@text.char_at(start)) && is_lam(@text.char_at(start - 1)))
        start -= 1
      end
      if (end_ < length_ - 1 && is_lam(@text.char_at(end_)) && is_alef(@text.char_at(end_ + 1)))
        end_ += 1
      end
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
      @tabs = tabs
      if ((tabs).nil?)
        OS.pango_layout_set_tabs(@layout, self.attr_device.attr_empty_tab)
      else
        # int
        tab_array = OS.pango_tab_array_new(tabs.attr_length, true)
        if (!(tab_array).equal?(0))
          i = 0
          while i < tabs.attr_length
            OS.pango_tab_array_set_tab(tab_array, i, OS::PANGO_TAB_LEFT, tabs[i])
            i += 1
          end
          OS.pango_layout_set_tabs(@layout, tab_array)
          OS.pango_tab_array_free(tab_array)
        end
      end
      # Bug in Pango. A change in the tab stop array is not automatically reflected in the
      # pango layout object because the call pango_layout_set_tabs() does not free the
      # lines cache. The fix to use pango_layout_context_changed() to free the lines cache.
      OS.pango_layout_context_changed(@layout)
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
    def set_width(width_)
      check_layout
      if (width_ < -1 || (width_).equal?(0))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      free_runs
      if ((width_).equal?(-1))
        OS.pango_layout_set_width(@layout, -1)
        rtl = (OS.pango_context_get_base_dir(@context)).equal?(OS::PANGO_DIRECTION_RTL)
        OS.pango_layout_set_alignment(@layout, rtl ? OS::PANGO_ALIGN_RIGHT : OS::PANGO_ALIGN_LEFT)
      else
        OS.pango_layout_set_width(@layout, width_ * OS::PANGO_SCALE)
      end
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def is_lam(ch)
        return (ch).equal?(0x644)
      end
      
      typesig { [::Java::Int] }
      def is_alef(ch)
        case (ch)
        when 0x622, 0x623, 0x625, 0x627, 0x649, 0x670, 0x671, 0x672, 0x673, 0x675
          return true
        end
        return false
      end
    }
    
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
      length_ = @text.length
      if ((length_).equal?(0))
        return offset
      end
      if ((@invalid_offsets).nil?)
        return offset
      end
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
      length_ = @text.length
      if ((length_).equal?(0))
        return offset
      end
      if ((@invalid_offsets).nil?)
        return offset
      end
      i = 0
      while i < @invalid_offsets.attr_length
        if ((offset).equal?(@invalid_offsets[i]))
          offset += 1
          i += 1
          next
        end
        if (offset < @invalid_offsets[i])
          return offset - i
        end
        i += 1
      end
      return offset - @invalid_offsets.attr_length
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def validate_offset(offset, step)
      if ((@invalid_offsets).nil?)
        return offset + step
      end
      i = step > 0 ? 0 : @invalid_offsets.attr_length - 1
      begin
        offset += step
        while (0 <= i && i < @invalid_offsets.attr_length)
          if ((@invalid_offsets[i]).equal?(offset))
            break
          end
          i += step
        end
      end while (0 <= i && i < @invalid_offsets.attr_length)
      return offset
    end
    
    typesig { [] }
    def width
      wrap_width = OS.pango_layout_get_width(@layout)
      if (!(wrap_width).equal?(-1))
        return OS._pango_pixels(wrap_width)
      end
      w = Array.typed(::Java::Int).new(1) { 0 }
      h = Array.typed(::Java::Int).new(1) { 0 }
      OS.pango_layout_get_size(@layout, w, h)
      return OS._pango_pixels(w[0] + OS.pango_layout_get_indent(@layout))
    end
    
    private
    alias_method :initialize__text_layout, :initialize
  end
  
end
