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
  module HTMLTransferImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  # The class <code>HTMLTransfer</code> provides a platform specific mechanism
  # for converting text in HTML format represented as a java <code>String</code>
  # to a platform specific representation of the data and vice versa.
  # 
  # <p>An example of a java <code>String</code> containing HTML text is shown
  # below:</p>
  # 
  # <code><pre>
  # String htmlData = "<p>This is a paragraph of text.</p>";
  # </code></pre>
  # 
  # @see Transfer
  class HTMLTransfer < HTMLTransferImports.const_get :ByteArrayTransfer
    include_class_members HTMLTransferImports
    
    class_module.module_eval {
      
      def __instance
        defined?(@@_instance) ? @@_instance : @@_instance= HTMLTransfer.new
      end
      alias_method :attr__instance, :__instance
      
      def __instance=(value)
        @@_instance = value
      end
      alias_method :attr__instance=, :__instance=
      
      const_set_lazy(:TEXT_HTML) { "text/html" }
      const_attr_reader  :TEXT_HTML
      
      # $NON-NLS-1$
      const_set_lazy(:TEXT_HTML_ID) { register_type(TEXT_HTML) }
      const_attr_reader  :TEXT_HTML_ID
      
      const_set_lazy(:TEXT_HTML2) { "TEXT/HTML" }
      const_attr_reader  :TEXT_HTML2
      
      # $NON-NLS-1$
      const_set_lazy(:TEXT_HTML2_ID) { register_type(TEXT_HTML2) }
      const_attr_reader  :TEXT_HTML2_ID
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    class_module.module_eval {
      typesig { [] }
      # Returns the singleton instance of the HTMLTransfer class.
      # 
      # @return the singleton instance of the HTMLTransfer class
      def get_instance
        return self.attr__instance
      end
    }
    
    typesig { [Object, TransferData] }
    # This implementation of <code>javaToNative</code> converts HTML-formatted text
    # represented by a java <code>String</code> to a platform specific representation.
    # 
    # @param object a java <code>String</code> containing HTML text
    # @param transferData an empty <code>TransferData</code> object that will
    # be filled in on return with the platform specific format of the data
    # 
    # @see Transfer#nativeToJava
    def java_to_native(object, transfer_data)
      transfer_data.attr_result = 0
      if (!check_html(object) || !is_supported_type(transfer_data))
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
      OS.memmove___org_eclipse_swt_dnd_htmltransfer_1(p_value, chars, byte_count)
      transfer_data.attr_length = byte_count
      transfer_data.attr_format = 8
      transfer_data.attr_p_value = p_value
      transfer_data.attr_result = 1
    end
    
    typesig { [TransferData] }
    # This implementation of <code>nativeToJava</code> converts a platform specific
    # representation of HTML text to a java <code>String</code>.
    # 
    # @param transferData the platform specific representation of the data to be converted
    # @return a java <code>String</code> containing HTML text if the conversion was successful;
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
      OS.memmove___org_eclipse_swt_dnd_htmltransfer_3(chars, transfer_data.attr_p_value, size)
      string = String.new(chars)
      end_ = string.index_of(Character.new(?\0.ord))
      return ((end_).equal?(-1)) ? string : string.substring(0, end_)
    end
    
    typesig { [] }
    def get_type_ids
      return Array.typed(::Java::Int).new([TEXT_HTML_ID, TEXT_HTML2_ID])
    end
    
    typesig { [] }
    def get_type_names
      return Array.typed(String).new([TEXT_HTML, TEXT_HTML2])
    end
    
    typesig { [Object] }
    def check_html(object)
      return (!(object).nil? && object.is_a?(String) && (object).length > 0)
    end
    
    typesig { [Object] }
    def validate(object)
      return check_html(object)
    end
    
    private
    alias_method :initialize__htmltransfer, :initialize
  end
  
end
