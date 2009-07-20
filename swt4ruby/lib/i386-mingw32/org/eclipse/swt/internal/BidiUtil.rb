require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal
  module BidiUtilImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal
      include_const ::Java::Util, :Hashtable
      include_const ::Org::Eclipse::Swt, :SWT
      include_const ::Org::Eclipse::Swt::Graphics, :GC
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # Wraps Win32 API used to bidi enable the StyledText widget.
  class BidiUtil 
    include_class_members BidiUtilImports
    
    class_module.module_eval {
      # Keyboard language ids
      const_set_lazy(:KEYBOARD_NON_BIDI) { 0 }
      const_attr_reader  :KEYBOARD_NON_BIDI
      
      const_set_lazy(:KEYBOARD_BIDI) { 1 }
      const_attr_reader  :KEYBOARD_BIDI
      
      # bidi flag
      
      def is_bidi_platform
        defined?(@@is_bidi_platform) ? @@is_bidi_platform : @@is_bidi_platform= -1
      end
      alias_method :attr_is_bidi_platform, :is_bidi_platform
      
      def is_bidi_platform=(value)
        @@is_bidi_platform = value
      end
      alias_method :attr_is_bidi_platform=, :is_bidi_platform=
      
      # getRenderInfo flag values
      const_set_lazy(:CLASSIN) { 1 }
      const_attr_reader  :CLASSIN
      
      const_set_lazy(:LINKBEFORE) { 2 }
      const_attr_reader  :LINKBEFORE
      
      const_set_lazy(:LINKAFTER) { 4 }
      const_attr_reader  :LINKAFTER
      
      # variables used for providing a listener mechanism for keyboard language
      # switching
      
      def language_map
        defined?(@@language_map) ? @@language_map : @@language_map= Hashtable.new
      end
      alias_method :attr_language_map, :language_map
      
      def language_map=(value)
        @@language_map = value
      end
      alias_method :attr_language_map=, :language_map=
      
      
      def key_map
        defined?(@@key_map) ? @@key_map : @@key_map= Hashtable.new
      end
      alias_method :attr_key_map, :key_map
      
      def key_map=(value)
        @@key_map = value
      end
      alias_method :attr_key_map=, :key_map=
      
      
      def old_proc_map
        defined?(@@old_proc_map) ? @@old_proc_map : @@old_proc_map= Hashtable.new
      end
      alias_method :attr_old_proc_map, :old_proc_map
      
      def old_proc_map=(value)
        @@old_proc_map = value
      end
      alias_method :attr_old_proc_map=, :old_proc_map=
      
      # This code is intentionally commented.  In order
      # to support CLDC, .class cannot be used because
      # it does not compile on some Java compilers when
      # they are targeted for CLDC.
      # 
      # static Callback callback = new Callback (BidiUtil.class, "windowProc", 4);
      const_set_lazy(:CLASS_NAME) { "org.eclipse.swt.internal.BidiUtil" }
      const_attr_reader  :CLASS_NAME
      
      # $NON-NLS-1$
      
      def callback
        defined?(@@callback) ? @@callback : @@callback= nil
      end
      alias_method :attr_callback, :callback
      
      def callback=(value)
        @@callback = value
      end
      alias_method :attr_callback=, :callback=
      
      when_class_loaded do
        begin
          self.attr_callback = Callback.new(Class.for_name(CLASS_NAME), "windowProc", 4) # $NON-NLS-1$
          if ((self.attr_callback.get_address).equal?(0))
            SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
          end
        rescue ClassNotFoundException => e
        end
      end
      
      # GetCharacterPlacement constants
      const_set_lazy(:GCP_REORDER) { 0x2 }
      const_attr_reader  :GCP_REORDER
      
      const_set_lazy(:GCP_GLYPHSHAPE) { 0x10 }
      const_attr_reader  :GCP_GLYPHSHAPE
      
      const_set_lazy(:GCP_LIGATE) { 0x20 }
      const_attr_reader  :GCP_LIGATE
      
      const_set_lazy(:GCP_CLASSIN) { 0x80000 }
      const_attr_reader  :GCP_CLASSIN
      
      const_set_lazy(:GCPCLASS_ARABIC) { 2 }
      const_attr_reader  :GCPCLASS_ARABIC
      
      const_set_lazy(:GCPCLASS_HEBREW) { 2 }
      const_attr_reader  :GCPCLASS_HEBREW
      
      const_set_lazy(:GCPCLASS_LOCALNUMBER) { 4 }
      const_attr_reader  :GCPCLASS_LOCALNUMBER
      
      const_set_lazy(:GCPCLASS_LATINNUMBER) { 5 }
      const_attr_reader  :GCPCLASS_LATINNUMBER
      
      const_set_lazy(:GCPGLYPH_LINKBEFORE) { 0x8000 }
      const_attr_reader  :GCPGLYPH_LINKBEFORE
      
      const_set_lazy(:GCPGLYPH_LINKAFTER) { 0x4000 }
      const_attr_reader  :GCPGLYPH_LINKAFTER
      
      # ExtTextOut constants
      const_set_lazy(:ETO_CLIPPED) { 0x4 }
      const_attr_reader  :ETO_CLIPPED
      
      const_set_lazy(:ETO_GLYPH_INDEX) { 0x10 }
      const_attr_reader  :ETO_GLYPH_INDEX
      
      # Windows primary language identifiers
      const_set_lazy(:LANG_ARABIC) { 0x1 }
      const_attr_reader  :LANG_ARABIC
      
      const_set_lazy(:LANG_HEBREW) { 0xd }
      const_attr_reader  :LANG_HEBREW
      
      # code page identifiers
      const_set_lazy(:CD_PG_HEBREW) { "1255" }
      const_attr_reader  :CD_PG_HEBREW
      
      # $NON-NLS-1$
      const_set_lazy(:CD_PG_ARABIC) { "1256" }
      const_attr_reader  :CD_PG_ARABIC
      
      # $NON-NLS-1$
      # ActivateKeyboard constants
      const_set_lazy(:HKL_NEXT) { 1 }
      const_attr_reader  :HKL_NEXT
      
      const_set_lazy(:HKL_PREV) { 0 }
      const_attr_reader  :HKL_PREV
      
      # Public character class constants are the same as Windows
      # platform constants.
      # Saves conversion of class array in getRenderInfo to arbitrary
      # constants for now.
      const_set_lazy(:CLASS_HEBREW) { GCPCLASS_ARABIC }
      const_attr_reader  :CLASS_HEBREW
      
      const_set_lazy(:CLASS_ARABIC) { GCPCLASS_HEBREW }
      const_attr_reader  :CLASS_ARABIC
      
      const_set_lazy(:CLASS_LOCALNUMBER) { GCPCLASS_LOCALNUMBER }
      const_attr_reader  :CLASS_LOCALNUMBER
      
      const_set_lazy(:CLASS_LATINNUMBER) { GCPCLASS_LATINNUMBER }
      const_attr_reader  :CLASS_LATINNUMBER
      
      const_set_lazy(:REORDER) { GCP_REORDER }
      const_attr_reader  :REORDER
      
      const_set_lazy(:LIGATE) { GCP_LIGATE }
      const_attr_reader  :LIGATE
      
      const_set_lazy(:GLYPHSHAPE) { GCP_GLYPHSHAPE }
      const_attr_reader  :GLYPHSHAPE
      
      typesig { [::Java::Int, Runnable] }
      # Adds a language listener. The listener will get notified when the language of
      # the keyboard changes (via Alt-Shift on Win platforms).  Do this by creating a
      # window proc for the Control so that the window messages for the Control can be
      # monitored.
      # <p>
      # 
      # @param hwnd the handle of the Control that is listening for keyboard language
      # changes
      # @param runnable the code that should be executed when a keyboard language change
      # occurs
      # 
      # long
      def add_language_listener(hwnd, runnable)
        self.attr_language_map.put(SwtLONG.new(hwnd), runnable)
        subclass(hwnd)
      end
      
      typesig { [Control, Runnable] }
      def add_language_listener(control, runnable)
        add_language_listener(control.attr_handle, runnable)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # Proc used for OS.EnumSystemLanguageGroups call during isBidiPlatform test.
      # 
      # long
      # long
      # long
      # long
      # long
      # long
      def _enum_system_language_groups_proc(lp_lang_grp_id, lp_lang_grp_id_string, lp_lang_grp_name, options, l_param)
        # 64
        if ((RJava.cast_to_int(lp_lang_grp_id)).equal?(OS::LGRPID_HEBREW))
          self.attr_is_bidi_platform = 1
          return 0
        end
        # 64
        if ((RJava.cast_to_int(lp_lang_grp_id)).equal?(OS::LGRPID_ARABIC))
          self.attr_is_bidi_platform = 1
          return 0
        end
        return 1
      end
      
      typesig { [SwtGC, Array.typed(::Java::Char), Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      # Wraps the ExtTextOut function.
      # <p>
      # 
      # @param gc the gc to use for rendering
      # @param renderBuffer the glyphs to render as an array of characters
      # @param renderDx the width of each glyph in renderBuffer
      # @param x x position to start rendering
      # @param y y position to start rendering
      def draw_glyphs(gc, render_buffer, render_dx, x, y)
        length = render_dx.attr_length
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(4, 10))
          if (!(OS._get_layout(gc.attr_handle)).equal?(0))
            reverse(render_dx)
            ((render_dx[length - 1] -= 1) + 1) # fixes bug 40006
            reverse(render_buffer)
          end
        end
        # render transparently to avoid overlapping segments. fixes bug 40006
        old_bk_mode = OS._set_bk_mode(gc.attr_handle, OS::TRANSPARENT)
        OS._ext_text_out_w(gc.attr_handle, x, y, ETO_GLYPH_INDEX, nil, render_buffer, render_buffer.attr_length, render_dx)
        OS._set_bk_mode(gc.attr_handle, old_bk_mode)
      end
      
      typesig { [SwtGC, String, Array.typed(::Java::Int), Array.typed(::Java::Byte), Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int)] }
      # Return ordering and rendering information for the given text.  Wraps the GetFontLanguageInfo
      # and GetCharacterPlacement functions.
      # <p>
      # 
      # @param gc the GC to use for measuring of this line, input parameter
      # @param text text that bidi data should be calculated for, input parameter
      # @param order an array of integers representing the visual position of each character in
      # the text array, output parameter
      # @param classBuffer an array of integers representing the type (e.g., ARABIC, HEBREW,
      # LOCALNUMBER) of each character in the text array, input/output parameter
      # @param dx an array of integers representing the pixel width of each glyph in the returned
      # glyph buffer, output parameter
      # @param flags an integer representing rendering flag information, input parameter
      # @param offsets text segments that should be measured and reordered separately, input
      # parameter. See org.eclipse.swt.custom.BidiSegmentEvent for details.
      # @return buffer with the glyphs that should be rendered for the given text
      def get_render_info(gc, text, order, class_buffer, dx, flags, offsets)
        font_language_info = OS._get_font_language_info(gc.attr_handle)
        # long
        h_heap = OS._get_process_heap
        lp_cs = Array.typed(::Java::Int).new(8) { 0 }
        cs = OS._get_text_charset(gc.attr_handle)
        is_right_oriented = false
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(4, 10))
          is_right_oriented = !(OS._get_layout(gc.attr_handle)).equal?(0)
        end
        OS._translate_charset_info(cs, lp_cs, OS::TCI_SRCCHARSET)
        text_buffer = TCHAR.new(lp_cs[1], text, false)
        byte_count = text_buffer.length
        link_before = ((flags & LINKBEFORE)).equal?(LINKBEFORE)
        link_after = ((flags & LINKAFTER)).equal?(LINKAFTER)
        result = GCP_RESULTS.new
        result.attr_l_struct_size = GCP_RESULTS.attr_sizeof
        result.attr_n_glyphs = byte_count
        # long
        lp_order = result.attr_lp_order = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count * 4)
        # long
        lp_dx = result.attr_lp_dx = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count * 4)
        # long
        lp_class = result.attr_lp_class = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
        # long
        lp_glyphs = result.attr_lp_glyphs = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count * 2)
        # set required dwFlags
        dw_flags = 0
        glyph_flags = 0
        # Always reorder.  We assume that if we are calling this function we're
        # on a platform that supports bidi.  Fixes 20690.
        dw_flags |= GCP_REORDER
        if (((font_language_info & GCP_LIGATE)).equal?(GCP_LIGATE))
          dw_flags |= GCP_LIGATE
          glyph_flags |= 0
        end
        if (((font_language_info & GCP_GLYPHSHAPE)).equal?(GCP_GLYPHSHAPE))
          dw_flags |= GCP_GLYPHSHAPE
          if (link_before)
            glyph_flags |= GCPGLYPH_LINKBEFORE
          end
          if (link_after)
            glyph_flags |= GCPGLYPH_LINKAFTER
          end
        end
        lp_glyphs2 = nil
        if (link_before || link_after)
          lp_glyphs2 = Array.typed(::Java::Byte).new(2) { 0 }
          lp_glyphs2[0] = glyph_flags
          lp_glyphs2[1] = (glyph_flags >> 8)
        else
          lp_glyphs2 = Array.typed(::Java::Byte).new([glyph_flags])
        end
        OS._move_memory(result.attr_lp_glyphs, lp_glyphs2, lp_glyphs2.attr_length)
        if (((flags & CLASSIN)).equal?(CLASSIN))
          # set classification values for the substring
          dw_flags |= GCP_CLASSIN
          OS._move_memory(result.attr_lp_class, class_buffer, class_buffer.attr_length)
        end
        glyph_buffer = CharArray.new(result.attr_n_glyphs)
        glyph_count = 0
        i = 0
        while i < offsets.attr_length - 1
          offset = offsets[i]
          length_ = offsets[i + 1] - offsets[i]
          # The number of glyphs expected is <= length (segment length);
          # the actual number returned may be less in case of Arabic ligatures.
          result.attr_n_glyphs = length_
          text_buffer2 = TCHAR.new(lp_cs[1], text.substring(offset, offset + length_), false)
          OS._get_character_placement(gc.attr_handle, text_buffer2, text_buffer2.length, 0, result, dw_flags)
          if (!(dx).nil?)
            dx2 = Array.typed(::Java::Int).new(result.attr_n_glyphs) { 0 }
            OS._move_memory(dx2, result.attr_lp_dx, dx2.attr_length * 4)
            if (is_right_oriented)
              reverse(dx2)
            end
            System.arraycopy(dx2, 0, dx, glyph_count, dx2.attr_length)
          end
          if (!(order).nil?)
            order2 = Array.typed(::Java::Int).new(length_) { 0 }
            OS._move_memory(order2, result.attr_lp_order, order2.attr_length * 4)
            translate_order(order2, glyph_count, is_right_oriented)
            System.arraycopy(order2, 0, order, offset, length_)
          end
          if (!(class_buffer).nil?)
            class_buffer2 = Array.typed(::Java::Byte).new(length_) { 0 }
            OS._move_memory(class_buffer2, result.attr_lp_class, class_buffer2.attr_length)
            System.arraycopy(class_buffer2, 0, class_buffer, offset, length_)
          end
          glyph_buffer2 = CharArray.new(result.attr_n_glyphs)
          OS._move_memory(glyph_buffer2, result.attr_lp_glyphs, glyph_buffer2.attr_length * 2)
          if (is_right_oriented)
            reverse(glyph_buffer2)
          end
          System.arraycopy(glyph_buffer2, 0, glyph_buffer, glyph_count, glyph_buffer2.attr_length)
          glyph_count += glyph_buffer2.attr_length
          # We concatenate successive results of calls to GCP.
          # For Arabic, it is the only good method since the number of output
          # glyphs might be less than the number of input characters.
          # This assumes that the whole line is built by successive adjacent
          # segments without overlapping.
          result.attr_lp_order += length_ * 4
          result.attr_lp_dx += length_ * 4
          result.attr_lp_class += length_
          result.attr_lp_glyphs += glyph_buffer2.attr_length * 2
          ((i += 1) - 1)
        end
        # Free the memory that was allocated.
        OS._heap_free(h_heap, 0, lp_glyphs)
        OS._heap_free(h_heap, 0, lp_class)
        OS._heap_free(h_heap, 0, lp_dx)
        OS._heap_free(h_heap, 0, lp_order)
        return glyph_buffer
      end
      
      typesig { [SwtGC, String, Array.typed(::Java::Int), Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      # Return bidi ordering information for the given text.  Does not return rendering
      # information (e.g., glyphs, glyph distances).  Use this method when you only need
      # ordering information.  Doing so will improve performance.  Wraps the
      # GetFontLanguageInfo and GetCharacterPlacement functions.
      # <p>
      # 
      # @param gc the GC to use for measuring of this line, input parameter
      # @param text text that bidi data should be calculated for, input parameter
      # @param order an array of integers representing the visual position of each character in
      # the text array, output parameter
      # @param classBuffer an array of integers representing the type (e.g., ARABIC, HEBREW,
      # LOCALNUMBER) of each character in the text array, input/output parameter
      # @param flags an integer representing rendering flag information, input parameter
      # @param offsets text segments that should be measured and reordered separately, input
      # parameter. See org.eclipse.swt.custom.BidiSegmentEvent for details.
      def get_order_info(gc, text, order, class_buffer, flags, offsets)
        font_language_info = OS._get_font_language_info(gc.attr_handle)
        # long
        h_heap = OS._get_process_heap
        lp_cs = Array.typed(::Java::Int).new(8) { 0 }
        cs = OS._get_text_charset(gc.attr_handle)
        OS._translate_charset_info(cs, lp_cs, OS::TCI_SRCCHARSET)
        text_buffer = TCHAR.new(lp_cs[1], text, false)
        byte_count = text_buffer.length
        is_right_oriented = false
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(4, 10))
          is_right_oriented = !(OS._get_layout(gc.attr_handle)).equal?(0)
        end
        result = GCP_RESULTS.new
        result.attr_l_struct_size = GCP_RESULTS.attr_sizeof
        result.attr_n_glyphs = byte_count
        # long
        lp_order = result.attr_lp_order = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count * 4)
        # long
        lp_class = result.attr_lp_class = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
        # set required dwFlags, these values will affect how the text gets rendered and
        # ordered
        dw_flags = 0
        # Always reorder.  We assume that if we are calling this function we're
        # on a platform that supports bidi.  Fixes 20690.
        dw_flags |= GCP_REORDER
        if (((font_language_info & GCP_LIGATE)).equal?(GCP_LIGATE))
          dw_flags |= GCP_LIGATE
        end
        if (((font_language_info & GCP_GLYPHSHAPE)).equal?(GCP_GLYPHSHAPE))
          dw_flags |= GCP_GLYPHSHAPE
        end
        if (((flags & CLASSIN)).equal?(CLASSIN))
          # set classification values for the substring, classification values
          # can be specified on input
          dw_flags |= GCP_CLASSIN
          OS._move_memory(result.attr_lp_class, class_buffer, class_buffer.attr_length)
        end
        glyph_count = 0
        i = 0
        while i < offsets.attr_length - 1
          offset = offsets[i]
          length_ = offsets[i + 1] - offsets[i]
          # The number of glyphs expected is <= length (segment length);
          # the actual number returned may be less in case of Arabic ligatures.
          result.attr_n_glyphs = length_
          text_buffer2 = TCHAR.new(lp_cs[1], text.substring(offset, offset + length_), false)
          OS._get_character_placement(gc.attr_handle, text_buffer2, text_buffer2.length, 0, result, dw_flags)
          if (!(order).nil?)
            order2 = Array.typed(::Java::Int).new(length_) { 0 }
            OS._move_memory(order2, result.attr_lp_order, order2.attr_length * 4)
            translate_order(order2, glyph_count, is_right_oriented)
            System.arraycopy(order2, 0, order, offset, length_)
          end
          if (!(class_buffer).nil?)
            class_buffer2 = Array.typed(::Java::Byte).new(length_) { 0 }
            OS._move_memory(class_buffer2, result.attr_lp_class, class_buffer2.attr_length)
            System.arraycopy(class_buffer2, 0, class_buffer, offset, length_)
          end
          glyph_count += result.attr_n_glyphs
          # We concatenate successive results of calls to GCP.
          # For Arabic, it is the only good method since the number of output
          # glyphs might be less than the number of input characters.
          # This assumes that the whole line is built by successive adjacent
          # segments without overlapping.
          result.attr_lp_order += length_ * 4
          result.attr_lp_class += length_
          ((i += 1) - 1)
        end
        # Free the memory that was allocated.
        OS._heap_free(h_heap, 0, lp_class)
        OS._heap_free(h_heap, 0, lp_order)
      end
      
      typesig { [SwtGC] }
      # Return bidi attribute information for the font in the specified gc.
      # <p>
      # 
      # @param gc the gc to query
      # @return bitwise OR of the REORDER, LIGATE and GLYPHSHAPE flags
      # defined by this class.
      def get_font_bidi_attributes(gc)
        font_style = 0
        font_language_info = OS._get_font_language_info(gc.attr_handle)
        if ((!((font_language_info & GCP_REORDER)).equal?(0)))
          font_style |= REORDER
        end
        if ((!((font_language_info & GCP_LIGATE)).equal?(0)))
          font_style |= LIGATE
        end
        if ((!((font_language_info & GCP_GLYPHSHAPE)).equal?(0)))
          font_style |= GLYPHSHAPE
        end
        return font_style
      end
      
      typesig { [] }
      # Return the active keyboard language type.
      # <p>
      # 
      # @return an integer representing the active keyboard language (KEYBOARD_BIDI,
      # KEYBOARD_NON_BIDI)
      def get_keyboard_language
        # long
        layout = OS._get_keyboard_layout(0)
        lang_id = OS._primarylangid(OS._loword(layout))
        if ((lang_id).equal?(LANG_HEBREW))
          return KEYBOARD_BIDI
        end
        if ((lang_id).equal?(LANG_ARABIC))
          return KEYBOARD_BIDI
        end
        # return non-bidi for all other languages
        return KEYBOARD_NON_BIDI
      end
      
      typesig { [] }
      # Return the languages that are installed for the keyboard.
      # <p>
      # 
      # @return integer array with an entry for each installed language
      # 
      # long
      def get_keyboard_language_list
        max_size = 10
        # long
        # long
        temp_list = Array.typed(::Java::Int).new(max_size) { 0 }
        size = OS._get_keyboard_layout_list(max_size, temp_list)
        # long
        # long
        list = Array.typed(::Java::Int).new(size) { 0 }
        System.arraycopy(temp_list, 0, list, 0, size)
        return list
      end
      
      typesig { [] }
      # Return whether or not the platform supports a bidi language.  Determine this
      # by looking at the languages that are installed.
      # <p>
      # 
      # @return true if bidi is supported, false otherwise. Always
      # false on Windows CE.
      def is_bidi_platform
        if (OS::IsWinCE)
          return false
        end
        if (!(self.attr_is_bidi_platform).equal?(-1))
          return (self.attr_is_bidi_platform).equal?(1)
        end # already set
        self.attr_is_bidi_platform = 0
        # The following test is a workaround for bug report 27629. On WinXP,
        # both bidi and complex script (e.g., Thai) languages must be installed
        # at the same time.  Since the bidi platform calls do not support
        # double byte characters, there is no way to run Eclipse using the
        # complex script languages on XP, so constrain this test to answer true
        # only if a bidi input language is defined.  Doing so will allow complex
        # script languages to work (e.g., one can install bidi and complex script
        # languages, but only install the Thai keyboard).
        if (!is_keyboard_bidi)
          return false
        end
        callback = nil
        begin
          callback = Callback.new(Class.for_name(CLASS_NAME), "EnumSystemLanguageGroupsProc", 5) # $NON-NLS-1$
          # long
          lp_enum_system_language_groups_proc = callback.get_address
          if ((lp_enum_system_language_groups_proc).equal?(0))
            SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
          end
          OS._enum_system_language_groups(lp_enum_system_language_groups_proc, OS::LGRPID_INSTALLED, 0)
          callback.dispose
        rescue ClassNotFoundException => e
          if (!(callback).nil?)
            callback.dispose
          end
        end
        if ((self.attr_is_bidi_platform).equal?(1))
          return true
        end
        # need to look at system code page for NT & 98 platforms since EnumSystemLanguageGroups is
        # not supported for these platforms
        code_page = String.value_of(OS._get_acp)
        if ((CD_PG_ARABIC == code_page) || (CD_PG_HEBREW == code_page))
          self.attr_is_bidi_platform = 1
        end
        return (self.attr_is_bidi_platform).equal?(1)
      end
      
      typesig { [] }
      # Return whether or not the keyboard supports input of a bidi language.  Determine this
      # by looking at the languages that are installed for the keyboard.
      # <p>
      # 
      # @return true if bidi is supported, false otherwise.
      def is_keyboard_bidi
        # long
        list = get_keyboard_language_list
        i = 0
        while i < list.attr_length
          id = OS._primarylangid(OS._loword(list[i]))
          if (((id).equal?(LANG_ARABIC)) || ((id).equal?(LANG_HEBREW)))
            return true
          end
          ((i += 1) - 1)
        end
        return false
      end
      
      typesig { [::Java::Int] }
      # Removes the specified language listener.
      # <p>
      # 
      # @param hwnd the handle of the Control that is listening for keyboard language changes
      # 
      # long
      def remove_language_listener(hwnd)
        self.attr_language_map.remove(SwtLONG.new(hwnd))
        unsubclass(hwnd)
      end
      
      typesig { [Control] }
      def remove_language_listener(control)
        remove_language_listener(control.attr_handle)
      end
      
      typesig { [::Java::Int] }
      # Switch the keyboard language to the specified language type.  We do
      # not distinguish between multiple bidi or multiple non-bidi languages, so
      # set the keyboard to the first language of the given type.
      # <p>
      # 
      # @param language integer representing language. One of
      # KEYBOARD_BIDI, KEYBOARD_NON_BIDI.
      def set_keyboard_language(language)
        # don't switch the keyboard if it doesn't need to be
        if ((language).equal?(get_keyboard_language))
          return
        end
        if ((language).equal?(KEYBOARD_BIDI))
          # get the list of active languages
          # long
          list = get_keyboard_language_list
          # set to first bidi language
          i = 0
          while i < list.attr_length
            id = OS._primarylangid(OS._loword(list[i]))
            if (((id).equal?(LANG_ARABIC)) || ((id).equal?(LANG_HEBREW)))
              OS._activate_keyboard_layout(list[i], 0)
              return
            end
            ((i += 1) - 1)
          end
        else
          # get the list of active languages
          # long
          list = get_keyboard_language_list
          # set to the first non-bidi language (anything not
          # Hebrew or Arabic)
          i = 0
          while i < list.attr_length
            id = OS._primarylangid(OS._loword(list[i]))
            if ((!(id).equal?(LANG_HEBREW)) && (!(id).equal?(LANG_ARABIC)))
              OS._activate_keyboard_layout(list[i], 0)
              return
            end
            ((i += 1) - 1)
          end
        end
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # Sets the orientation (writing order) of the specified control. Text will
      # be right aligned for right to left writing order.
      # <p>
      # 
      # @param hwnd the handle of the Control to change the orientation of
      # @param orientation one of SWT.RIGHT_TO_LEFT or SWT.LEFT_TO_RIGHT
      # @return true if the orientation was changed, false if the orientation
      # could not be changed
      # 
      # long
      def set_orientation(hwnd, orientation)
        if (OS::IsWinCE)
          return false
        end
        if (OS::WIN32_VERSION < OS._version(4, 10))
          return false
        end
        bits = OS._get_window_long(hwnd, OS::GWL_EXSTYLE)
        if (!((orientation & SWT::RIGHT_TO_LEFT)).equal?(0))
          bits |= OS::WS_EX_LAYOUTRTL
        else
          bits &= ~OS::WS_EX_LAYOUTRTL
        end
        OS._set_window_long(hwnd, OS::GWL_EXSTYLE, bits)
        return true
      end
      
      typesig { [Control, ::Java::Int] }
      def set_orientation(control, orientation)
        return set_orientation(control.attr_handle, orientation)
      end
      
      typesig { [::Java::Int] }
      # Override the window proc.
      # 
      # @param hwnd control to override the window proc of
      # 
      # long
      def subclass(hwnd)
        key = SwtLONG.new(hwnd)
        if ((self.attr_old_proc_map.get(key)).nil?)
          # long
          old_proc = OS._get_window_long_ptr(hwnd, OS::GWLP_WNDPROC)
          self.attr_old_proc_map.put(key, SwtLONG.new(old_proc))
          OS._set_window_long_ptr(hwnd, OS::GWLP_WNDPROC, self.attr_callback.get_address)
        end
      end
      
      typesig { [Array.typed(::Java::Char)] }
      # Reverse the character array.  Used for right orientation.
      # 
      # @param charArray character array to reverse
      def reverse(char_array)
        length_ = char_array.attr_length
        i = 0
        while i <= (length_ - 1) / 2
          tmp = char_array[i]
          char_array[i] = char_array[length_ - 1 - i]
          char_array[length_ - 1 - i] = tmp
          ((i += 1) - 1)
        end
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # Reverse the integer array.  Used for right orientation.
      # 
      # @param intArray integer array to reverse
      def reverse(int_array)
        length_ = int_array.attr_length
        i = 0
        while i <= (length_ - 1) / 2
          tmp = int_array[i]
          int_array[i] = int_array[length_ - 1 - i]
          int_array[length_ - 1 - i] = tmp
          ((i += 1) - 1)
        end
      end
      
      typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Boolean] }
      # Adjust the order array so that it is relative to the start of the line.  Also reverse the order array if the orientation
      # is to the right.
      # 
      # @param orderArray  integer array of order values to translate
      # @param glyphCount  number of glyphs that have been processed for the current line
      # @param isRightOriented  flag indicating whether or not current orientation is to the right
      def translate_order(order_array, glyph_count, is_right_oriented)
        max_order = 0
        length_ = order_array.attr_length
        if (is_right_oriented)
          i = 0
          while i < length_
            max_order = Math.max(max_order, order_array[i])
            ((i += 1) - 1)
          end
        end
        i = 0
        while i < length_
          if (is_right_oriented)
            order_array[i] = max_order - order_array[i]
          end
          order_array[i] += glyph_count
          ((i += 1) - 1)
        end
      end
      
      typesig { [::Java::Int] }
      # Remove the overridden the window proc.
      # 
      # @param hwnd control to remove the window proc override for
      # 
      # long
      def unsubclass(hwnd)
        key = SwtLONG.new(hwnd)
        if ((self.attr_language_map.get(key)).nil? && (self.attr_key_map.get(key)).nil?)
          proc = self.attr_old_proc_map.remove(key)
          if ((proc).nil?)
            return
          end
          OS._set_window_long_ptr(hwnd, OS::GWLP_WNDPROC, proc.attr_value)
        end
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # Window proc to intercept keyboard language switch event (WS_INPUTLANGCHANGE)
      # and widget orientation changes.
      # Run the Control's registered runnable when the keyboard language is switched.
      # 
      # @param hwnd handle of the control that is listening for the keyboard language
      # change event
      # @param msg window message
      # 
      # long
      # long
      # long
      # long
      # long
      def window_proc(hwnd, msg, w_param, l_param)
        key = SwtLONG.new(hwnd)
        # 64
        case (RJava.cast_to_int(msg))
        # OS.WM_INPUTLANGCHANGE
        when 0x51
          runnable = self.attr_language_map.get(key)
          if (!(runnable).nil?)
            runnable.run
          end
        end
        old_proc = self.attr_old_proc_map.get(key)
        # 64
        return OS._call_window_proc(old_proc.attr_value, hwnd, RJava.cast_to_int(msg), w_param, l_param)
      end
    }
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__bidi_util, :initialize
  end
  
end
