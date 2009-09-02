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
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
      
      const_set_lazy(:RTF) { OS::NSRTFPboardType.get_string }
      const_attr_reader  :RTF
      
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
      transfer_data.attr_data = NSString.string_with(object)
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
      string = transfer_data.attr_data
      return string.get_string
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
