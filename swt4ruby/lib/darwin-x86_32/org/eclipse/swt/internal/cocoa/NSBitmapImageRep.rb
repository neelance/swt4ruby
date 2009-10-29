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
  module NSBitmapImageRepImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSBitmapImageRep < NSBitmapImageRepImports.const_get :NSImageRep
    include_class_members NSBitmapImageRepImports
    
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
    
    typesig { [] }
    def _tiffrepresentation
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_tiffrepresentation)
      return !(result).equal?(0) ? NSData.new(result) : nil
    end
    
    typesig { [] }
    # long
    def bitmap_data
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_bitmap_data)
    end
    
    typesig { [] }
    # long
    def bitmap_format
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_bitmap_format)
    end
    
    typesig { [] }
    # long
    def bits_per_pixel
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_bits_per_pixel)
    end
    
    typesig { [] }
    # long
    def bytes_per_plane
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_bytes_per_plane)
    end
    
    typesig { [] }
    # long
    def bytes_per_row
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_bytes_per_row)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def color_at_x(x, y)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_color_at_x_y_, x, y)
      return !(result).equal?(0) ? NSColor.new(result) : nil
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long[]
    def get_bitmap_data_planes(data)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_get_bitmap_data_planes_, data)
    end
    
    class_module.module_eval {
      typesig { [NSData] }
      def image_rep_with_data(data)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsbitmap_image_rep, OS.attr_sel_image_rep_with_data_, !(data).nil? ? data.attr_id : 0)
        return !(result).equal?(0) ? Id.new(result) : nil
      end
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, NSString, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def init_with_bitmap_data_planes(planes, width, height, bps, spp, alpha, is_planar, color_space_name, bitmap_format, r_bytes, p_bits)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_bitmap_data_planes_pixels_wide_pixels_high_bits_per_sample_samples_per_pixel_has_alpha_is_planar_color_space_name_bitmap_format_bytes_per_row_bits_per_pixel_, planes, width, height, bps, spp, alpha, is_planar, !(color_space_name).nil? ? color_space_name.attr_id : 0, bitmap_format, r_bytes, p_bits)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSBitmapImageRep.new(result) : nil)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, NSString, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def init_with_bitmap_data_planes(planes, width, height, bps, spp, alpha, is_planar, color_space_name, r_bytes, p_bits)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_bitmap_data_planes_pixels_wide_pixels_high_bits_per_sample_samples_per_pixel_has_alpha_is_planar_color_space_name_bytes_per_row_bits_per_pixel_, planes, width, height, bps, spp, alpha, is_planar, !(color_space_name).nil? ? color_space_name.attr_id : 0, r_bytes, p_bits)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSBitmapImageRep.new(result) : nil)
    end
    
    typesig { [NSRect] }
    def init_with_focused_view_rect(rect)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_focused_view_rect_, rect)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSBitmapImageRep.new(result) : nil)
    end
    
    typesig { [] }
    def is_planar
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_planar)
    end
    
    typesig { [] }
    # long
    def number_of_planes
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_number_of_planes)
    end
    
    typesig { [] }
    # long
    def samples_per_pixel
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_samples_per_pixel)
    end
    
    private
    alias_method :initialize__nsbitmap_image_rep, :initialize
  end
  
end
