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
  module NsIWebNavigationImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIWebNavigation < NsIWebNavigationImports.const_get :NsISupports
    include_class_members NsIWebNavigationImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 13 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IWEBNAVIGATION_IID_STR) { "f5d9e7b0-d930-11d3-b057-00a024ffc08c" }
      const_attr_reader  :NS_IWEBNAVIGATION_IID_STR
      
      const_set_lazy(:NS_IWEBNAVIGATION_IID) { NsID.new(NS_IWEBNAVIGATION_IID_STR) }
      const_attr_reader  :NS_IWEBNAVIGATION_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_can_go_back(a_can_go_back)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_can_go_back)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_can_go_forward(a_can_go_forward)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_can_go_forward)
    end
    
    typesig { [] }
    def _go_back
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address)
    end
    
    typesig { [] }
    def _go_forward
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address)
    end
    
    typesig { [::Java::Int] }
    def _goto_index(index)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, index)
    end
    
    class_module.module_eval {
      const_set_lazy(:LOAD_FLAGS_MASK) { 65535 }
      const_attr_reader  :LOAD_FLAGS_MASK
      
      const_set_lazy(:LOAD_FLAGS_NONE) { 0 }
      const_attr_reader  :LOAD_FLAGS_NONE
      
      const_set_lazy(:LOAD_FLAGS_IS_REFRESH) { 16 }
      const_attr_reader  :LOAD_FLAGS_IS_REFRESH
      
      const_set_lazy(:LOAD_FLAGS_IS_LINK) { 32 }
      const_attr_reader  :LOAD_FLAGS_IS_LINK
      
      const_set_lazy(:LOAD_FLAGS_BYPASS_HISTORY) { 64 }
      const_attr_reader  :LOAD_FLAGS_BYPASS_HISTORY
      
      const_set_lazy(:LOAD_FLAGS_REPLACE_HISTORY) { 128 }
      const_attr_reader  :LOAD_FLAGS_REPLACE_HISTORY
      
      const_set_lazy(:LOAD_FLAGS_BYPASS_CACHE) { 256 }
      const_attr_reader  :LOAD_FLAGS_BYPASS_CACHE
      
      const_set_lazy(:LOAD_FLAGS_BYPASS_PROXY) { 512 }
      const_attr_reader  :LOAD_FLAGS_BYPASS_PROXY
      
      const_set_lazy(:LOAD_FLAGS_CHARSET_CHANGE) { 1024 }
      const_attr_reader  :LOAD_FLAGS_CHARSET_CHANGE
    }
    
    typesig { [Array.typed(::Java::Char), ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def _load_uri(uri, load_flags, referrer, post_data, headers)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, uri, load_flags, referrer, post_data, headers)
    end
    
    typesig { [::Java::Int] }
    def _reload(reload_flags)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, reload_flags)
    end
    
    class_module.module_eval {
      const_set_lazy(:STOP_NETWORK) { 1 }
      const_attr_reader  :STOP_NETWORK
      
      const_set_lazy(:STOP_CONTENT) { 2 }
      const_attr_reader  :STOP_CONTENT
      
      const_set_lazy(:STOP_ALL) { 3 }
      const_attr_reader  :STOP_ALL
    }
    
    typesig { [::Java::Int] }
    def _stop(stop_flags)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, stop_flags)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_document(a_document)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, a_document)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_current_uri(a_current_uri)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 10, get_address, a_current_uri)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_referring_uri(a_referring_uri)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 11, get_address, a_referring_uri)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_session_history(a_session_history)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 12, get_address, a_session_history)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_session_history(a_session_history)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 13, get_address, a_session_history)
    end
    
    private
    alias_method :initialize_ns_iweb_navigation, :initialize
  end
  
end
