require "rjava"

# * Copyright (c) 20007 IBM Corporation and others. * All rights reserved. This program and the accompanying materials * are made available under the terms of the Eclipse Public License v1.0 * which accompanies this distribution, and is available at * http://www.eclipse.org/legal/epl-v10.html * * Contributors: *     IBM Corporation - initial API and implementation ******************************************************************************
module Org::Eclipse::Swt::Dnd
  module URLTransferImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
      
      def __instance
        defined?(@@_instance) ? @@_instance : @@_instance= URLTransfer.new
      end
      alias_method :attr__instance, :__instance
      
      def __instance=(value)
        @@_instance = value
      end
      alias_method :attr__instance=, :__instance=
      
      const_set_lazy(:URL) { OS::NSURLPboardType.get_string }
      const_attr_reader  :URL
      
      const_set_lazy(:URL_ID) { register_type(URL) }
      const_attr_reader  :URL_ID
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
      url = object
      ns_string = NSString.string_with(url)
      escaped_string = ns_string.string_by_adding_percent_escapes_using_encoding(OS::NSUTF8StringEncoding)
      transfer_data.attr_data = NSURL._urlwith_string(escaped_string)
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
      ns_url = transfer_data.attr_data
      ns_string = ns_url.absolute_string
      return ns_string.get_string
    end
    
    typesig { [] }
    def get_type_ids
      return Array.typed(::Java::Int).new([URL_ID])
    end
    
    typesig { [] }
    def get_type_names
      return Array.typed(String).new([URL])
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
