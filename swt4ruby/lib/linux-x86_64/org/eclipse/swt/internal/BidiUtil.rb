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
  module BidiUtilImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal
      include_const ::Org::Eclipse::Swt::Graphics, :SwtGC
      include_const ::Org::Eclipse::Swt::Widgets, :Control
    }
  end
  
  # This class is supplied so that the StyledText code that supports bidi text (supported
  # for win platforms) is not platform dependent.  Bidi text is not implemented on
  # emulated platforms.
  class BidiUtil 
    include_class_members BidiUtilImports
    
    class_module.module_eval {
      # Keyboard language types
      const_set_lazy(:KEYBOARD_NON_BIDI) { 0 }
      const_attr_reader  :KEYBOARD_NON_BIDI
      
      const_set_lazy(:KEYBOARD_BIDI) { 1 }
      const_attr_reader  :KEYBOARD_BIDI
      
      # bidi rendering input flag constants, not used
      # on emulated platforms
      const_set_lazy(:CLASSIN) { 1 }
      const_attr_reader  :CLASSIN
      
      const_set_lazy(:LINKBEFORE) { 2 }
      const_attr_reader  :LINKBEFORE
      
      const_set_lazy(:LINKAFTER) { 4 }
      const_attr_reader  :LINKAFTER
      
      # bidi rendering/ordering constants, not used on
      # emulated platforms
      const_set_lazy(:CLASS_HEBREW) { 2 }
      const_attr_reader  :CLASS_HEBREW
      
      const_set_lazy(:CLASS_ARABIC) { 2 }
      const_attr_reader  :CLASS_ARABIC
      
      const_set_lazy(:CLASS_LOCALNUMBER) { 4 }
      const_attr_reader  :CLASS_LOCALNUMBER
      
      const_set_lazy(:CLASS_LATINNUMBER) { 5 }
      const_attr_reader  :CLASS_LATINNUMBER
      
      const_set_lazy(:REORDER) { 0 }
      const_attr_reader  :REORDER
      
      const_set_lazy(:LIGATE) { 0 }
      const_attr_reader  :LIGATE
      
      const_set_lazy(:GLYPHSHAPE) { 0 }
      const_attr_reader  :GLYPHSHAPE
      
      typesig { [::Java::Long, Runnable] }
      # Not implemented.
      # 
      # int
      def add_language_listener(hwnd, runnable)
      end
      
      typesig { [Control, Runnable] }
      def add_language_listener(control, runnable)
      end
      
      typesig { [SwtGC, Array.typed(::Java::Char), Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      # Not implemented.
      def draw_glyphs(gc, render_buffer, render_dx, x, y)
      end
      
      typesig { [] }
      # Bidi not supported on emulated platforms.
      def is_bidi_platform
        return false
      end
      
      typesig { [] }
      # Not implemented.
      def is_keyboard_bidi
        return false
      end
      
      typesig { [SwtGC] }
      # Not implemented.
      def get_font_bidi_attributes(gc)
        return 0
      end
      
      typesig { [SwtGC, String, Array.typed(::Java::Int), Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      # Not implemented.
      def get_order_info(gc, text, order, class_buffer, flags, offsets)
      end
      
      typesig { [SwtGC, String, Array.typed(::Java::Int), Array.typed(::Java::Byte), Array.typed(::Java::Int), ::Java::Int, Array.typed(::Java::Int)] }
      # Not implemented. Returns null.
      def get_render_info(gc, text, order, class_buffer, dx, flags, offsets)
        return nil
      end
      
      typesig { [] }
      # Not implemented. Returns 0.
      def get_keyboard_language
        return 0
      end
      
      typesig { [::Java::Long] }
      # Not implemented.
      # 
      # int
      def remove_language_listener(hwnd)
      end
      
      typesig { [Control] }
      def remove_language_listener(control)
      end
      
      typesig { [::Java::Int] }
      # Not implemented.
      def set_keyboard_language(language)
      end
      
      typesig { [::Java::Long, ::Java::Int] }
      # Not implemented.
      # 
      # int
      def set_orientation(hwnd, orientation)
        return false
      end
      
      typesig { [Control, ::Java::Int] }
      def set_orientation(control, orientation)
        return false
      end
    }
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__bidi_util, :initialize
  end
  
end
