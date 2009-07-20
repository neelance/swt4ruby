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
  module HTMLTransferImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
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
      
      def _instance
        defined?(@@_instance) ? @@_instance : @@_instance= HTMLTransfer.new
      end
      alias_method :attr__instance, :_instance
      
      def _instance=(value)
        @@_instance = value
      end
      alias_method :attr__instance=, :_instance=
      
      const_set_lazy(:HTML) { "HTML" }
      const_attr_reader  :HTML
      
      # $NON-NLS-1$
      const_set_lazy(:HTMLID) { register_type(HTML) }
      const_attr_reader  :HTMLID
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
      if (!check_html(object) || !is_supported_type(transfer_data))
        DND.error(DND::ERROR_INVALID_DATA)
      end
      string = object
      count = string.length
      chars = CharArray.new(count)
      string.get_chars(0, count, chars, 0)
      buffer = Array.typed(::Java::Byte).new(chars.attr_length * 2) { 0 }
      OS.memmove(buffer, chars, buffer.attr_length)
      transfer_data.attr_data = Array.typed(::Java::Byte).new(1) { 0 }
      transfer_data.attr_data[0] = buffer
      transfer_data.attr_result = OS.attr_no_err
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
      if (!is_supported_type(transfer_data) || (transfer_data.attr_data).nil?)
        return nil
      end
      if ((transfer_data.attr_data.attr_length).equal?(0) || (transfer_data.attr_data[0].attr_length).equal?(0))
        return nil
      end
      buffer = transfer_data.attr_data[0]
      chars = CharArray.new((buffer.attr_length + 1) / 2)
      OS.memmove(chars, buffer, buffer.attr_length)
      return String.new(chars)
    end
    
    typesig { [] }
    def get_type_ids
      return Array.typed(::Java::Int).new([HTMLID])
    end
    
    typesig { [] }
    def get_type_names
      return Array.typed(String).new([HTML])
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
