require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Theme
  module DrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HIThemeTextInfo
    }
  end
  
  class DrawData 
    include_class_members DrawDataImports
    
    attr_accessor :style
    alias_method :attr_style, :style
    undef_method :style
    alias_method :attr_style=, :style=
    undef_method :style=
    
    attr_accessor :state
    alias_method :attr_state, :state
    undef_method :state
    alias_method :attr_state=, :state=
    undef_method :state=
    
    attr_accessor :client_area
    alias_method :attr_client_area, :client_area
    undef_method :client_area
    alias_method :attr_client_area=, :client_area=
    undef_method :client_area=
    
    class_module.module_eval {
      # Part states
      const_set_lazy(:SELECTED) { 1 << 1 }
      const_attr_reader  :SELECTED
      
      const_set_lazy(:FOCUSED) { 1 << 2 }
      const_attr_reader  :FOCUSED
      
      const_set_lazy(:PRESSED) { 1 << 3 }
      const_attr_reader  :PRESSED
      
      const_set_lazy(:ACTIVE) { 1 << 4 }
      const_attr_reader  :ACTIVE
      
      const_set_lazy(:DISABLED) { 1 << 5 }
      const_attr_reader  :DISABLED
      
      const_set_lazy(:HOT) { 1 << 6 }
      const_attr_reader  :HOT
      
      const_set_lazy(:DEFAULTED) { 1 << 7 }
      const_attr_reader  :DEFAULTED
      
      const_set_lazy(:GRAYED) { 1 << 8 }
      const_attr_reader  :GRAYED
      
      # Text and Image drawing flags
      const_set_lazy(:DRAW_LEFT) { 1 << 4 }
      const_attr_reader  :DRAW_LEFT
      
      const_set_lazy(:DRAW_TOP) { 1 << 5 }
      const_attr_reader  :DRAW_TOP
      
      const_set_lazy(:DRAW_RIGHT) { 1 << 6 }
      const_attr_reader  :DRAW_RIGHT
      
      const_set_lazy(:DRAW_BOTTOM) { 1 << 7 }
      const_attr_reader  :DRAW_BOTTOM
      
      const_set_lazy(:DRAW_HCENTER) { 1 << 8 }
      const_attr_reader  :DRAW_HCENTER
      
      const_set_lazy(:DRAW_VCENTER) { 1 << 9 }
      const_attr_reader  :DRAW_VCENTER
      
      # Widget parts
      const_set_lazy(:WIDGET_NOWHERE) { -1 }
      const_attr_reader  :WIDGET_NOWHERE
      
      const_set_lazy(:WIDGET_WHOLE) { 0 }
      const_attr_reader  :WIDGET_WHOLE
      
      # Scrollbar parts
      const_set_lazy(:SCROLLBAR_UP_ARROW) { 1 }
      const_attr_reader  :SCROLLBAR_UP_ARROW
      
      const_set_lazy(:SCROLLBAR_DOWN_ARROW) { 2 }
      const_attr_reader  :SCROLLBAR_DOWN_ARROW
      
      const_set_lazy(:SCROLLBAR_LEFT_ARROW) { SCROLLBAR_UP_ARROW }
      const_attr_reader  :SCROLLBAR_LEFT_ARROW
      
      const_set_lazy(:SCROLLBAR_RIGHT_ARROW) { SCROLLBAR_DOWN_ARROW }
      const_attr_reader  :SCROLLBAR_RIGHT_ARROW
      
      const_set_lazy(:SCROLLBAR_UP_TRACK) { 3 }
      const_attr_reader  :SCROLLBAR_UP_TRACK
      
      const_set_lazy(:SCROLLBAR_DOWN_TRACK) { 4 }
      const_attr_reader  :SCROLLBAR_DOWN_TRACK
      
      const_set_lazy(:SCROLLBAR_LEFT_TRACK) { SCROLLBAR_UP_TRACK }
      const_attr_reader  :SCROLLBAR_LEFT_TRACK
      
      const_set_lazy(:SCROLLBAR_RIGHT_TRACK) { SCROLLBAR_DOWN_TRACK }
      const_attr_reader  :SCROLLBAR_RIGHT_TRACK
      
      const_set_lazy(:SCROLLBAR_THUMB) { 5 }
      const_attr_reader  :SCROLLBAR_THUMB
      
      # Scale parts
      const_set_lazy(:SCALE_UP_TRACK) { 1 }
      const_attr_reader  :SCALE_UP_TRACK
      
      const_set_lazy(:SCALE_LEFT_TRACK) { SCALE_UP_TRACK }
      const_attr_reader  :SCALE_LEFT_TRACK
      
      const_set_lazy(:SCALE_DOWN_TRACK) { 2 }
      const_attr_reader  :SCALE_DOWN_TRACK
      
      const_set_lazy(:SCALE_RIGHT_TRACK) { SCALE_DOWN_TRACK }
      const_attr_reader  :SCALE_RIGHT_TRACK
      
      const_set_lazy(:SCALE_THUMB) { 3 }
      const_attr_reader  :SCALE_THUMB
      
      # ToolItem parts
      const_set_lazy(:TOOLITEM_ARROW) { 1 }
      const_attr_reader  :TOOLITEM_ARROW
      
      # Combo parts
      const_set_lazy(:COMBO_ARROW) { 1 }
      const_attr_reader  :COMBO_ARROW
    }
    
    typesig { [] }
    def initialize
      @style = 0
      @state = nil
      @client_area = nil
      @state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    typesig { [Theme, SwtGC] }
    def compute_trim(theme, gc)
      return Rectangle.new(@client_area.attr_x, @client_area.attr_y, @client_area.attr_width, @client_area.attr_height)
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
    end
    
    typesig { [Theme, Image, SwtGC, Rectangle] }
    def draw_image(theme, image, gc, bounds)
      draw_image = image
      rect = draw_image.get_bounds
      state = @state[DrawData::WIDGET_WHOLE]
      if (OS::VERSION >= 0x1040)
        if (!((state & (DrawData::PRESSED | DrawData::DISABLED))).equal?(0))
          transform = OS.attr_k_hitransform_none
          if (!((state & DrawData::DISABLED)).equal?(0))
            transform = OS.attr_k_hitransform_disabled
          else
            if (!((state & DrawData::PRESSED)).equal?(0))
              transform = OS.attr_k_hitransform_selected
            end
          end
          if (!(transform).equal?(OS.attr_k_hitransform_none))
            buffer = Array.typed(::Java::Int).new(1) { 0 }
            OS._hicreate_transformed_cgimage(draw_image.attr_handle, transform, buffer)
            if (!(buffer[0]).equal?(0))
              # TODO - get device
              # TODO - is data needed
              draw_image = Image.carbon_new(nil, draw_image.attr_type, buffer[0], 0)
            end
          end
        end
      end
      gc.draw_image(draw_image, 0, 0, rect.attr_width, rect.attr_height, bounds.attr_x, bounds.attr_y, bounds.attr_width, bounds.attr_height)
      if (!(draw_image).equal?(image))
        draw_image.dispose
      end
    end
    
    typesig { [Theme, String, ::Java::Int, SwtGC, Rectangle] }
    def draw_text(theme, text, flags, gc, bounds)
      state = @state[DrawData::WIDGET_WHOLE]
      chars = CharArray.new(text.length)
      text.get_chars(0, chars.attr_length, chars, 0)
      ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, chars, chars.attr_length)
      OS._cgcontext_save_gstate(gc.attr_handle)
      if (!((state & DrawData::DISABLED)).equal?(0))
        # TODO - find out disable color
        OS._cgcontext_set_fill_color(gc.attr_handle, Array.typed(::Java::Float).new([0.5, 0.5, 0.5, 1]))
      else
        if (!((state & DrawData::ACTIVE)).equal?(0))
          OS._cgcontext_set_fill_color(gc.attr_handle, Array.typed(::Java::Float).new([0, 0, 0, 1]))
        else
          # TODO - find out inative color
          OS._cgcontext_set_fill_color(gc.attr_handle, Array.typed(::Java::Float).new([0.6, 0.6, 0.6, 1]))
        end
      end
      rect = CGRect.new
      rect.attr_x = bounds.attr_x
      rect.attr_y = bounds.attr_y
      rect.attr_width = bounds.attr_width
      rect.attr_height = bounds.attr_height
      info = get_text_info(flags)
      OS._hitheme_draw_text_box(ptr, rect, info, gc.attr_handle, OS.attr_k_hitheme_orientation_normal)
      OS._cgcontext_restore_gstate(gc.attr_handle)
      OS._cfrelease(ptr)
    end
    
    typesig { [::Java::Int, Rectangle] }
    def get_bounds(part, bounds)
      return Rectangle.new(bounds.attr_x, bounds.attr_y, bounds.attr_width, bounds.attr_height)
    end
    
    typesig { [] }
    def get_font_id
      return OS.attr_k_theme_small_system_font
    end
    
    typesig { [::Java::Int] }
    def get_text_info(flags)
      state = @state[DrawData::WIDGET_WHOLE]
      info = HIThemeTextInfo.new
      if (!((state & DrawData::PRESSED)).equal?(0))
        info.attr_state = OS.attr_k_theme_state_pressed
      else
        if (!((state & DrawData::ACTIVE)).equal?(0))
          info.attr_state = ((state & DrawData::DISABLED)).equal?(0) ? OS.attr_k_theme_state_active : OS.attr_k_theme_state_unavailable
        else
          info.attr_state = ((state & DrawData::DISABLED)).equal?(0) ? OS.attr_k_theme_state_inactive : OS.attr_k_theme_state_unavailable_inactive
        end
      end
      info.attr_state = info.attr_state
      info.attr_font_id = RJava.cast_to_short(get_font_id)
      if (!((flags & DrawData::DRAW_LEFT)).equal?(0))
        info.attr_horizontal_flushness = OS.attr_k_hitheme_text_horizontal_flush_left
      end
      if (!((flags & DrawData::DRAW_HCENTER)).equal?(0))
        info.attr_horizontal_flushness = OS.attr_k_hitheme_text_horizontal_flush_center
      end
      if (!((flags & DrawData::DRAW_RIGHT)).equal?(0))
        info.attr_horizontal_flushness = OS.attr_k_hitheme_text_horizontal_flush_right
      end
      if (!((flags & DrawData::DRAW_TOP)).equal?(0))
        info.attr_vertical_flushness = OS.attr_k_hitheme_text_vertical_flush_top
      end
      if (!((flags & DrawData::DRAW_VCENTER)).equal?(0))
        info.attr_vertical_flushness = OS.attr_k_hitheme_text_vertical_flush_center
      end
      if (!((flags & DrawData::DRAW_BOTTOM)).equal?(0))
        info.attr_vertical_flushness = OS.attr_k_hitheme_text_vertical_flush_bottom
      end
      info.attr_truncation_max_lines = 0
      info.attr_truncation_position = 0
      info.attr_options = 0
      return info
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      return -1
    end
    
    typesig { [Theme, String, ::Java::Int, SwtGC, Rectangle] }
    def measure_text(theme, text, flags, gc, bounds)
      # TODO - decide if should take only width and return only width/height
      chars = CharArray.new(text.length)
      text.get_chars(0, chars.attr_length, chars, 0)
      ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, chars, chars.attr_length)
      width = !(bounds).nil? ? bounds.attr_width : 0
      out_width = Array.typed(::Java::Float).new(1) { 0.0 }
      out_height = Array.typed(::Java::Float).new(1) { 0.0 }
      info = get_text_info(flags)
      OS._hitheme_get_text_dimensions(ptr, width, info, out_width, out_height, nil)
      OS._cfrelease(ptr)
      return Rectangle.new(0, 0, RJava.cast_to_int(out_width[0]), RJava.cast_to_int(out_height[0]))
    end
    
    private
    alias_method :initialize__draw_data, :initialize
  end
  
end
