require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Image
  module PngEncoderImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include_const ::Java::Io, :ByteArrayOutputStream
      include_const ::Java::Io, :IOException
      include_const ::Java::Io, :OutputStream
      include_const ::Org::Eclipse::Swt, :SWT
      include_const ::Org::Eclipse::Swt::Graphics, :ImageData
      include_const ::Org::Eclipse::Swt::Graphics, :ImageLoader
      include_const ::Org::Eclipse::Swt::Graphics, :RGB
      include_const ::Org::Eclipse::Swt::Internal, :Compatibility
    }
  end
  
  class PngEncoder < PngEncoderImports.const_get :Object
    include_class_members PngEncoderImports
    
    class_module.module_eval {
      const_set_lazy(:SIGNATURE) { Array.typed(::Java::Byte).new([Character.new(?\211.ord), Character.new(?P.ord), Character.new(?N.ord), Character.new(?G.ord), Character.new(?\r.ord), Character.new(?\n.ord), Character.new(?\032.ord), Character.new(?\n.ord)]) }
      const_attr_reader  :SIGNATURE
      
      const_set_lazy(:TAG_IHDR) { Array.typed(::Java::Byte).new([Character.new(?I.ord), Character.new(?H.ord), Character.new(?D.ord), Character.new(?R.ord)]) }
      const_attr_reader  :TAG_IHDR
      
      const_set_lazy(:TAG_PLTE) { Array.typed(::Java::Byte).new([Character.new(?P.ord), Character.new(?L.ord), Character.new(?T.ord), Character.new(?E.ord)]) }
      const_attr_reader  :TAG_PLTE
      
      const_set_lazy(:TAG_TRNS) { Array.typed(::Java::Byte).new([Character.new(?t.ord), Character.new(?R.ord), Character.new(?N.ord), Character.new(?S.ord)]) }
      const_attr_reader  :TAG_TRNS
      
      const_set_lazy(:TAG_IDAT) { Array.typed(::Java::Byte).new([Character.new(?I.ord), Character.new(?D.ord), Character.new(?A.ord), Character.new(?T.ord)]) }
      const_attr_reader  :TAG_IDAT
      
      const_set_lazy(:TAG_IEND) { Array.typed(::Java::Byte).new([Character.new(?I.ord), Character.new(?E.ord), Character.new(?N.ord), Character.new(?D.ord)]) }
      const_attr_reader  :TAG_IEND
    }
    
    attr_accessor :bytes
    alias_method :attr_bytes, :bytes
    undef_method :bytes
    alias_method :attr_bytes=, :bytes=
    undef_method :bytes=
    
    attr_accessor :chunk
    alias_method :attr_chunk, :chunk
    undef_method :chunk
    alias_method :attr_chunk=, :chunk=
    undef_method :chunk=
    
    attr_accessor :loader
    alias_method :attr_loader, :loader
    undef_method :loader
    alias_method :attr_loader=, :loader=
    undef_method :loader=
    
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    attr_accessor :transparency_type
    alias_method :attr_transparency_type, :transparency_type
    undef_method :transparency_type
    alias_method :attr_transparency_type=, :transparency_type=
    undef_method :transparency_type=
    
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
    
    typesig { [ImageLoader] }
    def initialize(loader)
      @bytes = nil
      @chunk = nil
      @loader = nil
      @data = nil
      @transparency_type = 0
      @width = 0
      @height = 0
      @bit_depth = 0
      @color_type = 0
      @compression_method = 0
      @filter_method = 0
      @interlace_method = 0
      super()
      @bytes = ByteArrayOutputStream.new(1024)
      @compression_method = 0
      @filter_method = 0
      @interlace_method = 0
      @loader = loader
      @data = loader.attr_data[0]
      @transparency_type = @data.get_transparency_type
      @width = @data.attr_width
      @height = @data.attr_height
      @bit_depth = 8
      @color_type = 2
      if (@data.attr_palette.attr_is_direct)
        if ((@transparency_type).equal?(SWT::TRANSPARENCY_ALPHA))
          @color_type = 6
        end
      else
        @color_type = 3
      end
      if (!((@color_type).equal?(2) || (@color_type).equal?(3) || (@color_type).equal?(6)))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
    end
    
    typesig { [ByteArrayOutputStream, ::Java::Int] }
    def write_short(baos, the_short)
      byte1 = ((the_short >> 8) & 0xff)
      byte2 = (the_short & 0xff)
      temp = Array.typed(::Java::Byte).new([byte1, byte2])
      baos.write(temp, 0, 2)
    end
    
    typesig { [ByteArrayOutputStream, ::Java::Int] }
    def write_int(baos, the_int)
      byte1 = ((the_int >> 24) & 0xff)
      byte2 = ((the_int >> 16) & 0xff)
      byte3 = ((the_int >> 8) & 0xff)
      byte4 = (the_int & 0xff)
      temp = Array.typed(::Java::Byte).new([byte1, byte2, byte3, byte4])
      baos.write(temp, 0, 4)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
    def write_chunk(tag, buffer)
      buffer_length = (!(buffer).nil?) ? buffer.attr_length : 0
      @chunk = PngChunk.new(buffer_length)
      write_int(@bytes, buffer_length)
      @bytes.write(tag, 0, 4)
      @chunk.set_type(tag)
      if (!(buffer_length).equal?(0))
        @bytes.write(buffer, 0, buffer_length)
        @chunk.set_data(buffer)
      else
        @chunk.set_crc(@chunk.compute_crc)
      end
      write_int(@bytes, @chunk.get_crc)
    end
    
    typesig { [] }
    def write_signature
      @bytes.write(SIGNATURE, 0, 8)
    end
    
    typesig { [] }
    def write_header
      baos = ByteArrayOutputStream.new(13)
      write_int(baos, @width)
      write_int(baos, @height)
      baos.write(@bit_depth)
      baos.write(@color_type)
      baos.write(@compression_method)
      baos.write(@filter_method)
      baos.write(@interlace_method)
      write_chunk(TAG_IHDR, baos.to_byte_array)
    end
    
    typesig { [] }
    def write_palette
      rgbs = @data.attr_palette.get_rgbs
      if (rgbs.attr_length > 256)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      baos = ByteArrayOutputStream.new(rgbs.attr_length)
      i = 0
      while i < rgbs.attr_length
        baos.write(rgbs[i].attr_red)
        baos.write(rgbs[i].attr_green)
        baos.write(rgbs[i].attr_blue)
        ((i += 1) - 1)
      end
      write_chunk(TAG_PLTE, baos.to_byte_array)
    end
    
    typesig { [] }
    def write_transparency
      baos = ByteArrayOutputStream.new
      case (@transparency_type)
      when SWT::TRANSPARENCY_ALPHA
        pixel_value = 0
        alpha_value = 0
        alphas = Array.typed(::Java::Byte).new(@data.attr_palette.get_rgbs.attr_length) { 0 }
        y = 0
        while y < @height
          x = 0
          while x < @width
            pixel_value = @data.get_pixel(x, y)
            alpha_value = @data.get_alpha(x, y)
            alphas[pixel_value] = alpha_value
            ((x += 1) - 1)
          end
          ((y += 1) - 1)
        end
        baos.write(alphas, 0, alphas.attr_length)
      when SWT::TRANSPARENCY_PIXEL
        pixel = @data.attr_transparent_pixel
        if ((@color_type).equal?(2))
          red_mask = @data.attr_palette.attr_red_mask
          red_shift = @data.attr_palette.attr_red_shift
          green_mask = @data.attr_palette.attr_green_mask
          green_shift = @data.attr_palette.attr_green_shift
          blue_shift = @data.attr_palette.attr_blue_shift
          blue_mask = @data.attr_palette.attr_blue_mask
          r = pixel & red_mask
          r = (red_shift < 0) ? r >> -red_shift : r << red_shift
          g = pixel & green_mask
          g = (green_shift < 0) ? g >> -green_shift : g << green_shift
          b = pixel & blue_mask
          b = (blue_shift < 0) ? b >> -blue_shift : b << blue_shift
          write_short(baos, r)
          write_short(baos, g)
          write_short(baos, b)
        end
        if ((@color_type).equal?(3))
          padding = Array.typed(::Java::Byte).new(pixel + 1) { 0 }
          i = 0
          while i < pixel
            padding[i] = 255
            ((i += 1) - 1)
          end
          padding[pixel] = 0
          baos.write(padding, 0, padding.attr_length)
        end
      end
      write_chunk(TAG_TRNS, baos.to_byte_array)
    end
    
    typesig { [] }
    def write_image_data
      baos = ByteArrayOutputStream.new(1024)
      os = Compatibility.new_deflater_output_stream(baos)
      if ((os).nil?)
        os = baos
      end
      if ((@color_type).equal?(3))
        line_data = Array.typed(::Java::Byte).new(@width) { 0 }
        y = 0
        while y < @height
          filter = 0
          os.write(filter)
          @data.get_pixels(0, y, @width, line_data, 0)
          x = 0
          while x < line_data.attr_length
            os.write(line_data[x])
            ((x += 1) - 1)
          end
          ((y += 1) - 1)
        end
      else
        line_data = Array.typed(::Java::Int).new(@width) { 0 }
        alpha_data = nil
        if ((@color_type).equal?(6))
          alpha_data = Array.typed(::Java::Byte).new(@width) { 0 }
        end
        red_mask = @data.attr_palette.attr_red_mask
        red_shift = @data.attr_palette.attr_red_shift
        green_mask = @data.attr_palette.attr_green_mask
        green_shift = @data.attr_palette.attr_green_shift
        blue_shift = @data.attr_palette.attr_blue_shift
        blue_mask = @data.attr_palette.attr_blue_mask
        y = 0
        while y < @height
          filter = 0
          os.write(filter)
          @data.get_pixels(0, y, @width, line_data, 0)
          if ((@color_type).equal?(6))
            @data.get_alphas(0, y, @width, alpha_data, 0)
          end
          x = 0
          while x < line_data.attr_length
            pixel = line_data[x]
            r = pixel & red_mask
            r = (red_shift < 0) ? r >> -red_shift : r << red_shift
            g = pixel & green_mask
            g = (green_shift < 0) ? g >> -green_shift : g << green_shift
            b = pixel & blue_mask
            b = (blue_shift < 0) ? b >> -blue_shift : b << blue_shift
            os.write(r)
            os.write(g)
            os.write(b)
            if ((@color_type).equal?(6))
              os.write(alpha_data[x])
            end
            ((x += 1) - 1)
          end
          ((y += 1) - 1)
        end
      end
      os.flush
      os.close
      compressed = baos.to_byte_array
      if ((os).equal?(baos))
        deflater = PngDeflater.new
        compressed = deflater.deflate(compressed)
      end
      write_chunk(TAG_IDAT, compressed)
    end
    
    typesig { [] }
    def write_end
      write_chunk(TAG_IEND, nil)
    end
    
    typesig { [LEDataOutputStream] }
    def encode(output_stream)
      begin
        write_signature
        write_header
        if ((@color_type).equal?(3))
          write_palette
        end
        transparency_alpha = ((@transparency_type).equal?(SWT::TRANSPARENCY_ALPHA))
        transparency_pixel = ((@transparency_type).equal?(SWT::TRANSPARENCY_PIXEL))
        type2transparency = ((@color_type).equal?(2) && transparency_pixel)
        type3transparency = ((@color_type).equal?(3) && (transparency_alpha || transparency_pixel))
        if (type2transparency || type3transparency)
          write_transparency
        end
        write_image_data
        write_end
        output_stream.write(@bytes.to_byte_array)
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
    end
    
    private
    alias_method :initialize__png_encoder, :initialize
  end
  
end
