require "rjava"

# Copyright (c) 2007, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Dnd
  module URLTransferImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt::Internal::Gtk
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
  # @since 3.4
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
      
      const_set_lazy(:TEXT_UNICODE) { "text/unicode" }
      const_attr_reader  :TEXT_UNICODE
      
      # $NON-NLS-1$
      const_set_lazy(:TEXT_XMOZURL) { "text/x-moz-url" }
      const_attr_reader  :TEXT_XMOZURL
      
      # $NON-NLS-1$
      const_set_lazy(:TEXT_UNICODE_ID) { register_type(TEXT_UNICODE) }
      const_attr_reader  :TEXT_UNICODE_ID
      
      const_set_lazy(:TEXT_XMOZURL_ID) { register_type(TEXT_XMOZURL) }
      const_attr_reader  :TEXT_XMOZURL_ID
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
      transfer_data.attr_result = 0
      if (!check_url(object) || !is_supported_type(transfer_data))
        DND.error(DND::ERROR_INVALID_DATA)
      end
      string = object
      char_count = string.length
      chars = CharArray.new(char_count + 1)
      string.get_chars(0, char_count, chars, 0)
      byte_count = chars.attr_length * 2
      # int
      p_value = OS.g_malloc(byte_count)
      if ((p_value).equal?(0))
        return
      end
      OS.memmove(p_value, chars, byte_count)
      transfer_data.attr_length = byte_count
      transfer_data.attr_format = 8
      transfer_data.attr_p_value = p_value
      transfer_data.attr_result = 1
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
      if (!is_supported_type(transfer_data) || (transfer_data.attr_p_value).equal?(0))
        return nil
      end
      # Ensure byteCount is a multiple of 2 bytes
      size = (transfer_data.attr_format * transfer_data.attr_length / 8) / 2 * 2
      if (size <= 0)
        return nil
      end
      chars = CharArray.new(size / 2)
      OS.memmove(chars, transfer_data.attr_p_value, size)
      string = String.new(chars)
      end_ = string.index_of(Character.new(?\0.ord))
      return ((end_).equal?(-1)) ? string : string.substring(0, end_)
    end
    
    typesig { [] }
    def get_type_ids
      return Array.typed(::Java::Int).new([TEXT_XMOZURL_ID, TEXT_UNICODE_ID])
    end
    
    typesig { [] }
    def get_type_names
      return Array.typed(String).new([TEXT_XMOZURL, TEXT_UNICODE])
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
