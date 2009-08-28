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
  module JPEGSegmentImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
    }
  end
  
  class JPEGSegment 
    include_class_members JPEGSegmentImports
    
    attr_accessor :reference
    alias_method :attr_reference, :reference
    undef_method :reference
    alias_method :attr_reference=, :reference=
    undef_method :reference=
    
    typesig { [] }
    def initialize
      @reference = nil
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def initialize(reference)
      @reference = nil
      @reference = reference
    end
    
    typesig { [] }
    def signature
      return 0
    end
    
    typesig { [] }
    def verify
      return (get_segment_marker).equal?(signature)
    end
    
    typesig { [] }
    def get_segment_marker
      return ((@reference[0] & 0xff) << 8 | (@reference[1] & 0xff))
    end
    
    typesig { [::Java::Int] }
    def set_segment_marker(marker)
      @reference[0] = ((marker & 0xff00) >> 8)
      @reference[1] = (marker & 0xff)
    end
    
    typesig { [] }
    def get_segment_length
      return ((@reference[2] & 0xff) << 8 | (@reference[3] & 0xff))
    end
    
    typesig { [::Java::Int] }
    def set_segment_length(length)
      @reference[2] = ((length & 0xff00) >> 8)
      @reference[3] = (length & 0xff)
    end
    
    typesig { [LEDataOutputStream] }
    def write_to_stream(byte_stream)
      begin
        byte_stream.write(@reference)
        return true
      rescue JavaException => e
        return false
      end
    end
    
    private
    alias_method :initialize__jpegsegment, :initialize
  end
  
end
