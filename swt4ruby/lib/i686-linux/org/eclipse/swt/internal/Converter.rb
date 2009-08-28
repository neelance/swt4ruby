require "rjava"

# Copyright (c) 2000, 2004 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal
  module ConverterImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal
      include_const ::Org::Eclipse::Swt::Internal::Gtk, :OS
    }
  end
  
  # This class implements the conversions between unicode characters
  # and the <em>platform supported</em> representation for characters.
  # <p>
  # Note that, unicode characters which can not be found in the platform
  # encoding will be converted to an arbitrary platform specific character.
  # </p>
  class Converter 
    include_class_members ConverterImports
    
    class_module.module_eval {
      const_set_lazy(:NullByteArray) { Array.typed(::Java::Byte).new(1) { 0 } }
      const_attr_reader  :NullByteArray
      
      const_set_lazy(:EmptyByteArray) { Array.typed(::Java::Byte).new(0) { 0 } }
      const_attr_reader  :EmptyByteArray
      
      const_set_lazy(:EmptyCharArray) { CharArray.new(0) }
      const_attr_reader  :EmptyCharArray
      
      typesig { [] }
      # Returns the default code page for the platform where the
      # application is currently running.
      # 
      # @return the default code page
      def default_code_page
        return "UTF8"
      end
      
      typesig { [String, Array.typed(::Java::Byte)] }
      def mbcs_to_wcs(code_page, buffer)
        # long
        # long
        items_written = Array.typed(::Java::Int).new(1) { 0 }
        # long
        ptr = OS.g_utf8_to_utf16(buffer, buffer.attr_length, nil, items_written, nil)
        if ((ptr).equal?(0))
          return EmptyCharArray
        end
        # 64
        length = RJava.cast_to_int(items_written[0])
        chars = CharArray.new(length)
        OS.memmove(chars, ptr, length * 2)
        OS.g_free(ptr)
        return chars
      end
      
      typesig { [String, String, ::Java::Boolean] }
      def wcs_to_mbcs(code_page, string, terminate)
        length_ = string.length
        buffer = CharArray.new(length_)
        string.get_chars(0, length_, buffer, 0)
        return wcs_to_mbcs(code_page, buffer, terminate)
      end
      
      typesig { [String, Array.typed(::Java::Char), ::Java::Boolean] }
      def wcs_to_mbcs(code_page, buffer, terminate)
        # long
        # long
        items_read = Array.typed(::Java::Int).new(1) { 0 }
        # long
        items_written = Array.typed(::Java::Int).new(1) { 0 }
        # Note that g_utf16_to_utf8()  stops converting
        # when it finds the first NULL.
        # 
        # long
        ptr = OS.g_utf16_to_utf8(buffer, buffer.attr_length, items_read, items_written, nil)
        if ((ptr).equal?(0))
          return terminate ? NullByteArray : EmptyByteArray
        end
        # 64
        written = RJava.cast_to_int(items_written[0])
        bytes = Array.typed(::Java::Byte).new(written + (terminate ? 1 : 0)) { 0 }
        OS.memmove(bytes, ptr, written)
        OS.g_free(ptr)
        return bytes
      end
    }
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__converter, :initialize
  end
  
end
