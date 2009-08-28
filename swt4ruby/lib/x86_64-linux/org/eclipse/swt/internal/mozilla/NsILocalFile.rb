require "rjava"

# ***** BEGIN LICENSE BLOCK *****
# Version: MPL 1.1
# 
# The contents of this file are subject to the Mozilla Public License Version
# 1.1 (the "License"); you may not use this file except in compliance with
# the License. You may obtain a copy of the License at
# http://www.mozilla.org/MPL/
# 
# Software distributed under the License is distributed on an "AS IS" basis,
# WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
# for the specific language governing rights and limitations under the
# License.
# 
# The Original Code is Mozilla Communicator client code, released March 31, 1998.
# 
# The Initial Developer of the Original Code is
# Netscape Communications Corporation.
# Portions created by Netscape are Copyright (C) 1998-1999
# Netscape Communications Corporation.  All Rights Reserved.
# 
# Contributor(s):
# 
# IBM
# -  Binding to permit interfacing between Mozilla and SWT
# -  Copyright (C) 2003, 2008 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Mozilla
  module NsILocalFileImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsILocalFile < NsIFile
    include_class_members NsILocalFileImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsIFile::LAST_METHOD_ID + 17 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_ILOCALFILE_IID_STR) { "aa610f20-a889-11d3-8c81-000064657374" }
      const_attr_reader  :NS_ILOCALFILE_IID_STR
      
      const_set_lazy(:NS_ILOCALFILE_IID) { NsID.new(NS_ILOCALFILE_IID_STR) }
      const_attr_reader  :NS_ILOCALFILE_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Long] }
    # int
    def _init_with_path(file_path)
      return XPCOM._vtbl_call(NsIFile::LAST_METHOD_ID + 1, get_address, file_path)
    end
    
    typesig { [::Java::Long] }
    # int
    def _init_with_native_path(file_path)
      return XPCOM._vtbl_call(NsIFile::LAST_METHOD_ID + 2, get_address, file_path)
    end
    
    typesig { [::Java::Long] }
    # int
    def _init_with_file(a_file)
      return XPCOM._vtbl_call(NsIFile::LAST_METHOD_ID + 3, get_address, a_file)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_follow_links(a_follow_links)
      return XPCOM._vtbl_call(NsIFile::LAST_METHOD_ID + 4, get_address, a_follow_links)
    end
    
    typesig { [::Java::Int] }
    def _set_follow_links(a_follow_links)
      return XPCOM._vtbl_call(NsIFile::LAST_METHOD_ID + 5, get_address, a_follow_links)
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Long)] }
    # int
    def _open_nsprfile_desc(flags, mode, _retval)
      return XPCOM._vtbl_call(NsIFile::LAST_METHOD_ID + 6, get_address, flags, mode, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Long)] }
    # int
    def _open_ansifile_desc(mode, _retval)
      return XPCOM._vtbl_call(NsIFile::LAST_METHOD_ID + 7, get_address, mode, _retval)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _load(_retval)
      return XPCOM._vtbl_call(NsIFile::LAST_METHOD_ID + 8, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    def _get_disk_space_available(a_disk_space_available)
      return XPCOM._vtbl_call(NsIFile::LAST_METHOD_ID + 9, get_address, a_disk_space_available)
    end
    
    typesig { [::Java::Long] }
    # int
    def _append_relative_path(relative_file_path)
      return XPCOM._vtbl_call(NsIFile::LAST_METHOD_ID + 10, get_address, relative_file_path)
    end
    
    typesig { [::Java::Long] }
    # int
    def _append_relative_native_path(relative_file_path)
      return XPCOM._vtbl_call(NsIFile::LAST_METHOD_ID + 11, get_address, relative_file_path)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_persistent_descriptor(a_persistent_descriptor)
      return XPCOM._vtbl_call(NsIFile::LAST_METHOD_ID + 12, get_address, a_persistent_descriptor)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_persistent_descriptor(a_persistent_descriptor)
      return XPCOM._vtbl_call(NsIFile::LAST_METHOD_ID + 13, get_address, a_persistent_descriptor)
    end
    
    typesig { [] }
    def _reveal
      return XPCOM._vtbl_call(NsIFile::LAST_METHOD_ID + 14, get_address)
    end
    
    typesig { [] }
    def _launch
      return XPCOM._vtbl_call(NsIFile::LAST_METHOD_ID + 15, get_address)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _get_relative_descriptor(from_file, _retval)
      return XPCOM._vtbl_call(NsIFile::LAST_METHOD_ID + 16, get_address, from_file, _retval)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _set_relative_descriptor(from_file, relative_desc)
      return XPCOM._vtbl_call(NsIFile::LAST_METHOD_ID + 17, get_address, from_file, relative_desc)
    end
    
    private
    alias_method :initialize_ns_ilocal_file, :initialize
  end
  
end
