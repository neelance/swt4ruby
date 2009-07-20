require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Image
  module LEDataOutputStreamImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Java::Io
    }
  end
  
  class LEDataOutputStream < LEDataOutputStreamImports.const_get :OutputStream
    include_class_members LEDataOutputStreamImports
    
    attr_accessor :out
    alias_method :attr_out, :out
    undef_method :out
    alias_method :attr_out=, :out=
    undef_method :out=
    
    typesig { [OutputStream] }
    def initialize(output)
      @out = nil
      super()
      @out = output
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
    # Write the specified number of bytes of the given byte array,
    # starting at the specified offset, to the output stream.
    def write(b, off, len)
      @out.write(b, off, len)
    end
    
    typesig { [::Java::Int] }
    # Write the given byte to the output stream.
    def write(b)
      @out.write(b)
    end
    
    typesig { [::Java::Byte] }
    # Write the given byte to the output stream.
    def write_byte(b)
      @out.write(b & 0xff)
    end
    
    typesig { [::Java::Int] }
    # Write the four bytes of the given integer
    # to the output stream.
    def write_int(the_int)
      @out.write(the_int & 0xff)
      @out.write((the_int >> 8) & 0xff)
      @out.write((the_int >> 16) & 0xff)
      @out.write((the_int >> 24) & 0xff)
    end
    
    typesig { [::Java::Int] }
    # Write the two bytes of the given short
    # to the output stream.
    def write_short(the_short)
      @out.write(the_short & 0xff)
      @out.write((the_short >> 8) & 0xff)
    end
    
    private
    alias_method :initialize__ledata_output_stream, :initialize
  end
  
end
