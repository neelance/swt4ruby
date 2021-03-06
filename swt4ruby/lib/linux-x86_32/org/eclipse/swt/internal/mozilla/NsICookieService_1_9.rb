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
  module NsICookieService_1_9Imports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsICookieService_1_9 < NsICookieService_1_9Imports.const_get :NsISupports
    include_class_members NsICookieService_1_9Imports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 4 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_ICOOKIESERVICE_IID_STR) { "2aaa897a-293c-4d2b-a657-8c9b7136996d" }
      const_attr_reader  :NS_ICOOKIESERVICE_IID_STR
      
      const_set_lazy(:NS_ICOOKIESERVICE_IID) { NsID.new(NS_ICOOKIESERVICE_IID_STR) }
      const_attr_reader  :NS_ICOOKIESERVICE_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    # long
    # long
    # long
    def _get_cookie_string(a_uri, a_channel, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_uri, a_channel, _retval)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    # long
    # long
    # long
    # long
    def _get_cookie_string_from_http(a_uri, a_first_uri, a_channel, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_uri, a_first_uri, a_channel, _retval)
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
    # long
    # long
    # long
    def _set_cookie_string(a_uri, a_prompt, a_cookie, a_channel)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_uri, a_prompt, a_cookie, a_channel)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
    # long
    # long
    # long
    # long
    def _set_cookie_string_from_http(a_uri, a_first_uri, a_prompt, a_cookie, a_server_time, a_channel)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_uri, a_first_uri, a_prompt, a_cookie, a_server_time, a_channel)
    end
    
    private
    alias_method :initialize_ns_icookie_service_1_9, :initialize
  end
  
end
