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
# -  Copyright (C) 2003, 2005 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Mozilla
  module NsIWebBrowserImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIWebBrowser < NsISupports
    include_class_members NsIWebBrowserImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 7 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IWEBBROWSER_IID_STR) { "69e5df00-7b8b-11d3-af61-00a024ffc08c" }
      const_attr_reader  :NS_IWEBBROWSER_IID_STR
      
      const_set_lazy(:NS_IWEBBROWSER_IID) { NsID.new(NS_IWEBBROWSER_IID_STR) }
      const_attr_reader  :NS_IWEBBROWSER_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int, NsID] }
    # long
    def _add_web_browser_listener(a_listener, a_iid)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_listener, a_iid)
    end
    
    typesig { [::Java::Int, NsID] }
    # long
    def _remove_web_browser_listener(a_listener, a_iid)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_listener, a_iid)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_container_window(a_container_window)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_container_window)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_container_window(a_container_window)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_container_window)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_parent_uricontent_listener(a_parent_uricontent_listener)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_parent_uricontent_listener)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_parent_uricontent_listener(a_parent_uricontent_listener)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_parent_uricontent_listener)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_content_domwindow(a_content_domwindow)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_content_domwindow)
    end
    
    private
    alias_method :initialize_ns_iweb_browser, :initialize
  end
  
end
