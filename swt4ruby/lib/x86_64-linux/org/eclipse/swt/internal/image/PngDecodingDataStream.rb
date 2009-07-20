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
  module PngDecodingDataStreamImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Java::Io
      include ::Org::Eclipse::Swt
    }
  end
  
  class PngDecodingDataStream < PngDecodingDataStreamImports.const_get :InputStream
    include_class_members PngDecodingDataStreamImports
    
    attr_accessor :stream
    alias_method :attr_stream, :stream
    undef_method :stream
    alias_method :attr_stream=, :stream=
    undef_method :stream=
    
    attr_accessor :current_byte
    alias_method :attr_current_byte, :current_byte
    undef_method :current_byte
    alias_method :attr_current_byte=, :current_byte=
    undef_method :current_byte=
    
    attr_accessor :next_bit_index
    alias_method :attr_next_bit_index, :next_bit_index
    undef_method :next_bit_index
    alias_method :attr_next_bit_index=, :next_bit_index=
    undef_method :next_bit_index=
    
    attr_accessor :lz_block_reader
    alias_method :attr_lz_block_reader, :lz_block_reader
    undef_method :lz_block_reader
    alias_method :attr_lz_block_reader=, :lz_block_reader=
    undef_method :lz_block_reader=
    
    attr_accessor :adler_value
    alias_method :attr_adler_value, :adler_value
    undef_method :adler_value
    alias_method :attr_adler_value=, :adler_value=
    undef_method :adler_value=
    
    class_module.module_eval {
      const_set_lazy(:PRIME) { 65521 }
      const_attr_reader  :PRIME
      
      const_set_lazy(:MAX_BIT) { 7 }
      const_attr_reader  :MAX_BIT
    }
    
    typesig { [InputStream] }
    def initialize(stream)
      @stream = nil
      @current_byte = 0
      @next_bit_index = 0
      @lz_block_reader = nil
      @adler_value = 0
      super()
      @stream = stream
      @next_bit_index = MAX_BIT + 1
      @adler_value = 1
      @lz_block_reader = PngLzBlockReader.new(self)
      read_compressed_data_header
      @lz_block_reader.read_next_block_header
    end
    
    typesig { [] }
    # This method should be called when the image decoder thinks
    # that all of the compressed image data has been read. This
    # method will ensure that the next data value is an end of
    # block marker. If there are more blocks after this one,
    # the method will read them and ensure that they are empty.
    def assert_image_data_at_end
      @lz_block_reader.assert_compressed_data_at_end
    end
    
    typesig { [] }
    def close
      assert_image_data_at_end
      check_adler
    end
    
    typesig { [::Java::Int] }
    def get_next_idat_bits(length)
      value = 0
      i = 0
      while i < length
        value |= (get_next_idat_bit << i)
        ((i += 1) - 1)
      end
      return value
    end
    
    typesig { [] }
    def get_next_idat_bit
      if (@next_bit_index > MAX_BIT)
        @current_byte = get_next_idat_byte
        @next_bit_index = 0
      end
      return (@current_byte & (1 << @next_bit_index)) >> ((@next_bit_index += 1) - 1)
    end
    
    typesig { [] }
    def get_next_idat_byte
      next_byte = @stream.read
      @next_bit_index = MAX_BIT + 1
      return next_byte
    end
    
    typesig { [::Java::Byte] }
    def update_adler(value)
      low = @adler_value & 0xffff
      high = (@adler_value >> 16) & 0xffff
      value_int = value & 0xff
      low = (low + value_int) % PRIME
      high = (low + high) % PRIME
      @adler_value = (high << 16) | low
    end
    
    typesig { [] }
    def read
      next_decoded_byte = @lz_block_reader.get_next_byte
      update_adler(next_decoded_byte)
      return next_decoded_byte & 0xff
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
    def read(buffer, off, len)
      i = 0
      while i < len
        b = read
        if ((b).equal?(-1))
          return i
        end
        buffer[off + i] = b
        ((i += 1) - 1)
      end
      return len
    end
    
    typesig { [] }
    def error
      SWT.error(SWT::ERROR_INVALID_IMAGE)
    end
    
    typesig { [] }
    def read_compressed_data_header
      header_byte1 = get_next_idat_byte
      header_byte2 = get_next_idat_byte
      number = ((header_byte1 & 0xff) << 8) | (header_byte2 & 0xff)
      if (!(number % 31).equal?(0))
        error
      end
      compression_method = header_byte1 & 0xf
      if (!(compression_method).equal?(8))
        error
      end
      window_size_hint = (header_byte1 & 0xf0) >> 4
      if (window_size_hint > 7)
        error
      end
      window_size = (1 << (window_size_hint + 8))
      @lz_block_reader.set_window_size(window_size)
      dictionary = (header_byte2 & (1 << 5))
      if (!(dictionary).equal?(0))
        error
      end
      # int compressionLevel = (headerByte2 & 0xC0) >> 6;
    end
    
    typesig { [] }
    def check_adler
      stored_adler = ((get_next_idat_byte & 0xff) << 24) | ((get_next_idat_byte & 0xff) << 16) | ((get_next_idat_byte & 0xff) << 8) | (get_next_idat_byte & 0xff)
      if (!(stored_adler).equal?(@adler_value))
        error
      end
    end
    
    private
    alias_method :initialize__png_decoding_data_stream, :initialize
  end
  
end
