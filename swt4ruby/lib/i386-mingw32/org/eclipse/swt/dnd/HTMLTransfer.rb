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
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Win32
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
      
      const_set_lazy(:HTML_FORMAT) { "HTML Format" }
      const_attr_reader  :HTML_FORMAT
      
      # $NON-NLS-1$
      const_set_lazy(:HTML_FORMATID) { register_type(HTML_FORMAT) }
      const_attr_reader  :HTML_FORMATID
      
      const_set_lazy(:NUMBER) { "00000000" }
      const_attr_reader  :NUMBER
      
      # $NON-NLS-1$
      const_set_lazy(:HEADER) { "Version:0.9\r\nStartHTML:" + NUMBER + "\r\nEndHTML:" + NUMBER + "\r\nStartFragment:" + NUMBER + "\r\nEndFragment:" + NUMBER + "\r\n" }
      const_attr_reader  :HEADER
      
      const_set_lazy(:PREFIX) { "<html><body><!--StartFragment-->" }
      const_attr_reader  :PREFIX
      
      # $NON-NLS-1$
      const_set_lazy(:SUFFIX) { "<!--EndFragment--></body></html>" }
      const_attr_reader  :SUFFIX
      
      # $NON-NLS-1$
      const_set_lazy(:StartFragment) { "StartFragment:" }
      const_attr_reader  :StartFragment
      
      # $NON-NLS-1$
      const_set_lazy(:EndFragment) { "EndFragment:" }
      const_attr_reader  :EndFragment
    }
    
    typesig { [] }
    # $NON-NLS-1$
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
      chars = CharArray.new(count + 1)
      string.get_chars(0, count, chars, 0)
      # NOTE: CF_HTML uses UTF-8 encoding.
      cch_multi_byte = OS._wide_char_to_multi_byte(OS::CP_UTF8, 0, chars, -1, nil, 0, nil, nil)
      if ((cch_multi_byte).equal?(0))
        transfer_data.attr_stgmedium = STGMEDIUM.new
        transfer_data.attr_result = COM::DV_E_STGMEDIUM
        return
      end
      start_html = HEADER.length
      start_fragment = start_html + PREFIX.length
      end_fragment = start_fragment + cch_multi_byte - 1
      end_html = end_fragment + SUFFIX.length
      buffer = StringBuffer.new(HEADER)
      max_length = NUMBER.length
      # startHTML
      start = buffer.to_s.index_of(NUMBER)
      temp = JavaInteger.to_s(start_html)
      buffer.replace(start + max_length - temp.length, start + max_length, temp)
      # endHTML
      start = buffer.to_s.index_of(NUMBER, start)
      temp = (JavaInteger.to_s(end_html)).to_s
      buffer.replace(start + max_length - temp.length, start + max_length, temp)
      # startFragment
      start = buffer.to_s.index_of(NUMBER, start)
      temp = (JavaInteger.to_s(start_fragment)).to_s
      buffer.replace(start + max_length - temp.length, start + max_length, temp)
      # endFragment
      start = buffer.to_s.index_of(NUMBER, start)
      temp = (JavaInteger.to_s(end_fragment)).to_s
      buffer.replace(start + max_length - temp.length, start + max_length, temp)
      buffer.append(PREFIX)
      buffer.append(string)
      buffer.append(SUFFIX)
      count = buffer.length
      chars = CharArray.new(count + 1)
      buffer.get_chars(0, count, chars, 0)
      cch_multi_byte = OS._wide_char_to_multi_byte(OS::CP_UTF8, 0, chars, -1, nil, 0, nil, nil)
      # long
      lp_multi_byte_str = OS._global_alloc(OS::GMEM_FIXED | OS::GMEM_ZEROINIT, cch_multi_byte)
      OS._wide_char_to_multi_byte(OS::CP_UTF8, 0, chars, -1, lp_multi_byte_str, cch_multi_byte, nil, nil)
      transfer_data.attr_stgmedium = STGMEDIUM.new
      transfer_data.attr_stgmedium.attr_tymed = COM::TYMED_HGLOBAL
      transfer_data.attr_stgmedium.attr_union_field = lp_multi_byte_str
      transfer_data.attr_stgmedium.attr_p_unk_for_release = 0
      transfer_data.attr_result = COM::S_OK
      return
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
      if (!is_supported_type(transfer_data) || (transfer_data.attr_p_idata_object).equal?(0))
        return nil
      end
      data = IDataObject.new(transfer_data.attr_p_idata_object)
      data._add_ref
      stgmedium = STGMEDIUM.new
      formatetc = transfer_data.attr_formatetc
      stgmedium.attr_tymed = COM::TYMED_HGLOBAL
      transfer_data.attr_result = data._get_data(formatetc, stgmedium)
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
          # NOTE: CF_HTML uses UTF-8 encoding.
          # The MSDN documentation for MultiByteToWideChar states that dwFlags must be set to 0 for UTF-8.
          # Otherwise, the function fails with ERROR_INVALID_FLAGS.
          cch_wide_char = OS._multi_byte_to_wide_char(OS::CP_UTF8, 0, lp_multi_byte_str, -1, nil, 0)
          if ((cch_wide_char).equal?(0))
            return nil
          end
          lp_wide_char_str = CharArray.new(cch_wide_char - 1)
          OS._multi_byte_to_wide_char(OS::CP_UTF8, 0, lp_multi_byte_str, -1, lp_wide_char_str, lp_wide_char_str.attr_length)
          string = String.new(lp_wide_char_str)
          fragment_start = 0
          fragment_end = 0
          start = string.index_of(StartFragment) + StartFragment.length
          end_ = start + 1
          while (end_ < string.length)
            s = string.substring(start, end_)
            begin
              fragment_start = JavaInteger.parse_int(s)
              ((end_ += 1) - 1)
            rescue NumberFormatException => e
              break
            end
          end
          start = string.index_of(EndFragment) + EndFragment.length
          end_ = start + 1
          while (end_ < string.length)
            s = string.substring(start, end_)
            begin
              fragment_end = JavaInteger.parse_int(s)
              ((end_ += 1) - 1)
            rescue NumberFormatException => e
              break
            end
          end
          if (fragment_end <= fragment_start || fragment_end > OS.strlen(lp_multi_byte_str))
            return nil
          end
          cch_wide_char = OS._multi_byte_to_wide_char(OS::CP_UTF8, 0, lp_multi_byte_str + fragment_start, fragment_end - fragment_start, lp_wide_char_str, lp_wide_char_str.attr_length)
          if ((cch_wide_char).equal?(0))
            return nil
          end
          s = String.new(lp_wide_char_str, 0, cch_wide_char)
          # Firefox includes <!--StartFragment --> in the fragment, so remove it.
          fox_start = "<!--StartFragment -->\r\n" # $NON-NLS-1$
          prefix = s.index_of(fox_start)
          if (!(prefix).equal?(-1))
            prefix += fox_start.length
            s = (s.substring(prefix)).to_s
          end
          return s
        ensure
          OS._global_unlock(h_mem)
        end
      ensure
        OS._global_free(h_mem)
      end
    end
    
    typesig { [] }
    def get_type_ids
      return Array.typed(::Java::Int).new([HTML_FORMATID])
    end
    
    typesig { [] }
    def get_type_names
      return Array.typed(String).new([HTML_FORMAT])
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
