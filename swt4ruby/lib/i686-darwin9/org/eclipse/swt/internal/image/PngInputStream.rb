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
  module PngInputStreamImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Java::Io
    }
  end
  
  class PngInputStream < PngInputStreamImports.const_get :InputStream
    include_class_members PngInputStreamImports
    
    attr_accessor :reader
    alias_method :attr_reader, :reader
    undef_method :reader
    alias_method :attr_reader=, :reader=
    undef_method :reader=
    
    attr_accessor :chunk
    alias_method :attr_chunk, :chunk
    undef_method :chunk
    alias_method :attr_chunk=, :chunk=
    undef_method :chunk=
    
    attr_accessor :offset
    alias_method :attr_offset, :offset
    undef_method :offset
    alias_method :attr_offset=, :offset=
    undef_method :offset=
    
    attr_accessor :length
    alias_method :attr_length, :length
    undef_method :length
    alias_method :attr_length=, :length=
    undef_method :length=
    
    class_module.module_eval {
      const_set_lazy(:DATA_OFFSET) { 8 }
      const_attr_reader  :DATA_OFFSET
    }
    
    typesig { [PngIdatChunk, PngChunkReader] }
    def initialize(chunk, reader)
      @reader = nil
      @chunk = nil
      @offset = 0
      @length = 0
      super()
      @chunk = chunk
      @reader = reader
      @length = chunk.get_length
      @offset = 0
    end
    
    typesig { [] }
    def check_chunk
      while ((@offset).equal?(@length))
        @chunk = @reader.read_next_chunk
        if ((@chunk).nil?)
          raise IOException.new
        end
        if ((@chunk.get_chunk_type).equal?(PngChunk::CHUNK_IEND))
          return false
        end
        if (!(@chunk.get_chunk_type).equal?(PngChunk::CHUNK_IDAT))
          raise IOException.new
        end
        @length = @chunk.get_length
        @offset = 0
      end
      return true
    end
    
    typesig { [] }
    def close
      @chunk = nil
    end
    
    typesig { [] }
    def read
      if ((@chunk).nil?)
        raise IOException.new
      end
      if ((@offset).equal?(@length) && !check_chunk)
        return -1
      end
      b = @chunk.attr_reference[DATA_OFFSET + @offset] & 0xff
      ((@offset += 1) - 1)
      return b
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
    def read(b, off, len)
      if ((@chunk).nil?)
        raise IOException.new
      end
      if ((@offset).equal?(@length) && !check_chunk)
        return -1
      end
      len = Math.min(len, @length - @offset)
      System.arraycopy(@chunk.attr_reference, DATA_OFFSET + @offset, b, off, len)
      @offset += len
      return len
    end
    
    private
    alias_method :initialize__png_input_stream, :initialize
  end
  
end
