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
  module NsIURIImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIURI < NsIURIImports.const_get :NsISupports
    include_class_members NsIURIImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 26 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IURI_IID_STR) { "07a22cc0-0ce5-11d3-9331-00104ba0fd40" }
      const_attr_reader  :NS_IURI_IID_STR
      
      const_set_lazy(:NS_IURI_IID) { NsID.new(NS_IURI_IID_STR) }
      const_attr_reader  :NS_IURI_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_spec(a_spec)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_spec)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_spec(a_spec)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_spec)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_pre_path(a_pre_path)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_pre_path)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_scheme(a_scheme)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_scheme)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_scheme(a_scheme)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_scheme)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_user_pass(a_user_pass)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_user_pass)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_user_pass(a_user_pass)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_user_pass)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_username(a_username)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, a_username)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_username(a_username)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, a_username)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_password(a_password)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 10, get_address, a_password)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_password(a_password)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 11, get_address, a_password)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_host_port(a_host_port)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 12, get_address, a_host_port)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_host_port(a_host_port)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 13, get_address, a_host_port)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_host(a_host)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 14, get_address, a_host)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_host(a_host)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 15, get_address, a_host)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_port(a_port)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 16, get_address, a_port)
    end
    
    typesig { [::Java::Int] }
    def _set_port(a_port)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 17, get_address, a_port)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_path(a_path)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 18, get_address, a_path)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_path(a_path)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 19, get_address, a_path)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Int)] }
    # int
    def _equals(other, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 20, get_address, other, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
    def _scheme_is(scheme, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 21, get_address, scheme, _retval)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _clone(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 22, get_address, _retval)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _resolve(relative_path, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 23, get_address, relative_path, _retval)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_ascii_spec(a_ascii_spec)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 24, get_address, a_ascii_spec)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_ascii_host(a_ascii_host)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 25, get_address, a_ascii_host)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_origin_charset(a_origin_charset)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 26, get_address, a_origin_charset)
    end
    
    private
    alias_method :initialize_ns_iuri, :initialize
  end
  
end
