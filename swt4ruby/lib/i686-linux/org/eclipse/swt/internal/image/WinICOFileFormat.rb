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
  module WinICOFileFormatImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Java::Io
    }
  end
  
  class WinICOFileFormat < WinICOFileFormatImports.const_get :FileFormat
    include_class_members WinICOFileFormatImports
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
    def bit_invert_data(data, start_index, end_index)
      # Destructively bit invert data in the given byte array.
      i = start_index
      while i < end_index
        data[i] = (255 - data[i - start_index])
        i += 1
      end
      return data
    end
    
    class_module.module_eval {
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def convert_pad(data, width, height, depth, pad, new_pad)
        if ((pad).equal?(new_pad))
          return data
        end
        stride = (width * depth + 7) / 8
        bpl = (stride + (pad - 1)) / pad * pad
        new_bpl = (stride + (new_pad - 1)) / new_pad * new_pad
        new_data = Array.typed(::Java::Byte).new(height * new_bpl) { 0 }
        src_index = 0
        dest_index = 0
        y = 0
        while y < height
          System.arraycopy(data, src_index, new_data, dest_index, new_bpl)
          src_index += bpl
          dest_index += new_bpl
          y += 1
        end
        return new_data
      end
    }
    
    typesig { [ImageData] }
    # Answer the size in bytes of the file representation of the given
    # icon
    def icon_size(i)
      shape_data_stride = (i.attr_width * i.attr_depth + 31) / 32 * 4
      mask_data_stride = (i.attr_width + 31) / 32 * 4
      data_size = (shape_data_stride + mask_data_stride) * i.attr_height
      palette_size = !(i.attr_palette.attr_colors).nil? ? i.attr_palette.attr_colors.attr_length * 4 : 0
      return WinBMPFileFormat::BMPHeaderFixedSize + palette_size + data_size
    end
    
    typesig { [LEDataInputStream] }
    def is_file_format(stream)
      begin
        header = Array.typed(::Java::Byte).new(4) { 0 }
        stream.read(header)
        stream.unread(header)
        return (header[0]).equal?(0) && (header[1]).equal?(0) && (header[2]).equal?(1) && (header[3]).equal?(0)
      rescue Exception => e
        return false
      end
    end
    
    typesig { [ImageData] }
    def is_valid_icon(i)
      case (i.attr_depth)
      when 1, 4, 8
        if (i.attr_palette.attr_is_direct)
          return false
        end
        size = i.attr_palette.attr_colors.attr_length
        return (size).equal?(2) || (size).equal?(16) || (size).equal?(32) || (size).equal?(256)
      when 24, 32
        return i.attr_palette.attr_is_direct
      end
      return false
    end
    
    typesig { [LEDataInputStream] }
    def load_file_header(byte_stream)
      file_header = Array.typed(::Java::Int).new(3) { 0 }
      begin
        file_header[0] = byte_stream.read_short
        file_header[1] = byte_stream.read_short
        file_header[2] = byte_stream.read_short
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      if ((!(file_header[0]).equal?(0)) || (!(file_header[1]).equal?(1)))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      num_icons = file_header[2]
      if (num_icons <= 0)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      return num_icons
    end
    
    typesig { [LEDataInputStream, ::Java::Boolean] }
    def load_file_header(byte_stream, has_header)
      file_header = Array.typed(::Java::Int).new(3) { 0 }
      begin
        if (has_header)
          file_header[0] = byte_stream.read_short
          file_header[1] = byte_stream.read_short
        else
          file_header[0] = 0
          file_header[1] = 1
        end
        file_header[2] = byte_stream.read_short
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      if ((!(file_header[0]).equal?(0)) || (!(file_header[1]).equal?(1)))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      num_icons = file_header[2]
      if (num_icons <= 0)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      return num_icons
    end
    
    typesig { [] }
    def load_from_byte_stream
      num_icons = load_file_header(self.attr_input_stream)
      headers = load_icon_headers(num_icons)
      icons = Array.typed(ImageData).new(headers.attr_length) { nil }
      i = 0
      while i < icons.attr_length
        icons[i] = load_icon(headers[i])
        i += 1
      end
      return icons
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Load one icon from the byte stream.
    def load_icon(icon_header)
      info_header = load_info_header(icon_header)
      bmp_format = WinBMPFileFormat.new
      bmp_format.attr_input_stream = self.attr_input_stream
      palette = bmp_format.load_palette(info_header)
      shape_data = bmp_format.load_data(info_header)
      width = (info_header[4] & 0xff) | ((info_header[5] & 0xff) << 8) | ((info_header[6] & 0xff) << 16) | ((info_header[7] & 0xff) << 24)
      height = (info_header[8] & 0xff) | ((info_header[9] & 0xff) << 8) | ((info_header[10] & 0xff) << 16) | ((info_header[11] & 0xff) << 24)
      if (height < 0)
        height = -height
      end
      depth = (info_header[14] & 0xff) | ((info_header[15] & 0xff) << 8)
      info_header[14] = 1
      info_header[15] = 0
      mask_data = bmp_format.load_data(info_header)
      mask_data = convert_pad(mask_data, width, height, 1, 4, 2)
      bit_invert_data(mask_data, 0, mask_data.attr_length)
      return ImageData.internal_new(width, height, depth, palette, 4, shape_data, 2, mask_data, nil, -1, -1, SWT::IMAGE_ICO, 0, 0, 0, 0)
    end
    
    typesig { [::Java::Int] }
    def load_icon_headers(num_icons)
      headers = Array.typed(::Java::Int).new(num_icons) { Array.typed(::Java::Int).new(7) { 0 } }
      begin
        i = 0
        while i < num_icons
          headers[i][0] = self.attr_input_stream.read
          headers[i][1] = self.attr_input_stream.read
          headers[i][2] = self.attr_input_stream.read_short
          headers[i][3] = self.attr_input_stream.read_short
          headers[i][4] = self.attr_input_stream.read_short
          headers[i][5] = self.attr_input_stream.read_int
          headers[i][6] = self.attr_input_stream.read_int
          i += 1
        end
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      return headers
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def load_info_header(icon_header)
      width = icon_header[0]
      height = icon_header[1]
      num_colors = icon_header[2] # the number of colors is in the low byte, but the high byte must be 0
      if ((num_colors).equal?(0))
        num_colors = 256
      end # this is specified: '00' represents '256' (0x100) colors
      if ((!(num_colors).equal?(2)) && (!(num_colors).equal?(8)) && (!(num_colors).equal?(16)) && (!(num_colors).equal?(32)) && (!(num_colors).equal?(256)))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      if (self.attr_input_stream.get_position < icon_header[6])
        # Seek to the specified offset
        begin
          self.attr_input_stream.skip(icon_header[6] - self.attr_input_stream.get_position)
        rescue IOException => e
          SWT.error(SWT::ERROR_IO, e)
          return nil
        end
      end
      info_header = Array.typed(::Java::Byte).new(WinBMPFileFormat::BMPHeaderFixedSize) { 0 }
      begin
        self.attr_input_stream.read(info_header)
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      if (!(((info_header[12] & 0xff) | ((info_header[13] & 0xff) << 8))).equal?(1))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      info_width = (info_header[4] & 0xff) | ((info_header[5] & 0xff) << 8) | ((info_header[6] & 0xff) << 16) | ((info_header[7] & 0xff) << 24)
      info_height = (info_header[8] & 0xff) | ((info_header[9] & 0xff) << 8) | ((info_header[10] & 0xff) << 16) | ((info_header[11] & 0xff) << 24)
      bit_count = (info_header[14] & 0xff) | ((info_header[15] & 0xff) << 8)
      if ((height).equal?(info_height) && (bit_count).equal?(1))
        height /= 2
      end
      if (!(((width).equal?(info_width)) && ((height * 2).equal?(info_height)) && ((bit_count).equal?(1) || (bit_count).equal?(4) || (bit_count).equal?(8) || (bit_count).equal?(24) || (bit_count).equal?(32))))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      info_header[8] = (height & 0xff)
      info_header[9] = ((height >> 8) & 0xff)
      info_header[10] = ((height >> 16) & 0xff)
      info_header[11] = ((height >> 24) & 0xff)
      return info_header
    end
    
    typesig { [ImageData] }
    # Unload a single icon
    def unload_icon(icon)
      size_image = (((icon.attr_width * icon.attr_depth + 31) / 32 * 4) + ((icon.attr_width + 31) / 32 * 4)) * icon.attr_height
      begin
        self.attr_output_stream.write_int(WinBMPFileFormat::BMPHeaderFixedSize)
        self.attr_output_stream.write_int(icon.attr_width)
        self.attr_output_stream.write_int(icon.attr_height * 2)
        self.attr_output_stream.write_short(1)
        self.attr_output_stream.write_short(RJava.cast_to_short(icon.attr_depth))
        self.attr_output_stream.write_int(0)
        self.attr_output_stream.write_int(size_image)
        self.attr_output_stream.write_int(0)
        self.attr_output_stream.write_int(0)
        self.attr_output_stream.write_int(!(icon.attr_palette.attr_colors).nil? ? icon.attr_palette.attr_colors.attr_length : 0)
        self.attr_output_stream.write_int(0)
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      rgbs = WinBMPFileFormat.palette_to_bytes(icon.attr_palette)
      begin
        self.attr_output_stream.write(rgbs)
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      unload_shape_data(icon)
      unload_mask_data(icon)
    end
    
    typesig { [ImageData] }
    # Unload the icon header for the given icon, calculating the offset.
    def unload_icon_header(i)
      header_size = 16
      offset = header_size + 6
      icon_size_ = icon_size(i)
      begin
        self.attr_output_stream.write(i.attr_width)
        self.attr_output_stream.write(i.attr_height)
        self.attr_output_stream.write_short(!(i.attr_palette.attr_colors).nil? ? i.attr_palette.attr_colors.attr_length : 0)
        self.attr_output_stream.write_short(0)
        self.attr_output_stream.write_short(0)
        self.attr_output_stream.write_int(icon_size_)
        self.attr_output_stream.write_int(offset)
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
    end
    
    typesig { [ImageLoader] }
    def unload_into_byte_stream(loader)
      # We do not currently support writing multi-image ico,
      # so we use the first image data in the loader's array.
      image = loader.attr_data[0]
      if (!is_valid_icon(image))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      begin
        self.attr_output_stream.write_short(0)
        self.attr_output_stream.write_short(1)
        self.attr_output_stream.write_short(1)
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      unload_icon_header(image)
      unload_icon(image)
    end
    
    typesig { [ImageData] }
    # Unload the mask data for an icon. The data is flipped vertically
    # and inverted.
    def unload_mask_data(icon)
      mask = icon.get_transparency_mask
      bpl = (icon.attr_width + 7) / 8
      pad = mask.attr_scanline_pad
      src_bpl = (bpl + pad - 1) / pad * pad
      dest_bpl = (bpl + 3) / 4 * 4
      buf = Array.typed(::Java::Byte).new(dest_bpl) { 0 }
      offset = (icon.attr_height - 1) * src_bpl
      data = mask.attr_data
      begin
        i = 0
        while i < icon.attr_height
          System.arraycopy(data, offset, buf, 0, bpl)
          bit_invert_data(buf, 0, bpl)
          self.attr_output_stream.write(buf, 0, dest_bpl)
          offset -= src_bpl
          i += 1
        end
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
    end
    
    typesig { [ImageData] }
    # Unload the shape data for an icon. The data is flipped vertically.
    def unload_shape_data(icon)
      bpl = (icon.attr_width * icon.attr_depth + 7) / 8
      pad = icon.attr_scanline_pad
      src_bpl = (bpl + pad - 1) / pad * pad
      dest_bpl = (bpl + 3) / 4 * 4
      buf = Array.typed(::Java::Byte).new(dest_bpl) { 0 }
      offset = (icon.attr_height - 1) * src_bpl
      data = icon.attr_data
      begin
        i = 0
        while i < icon.attr_height
          System.arraycopy(data, offset, buf, 0, bpl)
          self.attr_output_stream.write(buf, 0, dest_bpl)
          offset -= src_bpl
          i += 1
        end
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
    end
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__win_icofile_format, :initialize
  end
  
end
