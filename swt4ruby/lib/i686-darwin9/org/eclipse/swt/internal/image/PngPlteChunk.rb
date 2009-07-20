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
  module PngPlteChunkImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  class PngPlteChunk < PngPlteChunkImports.const_get :PngChunk
    include_class_members PngPlteChunkImports
    
    attr_accessor :palette_size
    alias_method :attr_palette_size, :palette_size
    undef_method :palette_size
    alias_method :attr_palette_size=, :palette_size=
    undef_method :palette_size=
    
    typesig { [PaletteData] }
    def initialize(palette)
      @palette_size = 0
      super(palette.get_rgbs.attr_length * 3)
      @palette_size = self.attr_length / 3
      set_type(TYPE_PLTE)
      set_palette_data(palette)
      set_crc(compute_crc)
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def initialize(reference)
      @palette_size = 0
      super(reference)
      @palette_size = self.attr_length / 3
    end
    
    typesig { [] }
    def get_chunk_type
      return CHUNK_PLTE
    end
    
    typesig { [] }
    # Get the number of colors in this palette.
    def get_palette_size
      return @palette_size
    end
    
    typesig { [] }
    # Get a PaletteData object representing the colors
    # stored in this PLTE chunk.
    # The result should be cached as the PLTE chunk
    # does not store the palette data created.
    def get_palette_data
      rgbs = Array.typed(RGB).new(@palette_size) { nil }
      # int start = DATA_OFFSET;
      # int end = DATA_OFFSET + length;
      i = 0
      while i < rgbs.attr_length
        offset = DATA_OFFSET + (i * 3)
        red = self.attr_reference[offset] & 0xff
        green = self.attr_reference[offset + 1] & 0xff
        blue = self.attr_reference[offset + 2] & 0xff
        rgbs[i] = RGB.new(red, green, blue)
        i += 1
      end
      return PaletteData.new(rgbs)
    end
    
    typesig { [PaletteData] }
    # Set the data of a PLTE chunk to the colors
    # stored in the specified PaletteData object.
    def set_palette_data(palette)
      rgbs = palette.get_rgbs
      i = 0
      while i < rgbs.attr_length
        offset = DATA_OFFSET + (i * 3)
        self.attr_reference[offset] = rgbs[i].attr_red
        self.attr_reference[offset + 1] = rgbs[i].attr_green
        self.attr_reference[offset + 2] = rgbs[i].attr_blue
        i += 1
      end
    end
    
    typesig { [PngFileReadState, PngIhdrChunk] }
    # Answer whether the chunk is a valid PLTE chunk.
    def validate(read_state, header_chunk)
      # A PLTE chunk is invalid if no IHDR has been read or if any PLTE,
      # IDAT, or IEND chunk has been read.
      if (!read_state.attr_read_ihdr || read_state.attr_read_plte || read_state.attr_read_trns || read_state.attr_read_idat || read_state.attr_read_iend)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      else
        read_state.attr_read_plte = true
      end
      super(read_state, header_chunk)
      # Palettes cannot be included in grayscale images.
      # 
      # Note: just ignore the palette.
      # if (!headerChunk.getCanHavePalette()) SWT.error(SWT.ERROR_INVALID_IMAGE);
      # Palette chunks' data fields must be event multiples
      # of 3. Each 3-byte group represents an RGB value.
      if (!(get_length % 3).equal?(0))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      # Palettes cannot have more entries than 2^bitDepth
      # where bitDepth is the bit depth of the image given
      # in the IHDR chunk.
      if (1 << header_chunk.get_bit_depth < @palette_size)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      # Palettes cannot have more than 256 entries.
      if (256 < @palette_size)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
    end
    
    typesig { [StringBuffer] }
    def contribute_to_string(buffer)
      buffer.append("\n\tPalette size:")
      buffer.append(@palette_size)
    end
    
    private
    alias_method :initialize__png_plte_chunk, :initialize
  end
  
end
