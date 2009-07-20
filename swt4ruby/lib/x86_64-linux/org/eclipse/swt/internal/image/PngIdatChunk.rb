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
  module PngIdatChunkImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
    }
  end
  
  class PngIdatChunk < PngIdatChunkImports.const_get :PngChunk
    include_class_members PngIdatChunkImports
    
    class_module.module_eval {
      const_set_lazy(:HEADER_BYTES_LENGTH) { 2 }
      const_attr_reader  :HEADER_BYTES_LENGTH
      
      const_set_lazy(:ADLER_FIELD_LENGTH) { 4 }
      const_attr_reader  :ADLER_FIELD_LENGTH
      
      const_set_lazy(:HEADER_BYTE1_DATA_OFFSET) { DATA_OFFSET + 0 }
      const_attr_reader  :HEADER_BYTE1_DATA_OFFSET
      
      const_set_lazy(:HEADER_BYTE2_DATA_OFFSET) { DATA_OFFSET + 1 }
      const_attr_reader  :HEADER_BYTE2_DATA_OFFSET
      
      const_set_lazy(:ADLER_DATA_OFFSET) { DATA_OFFSET + 2 }
      const_attr_reader  :ADLER_DATA_OFFSET
    }
    
    typesig { [::Java::Byte, ::Java::Byte, Array.typed(::Java::Byte), ::Java::Int] }
    # plus variable compressed data length
    def initialize(header_byte1, header_byte2, data, adler)
      super(data.attr_length + HEADER_BYTES_LENGTH + ADLER_FIELD_LENGTH)
      set_type(TYPE_IDAT)
      self.attr_reference[HEADER_BYTE1_DATA_OFFSET] = header_byte1
      self.attr_reference[HEADER_BYTE2_DATA_OFFSET] = header_byte2
      System.arraycopy(data, 0, self.attr_reference, DATA_OFFSET, data.attr_length)
      set_int32(ADLER_DATA_OFFSET, adler)
      set_crc(compute_crc)
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def initialize(reference)
      super(reference)
    end
    
    typesig { [] }
    def get_chunk_type
      return CHUNK_IDAT
    end
    
    typesig { [PngFileReadState, PngIhdrChunk] }
    # Answer whether the chunk is a valid IDAT chunk.
    def validate(read_state, header_chunk)
      if (!read_state.attr_read_ihdr || (header_chunk.get_must_have_palette && !read_state.attr_read_plte) || read_state.attr_read_iend)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      else
        read_state.attr_read_idat = true
      end
      super(read_state, header_chunk)
    end
    
    typesig { [::Java::Int] }
    def get_data_byte_at_offset(offset)
      return self.attr_reference[DATA_OFFSET + offset]
    end
    
    private
    alias_method :initialize__png_idat_chunk, :initialize
  end
  
end
