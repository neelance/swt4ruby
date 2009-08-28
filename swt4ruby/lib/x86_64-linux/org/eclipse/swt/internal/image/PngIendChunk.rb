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
  module PngIendChunkImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
    }
  end
  
  class PngIendChunk < PngIendChunkImports.const_get :PngChunk
    include_class_members PngIendChunkImports
    
    typesig { [] }
    def initialize
      super(0)
      set_type(TYPE_IEND)
      set_crc(compute_crc)
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def initialize(reference)
      super(reference)
    end
    
    typesig { [] }
    def get_chunk_type
      return CHUNK_IEND
    end
    
    typesig { [PngFileReadState, PngIhdrChunk] }
    # Answer whether the chunk is a valid IEND chunk.
    def validate(read_state, header_chunk)
      # An IEND chunk is invalid if no IHDR has been read.
      # Or if a palette is required and has not been read.
      # Or if no IDAT chunk has been read.
      if (!read_state.attr_read_ihdr || (header_chunk.get_must_have_palette && !read_state.attr_read_plte) || !read_state.attr_read_idat || read_state.attr_read_iend)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      else
        read_state.attr_read_iend = true
      end
      super(read_state, header_chunk)
      # IEND chunks are not allowed to have any data.
      if (get_length > 0)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
    end
    
    private
    alias_method :initialize__png_iend_chunk, :initialize
  end
  
end
