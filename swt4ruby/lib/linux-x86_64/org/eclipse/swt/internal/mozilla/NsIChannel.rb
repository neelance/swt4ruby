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
  module NsIChannelImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIChannel < NsIChannelImports.const_get :NsIRequest
    include_class_members NsIChannelImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsIRequest::LAST_METHOD_ID + 16 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_ICHANNEL_IID_STR) { "c63a055a-a676-4e71-bf3c-6cfa11082018" }
      const_attr_reader  :NS_ICHANNEL_IID_STR
      
      const_set_lazy(:NS_ICHANNEL_IID) { NsID.new(NS_ICHANNEL_IID_STR) }
      const_attr_reader  :NS_ICHANNEL_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_original_uri(a_original_uri)
      return XPCOM._vtbl_call(NsIRequest::LAST_METHOD_ID + 1, get_address, a_original_uri)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_original_uri(a_original_uri)
      return XPCOM._vtbl_call(NsIRequest::LAST_METHOD_ID + 2, get_address, a_original_uri)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_uri(a_uri)
      return XPCOM._vtbl_call(NsIRequest::LAST_METHOD_ID + 3, get_address, a_uri)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_owner(a_owner)
      return XPCOM._vtbl_call(NsIRequest::LAST_METHOD_ID + 4, get_address, a_owner)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_owner(a_owner)
      return XPCOM._vtbl_call(NsIRequest::LAST_METHOD_ID + 5, get_address, a_owner)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_notification_callbacks(a_notification_callbacks)
      return XPCOM._vtbl_call(NsIRequest::LAST_METHOD_ID + 6, get_address, a_notification_callbacks)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_notification_callbacks(a_notification_callbacks)
      return XPCOM._vtbl_call(NsIRequest::LAST_METHOD_ID + 7, get_address, a_notification_callbacks)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_security_info(a_security_info)
      return XPCOM._vtbl_call(NsIRequest::LAST_METHOD_ID + 8, get_address, a_security_info)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_content_type(a_content_type)
      return XPCOM._vtbl_call(NsIRequest::LAST_METHOD_ID + 9, get_address, a_content_type)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_content_type(a_content_type)
      return XPCOM._vtbl_call(NsIRequest::LAST_METHOD_ID + 10, get_address, a_content_type)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_content_charset(a_content_charset)
      return XPCOM._vtbl_call(NsIRequest::LAST_METHOD_ID + 11, get_address, a_content_charset)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_content_charset(a_content_charset)
      return XPCOM._vtbl_call(NsIRequest::LAST_METHOD_ID + 12, get_address, a_content_charset)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_content_length(a_content_length)
      return XPCOM._vtbl_call(NsIRequest::LAST_METHOD_ID + 13, get_address, a_content_length)
    end
    
    typesig { [::Java::Int] }
    def _set_content_length(a_content_length)
      return XPCOM._vtbl_call(NsIRequest::LAST_METHOD_ID + 14, get_address, a_content_length)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _open(_retval)
      return XPCOM._vtbl_call(NsIRequest::LAST_METHOD_ID + 15, get_address, _retval)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _async_open(a_listener, a_context)
      return XPCOM._vtbl_call(NsIRequest::LAST_METHOD_ID + 16, get_address, a_listener, a_context)
    end
    
    class_module.module_eval {
      const_set_lazy(:LOAD_DOCUMENT_URI) { 65536 }
      const_attr_reader  :LOAD_DOCUMENT_URI
      
      const_set_lazy(:LOAD_RETARGETED_DOCUMENT_URI) { 131072 }
      const_attr_reader  :LOAD_RETARGETED_DOCUMENT_URI
      
      const_set_lazy(:LOAD_REPLACE) { 262144 }
      const_attr_reader  :LOAD_REPLACE
      
      const_set_lazy(:LOAD_INITIAL_DOCUMENT_URI) { 524288 }
      const_attr_reader  :LOAD_INITIAL_DOCUMENT_URI
      
      const_set_lazy(:LOAD_TARGETED) { 1048576 }
      const_attr_reader  :LOAD_TARGETED
      
      const_set_lazy(:LOAD_CALL_CONTENT_SNIFFERS) { 2097152 }
      const_attr_reader  :LOAD_CALL_CONTENT_SNIFFERS
    }
    
    private
    alias_method :initialize_ns_ichannel, :initialize
  end
  
end
