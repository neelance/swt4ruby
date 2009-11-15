require "rjava"

module Org::Eclipse::Swt::Internal::Mozilla
  module NsICookieServiceImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
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
  class NsICookieService < NsICookieServiceImports.const_get :NsISupports
    include_class_members NsICookieServiceImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 5 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_ICOOKIESERVICE_IID_STR) { "011c3190-1434-11d6-a618-0010a401eb10" }
      const_attr_reader  :NS_ICOOKIESERVICE_IID_STR
      
      const_set_lazy(:NS_ICOOKIESERVICE_IID) { NsID.new(NS_ICOOKIESERVICE_IID_STR) }
      const_attr_reader  :NS_ICOOKIESERVICE_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Long, ::Java::Long, Array.typed(::Java::Long)] }
    # int
    # int
    # int
    def _get_cookie_string(a_uri, a_channel, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_uri, a_channel, _retval)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, Array.typed(::Java::Long)] }
    # int
    # int
    # int
    # int
    def _get_cookie_string_from_http(a_uri, a_first_uri, a_channel, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_uri, a_first_uri, a_channel, _retval)
    end
    
    typesig { [::Java::Long, ::Java::Long, Array.typed(::Java::Byte), ::Java::Long] }
    # int
    # int
    # int
    def _set_cookie_string(a_uri, a_prompt, a_cookie, a_channel)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_uri, a_prompt, a_cookie, a_channel)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Long] }
    # int
    # int
    # int
    # int
    def _set_cookie_string_from_http(a_uri, a_first_uri, a_prompt, a_cookie, a_server_time, a_channel)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_uri, a_first_uri, a_prompt, a_cookie, a_server_time, a_channel)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_cookie_icon_is_visible(a_cookie_icon_is_visible)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_cookie_icon_is_visible)
    end
    
    private
    alias_method :initialize_ns_icookie_service, :initialize
  end
  
end
