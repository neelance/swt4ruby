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
  module JPEGVariableSizeSegmentImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
    }
  end
  
  class JPEGVariableSizeSegment < JPEGVariableSizeSegmentImports.const_get :JPEGSegment
    include_class_members JPEGVariableSizeSegmentImports
    
    typesig { [Array.typed(::Java::Byte)] }
    def initialize(reference)
      super(reference)
    end
    
    typesig { [LEDataInputStream] }
    def initialize(byte_stream)
      super()
      begin
        header = Array.typed(::Java::Byte).new(4) { 0 }
        byte_stream.read(header)
        self.attr_reference = header # to use getSegmentLength()
        contents = Array.typed(::Java::Byte).new(get_segment_length + 2) { 0 }
        contents[0] = header[0]
        contents[1] = header[1]
        contents[2] = header[2]
        contents[3] = header[3]
        byte_stream.read(contents, 4, contents.attr_length - 4)
        self.attr_reference = contents
      rescue JavaException => e
        SWT.error(SWT::ERROR_IO, e)
      end
    end
    
    private
    alias_method :initialize__jpegvariable_size_segment, :initialize
  end
  
end
