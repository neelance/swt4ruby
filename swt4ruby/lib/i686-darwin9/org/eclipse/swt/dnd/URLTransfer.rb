require "rjava"

# * Copyright (c) 20007 IBM Corporation and others. * All rights reserved. This program and the accompanying materials * are made available under the terms of the Eclipse Public License v1.0 * which accompanies this distribution, and is available at * http://www.eclipse.org/legal/epl-v10.html * * Contributors: *     IBM Corporation - initial API and implementation ******************************************************************************
module Org::Eclipse::Swt::Dnd
  module URLTransferImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  # The class <code>URLTransfer</code> provides a platform specific mechanism
  # for converting text in URL format represented as a java <code>String</code>
  # to a platform specific representation of the data and vice versa. The string
  # must contain a fully specified url.
  # 
  # <p>An example of a java <code>String</code> containing a URL is shown below:</p>
  # 
  # <code><pre>
  # String url = "http://www.eclipse.org";
  # </code></pre>
  # 
  # @see Transfer
  class URLTransfer < URLTransferImports.const_get :ByteArrayTransfer
    include_class_members URLTransferImports
    
    class_module.module_eval {
      
      def _instance
        defined?(@@_instance) ? @@_instance : @@_instance= URLTransfer.new
      end
      alias_method :attr__instance, :_instance
      
      def _instance=(value)
        @@_instance = value
      end
      alias_method :attr__instance=, :_instance=
      
      const_set_lazy(:URL) { "url " }
      const_attr_reader  :URL
      
      const_set_lazy(:URL_ID) { register_type(URL) }
      const_attr_reader  :URL_ID
      
      const_set_lazy(:URLN) { "urln" }
      const_attr_reader  :URLN
      
      const_set_lazy(:URLN_ID) { register_type(URLN) }
      const_attr_reader  :URLN_ID
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    class_module.module_eval {
      typesig { [] }
      # Returns the singleton instance of the URLTransfer class.
      # 
      # @return the singleton instance of the URLTransfer class
      def get_instance
        return self.attr__instance
      end
    }
    
    typesig { [Object, TransferData] }
    # This implementation of <code>javaToNative</code> converts a URL
    # represented by a java <code>String</code> to a platform specific representation.
    # 
    # @param object a java <code>String</code> containing a URL
    # @param transferData an empty <code>TransferData</code> object that will
    # be filled in on return with the platform specific format of the data
    # 
    # @see Transfer#nativeToJava
    def java_to_native(object, transfer_data)
      if (!check_url(object) || !is_supported_type(transfer_data))
        DND.error(DND::ERROR_INVALID_DATA)
      end
      transfer_data.attr_result = -1
      url = object
      count = url.length
      chars = CharArray.new(count)
      url.get_chars(0, count, chars, 0)
      cfstring = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, chars, count)
      if ((cfstring).equal?(0))
        return
      end
      begin
        range = CFRange.new
        range.attr_length = chars.attr_length
        encoding = OS.attr_k_cfstring_encoding_utf8
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
        transfer_data.attr_data = Array.typed(Array.typed(::Java::Byte)).new([buffer])
        transfer_data.attr_result = 0
      ensure
        OS._cfrelease(cfstring)
      end
    end
    
    typesig { [TransferData] }
    # This implementation of <code>nativeToJava</code> converts a platform
    # specific representation of a URL to a java <code>String</code>.
    # 
    # @param transferData the platform specific representation of the data to be converted
    # @return a java <code>String</code> containing a URL if the conversion was successful;
    # otherwise null
    # 
    # @see Transfer#javaToNative
    def native_to_java(transfer_data)
      if (!is_supported_type(transfer_data) || (transfer_data.attr_data).nil?)
        return nil
      end
      if ((transfer_data.attr_data.attr_length).equal?(0))
        return nil
      end
      buffer = transfer_data.attr_data[0]
      encoding = OS.attr_k_cfstring_encoding_utf8
      cfstring = OS._cfstring_create_with_bytes(OS.attr_k_cfallocator_default, buffer, buffer.attr_length, encoding, true)
      if ((cfstring).equal?(0))
        return nil
      end
      unescaped_chars = Array.typed(::Java::Char).new([Character.new(?%.ord)])
      unescaped_str = OS._cfstring_create_with_characters(0, unescaped_chars, unescaped_chars.attr_length)
      str = OS._cfurlcreate_string_by_replacing_percent_escapes(OS.attr_k_cfallocator_default, cfstring, unescaped_str)
      OS._cfrelease(unescaped_str)
      OS._cfrelease(cfstring)
      if ((str).equal?(0))
        return nil
      end
      begin
        length_ = OS._cfstring_get_length(str)
        if ((length_).equal?(0))
          return nil
        end
        chars = CharArray.new(length_)
        range = CFRange.new
        range.attr_length = length_
        OS._cfstring_get_characters(str, range, chars)
        return String.new(chars)
      ensure
        OS._cfrelease(str)
      end
    end
    
    typesig { [] }
    def get_type_ids
      return Array.typed(::Java::Int).new([URL_ID, URLN_ID])
    end
    
    typesig { [] }
    def get_type_names
      return Array.typed(String).new([URL, URLN])
    end
    
    typesig { [Object] }
    def check_url(object)
      return !(object).nil? && (object.is_a?(String)) && (object).length > 0
    end
    
    typesig { [Object] }
    def validate(object)
      return check_url(object)
    end
    
    private
    alias_method :initialize__urltransfer, :initialize
  end
  
end
