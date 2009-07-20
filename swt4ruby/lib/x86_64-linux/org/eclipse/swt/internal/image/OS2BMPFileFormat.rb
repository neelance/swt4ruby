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
  module OS2BMPFileFormatImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Java::Io
    }
  end
  
  class OS2BMPFileFormat < OS2BMPFileFormatImports.const_get :FileFormat
    include_class_members OS2BMPFileFormatImports
    
    class_module.module_eval {
      const_set_lazy(:BMPFileHeaderSize) { 14 }
      const_attr_reader  :BMPFileHeaderSize
      
      const_set_lazy(:BMPHeaderFixedSize) { 12 }
      const_attr_reader  :BMPHeaderFixedSize
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
    
    attr_accessor :bit_count
    alias_method :attr_bit_count, :bit_count
    undef_method :bit_count
    alias_method :attr_bit_count=, :bit_count=
    undef_method :bit_count=
    
    typesig { [LEDataInputStream] }
    def is_file_format(stream)
      begin
        header = Array.typed(::Java::Byte).new(18) { 0 }
        stream.read(header)
        stream.unread(header)
        info_header_size = (header[14] & 0xff) | ((header[15] & 0xff) << 8) | ((header[16] & 0xff) << 16) | ((header[17] & 0xff) << 24)
        return (header[0]).equal?(0x42) && (header[1]).equal?(0x4d) && (info_header_size).equal?(BMPHeaderFixedSize)
      rescue Exception => e
        return false
      end
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def load_data(info_header)
      stride = (@width * @bit_count + 7) / 8
      stride = (stride + 3) / 4 * 4 # Round up to 4 byte multiple
      data = load_data(info_header, stride)
      flip_scan_lines(data, stride, @height)
      return data
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int] }
    def load_data(info_header, stride)
      data_size = @height * stride
      data = Array.typed(::Java::Byte).new(data_size) { 0 }
      begin
        if (!(self.attr_input_stream.read(data)).equal?(data_size))
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
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
      @width = (info_header[4] & 0xff) | ((info_header[5] & 0xff) << 8)
      @height = (info_header[6] & 0xff) | ((info_header[7] & 0xff) << 8)
      @bit_count = (info_header[10] & 0xff) | ((info_header[11] & 0xff) << 8)
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
      type = SWT::IMAGE_OS2_BMP
      return Array.typed(ImageData).new([ImageData.internal_new(@width, @height, @bit_count, palette, 4, data, 0, nil, nil, -1, -1, type, 0, 0, 0, 0)])
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def load_palette(info_header)
      if (@bit_count <= 8)
        num_colors = 1 << @bit_count
        buf = Array.typed(::Java::Byte).new(num_colors * 3) { 0 }
        begin
          if (!(self.attr_input_stream.read(buf)).equal?(buf.attr_length))
            SWT.error(SWT::ERROR_INVALID_IMAGE)
          end
        rescue IOException => e
          SWT.error(SWT::ERROR_IO, e)
        end
        return palette_from_bytes(buf, num_colors)
      end
      if ((@bit_count).equal?(16))
        return PaletteData.new(0x7c00, 0x3e0, 0x1f)
      end
      if ((@bit_count).equal?(24))
        return PaletteData.new(0xff, 0xff00, 0xff0000)
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
        bytes_offset += 3
        i += 1
      end
      return PaletteData.new(colors)
    end
    
    class_module.module_eval {
      typesig { [PaletteData] }
      # Answer a byte array containing the BMP representation of
      # the given device independent palette.
      def palette_to_bytes(pal)
        n = (pal.attr_colors).nil? ? 0 : (pal.attr_colors.attr_length < 256 ? pal.attr_colors.attr_length : 256)
        bytes = Array.typed(::Java::Byte).new(n * 3) { 0 }
        offset = 0
        i = 0
        while i < n
          col = pal.attr_colors[i]
          bytes[offset] = col.attr_blue
          bytes[offset + 1] = col.attr_green
          bytes[offset + 2] = col.attr_red
          offset += 3
          i += 1
        end
        return bytes
      end
    }
    
    typesig { [ImageData, OutputStream] }
    # Unload the given image's data into the given byte stream.
    # Answer the number of bytes written.
    def unload_data(image, out)
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
              i += 1
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
              i += 1
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
      unload_data(image, out)
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
        self.attr_output_stream.write_short(image.attr_width)
        self.attr_output_stream.write_short(image.attr_height)
        self.attr_output_stream.write_short(1)
        self.attr_output_stream.write_short(RJava.cast_to_short(image.attr_depth))
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
          index += 1
        end
        i1 += stride
        i2 -= stride
        i += 1
      end
    end
    
    typesig { [] }
    def initialize
      @width = 0
      @height = 0
      @bit_count = 0
      super()
    end
    
    private
    alias_method :initialize__os2bmpfile_format, :initialize
  end
  
end
