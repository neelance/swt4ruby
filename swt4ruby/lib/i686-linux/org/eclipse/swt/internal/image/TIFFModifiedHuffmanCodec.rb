require "rjava"

# Copyright (c) 2000, 2003 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Image
  module TIFFModifiedHuffmanCodecImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
    }
  end
  
  # Decoder for
  # - CCITT Group 3 1-Dimensional Modified Huffman run length encoding
  # (TIFF compression type 2)
  # - CCITT T.4 bi-level encoding 1D
  # (TIFF compression type 3 option 1D)
  class TIFFModifiedHuffmanCodec 
    include_class_members TIFFModifiedHuffmanCodecImports
    
    class_module.module_eval {
      # 2 bits
      # 3 bits
      # 4 bits
      # 5 bits
      # 6 bits
      # 7 bits
      # 8 bits
      # 9 bits
      # 10 bits
      # 11 bits
      # EOL
      # 12 bits
      # 13 bits
      const_set_lazy(:BLACK_CODE) { Array.typed(Array.typed(Array.typed(::Java::Short))).new([Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([2, 3]), Array.typed(::Java::Short).new([3, 2])]), Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([2, 1]), Array.typed(::Java::Short).new([3, 4])]), Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([2, 6]), Array.typed(::Java::Short).new([3, 5])]), Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([3, 7])]), Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([4, 9]), Array.typed(::Java::Short).new([5, 8])]), Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([4, 10]), Array.typed(::Java::Short).new([5, 11]), Array.typed(::Java::Short).new([7, 12])]), Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([4, 13]), Array.typed(::Java::Short).new([7, 14])]), Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([24, 15])]), Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([8, 18]), Array.typed(::Java::Short).new([15, 64]), Array.typed(::Java::Short).new([23, 16]), Array.typed(::Java::Short).new([24, 17]), Array.typed(::Java::Short).new([55, 0])]), Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([0, -1]), Array.typed(::Java::Short).new([8, 1792]), Array.typed(::Java::Short).new([23, 24]), Array.typed(::Java::Short).new([24, 25]), Array.typed(::Java::Short).new([40, 23]), Array.typed(::Java::Short).new([55, 22]), Array.typed(::Java::Short).new([103, 19]), Array.typed(::Java::Short).new([104, 20]), Array.typed(::Java::Short).new([108, 21]), Array.typed(::Java::Short).new([12, 1856]), Array.typed(::Java::Short).new([13, 1920])]), Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([18, 1984]), Array.typed(::Java::Short).new([19, 2048]), Array.typed(::Java::Short).new([20, 2112]), Array.typed(::Java::Short).new([21, 2176]), Array.typed(::Java::Short).new([22, 2240]), Array.typed(::Java::Short).new([23, 2304]), Array.typed(::Java::Short).new([28, 2368]), Array.typed(::Java::Short).new([29, 2432]), Array.typed(::Java::Short).new([30, 2496]), Array.typed(::Java::Short).new([31, 2560]), Array.typed(::Java::Short).new([36, 52]), Array.typed(::Java::Short).new([39, 55]), Array.typed(::Java::Short).new([40, 56]), Array.typed(::Java::Short).new([43, 59]), Array.typed(::Java::Short).new([44, 60]), Array.typed(::Java::Short).new([51, 320]), Array.typed(::Java::Short).new([52, 384]), Array.typed(::Java::Short).new([53, 448]), Array.typed(::Java::Short).new([55, 53]), Array.typed(::Java::Short).new([56, 54]), Array.typed(::Java::Short).new([82, 50]), Array.typed(::Java::Short).new([83, 51]), Array.typed(::Java::Short).new([84, 44]), Array.typed(::Java::Short).new([85, 45]), Array.typed(::Java::Short).new([86, 46]), Array.typed(::Java::Short).new([87, 47]), Array.typed(::Java::Short).new([88, 57]), Array.typed(::Java::Short).new([89, 58]), Array.typed(::Java::Short).new([90, 61]), Array.typed(::Java::Short).new([91, 256]), Array.typed(::Java::Short).new([100, 48]), Array.typed(::Java::Short).new([101, 49]), Array.typed(::Java::Short).new([102, 62]), Array.typed(::Java::Short).new([103, 63]), Array.typed(::Java::Short).new([104, 30]), Array.typed(::Java::Short).new([105, 31]), Array.typed(::Java::Short).new([106, 32]), Array.typed(::Java::Short).new([107, 33]), Array.typed(::Java::Short).new([108, 40]), Array.typed(::Java::Short).new([109, 41]), Array.typed(::Java::Short).new([200, 128]), Array.typed(::Java::Short).new([201, 192]), Array.typed(::Java::Short).new([202, 26]), Array.typed(::Java::Short).new([203, 27]), Array.typed(::Java::Short).new([204, 28]), Array.typed(::Java::Short).new([205, 29]), Array.typed(::Java::Short).new([210, 34]), Array.typed(::Java::Short).new([211, 35]), Array.typed(::Java::Short).new([212, 36]), Array.typed(::Java::Short).new([213, 37]), Array.typed(::Java::Short).new([214, 38]), Array.typed(::Java::Short).new([215, 39]), Array.typed(::Java::Short).new([218, 42]), Array.typed(::Java::Short).new([219, 43])]), Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([74, 640]), Array.typed(::Java::Short).new([75, 704]), Array.typed(::Java::Short).new([76, 768]), Array.typed(::Java::Short).new([77, 832]), Array.typed(::Java::Short).new([82, 1280]), Array.typed(::Java::Short).new([83, 1344]), Array.typed(::Java::Short).new([84, 1408]), Array.typed(::Java::Short).new([85, 1472]), Array.typed(::Java::Short).new([90, 1536]), Array.typed(::Java::Short).new([91, 1600]), Array.typed(::Java::Short).new([100, 1664]), Array.typed(::Java::Short).new([101, 1728]), Array.typed(::Java::Short).new([108, 512]), Array.typed(::Java::Short).new([109, 576]), Array.typed(::Java::Short).new([114, 896]), Array.typed(::Java::Short).new([115, 960]), Array.typed(::Java::Short).new([116, 1024]), Array.typed(::Java::Short).new([117, 1088]), Array.typed(::Java::Short).new([118, 1152]), Array.typed(::Java::Short).new([119, 1216])])]) }
      const_attr_reader  :BLACK_CODE
      
      # 4 bits
      # 5 bits
      # 6 bits
      # 7 bits
      # 8 bits
      # 9 bits
      # 10 bits
      # 11 bits
      # 12 bits
      # EOL
      const_set_lazy(:WHITE_CODE) { Array.typed(Array.typed(Array.typed(::Java::Short))).new([Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([7, 2]), Array.typed(::Java::Short).new([8, 3]), Array.typed(::Java::Short).new([11, 4]), Array.typed(::Java::Short).new([12, 5]), Array.typed(::Java::Short).new([14, 6]), Array.typed(::Java::Short).new([15, 7])]), Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([7, 10]), Array.typed(::Java::Short).new([8, 11]), Array.typed(::Java::Short).new([18, 128]), Array.typed(::Java::Short).new([19, 8]), Array.typed(::Java::Short).new([20, 9]), Array.typed(::Java::Short).new([27, 64])]), Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([3, 13]), Array.typed(::Java::Short).new([7, 1]), Array.typed(::Java::Short).new([8, 12]), Array.typed(::Java::Short).new([23, 192]), Array.typed(::Java::Short).new([24, 1664]), Array.typed(::Java::Short).new([42, 16]), Array.typed(::Java::Short).new([43, 17]), Array.typed(::Java::Short).new([52, 14]), Array.typed(::Java::Short).new([53, 15])]), Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([3, 22]), Array.typed(::Java::Short).new([4, 23]), Array.typed(::Java::Short).new([8, 20]), Array.typed(::Java::Short).new([12, 19]), Array.typed(::Java::Short).new([19, 26]), Array.typed(::Java::Short).new([23, 21]), Array.typed(::Java::Short).new([24, 28]), Array.typed(::Java::Short).new([36, 27]), Array.typed(::Java::Short).new([39, 18]), Array.typed(::Java::Short).new([40, 24]), Array.typed(::Java::Short).new([43, 25]), Array.typed(::Java::Short).new([55, 256])]), Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([2, 29]), Array.typed(::Java::Short).new([3, 30]), Array.typed(::Java::Short).new([4, 45]), Array.typed(::Java::Short).new([5, 46]), Array.typed(::Java::Short).new([10, 47]), Array.typed(::Java::Short).new([11, 48]), Array.typed(::Java::Short).new([18, 33]), Array.typed(::Java::Short).new([19, 34]), Array.typed(::Java::Short).new([20, 35]), Array.typed(::Java::Short).new([21, 36]), Array.typed(::Java::Short).new([22, 37]), Array.typed(::Java::Short).new([23, 38]), Array.typed(::Java::Short).new([26, 31]), Array.typed(::Java::Short).new([27, 32]), Array.typed(::Java::Short).new([36, 53]), Array.typed(::Java::Short).new([37, 54]), Array.typed(::Java::Short).new([40, 39]), Array.typed(::Java::Short).new([41, 40]), Array.typed(::Java::Short).new([42, 41]), Array.typed(::Java::Short).new([43, 42]), Array.typed(::Java::Short).new([44, 43]), Array.typed(::Java::Short).new([45, 44]), Array.typed(::Java::Short).new([50, 61]), Array.typed(::Java::Short).new([51, 62]), Array.typed(::Java::Short).new([52, 63]), Array.typed(::Java::Short).new([53, 0]), Array.typed(::Java::Short).new([54, 320]), Array.typed(::Java::Short).new([55, 384]), Array.typed(::Java::Short).new([74, 59]), Array.typed(::Java::Short).new([75, 60]), Array.typed(::Java::Short).new([82, 49]), Array.typed(::Java::Short).new([83, 50]), Array.typed(::Java::Short).new([84, 51]), Array.typed(::Java::Short).new([85, 52]), Array.typed(::Java::Short).new([88, 55]), Array.typed(::Java::Short).new([89, 56]), Array.typed(::Java::Short).new([90, 57]), Array.typed(::Java::Short).new([91, 58]), Array.typed(::Java::Short).new([100, 448]), Array.typed(::Java::Short).new([101, 512]), Array.typed(::Java::Short).new([103, 640]), Array.typed(::Java::Short).new([104, 576])]), Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([152, 1472]), Array.typed(::Java::Short).new([153, 1536]), Array.typed(::Java::Short).new([154, 1600]), Array.typed(::Java::Short).new([155, 1728]), Array.typed(::Java::Short).new([204, 704]), Array.typed(::Java::Short).new([205, 768]), Array.typed(::Java::Short).new([210, 832]), Array.typed(::Java::Short).new([211, 896]), Array.typed(::Java::Short).new([212, 960]), Array.typed(::Java::Short).new([213, 1024]), Array.typed(::Java::Short).new([214, 1088]), Array.typed(::Java::Short).new([215, 1152]), Array.typed(::Java::Short).new([216, 1216]), Array.typed(::Java::Short).new([217, 1280]), Array.typed(::Java::Short).new([218, 1344]), Array.typed(::Java::Short).new([219, 1408])]), Array.typed(Array.typed(::Java::Short)).new([]), Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([8, 1792]), Array.typed(::Java::Short).new([12, 1856]), Array.typed(::Java::Short).new([13, 1920])]), Array.typed(Array.typed(::Java::Short)).new([Array.typed(::Java::Short).new([1, -1]), Array.typed(::Java::Short).new([18, 1984]), Array.typed(::Java::Short).new([19, 2048]), Array.typed(::Java::Short).new([20, 2112]), Array.typed(::Java::Short).new([21, 2176]), Array.typed(::Java::Short).new([22, 2240]), Array.typed(::Java::Short).new([23, 2304]), Array.typed(::Java::Short).new([28, 2368]), Array.typed(::Java::Short).new([29, 2432]), Array.typed(::Java::Short).new([30, 2496]), Array.typed(::Java::Short).new([31, 2560])])]) }
      const_attr_reader  :WHITE_CODE
      
      const_set_lazy(:BLACK_MIN_BITS) { 2 }
      const_attr_reader  :BLACK_MIN_BITS
      
      const_set_lazy(:WHITE_MIN_BITS) { 4 }
      const_attr_reader  :WHITE_MIN_BITS
    }
    
    attr_accessor :is_white
    alias_method :attr_is_white, :is_white
    undef_method :is_white
    alias_method :attr_is_white=, :is_white=
    undef_method :is_white=
    
    attr_accessor :white_value
    alias_method :attr_white_value, :white_value
    undef_method :white_value
    alias_method :attr_white_value=, :white_value=
    undef_method :white_value=
    
    attr_accessor :black_value
    alias_method :attr_black_value, :black_value
    undef_method :black_value
    alias_method :attr_black_value=, :black_value=
    undef_method :black_value=
    
    attr_accessor :src
    alias_method :attr_src, :src
    undef_method :src
    alias_method :attr_src=, :src=
    undef_method :src=
    
    attr_accessor :dest
    alias_method :attr_dest, :dest
    undef_method :dest
    alias_method :attr_dest=, :dest=
    undef_method :dest=
    
    attr_accessor :byte_offset_src
    alias_method :attr_byte_offset_src, :byte_offset_src
    undef_method :byte_offset_src
    alias_method :attr_byte_offset_src=, :byte_offset_src=
    undef_method :byte_offset_src=
    
    attr_accessor :bit_offset_src
    alias_method :attr_bit_offset_src, :bit_offset_src
    undef_method :bit_offset_src
    alias_method :attr_bit_offset_src=, :bit_offset_src=
    undef_method :bit_offset_src=
    
    attr_accessor :byte_offset_dest
    alias_method :attr_byte_offset_dest, :byte_offset_dest
    undef_method :byte_offset_dest
    alias_method :attr_byte_offset_dest=, :byte_offset_dest=
    undef_method :byte_offset_dest=
    
    attr_accessor :bit_offset_dest
    alias_method :attr_bit_offset_dest, :bit_offset_dest
    undef_method :bit_offset_dest
    alias_method :attr_bit_offset_dest=, :bit_offset_dest=
    undef_method :bit_offset_dest=
    
    attr_accessor :code
    alias_method :attr_code, :code
    undef_method :code
    alias_method :attr_code=, :code=
    undef_method :code=
    
    attr_accessor :nbr_bits
    alias_method :attr_nbr_bits, :nbr_bits
    undef_method :nbr_bits
    alias_method :attr_nbr_bits=, :nbr_bits=
    undef_method :nbr_bits=
    
    # nbr of bytes per row
    attr_accessor :row_size
    alias_method :attr_row_size, :row_size
    undef_method :row_size
    alias_method :attr_row_size=, :row_size=
    undef_method :row_size=
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
    def decode(src, dest, offset_dest, row_size, n_rows)
      @src = src
      @dest = dest
      @row_size = row_size
      @byte_offset_src = 0
      @bit_offset_src = 0
      @byte_offset_dest = offset_dest
      @bit_offset_dest = 0
      cnt = 0
      while (cnt < n_rows && decode_row)
        cnt += 1
        # byte aligned
        if (@bit_offset_dest > 0)
          @byte_offset_dest += 1
          @bit_offset_dest = 0
        end
      end
      return @byte_offset_dest - offset_dest
    end
    
    typesig { [] }
    def decode_row
      @is_white = true
      n = 0
      while (n < @row_size)
        run_length = decode_run_length
        if (run_length < 0)
          return false
        end
        n += run_length
        set_next_bits(@is_white ? @white_value : @black_value, run_length)
        @is_white = !@is_white
      end
      return true
    end
    
    typesig { [] }
    def decode_run_length
      run_length = 0
      partial_run = 0
      huffman_code = @is_white ? WHITE_CODE : BLACK_CODE
      while (true)
        found = false
        @nbr_bits = @is_white ? WHITE_MIN_BITS : BLACK_MIN_BITS
        @code = get_next_bits(@nbr_bits)
        i = 0
        while i < huffman_code.attr_length
          j = 0
          while j < huffman_code[i].attr_length
            if ((huffman_code[i][j][0]).equal?(@code))
              found = true
              partial_run = huffman_code[i][j][1]
              if ((partial_run).equal?(-1))
                # Stop when reaching final EOL on last byte
                if ((@byte_offset_src).equal?(@src.attr_length - 1))
                  return -1
                end
                # Group 3 starts each row with an EOL - ignore it
              else
                run_length += partial_run
                if (partial_run < 64)
                  return run_length
                end
              end
              break
            end
            j += 1
          end
          if (found)
            break
          end
          @code = @code << 1 | get_next_bit
          i += 1
        end
        if (!found)
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
      end
    end
    
    typesig { [] }
    def get_next_bit
      value = (@src[@byte_offset_src] >> (7 - @bit_offset_src)) & 0x1
      @bit_offset_src += 1
      if (@bit_offset_src > 7)
        @byte_offset_src += 1
        @bit_offset_src = 0
      end
      return value
    end
    
    typesig { [::Java::Int] }
    def get_next_bits(cnt)
      value = 0
      i = 0
      while i < cnt
        value = value << 1 | get_next_bit
        i += 1
      end
      return value
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def set_next_bits(value, cnt)
      n = cnt
      while (@bit_offset_dest > 0 && @bit_offset_dest <= 7 && n > 0)
        @dest[@byte_offset_dest] = (value).equal?(1) ? (@dest[@byte_offset_dest] | (1 << (7 - @bit_offset_dest))) : (@dest[@byte_offset_dest] & ~(1 << (7 - @bit_offset_dest)))
        n -= 1
        @bit_offset_dest += 1
      end
      if ((@bit_offset_dest).equal?(8))
        @byte_offset_dest += 1
        @bit_offset_dest = 0
      end
      while (n >= 8)
        @dest[((@byte_offset_dest += 1) - 1)] = ((value).equal?(1) ? 0xff : 0)
        n -= 8
      end
      while (n > 0)
        @dest[@byte_offset_dest] = (value).equal?(1) ? (@dest[@byte_offset_dest] | (1 << (7 - @bit_offset_dest))) : (@dest[@byte_offset_dest] & ~(1 << (7 - @bit_offset_dest)))
        n -= 1
        @bit_offset_dest += 1
      end
    end
    
    typesig { [] }
    def initialize
      @is_white = false
      @white_value = 0
      @black_value = 1
      @src = nil
      @dest = nil
      @byte_offset_src = 0
      @bit_offset_src = 0
      @byte_offset_dest = 0
      @bit_offset_dest = 0
      @code = 0
      @nbr_bits = 0
      @row_size = 0
    end
    
    private
    alias_method :initialize__tiffmodified_huffman_codec, :initialize
  end
  
end
