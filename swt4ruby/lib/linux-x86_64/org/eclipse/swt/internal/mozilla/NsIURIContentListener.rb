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
  module NsIURIContentListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIURIContentListener < NsISupports
    include_class_members NsIURIContentListenerImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 8 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IURICONTENTLISTENER_IID_STR) { "94928ab3-8b63-11d3-989d-001083010e9b" }
      const_attr_reader  :NS_IURICONTENTLISTENER_IID_STR
      
      const_set_lazy(:NS_IURICONTENTLISTENER_IID) { NsID.new(NS_IURICONTENTLISTENER_IID_STR) }
      const_attr_reader  :NS_IURICONTENTLISTENER_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Int)] }
    # int
    def _on_start_uriopen(a_uri, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_uri, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Long, Array.typed(::Java::Long), Array.typed(::Java::Int)] }
    # int
    # int
    def _do_content(a_content_type, a_is_content_preferred, a_request, a_content_handler, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_content_type, a_is_content_preferred, a_request, a_content_handler, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Long), Array.typed(::Java::Int)] }
    # int
    def _is_preferred(a_content_type, a_desired_content_type, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_content_type, a_desired_content_type, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Long), Array.typed(::Java::Int)] }
    # int
    def _can_handle_content(a_content_type, a_is_content_preferred, a_desired_content_type, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_content_type, a_is_content_preferred, a_desired_content_type, _retval)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_load_cookie(a_load_cookie)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_load_cookie)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_load_cookie(a_load_cookie)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_load_cookie)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_parent_content_listener(a_parent_content_listener)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_parent_content_listener)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_parent_content_listener(a_parent_content_listener)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, a_parent_content_listener)
    end
    
    private
    alias_method :initialize_ns_iuricontent_listener, :initialize
  end
  
end
