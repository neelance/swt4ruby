require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Image
  module PngTrnsChunkImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  class PngTrnsChunk < PngTrnsChunkImports.const_get :PngChunk
    include_class_members PngTrnsChunkImports
    
    class_module.module_eval {
      const_set_lazy(:TRANSPARENCY_TYPE_PIXEL) { 0 }
      const_attr_reader  :TRANSPARENCY_TYPE_PIXEL
      
      const_set_lazy(:TRANSPARENCY_TYPE_ALPHAS) { 1 }
      const_attr_reader  :TRANSPARENCY_TYPE_ALPHAS
      
      const_set_lazy(:RGB_DATA_LENGTH) { 6 }
      const_attr_reader  :RGB_DATA_LENGTH
    }
    
    typesig { [RGB] }
    def initialize(rgb)
      super(RGB_DATA_LENGTH)
      set_type(TYPE_tRNS)
      set_int16(DATA_OFFSET, rgb.attr_red)
      set_int16(DATA_OFFSET + 2, rgb.attr_green)
      set_int16(DATA_OFFSET + 4, rgb.attr_blue)
      set_crc(compute_crc)
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def initialize(reference)
      super(reference)
    end
    
    typesig { [] }
    def get_chunk_type
      return CHUNK_tRNS
    end
    
    typesig { [PngIhdrChunk, PngPlteChunk] }
    def validate_length(header, palette_chunk)
      valid = false
      case (header.get_color_type)
      # Cannot use both Alpha and tRNS
      when PngIhdrChunk::COLOR_TYPE_RGB
        # Three 2-byte values (RGB)
        valid = (get_length).equal?(6)
      when PngIhdrChunk::COLOR_TYPE_PALETTE
        # Three 2-byte values (RGB)
        valid = get_length <= palette_chunk.get_length
      when PngIhdrChunk::COLOR_TYPE_GRAYSCALE
        # One 2-byte value
        valid = (get_length).equal?(2)
      when PngIhdrChunk::COLOR_TYPE_RGB_WITH_ALPHA, PngIhdrChunk::COLOR_TYPE_GRAYSCALE_WITH_ALPHA
        valid = false
      else
        valid = false
      end
      if (!valid)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
    end
    
    typesig { [PngFileReadState, PngIhdrChunk, PngPlteChunk] }
    # Answer whether the chunk is a valid tRNS chunk.
    def validate(read_state, header_chunk, palette_chunk)
      if (!read_state.attr_read_ihdr || (header_chunk.get_must_have_palette && !read_state.attr_read_plte) || read_state.attr_read_idat || read_state.attr_read_iend)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      else
        read_state.attr_read_trns = true
      end
      validate_length(header_chunk, palette_chunk)
      super(read_state, header_chunk)
    end
    
    typesig { [PngIhdrChunk] }
    def get_transparency_type(header)
      if ((header.get_color_type).equal?(PngIhdrChunk::COLOR_TYPE_PALETTE))
        return TRANSPARENCY_TYPE_ALPHAS
      end
      return TRANSPARENCY_TYPE_PIXEL
    end
    
    typesig { [PngIhdrChunk] }
    # Answer the transparent pixel RGB value.
    # This is not valid for palette color types.
    # This is not valid for alpha color types.
    # This will convert a grayscale value into
    # a palette index.
    # It will compress a 6 byte RGB into a 3 byte
    # RGB.
    def get_swt_transparent_pixel(header)
      case (header.get_color_type)
      when PngIhdrChunk::COLOR_TYPE_GRAYSCALE
        gray = ((self.attr_reference[DATA_OFFSET] & 0xff) << 8) + (self.attr_reference[DATA_OFFSET + 1] & 0xff)
        if (header.get_bit_depth > 8)
          return PNGFileFormat.compress16_bit_depth_to8bit_depth(gray)
        end
        return gray & 0xff
      when PngIhdrChunk::COLOR_TYPE_RGB
        red = ((self.attr_reference[DATA_OFFSET] & 0xff) << 8) | (self.attr_reference[DATA_OFFSET + 1] & 0xff)
        green = ((self.attr_reference[DATA_OFFSET + 2] & 0xff) << 8) | (self.attr_reference[DATA_OFFSET + 3] & 0xff)
        blue = ((self.attr_reference[DATA_OFFSET + 4] & 0xff) << 8) | (self.attr_reference[DATA_OFFSET + 5] & 0xff)
        if (header.get_bit_depth > 8)
          red = PNGFileFormat.compress16_bit_depth_to8bit_depth(red)
          green = PNGFileFormat.compress16_bit_depth_to8bit_depth(green)
          blue = PNGFileFormat.compress16_bit_depth_to8bit_depth(blue)
        end
        return (red << 16) | (green << 8) | blue
      else
        SWT.error(SWT::ERROR_INVALID_IMAGE)
        return -1
      end
    end
    
    typesig { [PngIhdrChunk, PngPlteChunk] }
    # Answer an array of Alpha values that correspond to the
    # colors in the palette.
    # This is only valid for the COLOR_TYPE_PALETTE color type.
    def get_alpha_values(header, palette_chunk)
      if (!(header.get_color_type).equal?(PngIhdrChunk::COLOR_TYPE_PALETTE))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      alphas = Array.typed(::Java::Byte).new(palette_chunk.get_palette_size) { 0 }
      data_length = get_length
      i = 0
      i = 0
      while i < data_length
        alphas[i] = self.attr_reference[DATA_OFFSET + i]
        i += 1
      end
      # Any palette entries which do not have a corresponding
      # alpha value in the tRNS chunk are spec'd to have an
      # alpha of 255.
      j = i
      while j < alphas.attr_length
        alphas[j] = 255
        j += 1
      end
      return alphas
    end
    
    private
    alias_method :initialize__png_trns_chunk, :initialize
  end
  
end
