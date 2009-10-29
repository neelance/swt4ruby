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
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Win32
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
      
      const_set_lazy(:CF_RTF) { "Rich Text Format" }
      const_attr_reader  :CF_RTF
      
      # $NON-NLS-1$
      const_set_lazy(:CF_RTFID) { register_type(CF_RTF) }
      const_attr_reader  :CF_RTFID
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
      # CF_RTF is stored as a null terminated byte array
      string = object
      count = string.length
      chars = CharArray.new(count + 1)
      string.get_chars(0, count, chars, 0)
      code_page = OS._get_acp
      cch_multi_byte = OS._wide_char_to_multi_byte(code_page, 0, chars, -1, nil, 0, nil, nil)
      if ((cch_multi_byte).equal?(0))
        transfer_data.attr_stgmedium = STGMEDIUM.new
        transfer_data.attr_result = COM::DV_E_STGMEDIUM
        return
      end
      # long
      lp_multi_byte_str = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, cch_multi_byte)
      OS._wide_char_to_multi_byte(code_page, 0, chars, -1, lp_multi_byte_str, cch_multi_byte, nil, nil)
      transfer_data.attr_stgmedium = STGMEDIUM.new
      transfer_data.attr_stgmedium.attr_tymed = COM::TYMED_HGLOBAL
      transfer_data.attr_stgmedium.attr_union_field = lp_multi_byte_str
      transfer_data.attr_stgmedium.attr_p_unk_for_release = 0
      transfer_data.attr_result = COM::S_OK
      return
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
      if (!is_supported_type(transfer_data) || (transfer_data.attr_p_idata_object).equal?(0))
        return nil
      end
      data = IDataObject.new(transfer_data.attr_p_idata_object)
      data._add_ref
      stgmedium = STGMEDIUM.new
      formatetc = transfer_data.attr_formatetc
      stgmedium.attr_tymed = COM::TYMED_HGLOBAL
      transfer_data.attr_result = get_data(data, formatetc, stgmedium)
      data._release
      if (!(transfer_data.attr_result).equal?(COM::S_OK))
        return nil
      end
      # long
      h_mem = stgmedium.attr_union_field
      begin
        # long
        lp_multi_byte_str = OS._global_lock(h_mem)
        if ((lp_multi_byte_str).equal?(0))
          return nil
        end
        begin
          code_page = OS._get_acp
          cch_wide_char = OS._multi_byte_to_wide_char(code_page, OS::MB_PRECOMPOSED, lp_multi_byte_str, -1, nil, 0)
          if ((cch_wide_char).equal?(0))
            return nil
          end
          lp_wide_char_str = CharArray.new(cch_wide_char - 1)
          OS._multi_byte_to_wide_char(code_page, OS::MB_PRECOMPOSED, lp_multi_byte_str, -1, lp_wide_char_str, lp_wide_char_str.attr_length)
          return String.new(lp_wide_char_str)
        ensure
          OS._global_unlock(h_mem)
        end
      ensure
        OS._global_free(h_mem)
      end
    end
    
    typesig { [] }
    def get_type_ids
      return Array.typed(::Java::Int).new([CF_RTFID])
    end
    
    typesig { [] }
    def get_type_names
      return Array.typed(String).new([CF_RTF])
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
