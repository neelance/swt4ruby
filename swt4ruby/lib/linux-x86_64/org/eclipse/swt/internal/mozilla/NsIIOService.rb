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
  module NsIIOServiceImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIIOService < NsIIOServiceImports.const_get :NsISupports
    include_class_members NsIIOServiceImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 10 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IIOSERVICE_IID_STR) { "bddeda3f-9020-4d12-8c70-984ee9f7935e" }
      const_attr_reader  :NS_IIOSERVICE_IID_STR
      
      const_set_lazy(:NS_IIOSERVICE_IID) { NsID.new(NS_IIOSERVICE_IID_STR) }
      const_attr_reader  :NS_IIOSERVICE_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Long)] }
    # int
    def _get_protocol_handler(a_scheme, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_scheme, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
    def _get_protocol_flags(a_scheme, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_scheme, _retval)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Byte), ::Java::Long, Array.typed(::Java::Long)] }
    # int
    # int
    # int
    def _new_uri(a_spec, a_origin_charset, a_base_uri, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_spec, a_origin_charset, a_base_uri, _retval)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Long)] }
    # int
    # int
    def _new_file_uri(a_file, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_file, _retval)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Long)] }
    # int
    # int
    def _new_channel_from_uri(a_uri, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_uri, _retval)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Byte), ::Java::Long, Array.typed(::Java::Long)] }
    # int
    # int
    # int
    def _new_channel(a_spec, a_origin_charset, a_base_uri, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_spec, a_origin_charset, a_base_uri, _retval)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_offline(a_offline)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_offline)
    end
    
    typesig { [::Java::Int] }
    def _set_offline(a_offline)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, a_offline)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
    def _allow_port(a_port, a_scheme, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, a_port, a_scheme, _retval)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _extract_scheme(url_string, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 10, get_address, url_string, _retval)
    end
    
    private
    alias_method :initialize_ns_iioservice, :initialize
  end
  
end
