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
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
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
      
      const_set_lazy(:COMPOUND_TEXT) { "COMPOUND_TEXT" }
      const_attr_reader  :COMPOUND_TEXT
      
      # $NON-NLS-1$
      const_set_lazy(:UTF8_STRING) { "UTF8_STRING" }
      const_attr_reader  :UTF8_STRING
      
      # $NON-NLS-1$
      const_set_lazy(:STRING) { "STRING" }
      const_attr_reader  :STRING
      
      # $NON-NLS-1$
      const_set_lazy(:COMPOUND_TEXT_ID) { register_type(COMPOUND_TEXT) }
      const_attr_reader  :COMPOUND_TEXT_ID
      
      const_set_lazy(:UTF8_STRING_ID) { register_type(UTF8_STRING) }
      const_attr_reader  :UTF8_STRING_ID
      
      const_set_lazy(:STRING_ID) { register_type(STRING) }
      const_attr_reader  :STRING_ID
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
      transfer_data.attr_result = 0
      if (!check_text(object) || !is_supported_type(transfer_data))
        DND.error(DND::ERROR_INVALID_DATA)
      end
      string = object
      utf8 = Converter.wcs_to_mbcs(nil, string, true)
      if ((transfer_data.attr_type).equal?(COMPOUND_TEXT_ID))
        # long
        # long
        encoding = Array.typed(::Java::Int).new(1) { 0 }
        format = Array.typed(::Java::Int).new(1) { 0 }
        # long
        # long
        ctext = Array.typed(::Java::Int).new(1) { 0 }
        length = Array.typed(::Java::Int).new(1) { 0 }
        result = OS.gdk_utf8_to_compound_text(utf8, encoding, format, ctext, length)
        if (!result)
          return
        end
        transfer_data.attr_type = encoding[0]
        transfer_data.attr_format = format[0]
        transfer_data.attr_length = length[0]
        transfer_data.attr_p_value = ctext[0]
        transfer_data.attr_result = 1
      end
      if ((transfer_data.attr_type).equal?(UTF8_STRING_ID))
        # long
        p_value = OS.g_malloc(utf8.attr_length)
        if ((p_value).equal?(0))
          return
        end
        OS.memmove(p_value, utf8, utf8.attr_length)
        transfer_data.attr_type = UTF8_STRING_ID
        transfer_data.attr_format = 8
        transfer_data.attr_length = utf8.attr_length - 1
        transfer_data.attr_p_value = p_value
        transfer_data.attr_result = 1
      end
      if ((transfer_data.attr_type).equal?(STRING_ID))
        # long
        string_target = OS.gdk_utf8_to_string_target(utf8)
        if ((string_target).equal?(0))
          return
        end
        transfer_data.attr_type = STRING_ID
        transfer_data.attr_format = 8
        transfer_data.attr_length = OS.strlen(string_target)
        transfer_data.attr_p_value = string_target
        transfer_data.attr_result = 1
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
      if (!is_supported_type(transfer_data) || (transfer_data.attr_p_value).equal?(0))
        return nil
      end
      # long
      # long
      list = Array.typed(::Java::Int).new(1) { 0 }
      count = OS.gdk_text_property_to_utf8_list(transfer_data.attr_type, transfer_data.attr_format, transfer_data.attr_p_value, transfer_data.attr_length, list)
      if ((count).equal?(0))
        return nil
      end
      # long
      # long
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove(ptr, list[0], OS::PTR_SIZEOF)
      length = OS.strlen(ptr[0])
      utf8 = Array.typed(::Java::Byte).new(length) { 0 }
      OS.memmove(utf8, ptr[0], length)
      OS.g_strfreev(list[0])
      # convert utf8 byte array to a unicode string
      unicode = Converter.mbcs_to_wcs(nil, utf8)
      string = String.new(unicode)
      end_ = string.index_of(Character.new(?\0.ord))
      return ((end_).equal?(-1)) ? string : string.substring(0, end_)
    end
    
    typesig { [] }
    def get_type_ids
      return Array.typed(::Java::Int).new([UTF8_STRING_ID, COMPOUND_TEXT_ID, STRING_ID])
    end
    
    typesig { [] }
    def get_type_names
      return Array.typed(String).new([UTF8_STRING, COMPOUND_TEXT, STRING])
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
