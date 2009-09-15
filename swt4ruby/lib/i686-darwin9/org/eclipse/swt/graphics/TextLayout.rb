require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
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
      include_const ::Org::Eclipse::Swt::Internal, :C
      include_const ::Org::Eclipse::Swt::Internal, :Compatibility
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
    
    attr_accessor :text_storage
    alias_method :attr_text_storage, :text_storage
    undef_method :text_storage
    alias_method :attr_text_storage=, :text_storage=
    undef_method :text_storage=
    
    attr_accessor :layout_manager
    alias_method :attr_layout_manager, :layout_manager
    undef_method :layout_manager
    alias_method :attr_layout_manager=, :layout_manager=
    undef_method :layout_manager=
    
    attr_accessor :text_container
    alias_method :attr_text_container, :text_container
    undef_method :text_container
    alias_method :attr_text_container=, :text_container=
    undef_method :text_container=
    
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
    
    attr_accessor :styles
    alias_method :attr_styles, :styles
    undef_method :styles
    alias_method :attr_styles=, :styles=
    undef_method :styles=
    
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
    
    attr_accessor :justify
    alias_method :attr_justify, :justify
    undef_method :justify
    alias_method :attr_justify=, :justify=
    undef_method :justify=
    
    attr_accessor :alignment
    alias_method :attr_alignment, :alignment
    undef_method :alignment
    alias_method :attr_alignment=, :alignment=
    undef_method :alignment=
    
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
    
    attr_accessor :wrap_width
    alias_method :attr_wrap_width, :wrap_width
    undef_method :wrap_width
    alias_method :attr_wrap_width=, :wrap_width=
    undef_method :wrap_width=
    
    attr_accessor :orientation
    alias_method :attr_orientation, :orientation
    undef_method :orientation
    alias_method :attr_orientation=, :orientation=
    undef_method :orientation=
    
    attr_accessor :line_offsets
    alias_method :attr_line_offsets, :line_offsets
    undef_method :line_offsets
    alias_method :attr_line_offsets=, :line_offsets=
    undef_method :line_offsets=
    
    attr_accessor :line_bounds
    alias_method :attr_line_bounds, :line_bounds
    undef_method :line_bounds
    alias_method :attr_line_bounds=, :line_bounds=
    undef_method :line_bounds=
    
    class_module.module_eval {
      const_set_lazy(:UNDERLINE_THICK) { 1 << 16 }
      const_attr_reader  :UNDERLINE_THICK
      
      const_set_lazy(:LINK_FOREGROUND) { RGB.new(0, 51, 153) }
      const_attr_reader  :LINK_FOREGROUND
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
      @text_storage = nil
      @layout_manager = nil
      @text_container = nil
      @font = nil
      @text = nil
      @styles = nil
      @spacing = 0
      @ascent = 0
      @descent = 0
      @indent = 0
      @justify = false
      @alignment = 0
      @tabs = nil
      @segments = nil
      @wrap_width = 0
      @orientation = 0
      @line_offsets = nil
      @line_bounds = nil
      @invalid_offsets = nil
      super(device)
      @wrap_width = @ascent = @descent = -1
      @alignment = SWT::LEFT
      @orientation = SWT::LEFT_TO_RIGHT
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_polyline(left, top, right, bottom)
      height = bottom - top # can be any number
      width = 2 * height # must be even
      peaks = Compatibility.ceil(right - left, width)
      if ((peaks).equal?(0) && right - left > 2)
        peaks = 1
      end
      length = ((2 * peaks) + 1) * 2
      if (length < 0)
        return Array.typed(::Java::Float).new(0) { 0.0 }
      end
      coordinates = Array.typed(::Java::Float).new(length) { 0.0 }
      i = 0
      while i < peaks
        index = 4 * i
        coordinates[index] = left + (width * i)
        coordinates[index + 1] = bottom
        coordinates[index + 2] = coordinates[index] + width / 2
        coordinates[index + 3] = top
        i += 1
      end
      coordinates[length - 2] = left + (width * peaks)
      coordinates[length - 1] = bottom
      return coordinates
    end
    
    typesig { [] }
    def compute_runs
      if (!(@text_storage).nil?)
        return
      end
      segments_text = get_segments_text
      str = NSString.string_with(segments_text)
      @text_storage = NSTextStorage.new.alloc.init
      @layout_manager = NSLayoutManager.new.alloc.init
      @layout_manager.set_background_layout_enabled(NSThread.is_main_thread)
      @text_container = NSTextContainer.new.alloc
      size = NSSize.new
      size.attr_width = !(@wrap_width).equal?(-1) ? @wrap_width : Float::MAX_VALUE
      size.attr_height = Float::MAX_VALUE
      @text_container.init_with_container_size(size)
      @text_storage.add_layout_manager(@layout_manager)
      @layout_manager.add_text_container(@text_container)
      # Bug in Cocoa. Adding attributes directly to a NSTextStorage causes
      # output to the console and eventually a segmentation fault when printing
      # on a thread other than the main thread. The fix is to add attributes to
      # a separate NSMutableAttributedString and add it to text storage when done.
      attr_str = NSMutableAttributedString.new.alloc
      attr_str.attr_id = attr_str.init_with_string(str).attr_id
      attr_str.begin_editing
      default_font = !(@font).nil? ? @font : self.attr_device.attr_system_font
      range = NSRange.new
      range.attr_length = str.length
      attr_str.add_attribute(OS::NSFontAttributeName, default_font.attr_handle, range)
      default_font.add_traits(attr_str, range)
      # TODO ascend descent wrap
      paragraph = NSMutableParagraphStyle.new.alloc.init
      align = OS::NSLeftTextAlignment
      if (@justify)
        align = OS::NSJustifiedTextAlignment
      else
        case (@alignment)
        when SWT::CENTER
          align = OS::NSCenterTextAlignment
        when SWT::RIGHT
          align = OS::NSRightTextAlignment
        end
      end
      paragraph.set_alignment(align)
      paragraph.set_line_spacing(@spacing)
      paragraph.set_first_line_head_indent(@indent)
      paragraph.set_line_break_mode(!(@wrap_width).equal?(-1) ? OS::NSLineBreakByWordWrapping : OS::NSLineBreakByClipping)
      paragraph.set_tab_stops(NSArray.array)
      if (!(@tabs).nil?)
        count = @tabs.attr_length
        i = 0
        pos = 0
        while i < count
          pos += @tabs[i]
          tab = NSTextTab.new.alloc
          tab = tab.init_with_type(OS::NSLeftTabStopType, pos)
          paragraph.add_tab_stop(tab)
          tab.release
          i += 1
        end
        width = count - 2 >= 0 ? @tabs[count - 1] - @tabs[count - 2] : @tabs[count - 1]
        paragraph.set_default_tab_interval(width)
      end
      attr_str.add_attribute(OS::NSParagraphStyleAttributeName, paragraph, range)
      paragraph.release
      # long
      text_length = str.length
      i = 0
      while i < @styles.attr_length - 1
        run = @styles[i]
        if ((run.attr_style).nil?)
          i += 1
          next
        end
        style = run.attr_style
        range.attr_location = !(text_length).equal?(0) ? translate_offset(run.attr_start) : 0
        range.attr_length = translate_offset(@styles[i + 1].attr_start) - range.attr_location
        font = style.attr_font
        if (!(font).nil?)
          attr_str.add_attribute(OS::NSFontAttributeName, font.attr_handle, range)
          font.add_traits(attr_str, range)
        end
        foreground = style.attr_foreground
        if (!(foreground).nil?)
          color = NSColor.color_with_device_red(foreground.attr_handle[0], foreground.attr_handle[1], foreground.attr_handle[2], 1)
          attr_str.add_attribute(OS::NSForegroundColorAttributeName, color, range)
        end
        background = style.attr_background
        if (!(background).nil?)
          color = NSColor.color_with_device_red(background.attr_handle[0], background.attr_handle[1], background.attr_handle[2], 1)
          attr_str.add_attribute(OS::NSBackgroundColorAttributeName, color, range)
        end
        if (style.attr_strikeout)
          attr_str.add_attribute(OS::NSStrikethroughStyleAttributeName, NSNumber.number_with_int(OS::NSUnderlineStyleSingle), range)
          strike_color = style.attr_strikeout_color
          if (!(strike_color).nil?)
            color = NSColor.color_with_device_red(strike_color.attr_handle[0], strike_color.attr_handle[1], strike_color.attr_handle[2], 1)
            attr_str.add_attribute(OS::NSStrikethroughColorAttributeName, color, range)
          end
        end
        if (is_underline_supported(style))
          underline_style = 0
          case (style.attr_underline_style)
          when SWT::UNDERLINE_SINGLE
            underline_style = OS::NSUnderlineStyleSingle
          when SWT::UNDERLINE_DOUBLE
            underline_style = OS::NSUnderlineStyleDouble
          when UNDERLINE_THICK
            underline_style = OS::NSUnderlineStyleThick
          when SWT::UNDERLINE_LINK
            underline_style = OS::NSUnderlineStyleSingle
            if ((foreground).nil?)
              color = NSColor.color_with_device_red(LINK_FOREGROUND.attr_red / 255, LINK_FOREGROUND.attr_green / 255, LINK_FOREGROUND.attr_blue / 255, 1)
              attr_str.add_attribute(OS::NSForegroundColorAttributeName, color, range)
            end
          end
          if (!(underline_style).equal?(0))
            attr_str.add_attribute(OS::NSUnderlineStyleAttributeName, NSNumber.number_with_int(underline_style), range)
            underline_color = style.attr_underline_color
            if (!(underline_color).nil?)
              color = NSColor.color_with_device_red(underline_color.attr_handle[0], underline_color.attr_handle[1], underline_color.attr_handle[2], 1)
              attr_str.add_attribute(OS::NSUnderlineColorAttributeName, color, range)
            end
          end
        end
        if (!(style.attr_rise).equal?(0))
          attr_str.add_attribute(OS::NSBaselineOffsetAttributeName, NSNumber.number_with_int(style.attr_rise), range)
        end
        if (!(style.attr_metrics).nil?)
          # TODO implement metrics
        end
        i += 1
      end
      attr_str.end_editing
      @text_storage.set_attributed_string(attr_str)
      attr_str.release
      @text_container.set_line_fragment_padding(0)
      @layout_manager.glyph_range_for_text_container(@text_container)
      number_of_lines = 0
      # long
      number_of_glyphs_ = @layout_manager.number_of_glyphs
      index = 0
      # long
      range_ptr = OS.malloc(NSRange.attr_sizeof)
      line_range = NSRange.new
      number_of_lines = 0
      index = 0
      while index < number_of_glyphs_
        @layout_manager.line_fragment_used_rect_for_glyph_at_index(index, range_ptr, true)
        OS.memmove___org_eclipse_swt_graphics_text_layout_1(line_range, range_ptr, NSRange.attr_sizeof)
        index = line_range.attr_location + line_range.attr_length
        number_of_lines += 1
      end
      if ((number_of_lines).equal?(0))
        number_of_lines += 1
      end
      offsets = Array.typed(::Java::Int).new(number_of_lines + 1) { 0 }
      bounds = Array.typed(NSRect).new(number_of_lines) { nil }
      number_of_lines = 0
      index = 0
      while index < number_of_glyphs_
        bounds[number_of_lines] = @layout_manager.line_fragment_used_rect_for_glyph_at_index(index, range_ptr, true)
        if (number_of_lines < bounds.attr_length - 1)
          bounds[number_of_lines].attr_height -= @spacing
        end
        OS.memmove___org_eclipse_swt_graphics_text_layout_3(line_range, range_ptr, NSRange.attr_sizeof)
        # 64
        offsets[number_of_lines] = RJava.cast_to_int(line_range.attr_location)
        index = line_range.attr_location + line_range.attr_length
        number_of_lines += 1
      end
      if ((number_of_lines).equal?(0))
        font = !(@font).nil? ? @font : self.attr_device.attr_system_font
        ns_font = font.attr_handle
        bounds[0] = NSRect.new
        bounds[0].attr_height = Math.max(@layout_manager.default_line_height_for_font(ns_font), @ascent + @descent)
      end
      OS.free(range_ptr)
      # 64
      offsets[number_of_lines] = RJava.cast_to_int(@text_storage.length)
      @line_offsets = offsets
      @line_bounds = bounds
    end
    
    typesig { [] }
    def destroy
      free_runs
      @font = nil
      @text = RJava.cast_to_string(nil)
      @styles = nil
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
      pool = gc.check_gc(SwtGC::CLIPPING | SwtGC::TRANSFORM | SwtGC::FOREGROUND)
      begin
        compute_runs
        length_ = translate_offset(@text.length)
        if ((length_).equal?(0) && (flags).equal?(0))
          return
        end
        gc.attr_handle.save_graphics_state
        pt = NSPoint.new
        pt.attr_x = x
        pt.attr_y = y
        range = NSRange.new
        # long
        number_of_glyphs_ = @layout_manager.number_of_glyphs
        if (number_of_glyphs_ > 0)
          range.attr_location = 0
          range.attr_length = number_of_glyphs_
          @layout_manager.draw_background_for_glyph_range(range, pt)
        end
        has_selection = selection_start <= selection_end && !(selection_start).equal?(-1) && !(selection_end).equal?(-1)
        if (has_selection || !((flags & SWT::LAST_LINE_SELECTION)).equal?(0))
          if ((selection_background).nil?)
            selection_background = self.attr_device.get_system_color(SWT::COLOR_LIST_SELECTION)
          end
          selection_color = NSColor.color_with_device_red(selection_background.attr_handle[0], selection_background.attr_handle[1], selection_background.attr_handle[2], selection_background.attr_handle[3])
          path = NSBezierPath.bezier_path
          rect = NSRect.new
          if (has_selection)
            # long
            p_rect_count = OS.malloc(C::PTR_SIZEOF)
            range.attr_location = translate_offset(selection_start)
            range.attr_length = translate_offset(selection_end - selection_start + 1)
            # long
            p_array = @layout_manager.rect_array_for_character_range(range, range, @text_container, p_rect_count)
            # long
            # long
            rect_count = Array.typed(::Java::Int).new(1) { 0 }
            OS.memmove___org_eclipse_swt_graphics_text_layout_5(rect_count, p_rect_count, C::PTR_SIZEOF)
            OS.free(p_rect_count)
            k = 0
            while k < rect_count[0]
              OS.memmove___org_eclipse_swt_graphics_text_layout_7(rect, p_array, NSRect.attr_sizeof)
              fix_rect(rect)
              rect.attr_x += pt.attr_x
              rect.attr_y += pt.attr_y
              rect.attr_height = Math.max(rect.attr_height, @ascent + @descent)
              path.append_bezier_path_with_rect(rect)
              k += 1
              p_array += NSRect.attr_sizeof
            end
          end
          # TODO draw full selection for wrapped text
          if (!((flags & SWT::LAST_LINE_SELECTION)).equal?(0))
            bounds = @line_bounds[@line_bounds.attr_length - 1]
            rect.attr_x = pt.attr_x + bounds.attr_x + bounds.attr_width
            rect.attr_y = y + bounds.attr_y
            rect.attr_width = !((flags & SWT::FULL_SELECTION)).equal?(0) ? 0x7fffffff : bounds.attr_height / 3
            rect.attr_height = Math.max(bounds.attr_height, @ascent + @descent)
            path.append_bezier_path_with_rect(rect)
          end
          selection_color.set_fill
          path.fill
        end
        if (number_of_glyphs_ > 0)
          range.attr_location = 0
          range.attr_length = number_of_glyphs_
          # double
          fg = gc.attr_data.attr_foreground
          default_fg = (fg[0]).equal?(0) && (fg[1]).equal?(0) && (fg[2]).equal?(0) && (fg[3]).equal?(1)
          if (!default_fg)
            i = 0
            while i < @styles.attr_length - 1
              run = @styles[i]
              if (!(run.attr_style).nil? && !(run.attr_style.attr_foreground).nil?)
                i += 1
                next
              end
              if (!(run.attr_style).nil? && run.attr_style.attr_underline && (run.attr_style.attr_underline_style).equal?(SWT::UNDERLINE_LINK))
                i += 1
                next
              end
              range.attr_location = !(length_).equal?(0) ? translate_offset(run.attr_start) : 0
              range.attr_length = translate_offset(@styles[i + 1].attr_start) - range.attr_location
              @layout_manager.add_temporary_attribute(OS::NSForegroundColorAttributeName, gc.attr_data.attr_fg, range)
              i += 1
            end
          end
          range.attr_location = 0
          range.attr_length = number_of_glyphs_
          @layout_manager.draw_glyphs_for_glyph_range(range, pt)
          if (!default_fg)
            range.attr_location = 0
            range.attr_length = length_
            @layout_manager.remove_temporary_attribute(OS::NSForegroundColorAttributeName, range)
          end
          point = NSPoint.new
          j = 0
          while j < @styles.attr_length
            run = @styles[j]
            style = run.attr_style
            if ((style).nil?)
              j += 1
              next
            end
            draw_underline = style.attr_underline && !is_underline_supported(style)
            draw_underline = draw_underline && ((j + 1).equal?(@styles.attr_length) || !style.is_adherent_underline(@styles[j + 1].attr_style))
            draw_border = !(style.attr_border_style).equal?(SWT::NONE)
            draw_border = draw_border && ((j + 1).equal?(@styles.attr_length) || !style.is_adherent_border(@styles[j + 1].attr_style))
            if (!draw_underline && !draw_border)
              j += 1
              next
            end
            end_ = j + 1 < @styles.attr_length ? translate_offset(@styles[j + 1].attr_start - 1) : length_
            i = 0
            while i < @line_offsets.attr_length - 1
              line_start = untranslate_offset(@line_offsets[i])
              line_end = untranslate_offset(@line_offsets[i + 1] - 1)
              if (draw_underline)
                start = run.attr_start
                k = j
                while k > 0 && style.is_adherent_underline(@styles[k - 1].attr_style)
                  start = @styles[k - 1].attr_start
                  k -= 1
                end
                start = translate_offset(start)
                if (!(start > line_end || end_ < line_start))
                  range.attr_location = Math.max(line_start, start)
                  range.attr_length = Math.min(line_end, end_) + 1 - range.attr_location
                  if (range.attr_length > 0)
                    # long
                    p_rect_count = OS.malloc(C::PTR_SIZEOF)
                    # long
                    p_array = @layout_manager.rect_array_for_character_range(range, range, @text_container, p_rect_count)
                    # long
                    # long
                    rect_count = Array.typed(::Java::Int).new(1) { 0 }
                    OS.memmove___org_eclipse_swt_graphics_text_layout_9(rect_count, p_rect_count, C::PTR_SIZEOF)
                    OS.free(p_rect_count)
                    rect = NSRect.new
                    gc.attr_handle.save_graphics_state
                    # double
                    baseline = @layout_manager.typesetter.baseline_offset_in_layout_manager(@layout_manager, line_start)
                    # double
                    color = nil
                    if (!(style.attr_underline_color).nil?)
                      color = style.attr_underline_color.attr_handle
                    end
                    if ((color).nil? && !(style.attr_foreground).nil?)
                      color = style.attr_foreground.attr_handle
                    end
                    if (!(color).nil?)
                      NSColor.color_with_device_red(color[0], color[1], color[2], color[3]).set_stroke
                    end
                    k_ = 0
                    while k_ < rect_count[0]
                      OS.memmove___org_eclipse_swt_graphics_text_layout_11(rect, p_array, NSRect.attr_sizeof)
                      fix_rect(rect)
                      # double
                      underline_x = pt.attr_x + rect.attr_x
                      # double
                      underline_y = pt.attr_y + rect.attr_y + rect.attr_height - baseline + 1
                      path = NSBezierPath.bezier_path
                      case (style.attr_underline_style)
                      when SWT::UNDERLINE_ERROR
                        path.set_line_width(2)
                        path.set_line_cap_style(OS::NSRoundLineCapStyle)
                        path.set_line_join_style(OS::NSRoundLineJoinStyle)
                        # double
                        path.set_line_dash(Array.typed(::Java::Float).new([1, 3]), 2, 0)
                        point.attr_x = underline_x
                        point.attr_y = underline_y + 0.5
                        path.move_to_point(point)
                        point.attr_x = underline_x + rect.attr_width
                        point.attr_y = underline_y + 0.5
                        path.line_to_point(point)
                      when SWT::UNDERLINE_SQUIGGLE
                        gc.attr_handle.set_should_antialias(false)
                        path.set_line_width(1.0)
                        path.set_line_cap_style(OS::NSButtLineCapStyle)
                        path.set_line_join_style(OS::NSMiterLineJoinStyle)
                        # double
                        line_bottom = pt.attr_y + rect.attr_y + rect.attr_height
                        squiggly_thickness = 1
                        squiggly_height = 2 * squiggly_thickness
                        # double
                        squiggly_y = Math.min(underline_y - squiggly_height / 2, line_bottom - squiggly_height - 1)
                        points = compute_polyline(RJava.cast_to_int(underline_x), RJava.cast_to_int(squiggly_y), RJava.cast_to_int((underline_x + rect.attr_width)), RJava.cast_to_int((squiggly_y + squiggly_height)))
                        point.attr_x = points[0] + 0.5
                        point.attr_y = points[1] + 0.5
                        path.move_to_point(point)
                        p = 2
                        while p < points.attr_length
                          point.attr_x = points[p] + 0.5
                          point.attr_y = points[p + 1] + 0.5
                          path.line_to_point(point)
                          p += 2
                        end
                      end
                      path.stroke
                      k_ += 1
                      p_array += NSRect.attr_sizeof
                    end
                    gc.attr_handle.restore_graphics_state
                  end
                end
              end
              if (draw_border)
                start = run.attr_start
                k = j
                while k > 0 && style.is_adherent_border(@styles[k - 1].attr_style)
                  start = @styles[k - 1].attr_start
                  k -= 1
                end
                start = translate_offset(start)
                if (!(start > line_end || end_ < line_start))
                  range.attr_location = Math.max(line_start, start)
                  range.attr_length = Math.min(line_end, end_) + 1 - range.attr_location
                  if (range.attr_length > 0)
                    # long
                    p_rect_count = OS.malloc(C::PTR_SIZEOF)
                    # long
                    p_array = @layout_manager.rect_array_for_character_range(range, range, @text_container, p_rect_count)
                    # long
                    # long
                    rect_count = Array.typed(::Java::Int).new(1) { 0 }
                    OS.memmove___org_eclipse_swt_graphics_text_layout_13(rect_count, p_rect_count, C::PTR_SIZEOF)
                    OS.free(p_rect_count)
                    rect = NSRect.new
                    gc.attr_handle.save_graphics_state
                    # double
                    color = nil
                    if (!(style.attr_border_color).nil?)
                      color = style.attr_border_color.attr_handle
                    end
                    if ((color).nil? && !(style.attr_foreground).nil?)
                      color = style.attr_foreground.attr_handle
                    end
                    if (!(color).nil?)
                      NSColor.color_with_device_red(color[0], color[1], color[2], color[3]).set_stroke
                    end
                    width = 1
                    dashes = nil
                    case (style.attr_border_style)
                    when SWT::BORDER_SOLID
                    when SWT::BORDER_DASH
                      dashes = !(width).equal?(0) ? SwtGC::LINE_DASH : SwtGC::LINE_DASH_ZERO
                    when SWT::BORDER_DOT
                      dashes = !(width).equal?(0) ? SwtGC::LINE_DOT : SwtGC::LINE_DOT_ZERO
                    end
                    # double
                    lengths = nil
                    if (!(dashes).nil?)
                      # double
                      lengths = Array.typed(::Java::Float).new(dashes.attr_length) { 0.0 }
                      k_ = 0
                      while k_ < lengths.attr_length
                        lengths[k_] = (width).equal?(0) ? dashes[k_] : dashes[k_] * width
                        k_ += 1
                      end
                    end
                    k_ = 0
                    while k_ < rect_count[0]
                      OS.memmove___org_eclipse_swt_graphics_text_layout_15(rect, p_array, NSRect.attr_sizeof)
                      fix_rect(rect)
                      rect.attr_x += pt.attr_x + 0.5
                      rect.attr_y += pt.attr_y + 0.5
                      rect.attr_width -= 0.5
                      rect.attr_height -= 0.5
                      path = NSBezierPath.bezier_path
                      path.set_line_dash(lengths, !(lengths).nil? ? lengths.attr_length : 0, 0)
                      path.append_bezier_path_with_rect(rect)
                      path.stroke
                      k_ += 1
                      p_array += NSRect.attr_sizeof
                    end
                    gc.attr_handle.restore_graphics_state
                  end
                end
              end
              i += 1
            end
            j += 1
          end
        end
        gc.attr_handle.restore_graphics_state
      ensure
        gc.uncheck_gc(pool)
      end
    end
    
    typesig { [NSRect] }
    def fix_rect(rect)
      j = 0
      while j < @line_bounds.attr_length
        line = @line_bounds[j]
        if (line.attr_y <= rect.attr_y && rect.attr_y < line.attr_y + line.attr_height)
          if (rect.attr_x + rect.attr_width > line.attr_x + line.attr_width)
            rect.attr_width = line.attr_x + line.attr_width - rect.attr_x
          end
        end
        j += 1
      end
    end
    
    typesig { [] }
    def free_runs
      if ((@text_storage).nil?)
        return
      end
      if (!(@text_storage).nil?)
        @text_storage.release
      end
      if (!(@layout_manager).nil?)
        @layout_manager.release
      end
      if (!(@text_container).nil?)
        @text_container.release
      end
      @text_storage = nil
      @layout_manager = nil
      @text_container = nil
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
      return @alignment
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        compute_runs
        rect = @layout_manager.used_rect_for_text_container(@text_container)
        if (!(@wrap_width).equal?(-1))
          rect.attr_width = @wrap_width
        end
        if ((@text.length).equal?(0))
          font = !(@font).nil? ? @font : self.attr_device.attr_system_font
          ns_font = font.attr_handle
          rect.attr_height = @layout_manager.default_line_height_for_font(ns_font)
        end
        rect.attr_height = Math.max(rect.attr_height, @ascent + @descent) + @spacing
        return Rectangle.new(0, 0, RJava.cast_to_int(Math.ceil(rect.attr_width)), RJava.cast_to_int(Math.ceil(rect.attr_height)))
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
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
        range = NSRange.new
        range.attr_location = start
        range.attr_length = end_ - start + 1
        # long
        p_rect_count = OS.malloc(C::PTR_SIZEOF)
        # long
        p_array = @layout_manager.rect_array_for_character_range(range, range, @text_container, p_rect_count)
        # long
        # long
        rect_count = Array.typed(::Java::Int).new(1) { 0 }
        OS.memmove___org_eclipse_swt_graphics_text_layout_17(rect_count, p_rect_count, C::PTR_SIZEOF)
        OS.free(p_rect_count)
        rect = NSRect.new
        left = 0x7fffffff
        right = 0
        top = 0x7fffffff
        bottom = 0
        i = 0
        while i < rect_count[0]
          OS.memmove___org_eclipse_swt_graphics_text_layout_19(rect, p_array, NSRect.attr_sizeof)
          fix_rect(rect)
          left = Math.min(left, RJava.cast_to_int(rect.attr_x))
          right = Math.max(right, RJava.cast_to_int(Math.ceil(rect.attr_x + rect.attr_width)))
          top = Math.min(top, RJava.cast_to_int(rect.attr_y))
          bottom = Math.max(bottom, RJava.cast_to_int(Math.ceil(rect.attr_y + rect.attr_height)))
          i += 1
          p_array += NSRect.attr_sizeof
        end
        return Rectangle.new(left, top, right - left, bottom - top)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      return @justify
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        compute_runs
        length_ = @text.length
        if (!(0 <= offset && offset <= length_))
          SWT.error(SWT::ERROR_INVALID_RANGE)
        end
        offset = translate_offset(offset)
        # long
        glyph_offset = @layout_manager.glyph_index_for_character_at_index(offset)
        range = NSRange.new
        range.attr_location = glyph_offset
        range.attr_length = 1
        # long
        p_bidi_levels = OS.malloc(1)
        bidi_levels = Array.typed(::Java::Byte).new(1) { 0 }
        # long
        result = @layout_manager.get_glyphs_in_range(range, 0, 0, 0, 0, p_bidi_levels)
        if (result > 0)
          OS.memmove___org_eclipse_swt_graphics_text_layout_21(bidi_levels, p_bidi_levels, 1)
        end
        OS.free(p_bidi_levels)
        return bidi_levels[0]
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        compute_runs
        offsets = Array.typed(::Java::Int).new(@line_offsets.attr_length) { 0 }
        i = 0
        while i < offsets.attr_length
          offsets[i] = untranslate_offset(@line_offsets[i])
          i += 1
        end
        return offsets
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        compute_runs
        length_ = @text.length
        if (!(0 <= offset && offset <= length_))
          SWT.error(SWT::ERROR_INVALID_RANGE)
        end
        offset = translate_offset(offset)
        line = 0
        while line < @line_offsets.attr_length - 1
          if (@line_offsets[line + 1] > offset)
            return line
          end
          line += 1
        end
        return @line_bounds.attr_length - 1
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        compute_runs
        if (!(0 <= line_index && line_index < @line_bounds.attr_length))
          SWT.error(SWT::ERROR_INVALID_RANGE)
        end
        rect = @line_bounds[line_index]
        height = Math.max(RJava.cast_to_int(Math.ceil(rect.attr_height)), @ascent + @descent)
        return Rectangle.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y), RJava.cast_to_int(Math.ceil(rect.attr_width)), height)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        compute_runs
        return @line_offsets.attr_length - 1
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        compute_runs
        line_count = get_line_count
        if (!(0 <= line_index && line_index < line_count))
          SWT.error(SWT::ERROR_INVALID_RANGE)
        end
        length_ = @text.length
        if ((length_).equal?(0))
          font = !(@font).nil? ? @font : self.attr_device.attr_system_font
          ns_font = font.attr_handle
          ascent = RJava.cast_to_int((0.5 + ns_font.ascender))
          descent = RJava.cast_to_int((0.5 + (-ns_font.descender + ns_font.leading)))
          ascent = Math.max(ascent, @ascent)
          descent = Math.max(descent, @descent)
          return FontMetrics.cocoa_new(ascent, descent, 0, 0, ascent + descent)
        end
        rect = get_line_bounds(line_index)
        baseline = RJava.cast_to_int(@layout_manager.typesetter.baseline_offset_in_layout_manager(@layout_manager, get_line_offsets[line_index]))
        return FontMetrics.cocoa_new(rect.attr_height - baseline, baseline, 0, 0, rect.attr_height)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        compute_runs
        length_ = @text.length
        if (!(0 <= offset && offset <= length_))
          SWT.error(SWT::ERROR_INVALID_RANGE)
        end
        if ((length_).equal?(0))
          return Point.new(0, 0)
        end
        offset = translate_offset(offset)
        # long
        glyph_index = @layout_manager.glyph_index_for_character_at_index(offset)
        rect = @layout_manager.line_fragment_used_rect_for_glyph_at_index(glyph_index, 0)
        point = @layout_manager.location_for_glyph_at_index(glyph_index)
        if (trailing)
          range = NSRange.new
          range.attr_location = offset
          range.attr_length = 1
          # long
          p_rect_count = OS.malloc(C::PTR_SIZEOF)
          # long
          p_array = @layout_manager.rect_array_for_character_range(range, range, @text_container, p_rect_count)
          # long
          # long
          rect_count = Array.typed(::Java::Int).new(1) { 0 }
          OS.memmove___org_eclipse_swt_graphics_text_layout_23(rect_count, p_rect_count, C::PTR_SIZEOF)
          OS.free(p_rect_count)
          if (rect_count[0] > 0)
            bounds = NSRect.new
            OS.memmove___org_eclipse_swt_graphics_text_layout_25(bounds, p_array, NSRect.attr_sizeof)
            fix_rect(bounds)
            point.attr_x += bounds.attr_width
          end
        end
        return Point.new(RJava.cast_to_int(point.attr_x), RJava.cast_to_int(rect.attr_y))
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        return __get_offset(offset, movement, true)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      length_ = translate_offset(length_)
      case (movement)
      # TODO cluster
      when SWT::MOVEMENT_CLUSTER, SWT::MOVEMENT_CHAR
        invalid = false
        begin
          new_offset = offset
          if (forward)
            if (new_offset < length_)
              new_offset += 1
            end
          else
            if (new_offset > 0)
              new_offset -= 1
            end
          end
          if ((new_offset).equal?(offset))
            break
          end
          offset = new_offset
          invalid = false
          if (!(@invalid_offsets).nil?)
            i = 0
            while i < @invalid_offsets.attr_length
              if ((offset).equal?(@invalid_offsets[i]))
                invalid = true
                break
              end
              i += 1
            end
          end
        end while (invalid)
        return untranslate_offset(offset)
      when SWT::MOVEMENT_WORD
        # 64
        return untranslate_offset(RJava.cast_to_int(@text_storage.next_word_from_index(offset, forward)))
      when SWT::MOVEMENT_WORD_END
        range = @text_storage.double_click_at_index((length_).equal?(offset) ? length_ - 1 : offset)
        # 64
        return untranslate_offset(RJava.cast_to_int((range.attr_location + range.attr_length)))
      when SWT::MOVEMENT_WORD_START
        range = @text_storage.double_click_at_index((length_).equal?(offset) ? length_ - 1 : offset)
        # 64
        return untranslate_offset(RJava.cast_to_int(range.attr_location))
      end
      return untranslate_offset(offset)
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        compute_runs
        if ((point).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        return get_offset(point.attr_x, point.attr_y, trailing)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        compute_runs
        if (!(trailing).nil? && trailing.attr_length < 1)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        length_ = @text.length
        if ((length_).equal?(0))
          return 0
        end
        pt = NSPoint.new
        pt.attr_x = x
        pt.attr_y = y
        # double
        # double
        partial_fration = Array.typed(::Java::Float).new(1) { 0.0 }
        # long
        glyph_index = @layout_manager.glyph_index_for_point(pt, @text_container, partial_fration)
        # long
        offset = @layout_manager.character_index_for_glyph_at_index(glyph_index)
        if (!(trailing).nil?)
          # 64
          trailing[0] = Math.round((partial_fration[0]).to_f)
        end
        # 64
        return Math.min(untranslate_offset(RJava.cast_to_int(offset)), length_ - 1)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      return @orientation
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        return __get_offset(index, movement, false)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      return @wrap_width
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
      return (self.attr_device).nil?
    end
    
    typesig { [TextStyle] }
    # Returns true if the underline style is supported natively
    def is_underline_supported(style)
      if (!(style).nil? && style.attr_underline)
        u_style = style.attr_underline_style
        return (u_style).equal?(SWT::UNDERLINE_SINGLE) || (u_style).equal?(SWT::UNDERLINE_DOUBLE) || (u_style).equal?(SWT::UNDERLINE_LINK) || (u_style).equal?(UNDERLINE_THICK)
      end
      return false
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
      if ((@alignment).equal?(alignment))
        return
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        free_runs
        @alignment = alignment
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        free_runs
        @ascent = ascent
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        free_runs
        @descent = descent
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        free_runs
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        free_runs
        @indent = indent
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      if ((justify).equal?(@justify))
        return
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        free_runs
        @justify = justify
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      mask = SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
      orientation &= mask
      if ((orientation).equal?(0))
        return
      end
      if (!((orientation & SWT::LEFT_TO_RIGHT)).equal?(0))
        orientation = SWT::LEFT_TO_RIGHT
      end
      if ((@orientation).equal?(orientation))
        return
      end
      @orientation = orientation
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        free_runs
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        free_runs
        @segments = segments
      ensure
        if (!(pool).nil?)
          pool.release
        end
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
      if ((@spacing).equal?(spacing))
        return
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        free_runs
        @spacing = spacing
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
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
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        free_runs
        @tabs = tabs
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [String] }
    # Sets the receiver's text.
    # <p>
    # Note: Setting the text also clears all the styles. This method
    # returns without doing anything if the new text is the same as
    # the current text.
    # </p>
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        free_runs
        @text = text
        @styles = Array.typed(StyleItem).new(2) { nil }
        @styles[0] = StyleItem.new
        @styles[1] = StyleItem.new
        @styles[@styles.attr_length - 1].attr_start = text.length
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      if ((@wrap_width).equal?(width))
        return
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        free_runs
        @wrap_width = width
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      return "TextLayout {" + @text + "}"
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
    
    private
    alias_method :initialize__text_layout, :initialize
  end
  
end
