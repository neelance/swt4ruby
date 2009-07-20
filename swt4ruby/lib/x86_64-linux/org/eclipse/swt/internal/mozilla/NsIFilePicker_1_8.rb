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
# -  Copyright (C) 2003 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Mozilla
  module NsIFilePicker_1_8Imports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIFilePicker_1_8 < NsISupports
    include_class_members NsIFilePicker_1_8Imports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 15 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IFILEPICKER_IID_STR) { "80faf095-c807-4558-a2cc-185ed70754ea" }
      const_attr_reader  :NS_IFILEPICKER_IID_STR
      
      const_set_lazy(:NS_IFILEPICKER_IID) { NsID.new(NS_IFILEPICKER_IID_STR) }
      const_attr_reader  :NS_IFILEPICKER_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    class_module.module_eval {
      const_set_lazy(:ModeOpen) { 0 }
      const_attr_reader  :ModeOpen
      
      const_set_lazy(:ModeSave) { 1 }
      const_attr_reader  :ModeSave
      
      const_set_lazy(:ModeGetFolder) { 2 }
      const_attr_reader  :ModeGetFolder
      
      const_set_lazy(:ModeOpenMultiple) { 3 }
      const_attr_reader  :ModeOpenMultiple
      
      const_set_lazy(:ReturnOK) { 0 }
      const_attr_reader  :ReturnOK
      
      const_set_lazy(:ReturnCancel) { 1 }
      const_attr_reader  :ReturnCancel
      
      const_set_lazy(:ReturnReplace) { 2 }
      const_attr_reader  :ReturnReplace
      
      const_set_lazy(:FilterAll) { 1 }
      const_attr_reader  :FilterAll
      
      const_set_lazy(:FilterHTML) { 2 }
      const_attr_reader  :FilterHTML
      
      const_set_lazy(:FilterText) { 4 }
      const_attr_reader  :FilterText
      
      const_set_lazy(:FilterImages) { 8 }
      const_attr_reader  :FilterImages
      
      const_set_lazy(:FilterXML) { 16 }
      const_attr_reader  :FilterXML
      
      const_set_lazy(:FilterXUL) { 32 }
      const_attr_reader  :FilterXUL
      
      const_set_lazy(:FilterApps) { 64 }
      const_attr_reader  :FilterApps
    }
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Int] }
    # int
    # int
    def _init(parent, title, mode)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, parent, title, mode)
    end
    
    typesig { [::Java::Int] }
    def _append_filters(filter_mask)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, filter_mask)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _append_filter(title, filter)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, title, filter)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_default_string(a_default_string)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_default_string)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_default_string(a_default_string)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_default_string)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_default_extension(a_default_extension)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_default_extension)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_default_extension(a_default_extension)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_default_extension)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_filter_index(a_filter_index)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, a_filter_index)
    end
    
    typesig { [::Java::Int] }
    def _set_filter_index(a_filter_index)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, a_filter_index)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_display_directory(a_display_directory)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 10, get_address, a_display_directory)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_display_directory(a_display_directory)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 11, get_address, a_display_directory)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_file(a_file)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 12, get_address, a_file)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_file_url(a_file_url)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 13, get_address, a_file_url)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_files(a_files)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 14, get_address, a_files)
    end
    
    typesig { [::Java::Long] }
    # int
    def _show(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 15, get_address, _retval)
    end
    
    private
    alias_method :initialize_ns_ifile_picker_1_8, :initialize
  end
  
end
