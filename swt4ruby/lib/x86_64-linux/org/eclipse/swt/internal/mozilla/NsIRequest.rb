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
  module NsIRequestImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIRequest < NsISupports
    include_class_members NsIRequestImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 10 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IREQUEST_IID_STR) { "ef6bfbd2-fd46-48d8-96b7-9f8f0fd387fe" }
      const_attr_reader  :NS_IREQUEST_IID_STR
      
      const_set_lazy(:NS_IREQUEST_IID) { NsID.new(NS_IREQUEST_IID_STR) }
      const_attr_reader  :NS_IREQUEST_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_name(a_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_name)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _is_pending(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_status(a_status)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_status)
    end
    
    typesig { [::Java::Int] }
    def _cancel(a_status)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_status)
    end
    
    typesig { [] }
    def _suspend
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address)
    end
    
    typesig { [] }
    def _resume
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_load_group(a_load_group)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_load_group)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_load_group(a_load_group)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, a_load_group)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_load_flags(a_load_flags)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, a_load_flags)
    end
    
    typesig { [::Java::Int] }
    def _set_load_flags(a_load_flags)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 10, get_address, a_load_flags)
    end
    
    class_module.module_eval {
      const_set_lazy(:LOAD_NORMAL) { 0 }
      const_attr_reader  :LOAD_NORMAL
      
      const_set_lazy(:LOAD_BACKGROUND) { 1 }
      const_attr_reader  :LOAD_BACKGROUND
      
      const_set_lazy(:INHIBIT_CACHING) { 128 }
      const_attr_reader  :INHIBIT_CACHING
      
      const_set_lazy(:INHIBIT_PERSISTENT_CACHING) { 256 }
      const_attr_reader  :INHIBIT_PERSISTENT_CACHING
      
      const_set_lazy(:LOAD_BYPASS_CACHE) { 512 }
      const_attr_reader  :LOAD_BYPASS_CACHE
      
      const_set_lazy(:LOAD_FROM_CACHE) { 1024 }
      const_attr_reader  :LOAD_FROM_CACHE
      
      const_set_lazy(:VALIDATE_ALWAYS) { 2048 }
      const_attr_reader  :VALIDATE_ALWAYS
      
      const_set_lazy(:VALIDATE_NEVER) { 4096 }
      const_attr_reader  :VALIDATE_NEVER
      
      const_set_lazy(:VALIDATE_ONCE_PER_SESSION) { 8192 }
      const_attr_reader  :VALIDATE_ONCE_PER_SESSION
    }
    
    private
    alias_method :initialize_ns_irequest, :initialize
  end
  
end
