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
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
      
      const_set_lazy(:ID_NAME) { OS::NSFilenamesPboardType.get_string }
      const_attr_reader  :ID_NAME
      
      const_set_lazy(:ID) { register_type(ID_NAME) }
      const_attr_reader  :ID
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
      length = files.attr_length
      array = NSMutableArray.array_with_capacity(length)
      i = 0
      while i < length
        file_name = files[i]
        string = NSString.string_with(file_name)
        array.add_object(string)
        i += 1
      end
      transfer_data.attr_data = array
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
      array = transfer_data.attr_data
      if ((array.count).equal?(0))
        return nil
      end
      # 64
      count_ = RJava.cast_to_int(array.count)
      file_names = Array.typed(String).new(count_) { nil }
      i = 0
      while i < count_
        string = NSString.new(array.object_at_index(i))
        file_names[i] = string.get_string
        i += 1
      end
      return file_names
    end
    
    typesig { [] }
    def get_type_ids
      return Array.typed(::Java::Int).new([ID])
    end
    
    typesig { [] }
    def get_type_names
      return Array.typed(String).new([ID_NAME])
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
