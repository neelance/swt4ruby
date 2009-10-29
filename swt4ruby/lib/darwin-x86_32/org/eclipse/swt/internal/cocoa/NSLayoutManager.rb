require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module NSLayoutManagerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSLayoutManager < NSLayoutManagerImports.const_get :NSObject
    include_class_members NSLayoutManagerImports
    
    typesig { [] }
    def initialize
      super()
    end
    
    typesig { [::Java::Int] }
    # long
    def initialize(id)
      super(id)
    end
    
    typesig { [Id] }
    def initialize(id)
      super(id)
    end
    
    typesig { [NSString, Id, NSRange] }
    def add_temporary_attribute(attr_name, value, char_range)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_temporary_attribute_value_for_character_range_, !(attr_name).nil? ? attr_name.attr_id : 0, !(value).nil? ? value.attr_id : 0, char_range)
    end
    
    typesig { [NSTextContainer] }
    def add_text_container(container)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_text_container_, !(container).nil? ? container.attr_id : 0)
    end
    
    typesig { [NSRange, NSTextContainer] }
    def bounding_rect_for_glyph_range(glyph_range, container)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_bounding_rect_for_glyph_range_in_text_container_, glyph_range, !(container).nil? ? container.attr_id : 0)
      return result
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def character_index_for_glyph_at_index(glyph_index)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_character_index_for_glyph_at_index_, glyph_index)
    end
    
    typesig { [NSFont] }
    # double
    def default_baseline_offset_for_font(the_font)
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_default_baseline_offset_for_font_, !(the_font).nil? ? the_font.attr_id : 0)).to_f
    end
    
    typesig { [NSFont] }
    # double
    def default_line_height_for_font(the_font)
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_default_line_height_for_font_, !(the_font).nil? ? the_font.attr_id : 0)).to_f
    end
    
    typesig { [NSRange, NSPoint] }
    def draw_background_for_glyph_range(glyphs_to_show, origin)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_draw_background_for_glyph_range_at_point_, glyphs_to_show, origin)
    end
    
    typesig { [NSRange, NSPoint] }
    def draw_glyphs_for_glyph_range(glyphs_to_show, origin)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_draw_glyphs_for_glyph_range_at_point_, glyphs_to_show, origin)
    end
    
    typesig { [::Java::Int, NSRange] }
    # long
    # long
    def get_glyphs(glyph_array, glyph_range)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_get_glyphs_range_, glyph_array, glyph_range)
    end
    
    typesig { [NSRange, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def get_glyphs_in_range(glyph_range, glyph_buffer, char_index_buffer, inscribe_buffer, elastic_buffer, bidi_level_buffer)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_get_glyphs_in_range_glyphs_character_indexes_glyph_inscriptions_elastic_bits_bidi_levels_, glyph_range, glyph_buffer, char_index_buffer, inscribe_buffer, elastic_buffer, bidi_level_buffer)
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def glyph_index_for_character_at_index(char_index)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_glyph_index_for_character_at_index_, char_index)
    end
    
    typesig { [NSPoint, NSTextContainer, Array.typed(::Java::Float)] }
    # long
    # double[]
    def glyph_index_for_point(point, container, partial_fraction)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_glyph_index_for_point_in_text_container_fraction_of_distance_through_glyph_, point, !(container).nil? ? container.attr_id : 0, partial_fraction)
    end
    
    typesig { [NSRange, ::Java::Int] }
    # long
    def glyph_range_for_character_range(char_range, actual_char_range)
      result = NSRange.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_glyph_range_for_character_range_actual_character_range_, char_range, actual_char_range)
      return result
    end
    
    typesig { [NSTextContainer] }
    def glyph_range_for_text_container(container)
      result = NSRange.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_glyph_range_for_text_container_, !(container).nil? ? container.attr_id : 0)
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def line_fragment_used_rect_for_glyph_at_index(glyph_index, effective_glyph_range)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_line_fragment_used_rect_for_glyph_at_index_effective_range_, glyph_index, effective_glyph_range)
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    # long
    # long
    def line_fragment_used_rect_for_glyph_at_index(glyph_index, effective_glyph_range, flag)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_line_fragment_used_rect_for_glyph_at_index_effective_range_without_additional_layout_, glyph_index, effective_glyph_range, flag)
      return result
    end
    
    typesig { [::Java::Int] }
    # long
    def location_for_glyph_at_index(glyph_index)
      result = NSPoint.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_location_for_glyph_at_index_, glyph_index)
      return result
    end
    
    typesig { [] }
    # long
    def number_of_glyphs
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_number_of_glyphs)
    end
    
    typesig { [NSRange, NSRange, NSTextContainer, ::Java::Int] }
    # long
    # long
    def rect_array_for_character_range(char_range, sel_char_range, container, rect_count)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_rect_array_for_character_range_within_selected_character_range_in_text_container_rect_count_, char_range, sel_char_range, !(container).nil? ? container.attr_id : 0, rect_count)
    end
    
    typesig { [NSString, NSRange] }
    def remove_temporary_attribute(attr_name, char_range)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_temporary_attribute_for_character_range_, !(attr_name).nil? ? attr_name.attr_id : 0, char_range)
    end
    
    typesig { [::Java::Boolean] }
    def set_background_layout_enabled(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_background_layout_enabled_, flag)
    end
    
    typesig { [NSRect, NSRange, NSRect] }
    def set_line_fragment_rect(fragment_rect, glyph_range, used_rect)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_line_fragment_rect_for_glyph_range_used_rect_, fragment_rect, glyph_range, used_rect)
    end
    
    typesig { [NSTextStorage] }
    def set_text_storage(text_storage)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_text_storage_, !(text_storage).nil? ? text_storage.attr_id : 0)
    end
    
    typesig { [] }
    def typesetter
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_typesetter)
      return !(result).equal?(0) ? NSTypesetter.new(result) : nil
    end
    
    typesig { [NSTextContainer] }
    def used_rect_for_text_container(container)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_used_rect_for_text_container_, !(container).nil? ? container.attr_id : 0)
      return result
    end
    
    private
    alias_method :initialize__nslayout_manager, :initialize
  end
  
end
