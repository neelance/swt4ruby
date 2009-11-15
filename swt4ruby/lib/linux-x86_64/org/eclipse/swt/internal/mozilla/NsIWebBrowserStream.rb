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
# -  Copyright (C) 2003, 2009 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Mozilla
  module NsIWebBrowserStreamImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIWebBrowserStream < NsIWebBrowserStreamImports.const_get :NsISupports
    include_class_members NsIWebBrowserStreamImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 3 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IWEBBROWSERSTREAM_IID_STR) { "86d02f0e-219b-4cfc-9c88-bd98d2cce0b8" }
      const_attr_reader  :NS_IWEBBROWSERSTREAM_IID_STR
      
      const_set_lazy(:NS_IWEBBROWSERSTREAM_IID) { NsID.new(NS_IWEBBROWSERSTREAM_IID_STR) }
      const_attr_reader  :NS_IWEBBROWSERSTREAM_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _open_stream(a_base_uri, a_content_type)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_base_uri, a_content_type)
    end
    
    typesig { [::Java::Long, ::Java::Int] }
    # int
    def _append_to_stream(a_data, a_len)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_data, a_len)
    end
    
    typesig { [] }
    def _close_stream
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address)
    end
    
    private
    alias_method :initialize_ns_iweb_browser_stream, :initialize
  end
  
end
