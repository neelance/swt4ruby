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
  module PngChunkImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
      include ::Java::Io
    }
  end
  
  class PngChunk < PngChunkImports.const_get :Object
    include_class_members PngChunkImports
    
    attr_accessor :reference
    alias_method :attr_reference, :reference
    undef_method :reference
    alias_method :attr_reference=, :reference=
    undef_method :reference=
    
    class_module.module_eval {
      const_set_lazy(:LENGTH_OFFSET) { 0 }
      const_attr_reader  :LENGTH_OFFSET
      
      const_set_lazy(:TYPE_OFFSET) { 4 }
      const_attr_reader  :TYPE_OFFSET
      
      const_set_lazy(:DATA_OFFSET) { 8 }
      const_attr_reader  :DATA_OFFSET
      
      const_set_lazy(:TYPE_FIELD_LENGTH) { 4 }
      const_attr_reader  :TYPE_FIELD_LENGTH
      
      const_set_lazy(:LENGTH_FIELD_LENGTH) { 4 }
      const_attr_reader  :LENGTH_FIELD_LENGTH
      
      const_set_lazy(:MIN_LENGTH) { 12 }
      const_attr_reader  :MIN_LENGTH
      
      const_set_lazy(:CHUNK_UNKNOWN) { -1 }
      const_attr_reader  :CHUNK_UNKNOWN
      
      # Critical chunks.
      const_set_lazy(:CHUNK_IHDR) { 0 }
      const_attr_reader  :CHUNK_IHDR
      
      const_set_lazy(:CHUNK_PLTE) { 1 }
      const_attr_reader  :CHUNK_PLTE
      
      const_set_lazy(:CHUNK_IDAT) { 2 }
      const_attr_reader  :CHUNK_IDAT
      
      const_set_lazy(:CHUNK_IEND) { 3 }
      const_attr_reader  :CHUNK_IEND
      
      # Non-critical chunks.
      const_set_lazy(:CHUNK_tRNS) { 5 }
      const_attr_reader  :CHUNK_tRNS
      
      const_set_lazy(:TYPE_IHDR) { Array.typed(::Java::Byte).new([Character.new(?I.ord), Character.new(?H.ord), Character.new(?D.ord), Character.new(?R.ord)]) }
      const_attr_reader  :TYPE_IHDR
      
      const_set_lazy(:TYPE_PLTE) { Array.typed(::Java::Byte).new([Character.new(?P.ord), Character.new(?L.ord), Character.new(?T.ord), Character.new(?E.ord)]) }
      const_attr_reader  :TYPE_PLTE
      
      const_set_lazy(:TYPE_IDAT) { Array.typed(::Java::Byte).new([Character.new(?I.ord), Character.new(?D.ord), Character.new(?A.ord), Character.new(?T.ord)]) }
      const_attr_reader  :TYPE_IDAT
      
      const_set_lazy(:TYPE_IEND) { Array.typed(::Java::Byte).new([Character.new(?I.ord), Character.new(?E.ord), Character.new(?N.ord), Character.new(?D.ord)]) }
      const_attr_reader  :TYPE_IEND
      
      const_set_lazy(:TYPE_tRNS) { Array.typed(::Java::Byte).new([Character.new(?t.ord), Character.new(?R.ord), Character.new(?N.ord), Character.new(?S.ord)]) }
      const_attr_reader  :TYPE_tRNS
      
      when_class_loaded do
        const_set :CRC_TABLE, Array.typed(::Java::Int).new(256) { 0 }
        i = 0
        while i < 256
          CRC_TABLE[i] = i
          j = 0
          while j < 8
            if (((CRC_TABLE[i] & 0x1)).equal?(0))
              CRC_TABLE[i] = (CRC_TABLE[i] >> 1) & 0x7fffffff
            else
              CRC_TABLE[i] = -0x12477ce0 ^ ((CRC_TABLE[i] >> 1) & 0x7fffffff)
            end
            ((j += 1) - 1)
          end
          ((i += 1) - 1)
        end
      end
    }
    
    attr_accessor :length
    alias_method :attr_length, :length
    undef_method :length
    alias_method :attr_length=, :length=
    undef_method :length=
    
    typesig { [Array.typed(::Java::Byte)] }
    # Construct a PngChunk using the reference bytes
    # given.
    def initialize(reference)
      @reference = nil
      @length = 0
      super()
      set_reference(reference)
      if (reference.attr_length < LENGTH_OFFSET + LENGTH_FIELD_LENGTH)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      @length = get_int32(LENGTH_OFFSET)
    end
    
    typesig { [::Java::Int] }
    # Construct a PngChunk with the specified number of
    # data bytes.
    def initialize(data_length)
      initialize__png_chunk(Array.typed(::Java::Byte).new(MIN_LENGTH + data_length) { 0 })
      set_length(data_length)
    end
    
    typesig { [] }
    # Get the PngChunk's reference byteArray;
    def get_reference
      return @reference
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    # Set the PngChunk's reference byteArray;
    def set_reference(reference)
      @reference = reference
    end
    
    typesig { [::Java::Int] }
    # Get the 16-bit integer from the reference byte
    # array at the given offset.
    def get_int16(offset)
      answer = 0
      answer |= (@reference[offset] & 0xff) << 8
      answer |= (@reference[offset + 1] & 0xff)
      return answer
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Set the 16-bit integer in the reference byte
    # array at the given offset.
    def set_int16(offset, value)
      @reference[offset] = ((value >> 8) & 0xff)
      @reference[offset + 1] = (value & 0xff)
    end
    
    typesig { [::Java::Int] }
    # Get the 32-bit integer from the reference byte
    # array at the given offset.
    def get_int32(offset)
      answer = 0
      answer |= (@reference[offset] & 0xff) << 24
      answer |= (@reference[offset + 1] & 0xff) << 16
      answer |= (@reference[offset + 2] & 0xff) << 8
      answer |= (@reference[offset + 3] & 0xff)
      return answer
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Set the 32-bit integer in the reference byte
    # array at the given offset.
    def set_int32(offset, value)
      @reference[offset] = ((value >> 24) & 0xff)
      @reference[offset + 1] = ((value >> 16) & 0xff)
      @reference[offset + 2] = ((value >> 8) & 0xff)
      @reference[offset + 3] = (value & 0xff)
    end
    
    typesig { [] }
    # Get the length of the data component of this chunk.
    # This is not the length of the entire chunk.
    def get_length
      return @length
    end
    
    typesig { [::Java::Int] }
    # Set the length of the data component of this chunk.
    # This is not the length of the entire chunk.
    def set_length(value)
      set_int32(LENGTH_OFFSET, value)
      @length = value
    end
    
    typesig { [] }
    # Get the chunk type. This is a four byte value.
    # Each byte should be an ASCII character.
    # The first byte is upper case if the chunk is critical.
    # The second byte is upper case if the chunk is publicly defined.
    # The third byte must be upper case.
    # The fourth byte is upper case if the chunk is unsafe to copy.
    # Public chunk types are defined by the PNG Development Group.
    def get_type_bytes
      type = Array.typed(::Java::Byte).new(4) { 0 }
      System.arraycopy(@reference, TYPE_OFFSET, type, 0, TYPE_FIELD_LENGTH)
      return type
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    # Set the chunk type. This is a four byte value.
    # Each byte should be an ASCII character.
    # The first byte is upper case if the chunk is critical.
    # The second byte is upper case if the chunk is publicly defined.
    # The third byte must be upper case.
    # The fourth byte is upper case if the chunk is unsafe to copy.
    # Public chunk types are defined by the PNG Development Group.
    def set_type(value)
      if (!(value.attr_length).equal?(TYPE_FIELD_LENGTH))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      System.arraycopy(value, 0, @reference, TYPE_OFFSET, TYPE_FIELD_LENGTH)
    end
    
    typesig { [] }
    # Get the chunk's data.
    def get_data
      data_length = get_length
      if (@reference.attr_length < MIN_LENGTH + data_length)
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      data = Array.typed(::Java::Byte).new(data_length) { 0 }
      System.arraycopy(@reference, DATA_OFFSET, data, 0, data_length)
      return data
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    # Set the chunk's data.
    # This method has two side-effects.
    # 1. It will set the length field to be the length
    # of the data array given.
    # 2. It will set the CRC field to the computed CRC
    # value of the data array given.
    def set_data(data)
      set_length(data.attr_length)
      System.arraycopy(data, 0, @reference, DATA_OFFSET, data.attr_length)
      set_crc(compute_crc)
    end
    
    typesig { [] }
    # Get the CRC value for the chunk's data.
    # Ensure that the length field has a good
    # value before making this call.
    def get_crc
      crc_offset = DATA_OFFSET + get_length
      return get_int32(crc_offset)
    end
    
    typesig { [::Java::Int] }
    # Set the CRC value for the chunk's data.
    # Ensure that the length field has a good
    # value before making this call.
    def set_crc(value)
      crc_offset = DATA_OFFSET + get_length
      set_int32(crc_offset, value)
    end
    
    typesig { [] }
    # Get the chunk's total size including the length, type, and crc fields.
    def get_size
      return MIN_LENGTH + get_length
    end
    
    typesig { [] }
    # Compute the CRC value for the chunk's data. Answer
    # whether this value matches the value stored in the
    # chunk.
    def check_crc
      crc = compute_crc
      stored_crc = get_crc
      return (crc).equal?(stored_crc)
    end
    
    typesig { [] }
    # Answer the CRC value of chunk's data.
    def compute_crc
      crc = -0x1
      start = TYPE_OFFSET
      stop = DATA_OFFSET + get_length
      i = start
      while i < stop
        index = (crc ^ @reference[i]) & 0xff
        crc = CRC_TABLE[index] ^ ((crc >> 8) & 0xffffff)
        ((i += 1) - 1)
      end
      return ~crc
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def type_matches_array(array)
      i = 0
      while i < TYPE_FIELD_LENGTH
        if (!(@reference[TYPE_OFFSET + i]).equal?(array[i]))
          return false
        end
        ((i += 1) - 1)
      end
      return true
    end
    
    typesig { [] }
    def is_critical
      c = RJava.cast_to_char(get_type_bytes[0])
      return Character.new(?A.ord) <= c && c <= Character.new(?Z.ord)
    end
    
    typesig { [] }
    def get_chunk_type
      if (type_matches_array(TYPE_IHDR))
        return CHUNK_IHDR
      end
      if (type_matches_array(TYPE_PLTE))
        return CHUNK_PLTE
      end
      if (type_matches_array(TYPE_IDAT))
        return CHUNK_IDAT
      end
      if (type_matches_array(TYPE_IEND))
        return CHUNK_IEND
      end
      if (type_matches_array(TYPE_tRNS))
        return CHUNK_tRNS
      end
      return CHUNK_UNKNOWN
    end
    
    class_module.module_eval {
      typesig { [LEDataInputStream] }
      # Read the next PNG chunk from the input stream given.
      # If unable to read a chunk, return null.
      def read_next_from_stream(stream)
        begin
          header_length = LENGTH_FIELD_LENGTH + TYPE_FIELD_LENGTH
          header_bytes = Array.typed(::Java::Byte).new(header_length) { 0 }
          result = stream.read(header_bytes, 0, header_length)
          stream.unread(header_bytes)
          if (!(result).equal?(header_length))
            return nil
          end
          temp_chunk = PngChunk.new(header_bytes)
          chunk_length = temp_chunk.get_size
          chunk = Array.typed(::Java::Byte).new(chunk_length) { 0 }
          result = stream.read(chunk, 0, chunk_length)
          if (!(result).equal?(chunk_length))
            return nil
          end
          case (temp_chunk.get_chunk_type)
          when CHUNK_IHDR
            return PngIhdrChunk.new(chunk)
          when CHUNK_PLTE
            return PngPlteChunk.new(chunk)
          when CHUNK_IDAT
            return PngIdatChunk.new(chunk)
          when CHUNK_IEND
            return PngIendChunk.new(chunk)
          when CHUNK_tRNS
            return PngTrnsChunk.new(chunk)
          else
            return PngChunk.new(chunk)
          end
        rescue IOException => e
          return nil
        end
      end
    }
    
    typesig { [PngFileReadState, PngIhdrChunk] }
    # Answer whether the chunk is a valid PNG chunk.
    def validate(read_state, header_chunk)
      if (@reference.attr_length < MIN_LENGTH)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      type = get_type_bytes
      # The third character MUST be upper case.
      c = RJava.cast_to_char(type[2])
      if (!(Character.new(?A.ord) <= c && c <= Character.new(?Z.ord)))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      # All characters must be letters.
      i = 0
      while i < TYPE_FIELD_LENGTH
        c = RJava.cast_to_char(type[i])
        if (!((Character.new(?a.ord) <= c && c <= Character.new(?z.ord)) || (Character.new(?A.ord) <= c && c <= Character.new(?Z.ord))))
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
        ((i += 1) - 1)
      end
      # The stored CRC must match the data's computed CRC.
      if (!check_crc)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
    end
    
    typesig { [StringBuffer] }
    # Provided so that subclasses can override and add
    # data to the toString() call.
    def contribute_to_string(buffer)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the event
    def to_s
      buffer = StringBuffer.new
      buffer.append("{")
      buffer.append("\n\tLength: ")
      buffer.append(get_length)
      buffer.append("\n\tType: ")
      type = get_type_bytes
      i = 0
      while i < type.attr_length
        buffer.append(RJava.cast_to_char(type[i]))
        ((i += 1) - 1)
      end
      contribute_to_string(buffer)
      buffer.append("\n\tCRC: ")
      buffer.append(JavaInteger.to_hex_string(get_crc))
      buffer.append("\n}")
      return buffer.to_s
    end
    
    private
    alias_method :initialize__png_chunk, :initialize
  end
  
end
