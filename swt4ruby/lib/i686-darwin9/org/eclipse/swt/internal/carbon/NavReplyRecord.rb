require "rjava"

# Copyright (c) 2003-2004 IBM Corp.
# Portions Copyright (c) 1983-2002, Apple Computer, Inc.
# 
# All rights reserved.  This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Carbon
  module NavReplyRecordImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class NavReplyRecord 
    include_class_members NavReplyRecordImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :valid_record
    alias_method :attr_valid_record, :valid_record
    undef_method :valid_record
    alias_method :attr_valid_record=, :valid_record=
    undef_method :valid_record=
    
    attr_accessor :replacing
    alias_method :attr_replacing, :replacing
    undef_method :replacing
    alias_method :attr_replacing=, :replacing=
    undef_method :replacing=
    
    attr_accessor :is_stationery
    alias_method :attr_is_stationery, :is_stationery
    undef_method :is_stationery
    alias_method :attr_is_stationery=, :is_stationery=
    undef_method :is_stationery=
    
    attr_accessor :translation_needed
    alias_method :attr_translation_needed, :translation_needed
    undef_method :translation_needed
    alias_method :attr_translation_needed=, :translation_needed=
    undef_method :translation_needed=
    
    # AEDescList selection;
    attr_accessor :selection_descriptor_type
    alias_method :attr_selection_descriptor_type, :selection_descriptor_type
    undef_method :selection_descriptor_type
    alias_method :attr_selection_descriptor_type=, :selection_descriptor_type=
    undef_method :selection_descriptor_type=
    
    attr_accessor :selection_data_handle
    alias_method :attr_selection_data_handle, :selection_data_handle
    undef_method :selection_data_handle
    alias_method :attr_selection_data_handle=, :selection_data_handle=
    undef_method :selection_data_handle=
    
    attr_accessor :key_script
    alias_method :attr_key_script, :key_script
    undef_method :key_script
    alias_method :attr_key_script=, :key_script=
    undef_method :key_script=
    
    attr_accessor :file_translation
    alias_method :attr_file_translation, :file_translation
    undef_method :file_translation
    alias_method :attr_file_translation=, :file_translation=
    undef_method :file_translation=
    
    attr_accessor :reserved1
    alias_method :attr_reserved1, :reserved1
    undef_method :reserved1
    alias_method :attr_reserved1=, :reserved1=
    undef_method :reserved1=
    
    attr_accessor :save_file_name
    alias_method :attr_save_file_name, :save_file_name
    undef_method :save_file_name
    alias_method :attr_save_file_name=, :save_file_name=
    undef_method :save_file_name=
    
    attr_accessor :save_file_extension_hidden
    alias_method :attr_save_file_extension_hidden, :save_file_extension_hidden
    undef_method :save_file_extension_hidden
    alias_method :attr_save_file_extension_hidden=, :save_file_extension_hidden=
    undef_method :save_file_extension_hidden=
    
    attr_accessor :reserved2
    alias_method :attr_reserved2, :reserved2
    undef_method :reserved2
    alias_method :attr_reserved2=, :reserved2=
    undef_method :reserved2=
    
    attr_accessor :reserved
    alias_method :attr_reserved, :reserved
    undef_method :reserved
    alias_method :attr_reserved=, :reserved=
    undef_method :reserved=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 256 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @valid_record = false
      @replacing = false
      @is_stationery = false
      @translation_needed = false
      @selection_descriptor_type = 0
      @selection_data_handle = 0
      @key_script = 0
      @file_translation = 0
      @reserved1 = 0
      @save_file_name = 0
      @save_file_extension_hidden = false
      @reserved2 = 0
      @reserved = Array.typed(::Java::Byte).new(225) { 0 }
    end
    
    private
    alias_method :initialize__nav_reply_record, :initialize
  end
  
end
