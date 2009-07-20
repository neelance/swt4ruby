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
      include ::Org::Eclipse::Swt::Internal::Gdip
      include ::Org::Eclipse::Swt::Internal::Win32
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
    
    attr_accessor :segments_text
    alias_method :attr_segments_text, :segments_text
    undef_method :segments_text
    alias_method :attr_segments_text=, :segments_text=
    undef_method :segments_text=
    
    attr_accessor :line_spacing
    alias_method :attr_line_spacing, :line_spacing
    undef_method :line_spacing
    alias_method :attr_line_spacing=, :line_spacing=
    undef_method :line_spacing=
    
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
    
    attr_accessor :alignment
    alias_method :attr_alignment, :alignment
    undef_method :alignment
    alias_method :attr_alignment=, :alignment=
    undef_method :alignment=
    
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
    
    attr_accessor :styles
    alias_method :attr_styles, :styles
    undef_method :styles
    alias_method :attr_styles=, :styles=
    undef_method :styles=
    
    attr_accessor :styles_count
    alias_method :attr_styles_count, :styles_count
    undef_method :styles_count
    alias_method :attr_styles_count=, :styles_count=
    undef_method :styles_count=
    
    attr_accessor :all_runs
    alias_method :attr_all_runs, :all_runs
    undef_method :all_runs
    alias_method :attr_all_runs=, :all_runs=
    undef_method :all_runs=
    
    attr_accessor :runs
    alias_method :attr_runs, :runs
    undef_method :runs
    alias_method :attr_runs=, :runs=
    undef_method :runs=
    
    attr_accessor :line_offset
    alias_method :attr_line_offset, :line_offset
    undef_method :line_offset
    alias_method :attr_line_offset=, :line_offset=
    undef_method :line_offset=
    
    attr_accessor :line_y
    alias_method :attr_line_y, :line_y
    undef_method :line_y
    alias_method :attr_line_y=, :line_y=
    undef_method :line_y=
    
    attr_accessor :line_width
    alias_method :attr_line_width, :line_width
    undef_method :line_width
    alias_method :attr_line_width=, :line_width=
    undef_method :line_width=
    
    # long
    attr_accessor :m_lang_font_link2
    alias_method :attr_m_lang_font_link2, :m_lang_font_link2
    undef_method :m_lang_font_link2
    alias_method :attr_m_lang_font_link2=, :m_lang_font_link2=
    undef_method :m_lang_font_link2=
    
    class_module.module_eval {
      const_set_lazy(:LTR_MARK) { Character.new(0x200E) }
      const_attr_reader  :LTR_MARK
      
      const_set_lazy(:RTL_MARK) { Character.new(0x200F) }
      const_attr_reader  :RTL_MARK
      
      const_set_lazy(:SCRIPT_VISATTR_SIZEOF) { 2 }
      const_attr_reader  :SCRIPT_VISATTR_SIZEOF
      
      const_set_lazy(:GOFFSET_SIZEOF) { 8 }
      const_attr_reader  :GOFFSET_SIZEOF
      
      const_set_lazy(:CLSID_CMultiLanguage) { Array.typed(::Java::Byte).new(16) { 0 } }
      const_attr_reader  :CLSID_CMultiLanguage
      
      const_set_lazy(:IID_IMLangFontLink2) { Array.typed(::Java::Byte).new(16) { 0 } }
      const_attr_reader  :IID_IMLangFontLink2
      
      when_class_loaded do
        OS._iidfrom_string("{275c23e2-3747-11d0-9fea-00aa003f8646}\0".to_char_array, CLSID_CMultiLanguage)
        OS._iidfrom_string("{DCCFC162-2B38-11d2-B7EC-00C04F8F5D9A}\0".to_char_array, IID_IMLangFontLink2)
      end
      
      # IME has a copy of these constants
      const_set_lazy(:UNDERLINE_IME_DOT) { 1 << 16 }
      const_attr_reader  :UNDERLINE_IME_DOT
      
      const_set_lazy(:UNDERLINE_IME_DASH) { 2 << 16 }
      const_attr_reader  :UNDERLINE_IME_DASH
      
      const_set_lazy(:UNDERLINE_IME_THICK) { 3 << 16 }
      const_attr_reader  :UNDERLINE_IME_THICK
      
      const_set_lazy(:StyleItem) { Class.new do
        extend LocalClass
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
        
        attr_accessor :length
        alias_method :attr_length, :length
        undef_method :length
        alias_method :attr_length=, :length=
        undef_method :length=
        
        attr_accessor :line_break
        alias_method :attr_line_break, :line_break
        undef_method :line_break
        alias_method :attr_line_break=, :line_break=
        undef_method :line_break=
        
        attr_accessor :soft_break
        alias_method :attr_soft_break, :soft_break
        undef_method :soft_break
        alias_method :attr_soft_break=, :soft_break=
        undef_method :soft_break=
        
        attr_accessor :tab
        alias_method :attr_tab, :tab
        undef_method :tab
        alias_method :attr_tab=, :tab=
        undef_method :tab=
        
        # Script cache and analysis
        attr_accessor :analysis
        alias_method :attr_analysis, :analysis
        undef_method :analysis
        alias_method :attr_analysis=, :analysis=
        undef_method :analysis=
        
        # long
        attr_accessor :psc
        alias_method :attr_psc, :psc
        undef_method :psc
        alias_method :attr_psc=, :psc=
        undef_method :psc=
        
        # Shape info (malloc when the run is shaped)
        # long
        attr_accessor :glyphs
        alias_method :attr_glyphs, :glyphs
        undef_method :glyphs
        alias_method :attr_glyphs=, :glyphs=
        undef_method :glyphs=
        
        attr_accessor :glyph_count
        alias_method :attr_glyph_count, :glyph_count
        undef_method :glyph_count
        alias_method :attr_glyph_count=, :glyph_count=
        undef_method :glyph_count=
        
        # long
        attr_accessor :clusters
        alias_method :attr_clusters, :clusters
        undef_method :clusters
        alias_method :attr_clusters=, :clusters=
        undef_method :clusters=
        
        # long
        attr_accessor :vis_attrs
        alias_method :attr_vis_attrs, :vis_attrs
        undef_method :vis_attrs
        alias_method :attr_vis_attrs=, :vis_attrs=
        undef_method :vis_attrs=
        
        # Place info (malloc when the run is placed)
        # long
        attr_accessor :advances
        alias_method :attr_advances, :advances
        undef_method :advances
        alias_method :attr_advances=, :advances=
        undef_method :advances=
        
        # long
        attr_accessor :goffsets
        alias_method :attr_goffsets, :goffsets
        undef_method :goffsets
        alias_method :attr_goffsets=, :goffsets=
        undef_method :goffsets=
        
        attr_accessor :width
        alias_method :attr_width, :width
        undef_method :width
        alias_method :attr_width=, :width=
        undef_method :width=
        
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
        
        attr_accessor :leading
        alias_method :attr_leading, :leading
        undef_method :leading
        alias_method :attr_leading=, :leading=
        undef_method :leading=
        
        attr_accessor :x
        alias_method :attr_x, :x
        undef_method :x
        alias_method :attr_x=, :x=
        undef_method :x=
        
        attr_accessor :underline_pos
        alias_method :attr_underline_pos, :underline_pos
        undef_method :underline_pos
        alias_method :attr_underline_pos=, :underline_pos=
        undef_method :underline_pos=
        
        attr_accessor :underline_thickness
        alias_method :attr_underline_thickness, :underline_thickness
        undef_method :underline_thickness
        alias_method :attr_underline_thickness=, :underline_thickness=
        undef_method :underline_thickness=
        
        attr_accessor :strikeout_pos
        alias_method :attr_strikeout_pos, :strikeout_pos
        undef_method :strikeout_pos
        alias_method :attr_strikeout_pos=, :strikeout_pos=
        undef_method :strikeout_pos=
        
        attr_accessor :strikeout_thickness
        alias_method :attr_strikeout_thickness, :strikeout_thickness
        undef_method :strikeout_thickness
        alias_method :attr_strikeout_thickness=, :strikeout_thickness=
        undef_method :strikeout_thickness=
        
        # Justify info (malloc during computeRuns)
        # long
        attr_accessor :justify
        alias_method :attr_justify, :justify
        undef_method :justify
        alias_method :attr_justify=, :justify=
        undef_method :justify=
        
        # ScriptBreak
        # long
        attr_accessor :psla
        alias_method :attr_psla, :psla
        undef_method :psla
        alias_method :attr_psla=, :psla=
        undef_method :psla=
        
        # long
        attr_accessor :fallback_font
        alias_method :attr_fallback_font, :fallback_font
        undef_method :fallback_font
        alias_method :attr_fallback_font=, :fallback_font=
        undef_method :fallback_font=
        
        typesig { [] }
        def free
          # long
          h_heap = OS._get_process_heap
          if (!(@psc).equal?(0))
            OS._script_free_cache(@psc)
            OS._heap_free(h_heap, 0, @psc)
            @psc = 0
          end
          if (!(@glyphs).equal?(0))
            OS._heap_free(h_heap, 0, @glyphs)
            @glyphs = 0
            @glyph_count = 0
          end
          if (!(@clusters).equal?(0))
            OS._heap_free(h_heap, 0, @clusters)
            @clusters = 0
          end
          if (!(@vis_attrs).equal?(0))
            OS._heap_free(h_heap, 0, @vis_attrs)
            @vis_attrs = 0
          end
          if (!(@advances).equal?(0))
            OS._heap_free(h_heap, 0, @advances)
            @advances = 0
          end
          if (!(@goffsets).equal?(0))
            OS._heap_free(h_heap, 0, @goffsets)
            @goffsets = 0
          end
          if (!(@justify).equal?(0))
            OS._heap_free(h_heap, 0, @justify)
            @justify = 0
          end
          if (!(@psla).equal?(0))
            OS._heap_free(h_heap, 0, @psla)
            @psla = 0
          end
          if (!(@fallback_font).equal?(0))
            OS._delete_object(@fallback_font)
            @fallback_font = 0
          end
          @width = @ascent = @descent = @x = 0
          @line_break = @soft_break = false
        end
        
        typesig { [] }
        def to_s
          return "StyleItem {" + (@start).to_s + ", " + (@style).to_s + "}"
        end
        
        typesig { [] }
        def initialize
          @style = nil
          @start = 0
          @length = 0
          @line_break = false
          @soft_break = false
          @tab = false
          @analysis = nil
          @psc = 0
          @glyphs = 0
          @glyph_count = 0
          @clusters = 0
          @vis_attrs = 0
          @advances = 0
          @goffsets = 0
          @width = 0
          @ascent = 0
          @descent = 0
          @leading = 0
          @x = 0
          @underline_pos = 0
          @underline_thickness = 0
          @strikeout_pos = 0
          @strikeout_thickness = 0
          @justify = 0
          @psla = 0
          @fallback_font = 0
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
      @font = nil
      @text = nil
      @segments_text = nil
      @line_spacing = 0
      @ascent = 0
      @descent = 0
      @alignment = 0
      @wrap_width = 0
      @orientation = 0
      @indent = 0
      @justify = false
      @tabs = nil
      @segments = nil
      @styles = nil
      @styles_count = 0
      @all_runs = nil
      @runs = nil
      @line_offset = nil
      @line_y = nil
      @line_width = nil
      @m_lang_font_link2 = 0
      super(device)
      @wrap_width = @ascent = @descent = -1
      @line_spacing = 0
      @orientation = SWT::LEFT_TO_RIGHT
      @styles = Array.typed(StyleItem).new(2) { nil }
      @styles[0] = StyleItem.new_local(self)
      @styles[1] = StyleItem.new_local(self)
      @styles_count = 2
      @text = "" # $NON-NLS-1$
      # long
      # long
      ppv = Array.typed(::Java::Int).new(1) { 0 }
      OS._ole_initialize(0)
      if ((OS._co_create_instance(CLSID_CMultiLanguage, 0, OS::CLSCTX_INPROC_SERVER, IID_IMLangFontLink2, ppv)).equal?(OS::S_OK))
        @m_lang_font_link2 = ppv[0]
      end
      init
    end
    
    typesig { [StyleItem] }
    def break_run(run)
      if (!(run.attr_psla).equal?(0))
        return
      end
      chars = CharArray.new(run.attr_length)
      @segments_text.get_chars(run.attr_start, run.attr_start + run.attr_length, chars, 0)
      # long
      h_heap = OS._get_process_heap
      run.attr_psla = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, SCRIPT_LOGATTR.attr_sizeof * chars.attr_length)
      if ((run.attr_psla).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS._script_break(chars, chars.attr_length, run.attr_analysis, run.attr_psla)
    end
    
    typesig { [] }
    def check_layout
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
    end
    
    typesig { [SwtGC] }
    # Compute the runs: itemize, shape, place, and reorder the runs.
    # Break paragraphs into lines, wraps the text, and initialize caches.
    def compute_runs(gc)
      if (!(@runs).nil?)
        return
      end
      # long
      h_dc = !(gc).nil? ? gc.attr_handle : self.attr_device.internal_new__gc(nil)
      # long
      src_hdc = OS._create_compatible_dc(h_dc)
      @all_runs = itemize
      i = 0
      while i < @all_runs.attr_length - 1
        run = @all_runs[i]
        OS._select_object(src_hdc, get_item_font(run))
        shape(src_hdc, run)
        i += 1
      end
      log_attr = SCRIPT_LOGATTR.new
      properties = SCRIPT_PROPERTIES.new
      line_width = @indent
      line_start = 0
      line_count = 1
      i_ = 0
      while i_ < @all_runs.attr_length - 1
        run = @all_runs[i_]
        if ((run.attr_length).equal?(1))
          ch = @segments_text.char_at(run.attr_start)
          catch(:break_case) do
            case (ch)
            when Character.new(?\t.ord)
              run.attr_tab = true
              if ((@tabs).nil?)
                throw :break_case, :thrown
              end
              tabs_length = @tabs.attr_length
              j = 0
              j = 0
              while j < tabs_length
                if (@tabs[j] > line_width)
                  run.attr_width = @tabs[j] - line_width
                  break
                end
                j += 1
              end
              if ((j).equal?(tabs_length))
                tab_x = @tabs[tabs_length - 1]
                last_tab_width = tabs_length > 1 ? @tabs[tabs_length - 1] - @tabs[tabs_length - 2] : @tabs[0]
                if (last_tab_width > 0)
                  while (tab_x <= line_width)
                    tab_x += last_tab_width
                  end
                  run.attr_width = tab_x - line_width
                end
              end
            when Character.new(?\n.ord)
              run.attr_line_break = true
            when Character.new(?\r.ord)
              run.attr_line_break = true
              next_ = @all_runs[i_ + 1]
              if (!(next_.attr_length).equal?(0) && (@segments_text.char_at(next_.attr_start)).equal?(Character.new(?\n.ord)))
                run.attr_length += 1
                next_.free
                new_all_runs = Array.typed(StyleItem).new(@all_runs.attr_length - 1) { nil }
                System.arraycopy(@all_runs, 0, new_all_runs, 0, i_ + 1)
                System.arraycopy(@all_runs, i_ + 2, new_all_runs, i_ + 1, @all_runs.attr_length - i_ - 2)
                @all_runs = new_all_runs
              end
            end
          end == :thrown or break
        end
        if (!(@wrap_width).equal?(-1) && line_width + run.attr_width > @wrap_width && !run.attr_tab)
          start = 0
          pi_dx = Array.typed(::Java::Int).new(run.attr_length) { 0 }
          if (!(run.attr_style).nil? && !(run.attr_style.attr_metrics).nil?)
            pi_dx[0] = run.attr_width
          else
            OS._script_get_logical_widths(run.attr_analysis, run.attr_length, run.attr_glyph_count, run.attr_advances, run.attr_clusters, run.attr_vis_attrs, pi_dx)
          end
          width = 0
          max_width = @wrap_width - line_width
          while (width + pi_dx[start] < max_width)
            width += pi_dx[((start += 1) - 1)]
          end
          first_start = start
          first_indice = i_
          while (i_ >= line_start)
            break_run(run)
            while (start >= 0)
              OS._move_memory(log_attr, run.attr_psla + (start * SCRIPT_LOGATTR.attr_sizeof), SCRIPT_LOGATTR.attr_sizeof)
              if (log_attr.attr_f_soft_break || log_attr.attr_f_white_space)
                break
              end
              start -= 1
            end
            # Bug in Windows. For some reason Uniscribe sets the fSoftBreak flag for the first letter
            # after a letter with an accent. This cause a break line to be set in the middle of a word.
            # The fix is to detect the case and ignore fSoftBreak forcing the algorithm keep searching.
            if ((start).equal?(0) && !(i_).equal?(line_start) && !run.attr_tab)
              if (log_attr.attr_f_soft_break && !log_attr.attr_f_white_space)
                OS._move_memory(properties, self.attr_device.attr_scripts[run.attr_analysis.attr_e_script], SCRIPT_PROPERTIES.attr_sizeof)
                lang_id = properties.attr_langid
                p_run = @all_runs[i_ - 1]
                OS._move_memory(properties, self.attr_device.attr_scripts[p_run.attr_analysis.attr_e_script], SCRIPT_PROPERTIES.attr_sizeof)
                if ((properties.attr_langid).equal?(lang_id) || (lang_id).equal?(OS::LANG_NEUTRAL) || (properties.attr_langid).equal?(OS::LANG_NEUTRAL))
                  break_run(p_run)
                  OS._move_memory(log_attr, p_run.attr_psla + ((p_run.attr_length - 1) * SCRIPT_LOGATTR.attr_sizeof), SCRIPT_LOGATTR.attr_sizeof)
                  if (!log_attr.attr_f_white_space)
                    start = -1
                  end
                end
              end
            end
            if (start >= 0 || (i_).equal?(line_start))
              break
            end
            run = @all_runs[(i_ -= 1)]
            start = run.attr_length - 1
          end
          if ((start).equal?(0) && !(i_).equal?(line_start) && !run.attr_tab)
            run = @all_runs[(i_ -= 1)]
          else
            if (start <= 0 && (i_).equal?(line_start))
              if ((line_width).equal?(@wrap_width) && first_indice > 0)
                i_ = first_indice - 1
                run = @all_runs[i_]
                start = run.attr_length
              else
                i_ = first_indice
                run = @all_runs[i_]
                start = Math.max(1, first_start)
              end
            end
          end
          break_run(run)
          while (start < run.attr_length)
            OS._move_memory(log_attr, run.attr_psla + (start * SCRIPT_LOGATTR.attr_sizeof), SCRIPT_LOGATTR.attr_sizeof)
            if (!log_attr.attr_f_white_space)
              break
            end
            start += 1
          end
          if (0 < start && start < run.attr_length)
            new_run = StyleItem.new_local(self)
            new_run.attr_start = run.attr_start + start
            new_run.attr_length = run.attr_length - start
            new_run.attr_style = run.attr_style
            new_run.attr_analysis = clone_script_analysis(run.attr_analysis)
            run.free
            run.attr_length = start
            OS._select_object(src_hdc, get_item_font(run))
            run.attr_analysis.attr_f_no_glyph_index = false
            shape(src_hdc, run)
            OS._select_object(src_hdc, get_item_font(new_run))
            new_run.attr_analysis.attr_f_no_glyph_index = false
            shape(src_hdc, new_run)
            new_all_runs = Array.typed(StyleItem).new(@all_runs.attr_length + 1) { nil }
            System.arraycopy(@all_runs, 0, new_all_runs, 0, i_ + 1)
            System.arraycopy(@all_runs, i_ + 1, new_all_runs, i_ + 2, @all_runs.attr_length - i_ - 1)
            @all_runs = new_all_runs
            @all_runs[i_ + 1] = new_run
          end
          if (!(i_).equal?(@all_runs.attr_length - 2))
            run.attr_soft_break = run.attr_line_break = true
          end
        end
        line_width += run.attr_width
        if (run.attr_line_break)
          line_start = i_ + 1
          line_width = run.attr_soft_break ? 0 : @indent
          line_count += 1
        end
        i_ += 1
      end
      line_width = 0
      @runs = Array.typed(StyleItem).new(line_count) { nil }
      @line_offset = Array.typed(::Java::Int).new(line_count + 1) { 0 }
      @line_y = Array.typed(::Java::Int).new(line_count + 1) { 0 }
      @line_width = Array.typed(::Java::Int).new(line_count) { 0 }
      line_run_count = 0
      line = 0
      ascent = Math.max(0, @ascent)
      descent = Math.max(0, @descent)
      line_runs = Array.typed(StyleItem).new(@all_runs.attr_length) { nil }
      i__ = 0
      while i__ < @all_runs.attr_length
        run = @all_runs[i__]
        line_runs[((line_run_count += 1) - 1)] = run
        line_width += run.attr_width
        ascent = Math.max(ascent, run.attr_ascent)
        descent = Math.max(descent, run.attr_descent)
        if (run.attr_line_break || (i__).equal?(@all_runs.attr_length - 1))
          # Update the run metrics if the last run is a hard break.
          if ((line_run_count).equal?(1) && (i__).equal?(@all_runs.attr_length - 1))
            lptm = OS::IsUnicode ? TEXTMETRICW.new : TEXTMETRICA.new
            OS._select_object(src_hdc, get_item_font(run))
            OS._get_text_metrics(src_hdc, lptm)
            run.attr_ascent = lptm.attr_tm_ascent
            run.attr_descent = lptm.attr_tm_descent
            ascent = Math.max(ascent, run.attr_ascent)
            descent = Math.max(descent, run.attr_descent)
          end
          @runs[line] = Array.typed(StyleItem).new(line_run_count) { nil }
          System.arraycopy(line_runs, 0, @runs[line], 0, line_run_count)
          if (@justify && !(@wrap_width).equal?(-1) && run.attr_soft_break && line_width > 0)
            if ((line).equal?(0))
              line_width += @indent
            else
              previous_line = @runs[line - 1]
              previous_run = previous_line[previous_line.attr_length - 1]
              if (previous_run.attr_line_break && !previous_run.attr_soft_break)
                line_width += @indent
              end
            end
            # long
            h_heap = OS._get_process_heap
            new_line_width = 0
            j = 0
            while j < @runs[line].attr_length
              item = @runs[line][j]
              i_dx = item.attr_width * @wrap_width / line_width
              if (!(i_dx).equal?(item.attr_width))
                item.attr_justify = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, item.attr_glyph_count * 4)
                if ((item.attr_justify).equal?(0))
                  SWT.error(SWT::ERROR_NO_HANDLES)
                end
                OS._script_justify(item.attr_vis_attrs, item.attr_advances, item.attr_glyph_count, i_dx - item.attr_width, 2, item.attr_justify)
                item.attr_width = i_dx
              end
              new_line_width += item.attr_width
              j += 1
            end
            line_width = new_line_width
          end
          @line_width[line] = line_width
          last_run = @runs[line][line_run_count - 1]
          last_offset = last_run.attr_start + last_run.attr_length
          @runs[line] = reorder(@runs[line], (i__).equal?(@all_runs.attr_length - 1))
          last_run = @runs[line][line_run_count - 1]
          if (run.attr_soft_break && !(run).equal?(last_run))
            run.attr_soft_break = run.attr_line_break = false
            last_run.attr_soft_break = last_run.attr_line_break = true
          end
          line_width = get_line_indent(line)
          j = 0
          while j < @runs[line].attr_length
            @runs[line][j].attr_x = line_width
            line_width += @runs[line][j].attr_width
            j += 1
          end
          line += 1
          @line_y[line] = @line_y[line - 1] + ascent + descent + @line_spacing
          @line_offset[line] = last_offset
          line_run_count = line_width = 0
          ascent = Math.max(0, @ascent)
          descent = Math.max(0, @descent)
        end
        i__ += 1
      end
      if (!(src_hdc).equal?(0))
        OS._delete_dc(src_hdc)
      end
      if ((gc).nil?)
        self.attr_device.internal_dispose__gc(h_dc, nil)
      end
    end
    
    typesig { [] }
    def destroy
      free_runs
      @font = nil
      @text = (nil).to_s
      @segments_text = (nil).to_s
      @tabs = nil
      @styles = nil
      @runs = nil
      @line_offset = nil
      @line_y = nil
      @line_width = nil
      if (!(@m_lang_font_link2).equal?(0))
        # Release()
        OS._vtbl_call(2, @m_lang_font_link2)
        @m_lang_font_link2 = 0
      end
      OS._ole_uninitialize
    end
    
    typesig { [SCRIPT_ANALYSIS] }
    def clone_script_analysis(src)
      dst = SCRIPT_ANALYSIS.new
      dst.attr_e_script = src.attr_e_script
      dst.attr_f_rtl = src.attr_f_rtl
      dst.attr_f_layout_rtl = src.attr_f_layout_rtl
      dst.attr_f_link_before = src.attr_f_link_before
      dst.attr_f_link_after = src.attr_f_link_after
      dst.attr_f_logical_order = src.attr_f_logical_order
      dst.attr_f_no_glyph_index = src.attr_f_no_glyph_index
      dst.attr_s = SCRIPT_STATE.new
      dst.attr_s.attr_u_bidi_level = src.attr_s.attr_u_bidi_level
      dst.attr_s.attr_f_override_direction = src.attr_s.attr_f_override_direction
      dst.attr_s.attr_f_inhibit_sym_swap = src.attr_s.attr_f_inhibit_sym_swap
      dst.attr_s.attr_f_char_shape = src.attr_s.attr_f_char_shape
      dst.attr_s.attr_f_digit_substitute = src.attr_s.attr_f_digit_substitute
      dst.attr_s.attr_f_inhibit_ligate = src.attr_s.attr_f_inhibit_ligate
      dst.attr_s.attr_f_display_zwg = src.attr_s.attr_f_display_zwg
      dst.attr_s.attr_f_arabic_num_context = src.attr_s.attr_f_arabic_num_context
      dst.attr_s.attr_f_gcp_clusters = src.attr_s.attr_f_gcp_clusters
      dst.attr_s.attr_f_reserved = src.attr_s.attr_f_reserved
      dst.attr_s.attr_f_engine_reserved = src.attr_s.attr_f_engine_reserved
      return dst
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
      compute_runs(gc)
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
      length_ = @text.length
      if ((length_).equal?(0) && (flags).equal?(0))
        return
      end
      # long
      hdc = gc.attr_handle
      clip = gc.get_clipping
      data = gc.attr_data
      # long
      gdip_graphics = data.attr_gdip_graphics
      foreground = data.attr_foreground
      alpha = data.attr_alpha
      gdip = !(gdip_graphics).equal?(0) && (!(alpha).equal?(0xff) || !(data.attr_foreground_pattern).nil?)
      # long
      clip_rgn = 0
      lp_xform = nil
      gdip_rect = Rect.new
      if (!(gdip_graphics).equal?(0) && !gdip)
        # long
        matrix = Gdip._matrix_new(1, 0, 0, 1, 0, 0)
        if ((matrix).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        Gdip._graphics_get_transform(gdip_graphics, matrix)
        # long
        identity_ = gc.identity
        Gdip._matrix_invert(identity_)
        Gdip._matrix_multiply(matrix, identity_, Gdip::MatrixOrderAppend)
        Gdip._matrix_delete(identity_)
        if (!Gdip._matrix_is_identity(matrix))
          lp_xform = Array.typed(::Java::Float).new(6) { 0.0 }
          Gdip._matrix_get_elements(matrix, lp_xform)
        end
        Gdip._matrix_delete(matrix)
        if (!((data.attr_style & SWT::MIRRORED)).equal?(0) && !(lp_xform).nil?)
          gdip = true
          lp_xform = nil
        else
          Gdip._graphics_set_pixel_offset_mode(gdip_graphics, Gdip::PixelOffsetModeNone)
          # long
          rgn = Gdip._region_new
          Gdip._graphics_get_clip(gdip_graphics, rgn)
          if (!Gdip._region_is_infinite(rgn, gdip_graphics))
            clip_rgn = Gdip._region_get_hrgn(rgn, gdip_graphics)
          end
          Gdip._region_delete(rgn)
          Gdip._graphics_set_pixel_offset_mode(gdip_graphics, Gdip::PixelOffsetModeHalf)
          hdc = Gdip._graphics_get_hdc(gdip_graphics)
        end
      end
      # long
      foreground_brush = 0
      state = 0
      if (gdip)
        gc.check_gc(GC::FOREGROUND)
        foreground_brush = gc.get_fg_brush
      else
        state = OS._save_dc(hdc)
        if (!((data.attr_style & SWT::MIRRORED)).equal?(0))
          OS._set_layout(hdc, OS._get_layout(hdc) | OS::LAYOUT_RTL)
        end
        if (!(lp_xform).nil?)
          OS._set_graphics_mode(hdc, OS::GM_ADVANCED)
          OS._set_world_transform(hdc, lp_xform)
        end
        if (!(clip_rgn).equal?(0))
          OS._select_clip_rgn(hdc, clip_rgn)
          OS._delete_object(clip_rgn)
        end
      end
      has_selection = selection_start <= selection_end && !(selection_start).equal?(-1) && !(selection_end).equal?(-1)
      if (has_selection || !((flags & SWT::LAST_LINE_SELECTION)).equal?(0))
        selection_start = Math.min(Math.max(0, selection_start), length_ - 1)
        selection_end = Math.min(Math.max(0, selection_end), length_ - 1)
        if ((selection_foreground).nil?)
          selection_foreground = self.attr_device.get_system_color(SWT::COLOR_LIST_SELECTION_TEXT)
        end
        if ((selection_background).nil?)
          selection_background = self.attr_device.get_system_color(SWT::COLOR_LIST_SELECTION)
        end
        selection_start = translate_offset(selection_start)
        selection_end = translate_offset(selection_end)
      end
      rect = RECT.new
      # long
      sel_brush = 0
      sel_pen = 0
      sel_brush_fg = 0
      if (has_selection || !((flags & SWT::LAST_LINE_SELECTION)).equal?(0))
        if (gdip)
          bg = selection_background.attr_handle
          argb = ((alpha & 0xff) << 24) | ((bg >> 16) & 0xff) | (bg & 0xff00) | ((bg & 0xff) << 16)
          # long
          color = Gdip._color_new(argb)
          sel_brush = Gdip._solid_brush_new(color)
          Gdip._color_delete(color)
          fg = selection_foreground.attr_handle
          argb = ((alpha & 0xff) << 24) | ((fg >> 16) & 0xff) | (fg & 0xff00) | ((fg & 0xff) << 16)
          color = Gdip._color_new(argb)
          sel_brush_fg = Gdip._solid_brush_new(color)
          sel_pen = Gdip._pen_new(sel_brush_fg, 1)
          Gdip._color_delete(color)
        else
          sel_brush = OS._create_solid_brush(selection_background.attr_handle)
          sel_pen = OS._create_pen(OS::PS_SOLID, 1, selection_foreground.attr_handle)
        end
      end
      offset = !((@orientation & SWT::RIGHT_TO_LEFT)).equal?(0) ? -1 : 0
      OS._set_bk_mode(hdc, OS::TRANSPARENT)
      line = 0
      while line < @runs.attr_length
        draw_x = x + get_line_indent(line)
        draw_y = y + @line_y[line]
        line_runs = @runs[line]
        line_height = @line_y[line + 1] - @line_y[line] - @line_spacing
        if (!(flags).equal?(0) && (has_selection || !((flags & SWT::LAST_LINE_SELECTION)).equal?(0)))
          extents = false
          if ((line).equal?(@runs.attr_length - 1) && !((flags & SWT::LAST_LINE_SELECTION)).equal?(0))
            extents = true
          else
            run = line_runs[line_runs.attr_length - 1]
            if (run.attr_line_break && !run.attr_soft_break)
              if (selection_start <= run.attr_start && run.attr_start <= selection_end)
                extents = true
              end
            else
              end_offset = run.attr_start + run.attr_length - 1
              if (selection_start <= end_offset && end_offset < selection_end && !((flags & SWT::FULL_SELECTION)).equal?(0))
                extents = true
              end
            end
          end
          if (extents)
            width = 0
            if (!((flags & SWT::FULL_SELECTION)).equal?(0))
              width = OS::IsWin95 ? 0x7fff : 0x6ffffff
            else
              width = line_height / 3
            end
            if (gdip)
              Gdip._graphics_fill_rectangle(gdip_graphics, sel_brush, draw_x + @line_width[line], draw_y, width, line_height)
            else
              OS._select_object(hdc, sel_brush)
              OS._pat_blt(hdc, draw_x + @line_width[line], draw_y, width, line_height, OS::PATCOPY)
            end
          end
        end
        if (draw_x > clip.attr_x + clip.attr_width)
          line += 1
          next
        end
        if (draw_x + @line_width[line] < clip.attr_x)
          line += 1
          next
        end
        baseline = Math.max(0, @ascent)
        line_underline_pos = 0
        i = 0
        while i < line_runs.attr_length
          baseline = Math.max(baseline, line_runs[i].attr_ascent)
          line_underline_pos = Math.min(line_underline_pos, line_runs[i].attr_underline_pos)
          i += 1
        end
        alignment_x = draw_x
        i_ = 0
        while i_ < line_runs.attr_length
          run = line_runs[i_]
          if ((run.attr_length).equal?(0))
            i_ += 1
            next
          end
          if (draw_x > clip.attr_x + clip.attr_width)
            break
          end
          if (draw_x + run.attr_width >= clip.attr_x)
            if (!run.attr_line_break || run.attr_soft_break)
              end_ = run.attr_start + run.attr_length - 1
              full_selection = has_selection && selection_start <= run.attr_start && selection_end >= end_
              if (full_selection)
                if (gdip)
                  Gdip._graphics_fill_rectangle(gdip_graphics, sel_brush, draw_x, draw_y, run.attr_width, line_height)
                else
                  OS._select_object(hdc, sel_brush)
                  OS._pat_blt(hdc, draw_x, draw_y, run.attr_width, line_height, OS::PATCOPY)
                end
              else
                if (!(run.attr_style).nil? && !(run.attr_style.attr_background).nil?)
                  bg = run.attr_style.attr_background.attr_handle
                  if (gdip)
                    argb = ((alpha & 0xff) << 24) | ((bg >> 16) & 0xff) | (bg & 0xff00) | ((bg & 0xff) << 16)
                    # long
                    color = Gdip._color_new(argb)
                    # long
                    brush = Gdip._solid_brush_new(color)
                    Gdip._graphics_fill_rectangle(gdip_graphics, brush, draw_x, draw_y, run.attr_width, line_height)
                    Gdip._color_delete(color)
                    Gdip._solid_brush_delete(brush)
                  else
                    # long
                    h_brush = OS._create_solid_brush(bg)
                    # long
                    old_brush = OS._select_object(hdc, h_brush)
                    OS._pat_blt(hdc, draw_x, draw_y, run.attr_width, line_height, OS::PATCOPY)
                    OS._select_object(hdc, old_brush)
                    OS._delete_object(h_brush)
                  end
                end
                partial_selection = has_selection && !(selection_start > end_ || run.attr_start > selection_end)
                if (partial_selection)
                  sel_start = Math.max(selection_start, run.attr_start) - run.attr_start
                  sel_end = Math.min(selection_end, end_) - run.attr_start
                  c_chars = run.attr_length
                  g_glyphs = run.attr_glyph_count
                  pi_x = Array.typed(::Java::Int).new(1) { 0 }
                  # long
                  advances = !(run.attr_justify).equal?(0) ? run.attr_justify : run.attr_advances
                  OS._script_cpto_x(sel_start, false, c_chars, g_glyphs, run.attr_clusters, run.attr_vis_attrs, advances, run.attr_analysis, pi_x)
                  run_x = !((@orientation & SWT::RIGHT_TO_LEFT)).equal?(0) ? run.attr_width - pi_x[0] : pi_x[0]
                  rect.attr_left = draw_x + run_x
                  rect.attr_top = draw_y
                  OS._script_cpto_x(sel_end, true, c_chars, g_glyphs, run.attr_clusters, run.attr_vis_attrs, advances, run.attr_analysis, pi_x)
                  run_x = !((@orientation & SWT::RIGHT_TO_LEFT)).equal?(0) ? run.attr_width - pi_x[0] : pi_x[0]
                  rect.attr_right = draw_x + run_x
                  rect.attr_bottom = draw_y + line_height
                  if (gdip)
                    if (rect.attr_left > rect.attr_right)
                      tmp = rect.attr_left
                      rect.attr_left = rect.attr_right
                      rect.attr_right = tmp
                    end
                    Gdip._graphics_fill_rectangle(gdip_graphics, sel_brush, rect.attr_left, rect.attr_top, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top)
                  else
                    OS._select_object(hdc, sel_brush)
                    OS._pat_blt(hdc, rect.attr_left, rect.attr_top, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top, OS::PATCOPY)
                  end
                end
              end
            end
          end
          draw_x += run.attr_width
          i_ += 1
        end
        border_clip = nil
        draw_x = alignment_x
        i__ = 0
        while i__ < line_runs.attr_length
          run = line_runs[i__]
          if ((run.attr_length).equal?(0))
            i__ += 1
            next
          end
          if (draw_x > clip.attr_x + clip.attr_width)
            break
          end
          if (draw_x + run.attr_width >= clip.attr_x)
            if (!run.attr_tab && (!run.attr_line_break || run.attr_soft_break) && !(!(run.attr_style).nil? && !(run.attr_style.attr_metrics).nil?))
              end_ = run.attr_start + run.attr_length - 1
              full_selection = has_selection && selection_start <= run.attr_start && selection_end >= end_
              partial_selection = has_selection && !full_selection && !(selection_start > end_ || run.attr_start > selection_end)
              OS._select_object(hdc, get_item_font(run))
              draw_run_y = draw_y + (baseline - run.attr_ascent)
              if (partial_selection)
                sel_start = Math.max(selection_start, run.attr_start) - run.attr_start
                sel_end = Math.min(selection_end, end_) - run.attr_start
                c_chars = run.attr_length
                g_glyphs = run.attr_glyph_count
                pi_x = Array.typed(::Java::Int).new(1) { 0 }
                # long
                advances = !(run.attr_justify).equal?(0) ? run.attr_justify : run.attr_advances
                OS._script_cpto_x(sel_start, false, c_chars, g_glyphs, run.attr_clusters, run.attr_vis_attrs, advances, run.attr_analysis, pi_x)
                run_x = !((@orientation & SWT::RIGHT_TO_LEFT)).equal?(0) ? run.attr_width - pi_x[0] : pi_x[0]
                rect.attr_left = draw_x + run_x
                rect.attr_top = draw_y
                OS._script_cpto_x(sel_end, true, c_chars, g_glyphs, run.attr_clusters, run.attr_vis_attrs, advances, run.attr_analysis, pi_x)
                run_x = !((@orientation & SWT::RIGHT_TO_LEFT)).equal?(0) ? run.attr_width - pi_x[0] : pi_x[0]
                rect.attr_right = draw_x + run_x
                rect.attr_bottom = draw_y + line_height
              end
              if (gdip)
                OS._begin_path(hdc)
                OS._script_text_out(hdc, run.attr_psc, draw_x, draw_run_y, 0, nil, run.attr_analysis, 0, 0, run.attr_glyphs, run.attr_glyph_count, run.attr_advances, run.attr_justify, run.attr_goffsets)
                OS._end_path(hdc)
                count = OS._get_path(hdc, nil, nil, 0)
                points = Array.typed(::Java::Int).new(count * 2) { 0 }
                types = Array.typed(::Java::Byte).new(count) { 0 }
                OS._get_path(hdc, points, types, count)
                type_index = 0
                while type_index < types.attr_length
                  new_type = 0
                  type = types[type_index] & 0xff
                  case (type & ~OS::PT_CLOSEFIGURE)
                  when OS::PT_MOVETO
                    new_type = Gdip::PathPointTypeStart
                  when OS::PT_LINETO
                    new_type = Gdip::PathPointTypeLine
                  when OS::PT_BEZIERTO
                    new_type = Gdip::PathPointTypeBezier
                  end
                  if (!((type & OS::PT_CLOSEFIGURE)).equal?(0))
                    new_type |= Gdip::PathPointTypeCloseSubpath
                  end
                  types[type_index] = new_type
                  type_index += 1
                end
                # long
                path = Gdip._graphics_path_new(points, types, count, Gdip::FillModeAlternate)
                if ((path).equal?(0))
                  SWT.error(SWT::ERROR_NO_HANDLES)
                end
                # long
                brush = foreground_brush
                if (full_selection)
                  brush = sel_brush_fg
                else
                  if (!(run.attr_style).nil? && !(run.attr_style.attr_foreground).nil?)
                    fg = run.attr_style.attr_foreground.attr_handle
                    argb = ((alpha & 0xff) << 24) | ((fg >> 16) & 0xff) | (fg & 0xff00) | ((fg & 0xff) << 16)
                    # long
                    color = Gdip._color_new(argb)
                    brush = Gdip._solid_brush_new(color)
                    Gdip._color_delete(color)
                  end
                end
                gstate = 0
                if (partial_selection)
                  gdip_rect.attr_x = rect.attr_left
                  gdip_rect.attr_y = rect.attr_top
                  gdip_rect.attr_width = rect.attr_right - rect.attr_left
                  gdip_rect.attr_height = rect.attr_bottom - rect.attr_top
                  gstate = Gdip._graphics_save(gdip_graphics)
                  Gdip._graphics_set_clip(gdip_graphics, gdip_rect, Gdip::CombineModeExclude)
                end
                antialias = Gdip._graphics_get_smoothing_mode(gdip_graphics)
                text_antialias = 0
                mode = Gdip._graphics_get_text_rendering_hint(data.attr_gdip_graphics)
                case (mode)
                when Gdip::TextRenderingHintSystemDefault
                  text_antialias = Gdip::SmoothingModeAntiAlias
                when Gdip::TextRenderingHintSingleBitPerPixel, Gdip::TextRenderingHintSingleBitPerPixelGridFit
                  text_antialias = Gdip::SmoothingModeNone
                when Gdip::TextRenderingHintAntiAlias, Gdip::TextRenderingHintAntiAliasGridFit, Gdip::TextRenderingHintClearTypeGridFit
                  text_antialias = Gdip::SmoothingModeAntiAlias
                end
                Gdip._graphics_set_smoothing_mode(gdip_graphics, text_antialias)
                gstate2 = 0
                if (!((data.attr_style & SWT::MIRRORED)).equal?(0))
                  gstate2 = Gdip._graphics_save(gdip_graphics)
                  Gdip._graphics_scale_transform(gdip_graphics, -1, 1, Gdip::MatrixOrderPrepend)
                  Gdip._graphics_translate_transform(gdip_graphics, -2 * draw_x - run.attr_width, 0, Gdip::MatrixOrderPrepend)
                end
                Gdip._graphics_fill_path(gdip_graphics, brush, path)
                if (!((data.attr_style & SWT::MIRRORED)).equal?(0))
                  Gdip._graphics_restore(gdip_graphics, gstate2)
                end
                Gdip._graphics_set_smoothing_mode(gdip_graphics, antialias)
                draw_lines(gdip, gdip_graphics, x, draw_y + baseline, line_underline_pos, draw_y + line_height, line_runs, i__, brush, nil, alpha)
                if (partial_selection)
                  Gdip._graphics_restore(gdip_graphics, gstate)
                  gstate = Gdip._graphics_save(gdip_graphics)
                  Gdip._graphics_set_clip(gdip_graphics, gdip_rect, Gdip::CombineModeIntersect)
                  Gdip._graphics_set_smoothing_mode(gdip_graphics, text_antialias)
                  if (!((data.attr_style & SWT::MIRRORED)).equal?(0))
                    gstate2 = Gdip._graphics_save(gdip_graphics)
                    Gdip._graphics_scale_transform(gdip_graphics, -1, 1, Gdip::MatrixOrderPrepend)
                    Gdip._graphics_translate_transform(gdip_graphics, -2 * draw_x - run.attr_width, 0, Gdip::MatrixOrderPrepend)
                  end
                  Gdip._graphics_fill_path(gdip_graphics, sel_brush_fg, path)
                  if (!((data.attr_style & SWT::MIRRORED)).equal?(0))
                    Gdip._graphics_restore(gdip_graphics, gstate2)
                  end
                  Gdip._graphics_set_smoothing_mode(gdip_graphics, antialias)
                  draw_lines(gdip, gdip_graphics, x, draw_y + baseline, line_underline_pos, draw_y + line_height, line_runs, i__, sel_brush_fg, rect, alpha)
                  Gdip._graphics_restore(gdip_graphics, gstate)
                end
                border_clip = draw_border(gdip, gdip_graphics, x, draw_y, line_height, foreground_brush, sel_brush_fg, full_selection, border_clip, partial_selection ? rect : nil, alpha, line_runs, i__, selection_start, selection_end)
                Gdip._graphics_path_delete(path)
                if (!(brush).equal?(sel_brush_fg) && !(brush).equal?(foreground_brush))
                  Gdip._solid_brush_delete(brush)
                end
              else
                fg = foreground
                if (full_selection)
                  fg = selection_foreground.attr_handle
                else
                  if (!(run.attr_style).nil? && !(run.attr_style.attr_foreground).nil?)
                    fg = run.attr_style.attr_foreground.attr_handle
                  end
                end
                OS._set_text_color(hdc, fg)
                OS._script_text_out(hdc, run.attr_psc, draw_x + offset, draw_run_y, 0, nil, run.attr_analysis, 0, 0, run.attr_glyphs, run.attr_glyph_count, run.attr_advances, run.attr_justify, run.attr_goffsets)
                draw_lines(gdip, hdc, x, draw_y + baseline, line_underline_pos, draw_y + line_height, line_runs, i__, fg, nil, alpha)
                if (partial_selection && !(fg).equal?(selection_foreground.attr_handle))
                  OS._set_text_color(hdc, selection_foreground.attr_handle)
                  OS._script_text_out(hdc, run.attr_psc, draw_x + offset, draw_run_y, OS::ETO_CLIPPED, rect, run.attr_analysis, 0, 0, run.attr_glyphs, run.attr_glyph_count, run.attr_advances, run.attr_justify, run.attr_goffsets)
                  draw_lines(gdip, hdc, x, draw_y + baseline, line_underline_pos, draw_y + line_height, line_runs, i__, selection_foreground.attr_handle, rect, alpha)
                end
                sel_foreground = !(selection_foreground).nil? ? selection_foreground.attr_handle : 0
                border_clip = draw_border(gdip, hdc, x, draw_y, line_height, foreground, sel_foreground, full_selection, border_clip, partial_selection ? rect : nil, alpha, line_runs, i__, selection_start, selection_end)
              end
            end
          end
          draw_x += run.attr_width
          i__ += 1
        end
        line += 1
      end
      if (gdip)
        if (!(sel_brush).equal?(0))
          Gdip._solid_brush_delete(sel_brush)
        end
        if (!(sel_brush_fg).equal?(0))
          Gdip._solid_brush_delete(sel_brush_fg)
        end
        if (!(sel_pen).equal?(0))
          Gdip._pen_delete(sel_pen)
        end
      else
        OS._restore_dc(hdc, state)
        if (!(gdip_graphics).equal?(0))
          Gdip._graphics_release_hdc(gdip_graphics, hdc)
        end
        if (!(sel_brush).equal?(0))
          OS._delete_object(sel_brush)
        end
        if (!(sel_pen).equal?(0))
          OS._delete_object(sel_pen)
        end
      end
    end
    
    typesig { [::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(StyleItem), ::Java::Int, ::Java::Int, RECT, ::Java::Int] }
    # long
    # long
    def draw_lines(advance, graphics, x, line_baseline, line_underline_pos, line_bottom, line, index, color, clip_rect, alpha)
      run = line[index]
      style = run.attr_style
      if ((style).nil?)
        return
      end
      if (!style.attr_underline && !style.attr_strikeout)
        return
      end
      run_x = x + run.attr_x
      underline_y = line_baseline - line_underline_pos
      strikeout_y = line_baseline - run.attr_strikeout_pos
      if (advance)
        Gdip._graphics_set_pixel_offset_mode(graphics, Gdip::PixelOffsetModeNone)
        # long
        brush = color
        if (style.attr_underline)
          if (!(style.attr_underline_color).nil?)
            fg = style.attr_underline_color.attr_handle
            argb = ((alpha & 0xff) << 24) | ((fg >> 16) & 0xff) | (fg & 0xff00) | ((fg & 0xff) << 16)
            # long
            gdi_color = Gdip._color_new(argb)
            brush = Gdip._solid_brush_new(gdi_color)
            Gdip._color_delete(gdi_color)
          end
          case (style.attr_underline_style)
          when SWT::UNDERLINE_SQUIGGLE, SWT::UNDERLINE_ERROR
            squiggly_thickness = 1
            squiggly_height = 2 * squiggly_thickness
            squiggly_y = Math.min(underline_y - squiggly_height / 2, line_bottom - squiggly_height - 1)
            squiggly_x = run_x
            i = index
            while i > 0 && style.is_adherent_underline(line[i - 1].attr_style)
              squiggly_x = x + line[i - 1].attr_x
              i -= 1
            end
            gstate = 0
            if ((clip_rect).nil?)
              gstate = Gdip._graphics_save(graphics)
              gdip_rect = Rect.new
              gdip_rect.attr_x = run_x
              gdip_rect.attr_y = squiggly_y
              gdip_rect.attr_width = run.attr_width + 1
              gdip_rect.attr_height = squiggly_y + squiggly_height + 1
              Gdip._graphics_set_clip(graphics, gdip_rect, Gdip::CombineModeIntersect)
            end
            points = compute_polyline(squiggly_x, squiggly_y, run_x + run.attr_width, squiggly_y + squiggly_height)
            # long
            pen = Gdip._pen_new(brush, squiggly_thickness)
            Gdip._graphics_draw_lines(graphics, pen, points, points.attr_length / 2)
            Gdip._pen_delete(pen)
            if (!(gstate).equal?(0))
              Gdip._graphics_restore(graphics, gstate)
            end
          when SWT::UNDERLINE_SINGLE
            Gdip._graphics_fill_rectangle(graphics, brush, run_x, underline_y, run.attr_width, run.attr_underline_thickness)
          when SWT::UNDERLINE_DOUBLE
            Gdip._graphics_fill_rectangle(graphics, brush, run_x, underline_y, run.attr_width, run.attr_underline_thickness)
            Gdip._graphics_fill_rectangle(graphics, brush, run_x, underline_y + run.attr_underline_thickness * 2, run.attr_width, run.attr_underline_thickness)
          when UNDERLINE_IME_THICK
            Gdip._graphics_fill_rectangle(graphics, brush, run_x - run.attr_underline_thickness, underline_y, run.attr_width, run.attr_underline_thickness * 2)
          when UNDERLINE_IME_DOT, UNDERLINE_IME_DASH
            # long
            pen = Gdip._pen_new(brush, 1)
            dash_style = (style.attr_underline_style).equal?(UNDERLINE_IME_DOT) ? Gdip::DashStyleDot : Gdip::DashStyleDash
            Gdip._pen_set_dash_style(pen, dash_style)
            Gdip._graphics_draw_line(graphics, pen, run_x, underline_y, run_x + run.attr_width, underline_y)
            Gdip._pen_delete(pen)
          end
          if (!(brush).equal?(color))
            Gdip._solid_brush_delete(brush)
          end
        end
        if (style.attr_strikeout)
          if (!(style.attr_strikeout_color).nil?)
            fg = style.attr_strikeout_color.attr_handle
            argb = ((alpha & 0xff) << 24) | ((fg >> 16) & 0xff) | (fg & 0xff00) | ((fg & 0xff) << 16)
            # long
            gdi_color = Gdip._color_new(argb)
            brush = Gdip._solid_brush_new(gdi_color)
            Gdip._color_delete(gdi_color)
          end
          Gdip._graphics_fill_rectangle(graphics, brush, run_x, strikeout_y, run.attr_width, run.attr_strikeout_thickness)
          if (!(brush).equal?(color))
            Gdip._solid_brush_delete(brush)
          end
        end
        Gdip._graphics_set_pixel_offset_mode(graphics, Gdip::PixelOffsetModeHalf)
      else
        # 64
        color_ref_underline = RJava.cast_to_int(color)
        # 64
        color_ref_strikeout = RJava.cast_to_int(color)
        # long
        brush_underline = 0
        # long
        brush_strikeout = 0
        rect = RECT.new
        if (style.attr_underline)
          if (!(style.attr_underline_color).nil?)
            color_ref_underline = style.attr_underline_color.attr_handle
          end
          case (style.attr_underline_style)
          when SWT::UNDERLINE_SQUIGGLE, SWT::UNDERLINE_ERROR
            squiggly_thickness = 1
            squiggly_height = 2 * squiggly_thickness
            squiggly_y = Math.min(underline_y - squiggly_height / 2, line_bottom - squiggly_height - 1)
            squiggly_x = run_x
            i = index
            while i > 0 && style.is_adherent_underline(line[i - 1].attr_style)
              squiggly_x = x + line[i - 1].attr_x
              i -= 1
            end
            state = OS._save_dc(graphics)
            if (!(clip_rect).nil?)
              OS._intersect_clip_rect(graphics, clip_rect.attr_left, clip_rect.attr_top, clip_rect.attr_right, clip_rect.attr_bottom)
            else
              OS._intersect_clip_rect(graphics, run_x, squiggly_y, run_x + run.attr_width + 1, squiggly_y + squiggly_height + 1)
            end
            points = compute_polyline(squiggly_x, squiggly_y, run_x + run.attr_width, squiggly_y + squiggly_height)
            # long
            pen = OS._create_pen(OS::PS_SOLID, squiggly_thickness, color_ref_underline)
            # long
            old_pen = OS._select_object(graphics, pen)
            OS._polyline(graphics, points, points.attr_length / 2)
            length_ = points.attr_length
            if (length_ >= 2 && squiggly_thickness <= 1)
              OS._set_pixel(graphics, points[length_ - 2], points[length_ - 1], color_ref_underline)
            end
            OS._restore_dc(graphics, state)
            OS._select_object(graphics, old_pen)
            OS._delete_object(pen)
          when SWT::UNDERLINE_SINGLE
            brush_underline = OS._create_solid_brush(color_ref_underline)
            OS._set_rect(rect, run_x, underline_y, run_x + run.attr_width, underline_y + run.attr_underline_thickness)
            if (!(clip_rect).nil?)
              rect.attr_left = Math.max(rect.attr_left, clip_rect.attr_left)
              rect.attr_right = Math.min(rect.attr_right, clip_rect.attr_right)
            end
            OS._fill_rect(graphics, rect, brush_underline)
          when SWT::UNDERLINE_DOUBLE
            brush_underline = OS._create_solid_brush(color_ref_underline)
            OS._set_rect(rect, run_x, underline_y, run_x + run.attr_width, underline_y + run.attr_underline_thickness)
            if (!(clip_rect).nil?)
              rect.attr_left = Math.max(rect.attr_left, clip_rect.attr_left)
              rect.attr_right = Math.min(rect.attr_right, clip_rect.attr_right)
            end
            OS._fill_rect(graphics, rect, brush_underline)
            OS._set_rect(rect, run_x, underline_y + run.attr_underline_thickness * 2, run_x + run.attr_width, underline_y + run.attr_underline_thickness * 3)
            if (!(clip_rect).nil?)
              rect.attr_left = Math.max(rect.attr_left, clip_rect.attr_left)
              rect.attr_right = Math.min(rect.attr_right, clip_rect.attr_right)
            end
            OS._fill_rect(graphics, rect, brush_underline)
          when UNDERLINE_IME_THICK
            brush_underline = OS._create_solid_brush(color_ref_underline)
            OS._set_rect(rect, run_x, underline_y - run.attr_underline_thickness, run_x + run.attr_width, underline_y + run.attr_underline_thickness)
            if (!(clip_rect).nil?)
              rect.attr_left = Math.max(rect.attr_left, clip_rect.attr_left)
              rect.attr_right = Math.min(rect.attr_right, clip_rect.attr_right)
            end
            OS._fill_rect(graphics, rect, brush_underline)
          when UNDERLINE_IME_DASH, UNDERLINE_IME_DOT
            underline_y = line_baseline + run.attr_descent
            pen_style = (style.attr_underline_style).equal?(UNDERLINE_IME_DASH) ? OS::PS_DASH : OS::PS_DOT
            # long
            pen = OS._create_pen(pen_style, 1, color_ref_underline)
            # long
            old_pen = OS._select_object(graphics, pen)
            OS._set_rect(rect, run_x, underline_y, run_x + run.attr_width, underline_y + run.attr_underline_thickness)
            if (!(clip_rect).nil?)
              rect.attr_left = Math.max(rect.attr_left, clip_rect.attr_left)
              rect.attr_right = Math.min(rect.attr_right, clip_rect.attr_right)
            end
            OS._move_to_ex(graphics, rect.attr_left, rect.attr_top, 0)
            OS._line_to(graphics, rect.attr_right, rect.attr_top)
            OS._select_object(graphics, old_pen)
            OS._delete_object(pen)
          end
        end
        if (style.attr_strikeout)
          if (!(style.attr_strikeout_color).nil?)
            color_ref_strikeout = style.attr_strikeout_color.attr_handle
          end
          if (!(brush_underline).equal?(0) && (color_ref_strikeout).equal?(color_ref_underline))
            brush_strikeout = brush_underline
          else
            brush_strikeout = OS._create_solid_brush(color_ref_strikeout)
          end
          OS._set_rect(rect, run_x, strikeout_y, run_x + run.attr_width, strikeout_y + run.attr_strikeout_thickness)
          if (!(clip_rect).nil?)
            rect.attr_left = Math.max(rect.attr_left, clip_rect.attr_left)
            rect.attr_right = Math.min(rect.attr_right, clip_rect.attr_right)
          end
          OS._fill_rect(graphics, rect, brush_strikeout)
        end
        if (!(brush_underline).equal?(0))
          OS._delete_object(brush_underline)
        end
        if (!(brush_strikeout).equal?(0) && !(brush_strikeout).equal?(brush_underline))
          OS._delete_object(brush_strikeout)
        end
      end
    end
    
    typesig { [::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, RECT, RECT, ::Java::Int, Array.typed(StyleItem), ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def draw_border(advance, graphics, x, y, line_height, color, selection_color, full_selection, clip_rect, rect, alpha, line, index, selection_start, selection_end)
      run = line[index]
      style = run.attr_style
      if ((style).nil?)
        return nil
      end
      if ((style.attr_border_style).equal?(SWT::NONE))
        return nil
      end
      if (!(rect).nil?)
        if ((clip_rect).nil?)
          clip_rect = RECT.new
          OS._set_rect(clip_rect, -1, rect.attr_top, -1, rect.attr_bottom)
        end
        is_rtl = !((@orientation & SWT::RIGHT_TO_LEFT)).equal?(0)
        if (run.attr_start <= selection_start && selection_start <= run.attr_start + run.attr_length)
          if (run.attr_analysis.attr_f_rtl ^ is_rtl)
            clip_rect.attr_right = rect.attr_left
          else
            clip_rect.attr_left = rect.attr_left
          end
        end
        if (run.attr_start <= selection_end && selection_end <= run.attr_start + run.attr_length)
          if (run.attr_analysis.attr_f_rtl ^ is_rtl)
            clip_rect.attr_left = rect.attr_right
          else
            clip_rect.attr_right = rect.attr_right
          end
        end
      end
      if (index + 1 >= line.attr_length || !style.is_adherent_border(line[index + 1].attr_style))
        left = run.attr_x
        i = index
        while i > 0 && style.is_adherent_border(line[i - 1].attr_style)
          left = line[i - 1].attr_x
          i -= 1
        end
        if (advance)
          # long
          brush = color
          custom_color = -1
          if (!(style.attr_border_color).nil?)
            custom_color = style.attr_border_color.attr_handle
          else
            if (!(style.attr_foreground).nil?)
              custom_color = style.attr_foreground.attr_handle
            end
            if (full_selection && (clip_rect).nil?)
              custom_color = -1
              brush = selection_color
            end
          end
          if (!(custom_color).equal?(-1))
            argb = ((alpha & 0xff) << 24) | ((custom_color >> 16) & 0xff) | (custom_color & 0xff00) | ((custom_color & 0xff) << 16)
            # long
            gdi_color = Gdip._color_new(argb)
            brush = Gdip._solid_brush_new(gdi_color)
            Gdip._color_delete(gdi_color)
          end
          line_width = 1
          line_style = Gdip::DashStyleSolid
          case (style.attr_border_style)
          when SWT::BORDER_SOLID
          when SWT::BORDER_DASH
            line_style = Gdip::DashStyleDash
          when SWT::BORDER_DOT
            line_style = Gdip::DashStyleDot
          end
          # long
          pen = Gdip._pen_new(brush, line_width)
          Gdip._pen_set_dash_style(pen, line_style)
          gdip_xoffset = 0.5
          gdip_yoffset = 0.5
          Gdip._graphics_translate_transform(graphics, gdip_xoffset, gdip_yoffset, Gdip::MatrixOrderPrepend)
          if ((style.attr_border_color).nil? && !(clip_rect).nil?)
            gstate = Gdip._graphics_save(graphics)
            if ((clip_rect.attr_left).equal?(-1))
              clip_rect.attr_left = 0
            end
            if ((clip_rect.attr_right).equal?(-1))
              clip_rect.attr_right = 0x7ffff
            end
            gdip_rect = Rect.new
            gdip_rect.attr_x = clip_rect.attr_left
            gdip_rect.attr_y = clip_rect.attr_top
            gdip_rect.attr_width = clip_rect.attr_right - clip_rect.attr_left
            gdip_rect.attr_height = clip_rect.attr_bottom - clip_rect.attr_top
            Gdip._graphics_set_clip(graphics, gdip_rect, Gdip::CombineModeExclude)
            Gdip._graphics_draw_rectangle(graphics, pen, x + left, y, run.attr_x + run.attr_width - left - 1, line_height - 1)
            Gdip._graphics_restore(graphics, gstate)
            gstate = Gdip._graphics_save(graphics)
            Gdip._graphics_set_clip(graphics, gdip_rect, Gdip::CombineModeIntersect)
            # long
            sel_pen = Gdip._pen_new(selection_color, line_width)
            Gdip._pen_set_dash_style(pen, line_style)
            Gdip._graphics_draw_rectangle(graphics, sel_pen, x + left, y, run.attr_x + run.attr_width - left - 1, line_height - 1)
            Gdip._pen_delete(sel_pen)
            Gdip._graphics_restore(graphics, gstate)
          else
            Gdip._graphics_draw_rectangle(graphics, pen, x + left, y, run.attr_x + run.attr_width - left - 1, line_height - 1)
          end
          Gdip._graphics_translate_transform(graphics, -gdip_xoffset, -gdip_yoffset, Gdip::MatrixOrderPrepend)
          Gdip._pen_delete(pen)
          if (!(custom_color).equal?(-1))
            Gdip._solid_brush_delete(brush)
          end
        else
          if (!(style.attr_border_color).nil?)
            color = style.attr_border_color.attr_handle
          else
            if (!(style.attr_foreground).nil?)
              color = style.attr_foreground.attr_handle
            end
            if (full_selection && (clip_rect).nil?)
              color = selection_color
            end
          end
          line_width = 1
          line_style = OS::PS_SOLID
          case (style.attr_border_style)
          when SWT::BORDER_SOLID
          when SWT::BORDER_DASH
            line_style = OS::PS_DASH
          when SWT::BORDER_DOT
            line_style = OS::PS_DOT
          end
          log_brush = LOGBRUSH.new
          log_brush.attr_lb_style = OS::BS_SOLID
          # 64
          log_brush.attr_lb_color = RJava.cast_to_int(color)
          # long
          new_pen = OS._ext_create_pen(line_style | OS::PS_GEOMETRIC, Math.max(1, line_width), log_brush, 0, nil)
          # long
          old_pen = OS._select_object(graphics, new_pen)
          # long
          old_brush = OS._select_object(graphics, OS._get_stock_object(OS::NULL_BRUSH))
          OS._rectangle(graphics, x + left, y, x + run.attr_x + run.attr_width, y + line_height)
          if ((style.attr_border_color).nil? && !(clip_rect).nil? && !(color).equal?(selection_color))
            state = OS._save_dc(graphics)
            if ((clip_rect.attr_left).equal?(-1))
              clip_rect.attr_left = 0
            end
            if ((clip_rect.attr_right).equal?(-1))
              clip_rect.attr_right = 0x7ffff
            end
            OS._intersect_clip_rect(graphics, clip_rect.attr_left, clip_rect.attr_top, clip_rect.attr_right, clip_rect.attr_bottom)
            # 64
            log_brush.attr_lb_color = RJava.cast_to_int(selection_color)
            # long
            sel_pen = OS._ext_create_pen(line_style | OS::PS_GEOMETRIC, Math.max(1, line_width), log_brush, 0, nil)
            OS._select_object(graphics, sel_pen)
            OS._rectangle(graphics, x + left, y, x + run.attr_x + run.attr_width, y + line_height)
            OS._restore_dc(graphics, state)
            OS._select_object(graphics, new_pen)
            OS._delete_object(sel_pen)
          end
          OS._select_object(graphics, old_brush)
          OS._select_object(graphics, old_pen)
          OS._delete_object(new_pen)
        end
        return nil
      end
      return clip_rect
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
    def free_runs
      if ((@all_runs).nil?)
        return
      end
      i = 0
      while i < @all_runs.attr_length
        run = @all_runs[i]
        run.free
        i += 1
      end
      @all_runs = nil
      @runs = nil
      @segments_text = (nil).to_s
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
      compute_runs(nil)
      width = 0
      if (!(@wrap_width).equal?(-1))
        width = @wrap_width
      else
        line = 0
        while line < @runs.attr_length
          width = Math.max(width, @line_width[line] + get_line_indent(line))
          line += 1
        end
      end
      return Rectangle.new(0, 0, width, @line_y[@line_y.attr_length - 1])
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
      compute_runs(nil)
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
      left = 0x7fffffff
      right = 0
      top = 0x7fffffff
      bottom = 0
      is_rtl = !((@orientation & SWT::RIGHT_TO_LEFT)).equal?(0)
      i = 0
      while i < @all_runs.attr_length - 1
        run = @all_runs[i]
        run_end = run.attr_start + run.attr_length
        if (run_end <= start)
          i += 1
          next
        end
        if (run.attr_start > end_)
          break
        end
        run_lead = run.attr_x
        run_trail = run.attr_x + run.attr_width
        if (run.attr_start <= start && start < run_end)
          cx = 0
          if (!(run.attr_style).nil? && !(run.attr_style.attr_metrics).nil?)
            metrics = run.attr_style.attr_metrics
            cx = metrics.attr_width * (start - run.attr_start)
          else
            if (!run.attr_tab)
              pi_x = Array.typed(::Java::Int).new(1) { 0 }
              # long
              advances = !(run.attr_justify).equal?(0) ? run.attr_justify : run.attr_advances
              OS._script_cpto_x(start - run.attr_start, false, run.attr_length, run.attr_glyph_count, run.attr_clusters, run.attr_vis_attrs, advances, run.attr_analysis, pi_x)
              cx = is_rtl ? run.attr_width - pi_x[0] : pi_x[0]
            end
          end
          if (run.attr_analysis.attr_f_rtl ^ is_rtl)
            run_trail = run.attr_x + cx
          else
            run_lead = run.attr_x + cx
          end
        end
        if (run.attr_start <= end_ && end_ < run_end)
          cx = run.attr_width
          if (!(run.attr_style).nil? && !(run.attr_style.attr_metrics).nil?)
            metrics = run.attr_style.attr_metrics
            cx = metrics.attr_width * (end_ - run.attr_start + 1)
          else
            if (!run.attr_tab)
              pi_x = Array.typed(::Java::Int).new(1) { 0 }
              # long
              advances = !(run.attr_justify).equal?(0) ? run.attr_justify : run.attr_advances
              OS._script_cpto_x(end_ - run.attr_start, true, run.attr_length, run.attr_glyph_count, run.attr_clusters, run.attr_vis_attrs, advances, run.attr_analysis, pi_x)
              cx = is_rtl ? run.attr_width - pi_x[0] : pi_x[0]
            end
          end
          if (run.attr_analysis.attr_f_rtl ^ is_rtl)
            run_lead = run.attr_x + cx
          else
            run_trail = run.attr_x + cx
          end
        end
        line_index = 0
        while (line_index < @runs.attr_length && @line_offset[line_index + 1] <= run.attr_start)
          line_index += 1
        end
        left = Math.min(left, run_lead)
        right = Math.max(right, run_trail)
        top = Math.min(top, @line_y[line_index])
        bottom = Math.max(bottom, @line_y[line_index + 1] - @line_spacing)
        i += 1
      end
      return Rectangle.new(left, top, right - left, bottom - top)
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
    
    typesig { [StyleItem] }
    # long
    def get_item_font(item)
      if (!(item.attr_fallback_font).equal?(0))
        return item.attr_fallback_font
      end
      if (!(item.attr_style).nil? && !(item.attr_style.attr_font).nil?)
        return item.attr_style.attr_font.attr_handle
      end
      if (!(@font).nil?)
        return @font.attr_handle
      end
      return self.attr_device.attr_system_font.attr_handle
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
      compute_runs(nil)
      length_ = @text.length
      if (!(0 <= offset && offset <= length_))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      offset = translate_offset(offset)
      i = 1
      while i < @all_runs.attr_length
        if (@all_runs[i].attr_start > offset)
          return @all_runs[i - 1].attr_analysis.attr_s.attr_u_bidi_level
        end
        i += 1
      end
      return !((@orientation & SWT::RIGHT_TO_LEFT)).equal?(0) ? 1 : 0
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
      compute_runs(nil)
      if (!(0 <= line_index && line_index < @runs.attr_length))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      x = get_line_indent(line_index)
      y = @line_y[line_index]
      width = @line_width[line_index]
      height = @line_y[line_index + 1] - y - @line_spacing
      return Rectangle.new(x, y, width, height)
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
      compute_runs(nil)
      return @runs.attr_length
    end
    
    typesig { [::Java::Int] }
    def get_line_indent(line_index)
      line_indent = 0
      if ((line_index).equal?(0))
        line_indent = @indent
      else
        previous_line = @runs[line_index - 1]
        previous_run = previous_line[previous_line.attr_length - 1]
        if (previous_run.attr_line_break && !previous_run.attr_soft_break)
          line_indent = @indent
        end
      end
      if (!(@wrap_width).equal?(-1))
        partial_line = true
        if (@justify)
          line_run = @runs[line_index]
          if (line_run[line_run.attr_length - 1].attr_soft_break)
            partial_line = false
          end
        end
        if (partial_line)
          line_width = @line_width[line_index] + line_indent
          case (@alignment)
          when SWT::CENTER
            line_indent += (@wrap_width - line_width) / 2
          when SWT::RIGHT
            line_indent += @wrap_width - line_width
          end
        end
      end
      return line_indent
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
      compute_runs(nil)
      length_ = @text.length
      if (!(0 <= offset && offset <= length_))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      offset = translate_offset(offset)
      line = 0
      while line < @runs.attr_length
        if (@line_offset[line + 1] > offset)
          return line
        end
        line += 1
      end
      return @runs.attr_length - 1
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
      compute_runs(nil)
      if (!(0 <= line_index && line_index < @runs.attr_length))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      # long
      h_dc = self.attr_device.internal_new__gc(nil)
      # long
      src_hdc = OS._create_compatible_dc(h_dc)
      lptm = OS::IsUnicode ? TEXTMETRICW.new : TEXTMETRICA.new
      OS._select_object(src_hdc, !(@font).nil? ? @font.attr_handle : self.attr_device.attr_system_font.attr_handle)
      OS._get_text_metrics(src_hdc, lptm)
      OS._delete_dc(src_hdc)
      self.attr_device.internal_dispose__gc(h_dc, nil)
      ascent = Math.max(lptm.attr_tm_ascent, @ascent)
      descent = Math.max(lptm.attr_tm_descent, @descent)
      leading = lptm.attr_tm_internal_leading
      if (!(@text.length).equal?(0))
        line_runs = @runs[line_index]
        i = 0
        while i < line_runs.attr_length
          run = line_runs[i]
          if (run.attr_ascent > ascent)
            ascent = run.attr_ascent
            leading = run.attr_leading
          end
          descent = Math.max(descent, run.attr_descent)
          i += 1
        end
      end
      lptm.attr_tm_ascent = ascent
      lptm.attr_tm_descent = descent
      lptm.attr_tm_height = ascent + descent
      lptm.attr_tm_internal_leading = leading
      lptm.attr_tm_ave_char_width = 0
      return FontMetrics.win32_new(lptm)
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
      compute_runs(nil)
      offsets = Array.typed(::Java::Int).new(@line_offset.attr_length) { 0 }
      i = 0
      while i < offsets.attr_length
        offsets[i] = untranslate_offset(@line_offset[i])
        i += 1
      end
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
      compute_runs(nil)
      length_ = @text.length
      if (!(0 <= offset && offset <= length_))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      length_ = @segments_text.length
      offset = translate_offset(offset)
      line = 0
      line = 0
      while line < @runs.attr_length
        if (@line_offset[line + 1] > offset)
          break
        end
        line += 1
      end
      line = Math.min(line, @runs.attr_length - 1)
      if ((offset).equal?(length_))
        return Point.new(get_line_indent(line) + @line_width[line], @line_y[line])
      end
      low = -1
      high = @all_runs.attr_length
      while (high - low > 1)
        index = ((high + low) / 2)
        run = @all_runs[index]
        if (run.attr_start > offset)
          high = index
        else
          if (run.attr_start + run.attr_length <= offset)
            low = index
          else
            width = 0
            if (!(run.attr_style).nil? && !(run.attr_style.attr_metrics).nil?)
              metrics = run.attr_style.attr_metrics
              width = metrics.attr_width * (offset - run.attr_start + (trailing ? 1 : 0))
            else
              if (run.attr_tab)
                width = (trailing || ((offset).equal?(length_))) ? run.attr_width : 0
              else
                run_offset = offset - run.attr_start
                c_chars = run.attr_length
                g_glyphs = run.attr_glyph_count
                pi_x = Array.typed(::Java::Int).new(1) { 0 }
                # long
                advances = !(run.attr_justify).equal?(0) ? run.attr_justify : run.attr_advances
                OS._script_cpto_x(run_offset, trailing, c_chars, g_glyphs, run.attr_clusters, run.attr_vis_attrs, advances, run.attr_analysis, pi_x)
                width = !((@orientation & SWT::RIGHT_TO_LEFT)).equal?(0) ? run.attr_width - pi_x[0] : pi_x[0]
              end
            end
            return Point.new(run.attr_x + width, @line_y[line])
          end
        end
      end
      return Point.new(0, 0)
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
      check_layout
      return __get_offset(offset, movement, true)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def __get_offset(offset, movement, forward)
      compute_runs(nil)
      length_ = @text.length
      if (!(0 <= offset && offset <= length_))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      if (forward && (offset).equal?(length_))
        return length_
      end
      if (!forward && (offset).equal?(0))
        return 0
      end
      step = forward ? 1 : -1
      if (!((movement & SWT::MOVEMENT_CHAR)).equal?(0))
        return offset + step
      end
      length_ = @segments_text.length
      offset = translate_offset(offset)
      log_attr = SCRIPT_LOGATTR.new
      properties = SCRIPT_PROPERTIES.new
      i = forward ? 0 : @all_runs.attr_length - 1
      offset = validade_offset(offset, step)
      begin
        run = @all_runs[i]
        if (run.attr_start <= offset && offset < run.attr_start + run.attr_length)
          if (run.attr_line_break && !run.attr_soft_break)
            return untranslate_offset(run.attr_start)
          end
          if (run.attr_tab)
            return untranslate_offset(run.attr_start)
          end
          OS._move_memory(properties, self.attr_device.attr_scripts[run.attr_analysis.attr_e_script], SCRIPT_PROPERTIES.attr_sizeof)
          is_complex = properties.attr_f_needs_caret_info || properties.attr_f_needs_word_breaking
          if (is_complex)
            break_run(run)
          end
          while (run.attr_start <= offset && offset < run.attr_start + run.attr_length)
            if (is_complex)
              OS._move_memory(log_attr, run.attr_psla + ((offset - run.attr_start) * SCRIPT_LOGATTR.attr_sizeof), SCRIPT_LOGATTR.attr_sizeof)
            end
            case (movement)
            when SWT::MOVEMENT_CLUSTER
              if (properties.attr_f_needs_caret_info)
                if (!log_attr.attr_f_invalid && log_attr.attr_f_char_stop)
                  return untranslate_offset(offset)
                end
              else
                return untranslate_offset(offset)
              end
            when SWT::MOVEMENT_WORD_START, SWT::MOVEMENT_WORD
              if (properties.attr_f_needs_word_breaking)
                if (!log_attr.attr_f_invalid && log_attr.attr_f_word_stop)
                  return untranslate_offset(offset)
                end
              else
                if (offset > 0)
                  letter_or_digit = Compatibility.is_letter_or_digit(@segments_text.char_at(offset))
                  previous_letter_or_digit = Compatibility.is_letter_or_digit(@segments_text.char_at(offset - 1))
                  if (!(letter_or_digit).equal?(previous_letter_or_digit) || !letter_or_digit)
                    if (!Compatibility.is_whitespace(@segments_text.char_at(offset)))
                      return untranslate_offset(offset)
                    end
                  end
                end
              end
            when SWT::MOVEMENT_WORD_END
              if (offset > 0)
                is_letter_or_digit_ = Compatibility.is_letter_or_digit(@segments_text.char_at(offset))
                previous_letter_or_digit = Compatibility.is_letter_or_digit(@segments_text.char_at(offset - 1))
                if (!is_letter_or_digit_ && previous_letter_or_digit)
                  return untranslate_offset(offset)
                end
              end
            end
            offset = validade_offset(offset, step)
          end
        end
        i += step
      end while (0 <= i && i < @all_runs.attr_length - 1 && 0 <= offset && offset < length_)
      return forward ? @text.length : 0
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
      compute_runs(nil)
      if (!(trailing).nil? && trailing.attr_length < 1)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      line = 0
      line_count = @runs.attr_length
      line = 0
      while line < line_count
        if (@line_y[line + 1] > y)
          break
        end
        line += 1
      end
      line = Math.min(line, @runs.attr_length - 1)
      line_runs = @runs[line]
      line_indent = get_line_indent(line)
      if (x >= line_indent + @line_width[line])
        x = line_indent + @line_width[line] - 1
      end
      if (x < line_indent)
        x = line_indent
      end
      low = -1
      high = line_runs.attr_length
      while (high - low > 1)
        index = ((high + low) / 2)
        run = line_runs[index]
        if (run.attr_x > x)
          high = index
        else
          if (run.attr_x + run.attr_width <= x)
            low = index
          else
            if (run.attr_line_break && !run.attr_soft_break)
              return untranslate_offset(run.attr_start)
            end
            x_run = x - run.attr_x
            if (!(run.attr_style).nil? && !(run.attr_style.attr_metrics).nil?)
              metrics = run.attr_style.attr_metrics
              if (metrics.attr_width > 0)
                if (!(trailing).nil?)
                  trailing[0] = (x_run % metrics.attr_width < metrics.attr_width / 2) ? 0 : 1
                end
                return untranslate_offset(run.attr_start + x_run / metrics.attr_width)
              end
            end
            if (run.attr_tab)
              if (!(trailing).nil?)
                trailing[0] = x < (run.attr_x + run.attr_width / 2) ? 0 : 1
              end
              return untranslate_offset(run.attr_start)
            end
            c_chars = run.attr_length
            c_glyphs = run.attr_glyph_count
            pi_cp = Array.typed(::Java::Int).new(1) { 0 }
            pi_trailing = Array.typed(::Java::Int).new(1) { 0 }
            if (!((@orientation & SWT::RIGHT_TO_LEFT)).equal?(0))
              x_run = run.attr_width - x_run
            end
            # long
            advances = !(run.attr_justify).equal?(0) ? run.attr_justify : run.attr_advances
            OS._script_xto_cp(x_run, c_chars, c_glyphs, run.attr_clusters, run.attr_vis_attrs, advances, run.attr_analysis, pi_cp, pi_trailing)
            if (!(trailing).nil?)
              trailing[0] = pi_trailing[0]
            end
            return untranslate_offset(run.attr_start + pi_cp[0])
          end
        end
      end
      if (!(trailing).nil?)
        trailing[0] = 0
      end
      return untranslate_offset(@line_offset[line + 1])
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
    def get_previous_offset(offset, movement)
      check_layout
      return __get_offset(offset, movement, false)
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
      result = Array.typed(::Java::Int).new(@styles_count * 2) { 0 }
      count = 0
      i = 0
      while i < @styles_count - 1
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
      separator = (@orientation).equal?(SWT::RIGHT_TO_LEFT) ? RTL_MARK : LTR_MARK
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
      return @line_spacing
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
      while i < @styles_count
        if (@styles[i].attr_start > offset)
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
      result = Array.typed(TextStyle).new(@styles_count) { nil }
      count = 0
      i = 0
      while i < @styles_count
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
    
    typesig { [] }
    # Itemize the receiver text
    def itemize
      @segments_text = (get_segments_text).to_s
      length_ = @segments_text.length
      script_control = SCRIPT_CONTROL.new
      script_state = SCRIPT_STATE.new
      max_item = length_ + 1
      if (!((@orientation & SWT::RIGHT_TO_LEFT)).equal?(0))
        script_state.attr_u_bidi_level = 1
        script_state.attr_f_arabic_num_context = true
        psds = SCRIPT_DIGITSUBSTITUTE.new
        OS._script_record_digit_substitution(OS::LOCALE_USER_DEFAULT, psds)
        OS._script_apply_digit_substitution(psds, script_control, script_state)
      end
      # long
      h_heap = OS._get_process_heap
      # long
      p_items = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, max_item * SCRIPT_ITEM.attr_sizeof)
      if ((p_items).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      pc_items = Array.typed(::Java::Int).new(1) { 0 }
      chars = CharArray.new(length_)
      @segments_text.get_chars(0, length_, chars, 0)
      OS._script_itemize(chars, length_, max_item, script_control, script_state, p_items, pc_items)
      # if (hr == E_OUTOFMEMORY) //TODO handle it
      runs = merge(p_items, pc_items[0])
      OS._heap_free(h_heap, 0, p_items)
      return runs
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Merge styles ranges and script items
    # 
    # long
    def merge(items, item_count)
      if (@styles.attr_length > @styles_count)
        new_styles = Array.typed(StyleItem).new(@styles_count) { nil }
        System.arraycopy(@styles, 0, new_styles, 0, @styles_count)
        @styles = new_styles
      end
      count = 0
      start = 0
      end_ = @segments_text.length
      item_index = 0
      style_index = 0
      runs = Array.typed(StyleItem).new(item_count + @styles_count) { nil }
      script_item = SCRIPT_ITEM.new
      link_before = false
      while (start < end_)
        item = StyleItem.new_local(self)
        item.attr_start = start
        item.attr_style = @styles[style_index].attr_style
        runs[((count += 1) - 1)] = item
        OS._move_memory(script_item, items + item_index * SCRIPT_ITEM.attr_sizeof, SCRIPT_ITEM.attr_sizeof)
        item.attr_analysis = script_item.attr_a
        if (link_before)
          item.attr_analysis.attr_f_link_before = true
          link_before = false
        end
        script_item.attr_a = SCRIPT_ANALYSIS.new
        OS._move_memory(script_item, items + (item_index + 1) * SCRIPT_ITEM.attr_sizeof, SCRIPT_ITEM.attr_sizeof)
        item_limit = script_item.attr_i_char_pos
        style_limit = translate_offset(@styles[style_index + 1].attr_start)
        if (style_limit <= item_limit)
          style_index += 1
          start = style_limit
          if (start < item_limit && 0 < start && start < end_)
            p_char = @segments_text.char_at(start - 1)
            t_char = @segments_text.char_at(start)
            if (Compatibility.is_letter(p_char) && Compatibility.is_letter(t_char))
              item.attr_analysis.attr_f_link_after = true
              link_before = true
            end
          end
        end
        if (item_limit <= style_limit)
          item_index += 1
          start = item_limit
        end
        item.attr_length = start - item.attr_start
      end
      item = StyleItem.new_local(self)
      item.attr_start = end_
      OS._move_memory(script_item, items + item_count * SCRIPT_ITEM.attr_sizeof, SCRIPT_ITEM.attr_sizeof)
      item.attr_analysis = script_item.attr_a
      runs[((count += 1) - 1)] = item
      if (!(runs.attr_length).equal?(count))
        result = Array.typed(StyleItem).new(count) { nil }
        System.arraycopy(runs, 0, result, 0, count)
        return result
      end
      return runs
    end
    
    typesig { [Array.typed(StyleItem), ::Java::Boolean] }
    # Reorder the run
    def reorder(runs, terminate)
      length_ = runs.attr_length
      if (length_ <= 1)
        return runs
      end
      bidi_levels = Array.typed(::Java::Byte).new(length_) { 0 }
      i = 0
      while i < length_
        bidi_levels[i] = (runs[i].attr_analysis.attr_s.attr_u_bidi_level & 0x1f)
        i += 1
      end
      # Feature in Windows.  If the orientation is RTL Uniscribe will
      # resolve the level of line breaks to 1, this can cause the line
      # break to be reorder to the middle of the line. The fix is to set
      # the level to zero to prevent it to be reordered.
      last_run = runs[length_ - 1]
      if (last_run.attr_line_break && !last_run.attr_soft_break)
        bidi_levels[length_ - 1] = 0
      end
      log2vis = Array.typed(::Java::Int).new(length_) { 0 }
      OS._script_layout(length_, bidi_levels, nil, log2vis)
      result = Array.typed(StyleItem).new(length_) { nil }
      i_ = 0
      while i_ < length_
        result[log2vis[i_]] = runs[i_]
        i_ += 1
      end
      if (!((@orientation & SWT::RIGHT_TO_LEFT)).equal?(0))
        if (terminate)
          length_ -= 1
        end
        i__ = 0
        while i__ < length_ / 2
          tmp = result[i__]
          result[i__] = result[length_ - i__ - 1]
          result[length_ - i__ - 1] = tmp
          i__ += 1
        end
      end
      return result
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
      free_runs
      @alignment = alignment
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
      if ((@justify).equal?(justify))
        return
      end
      free_runs
      @justify = justify
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
      free_runs
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
      if ((@line_spacing).equal?(spacing))
        return
      end
      free_runs
      @line_spacing = spacing
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
      high = @styles_count
      while (high - low > 1)
        index = (high + low) / 2
        if (@styles[index + 1].attr_start > start)
          high = index
        else
          low = index
        end
      end
      if (0 <= high && high < @styles_count)
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
      while (modify_end < @styles_count)
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
          new_length = @styles_count + 2
          if (new_length > @styles.attr_length)
            new_size = Math.min(new_length + 1024, Math.max(64, new_length * 2))
            new_styles = Array.typed(StyleItem).new(new_size) { nil }
            System.arraycopy(@styles, 0, new_styles, 0, @styles_count)
            @styles = new_styles
          end
          System.arraycopy(@styles, modify_end + 1, @styles, modify_end + 3, @styles_count - modify_end - 1)
          item = StyleItem.new_local(self)
          item.attr_start = start
          item.attr_style = style
          @styles[modify_start + 1] = item
          item = StyleItem.new_local(self)
          item.attr_start = end_ + 1
          item.attr_style = @styles[modify_start].attr_style
          @styles[modify_start + 2] = item
          @styles_count = new_length
          return
        end
      end
      if ((start).equal?(@styles[modify_start].attr_start))
        modify_start -= 1
      end
      if ((end_).equal?(@styles[modify_end + 1].attr_start - 1))
        modify_end += 1
      end
      new_length = @styles_count + 1 - (modify_end - modify_start - 1)
      if (new_length > @styles.attr_length)
        new_size = Math.min(new_length + 1024, Math.max(64, new_length * 2))
        new_styles = Array.typed(StyleItem).new(new_size) { nil }
        System.arraycopy(@styles, 0, new_styles, 0, @styles_count)
        @styles = new_styles
      end
      System.arraycopy(@styles, modify_end, @styles, modify_start + 2, @styles_count - modify_end)
      item = StyleItem.new_local(self)
      item.attr_start = start
      item.attr_style = style
      @styles[modify_start + 1] = item
      @styles[modify_start + 2].attr_start = end_ + 1
      @styles_count = new_length
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
      @styles[0] = StyleItem.new_local(self)
      @styles[1] = StyleItem.new_local(self)
      @styles[1].attr_start = text.length
      @styles_count = 2
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
      free_runs
      @wrap_width = width
    end
    
    typesig { [::Java::Int, StyleItem, Array.typed(::Java::Char), Array.typed(::Java::Int), ::Java::Int, SCRIPT_PROPERTIES] }
    # long
    def shape(hdc, run, chars, glyph_count, max_glyphs, sp)
      use_cmapcheck = !sp.attr_f_complex && !run.attr_analysis.attr_f_no_glyph_index
      if (use_cmapcheck)
        glyphs = Array.typed(::Java::Short).new(chars.attr_length) { 0 }
        if (!(OS._script_get_cmap(hdc, run.attr_psc, chars, chars.attr_length, 0, glyphs)).equal?(OS::S_OK))
          if (!(run.attr_psc).equal?(0))
            OS._script_free_cache(run.attr_psc)
            glyph_count[0] = 0
            # long
            OS._move_memory(run.attr_psc, Array.typed(::Java::Int).new(1) { 0 }, OS::PTR_SIZEOF)
          end
          return false
        end
      end
      hr = OS._script_shape(hdc, run.attr_psc, chars, chars.attr_length, max_glyphs, run.attr_analysis, run.attr_glyphs, run.attr_clusters, run.attr_vis_attrs, glyph_count)
      run.attr_glyph_count = glyph_count[0]
      if (use_cmapcheck)
        return true
      end
      if (!(hr).equal?(OS::USP_E_SCRIPT_NOT_IN_FONT))
        if (run.attr_analysis.attr_f_no_glyph_index)
          return true
        end
        fp = SCRIPT_FONTPROPERTIES.new
        fp.attr_c_bytes = SCRIPT_FONTPROPERTIES.attr_sizeof
        OS._script_get_font_properties(hdc, run.attr_psc, fp)
        glyphs = Array.typed(::Java::Short).new(glyph_count[0]) { 0 }
        OS._move_memory(glyphs, run.attr_glyphs, glyphs.attr_length * 2)
        i = 0
        i = 0
        while i < glyphs.attr_length
          if ((glyphs[i]).equal?(fp.attr_wg_default))
            break
          end
          i += 1
        end
        if ((i).equal?(glyphs.attr_length))
          return true
        end
      end
      if (!(run.attr_psc).equal?(0))
        OS._script_free_cache(run.attr_psc)
        glyph_count[0] = 0
        # long
        OS._move_memory(run.attr_psc, Array.typed(::Java::Int).new(1) { 0 }, OS::PTR_SIZEOF)
      end
      run.attr_glyph_count = 0
      return false
    end
    
    typesig { [::Java::Int, StyleItem] }
    # Generate glyphs for one Run.
    # 
    # long
    def shape(hdc, run)
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      chars = CharArray.new(run.attr_length)
      @segments_text.get_chars(run.attr_start, run.attr_start + run.attr_length, chars, 0)
      max_glyphs = (chars.attr_length * 3 / 2) + 16
      # long
      h_heap = OS._get_process_heap
      run.attr_glyphs = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, max_glyphs * 2)
      if ((run.attr_glyphs).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      run.attr_clusters = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, max_glyphs * 2)
      if ((run.attr_clusters).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      run.attr_vis_attrs = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, max_glyphs * SCRIPT_VISATTR_SIZEOF)
      if ((run.attr_vis_attrs).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      run.attr_psc = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, OS::PTR_SIZEOF)
      if ((run.attr_psc).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      script = run.attr_analysis.attr_e_script
      sp = SCRIPT_PROPERTIES.new
      OS._move_memory(sp, self.attr_device.attr_scripts[script], SCRIPT_PROPERTIES.attr_sizeof)
      shape_succeed = shape(hdc, run, chars, buffer, max_glyphs, sp)
      if (!shape_succeed)
        # long
        h_font = OS._get_current_object(hdc, OS::OBJ_FONT)
        # long
        ssa = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, OS._script_string_analysis_sizeof)
        # long
        meta_file_dc = OS._create_enh_meta_file(hdc, nil, nil, nil)
        # long
        old_meta_font = OS._select_object(meta_file_dc, h_font)
        flags = OS::SSA_METAFILE | OS::SSA_FALLBACK | OS::SSA_GLYPHS | OS::SSA_LINK
        if ((OS._script_string_analyse(meta_file_dc, chars, chars.attr_length, 0, -1, flags, 0, nil, nil, 0, 0, 0, ssa)).equal?(OS::S_OK))
          OS._script_string_out(ssa, 0, 0, 0, nil, 0, 0, false)
          OS._script_string_free(ssa)
        end
        OS._heap_free(h_heap, 0, ssa)
        OS._select_object(meta_file_dc, old_meta_font)
        # long
        meta_file = OS._close_enh_meta_file(meta_file_dc)
        emr = EMREXTCREATEFONTINDIRECTW.new
        meta_file_enum_proc_class = Class.new do
          extend LocalClass
          include_class_members TextLayout
          
          typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
          # long
          # long
          # long
          # long
          # long
          # long
          define_method :meta_file_enum_proc do |h_dc, table, record, n_obj, lp_data|
            OS._move_memory(emr.attr_emr, record, EMR.attr_sizeof)
            case (emr.attr_emr.attr_i_type)
            when OS::EMR_EXTCREATEFONTINDIRECTW
              OS._move_memory(emr, record, EMREXTCREATEFONTINDIRECTW.attr_sizeof)
            when OS::EMR_EXTTEXTOUTW
              return 0
            end
            return 1
          end
          
          typesig { [] }
          define_method :initialize do
          end
          
          private
          alias_method :initialize__meta_file_enum_proc, :initialize
        end
        object = meta_file_enum_proc_class.new
        # Avoid compiler warnings
        if (false)
          object.meta_file_enum_proc(0, 0, 0, 0, 0)
        end
        callback = Callback.new(object, "metaFileEnumProc", 5)
        # long
        address = callback.get_address
        if ((address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        OS._enum_enh_meta_file(0, meta_file, address, 0, nil)
        OS._delete_enh_meta_file(meta_file)
        callback.dispose
        # long
        new_font = OS._create_font_indirect_w(emr.attr_elfw.attr_elf_log_font)
        OS._select_object(hdc, new_font)
        if (shape_succeed = shape(hdc, run, chars, buffer, max_glyphs, sp))
          run.attr_fallback_font = new_font
        end
        if (!shape_succeed)
          if (!sp.attr_f_complex)
            run.attr_analysis.attr_f_no_glyph_index = true
            if (shape_succeed = shape(hdc, run, chars, buffer, max_glyphs, sp))
              run.attr_fallback_font = new_font
            else
              run.attr_analysis.attr_f_no_glyph_index = false
            end
          end
        end
        if (!shape_succeed)
          if (!(@m_lang_font_link2).equal?(0))
            # long
            # long
            h_new_font = Array.typed(::Java::Int).new(1) { 0 }
            dw_code_pages = Array.typed(::Java::Int).new(1) { 0 }
            cch_code_pages = Array.typed(::Java::Int).new(1) { 0 }
            # GetStrCodePages()
            OS._vtbl_call(4, @m_lang_font_link2, chars, chars.attr_length, 0, dw_code_pages, cch_code_pages)
            # MapFont()
            if ((OS._vtbl_call(10, @m_lang_font_link2, hdc, dw_code_pages[0], chars[0], h_new_font)).equal?(OS::S_OK))
              log_font = OS::IsUnicode ? LOGFONTW.new : LOGFONTA.new
              OS._get_object(h_new_font[0], LOGFONT.attr_sizeof, log_font)
              # ReleaseFont()
              OS._vtbl_call(8, @m_lang_font_link2, h_new_font[0])
              # long
              m_lang_font = OS._create_font_indirect(log_font)
              # long
              old_font = OS._select_object(hdc, m_lang_font)
              if (shape_succeed = shape(hdc, run, chars, buffer, max_glyphs, sp))
                run.attr_fallback_font = m_lang_font
              else
                OS._select_object(hdc, old_font)
                OS._delete_object(m_lang_font)
              end
            end
          end
        end
        if (!shape_succeed)
          OS._select_object(hdc, h_font)
        end
        if (!(new_font).equal?(run.attr_fallback_font))
          OS._delete_object(new_font)
        end
      end
      if (!shape_succeed)
        # Shape Failed.
        # Give up and shape the run with the default font.
        # Missing glyphs typically will be represent as black boxes in the text.
        OS._script_shape(hdc, run.attr_psc, chars, chars.attr_length, max_glyphs, run.attr_analysis, run.attr_glyphs, run.attr_clusters, run.attr_vis_attrs, buffer)
        run.attr_glyph_count = buffer[0]
      end
      abc = Array.typed(::Java::Int).new(3) { 0 }
      run.attr_advances = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, run.attr_glyph_count * 4)
      if ((run.attr_advances).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      run.attr_goffsets = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, run.attr_glyph_count * GOFFSET_SIZEOF)
      if ((run.attr_goffsets).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS._script_place(hdc, run.attr_psc, run.attr_glyphs, run.attr_glyph_count, run.attr_vis_attrs, run.attr_analysis, run.attr_advances, run.attr_goffsets, abc)
      run.attr_width = abc[0] + abc[1] + abc[2]
      style = run.attr_style
      if (!(style).nil?)
        lotm = nil
        if (style.attr_underline || style.attr_strikeout)
          lotm = OS::IsUnicode ? OUTLINETEXTMETRICW.new : OUTLINETEXTMETRICA.new
          if ((OS._get_outline_text_metrics(hdc, OUTLINETEXTMETRIC.attr_sizeof, lotm)).equal?(0))
            lotm = nil
          end
        end
        if (!(style.attr_metrics).nil?)
          metrics = style.attr_metrics
          # Bug in Windows, on a Japanese machine, Uniscribe returns glyphcount
          # equals zero for FFFC (possibly other unicode code points), the fix
          # is to make sure the glyph is at least one pixel wide.
          run.attr_width = metrics.attr_width * Math.max(1, run.attr_glyph_count)
          run.attr_ascent = metrics.attr_ascent
          run.attr_descent = metrics.attr_descent
          run.attr_leading = 0
        else
          lptm = nil
          if (!(lotm).nil?)
            lptm = OS::IsUnicode ? (lotm).attr_otm_text_metrics : (lotm).attr_otm_text_metrics
          else
            lptm = OS::IsUnicode ? TEXTMETRICW.new : TEXTMETRICA.new
            OS._get_text_metrics(hdc, lptm)
          end
          run.attr_ascent = lptm.attr_tm_ascent
          run.attr_descent = lptm.attr_tm_descent
          run.attr_leading = lptm.attr_tm_internal_leading
        end
        if (!(lotm).nil?)
          run.attr_underline_pos = lotm.attr_otms_underscore_position
          run.attr_underline_thickness = Math.max(1, lotm.attr_otms_underscore_size)
          run.attr_strikeout_pos = lotm.attr_otms_strikeout_position
          run.attr_strikeout_thickness = Math.max(1, lotm.attr_otms_strikeout_size)
        else
          run.attr_underline_pos = 1
          run.attr_underline_thickness = 1
          run.attr_strikeout_pos = run.attr_ascent / 2
          run.attr_strikeout_thickness = 1
        end
        run.attr_ascent += style.attr_rise
        run.attr_descent -= style.attr_rise
      else
        lptm = OS::IsUnicode ? TEXTMETRICW.new : TEXTMETRICA.new
        OS._get_text_metrics(hdc, lptm)
        run.attr_ascent = lptm.attr_tm_ascent
        run.attr_descent = lptm.attr_tm_descent
        run.attr_leading = lptm.attr_tm_internal_leading
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def validade_offset(offset, step)
      offset += step
      if (!(@segments).nil? && @segments.attr_length > 2)
        i = 0
        while i < @segments.attr_length
          if ((translate_offset(@segments[i]) - 1).equal?(offset))
            offset += step
            break
          end
          i += 1
        end
      end
      return offset
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
      return "TextLayout {}"
    end
    
    typesig { [::Java::Int] }
    def translate_offset(offset)
      if ((@segments).nil?)
        return offset
      end
      n_segments = @segments.attr_length
      if (n_segments <= 1)
        return offset
      end
      length_ = @text.length
      if ((length_).equal?(0))
        return offset
      end
      if ((n_segments).equal?(2))
        if ((@segments[0]).equal?(0) && (@segments[1]).equal?(length_))
          return offset
        end
      end
      i = 0
      while i < n_segments && offset - i >= @segments[i]
        offset += 1
        i += 1
      end
      return offset
    end
    
    typesig { [::Java::Int] }
    def untranslate_offset(offset)
      if ((@segments).nil?)
        return offset
      end
      n_segments = @segments.attr_length
      if (n_segments <= 1)
        return offset
      end
      length_ = @text.length
      if ((length_).equal?(0))
        return offset
      end
      if ((n_segments).equal?(2))
        if ((@segments[0]).equal?(0) && (@segments[1]).equal?(length_))
          return offset
        end
      end
      i = 0
      while i < n_segments && offset > @segments[i]
        offset -= 1
        i += 1
      end
      return offset
    end
    
    private
    alias_method :initialize__text_layout, :initialize
  end
  
end
