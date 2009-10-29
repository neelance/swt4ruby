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
  module NsIFileImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIFile < NsISupports
    include_class_members NsIFileImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 45 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IFILE_IID_STR) { "c8c0a080-0868-11d3-915f-d9d889d48e3c" }
      const_attr_reader  :NS_IFILE_IID_STR
      
      const_set_lazy(:NS_IFILE_IID) { NsID.new(NS_IFILE_IID_STR) }
      const_attr_reader  :NS_IFILE_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    class_module.module_eval {
      const_set_lazy(:NORMAL_FILE_TYPE) { 0 }
      const_attr_reader  :NORMAL_FILE_TYPE
      
      const_set_lazy(:DIRECTORY_TYPE) { 1 }
      const_attr_reader  :DIRECTORY_TYPE
    }
    
    typesig { [::Java::Long] }
    # int
    def _append(node)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, node)
    end
    
    typesig { [::Java::Long] }
    # int
    def _append_native(node)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, node)
    end
    
    typesig { [] }
    def _normalize
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def _create(type, permissions)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, type, permissions)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_leaf_name(a_leaf_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_leaf_name)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_leaf_name(a_leaf_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_leaf_name)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_native_leaf_name(a_native_leaf_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_native_leaf_name)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_native_leaf_name(a_native_leaf_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, a_native_leaf_name)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _copy_to(new_parent_dir, new_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, new_parent_dir, new_name)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _copy_to_native(new_parent_dir, new_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 10, get_address, new_parent_dir, new_name)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _copy_to_following_links(new_parent_dir, new_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 11, get_address, new_parent_dir, new_name)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _copy_to_following_links_native(new_parent_dir, new_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 12, get_address, new_parent_dir, new_name)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _move_to(new_parent_dir, new_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 13, get_address, new_parent_dir, new_name)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _move_to_native(new_parent_dir, new_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 14, get_address, new_parent_dir, new_name)
    end
    
    typesig { [::Java::Int] }
    def _remove(recursive)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 15, get_address, recursive)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_permissions(a_permissions)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 16, get_address, a_permissions)
    end
    
    typesig { [::Java::Int] }
    def _set_permissions(a_permissions)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 17, get_address, a_permissions)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_permissions_of_link(a_permissions_of_link)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 18, get_address, a_permissions_of_link)
    end
    
    typesig { [::Java::Int] }
    def _set_permissions_of_link(a_permissions_of_link)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 19, get_address, a_permissions_of_link)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    def _get_last_modified_time(a_last_modified_time)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 20, get_address, a_last_modified_time)
    end
    
    typesig { [::Java::Long] }
    def _set_last_modified_time(a_last_modified_time)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 21, get_address, a_last_modified_time)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    def _get_last_modified_time_of_link(a_last_modified_time_of_link)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 22, get_address, a_last_modified_time_of_link)
    end
    
    typesig { [::Java::Long] }
    def _set_last_modified_time_of_link(a_last_modified_time_of_link)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 23, get_address, a_last_modified_time_of_link)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    def _get_file_size(a_file_size)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 24, get_address, a_file_size)
    end
    
    typesig { [::Java::Long] }
    def _set_file_size(a_file_size)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 25, get_address, a_file_size)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    def _get_file_size_of_link(a_file_size_of_link)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 26, get_address, a_file_size_of_link)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_target(a_target)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 27, get_address, a_target)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_native_target(a_native_target)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 28, get_address, a_native_target)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_path(a_path)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 29, get_address, a_path)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_native_path(a_native_path)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 30, get_address, a_native_path)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _exists(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 31, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _is_writable(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 32, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _is_readable(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 33, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _is_executable(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 34, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _is_hidden(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 35, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _is_directory(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 36, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _is_file(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 37, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _is_symlink(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 38, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _is_special(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 39, get_address, _retval)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def _create_unique(type, permissions)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 40, get_address, type, permissions)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _clone(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 41, get_address, _retval)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Int)] }
    # int
    def _equals(in_file, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 42, get_address, in_file, _retval)
    end
    
    typesig { [::Java::Long, ::Java::Int, Array.typed(::Java::Int)] }
    # int
    def _contains(in_file, recur, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 43, get_address, in_file, recur, _retval)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_parent(a_parent)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 44, get_address, a_parent)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_directory_entries(a_directory_entries)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 45, get_address, a_directory_entries)
    end
    
    private
    alias_method :initialize_ns_ifile, :initialize
  end
  
end
