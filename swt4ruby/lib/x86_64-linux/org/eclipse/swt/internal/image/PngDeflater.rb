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
  module PngDeflaterImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include_const ::Java::Io, :ByteArrayOutputStream
    }
  end
  
  class PngDeflater 
    include_class_members PngDeflaterImports
    
    class_module.module_eval {
      const_set_lazy(:BASE) { 65521 }
      const_attr_reader  :BASE
      
      const_set_lazy(:WINDOW) { 32768 }
      const_attr_reader  :WINDOW
      
      const_set_lazy(:MIN_LENGTH) { 3 }
      const_attr_reader  :MIN_LENGTH
      
      const_set_lazy(:MAX_MATCHES) { 32 }
      const_attr_reader  :MAX_MATCHES
      
      const_set_lazy(:HASH) { 8209 }
      const_attr_reader  :HASH
    }
    
    attr_accessor :in
    alias_method :attr_in, :in
    undef_method :in
    alias_method :attr_in=, :in=
    undef_method :in=
    
    attr_accessor :in_length
    alias_method :attr_in_length, :in_length
    undef_method :in_length
    alias_method :attr_in_length=, :in_length=
    undef_method :in_length=
    
    attr_accessor :bytes
    alias_method :attr_bytes, :bytes
    undef_method :bytes
    alias_method :attr_bytes=, :bytes=
    undef_method :bytes=
    
    attr_accessor :adler32
    alias_method :attr_adler32, :adler32
    undef_method :adler32
    alias_method :attr_adler32=, :adler32=
    undef_method :adler32=
    
    attr_accessor :buffer
    alias_method :attr_buffer, :buffer
    undef_method :buffer
    alias_method :attr_buffer=, :buffer=
    undef_method :buffer=
    
    attr_accessor :bit_count
    alias_method :attr_bit_count, :bit_count
    undef_method :bit_count
    alias_method :attr_bit_count=, :bit_count=
    undef_method :bit_count=
    
    attr_accessor :hashtable
    alias_method :attr_hashtable, :hashtable
    undef_method :hashtable
    alias_method :attr_hashtable=, :hashtable=
    undef_method :hashtable=
    
    attr_accessor :window
    alias_method :attr_window, :window
    undef_method :window
    alias_method :attr_window=, :window=
    undef_method :window=
    
    attr_accessor :next_window
    alias_method :attr_next_window, :next_window
    undef_method :next_window
    alias_method :attr_next_window=, :next_window=
    undef_method :next_window=
    
    class_module.module_eval {
      const_set_lazy(:Link) { Class.new do
        include_class_members PngDeflater
        
        attr_accessor :hash
        alias_method :attr_hash, :hash
        undef_method :hash
        alias_method :attr_hash=, :hash=
        undef_method :hash=
        
        attr_accessor :value
        alias_method :attr_value, :value
        undef_method :value
        alias_method :attr_value=, :value=
        undef_method :value=
        
        attr_accessor :previous
        alias_method :attr_previous, :previous
        undef_method :previous
        alias_method :attr_previous=, :previous=
        undef_method :previous=
        
        attr_accessor :next
        alias_method :attr_next, :next
        undef_method :next
        alias_method :attr_next=, :next=
        undef_method :next=
        
        typesig { [] }
        def initialize
          @hash = 0
          @value = 0
          @previous = nil
          @next = nil
          @hash = 0
          @value = 0
          @previous = nil
          @next = nil
        end
        
        private
        alias_method :initialize__link, :initialize
      end }
      
      const_set_lazy(:Match) { Class.new do
        include_class_members PngDeflater
        
        attr_accessor :length
        alias_method :attr_length, :length
        undef_method :length
        alias_method :attr_length=, :length=
        undef_method :length=
        
        attr_accessor :distance
        alias_method :attr_distance, :distance
        undef_method :distance
        alias_method :attr_distance=, :distance=
        undef_method :distance=
        
        typesig { [::Java::Int, ::Java::Int] }
        def initialize(length, distance)
          @length = 0
          @distance = 0
          @length = length
          @distance = distance
        end
        
        private
        alias_method :initialize__match, :initialize
      end }
      
      const_set_lazy(:MirrorBytes) { Array.typed(::Java::Short).new([0x0, 0x80, 0x40, 0xc0, 0x20, 0xa0, 0x60, 0xe0, 0x10, 0x90, 0x50, 0xd0, 0x30, 0xb0, 0x70, 0xf0, 0x8, 0x88, 0x48, 0xc8, 0x28, 0xa8, 0x68, 0xe8, 0x18, 0x98, 0x58, 0xd8, 0x38, 0xb8, 0x78, 0xf8, 0x4, 0x84, 0x44, 0xc4, 0x24, 0xa4, 0x64, 0xe4, 0x14, 0x94, 0x54, 0xd4, 0x34, 0xb4, 0x74, 0xf4, 0xc, 0x8c, 0x4c, 0xcc, 0x2c, 0xac, 0x6c, 0xec, 0x1c, 0x9c, 0x5c, 0xdc, 0x3c, 0xbc, 0x7c, 0xfc, 0x2, 0x82, 0x42, 0xc2, 0x22, 0xa2, 0x62, 0xe2, 0x12, 0x92, 0x52, 0xd2, 0x32, 0xb2, 0x72, 0xf2, 0xa, 0x8a, 0x4a, 0xca, 0x2a, 0xaa, 0x6a, 0xea, 0x1a, 0x9a, 0x5a, 0xda, 0x3a, 0xba, 0x7a, 0xfa, 0x6, 0x86, 0x46, 0xc6, 0x26, 0xa6, 0x66, 0xe6, 0x16, 0x96, 0x56, 0xd6, 0x36, 0xb6, 0x76, 0xf6, 0xe, 0x8e, 0x4e, 0xce, 0x2e, 0xae, 0x6e, 0xee, 0x1e, 0x9e, 0x5e, 0xde, 0x3e, 0xbe, 0x7e, 0xfe, 0x1, 0x81, 0x41, 0xc1, 0x21, 0xa1, 0x61, 0xe1, 0x11, 0x91, 0x51, 0xd1, 0x31, 0xb1, 0x71, 0xf1, 0x9, 0x89, 0x49, 0xc9, 0x29, 0xa9, 0x69, 0xe9, 0x19, 0x99, 0x59, 0xd9, 0x39, 0xb9, 0x79, 0xf9, 0x5, 0x85, 0x45, 0xc5, 0x25, 0xa5, 0x65, 0xe5, 0x15, 0x95, 0x55, 0xd5, 0x35, 0xb5, 0x75, 0xf5, 0xd, 0x8d, 0x4d, 0xcd, 0x2d, 0xad, 0x6d, 0xed, 0x1d, 0x9d, 0x5d, 0xdd, 0x3d, 0xbd, 0x7d, 0xfd, 0x3, 0x83, 0x43, 0xc3, 0x23, 0xa3, 0x63, 0xe3, 0x13, 0x93, 0x53, 0xd3, 0x33, 0xb3, 0x73, 0xf3, 0xb, 0x8b, 0x4b, 0xcb, 0x2b, 0xab, 0x6b, 0xeb, 0x1b, 0x9b, 0x5b, 0xdb, 0x3b, 0xbb, 0x7b, 0xfb, 0x7, 0x87, 0x47, 0xc7, 0x27, 0xa7, 0x67, 0xe7, 0x17, 0x97, 0x57, 0xd7, 0x37, 0xb7, 0x77, 0xf7, 0xf, 0x8f, 0x4f, 0xcf, 0x2f, 0xaf, 0x6f, 0xef, 0x1f, 0x9f, 0x5f, 0xdf, 0x3f, 0xbf, 0x7f, 0xff, ]) }
      const_attr_reader  :MirrorBytes
      
      const_set_lazy(:Code) { Class.new do
        include_class_members PngDeflater
        
        attr_accessor :code
        alias_method :attr_code, :code
        undef_method :code
        alias_method :attr_code=, :code=
        undef_method :code=
        
        attr_accessor :extra_bits
        alias_method :attr_extra_bits, :extra_bits
        undef_method :extra_bits
        alias_method :attr_extra_bits=, :extra_bits=
        undef_method :extra_bits=
        
        attr_accessor :min
        alias_method :attr_min, :min
        undef_method :min
        alias_method :attr_min=, :min=
        undef_method :min=
        
        attr_accessor :max
        alias_method :attr_max, :max
        undef_method :max
        alias_method :attr_max=, :max=
        undef_method :max=
        
        typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
        def initialize(code, extra_bits, min, max)
          @code = 0
          @extra_bits = 0
          @min = 0
          @max = 0
          @code = code
          @extra_bits = extra_bits
          @min = min
          @max = max
        end
        
        private
        alias_method :initialize__code, :initialize
      end }
      
      const_set_lazy(:LengthCodes) { Array.typed(Code).new([Code.new(257, 0, 3, 3), Code.new(258, 0, 4, 4), Code.new(259, 0, 5, 5), Code.new(260, 0, 6, 6), Code.new(261, 0, 7, 7), Code.new(262, 0, 8, 8), Code.new(263, 0, 9, 9), Code.new(264, 0, 10, 10), Code.new(265, 1, 11, 12), Code.new(266, 1, 13, 14), Code.new(267, 1, 15, 16), Code.new(268, 1, 17, 18), Code.new(269, 2, 19, 22), Code.new(270, 2, 23, 26), Code.new(271, 2, 27, 30), Code.new(272, 2, 31, 34), Code.new(273, 3, 35, 42), Code.new(274, 3, 43, 50), Code.new(275, 3, 51, 58), Code.new(276, 3, 59, 66), Code.new(277, 4, 67, 82), Code.new(278, 4, 83, 98), Code.new(279, 4, 99, 114), Code.new(280, 4, 115, 130), Code.new(281, 5, 131, 162), Code.new(282, 5, 163, 194), Code.new(283, 5, 195, 226), Code.new(284, 5, 227, 257), Code.new(285, 0, 258, 258)]) }
      const_attr_reader  :LengthCodes
      
      const_set_lazy(:DistanceCodes) { Array.typed(Code).new([Code.new(0, 0, 1, 1), Code.new(1, 0, 2, 2), Code.new(2, 0, 3, 3), Code.new(3, 0, 4, 4), Code.new(4, 1, 5, 6), Code.new(5, 1, 7, 8), Code.new(6, 2, 9, 12), Code.new(7, 2, 13, 16), Code.new(8, 3, 17, 24), Code.new(9, 3, 25, 32), Code.new(10, 4, 33, 48), Code.new(11, 4, 49, 64), Code.new(12, 5, 65, 96), Code.new(13, 5, 97, 128), Code.new(14, 6, 129, 192), Code.new(15, 6, 193, 256), Code.new(16, 7, 257, 384), Code.new(17, 7, 385, 512), Code.new(18, 8, 513, 768), Code.new(19, 8, 769, 1024), Code.new(20, 9, 1025, 1536), Code.new(21, 9, 1537, 2048), Code.new(22, 10, 2049, 3072), Code.new(23, 10, 3073, 4096), Code.new(24, 11, 4097, 6144), Code.new(25, 11, 6145, 8192), Code.new(26, 12, 8193, 12288), Code.new(27, 12, 12289, 16384), Code.new(28, 13, 16385, 24576), Code.new(29, 13, 24577, 32768)]) }
      const_attr_reader  :DistanceCodes
    }
    
    typesig { [ByteArrayOutputStream, ::Java::Int] }
    def write_short_lsb(baos, the_short)
      byte1 = (the_short & 0xff)
      byte2 = ((the_short >> 8) & 0xff)
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
    
    typesig { [::Java::Byte] }
    def update_adler(value)
      low = @adler32 & 0xffff
      high = (@adler32 >> 16) & 0xffff
      value_int = value & 0xff
      low = (low + value_int) % BASE
      high = (low + high) % BASE
      @adler32 = (high << 16) | low
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def hash(bytes)
      hash = ((bytes[0] & 0xff) << 24 | (bytes[1] & 0xff) << 16 | (bytes[2] & 0xff) << 8) % HASH
      if (hash < 0)
        hash = hash + HASH
      end
      return hash
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def write_bits(value, count)
      @buffer |= value << @bit_count
      @bit_count += count
      if (@bit_count >= 16)
        @bytes.write(@buffer)
        @bytes.write((@buffer >> 8))
        @buffer >>= 16
        @bit_count -= 16
      end
    end
    
    typesig { [] }
    def align_to_byte
      if (@bit_count > 0)
        @bytes.write(@buffer)
        if (@bit_count > 8)
          @bytes.write((@buffer >> 8))
        end
      end
      @buffer = 0
      @bit_count = 0
    end
    
    typesig { [::Java::Byte] }
    def output_literal(literal)
      i = literal & 0xff
      if (i <= 143)
        # 0 through 143 are 8 bits long starting at 00110000
        write_bits(MirrorBytes[0x30 + i], 8)
      else
        # 144 through 255 are 9 bits long starting at 110010000
        write_bits(1 + 2 * MirrorBytes[0x90 - 144 + i], 9)
      end
    end
    
    typesig { [::Java::Int, Array.typed(Code)] }
    def find_code(value, codes)
      i = 0
      j = 0
      k = 0
      i = -1
      j = codes.attr_length
      while (true)
        k = (j + i) / 2
        if (value < codes[k].attr_min)
          j = k
        else
          if (value > codes[k].attr_max)
            i = k
          else
            return codes[k]
          end
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def output_match(length, distance)
      d = nil
      l = nil
      this_length = 0
      while (length > 0)
        # we can transmit matches of lengths 3 through 258 inclusive
        # so if length exceeds 258, we must transmit in several steps,
        # with 258 or less in each step
        if (length > 260)
          this_length = 258
        else
          if (length <= 258)
            this_length = length
          else
            this_length = length - 3
          end
        end
        length = length - this_length
        # find length code
        l = find_code(this_length, LengthCodes)
        # transmit the length code
        # 256 through 279 are 7 bits long starting at 0000000
        # 280 through 287 are 8 bits long starting at 11000000
        if (l.attr_code <= 279)
          write_bits(MirrorBytes[(l.attr_code - 256) * 2], 7)
        else
          write_bits(MirrorBytes[0xc0 - 280 + l.attr_code], 8)
        end
        # transmit the extra bits
        if (!(l.attr_extra_bits).equal?(0))
          write_bits(this_length - l.attr_min, l.attr_extra_bits)
        end
        # find distance code
        d = find_code(distance, DistanceCodes)
        # transmit the distance code
        # 5 bits long starting at 00000
        write_bits(MirrorBytes[d.attr_code * 8], 5)
        # transmit the extra bits
        if (!(d.attr_extra_bits).equal?(0))
          write_bits(distance - d.attr_min, d.attr_extra_bits)
        end
      end
    end
    
    typesig { [::Java::Int, Link] }
    def find_longest_match(position, first_position)
      link = first_position
      number_of_matches = 0
      best_match = Match.new(-1, -1)
      while (true)
        match_position = link.attr_value
        if (position - match_position < WINDOW && !(match_position).equal?(0))
          i = 0
          i = 1
          while position + i < @in_length
            if (!(@in[position + i]).equal?(@in[match_position + i]))
              break
            end
            i += 1
          end
          if (i >= MIN_LENGTH)
            if (i > best_match.attr_length)
              best_match.attr_length = i
              best_match.attr_distance = position - match_position
            end
            number_of_matches = number_of_matches + 1
            if ((number_of_matches).equal?(MAX_MATCHES))
              break
            end
          end
        end
        link = link.attr_next
        if ((link).nil?)
          break
        end
      end
      if (best_match.attr_length < MIN_LENGTH || best_match.attr_distance < 1 || best_match.attr_distance > WINDOW)
        return nil
      end
      return best_match
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def update_hashtable(to, from)
      data = Array.typed(::Java::Byte).new(3) { 0 }
      hash = 0
      temp = nil
      i = to
      while i < from
        if (i + MIN_LENGTH > @in_length)
          break
        end
        data[0] = @in[i]
        data[1] = @in[i + 1]
        data[2] = @in[i + 2]
        hash = hash(data)
        if (!(@window[@next_window].attr_previous).nil?)
          @window[@next_window].attr_previous.attr_next = nil
        else
          if (!(@window[@next_window].attr_hash).equal?(0))
            @hashtable[@window[@next_window].attr_hash].attr_next = nil
          end
        end
        @window[@next_window].attr_hash = hash
        @window[@next_window].attr_value = i
        @window[@next_window].attr_previous = nil
        temp = @window[@next_window].attr_next = @hashtable[hash].attr_next
        @hashtable[hash].attr_next = @window[@next_window]
        if (!(temp).nil?)
          temp.attr_previous = @window[@next_window]
        end
        @next_window = @next_window + 1
        if ((@next_window).equal?(WINDOW))
          @next_window = 0
        end
        i += 1
      end
    end
    
    typesig { [] }
    def compress
      position = 0
      new_position = 0
      data = Array.typed(::Java::Byte).new(3) { 0 }
      hash_ = 0
      i = 0
      while i < HASH
        @hashtable[i] = Link.new
        i += 1
      end
      i_ = 0
      while i_ < WINDOW
        @window[i_] = Link.new
        i_ += 1
      end
      @next_window = 0
      first_position = nil
      match = nil
      deferred_position = -1
      deferred_match = nil
      write_bits(0x1, 1) # BFINAL = 0x01 (final block)
      write_bits(0x1, 2) # BTYPE = 0x01 (compression with fixed Huffman codes)
      # just output first byte so we never match at zero
      output_literal(@in[0])
      position = 1
      while (position < @in_length)
        if (@in_length - position < MIN_LENGTH)
          output_literal(@in[position])
          position = position + 1
          next
        end
        data[0] = @in[position]
        data[1] = @in[position + 1]
        data[2] = @in[position + 2]
        hash_ = hash(data)
        first_position = @hashtable[hash_]
        match = find_longest_match(position, first_position)
        update_hashtable(position, position + 1)
        if (!(match).nil?)
          if (!(deferred_match).nil?)
            if (match.attr_length > deferred_match.attr_length + 1)
              # output literal at deferredPosition
              output_literal(@in[deferred_position])
              # defer this match
              deferred_position = position
              deferred_match = match
              position = position + 1
            else
              # output deferredMatch
              output_match(deferred_match.attr_length, deferred_match.attr_distance)
              new_position = deferred_position + deferred_match.attr_length
              deferred_position = -1
              deferred_match = nil
              update_hashtable(position + 1, new_position)
              position = new_position
            end
          else
            # defer this match
            deferred_position = position
            deferred_match = match
            position = position + 1
          end
        else
          # no match found
          if (!(deferred_match).nil?)
            output_match(deferred_match.attr_length, deferred_match.attr_distance)
            new_position = deferred_position + deferred_match.attr_length
            deferred_position = -1
            deferred_match = nil
            update_hashtable(position + 1, new_position)
            position = new_position
          else
            output_literal(@in[position])
            position = position + 1
          end
        end
      end
      write_bits(0, 7) # end of block code
      align_to_byte
    end
    
    typesig { [] }
    def compress_huffman_only
      position = 0
      write_bits(0x1, 1) # BFINAL = 0x01 (final block)
      write_bits(0x1, 2) # BTYPE = 0x01 (compression with fixed Huffman codes)
      position = 0
      while position < @in_length
        output_literal(@in[position])
        position = position + 1
      end
      write_bits(0, 7) # end of block code
      align_to_byte
    end
    
    typesig { [] }
    def store
      # stored blocks are limited to 0xffff bytes
      start = 0
      length = @in_length
      block_length = 0
      bfinal = 0x0 # BFINAL = 0x00 or 0x01 (if final block), BTYPE = 0x00 (no compression)
      while (length > 0)
        if (length < 65535)
          block_length = length
          bfinal = 0x1
        else
          block_length = 65535
          bfinal = 0x0
        end
        # write data header
        @bytes.write(bfinal)
        write_short_lsb(@bytes, block_length) # LEN
        write_short_lsb(@bytes, block_length ^ 0xffff) # NLEN (one's complement of LEN)
        # write actual data
        @bytes.write(@in, start, block_length)
        length = length - block_length
        start = start + block_length
      end
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def deflate(input)
      @in = input
      @in_length = input.attr_length
      # write zlib header
      @bytes.write(0x78) # window size = 0x70 (32768), compression method = 0x08
      @bytes.write(0x9c) # compression level = 0x80 (default), check bits = 0x1C
      # compute checksum
      i = 0
      while i < @in_length
        update_adler(@in[i])
        i += 1
      end
      # store();
      # compressHuffmanOnly();
      compress
      # write checksum
      write_int(@bytes, @adler32)
      return @bytes.to_byte_array
    end
    
    typesig { [] }
    def initialize
      @in = nil
      @in_length = 0
      @bytes = ByteArrayOutputStream.new(1024)
      @adler32 = 1
      @buffer = 0
      @bit_count = 0
      @hashtable = Array.typed(Link).new(HASH) { nil }
      @window = Array.typed(Link).new(WINDOW) { nil }
      @next_window = 0
    end
    
    private
    alias_method :initialize__png_deflater, :initialize
  end
  
end
