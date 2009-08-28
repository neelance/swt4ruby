require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
# Outhink - support for typeFileURL
module Org::Eclipse::Swt::Dnd
  module FileTransferImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Java::Io
      include ::Org::Eclipse::Swt::Internal::Carbon
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
      
      def _instance
        defined?(@@_instance) ? @@_instance : @@_instance= FileTransfer.new
      end
      alias_method :attr__instance, :_instance
      
      def _instance=(value)
        @@_instance = value
      end
      alias_method :attr__instance=, :_instance=
      
      const_set_lazy(:HFS) { "hfs " }
      const_attr_reader  :HFS
      
      # $NON-NLS-1$
      const_set_lazy(:FURL) { "furl" }
      const_attr_reader  :FURL
      
      # $NON-NLS-1$
      const_set_lazy(:HFSID) { register_type(HFS) }
      const_attr_reader  :HFSID
      
      const_set_lazy(:FURLID) { register_type(FURL) }
      const_attr_reader  :FURLID
    }
    
    typesig { [] }
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
      files = object
      transfer_data.attr_result = -1
      data = Array.typed(Array.typed(::Java::Byte)).new(files.attr_length) { nil }
      i = 0
      while i < data.attr_length
        file = JavaFile.new(files[i])
        is_directory_ = file.is_directory
        file_name = files[i]
        chars = CharArray.new(file_name.length)
        file_name.get_chars(0, chars.attr_length, chars, 0)
        cfstring = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, chars, chars.attr_length)
        if ((cfstring).equal?(0))
          return
        end
        begin
          url = OS._cfurlcreate_with_file_system_path(OS.attr_k_cfallocator_default, cfstring, OS.attr_k_cfurlposixpath_style, is_directory_)
          if ((url).equal?(0))
            return
          end
          begin
            if ((transfer_data.attr_type).equal?(HFSID))
              fs_ref = Array.typed(::Java::Byte).new(80) { 0 }
              if (!OS._cfurlget_fsref(url, fs_ref))
                return
              end
              fs_spec = Array.typed(::Java::Byte).new(70) { 0 }
              if (!(OS._fsget_catalog_info(fs_ref, 0, nil, nil, fs_spec, nil)).equal?(OS.attr_no_err))
                return
              end
              hfsflavor = Array.typed(::Java::Byte).new(10 + fs_spec.attr_length) { 0 }
              finfo = Array.typed(::Java::Byte).new(16) { 0 }
              OS._fsp_get_finfo(fs_spec, finfo)
              System.arraycopy(finfo, 0, hfsflavor, 0, 10)
              System.arraycopy(fs_spec, 0, hfsflavor, 10, fs_spec.attr_length)
              data[i] = hfsflavor
            end
            if ((transfer_data.attr_type).equal?(FURLID))
              encoding = OS._cfstring_get_system_encoding
              the_data = OS._cfurlcreate_data(OS.attr_k_cfallocator_default, url, encoding, true)
              if ((the_data).equal?(0))
                return
              end
              begin
                length_ = OS._cfdata_get_length(the_data)
                buffer = Array.typed(::Java::Byte).new(length_) { 0 }
                range = CFRange.new
                range.attr_length = length_
                OS._cfdata_get_bytes(the_data, range, buffer)
                data[i] = buffer
              ensure
                OS._cfrelease(the_data)
              end
            end
          ensure
            OS._cfrelease(url)
          end
        ensure
          OS._cfrelease(cfstring)
        end
        i += 1
      end
      transfer_data.attr_data = data
      transfer_data.attr_result = 0
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
      if (!is_supported_type(transfer_data) || (transfer_data.attr_data).nil?)
        return nil
      end
      if ((transfer_data.attr_data.attr_length).equal?(0))
        return nil
      end
      count = transfer_data.attr_data.attr_length
      file_names = Array.typed(String).new(count) { nil }
      i = 0
      while i < count
        data = transfer_data.attr_data[i]
        url = 0
        if ((transfer_data.attr_type).equal?(HFSID))
          fsspec = Array.typed(::Java::Byte).new(data.attr_length - 10) { 0 }
          System.arraycopy(data, 10, fsspec, 0, fsspec.attr_length)
          fs_ref = Array.typed(::Java::Byte).new(80) { 0 }
          if (!(OS._fsp_make_fsref(fsspec, fs_ref)).equal?(OS.attr_no_err))
            return nil
          end
          url = OS._cfurlcreate_from_fsref(OS.attr_k_cfallocator_default, fs_ref)
          if ((url).equal?(0))
            return nil
          end
        end
        if ((transfer_data.attr_type).equal?(FURLID))
          encoding = OS.attr_k_cfstring_encoding_utf8
          url = OS._cfurlcreate_with_bytes(OS.attr_k_cfallocator_default, data, data.attr_length, encoding, 0)
          if ((url).equal?(0))
            return nil
          end
        end
        begin
          path = OS._cfurlcopy_file_system_path(url, OS.attr_k_cfurlposixpath_style)
          if ((path).equal?(0))
            return nil
          end
          begin
            length_ = OS._cfstring_get_length(path)
            if ((length_).equal?(0))
              return nil
            end
            buffer = CharArray.new(length_)
            range = CFRange.new
            range.attr_length = length_
            OS._cfstring_get_characters(path, range, buffer)
            file_names[i] = String.new(buffer)
          ensure
            OS._cfrelease(path)
          end
        ensure
          OS._cfrelease(url)
        end
        i += 1
      end
      return file_names
    end
    
    typesig { [] }
    def get_type_ids
      return Array.typed(::Java::Int).new([FURLID, HFSID])
    end
    
    typesig { [] }
    def get_type_names
      return Array.typed(String).new([FURL, HFS])
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
