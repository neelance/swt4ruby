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
      include ::Org::Eclipse::Swt::Internal::Gtk
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
      
      const_set_lazy(:URI_LIST) { "text/uri-list" }
      const_attr_reader  :URI_LIST
      
      # $NON-NLS-1$
      const_set_lazy(:URI_LIST_ID) { register_type(URI_LIST) }
      const_attr_reader  :URI_LIST_ID
      
      const_set_lazy(:Separator) { Array.typed(::Java::Byte).new([Character.new(?\r.ord), Character.new(?\n.ord)]) }
      const_attr_reader  :Separator
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
      transfer_data.attr_result = 0
      if (!check_file(object) || !is_supported_type(transfer_data))
        DND.error(DND::ERROR_INVALID_DATA)
      end
      files = object
      buffer = Array.typed(::Java::Byte).new(0) { 0 }
      i = 0
      while i < files.attr_length
        string = files[i]
        if ((string).nil?)
          i += 1
          next
        end
        length_ = string.length
        if ((length_).equal?(0))
          i += 1
          next
        end
        chars = CharArray.new(length_)
        string.get_chars(0, length_, chars, 0)
        # long
        # long
        error_ = Array.typed(::Java::Int).new(1) { 0 }
        # long
        utf8ptr = OS.g_utf16_to_utf8(chars, chars.attr_length, nil, nil, error_)
        if (!(error_[0]).equal?(0) || (utf8ptr).equal?(0))
          i += 1
          next
        end
        # long
        locale_ptr = OS.g_filename_from_utf8(utf8ptr, -1, nil, nil, error_)
        OS.g_free(utf8ptr)
        if (!(error_[0]).equal?(0) || (locale_ptr).equal?(0))
          i += 1
          next
        end
        # long
        uri_ptr = OS.g_filename_to_uri(locale_ptr, 0, error_)
        OS.g_free(locale_ptr)
        if (!(error_[0]).equal?(0) || (uri_ptr).equal?(0))
          i += 1
          next
        end
        length_ = OS.strlen(uri_ptr)
        temp = Array.typed(::Java::Byte).new(length_) { 0 }
        OS.memmove(temp, uri_ptr, length_)
        OS.g_free(uri_ptr)
        new_length = (i > 0) ? buffer.attr_length + Separator.attr_length + temp.attr_length : temp.attr_length
        new_buffer = Array.typed(::Java::Byte).new(new_length) { 0 }
        offset = 0
        if (i > 0)
          System.arraycopy(buffer, 0, new_buffer, 0, buffer.attr_length)
          offset += buffer.attr_length
          System.arraycopy(Separator, 0, new_buffer, offset, Separator.attr_length)
          offset += Separator.attr_length
        end
        System.arraycopy(temp, 0, new_buffer, offset, temp.attr_length)
        buffer = new_buffer
        i += 1
      end
      if ((buffer.attr_length).equal?(0))
        return
      end
      # long
      ptr = OS.g_malloc(buffer.attr_length + 1)
      OS.memset(ptr, Character.new(?\0.ord), buffer.attr_length + 1)
      OS.memmove(ptr, buffer, buffer.attr_length)
      transfer_data.attr_p_value = ptr
      transfer_data.attr_length = buffer.attr_length
      transfer_data.attr_format = 8
      transfer_data.attr_result = 1
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
      if (!is_supported_type(transfer_data) || (transfer_data.attr_p_value).equal?(0) || transfer_data.attr_length <= 0)
        return nil
      end
      length_ = transfer_data.attr_length
      temp = Array.typed(::Java::Byte).new(length_) { 0 }
      OS.memmove(temp, transfer_data.attr_p_value, length_)
      # long
      # long
      files = Array.typed(::Java::Int).new(0) { 0 }
      offset = 0
      i = 0
      while i < temp.attr_length - 1
        if ((temp[i]).equal?(Character.new(?\r.ord)) && (temp[i + 1]).equal?(Character.new(?\n.ord)))
          size = i - offset
          # long
          file = OS.g_malloc(size + 1)
          file_buffer = Array.typed(::Java::Byte).new(size + 1) { 0 }
          System.arraycopy(temp, offset, file_buffer, 0, size)
          OS.memmove(file, file_buffer, size + 1)
          # long
          # long
          new_files = Array.typed(::Java::Int).new(files.attr_length + 1) { 0 }
          System.arraycopy(files, 0, new_files, 0, files.attr_length)
          new_files[files.attr_length] = file
          files = new_files
          offset = i + 2
        end
        i += 1
      end
      if (offset < temp.attr_length - 2)
        size = temp.attr_length - offset
        # long
        file = OS.g_malloc(size + 1)
        file_buffer = Array.typed(::Java::Byte).new(size + 1) { 0 }
        System.arraycopy(temp, offset, file_buffer, 0, size)
        OS.memmove(file, file_buffer, size + 1)
        # long
        # long
        new_files = Array.typed(::Java::Int).new(files.attr_length + 1) { 0 }
        System.arraycopy(files, 0, new_files, 0, files.attr_length)
        new_files[files.attr_length] = file
        files = new_files
      end
      file_names = Array.typed(String).new(0) { nil }
      i_ = 0
      while i_ < files.attr_length
        # long
        # long
        error_ = Array.typed(::Java::Int).new(1) { 0 }
        # long
        locale_ptr = OS.g_filename_from_uri(files[i_], nil, error_)
        OS.g_free(files[i_])
        if (!(error_[0]).equal?(0) || (locale_ptr).equal?(0))
          i_ += 1
          next
        end
        # long
        utf8ptr = OS.g_filename_to_utf8(locale_ptr, -1, nil, nil, error_)
        OS.g_free(locale_ptr)
        if (!(error_[0]).equal?(0) || (utf8ptr).equal?(0))
          i_ += 1
          next
        end
        # long
        # long
        items_written = Array.typed(::Java::Int).new(1) { 0 }
        # long
        utf16ptr = OS.g_utf8_to_utf16(utf8ptr, -1, nil, items_written, nil)
        OS.g_free(utf8ptr)
        # 64
        length_ = RJava.cast_to_int(items_written[0])
        buffer = CharArray.new(length_)
        OS.memmove(buffer, utf16ptr, length_ * 2)
        OS.g_free(utf16ptr)
        name = String.new(buffer)
        new_file_names = Array.typed(String).new(file_names.attr_length + 1) { nil }
        System.arraycopy(file_names, 0, new_file_names, 0, file_names.attr_length)
        new_file_names[file_names.attr_length] = name
        file_names = new_file_names
        i_ += 1
      end
      if ((file_names.attr_length).equal?(0))
        return nil
      end
      return file_names
    end
    
    typesig { [] }
    def get_type_ids
      return Array.typed(::Java::Int).new([URI_LIST_ID])
    end
    
    typesig { [] }
    def get_type_names
      return Array.typed(String).new([URI_LIST])
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
