require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Image
  module TIFFDirectoryImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Java::Io
    }
  end
  
  class TIFFDirectory 
    include_class_members TIFFDirectoryImports
    
    attr_accessor :file
    alias_method :attr_file, :file
    undef_method :file
    alias_method :attr_file=, :file=
    undef_method :file=
    
    attr_accessor :is_little_endian
    alias_method :attr_is_little_endian, :is_little_endian
    undef_method :is_little_endian
    alias_method :attr_is_little_endian=, :is_little_endian=
    undef_method :is_little_endian=
    
    attr_accessor :loader
    alias_method :attr_loader, :loader
    undef_method :loader
    alias_method :attr_loader=, :loader=
    undef_method :loader=
    
    attr_accessor :depth
    alias_method :attr_depth, :depth
    undef_method :depth
    alias_method :attr_depth=, :depth=
    undef_method :depth=
    
    # Directory fields
    attr_accessor :image_width
    alias_method :attr_image_width, :image_width
    undef_method :image_width
    alias_method :attr_image_width=, :image_width=
    undef_method :image_width=
    
    attr_accessor :image_length
    alias_method :attr_image_length, :image_length
    undef_method :image_length
    alias_method :attr_image_length=, :image_length=
    undef_method :image_length=
    
    attr_accessor :bits_per_sample
    alias_method :attr_bits_per_sample, :bits_per_sample
    undef_method :bits_per_sample
    alias_method :attr_bits_per_sample=, :bits_per_sample=
    undef_method :bits_per_sample=
    
    attr_accessor :compression
    alias_method :attr_compression, :compression
    undef_method :compression
    alias_method :attr_compression=, :compression=
    undef_method :compression=
    
    attr_accessor :photometric_interpretation
    alias_method :attr_photometric_interpretation, :photometric_interpretation
    undef_method :photometric_interpretation
    alias_method :attr_photometric_interpretation=, :photometric_interpretation=
    undef_method :photometric_interpretation=
    
    attr_accessor :strip_offsets
    alias_method :attr_strip_offsets, :strip_offsets
    undef_method :strip_offsets
    alias_method :attr_strip_offsets=, :strip_offsets=
    undef_method :strip_offsets=
    
    attr_accessor :samples_per_pixel
    alias_method :attr_samples_per_pixel, :samples_per_pixel
    undef_method :samples_per_pixel
    alias_method :attr_samples_per_pixel=, :samples_per_pixel=
    undef_method :samples_per_pixel=
    
    attr_accessor :rows_per_strip
    alias_method :attr_rows_per_strip, :rows_per_strip
    undef_method :rows_per_strip
    alias_method :attr_rows_per_strip=, :rows_per_strip=
    undef_method :rows_per_strip=
    
    attr_accessor :strip_byte_counts
    alias_method :attr_strip_byte_counts, :strip_byte_counts
    undef_method :strip_byte_counts
    alias_method :attr_strip_byte_counts=, :strip_byte_counts=
    undef_method :strip_byte_counts=
    
    attr_accessor :t4options
    alias_method :attr_t4options, :t4options
    undef_method :t4options
    alias_method :attr_t4options=, :t4options=
    undef_method :t4options=
    
    attr_accessor :color_map_offset
    alias_method :attr_color_map_offset, :color_map_offset
    undef_method :color_map_offset
    alias_method :attr_color_map_offset=, :color_map_offset=
    undef_method :color_map_offset=
    
    # Encoder fields
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    attr_accessor :out
    alias_method :attr_out, :out
    undef_method :out
    alias_method :attr_out=, :out=
    undef_method :out=
    
    class_module.module_eval {
      const_set_lazy(:NO_VALUE) { -1 }
      const_attr_reader  :NO_VALUE
      
      const_set_lazy(:TAG_ImageWidth) { 256 }
      const_attr_reader  :TAG_ImageWidth
      
      const_set_lazy(:TAG_ImageLength) { 257 }
      const_attr_reader  :TAG_ImageLength
      
      const_set_lazy(:TAG_BitsPerSample) { 258 }
      const_attr_reader  :TAG_BitsPerSample
      
      const_set_lazy(:TAG_Compression) { 259 }
      const_attr_reader  :TAG_Compression
      
      const_set_lazy(:TAG_PhotometricInterpretation) { 262 }
      const_attr_reader  :TAG_PhotometricInterpretation
      
      const_set_lazy(:TAG_StripOffsets) { 273 }
      const_attr_reader  :TAG_StripOffsets
      
      const_set_lazy(:TAG_SamplesPerPixel) { 277 }
      const_attr_reader  :TAG_SamplesPerPixel
      
      const_set_lazy(:TAG_RowsPerStrip) { 278 }
      const_attr_reader  :TAG_RowsPerStrip
      
      const_set_lazy(:TAG_StripByteCounts) { 279 }
      const_attr_reader  :TAG_StripByteCounts
      
      const_set_lazy(:TAG_XResolution) { 282 }
      const_attr_reader  :TAG_XResolution
      
      const_set_lazy(:TAG_YResolution) { 283 }
      const_attr_reader  :TAG_YResolution
      
      const_set_lazy(:TAG_T4Options) { 292 }
      const_attr_reader  :TAG_T4Options
      
      const_set_lazy(:TAG_ResolutionUnit) { 296 }
      const_attr_reader  :TAG_ResolutionUnit
      
      const_set_lazy(:TAG_ColorMap) { 320 }
      const_attr_reader  :TAG_ColorMap
      
      const_set_lazy(:TYPE_BYTE) { 1 }
      const_attr_reader  :TYPE_BYTE
      
      const_set_lazy(:TYPE_ASCII) { 2 }
      const_attr_reader  :TYPE_ASCII
      
      const_set_lazy(:TYPE_SHORT) { 3 }
      const_attr_reader  :TYPE_SHORT
      
      const_set_lazy(:TYPE_LONG) { 4 }
      const_attr_reader  :TYPE_LONG
      
      const_set_lazy(:TYPE_RATIONAL) { 5 }
      const_attr_reader  :TYPE_RATIONAL
      
      # Different compression schemes
      const_set_lazy(:COMPRESSION_NONE) { 1 }
      const_attr_reader  :COMPRESSION_NONE
      
      const_set_lazy(:COMPRESSION_CCITT_3_1) { 2 }
      const_attr_reader  :COMPRESSION_CCITT_3_1
      
      const_set_lazy(:COMPRESSION_PACKBITS) { 32773 }
      const_attr_reader  :COMPRESSION_PACKBITS
      
      const_set_lazy(:IFD_ENTRY_SIZE) { 12 }
      const_attr_reader  :IFD_ENTRY_SIZE
    }
    
    typesig { [TIFFRandomFileAccess, ::Java::Boolean, ImageLoader] }
    def initialize(file, is_little_endian, loader)
      @file = nil
      @is_little_endian = false
      @loader = nil
      @depth = 0
      @image_width = 0
      @image_length = 0
      @bits_per_sample = nil
      @compression = 0
      @photometric_interpretation = 0
      @strip_offsets = nil
      @samples_per_pixel = 0
      @rows_per_strip = 0
      @strip_byte_counts = nil
      @t4options = 0
      @color_map_offset = 0
      @image = nil
      @out = nil
      @file = file
      @is_little_endian = is_little_endian
      @loader = loader
    end
    
    typesig { [ImageData] }
    def initialize(image)
      @file = nil
      @is_little_endian = false
      @loader = nil
      @depth = 0
      @image_width = 0
      @image_length = 0
      @bits_per_sample = nil
      @compression = 0
      @photometric_interpretation = 0
      @strip_offsets = nil
      @samples_per_pixel = 0
      @rows_per_strip = 0
      @strip_byte_counts = nil
      @t4options = 0
      @color_map_offset = 0
      @image = nil
      @out = nil
      @image = image
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
    # PackBits decoder
    def decode_pack_bits(src, dest, offset_dest)
      dest_index = offset_dest
      src_index = 0
      while (src_index < src.attr_length)
        n = src[src_index]
        if (0 <= n && n <= 127)
          # Copy next n+1 bytes literally
          System.arraycopy(src, (src_index += 1), dest, dest_index, n + 1)
          src_index += n + 1
          dest_index += n + 1
        else
          if (-127 <= n && n <= -1)
            # Copy next byte -n+1 times
            value = src[(src_index += 1)]
            j = 0
            while j < -n + 1
              dest[((dest_index += 1) - 1)] = value
              ((j += 1) - 1)
            end
            ((src_index += 1) - 1)
          else
            # Noop when n == -128
            ((src_index += 1) - 1)
          end
        end
      end
      # Number of bytes copied
      return dest_index - offset_dest
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
    def get_entry_value(type, buffer, index)
      return to_int(buffer, index + 8, type)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
    def get_entry_value(type, buffer, index, values)
      start = index + 8
      size = 0
      offset = to_int(buffer, start, TYPE_LONG)
      case (type)
      when TYPE_SHORT
        size = 2
      when TYPE_LONG
        size = 4
      when TYPE_RATIONAL
        size = 8
      when TYPE_ASCII, TYPE_BYTE
        size = 1
      else
        SWT.error(SWT::ERROR_UNSUPPORTED_FORMAT)
        return
      end
      if (values.attr_length * size > 4)
        buffer = Array.typed(::Java::Byte).new(values.attr_length * size) { 0 }
        @file.seek(offset)
        @file.read(buffer)
        start = 0
      end
      i = 0
      while i < values.attr_length
        values[i] = to_int(buffer, start + i * size, type)
        ((i += 1) - 1)
      end
    end
    
    typesig { [ImageData] }
    def decode_pixels(image)
      # Each row is byte aligned
      image_data = Array.typed(::Java::Byte).new((@image_width * @depth + 7) / 8 * @image_length) { 0 }
      image.attr_data = image_data
      dest_index = 0
      length = @strip_offsets.attr_length
      i = 0
      while i < length
        # Read a strip
        data = Array.typed(::Java::Byte).new(@strip_byte_counts[i]) { 0 }
        @file.seek(@strip_offsets[i])
        @file.read(data)
        if ((@compression).equal?(COMPRESSION_NONE))
          System.arraycopy(data, 0, image_data, dest_index, data.attr_length)
          dest_index += data.attr_length
        else
          if ((@compression).equal?(COMPRESSION_PACKBITS))
            dest_index += decode_pack_bits(data, image_data, dest_index)
          else
            if ((@compression).equal?(COMPRESSION_CCITT_3_1) || (@compression).equal?(3))
              codec = TIFFModifiedHuffmanCodec.new
              n_rows = @rows_per_strip
              if ((i).equal?(length - 1))
                n = @image_length % @rows_per_strip
                if (!(n).equal?(0))
                  n_rows = n
                end
              end
              dest_index += codec.decode(data, image_data, dest_index, @image_width, n_rows)
            end
          end
        end
        if (@loader.has_listeners)
          @loader.notify_listeners(ImageLoaderEvent.new(@loader, image, i, (i).equal?(length - 1)))
        end
        ((i += 1) - 1)
      end
    end
    
    typesig { [] }
    def get_color_map
      num_colors = 1 << @bits_per_sample[0]
      # R, G, B entries are 16 bit wide (2 bytes)
      num_bytes = 3 * 2 * num_colors
      buffer = Array.typed(::Java::Byte).new(num_bytes) { 0 }
      @file.seek(@color_map_offset)
      @file.read(buffer)
      colors = Array.typed(RGB).new(num_colors) { nil }
      # SWT does not support 16-bit depth color formats.
      # Convert the 16-bit data to 8-bit data.
      # The correct way to do this is to multiply each
      # 16 bit value by the value:
      # (2^8 - 1) / (2^16 - 1).
      # The fast way to do this is just to drop the low
      # byte of the 16-bit value.
      offset = @is_little_endian ? 1 : 0
      start_g = 2 * num_colors
      start_b = start_g + 2 * num_colors
      i = 0
      while i < num_colors
        r = buffer[offset] & 0xff
        g = buffer[start_g + offset] & 0xff
        b = buffer[start_b + offset] & 0xff
        colors[i] = RGB.new(r, g, b)
        offset += 2
        ((i += 1) - 1)
      end
      return PaletteData.new(colors)
    end
    
    typesig { [] }
    def get_gray_palette
      num_colors = 1 << @bits_per_sample[0]
      rgbs = Array.typed(RGB).new(num_colors) { nil }
      i = 0
      while i < num_colors
        value = i * 0xff / (num_colors - 1)
        if ((@photometric_interpretation).equal?(0))
          value = 0xff - value
        end
        rgbs[i] = RGB.new(value, value, value)
        ((i += 1) - 1)
      end
      return PaletteData.new(rgbs)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_rgbpalette(bits_r, bits_g, bits_b)
      blue_mask = 0
      i = 0
      while i < bits_b
        blue_mask |= 1 << i
        ((i += 1) - 1)
      end
      green_mask = 0
      i_ = bits_b
      while i_ < bits_b + bits_g
        green_mask |= 1 << i_
        ((i_ += 1) - 1)
      end
      red_mask = 0
      i__ = bits_b + bits_g
      while i__ < bits_b + bits_g + bits_r
        red_mask |= 1 << i__
        ((i__ += 1) - 1)
      end
      return PaletteData.new(red_mask, green_mask, blue_mask)
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(Array.typed(::Java::Int))] }
    def format_strips(row_byte_size, nbr_rows, data, max_strip_byte_size, offset_post_ifd, extra_bytes, strips)
      # Calculate the nbr of required strips given the following requirements:
      # - each strip should, if possible, not be greater than maxStripByteSize
      # - each strip should contain 1 or more entire rows
      # 
      # Format the strip fields arrays so that the image data is stored in one
      # contiguous block. This block is stored after the IFD and after any tag
      # info described in the IFD.
      n = 0
      nbr_rows_per_strip = 0
      if (row_byte_size > max_strip_byte_size)
        # Each strip contains 1 row
        n = data.attr_length / row_byte_size
        nbr_rows_per_strip = 1
      else
        nbr = (data.attr_length + max_strip_byte_size - 1) / max_strip_byte_size
        nbr_rows_per_strip = nbr_rows / nbr
        n = (nbr_rows + nbr_rows_per_strip - 1) / nbr_rows_per_strip
      end
      strip_byte_size = row_byte_size * nbr_rows_per_strip
      offsets = Array.typed(::Java::Int).new(n) { 0 }
      counts = Array.typed(::Java::Int).new(n) { 0 }
      # Nbr of bytes between the end of the IFD directory and the start of
      # the image data. Keep space for at least the offsets and counts
      # data, each field being TYPE_LONG (4 bytes). If other tags require
      # space between the IFD and the image block, use the extraBytes
      # parameter.
      # If there is only one strip, the offsets and counts data is stored
      # directly in the IFD and we need not reserve space for it.
      post_ifddata = (n).equal?(1) ? 0 : n * 2 * 4
      start_offset = offset_post_ifd + extra_bytes + post_ifddata
      # offset of image data
      offset = start_offset
      i = 0
      while i < n
        # Store all strips sequentially to allow us
        # to copy all pixels in one contiguous area.
        offsets[i] = offset
        counts[i] = strip_byte_size
        offset += strip_byte_size
        ((i += 1) - 1)
      end
      # The last strip may contain fewer rows
      mod = data.attr_length % strip_byte_size
      if (!(mod).equal?(0))
        counts[counts.attr_length - 1] = mod
      end
      strips[0] = offsets
      strips[1] = counts
      return nbr_rows_per_strip
    end
    
    typesig { [Array.typed(RGB)] }
    def format_color_map(rgbs)
      # In a TIFF ColorMap, all red come first, followed by
      # green and blue. All values must be converted from
      # 8 bit to 16 bit.
      color_map = Array.typed(::Java::Int).new(rgbs.attr_length * 3) { 0 }
      offset_green = rgbs.attr_length
      offset_blue = rgbs.attr_length * 2
      i = 0
      while i < rgbs.attr_length
        color_map[i] = rgbs[i].attr_red << 8 | rgbs[i].attr_red
        color_map[i + offset_green] = rgbs[i].attr_green << 8 | rgbs[i].attr_green
        color_map[i + offset_blue] = rgbs[i].attr_blue << 8 | rgbs[i].attr_blue
        ((i += 1) - 1)
      end
      return color_map
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def parse_entries(buffer)
      offset = 0
      while offset < buffer.attr_length
        tag = to_int(buffer, offset, TYPE_SHORT)
        type = to_int(buffer, offset + 2, TYPE_SHORT)
        count = to_int(buffer, offset + 4, TYPE_LONG)
        case (tag)
        when TAG_ImageWidth
          @image_width = get_entry_value(type, buffer, offset)
        when TAG_ImageLength
          @image_length = get_entry_value(type, buffer, offset)
        when TAG_BitsPerSample
          if (!(type).equal?(TYPE_SHORT))
            SWT.error(SWT::ERROR_INVALID_IMAGE)
          end
          @bits_per_sample = Array.typed(::Java::Int).new(count) { 0 }
          get_entry_value(type, buffer, offset, @bits_per_sample)
        when TAG_Compression
          @compression = get_entry_value(type, buffer, offset)
        when TAG_PhotometricInterpretation
          @photometric_interpretation = get_entry_value(type, buffer, offset)
        when TAG_StripOffsets
          if (!(type).equal?(TYPE_LONG) && !(type).equal?(TYPE_SHORT))
            SWT.error(SWT::ERROR_INVALID_IMAGE)
          end
          @strip_offsets = Array.typed(::Java::Int).new(count) { 0 }
          get_entry_value(type, buffer, offset, @strip_offsets)
        when TAG_SamplesPerPixel
          if (!(type).equal?(TYPE_SHORT))
            SWT.error(SWT::ERROR_INVALID_IMAGE)
          end
          @samples_per_pixel = get_entry_value(type, buffer, offset)
          # Only the basic 1 and 3 values are supported
          if (!(@samples_per_pixel).equal?(1) && !(@samples_per_pixel).equal?(3))
            SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
          end
        when TAG_RowsPerStrip
          @rows_per_strip = get_entry_value(type, buffer, offset)
        when TAG_StripByteCounts
          @strip_byte_counts = Array.typed(::Java::Int).new(count) { 0 }
          get_entry_value(type, buffer, offset, @strip_byte_counts)
        when TAG_XResolution
          # Ignored
        when TAG_YResolution
          # Ignored
        when TAG_T4Options
          if (!(type).equal?(TYPE_LONG))
            SWT.error(SWT::ERROR_INVALID_IMAGE)
          end
          @t4options = get_entry_value(type, buffer, offset)
          if (((@t4options & 0x1)).equal?(1))
            # 2-dimensional coding is not supported
            SWT.error(SWT::ERROR_UNSUPPORTED_FORMAT)
          end
        when TAG_ResolutionUnit
          # Ignored
        when TAG_ColorMap
          if (!(type).equal?(TYPE_SHORT))
            SWT.error(SWT::ERROR_INVALID_IMAGE)
          end
          # Get the offset of the colorMap (use TYPE_LONG)
          @color_map_offset = get_entry_value(TYPE_LONG, buffer, offset)
        end
        offset += IFD_ENTRY_SIZE
      end
    end
    
    typesig { [] }
    def read
      # Set TIFF default values
      @bits_per_sample = Array.typed(::Java::Int).new([1])
      @color_map_offset = NO_VALUE
      @compression = 1
      @image_length = NO_VALUE
      @image_width = NO_VALUE
      @photometric_interpretation = NO_VALUE
      @rows_per_strip = JavaInteger::MAX_VALUE
      @samples_per_pixel = 1
      @strip_byte_counts = nil
      @strip_offsets = nil
      buffer = Array.typed(::Java::Byte).new(2) { 0 }
      @file.read(buffer)
      number_entries = to_int(buffer, 0, TYPE_SHORT)
      buffer = Array.typed(::Java::Byte).new(IFD_ENTRY_SIZE * number_entries) { 0 }
      @file.read(buffer)
      parse_entries(buffer)
      palette = nil
      @depth = 0
      case (@photometric_interpretation)
      when 0, 1
        # Bilevel or Grayscale image
        palette = get_gray_palette
        @depth = @bits_per_sample[0]
      when 2
        # RGB image
        if (!(@color_map_offset).equal?(NO_VALUE))
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
        # SamplesPerPixel 3 is the only value supported
        palette = get_rgbpalette(@bits_per_sample[0], @bits_per_sample[1], @bits_per_sample[2])
        @depth = @bits_per_sample[0] + @bits_per_sample[1] + @bits_per_sample[2]
      when 3
        # Palette Color image
        if ((@color_map_offset).equal?(NO_VALUE))
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
        palette = get_color_map
        @depth = @bits_per_sample[0]
      else
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      image = ImageData.internal_new(@image_width, @image_length, @depth, palette, 1, nil, 0, nil, nil, -1, -1, SWT::IMAGE_TIFF, 0, 0, 0, 0)
      decode_pixels(image)
      return image
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
    def to_int(buffer, i, type)
      if ((type).equal?(TYPE_LONG))
        return @is_little_endian ? (buffer[i] & 0xff) | ((buffer[i + 1] & 0xff) << 8) | ((buffer[i + 2] & 0xff) << 16) | ((buffer[i + 3] & 0xff) << 24) : (buffer[i + 3] & 0xff) | ((buffer[i + 2] & 0xff) << 8) | ((buffer[i + 1] & 0xff) << 16) | ((buffer[i] & 0xff) << 24)
      end
      if ((type).equal?(TYPE_SHORT))
        return @is_little_endian ? (buffer[i] & 0xff) | ((buffer[i + 1] & 0xff) << 8) : (buffer[i + 1] & 0xff) | ((buffer[i] & 0xff) << 8)
      end
      # Invalid type
      SWT.error(SWT::ERROR_INVALID_IMAGE)
      return -1
    end
    
    typesig { [::Java::Int] }
    def write(photometric_interpretation)
      is_rgb = (photometric_interpretation).equal?(2)
      is_color_map = (photometric_interpretation).equal?(3)
      is_bi_level = (photometric_interpretation).equal?(0) || (photometric_interpretation).equal?(1)
      image_width = @image.attr_width
      image_length = @image.attr_height
      row_byte_size = @image.attr_bytes_per_line
      number_entries = is_bi_level ? 9 : 11
      length_directory = 2 + 12 * number_entries + 4
      # Offset following the header and the directory
      next_offset = 8 + length_directory
      # Extra space used by XResolution and YResolution values
      extra_bytes = 16
      color_map = nil
      if (is_color_map)
        palette = @image.attr_palette
        rgbs = palette.get_rgbs
        color_map = format_color_map(rgbs)
        # The number of entries of the Color Map must match the bitsPerSample field
        if (!(color_map.attr_length).equal?(3 * 1 << @image.attr_depth))
          SWT.error(SWT::ERROR_UNSUPPORTED_FORMAT)
        end
        # Extra space used by ColorMap values
        extra_bytes += color_map.attr_length * 2
      end
      if (is_rgb)
        # Extra space used by BitsPerSample values
        extra_bytes += 6
      end
      # TIFF recommends storing the data in strips of no more than 8 Ko
      data = @image.attr_data
      strips = Array.typed(::Java::Int).new(2) { 0 }
      nbr_rows_per_strip = format_strips(row_byte_size, image_length, data, 8192, next_offset, extra_bytes, strips)
      strip_offsets = strips[0]
      strip_byte_counts = strips[1]
      bits_per_sample_offset = NO_VALUE
      if (is_rgb)
        bits_per_sample_offset = next_offset
        next_offset += 6
      end
      strip_offsets_offset = NO_VALUE
      strip_byte_counts_offset = NO_VALUE
      x_resolution_offset = 0
      y_resolution_offset = 0
      color_map_offset = NO_VALUE
      cnt = strip_offsets.attr_length
      if (cnt > 1)
        strip_offsets_offset = next_offset
        next_offset += 4 * cnt
        strip_byte_counts_offset = next_offset
        next_offset += 4 * cnt
      end
      x_resolution_offset = next_offset
      next_offset += 8
      y_resolution_offset = next_offset
      next_offset += 8
      if (is_color_map)
        color_map_offset = next_offset
        next_offset += color_map.attr_length * 2
      end
      # TIFF header
      write_header
      # Image File Directory
      @out.write_short(number_entries)
      write_entry(TAG_ImageWidth, TYPE_LONG, 1, image_width)
      write_entry(TAG_ImageLength, TYPE_LONG, 1, image_length)
      if (is_color_map)
        write_entry(TAG_BitsPerSample, TYPE_SHORT, 1, @image.attr_depth)
      end
      if (is_rgb)
        write_entry(TAG_BitsPerSample, TYPE_SHORT, 3, bits_per_sample_offset)
      end
      write_entry(TAG_Compression, TYPE_SHORT, 1, COMPRESSION_NONE)
      write_entry(TAG_PhotometricInterpretation, TYPE_SHORT, 1, photometric_interpretation)
      write_entry(TAG_StripOffsets, TYPE_LONG, cnt, cnt > 1 ? strip_offsets_offset : strip_offsets[0])
      if (is_rgb)
        write_entry(TAG_SamplesPerPixel, TYPE_SHORT, 1, 3)
      end
      write_entry(TAG_RowsPerStrip, TYPE_LONG, 1, nbr_rows_per_strip)
      write_entry(TAG_StripByteCounts, TYPE_LONG, cnt, cnt > 1 ? strip_byte_counts_offset : strip_byte_counts[0])
      write_entry(TAG_XResolution, TYPE_RATIONAL, 1, x_resolution_offset)
      write_entry(TAG_YResolution, TYPE_RATIONAL, 1, y_resolution_offset)
      if (is_color_map)
        write_entry(TAG_ColorMap, TYPE_SHORT, color_map.attr_length, color_map_offset)
      end
      # Offset of next IFD (0 for last IFD)
      @out.write_int(0)
      # Values longer than 4 bytes Section
      # BitsPerSample 8,8,8
      if (is_rgb)
        i = 0
        while i < 3
          @out.write_short(8)
          ((i += 1) - 1)
        end
      end
      if (cnt > 1)
        i_ = 0
        while i_ < cnt
          @out.write_int(strip_offsets[i_])
          ((i_ += 1) - 1)
        end
        i__ = 0
        while i__ < cnt
          @out.write_int(strip_byte_counts[i__])
          ((i__ += 1) - 1)
        end
      end
      # XResolution and YResolution set to 300 dpi
      i_ = 0
      while i_ < 2
        @out.write_int(300)
        @out.write_int(1)
        ((i_ += 1) - 1)
      end
      # ColorMap
      if (is_color_map)
        i__ = 0
        while i__ < color_map.attr_length
          @out.write_short(color_map[i__])
          ((i__ += 1) - 1)
        end
      end
      # Image Data
      @out.write(data)
    end
    
    typesig { [::Java::Short, ::Java::Int, ::Java::Int, ::Java::Int] }
    def write_entry(tag, type, count, value)
      @out.write_short(tag)
      @out.write_short(type)
      @out.write_int(count)
      @out.write_int(value)
    end
    
    typesig { [] }
    def write_header
      # little endian
      @out.write(0x49)
      @out.write(0x49)
      # TIFF identifier
      @out.write_short(42)
      # Offset of the first IFD is chosen to be 8.
      # It is word aligned and immediately after this header.
      @out.write_int(8)
    end
    
    typesig { [LEDataOutputStream] }
    def write_to_stream(byte_stream)
      @out = byte_stream
      photometric_interpretation = -1
      # Scanline pad must be 1
      if (!(@image.attr_scanline_pad).equal?(1))
        SWT.error(SWT::ERROR_UNSUPPORTED_FORMAT)
      end
      case (@image.attr_depth)
      when 1
        # Palette must be black and white or white and black
        palette = @image.attr_palette
        rgbs = palette.attr_colors
        if (palette.attr_is_direct || (rgbs).nil? || !(rgbs.attr_length).equal?(2))
          SWT.error(SWT::ERROR_UNSUPPORTED_FORMAT)
        end
        rgb0 = rgbs[0]
        rgb1 = rgbs[1]
        if (!((rgb0.attr_red).equal?(rgb0.attr_green) && (rgb0.attr_green).equal?(rgb0.attr_blue) && (rgb1.attr_red).equal?(rgb1.attr_green) && (rgb1.attr_green).equal?(rgb1.attr_blue) && (((rgb0.attr_red).equal?(0x0) && (rgb1.attr_red).equal?(0xff)) || ((rgb0.attr_red).equal?(0xff) && (rgb1.attr_red).equal?(0x0)))))
          SWT.error(SWT::ERROR_UNSUPPORTED_FORMAT)
        end
        # 0 means a color index of 0 is imaged as white
        photometric_interpretation = (@image.attr_palette.attr_colors[0].attr_red).equal?(0xff) ? 0 : 1
      when 4, 8
        photometric_interpretation = 3
      when 24
        photometric_interpretation = 2
      else
        SWT.error(SWT::ERROR_UNSUPPORTED_FORMAT)
      end
      write(photometric_interpretation)
    end
    
    private
    alias_method :initialize__tiffdirectory, :initialize
  end
  
end
