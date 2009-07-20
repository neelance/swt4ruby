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
  module WinBMPFileFormatImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Java::Io
    }
  end
  
  class WinBMPFileFormat < WinBMPFileFormatImports.const_get :FileFormat
    include_class_members WinBMPFileFormatImports
    
    class_module.module_eval {
      const_set_lazy(:BMPFileHeaderSize) { 14 }
      const_attr_reader  :BMPFileHeaderSize
      
      const_set_lazy(:BMPHeaderFixedSize) { 40 }
      const_attr_reader  :BMPHeaderFixedSize
    }
    
    attr_accessor :important_colors
    alias_method :attr_important_colors, :important_colors
    undef_method :important_colors
    alias_method :attr_important_colors=, :important_colors=
    undef_method :important_colors=
    
    attr_accessor :pels_per_meter
    alias_method :attr_pels_per_meter, :pels_per_meter
    undef_method :pels_per_meter
    alias_method :attr_pels_per_meter=, :pels_per_meter=
    undef_method :pels_per_meter=
    
    typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Boolean] }
    # Compress numBytes bytes of image data from src, storing in dest
    # (starting at 0), using the technique specified by comp.
    # If last is true, this indicates the last line of the image.
    # Answer the size of the compressed data.
    def compress(comp, src, src_offset, num_bytes, dest, last)
      if ((comp).equal?(1))
        # BMP_RLE8_COMPRESSION
        return compress_rle8data(src, src_offset, num_bytes, dest, last)
      end
      if ((comp).equal?(2))
        # BMP_RLE4_COMPRESSION
        return compress_rle4data(src, src_offset, num_bytes, dest, last)
      end
      SWT.error(SWT::ERROR_INVALID_IMAGE)
      return 0
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Boolean] }
    def compress_rle4data(src, src_offset, num_bytes, dest, last)
      sp = src_offset
      end_ = src_offset + num_bytes
      dp = 0
      size = 0
      left = 0
      i = 0
      n = 0
      the_byte = 0
      while (sp < end_)
        # find two consecutive bytes that are the same in the next 128
        left = end_ - sp - 1
        if (left > 127)
          left = 127
        end
        n = 0
        while n < left
          if ((src[sp + n]).equal?(src[sp + n + 1]))
            break
          end
          ((n += 1) - 1)
        end
        # if there is only one more byte in the scan line, include it
        if (n < 127 && (n).equal?(left))
          ((n += 1) - 1)
        end
        # store the intervening data
        case (n)
        when 0
        when 1
          # handled separately because 0,2 is a command
          dest[dp] = 2
          ((dp += 1) - 1)
          # 1 byte == 2 pixels
          dest[dp] = src[sp]
          ((dp += 1) - 1)
          ((sp += 1) - 1)
          size += 2
        else
          dest[dp] = 0
          ((dp += 1) - 1)
          dest[dp] = (n + n)
          ((dp += 1) - 1)
          # n bytes = n*2 pixels
          i = n
          while i > 0
            dest[dp] = src[sp]
            ((dp += 1) - 1)
            ((sp += 1) - 1)
            ((i -= 1) + 1)
          end
          size += 2 + n
          if (!((n & 1)).equal?(0))
            # pad to word
            dest[dp] = 0
            ((dp += 1) - 1)
            ((size += 1) - 1)
          end
        end
        # find the length of the next run (up to 127) and store it
        left = end_ - sp
        if (left > 0)
          if (left > 127)
            left = 127
          end
          the_byte = src[sp]
          n = 1
          while n < left
            if (!(src[sp + n]).equal?(the_byte))
              break
            end
            ((n += 1) - 1)
          end
          dest[dp] = (n + n)
          ((dp += 1) - 1)
          # n bytes = n*2 pixels
          dest[dp] = the_byte
          ((dp += 1) - 1)
          sp += n
          size += 2
        end
      end
      # store the end of line or end of bitmap codes
      dest[dp] = 0
      ((dp += 1) - 1)
      if (last)
        dest[dp] = 1
        ((dp += 1) - 1)
      else
        dest[dp] = 0
        ((dp += 1) - 1)
      end
      size += 2
      return size
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Boolean] }
    def compress_rle8data(src, src_offset, num_bytes, dest, last)
      sp = src_offset
      end_ = src_offset + num_bytes
      dp = 0
      size = 0
      left = 0
      i = 0
      n = 0
      the_byte = 0
      while (sp < end_)
        # find two consecutive bytes that are the same in the next 256
        left = end_ - sp - 1
        if (left > 254)
          left = 254
        end
        n = 0
        while n < left
          if ((src[sp + n]).equal?(src[sp + n + 1]))
            break
          end
          ((n += 1) - 1)
        end
        # if there is only one more byte in the scan line, include it
        if ((n).equal?(left))
          ((n += 1) - 1)
        end
        # store the intervening data
        case (n)
        # don't break, fall through
        when 0
        when 2
          # handled separately because 0,2 is a command
          dest[dp] = 1
          ((dp += 1) - 1)
          dest[dp] = src[sp]
          ((dp += 1) - 1)
          ((sp += 1) - 1)
          size += 2
          # handled separately because 0,1 is a command
          dest[dp] = 1
          ((dp += 1) - 1)
          dest[dp] = src[sp]
          ((dp += 1) - 1)
          ((sp += 1) - 1)
          size += 2
        when 1
          # handled separately because 0,1 is a command
          dest[dp] = 1
          ((dp += 1) - 1)
          dest[dp] = src[sp]
          ((dp += 1) - 1)
          ((sp += 1) - 1)
          size += 2
        else
          dest[dp] = 0
          ((dp += 1) - 1)
          dest[dp] = n
          ((dp += 1) - 1)
          i = n
          while i > 0
            dest[dp] = src[sp]
            ((dp += 1) - 1)
            ((sp += 1) - 1)
            ((i -= 1) + 1)
          end
          size += 2 + n
          if (!((n & 1)).equal?(0))
            # pad to word
            dest[dp] = 0
            ((dp += 1) - 1)
            ((size += 1) - 1)
          end
        end
        # find the length of the next run (up to 255) and store it
        left = end_ - sp
        if (left > 0)
          if (left > 255)
            left = 255
          end
          the_byte = src[sp]
          n = 1
          while n < left
            if (!(src[sp + n]).equal?(the_byte))
              break
            end
            ((n += 1) - 1)
          end
          dest[dp] = n
          ((dp += 1) - 1)
          dest[dp] = the_byte
          ((dp += 1) - 1)
          sp += n
          size += 2
        end
      end
      # store the end of line or end of bitmap codes
      dest[dp] = 0
      ((dp += 1) - 1)
      if (last)
        dest[dp] = 1
        ((dp += 1) - 1)
      else
        dest[dp] = 0
        ((dp += 1) - 1)
      end
      size += 2
      return size
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
    def decompress_data(src, dest, stride, cmp)
      if ((cmp).equal?(1))
        # BMP_RLE8_COMPRESSION
        if (decompress_rle8data(src, src.attr_length, stride, dest, dest.attr_length) <= 0)
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
        return
      end
      if ((cmp).equal?(2))
        # BMP_RLE4_COMPRESSION
        if (decompress_rle4data(src, src.attr_length, stride, dest, dest.attr_length) <= 0)
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
        return
      end
      SWT.error(SWT::ERROR_INVALID_IMAGE)
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
    def decompress_rle4data(src, num_bytes, stride, dest, dest_size)
      sp = 0
      se = num_bytes
      dp = 0
      de = dest_size
      x = 0
      y = 0
      while (sp < se)
        len = src[sp] & 0xff
        ((sp += 1) - 1)
        if ((len).equal?(0))
          len = src[sp] & 0xff
          ((sp += 1) - 1)
          case (len)
          when 0
            # end of line
            ((y += 1) - 1)
            x = 0
            dp = y * stride
            if (dp > de)
              return -1
            end
          when 1
            # end of bitmap
            return 1
          when 2
            # delta
            x += src[sp] & 0xff
            ((sp += 1) - 1)
            y += src[sp] & 0xff
            ((sp += 1) - 1)
            dp = y * stride + x / 2
            if (dp > de)
              return -1
            end
          else
            # absolute mode run
            if (!((len & 1)).equal?(0))
              # odd run lengths not currently supported
              return -1
            end
            x += len
            len = len / 2
            if (len > (se - sp))
              return -1
            end
            if (len > (de - dp))
              return -1
            end
            i = 0
            while i < len
              dest[dp] = src[sp]
              ((dp += 1) - 1)
              ((sp += 1) - 1)
              ((i += 1) - 1)
            end
            if (!((sp & 1)).equal?(0))
              ((sp += 1) - 1)
            end
            # word align sp?
          end
        else
          if (!((len & 1)).equal?(0))
            return -1
          end
          x += len
          len = len / 2
          the_byte = src[sp]
          ((sp += 1) - 1)
          if (len > (de - dp))
            return -1
          end
          i = 0
          while i < len
            dest[dp] = the_byte
            ((dp += 1) - 1)
            ((i += 1) - 1)
          end
        end
      end
      return 1
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
    def decompress_rle8data(src, num_bytes, stride, dest, dest_size)
      sp = 0
      se = num_bytes
      dp = 0
      de = dest_size
      x = 0
      y = 0
      while (sp < se)
        len = src[sp] & 0xff
        ((sp += 1) - 1)
        if ((len).equal?(0))
          len = src[sp] & 0xff
          ((sp += 1) - 1)
          case (len)
          when 0
            # end of line
            ((y += 1) - 1)
            x = 0
            dp = y * stride
            if (dp > de)
              return -1
            end
          when 1
            # end of bitmap
            return 1
          when 2
            # delta
            x += src[sp] & 0xff
            ((sp += 1) - 1)
            y += src[sp] & 0xff
            ((sp += 1) - 1)
            dp = y * stride + x
            if (dp > de)
              return -1
            end
          else
            # absolute mode run
            if (len > (se - sp))
              return -1
            end
            if (len > (de - dp))
              return -1
            end
            i = 0
            while i < len
              dest[dp] = src[sp]
              ((dp += 1) - 1)
              ((sp += 1) - 1)
              ((i += 1) - 1)
            end
            if (!((sp & 1)).equal?(0))
              ((sp += 1) - 1)
            end
            # word align sp?
            x += len
          end
        else
          the_byte = src[sp]
          ((sp += 1) - 1)
          if (len > (de - dp))
            return -1
          end
          i = 0
          while i < len
            dest[dp] = the_byte
            ((dp += 1) - 1)
            ((i += 1) - 1)
          end
          x += len
        end
      end
      return 1
    end
    
    typesig { [LEDataInputStream] }
    def is_file_format(stream)
      begin
        header = Array.typed(::Java::Byte).new(18) { 0 }
        stream.read(header)
        stream.unread(header)
        info_header_size = (header[14] & 0xff) | ((header[15] & 0xff) << 8) | ((header[16] & 0xff) << 16) | ((header[17] & 0xff) << 24)
        return (header[0]).equal?(0x42) && (header[1]).equal?(0x4d) && info_header_size >= BMPHeaderFixedSize
      rescue Exception => e
        return false
      end
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def load_data(info_header)
      width = (info_header[4] & 0xff) | ((info_header[5] & 0xff) << 8) | ((info_header[6] & 0xff) << 16) | ((info_header[7] & 0xff) << 24)
      height = (info_header[8] & 0xff) | ((info_header[9] & 0xff) << 8) | ((info_header[10] & 0xff) << 16) | ((info_header[11] & 0xff) << 24)
      bit_count = (info_header[14] & 0xff) | ((info_header[15] & 0xff) << 8)
      stride = (width * bit_count + 7) / 8
      stride = (stride + 3) / 4 * 4 # Round up to 4 byte multiple
      data = load_data(info_header, stride)
      flip_scan_lines(data, stride, height)
      return data
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int] }
    def load_data(info_header, stride)
      height = (info_header[8] & 0xff) | ((info_header[9] & 0xff) << 8) | ((info_header[10] & 0xff) << 16) | ((info_header[11] & 0xff) << 24)
      if (height < 0)
        height = -height
      end
      data_size = height * stride
      data = Array.typed(::Java::Byte).new(data_size) { 0 }
      cmp = (info_header[16] & 0xff) | ((info_header[17] & 0xff) << 8) | ((info_header[18] & 0xff) << 16) | ((info_header[19] & 0xff) << 24)
      if ((cmp).equal?(0) || (cmp).equal?(3))
        # BMP_NO_COMPRESSION
        begin
          if (!(self.attr_input_stream.read(data)).equal?(data_size))
            SWT.error(SWT::ERROR_INVALID_IMAGE)
          end
        rescue IOException => e
          SWT.error(SWT::ERROR_IO, e)
        end
      else
        compressed_size = (info_header[20] & 0xff) | ((info_header[21] & 0xff) << 8) | ((info_header[22] & 0xff) << 16) | ((info_header[23] & 0xff) << 24)
        compressed = Array.typed(::Java::Byte).new(compressed_size) { 0 }
        begin
          if (!(self.attr_input_stream.read(compressed)).equal?(compressed_size))
            SWT.error(SWT::ERROR_INVALID_IMAGE)
          end
        rescue IOException => e
          SWT.error(SWT::ERROR_IO, e)
        end
        decompress_data(compressed, data, stride, cmp)
      end
      return data
    end
    
    typesig { [] }
    def load_file_header
      header = Array.typed(::Java::Int).new(5) { 0 }
      begin
        header[0] = self.attr_input_stream.read_short
        header[1] = self.attr_input_stream.read_int
        header[2] = self.attr_input_stream.read_short
        header[3] = self.attr_input_stream.read_short
        header[4] = self.attr_input_stream.read_int
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      if (!(header[0]).equal?(0x4d42))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      return header
    end
    
    typesig { [] }
    def load_from_byte_stream
      file_header = load_file_header
      info_header = Array.typed(::Java::Byte).new(BMPHeaderFixedSize) { 0 }
      begin
        self.attr_input_stream.read(info_header)
      rescue Exception => e
        SWT.error(SWT::ERROR_IO, e)
      end
      width = (info_header[4] & 0xff) | ((info_header[5] & 0xff) << 8) | ((info_header[6] & 0xff) << 16) | ((info_header[7] & 0xff) << 24)
      height = (info_header[8] & 0xff) | ((info_header[9] & 0xff) << 8) | ((info_header[10] & 0xff) << 16) | ((info_header[11] & 0xff) << 24)
      if (height < 0)
        height = -height
      end
      bit_count = (info_header[14] & 0xff) | ((info_header[15] & 0xff) << 8)
      self.attr_compression = (info_header[16] & 0xff) | ((info_header[17] & 0xff) << 8) | ((info_header[18] & 0xff) << 16) | ((info_header[19] & 0xff) << 24)
      palette = load_palette(info_header)
      if (self.attr_input_stream.get_position < file_header[4])
        # Seek to the specified offset
        begin
          self.attr_input_stream.skip(file_header[4] - self.attr_input_stream.get_position)
        rescue IOException => e
          SWT.error(SWT::ERROR_IO, e)
        end
      end
      data = load_data(info_header)
      @important_colors = (info_header[36] & 0xff) | ((info_header[37] & 0xff) << 8) | ((info_header[38] & 0xff) << 16) | ((info_header[39] & 0xff) << 24)
      x_pels_per_meter = (info_header[24] & 0xff) | ((info_header[25] & 0xff) << 8) | ((info_header[26] & 0xff) << 16) | ((info_header[27] & 0xff) << 24)
      y_pels_per_meter = (info_header[28] & 0xff) | ((info_header[29] & 0xff) << 8) | ((info_header[30] & 0xff) << 16) | ((info_header[31] & 0xff) << 24)
      @pels_per_meter = Point.new(x_pels_per_meter, y_pels_per_meter)
      # BMP_RLE8_COMPRESSION
      # BMP_RLE4_COMPRESSION
      type = ((self.attr_compression).equal?(1)) || ((self.attr_compression).equal?(2)) ? SWT::IMAGE_BMP_RLE : SWT::IMAGE_BMP
      return Array.typed(ImageData).new([ImageData.internal_new(width, height, bit_count, palette, 4, data, 0, nil, nil, -1, -1, type, 0, 0, 0, 0)])
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def load_palette(info_header)
      depth = (info_header[14] & 0xff) | ((info_header[15] & 0xff) << 8)
      if (depth <= 8)
        num_colors = (info_header[32] & 0xff) | ((info_header[33] & 0xff) << 8) | ((info_header[34] & 0xff) << 16) | ((info_header[35] & 0xff) << 24)
        if ((num_colors).equal?(0))
          num_colors = 1 << depth
        else
          if (num_colors > 256)
            num_colors = 256
          end
        end
        buf = Array.typed(::Java::Byte).new(num_colors * 4) { 0 }
        begin
          if (!(self.attr_input_stream.read(buf)).equal?(buf.attr_length))
            SWT.error(SWT::ERROR_INVALID_IMAGE)
          end
        rescue IOException => e
          SWT.error(SWT::ERROR_IO, e)
        end
        return palette_from_bytes(buf, num_colors)
      end
      if ((depth).equal?(16))
        if ((self.attr_compression).equal?(3))
          begin
            return PaletteData.new(self.attr_input_stream.read_int, self.attr_input_stream.read_int, self.attr_input_stream.read_int)
          rescue IOException => e
            SWT.error(SWT::ERROR_IO, e)
          end
        end
        return PaletteData.new(0x7c00, 0x3e0, 0x1f)
      end
      if ((depth).equal?(24))
        return PaletteData.new(0xff, 0xff00, 0xff0000)
      end
      if ((self.attr_compression).equal?(3))
        begin
          return PaletteData.new(self.attr_input_stream.read_int, self.attr_input_stream.read_int, self.attr_input_stream.read_int)
        rescue IOException => e
          SWT.error(SWT::ERROR_IO, e)
        end
      end
      return PaletteData.new(0xff00, 0xff0000, -0x1000000)
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int] }
    def palette_from_bytes(bytes, num_colors)
      bytes_offset = 0
      colors = Array.typed(RGB).new(num_colors) { nil }
      i = 0
      while i < num_colors
        colors[i] = RGB.new(bytes[bytes_offset + 2] & 0xff, bytes[bytes_offset + 1] & 0xff, bytes[bytes_offset] & 0xff)
        bytes_offset += 4
        ((i += 1) - 1)
      end
      return PaletteData.new(colors)
    end
    
    class_module.module_eval {
      typesig { [PaletteData] }
      # Answer a byte array containing the BMP representation of
      # the given device independent palette.
      def palette_to_bytes(pal)
        n = (pal.attr_colors).nil? ? 0 : (pal.attr_colors.attr_length < 256 ? pal.attr_colors.attr_length : 256)
        bytes = Array.typed(::Java::Byte).new(n * 4) { 0 }
        offset = 0
        i = 0
        while i < n
          col = pal.attr_colors[i]
          bytes[offset] = col.attr_blue
          bytes[offset + 1] = col.attr_green
          bytes[offset + 2] = col.attr_red
          offset += 4
          ((i += 1) - 1)
        end
        return bytes
      end
    }
    
    typesig { [ImageData, OutputStream, ::Java::Int] }
    # Unload the given image's data into the given byte stream
    # using the given compression strategy.
    # Answer the number of bytes written.
    def unload_data(image, out, comp)
      total_size = 0
      begin
        if ((comp).equal?(0))
          return unload_data_no_compression(image, out)
        end
        bpl = (image.attr_width * image.attr_depth + 7) / 8
        bmp_bpl = (bpl + 3) / 4 * 4 # BMP pads scanlines to multiples of 4 bytes
        image_bpl = image.attr_bytes_per_line
        # Compression can actually take twice as much space, in worst case
        buf = Array.typed(::Java::Byte).new(bmp_bpl * 2) { 0 }
        src_offset = image_bpl * (image.attr_height - 1) # Start at last line
        data = image.attr_data
        total_size = 0
        buf2 = Array.typed(::Java::Byte).new(32768) { 0 }
        buf2offset = 0
        y = image.attr_height - 1
        while y >= 0
          line_size = compress(comp, data, src_offset, bpl, buf, (y).equal?(0))
          if (buf2offset + line_size > buf2.attr_length)
            out.write(buf2, 0, buf2offset)
            buf2offset = 0
          end
          System.arraycopy(buf, 0, buf2, buf2offset, line_size)
          buf2offset += line_size
          total_size += line_size
          src_offset -= image_bpl
          ((y -= 1) + 1)
        end
        if (buf2offset > 0)
          out.write(buf2, 0, buf2offset)
        end
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      return total_size
    end
    
    typesig { [ImageData, OutputStream] }
    # Prepare the given image's data for unloading into a byte stream
    # using no compression strategy.
    # Answer the number of bytes written.
    def unload_data_no_compression(image, out)
      bmp_bpl = 0
      begin
        bpl = (image.attr_width * image.attr_depth + 7) / 8
        bmp_bpl = (bpl + 3) / 4 * 4 # BMP pads scanlines to multiples of 4 bytes
        lines_per_buf = 32678 / bmp_bpl
        buf = Array.typed(::Java::Byte).new(lines_per_buf * bmp_bpl) { 0 }
        data = image.attr_data
        image_bpl = image.attr_bytes_per_line
        data_index = image_bpl * (image.attr_height - 1) # Start at last line
        if ((image.attr_depth).equal?(16))
          y = 0
          while y < image.attr_height
            count = image.attr_height - y
            if (lines_per_buf < count)
              count = lines_per_buf
            end
            buf_offset = 0
            i = 0
            while i < count
              w_index = 0
              while w_index < bpl
                buf[buf_offset + w_index + 1] = data[data_index + w_index + 1]
                buf[buf_offset + w_index] = data[data_index + w_index]
                w_index += 2
              end
              buf_offset += bmp_bpl
              data_index -= image_bpl
              ((i += 1) - 1)
            end
            out.write(buf, 0, buf_offset)
            y += lines_per_buf
          end
        else
          y = 0
          while y < image.attr_height
            tmp = image.attr_height - y
            count = tmp < lines_per_buf ? tmp : lines_per_buf
            buf_offset = 0
            i = 0
            while i < count
              System.arraycopy(data, data_index, buf, buf_offset, bpl)
              buf_offset += bmp_bpl
              data_index -= image_bpl
              ((i += 1) - 1)
            end
            out.write(buf, 0, buf_offset)
            y += lines_per_buf
          end
        end
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      return bmp_bpl * image.attr_height
    end
    
    typesig { [ImageLoader] }
    # Unload a DeviceIndependentImage using Windows .BMP format into the given
    # byte stream.
    def unload_into_byte_stream(loader)
      image = loader.attr_data[0]
      rgbs = nil
      num_cols = 0
      if (!(((image.attr_depth).equal?(1)) || ((image.attr_depth).equal?(4)) || ((image.attr_depth).equal?(8)) || ((image.attr_depth).equal?(16)) || ((image.attr_depth).equal?(24)) || ((image.attr_depth).equal?(32))))
        SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
      end
      comp = self.attr_compression
      if (!(((comp).equal?(0)) || (((comp).equal?(1)) && ((image.attr_depth).equal?(8))) || (((comp).equal?(2)) && ((image.attr_depth).equal?(4)))))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      pal = image.attr_palette
      if (((image.attr_depth).equal?(16)) || ((image.attr_depth).equal?(24)) || ((image.attr_depth).equal?(32)))
        if (!pal.attr_is_direct)
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
        num_cols = 0
        rgbs = nil
      else
        if (pal.attr_is_direct)
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
        num_cols = pal.attr_colors.attr_length
        rgbs = palette_to_bytes(pal)
      end
      # Fill in file header, except for bfsize, which is done later.
      headers_size = BMPFileHeaderSize + BMPHeaderFixedSize
      file_header = Array.typed(::Java::Int).new(5) { 0 }
      file_header[0] = 0x4d42 # Signature
      file_header[1] = 0 # File size - filled in later
      file_header[2] = 0 # Reserved 1
      file_header[3] = 0 # Reserved 2
      file_header[4] = headers_size # Offset to data
      if (!(rgbs).nil?)
        file_header[4] += rgbs.attr_length
      end
      # Prepare data. This is done first so we don't have to try to rewind
      # the stream and fill in the details later.
      out = ByteArrayOutputStream.new
      unload_data(image, out, comp)
      data = out.to_byte_array
      # Calculate file size
      file_header[1] = file_header[4] + data.attr_length
      # Write the headers
      begin
        self.attr_output_stream.write_short(file_header[0])
        self.attr_output_stream.write_int(file_header[1])
        self.attr_output_stream.write_short(file_header[2])
        self.attr_output_stream.write_short(file_header[3])
        self.attr_output_stream.write_int(file_header[4])
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      begin
        self.attr_output_stream.write_int(BMPHeaderFixedSize)
        self.attr_output_stream.write_int(image.attr_width)
        self.attr_output_stream.write_int(image.attr_height)
        self.attr_output_stream.write_short(1)
        self.attr_output_stream.write_short(RJava.cast_to_short(image.attr_depth))
        self.attr_output_stream.write_int(comp)
        self.attr_output_stream.write_int(data.attr_length)
        self.attr_output_stream.write_int(@pels_per_meter.attr_x)
        self.attr_output_stream.write_int(@pels_per_meter.attr_y)
        self.attr_output_stream.write_int(num_cols)
        self.attr_output_stream.write_int(@important_colors)
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      # Unload palette
      if (num_cols > 0)
        begin
          self.attr_output_stream.write(rgbs)
        rescue IOException => e
          SWT.error(SWT::ERROR_IO, e)
        end
      end
      # Unload the data
      begin
        self.attr_output_stream.write(data)
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
    def flip_scan_lines(data, stride, height)
      i1 = 0
      i2 = (height - 1) * stride
      i = 0
      while i < height / 2
        index = 0
        while index < stride
          b = data[index + i1]
          data[index + i1] = data[index + i2]
          data[index + i2] = b
          ((index += 1) - 1)
        end
        i1 += stride
        i2 -= stride
        ((i += 1) - 1)
      end
    end
    
    typesig { [] }
    def initialize
      @important_colors = 0
      @pels_per_meter = nil
      super()
      @pels_per_meter = Point.new(0, 0)
    end
    
    private
    alias_method :initialize__win_bmpfile_format, :initialize
  end
  
end
