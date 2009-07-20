require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Image
  module PNGFileFormatImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Java::Io
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  class PNGFileFormat < PNGFileFormatImports.const_get :FileFormat
    include_class_members PNGFileFormatImports
    
    class_module.module_eval {
      const_set_lazy(:SIGNATURE_LENGTH) { 8 }
      const_attr_reader  :SIGNATURE_LENGTH
      
      const_set_lazy(:PRIME) { 65521 }
      const_attr_reader  :PRIME
    }
    
    attr_accessor :header_chunk
    alias_method :attr_header_chunk, :header_chunk
    undef_method :header_chunk
    alias_method :attr_header_chunk=, :header_chunk=
    undef_method :header_chunk=
    
    attr_accessor :palette_chunk
    alias_method :attr_palette_chunk, :palette_chunk
    undef_method :palette_chunk
    alias_method :attr_palette_chunk=, :palette_chunk=
    undef_method :palette_chunk=
    
    attr_accessor :image_data
    alias_method :attr_image_data, :image_data
    undef_method :image_data
    alias_method :attr_image_data=, :image_data=
    undef_method :image_data=
    
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    attr_accessor :alpha_palette
    alias_method :attr_alpha_palette, :alpha_palette
    undef_method :alpha_palette
    alias_method :attr_alpha_palette=, :alpha_palette=
    undef_method :alpha_palette=
    
    attr_accessor :header_byte1
    alias_method :attr_header_byte1, :header_byte1
    undef_method :header_byte1
    alias_method :attr_header_byte1=, :header_byte1=
    undef_method :header_byte1=
    
    attr_accessor :header_byte2
    alias_method :attr_header_byte2, :header_byte2
    undef_method :header_byte2
    alias_method :attr_header_byte2=, :header_byte2=
    undef_method :header_byte2=
    
    attr_accessor :adler
    alias_method :attr_adler, :adler
    undef_method :adler
    alias_method :attr_adler=, :adler=
    undef_method :adler=
    
    typesig { [] }
    # Skip over signature data. This has already been
    # verified in isFileFormat().
    def read_signature
      signature = Array.typed(::Java::Byte).new(SIGNATURE_LENGTH) { 0 }
      self.attr_input_stream.read(signature)
    end
    
    typesig { [] }
    # Load the PNG image from the byte stream.
    def load_from_byte_stream
      begin
        read_signature
        chunk_reader = PngChunkReader.new(self.attr_input_stream)
        @header_chunk = chunk_reader.get_ihdr_chunk
        width = @header_chunk.get_width
        height = @header_chunk.get_height
        if (width <= 0 || height <= 0)
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
        image_size = get_aligned_bytes_per_row * height
        @data = Array.typed(::Java::Byte).new(image_size) { 0 }
        @image_data = ImageData.internal_new(width, height, @header_chunk.get_swt_bits_per_pixel, PaletteData.new(0, 0, 0), 4, @data, 0, nil, nil, -1, -1, SWT::IMAGE_PNG, 0, 0, 0, 0)
        if (@header_chunk.uses_direct_color)
          @image_data.attr_palette = @header_chunk.get_palette_data
        end
        # Read and process chunks until the IEND chunk is encountered.
        while (chunk_reader.has_more_chunks)
          read_next_chunk(chunk_reader)
        end
        return Array.typed(ImageData).new([@image_data])
      rescue IOException => e
        SWT.error(SWT::ERROR_INVALID_IMAGE)
        return nil
      end
    end
    
    typesig { [PngChunkReader] }
    # Read and handle the next chunk of data from the
    # PNG file.
    def read_next_chunk(chunk_reader)
      chunk = chunk_reader.read_next_chunk
      case (chunk.get_chunk_type)
      when PngChunk::CHUNK_IEND
      when PngChunk::CHUNK_PLTE
        if (!@header_chunk.uses_direct_color)
          @palette_chunk = chunk
          @image_data.attr_palette = @palette_chunk.get_palette_data
        end
      when PngChunk::CHUNK_tRNS
        trns_chunk = chunk
        if ((trns_chunk.get_transparency_type(@header_chunk)).equal?(PngTrnsChunk::TRANSPARENCY_TYPE_PIXEL))
          @image_data.attr_transparent_pixel = trns_chunk.get_swt_transparent_pixel(@header_chunk)
        else
          @alpha_palette = trns_chunk.get_alpha_values(@header_chunk, @palette_chunk)
          transparent_count = 0
          transparent_pixel = -1
          i = 0
          while i < @alpha_palette.attr_length
            if (!((@alpha_palette[i] & 0xff)).equal?(255))
              ((transparent_count += 1) - 1)
              transparent_pixel = i
            end
            ((i += 1) - 1)
          end
          if ((transparent_count).equal?(0))
            @alpha_palette = nil
          else
            if ((transparent_count).equal?(1) && (@alpha_palette[transparent_pixel]).equal?(0))
              @alpha_palette = nil
              @image_data.attr_transparent_pixel = transparent_pixel
            end
          end
        end
      when PngChunk::CHUNK_IDAT
        if (chunk_reader.read_pixel_data)
          # All IDAT chunks in an image file must be
          # sequential. If the pixel data has already
          # been read and another IDAT block is encountered,
          # then this is an invalid image.
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        else
          # Read in the pixel data for the image. This should
          # go through all the image's IDAT chunks.
          data_chunk = chunk
          read_pixel_data(data_chunk, chunk_reader)
        end
      else
        if (chunk.is_critical)
          # All critical chunks must be supported.
          SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
        end
      end
    end
    
    typesig { [ImageLoader] }
    def unload_into_byte_stream(loader)
      encoder = PngEncoder.new(loader)
      encoder.encode(self.attr_output_stream)
    end
    
    typesig { [LEDataInputStream] }
    def is_file_format(stream)
      begin
        signature = Array.typed(::Java::Byte).new(SIGNATURE_LENGTH) { 0 }
        stream.read(signature)
        stream.unread(signature)
        if (!((signature[0] & 0xff)).equal?(137))
          return false
        end # 137
        if (!((signature[1] & 0xff)).equal?(80))
          return false
        end # P
        if (!((signature[2] & 0xff)).equal?(78))
          return false
        end # N
        if (!((signature[3] & 0xff)).equal?(71))
          return false
        end # G
        if (!((signature[4] & 0xff)).equal?(13))
          return false
        end # <RETURN>
        if (!((signature[5] & 0xff)).equal?(10))
          return false
        end # <LINEFEED>
        if (!((signature[6] & 0xff)).equal?(26))
          return false
        end # <CTRL/Z>
        if (!((signature[7] & 0xff)).equal?(10))
          return false
        end # <LINEFEED>
        return true
      rescue Exception => e
        return false
      end
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    # SWT does not support 16-bit depths. If this image uses
    # 16-bit depths, convert the data to an 8-bit depth.
    def validate_bit_depth(data)
      if (@header_chunk.get_bit_depth > 8)
        result = Array.typed(::Java::Byte).new(data.attr_length / 2) { 0 }
        compress16_bit_depth_to8bit_depth(data, 0, result, 0, result.attr_length)
        return result
      else
        return data
      end
    end
    
    typesig { [Array.typed(::Java::Byte), ImageData] }
    # SWT does not support greyscale as a color type. For
    # plain grayscale, we create a palette. For Grayscale
    # with Alpha, however, we need to convert the pixels
    # to use RGB values.
    # Note: This method assumes that the bit depth of the
    # data has already been restricted to 8 or less.
    def set_pixel_data(data, image_data)
      case (@header_chunk.get_color_type)
      when PngIhdrChunk::COLOR_TYPE_GRAYSCALE_WITH_ALPHA
        width = image_data.attr_width
        height = image_data.attr_height
        dest_bytes_per_line = image_data.attr_bytes_per_line
        # If the image uses 16-bit depth, it is converted
        # to an 8-bit depth image.
        src_bytes_per_line = get_aligned_bytes_per_row
        if (@header_chunk.get_bit_depth > 8)
          src_bytes_per_line /= 2
        end
        rgb_data = Array.typed(::Java::Byte).new(dest_bytes_per_line * height) { 0 }
        alpha_data = Array.typed(::Java::Byte).new(width * height) { 0 }
        y = 0
        while y < height
          src_index = src_bytes_per_line * y
          dest_index = dest_bytes_per_line * y
          dest_alpha_index = width * y
          x = 0
          while x < width
            grey = data[src_index]
            alpha = data[src_index + 1]
            rgb_data[dest_index + 0] = grey
            rgb_data[dest_index + 1] = grey
            rgb_data[dest_index + 2] = grey
            alpha_data[dest_alpha_index] = alpha
            src_index += 2
            dest_index += 3
            ((dest_alpha_index += 1) - 1)
            ((x += 1) - 1)
          end
          ((y += 1) - 1)
        end
        image_data.attr_data = rgb_data
        image_data.attr_alpha_data = alpha_data
      when PngIhdrChunk::COLOR_TYPE_RGB_WITH_ALPHA
        width = image_data.attr_width
        height = image_data.attr_height
        dest_bytes_per_line = image_data.attr_bytes_per_line
        src_bytes_per_line = get_aligned_bytes_per_row
        # If the image uses 16-bit depth, it is converted
        # to an 8-bit depth image.
        if (@header_chunk.get_bit_depth > 8)
          src_bytes_per_line /= 2
        end
        rgb_data = Array.typed(::Java::Byte).new(dest_bytes_per_line * height) { 0 }
        alpha_data = Array.typed(::Java::Byte).new(width * height) { 0 }
        y = 0
        while y < height
          src_index = src_bytes_per_line * y
          dest_index = dest_bytes_per_line * y
          dest_alpha_index = width * y
          x = 0
          while x < width
            rgb_data[dest_index + 0] = data[src_index + 0]
            rgb_data[dest_index + 1] = data[src_index + 1]
            rgb_data[dest_index + 2] = data[src_index + 2]
            alpha_data[dest_alpha_index] = data[src_index + 3]
            src_index += 4
            dest_index += 3
            ((dest_alpha_index += 1) - 1)
            ((x += 1) - 1)
          end
          ((y += 1) - 1)
        end
        image_data.attr_data = rgb_data
        image_data.attr_alpha_data = alpha_data
      when PngIhdrChunk::COLOR_TYPE_RGB
        image_data.attr_data = data
      when PngIhdrChunk::COLOR_TYPE_PALETTE
        image_data.attr_data = data
        if (!(@alpha_palette).nil?)
          size = image_data.attr_width * image_data.attr_height
          alpha_data = Array.typed(::Java::Byte).new(size) { 0 }
          pixel_data = Array.typed(::Java::Byte).new(size) { 0 }
          image_data.get_pixels(0, 0, size, pixel_data, 0)
          i = 0
          while i < pixel_data.attr_length
            alpha_data[i] = @alpha_palette[pixel_data[i] & 0xff]
            ((i += 1) - 1)
          end
          image_data.attr_alpha_data = alpha_data
        end
      else
        image_data.attr_data = data
      end
    end
    
    typesig { [Array.typed(::Java::Byte), ImageData] }
    # PNG supports some color types and bit depths that are
    # unsupported by SWT. If the image uses an unsupported
    # color type (either of the gray scale types) or bit
    # depth (16), convert the data to an SWT-supported
    # format. Then assign the data into the ImageData given.
    def set_image_data_values(data, image_data)
      result = validate_bit_depth(data)
      set_pixel_data(result, image_data)
    end
    
    typesig { [PngIdatChunk, PngChunkReader] }
    # Read the image data from the data stream. This must handle
    # decoding the data, filtering, and interlacing.
    def read_pixel_data(chunk, chunk_reader)
      stream = PngInputStream.new(chunk, chunk_reader)
      # TEMPORARY CODE
      use3_2 = !(System.get_property("org.eclipse.swt.internal.image.PNGFileFormat_3.2")).nil?
      inflater_stream = use3_2 ? nil : Compatibility.new_inflater_input_stream(stream)
      if (!(inflater_stream).nil?)
        stream = inflater_stream
      else
        stream = PngDecodingDataStream.new(stream)
      end
      interlace_method = @header_chunk.get_interlace_method
      if ((interlace_method).equal?(PngIhdrChunk::INTERLACE_METHOD_NONE))
        read_non_interlaced_image(stream)
      else
        read_interlaced_image(stream)
      end
      # InflaterInputStream does not consume all bytes in the stream
      # when it is closed. This may leave unread IDAT chunks. The fix
      # is to read all available bytes before closing it.
      while (stream.available > 0)
        stream.read
      end
      stream.close
    end
    
    typesig { [] }
    # Answer the number of bytes in a word-aligned row of pixel data.
    def get_aligned_bytes_per_row
      return ((get_bytes_per_row(@header_chunk.get_width) + 3) / 4) * 4
    end
    
    typesig { [] }
    # Answer the number of bytes in each row of the image
    # data. Each PNG row is byte-aligned, so images with bit
    # depths less than a byte may have unused bits at the
    # end of each row. The value of these bits is undefined.
    def get_bytes_per_row
      return get_bytes_per_row(@header_chunk.get_width)
    end
    
    typesig { [] }
    # Answer the number of bytes needed to represent a pixel.
    # This value depends on the image's color type and bit
    # depth.
    # Note that this method rounds up if an image's pixel size
    # isn't byte-aligned.
    def get_bytes_per_pixel
      bits_per_pixel = @header_chunk.get_bits_per_pixel
      return (bits_per_pixel + 7) / 8
    end
    
    typesig { [::Java::Int] }
    # Answer the number of bytes in a row of the given pixel
    # width. Each row is byte-aligned, so images with bit
    # depths less than a byte may have unused bits at the
    # end of each row. The value of these bits is undefined.
    def get_bytes_per_row(row_width_in_pixels)
      bits_per_pixel = @header_chunk.get_bits_per_pixel
      bits_per_row = bits_per_pixel * row_width_in_pixels
      bits_per_byte = 8
      return (bits_per_row + (bits_per_byte - 1)) / bits_per_byte
    end
    
    typesig { [InputStream, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # 1. Read one of the seven frames of interlaced data.
    # 2. Update the imageData.
    # 3. Notify the image loader's listeners of the frame load.
    def read_interlace_frame(input_stream, row_interval, column_interval, start_row, start_column, frame_count)
      width = @header_chunk.get_width
      aligned_bytes_per_row = get_aligned_bytes_per_row
      height = @header_chunk.get_height
      if (start_row >= height || start_column >= width)
        return
      end
      pixels_per_row = (width - start_column + column_interval - 1) / column_interval
      bytes_per_row = get_bytes_per_row(pixels_per_row)
      row1 = Array.typed(::Java::Byte).new(bytes_per_row) { 0 }
      row2 = Array.typed(::Java::Byte).new(bytes_per_row) { 0 }
      current_row = row1
      last_row = row2
      row = start_row
      while row < height
        filter_type = input_stream.read
        read_ = 0
        while (!(read_).equal?(bytes_per_row))
          read_ += input_stream.read(current_row, read_, bytes_per_row - read_)
        end
        filter_row(current_row, last_row, filter_type)
        if (@header_chunk.get_bit_depth >= 8)
          bytes_per_pixel = get_bytes_per_pixel
          data_offset = (row * aligned_bytes_per_row) + (start_column * bytes_per_pixel)
          row_offset = 0
          while row_offset < current_row.attr_length
            byte_offset = 0
            while byte_offset < bytes_per_pixel
              @data[data_offset + byte_offset] = current_row[row_offset + byte_offset]
              ((byte_offset += 1) - 1)
            end
            data_offset += (column_interval * bytes_per_pixel)
            row_offset += bytes_per_pixel
          end
        else
          bits_per_pixel = @header_chunk.get_bit_depth
          pixels_per_byte = 8 / bits_per_pixel
          column = start_column
          row_base = row * aligned_bytes_per_row
          value_mask = 0
          i = 0
          while i < bits_per_pixel
            value_mask <<= 1
            value_mask |= 1
            ((i += 1) - 1)
          end
          max_shift = 8 - bits_per_pixel
          byte_offset = 0
          while byte_offset < current_row.attr_length
            bit_offset = max_shift
            while bit_offset >= 0
              if (column < width)
                data_offset = row_base + (column * bits_per_pixel / 8)
                value = (current_row[byte_offset] >> bit_offset) & value_mask
                data_shift = max_shift - (bits_per_pixel * (column % pixels_per_byte))
                @data[data_offset] |= value << data_shift
              end
              column += column_interval
              bit_offset -= bits_per_pixel
            end
            ((byte_offset += 1) - 1)
          end
        end
        current_row = ((current_row).equal?(row1)) ? row2 : row1
        last_row = ((last_row).equal?(row1)) ? row2 : row1
        row += row_interval
      end
      set_image_data_values(@data, @image_data)
      fire_interlaced_frame_event(frame_count)
    end
    
    typesig { [InputStream] }
    # Read the pixel data for an interlaced image from the
    # data stream.
    def read_interlaced_image(input_stream)
      read_interlace_frame(input_stream, 8, 8, 0, 0, 0)
      read_interlace_frame(input_stream, 8, 8, 0, 4, 1)
      read_interlace_frame(input_stream, 8, 4, 4, 0, 2)
      read_interlace_frame(input_stream, 4, 4, 0, 2, 3)
      read_interlace_frame(input_stream, 4, 2, 2, 0, 4)
      read_interlace_frame(input_stream, 2, 2, 0, 1, 5)
      read_interlace_frame(input_stream, 2, 1, 1, 0, 6)
    end
    
    typesig { [::Java::Int] }
    # Fire an event to let listeners know that an interlaced
    # frame has been loaded.
    # finalFrame should be true if the image has finished
    # loading, false if there are more frames to come.
    def fire_interlaced_frame_event(frame_count)
      if (self.attr_loader.has_listeners)
        image = @image_data.clone
        final_frame = (frame_count).equal?(6)
        self.attr_loader.notify_listeners(ImageLoaderEvent.new(self.attr_loader, image, frame_count, final_frame))
      end
    end
    
    typesig { [InputStream] }
    # Read the pixel data for a non-interlaced image from the
    # data stream.
    # Update the imageData to reflect the new data.
    def read_non_interlaced_image(input_stream)
      data_offset = 0
      aligned_bytes_per_row = get_aligned_bytes_per_row
      bytes_per_row = get_bytes_per_row
      row1 = Array.typed(::Java::Byte).new(bytes_per_row) { 0 }
      row2 = Array.typed(::Java::Byte).new(bytes_per_row) { 0 }
      current_row = row1
      last_row = row2
      height = @header_chunk.get_height
      row = 0
      while row < height
        filter_type = input_stream.read
        read_ = 0
        while (!(read_).equal?(bytes_per_row))
          read_ += input_stream.read(current_row, read_, bytes_per_row - read_)
        end
        filter_row(current_row, last_row, filter_type)
        System.arraycopy(current_row, 0, @data, data_offset, bytes_per_row)
        data_offset += aligned_bytes_per_row
        current_row = ((current_row).equal?(row1)) ? row2 : row1
        last_row = ((last_row).equal?(row1)) ? row2 : row1
        ((row += 1) - 1)
      end
      set_image_data_values(@data, @image_data)
    end
    
    class_module.module_eval {
      typesig { [Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # SWT does not support 16-bit depth color formats.
      # Convert the 16-bit data to 8-bit data.
      # The correct way to do this is to multiply each
      # 16 bit value by the value:
      # (2^8 - 1) / (2^16 - 1).
      # The fast way to do this is just to drop the low
      # byte of the 16-bit value.
      def compress16_bit_depth_to8bit_depth(source, source_offset, destination, destination_offset, number_of_values)
        # double multiplier = (Compatibility.pow2(8) - 1) / (Compatibility.pow2(16) - 1);
        i = 0
        while i < number_of_values
          source_index = source_offset + (2 * i)
          destination_index = destination_offset + i
          # int value = (source[sourceIndex] << 8) | source[sourceIndex + 1];
          # byte compressedValue = (byte)(value * multiplier);
          compressed_value = source[source_index]
          destination[destination_index] = compressed_value
          ((i += 1) - 1)
        end
      end
      
      typesig { [::Java::Int] }
      # SWT does not support 16-bit depth color formats.
      # Convert the 16-bit data to 8-bit data.
      # The correct way to do this is to multiply each
      # 16 bit value by the value:
      # (2^8 - 1) / (2^16 - 1).
      # The fast way to do this is just to drop the low
      # byte of the 16-bit value.
      def compress16_bit_depth_to8bit_depth(value)
        # double multiplier = (Compatibility.pow2(8) - 1) / (Compatibility.pow2(16) - 1);
        # byte compressedValue = (byte)(value * multiplier);
        return value >> 8
      end
    }
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
    # PNG supports four filtering types. These types are applied
    # per row of image data. This method unfilters the given row
    # based on the filterType.
    def filter_row(row, previous_row, filter_type)
      byte_offset = @header_chunk.get_filter_byte_offset
      case (filter_type)
      when PngIhdrChunk::FILTER_NONE
      when PngIhdrChunk::FILTER_SUB
        i = byte_offset
        while i < row.attr_length
          current = row[i] & 0xff
          left = row[i - byte_offset] & 0xff
          row[i] = ((current + left) & 0xff)
          ((i += 1) - 1)
        end
      when PngIhdrChunk::FILTER_UP
        i = 0
        while i < row.attr_length
          current = row[i] & 0xff
          above = previous_row[i] & 0xff
          row[i] = ((current + above) & 0xff)
          ((i += 1) - 1)
        end
      when PngIhdrChunk::FILTER_AVERAGE
        i = 0
        while i < row.attr_length
          left = (i < byte_offset) ? 0 : row[i - byte_offset] & 0xff
          above = previous_row[i] & 0xff
          current = row[i] & 0xff
          row[i] = ((current + ((left + above) / 2)) & 0xff)
          ((i += 1) - 1)
        end
      when PngIhdrChunk::FILTER_PAETH
        i = 0
        while i < row.attr_length
          left = (i < byte_offset) ? 0 : row[i - byte_offset] & 0xff
          above_left = (i < byte_offset) ? 0 : previous_row[i - byte_offset] & 0xff
          above = previous_row[i] & 0xff
          a = Math.abs(above - above_left)
          b = Math.abs(left - above_left)
          c = Math.abs(left - above_left + above - above_left)
          preductor = 0
          if (a <= b && a <= c)
            preductor = left
          else
            if (b <= c)
              preductor = above
            else
              preductor = above_left
            end
          end
          current_value = row[i] & 0xff
          row[i] = ((current_value + preductor) & 0xff)
          ((i += 1) - 1)
        end
      end
    end
    
    typesig { [] }
    def initialize
      @header_chunk = nil
      @palette_chunk = nil
      @image_data = nil
      @data = nil
      @alpha_palette = nil
      @header_byte1 = 0
      @header_byte2 = 0
      @adler = 0
      super()
    end
    
    private
    alias_method :initialize__pngfile_format, :initialize
  end
  
end
