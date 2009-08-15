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
  module JPEGFixedSizeSegmentImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
    }
  end
  
  class JPEGFixedSizeSegment < JPEGFixedSizeSegmentImports.const_get :JPEGSegment
    include_class_members JPEGFixedSizeSegmentImports
    
    typesig { [] }
    def initialize
      super()
      self.attr_reference = Array.typed(::Java::Byte).new(fixed_size) { 0 }
      set_segment_marker(signature)
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def initialize(reference)
      super(reference)
    end
    
    typesig { [LEDataInputStream] }
    def initialize(byte_stream)
      super()
      self.attr_reference = Array.typed(::Java::Byte).new(fixed_size) { 0 }
      begin
        byte_stream.read(self.attr_reference)
      rescue JavaException => e
        SWT.error(SWT::ERROR_IO, e)
      end
    end
    
    typesig { [] }
    def fixed_size
      raise NotImplementedError
    end
    
    typesig { [] }
    def get_segment_length
      return fixed_size - 2
    end
    
    typesig { [::Java::Int] }
    def set_segment_length(length)
    end
    
    private
    alias_method :initialize__jpegfixed_size_segment, :initialize
  end
  
end
