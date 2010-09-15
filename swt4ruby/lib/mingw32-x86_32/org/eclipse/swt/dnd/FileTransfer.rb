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
  module FileTransferImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  # The class <code>FileTransfer</code> provides a platform specific mechanism
  # for converting a list of files represented as a java <code>String[]</code> to a
  # platform specific representation of the data and vice versa.
  # Each <code>String</code> in the array contains the absolute path for a single
  # file or directory.
  # 
  # <p>An example of a java <code>String[]</code> containing a list of files is shown
  # below:</p>
  # 
  # <code><pre>
  # File file1 = new File("C:\temp\file1");
  # File file2 = new File("C:\temp\file2");
  # String[] fileData = new String[2];
  # fileData[0] = file1.getAbsolutePath();
  # fileData[1] = file2.getAbsolutePath();
  # </code></pre>
  # 
  # @see Transfer
  class FileTransfer < FileTransferImports.const_get :ByteArrayTransfer
    include_class_members FileTransferImports
    
    class_module.module_eval {
      
      def __instance
        defined?(@@_instance) ? @@_instance : @@_instance= FileTransfer.new
      end
      alias_method :attr__instance, :__instance
      
      def __instance=(value)
        @@_instance = value
      end
      alias_method :attr__instance=, :__instance=
      
      const_set_lazy(:CF_HDROP) { "CF_HDROP " }
      const_attr_reader  :CF_HDROP
      
      # $NON-NLS-1$
      const_set_lazy(:CF_HDROPID) { COM::CF_HDROP }
      const_attr_reader  :CF_HDROPID
      
      const_set_lazy(:CF_HDROP_SEPARATOR) { "\0" }
      const_attr_reader  :CF_HDROP_SEPARATOR
    }
    
    typesig { [] }
    # $NON-NLS-1$
    def initialize
      super()
    end
    
    class_module.module_eval {
      typesig { [] }
      # Returns the singleton instance of the FileTransfer class.
      # 
      # @return the singleton instance of the FileTransfer class
      def get_instance
        return self.attr__instance
      end
    }
    
    typesig { [Object, TransferData] }
    # This implementation of <code>javaToNative</code> converts a list of file names
    # represented by a java <code>String[]</code> to a platform specific representation.
    # Each <code>String</code> in the array contains the absolute path for a single
    # file or directory.
    # 
    # @param object a java <code>String[]</code> containing the file names to be converted
    # @param transferData an empty <code>TransferData</code> object that will
    # be filled in on return with the platform specific format of the data
    # 
    # @see Transfer#nativeToJava
    def java_to_native(object, transfer_data)
      if (!check_file(object) || !is_supported_type(transfer_data))
        DND.error(DND::ERROR_INVALID_DATA)
      end
      file_names = object
      all_files = StringBuffer.new
      i = 0
      while i < file_names.attr_length
        all_files.append(file_names[i])
        all_files.append(CF_HDROP_SEPARATOR) # each name is null terminated
        i += 1
      end
      buffer = TCHAR.new(0, all_files.to_s, true) # there is an extra null terminator at the very end
      dropfiles = DROPFILES.new
      dropfiles.attr_p_files = DROPFILES.attr_sizeof
      dropfiles.attr_pt_x = dropfiles.attr_pt_y = 0
      dropfiles.attr_f_nc = 0
      dropfiles.attr_f_wide = OS::IsUnicode ? 1 : 0
      # Allocate the memory because the caller (DropTarget) has not handed it in
      # The caller of this method must release the data when it is done with it.
      byte_count = buffer.length * TCHAR.attr_sizeof
      # long
      new_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, DROPFILES.attr_sizeof + byte_count)
      OS._move_memory(new_ptr, dropfiles, DROPFILES.attr_sizeof)
      OS._move_memory(new_ptr + DROPFILES.attr_sizeof, buffer, byte_count)
      transfer_data.attr_stgmedium = STGMEDIUM.new
      transfer_data.attr_stgmedium.attr_tymed = COM::TYMED_HGLOBAL
      transfer_data.attr_stgmedium.attr_union_field = new_ptr
      transfer_data.attr_stgmedium.attr_p_unk_for_release = 0
      transfer_data.attr_result = COM::S_OK
    end
    
    typesig { [TransferData] }
    # This implementation of <code>nativeToJava</code> converts a platform specific
    # representation of a list of file names to a java <code>String[]</code>.
    # Each String in the array contains the absolute path for a single file or directory.
    # 
    # @param transferData the platform specific representation of the data to be converted
    # @return a java <code>String[]</code> containing a list of file names if the conversion
    # was successful; otherwise null
    # 
    # @see Transfer#javaToNative
    def native_to_java(transfer_data)
      if (!is_supported_type(transfer_data) || (transfer_data.attr_p_idata_object).equal?(0))
        return nil
      end
      # get file names from IDataObject
      data_object = IDataObject.new(transfer_data.attr_p_idata_object)
      data_object._add_ref
      formatetc = FORMATETC.new
      formatetc.attr_cf_format = COM::CF_HDROP
      formatetc.attr_ptd = 0
      formatetc.attr_dw_aspect = COM::DVASPECT_CONTENT
      formatetc.attr_lindex = -1
      formatetc.attr_tymed = COM::TYMED_HGLOBAL
      stgmedium = STGMEDIUM.new
      stgmedium.attr_tymed = COM::TYMED_HGLOBAL
      transfer_data.attr_result = get_data(data_object, formatetc, stgmedium)
      data_object._release
      if (!(transfer_data.attr_result).equal?(COM::S_OK))
        return nil
      end
      # How many files are there?
      count = OS._drag_query_file(stgmedium.attr_union_field, -0x1, nil, 0)
      file_names = Array.typed(String).new(count) { nil }
      i = 0
      while i < count
        # How long is the name ?
        size = OS._drag_query_file(stgmedium.attr_union_field, i, nil, 0) + 1
        lpsz_file = TCHAR.new(0, size)
        # Get file name and append it to string
        OS._drag_query_file(stgmedium.attr_union_field, i, lpsz_file, size)
        file_names[i] = lpsz_file.to_s(0, lpsz_file.strlen)
        i += 1
      end
      OS._drag_finish(stgmedium.attr_union_field) # frees data associated with HDROP data
      return file_names
    end
    
    typesig { [] }
    def get_type_ids
      return Array.typed(::Java::Int).new([CF_HDROPID])
    end
    
    typesig { [] }
    def get_type_names
      return Array.typed(String).new([CF_HDROP])
    end
    
    typesig { [Object] }
    def check_file(object)
      if ((object).nil? || !(object.is_a?(Array.typed(String))) || ((object).attr_length).equal?(0))
        return false
      end
      strings = object
      i = 0
      while i < strings.attr_length
        if ((strings[i]).nil? || (strings[i].length).equal?(0))
          return false
        end
        i += 1
      end
      return true
    end
    
    typesig { [Object] }
    def validate(object)
      return check_file(object)
    end
    
    private
    alias_method :initialize__file_transfer, :initialize
  end
  
end
