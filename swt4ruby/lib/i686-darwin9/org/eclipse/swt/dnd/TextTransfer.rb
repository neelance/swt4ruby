require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Dnd
  module TextTransferImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CFRange
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
    }
  end
  
  # The class <code>TextTransfer</code> provides a platform specific mechanism
  # for converting plain text represented as a java <code>String</code>
  # to a platform specific representation of the data and vice versa.
  # 
  # <p>An example of a java <code>String</code> containing plain text is shown
  # below:</p>
  # 
  # <code><pre>
  # String textData = "Hello World";
  # </code></pre>
  # 
  # @see Transfer
  class TextTransfer < TextTransferImports.const_get :ByteArrayTransfer
    include_class_members TextTransferImports
    
    class_module.module_eval {
      
      def _instance
        defined?(@@_instance) ? @@_instance : @@_instance= TextTransfer.new
      end
      alias_method :attr__instance, :_instance
      
      def _instance=(value)
        @@_instance = value
      end
      alias_method :attr__instance=, :_instance=
      
      const_set_lazy(:TEXT) { "TEXT" }
      const_attr_reader  :TEXT
      
      # $NON-NLS-1$
      const_set_lazy(:UTEXT) { "utxt" }
      const_attr_reader  :UTEXT
      
      # $NON-NLS-1$
      const_set_lazy(:UTF8) { "utf8" }
      const_attr_reader  :UTF8
      
      # $NON-NLS-1$
      const_set_lazy(:TEXTID) { OS.attr_k_scrap_flavor_type_text }
      const_attr_reader  :TEXTID
      
      const_set_lazy(:UTEXTID) { OS.attr_k_scrap_flavor_type_unicode }
      const_attr_reader  :UTEXTID
      
      const_set_lazy(:UTF8ID) { (Character.new(?u.ord) << 24) + (Character.new(?t.ord) << 16) + (Character.new(?f.ord) << 8) + Character.new(?8.ord) }
      const_attr_reader  :UTF8ID
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    class_module.module_eval {
      typesig { [] }
      # Returns the singleton instance of the TextTransfer class.
      # 
      # @return the singleton instance of the TextTransfer class
      def get_instance
        return self.attr__instance
      end
    }
    
    typesig { [Object, TransferData] }
    # This implementation of <code>javaToNative</code> converts plain text
    # represented by a java <code>String</code> to a platform specific representation.
    # 
    # @param object a java <code>String</code> containing text
    # @param transferData an empty <code>TransferData</code> object that will
    # be filled in on return with the platform specific format of the data
    # 
    # @see Transfer#nativeToJava
    def java_to_native(object, transfer_data)
      if (!check_text(object) || !is_supported_type(transfer_data))
        DND.error(DND::ERROR_INVALID_DATA)
      end
      string = object
      chars = CharArray.new(string.length)
      string.get_chars(0, chars.attr_length, chars, 0)
      transfer_data.attr_result = -1
      case (transfer_data.attr_type)
      when UTF8ID, TEXTID
        cfstring = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, chars, chars.attr_length)
        if ((cfstring).equal?(0))
          return
        end
        buffer = nil
        begin
          range = CFRange.new
          range.attr_length = chars.attr_length
          encoding = (transfer_data.attr_type).equal?(UTF8ID) ? OS.attr_k_cfstring_encoding_utf8 : OS._cfstring_get_system_encoding
          size = Array.typed(::Java::Int).new(1) { 0 }
          num_chars = OS._cfstring_get_bytes(cfstring, range, encoding, Character.new(??.ord), true, nil, 0, size)
          if ((num_chars).equal?(0))
            return
          end
          buffer = Array.typed(::Java::Byte).new(size[0]) { 0 }
          num_chars = OS._cfstring_get_bytes(cfstring, range, encoding, Character.new(??.ord), true, buffer, size[0], size)
          if ((num_chars).equal?(0))
            return
          end
        ensure
          OS._cfrelease(cfstring)
        end
        transfer_data.attr_data = Array.typed(::Java::Byte).new(1) { 0 }
        transfer_data.attr_data[0] = buffer
        transfer_data.attr_result = OS.attr_no_err
      when UTEXTID
        buffer = Array.typed(::Java::Byte).new(chars.attr_length * 2) { 0 }
        OS.memmove(buffer, chars, buffer.attr_length)
        transfer_data.attr_data = Array.typed(::Java::Byte).new(1) { 0 }
        transfer_data.attr_data[0] = buffer
        transfer_data.attr_result = OS.attr_no_err
      end
    end
    
    typesig { [TransferData] }
    # This implementation of <code>nativeToJava</code> converts a platform specific
    # representation of plain text to a java <code>String</code>.
    # 
    # @param transferData the platform specific representation of the data to be converted
    # @return a java <code>String</code> containing text if the conversion was successful; otherwise null
    # 
    # @see Transfer#javaToNative
    def native_to_java(transfer_data)
      if (!is_supported_type(transfer_data) || (transfer_data.attr_data).nil?)
        return nil
      end
      if ((transfer_data.attr_data.attr_length).equal?(0) || (transfer_data.attr_data[0].attr_length).equal?(0))
        return nil
      end
      buffer = transfer_data.attr_data[0]
      case (transfer_data.attr_type)
      when UTF8ID, TEXTID
        encoding = (transfer_data.attr_type).equal?(UTF8ID) ? OS.attr_k_cfstring_encoding_utf8 : OS._cfstring_get_system_encoding
        cfstring = OS._cfstring_create_with_bytes(OS.attr_k_cfallocator_default, buffer, buffer.attr_length, encoding, true)
        if ((cfstring).equal?(0))
          return nil
        end
        begin
          length_ = OS._cfstring_get_length(cfstring)
          if ((length_).equal?(0))
            return nil
          end
          chars = CharArray.new(length_)
          range = CFRange.new
          range.attr_length = length_
          OS._cfstring_get_characters(cfstring, range, chars)
          return String.new(chars)
        ensure
          OS._cfrelease(cfstring)
        end
        chars = CharArray.new((buffer.attr_length + 1) / 2)
        OS.memmove(chars, buffer, buffer.attr_length)
        return String.new(chars)
      when UTEXTID
        chars = CharArray.new((buffer.attr_length + 1) / 2)
        OS.memmove(chars, buffer, buffer.attr_length)
        return String.new(chars)
      end
      return nil
    end
    
    typesig { [] }
    def get_type_ids
      return Array.typed(::Java::Int).new([UTEXTID, UTF8ID, TEXTID])
    end
    
    typesig { [] }
    def get_type_names
      return Array.typed(String).new([UTEXT, UTF8, TEXT])
    end
    
    typesig { [Object] }
    def check_text(object)
      return (!(object).nil? && object.is_a?(String) && (object).length > 0)
    end
    
    typesig { [Object] }
    def validate(object)
      return check_text(object)
    end
    
    private
    alias_method :initialize__text_transfer, :initialize
  end
  
end
