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
  module RTFTransferImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CFRange
    }
  end
  
  # The class <code>RTFTransfer</code> provides a platform specific mechanism
  # for converting text in RTF format represented as a java <code>String</code>
  # to a platform specific representation of the data and vice versa.
  # 
  # <p>An example of a java <code>String</code> containing RTF text is shown
  # below:</p>
  # 
  # <code><pre>
  # String rtfData = "{\\rtf1{\\colortbl;\\red255\\green0\\blue0;}\\uc1\\b\\i Hello World}";
  # </code></pre>
  # 
  # @see Transfer
  class RTFTransfer < RTFTransferImports.const_get :ByteArrayTransfer
    include_class_members RTFTransferImports
    
    class_module.module_eval {
      
      def _instance
        defined?(@@_instance) ? @@_instance : @@_instance= RTFTransfer.new
      end
      alias_method :attr__instance, :_instance
      
      def _instance=(value)
        @@_instance = value
      end
      alias_method :attr__instance=, :_instance=
      
      const_set_lazy(:RTF) { "RTF " }
      const_attr_reader  :RTF
      
      # $NON-NLS-1$
      const_set_lazy(:RTFID) { register_type(RTF) }
      const_attr_reader  :RTFID
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    class_module.module_eval {
      typesig { [] }
      # Returns the singleton instance of the RTFTransfer class.
      # 
      # @return the singleton instance of the RTFTransfer class
      def get_instance
        return self.attr__instance
      end
    }
    
    typesig { [Object, TransferData] }
    # This implementation of <code>javaToNative</code> converts RTF-formatted text
    # represented by a java <code>String</code> to a platform specific representation.
    # 
    # @param object a java <code>String</code> containing RTF text
    # @param transferData an empty <code>TransferData</code> object that will
    # be filled in on return with the platform specific format of the data
    # 
    # @see Transfer#nativeToJava
    def java_to_native(object, transfer_data)
      if (!check_rtf(object) || !is_supported_type(transfer_data))
        DND.error(DND::ERROR_INVALID_DATA)
      end
      transfer_data.attr_result = -1
      string = object
      count = string.length
      chars = CharArray.new(count)
      string.get_chars(0, count, chars, 0)
      cfstring = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, chars, count)
      if ((cfstring).equal?(0))
        return
      end
      begin
        range = CFRange.new
        range.attr_length = chars.attr_length
        encoding = OS._cfstring_get_system_encoding
        size = Array.typed(::Java::Int).new(1) { 0 }
        num_chars = OS._cfstring_get_bytes(cfstring, range, encoding, Character.new(??.ord), true, nil, 0, size)
        if ((num_chars).equal?(0) || (size[0]).equal?(0))
          return
        end
        buffer = Array.typed(::Java::Byte).new(size[0]) { 0 }
        num_chars = OS._cfstring_get_bytes(cfstring, range, encoding, Character.new(??.ord), true, buffer, size[0], size)
        if ((num_chars).equal?(0))
          return
        end
        transfer_data.attr_data = Array.typed(Array.typed(::Java::Byte)).new(1) { nil }
        transfer_data.attr_data[0] = buffer
        transfer_data.attr_result = 0
      ensure
        OS._cfrelease(cfstring)
      end
    end
    
    typesig { [TransferData] }
    # This implementation of <code>nativeToJava</code> converts a platform specific
    # representation of RTF text to a java <code>String</code>.
    # 
    # @param transferData the platform specific representation of the data to be converted
    # @return a java <code>String</code> containing RTF text if the conversion was successful;
    # otherwise null
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
      encoding = OS._cfstring_get_system_encoding
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
    end
    
    typesig { [] }
    def get_type_ids
      return Array.typed(::Java::Int).new([RTFID])
    end
    
    typesig { [] }
    def get_type_names
      return Array.typed(String).new([RTF])
    end
    
    typesig { [Object] }
    def check_rtf(object)
      return (!(object).nil? && object.is_a?(String) && (object).length > 0)
    end
    
    typesig { [Object] }
    def validate(object)
      return check_rtf(object)
    end
    
    private
    alias_method :initialize__rtftransfer, :initialize
  end
  
end
