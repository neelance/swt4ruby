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
  module PngIhdrChunkImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  class PngIhdrChunk < PngIhdrChunkImports.const_get :PngChunk
    include_class_members PngIhdrChunkImports
    
    class_module.module_eval {
      const_set_lazy(:IHDR_DATA_LENGTH) { 13 }
      const_attr_reader  :IHDR_DATA_LENGTH
      
      const_set_lazy(:WIDTH_DATA_OFFSET) { DATA_OFFSET + 0 }
      const_attr_reader  :WIDTH_DATA_OFFSET
      
      const_set_lazy(:HEIGHT_DATA_OFFSET) { DATA_OFFSET + 4 }
      const_attr_reader  :HEIGHT_DATA_OFFSET
      
      const_set_lazy(:BIT_DEPTH_OFFSET) { DATA_OFFSET + 8 }
      const_attr_reader  :BIT_DEPTH_OFFSET
      
      const_set_lazy(:COLOR_TYPE_OFFSET) { DATA_OFFSET + 9 }
      const_attr_reader  :COLOR_TYPE_OFFSET
      
      const_set_lazy(:COMPRESSION_METHOD_OFFSET) { DATA_OFFSET + 10 }
      const_attr_reader  :COMPRESSION_METHOD_OFFSET
      
      const_set_lazy(:FILTER_METHOD_OFFSET) { DATA_OFFSET + 11 }
      const_attr_reader  :FILTER_METHOD_OFFSET
      
      const_set_lazy(:INTERLACE_METHOD_OFFSET) { DATA_OFFSET + 12 }
      const_attr_reader  :INTERLACE_METHOD_OFFSET
      
      const_set_lazy(:COLOR_TYPE_GRAYSCALE) { 0 }
      const_attr_reader  :COLOR_TYPE_GRAYSCALE
      
      const_set_lazy(:COLOR_TYPE_RGB) { 2 }
      const_attr_reader  :COLOR_TYPE_RGB
      
      const_set_lazy(:COLOR_TYPE_PALETTE) { 3 }
      const_attr_reader  :COLOR_TYPE_PALETTE
      
      const_set_lazy(:COLOR_TYPE_GRAYSCALE_WITH_ALPHA) { 4 }
      const_attr_reader  :COLOR_TYPE_GRAYSCALE_WITH_ALPHA
      
      const_set_lazy(:COLOR_TYPE_RGB_WITH_ALPHA) { 6 }
      const_attr_reader  :COLOR_TYPE_RGB_WITH_ALPHA
      
      const_set_lazy(:INTERLACE_METHOD_NONE) { 0 }
      const_attr_reader  :INTERLACE_METHOD_NONE
      
      const_set_lazy(:INTERLACE_METHOD_ADAM7) { 1 }
      const_attr_reader  :INTERLACE_METHOD_ADAM7
      
      const_set_lazy(:FILTER_NONE) { 0 }
      const_attr_reader  :FILTER_NONE
      
      const_set_lazy(:FILTER_SUB) { 1 }
      const_attr_reader  :FILTER_SUB
      
      const_set_lazy(:FILTER_UP) { 2 }
      const_attr_reader  :FILTER_UP
      
      const_set_lazy(:FILTER_AVERAGE) { 3 }
      const_attr_reader  :FILTER_AVERAGE
      
      const_set_lazy(:FILTER_PAETH) { 4 }
      const_attr_reader  :FILTER_PAETH
      
      const_set_lazy(:ValidBitDepths) { Array.typed(::Java::Byte).new([1, 2, 4, 8, 16]) }
      const_attr_reader  :ValidBitDepths
      
      const_set_lazy(:ValidColorTypes) { Array.typed(::Java::Byte).new([0, 2, 3, 4, 6]) }
      const_attr_reader  :ValidColorTypes
    }
    
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    attr_accessor :bit_depth
    alias_method :attr_bit_depth, :bit_depth
    undef_method :bit_depth
    alias_method :attr_bit_depth=, :bit_depth=
    undef_method :bit_depth=
    
    attr_accessor :color_type
    alias_method :attr_color_type, :color_type
    undef_method :color_type
    alias_method :attr_color_type=, :color_type=
    undef_method :color_type=
    
    attr_accessor :compression_method
    alias_method :attr_compression_method, :compression_method
    undef_method :compression_method
    alias_method :attr_compression_method=, :compression_method=
    undef_method :compression_method=
    
    attr_accessor :filter_method
    alias_method :attr_filter_method, :filter_method
    undef_method :filter_method
    alias_method :attr_filter_method=, :filter_method=
    undef_method :filter_method=
    
    attr_accessor :interlace_method
    alias_method :attr_interlace_method, :interlace_method
    undef_method :interlace_method
    alias_method :attr_interlace_method=, :interlace_method=
    undef_method :interlace_method=
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Byte, ::Java::Byte, ::Java::Byte, ::Java::Byte, ::Java::Byte] }
    def initialize(width, height, bit_depth, color_type, compression_method, filter_method, interlace_method)
      @width = 0
      @height = 0
      @bit_depth = 0
      @color_type = 0
      @compression_method = 0
      @filter_method = 0
      @interlace_method = 0
      super(IHDR_DATA_LENGTH)
      set_type(TYPE_IHDR)
      set_width(width)
      set_height(height)
      set_bit_depth(bit_depth)
      set_color_type(color_type)
      set_compression_method(compression_method)
      set_filter_method(filter_method)
      set_interlace_method(interlace_method)
      set_crc(compute_crc)
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    # Construct a PNGChunk using the reference bytes
    # given.
    def initialize(reference)
      @width = 0
      @height = 0
      @bit_depth = 0
      @color_type = 0
      @compression_method = 0
      @filter_method = 0
      @interlace_method = 0
      super(reference)
      if (reference.attr_length <= IHDR_DATA_LENGTH)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      @width = get_int32(WIDTH_DATA_OFFSET)
      @height = get_int32(HEIGHT_DATA_OFFSET)
      @bit_depth = reference[BIT_DEPTH_OFFSET]
      @color_type = reference[COLOR_TYPE_OFFSET]
      @compression_method = reference[COMPRESSION_METHOD_OFFSET]
      @filter_method = reference[FILTER_METHOD_OFFSET]
      @interlace_method = reference[INTERLACE_METHOD_OFFSET]
    end
    
    typesig { [] }
    def get_chunk_type
      return CHUNK_IHDR
    end
    
    typesig { [] }
    # Get the image's width in pixels.
    def get_width
      return @width
    end
    
    typesig { [::Java::Int] }
    # Set the image's width in pixels.
    def set_width(value)
      set_int32(WIDTH_DATA_OFFSET, value)
      @width = value
    end
    
    typesig { [] }
    # Get the image's height in pixels.
    def get_height
      return @height
    end
    
    typesig { [::Java::Int] }
    # Set the image's height in pixels.
    def set_height(value)
      set_int32(HEIGHT_DATA_OFFSET, value)
      @height = value
    end
    
    typesig { [] }
    # Get the image's bit depth.
    # This is limited to the values 1, 2, 4, 8, or 16.
    def get_bit_depth
      return @bit_depth
    end
    
    typesig { [::Java::Byte] }
    # Set the image's bit depth.
    # This is limited to the values 1, 2, 4, 8, or 16.
    def set_bit_depth(value)
      self.attr_reference[BIT_DEPTH_OFFSET] = value
      @bit_depth = value
    end
    
    typesig { [] }
    # Get the image's color type.
    # This is limited to the values:
    # 0 - Grayscale image.
    # 2 - RGB triple.
    # 3 - Palette.
    # 4 - Grayscale with Alpha channel.
    # 6 - RGB with Alpha channel.
    def get_color_type
      return @color_type
    end
    
    typesig { [::Java::Byte] }
    # Set the image's color type.
    # This is limited to the values:
    # 0 - Grayscale image.
    # 2 - RGB triple.
    # 3 - Palette.
    # 4 - Grayscale with Alpha channel.
    # 6 - RGB with Alpha channel.
    def set_color_type(value)
      self.attr_reference[COLOR_TYPE_OFFSET] = value
      @color_type = value
    end
    
    typesig { [] }
    # Get the image's compression method.
    # This value must be 0.
    def get_compression_method
      return @compression_method
    end
    
    typesig { [::Java::Byte] }
    # Set the image's compression method.
    # This value must be 0.
    def set_compression_method(value)
      self.attr_reference[COMPRESSION_METHOD_OFFSET] = value
      @compression_method = value
    end
    
    typesig { [] }
    # Get the image's filter method.
    # This value must be 0.
    def get_filter_method
      return @filter_method
    end
    
    typesig { [::Java::Byte] }
    # Set the image's filter method.
    # This value must be 0.
    def set_filter_method(value)
      self.attr_reference[FILTER_METHOD_OFFSET] = value
      @filter_method = value
    end
    
    typesig { [] }
    # Get the image's interlace method.
    # This value is limited to:
    # 0 - No interlacing used.
    # 1 - Adam7 interlacing used.
    def get_interlace_method
      return @interlace_method
    end
    
    typesig { [::Java::Byte] }
    # Set the image's interlace method.
    # This value is limited to:
    # 0 - No interlacing used.
    # 1 - Adam7 interlacing used.
    def set_interlace_method(value)
      self.attr_reference[INTERLACE_METHOD_OFFSET] = value
      @interlace_method = value
    end
    
    typesig { [PngFileReadState, PngIhdrChunk] }
    # Answer whether the chunk is a valid IHDR chunk.
    def validate(read_state, header_chunk)
      # An IHDR chunk is invalid if any other chunk has
      # been read.
      if (read_state.attr_read_ihdr || read_state.attr_read_plte || read_state.attr_read_idat || read_state.attr_read_iend)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      else
        read_state.attr_read_ihdr = true
      end
      super(read_state, header_chunk)
      if (!(self.attr_length).equal?(IHDR_DATA_LENGTH))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      if (!(@compression_method).equal?(0))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      if (!(@interlace_method).equal?(INTERLACE_METHOD_NONE) && !(@interlace_method).equal?(INTERLACE_METHOD_ADAM7))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      color_type_is_valid = false
      i = 0
      while i < ValidColorTypes.attr_length
        if ((ValidColorTypes[i]).equal?(@color_type))
          color_type_is_valid = true
          break
        end
        ((i += 1) - 1)
      end
      if (!color_type_is_valid)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      bit_depth_is_valid = false
      i_ = 0
      while i_ < ValidBitDepths.attr_length
        if ((ValidBitDepths[i_]).equal?(@bit_depth))
          bit_depth_is_valid = true
          break
        end
        ((i_ += 1) - 1)
      end
      if (!bit_depth_is_valid)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      if (((@color_type).equal?(COLOR_TYPE_RGB) || (@color_type).equal?(COLOR_TYPE_RGB_WITH_ALPHA) || (@color_type).equal?(COLOR_TYPE_GRAYSCALE_WITH_ALPHA)) && @bit_depth < 8)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      if ((@color_type).equal?(COLOR_TYPE_PALETTE) && @bit_depth > 8)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
    end
    
    typesig { [] }
    def get_color_type_string
      case (@color_type)
      when COLOR_TYPE_GRAYSCALE
        return "Grayscale"
      when COLOR_TYPE_RGB
        return "RGB"
      when COLOR_TYPE_PALETTE
        return "Palette"
      when COLOR_TYPE_GRAYSCALE_WITH_ALPHA
        return "Grayscale with Alpha"
      when COLOR_TYPE_RGB_WITH_ALPHA
        return "RGB with Alpha"
      else
        return "Unknown - " + (@color_type).to_s
      end
    end
    
    typesig { [] }
    def get_filter_method_string
      case (@filter_method)
      when FILTER_NONE
        return "None"
      when FILTER_SUB
        return "Sub"
      when FILTER_UP
        return "Up"
      when FILTER_AVERAGE
        return "Average"
      when FILTER_PAETH
        return "Paeth"
      else
        return "Unknown"
      end
    end
    
    typesig { [] }
    def get_interlace_method_string
      case (@interlace_method)
      when INTERLACE_METHOD_NONE
        return "Not Interlaced"
      when INTERLACE_METHOD_ADAM7
        return "Interlaced - ADAM7"
      else
        return "Unknown"
      end
    end
    
    typesig { [StringBuffer] }
    def contribute_to_string(buffer)
      buffer.append("\n\tWidth: ")
      buffer.append(@width)
      buffer.append("\n\tHeight: ")
      buffer.append(@height)
      buffer.append("\n\tBit Depth: ")
      buffer.append(@bit_depth)
      buffer.append("\n\tColor Type: ")
      buffer.append(get_color_type_string)
      buffer.append("\n\tCompression Method: ")
      buffer.append(@compression_method)
      buffer.append("\n\tFilter Method: ")
      buffer.append(get_filter_method_string)
      buffer.append("\n\tInterlace Method: ")
      buffer.append(get_interlace_method_string)
    end
    
    typesig { [] }
    def get_must_have_palette
      return (@color_type).equal?(COLOR_TYPE_PALETTE)
    end
    
    typesig { [] }
    def get_can_have_palette
      return !(@color_type).equal?(COLOR_TYPE_GRAYSCALE) && !(@color_type).equal?(COLOR_TYPE_GRAYSCALE_WITH_ALPHA)
    end
    
    typesig { [] }
    # Answer the pixel size in bits based on the color type
    # and bit depth.
    def get_bits_per_pixel
      case (@color_type)
      when COLOR_TYPE_RGB_WITH_ALPHA
        return 4 * @bit_depth
      when COLOR_TYPE_RGB
        return 3 * @bit_depth
      when COLOR_TYPE_GRAYSCALE_WITH_ALPHA
        return 2 * @bit_depth
      when COLOR_TYPE_GRAYSCALE, COLOR_TYPE_PALETTE
        return @bit_depth
      else
        SWT.error(SWT::ERROR_INVALID_IMAGE)
        return 0
      end
    end
    
    typesig { [] }
    # Answer the pixel size in bits based on the color type
    # and bit depth.
    def get_swt_bits_per_pixel
      case (@color_type)
      when COLOR_TYPE_RGB_WITH_ALPHA, COLOR_TYPE_RGB, COLOR_TYPE_GRAYSCALE_WITH_ALPHA
        return 24
      when COLOR_TYPE_GRAYSCALE, COLOR_TYPE_PALETTE
        return Math.min(@bit_depth, 8)
      else
        SWT.error(SWT::ERROR_INVALID_IMAGE)
        return 0
      end
    end
    
    typesig { [] }
    def get_filter_byte_offset
      if (@bit_depth < 8)
        return 1
      end
      return get_bits_per_pixel / 8
    end
    
    typesig { [] }
    def uses_direct_color
      case (@color_type)
      when COLOR_TYPE_GRAYSCALE, COLOR_TYPE_GRAYSCALE_WITH_ALPHA, COLOR_TYPE_RGB, COLOR_TYPE_RGB_WITH_ALPHA
        return true
      else
        return false
      end
    end
    
    typesig { [] }
    def create_grayscale_palette
      depth = Math.min(@bit_depth, 8)
      max = (1 << depth) - 1
      delta = 255 / max
      gray = 0
      rgbs = Array.typed(RGB).new(max + 1) { nil }
      i = 0
      while i <= max
        rgbs[i] = RGB.new(gray, gray, gray)
        gray += delta
        ((i += 1) - 1)
      end
      return PaletteData.new(rgbs)
    end
    
    typesig { [] }
    def get_palette_data
      case (@color_type)
      when COLOR_TYPE_GRAYSCALE
        return create_grayscale_palette
      when COLOR_TYPE_GRAYSCALE_WITH_ALPHA, COLOR_TYPE_RGB, COLOR_TYPE_RGB_WITH_ALPHA
        return PaletteData.new(0xff0000, 0xff00, 0xff)
      else
        return nil
      end
    end
    
    private
    alias_method :initialize__png_ihdr_chunk, :initialize
  end
  
end
