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
  module PngLzBlockReaderImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Java::Io
    }
  end
  
  class PngLzBlockReader 
    include_class_members PngLzBlockReaderImports
    
    attr_accessor :is_last_block
    alias_method :attr_is_last_block, :is_last_block
    undef_method :is_last_block
    alias_method :attr_is_last_block=, :is_last_block=
    undef_method :is_last_block=
    
    attr_accessor :compression_type
    alias_method :attr_compression_type, :compression_type
    undef_method :compression_type
    alias_method :attr_compression_type=, :compression_type=
    undef_method :compression_type=
    
    attr_accessor :uncompressed_bytes_remaining
    alias_method :attr_uncompressed_bytes_remaining, :uncompressed_bytes_remaining
    undef_method :uncompressed_bytes_remaining
    alias_method :attr_uncompressed_bytes_remaining=, :uncompressed_bytes_remaining=
    undef_method :uncompressed_bytes_remaining=
    
    attr_accessor :stream
    alias_method :attr_stream, :stream
    undef_method :stream
    alias_method :attr_stream=, :stream=
    undef_method :stream=
    
    attr_accessor :huffman_tables
    alias_method :attr_huffman_tables, :huffman_tables
    undef_method :huffman_tables
    alias_method :attr_huffman_tables=, :huffman_tables=
    undef_method :huffman_tables=
    
    attr_accessor :window
    alias_method :attr_window, :window
    undef_method :window
    alias_method :attr_window=, :window=
    undef_method :window=
    
    attr_accessor :window_index
    alias_method :attr_window_index, :window_index
    undef_method :window_index
    alias_method :attr_window_index=, :window_index=
    undef_method :window_index=
    
    attr_accessor :copy_index
    alias_method :attr_copy_index, :copy_index
    undef_method :copy_index
    alias_method :attr_copy_index=, :copy_index=
    undef_method :copy_index=
    
    attr_accessor :copy_bytes_remaining
    alias_method :attr_copy_bytes_remaining, :copy_bytes_remaining
    undef_method :copy_bytes_remaining
    alias_method :attr_copy_bytes_remaining=, :copy_bytes_remaining=
    undef_method :copy_bytes_remaining=
    
    class_module.module_eval {
      const_set_lazy(:UNCOMPRESSED) { 0 }
      const_attr_reader  :UNCOMPRESSED
      
      const_set_lazy(:COMPRESSED_FIXED) { 1 }
      const_attr_reader  :COMPRESSED_FIXED
      
      const_set_lazy(:COMPRESSED_DYNAMIC) { 2 }
      const_attr_reader  :COMPRESSED_DYNAMIC
      
      const_set_lazy(:END_OF_COMPRESSED_BLOCK) { 256 }
      const_attr_reader  :END_OF_COMPRESSED_BLOCK
      
      const_set_lazy(:FIRST_LENGTH_CODE) { 257 }
      const_attr_reader  :FIRST_LENGTH_CODE
      
      const_set_lazy(:LAST_LENGTH_CODE) { 285 }
      const_attr_reader  :LAST_LENGTH_CODE
      
      const_set_lazy(:FIRST_DISTANCE_CODE) { 1 }
      const_attr_reader  :FIRST_DISTANCE_CODE
      
      const_set_lazy(:LAST_DISTANCE_CODE) { 29 }
      const_attr_reader  :LAST_DISTANCE_CODE
      
      const_set_lazy(:FIRST_CODE_LENGTH_CODE) { 4 }
      const_attr_reader  :FIRST_CODE_LENGTH_CODE
      
      const_set_lazy(:LAST_CODE_LENGTH_CODE) { 19 }
      const_attr_reader  :LAST_CODE_LENGTH_CODE
      
      const_set_lazy(:LengthBases) { Array.typed(::Java::Int).new([3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 15, 17, 19, 23, 27, 31, 35, 43, 51, 59, 67, 83, 99, 115, 131, 163, 195, 227, 258]) }
      const_attr_reader  :LengthBases
      
      const_set_lazy(:ExtraLengthBits) { Array.typed(::Java::Int).new([0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 0, ]) }
      const_attr_reader  :ExtraLengthBits
      
      const_set_lazy(:DistanceBases) { Array.typed(::Java::Int).new([1, 2, 3, 4, 5, 7, 9, 13, 17, 25, 33, 49, 65, 97, 129, 193, 257, 385, 513, 769, 1025, 1537, 2049, 3073, 4097, 6145, 8193, 12289, 16385, 24577, ]) }
      const_attr_reader  :DistanceBases
      
      const_set_lazy(:ExtraDistanceBits) { Array.typed(::Java::Int).new([0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, ]) }
      const_attr_reader  :ExtraDistanceBits
    }
    
    typesig { [PngDecodingDataStream] }
    def initialize(stream)
      @is_last_block = false
      @compression_type = 0
      @uncompressed_bytes_remaining = 0
      @stream = nil
      @huffman_tables = nil
      @window = nil
      @window_index = 0
      @copy_index = 0
      @copy_bytes_remaining = 0
      @stream = stream
      @is_last_block = false
    end
    
    typesig { [::Java::Int] }
    def set_window_size(window_size)
      @window = Array.typed(::Java::Byte).new(window_size) { 0 }
    end
    
    typesig { [] }
    def read_next_block_header
      @is_last_block = !(@stream.get_next_idat_bit).equal?(0)
      @compression_type = (@stream.get_next_idat_bits(2) & 0xff)
      if (@compression_type > 2)
        @stream.error
      end
      if ((@compression_type).equal?(UNCOMPRESSED))
        b1 = @stream.get_next_idat_byte
        b2 = @stream.get_next_idat_byte
        b3 = @stream.get_next_idat_byte
        b4 = @stream.get_next_idat_byte
        if (!(b1).equal?(~b3) || !(b2).equal?(~b4))
          @stream.error
        end
        @uncompressed_bytes_remaining = (b1 & 0xff) | ((b2 & 0xff) << 8)
      else
        if ((@compression_type).equal?(COMPRESSED_DYNAMIC))
          @huffman_tables = PngHuffmanTables.get_dynamic_tables(@stream)
        else
          @huffman_tables = PngHuffmanTables.get_fixed_tables
        end
      end
    end
    
    typesig { [] }
    def get_next_byte
      if ((@compression_type).equal?(UNCOMPRESSED))
        if ((@uncompressed_bytes_remaining).equal?(0))
          read_next_block_header
          return get_next_byte
        end
        @uncompressed_bytes_remaining -= 1
        return @stream.get_next_idat_byte
      else
        value = get_next_compressed_byte
        if ((value).equal?(END_OF_COMPRESSED_BLOCK))
          if (@is_last_block)
            @stream.error
          end
          read_next_block_header
          return get_next_byte
        else
          return value
        end
      end
    end
    
    typesig { [] }
    def assert_block_at_end
      if ((@compression_type).equal?(UNCOMPRESSED))
        if (@uncompressed_bytes_remaining > 0)
          @stream.error
        end
      else
        if (@copy_bytes_remaining > 0 || (!(@huffman_tables.get_next_literal_value(@stream)).equal?(END_OF_COMPRESSED_BLOCK)))
          @stream.error
        end
      end
    end
    
    typesig { [] }
    def assert_compressed_data_at_end
      assert_block_at_end
      while (!@is_last_block)
        read_next_block_header
        assert_block_at_end
      end
    end
    
    typesig { [] }
    def get_next_compressed_byte
      if (@copy_bytes_remaining > 0)
        value = @window[@copy_index]
        @window[@window_index] = value
        @copy_bytes_remaining -= 1
        @copy_index += 1
        @window_index += 1
        if ((@copy_index).equal?(@window.attr_length))
          @copy_index = 0
        end
        if ((@window_index).equal?(@window.attr_length))
          @window_index = 0
        end
        return value
      end
      value = @huffman_tables.get_next_literal_value(@stream)
      if (value < END_OF_COMPRESSED_BLOCK)
        @window[@window_index] = (value & 0xff)
        @window_index += 1
        if (@window_index >= @window.attr_length)
          @window_index = 0
        end
        return (value & 0xff)
      else
        if ((value).equal?(END_OF_COMPRESSED_BLOCK))
          read_next_block_header
          return get_next_byte
        else
          if (value <= LAST_LENGTH_CODE)
            extra_bits = ExtraLengthBits[value - FIRST_LENGTH_CODE]
            length = LengthBases[value - FIRST_LENGTH_CODE]
            if (extra_bits > 0)
              length += @stream.get_next_idat_bits(extra_bits)
            end
            value = @huffman_tables.get_next_distance_value(@stream)
            if (value > LAST_DISTANCE_CODE)
              @stream.error
            end
            extra_bits = ExtraDistanceBits[value]
            distance = DistanceBases[value]
            if (extra_bits > 0)
              distance += @stream.get_next_idat_bits(extra_bits)
            end
            @copy_index = @window_index - distance
            if (@copy_index < 0)
              @copy_index += @window.attr_length
            end
            @copy_bytes_remaining = length
            return get_next_compressed_byte
          else
            @stream.error
            return 0
          end
        end
      end
    end
    
    private
    alias_method :initialize__png_lz_block_reader, :initialize
  end
  
end
