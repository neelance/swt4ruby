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
  module NsIWebBrowserFocusImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIWebBrowserFocus < NsIWebBrowserFocusImports.const_get :NsISupports
    include_class_members NsIWebBrowserFocusImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 8 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IWEBBROWSERFOCUS_IID_STR) { "9c5d3c58-1dd1-11b2-a1c9-f3699284657a" }
      const_attr_reader  :NS_IWEBBROWSERFOCUS_IID_STR
      
      const_set_lazy(:NS_IWEBBROWSERFOCUS_IID) { NsID.new(NS_IWEBBROWSERFOCUS_IID_STR) }
      const_attr_reader  :NS_IWEBBROWSERFOCUS_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [] }
    def _activate
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address)
    end
    
    typesig { [] }
    def _deactivate
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address)
    end
    
    typesig { [] }
    def _set_focus_at_first_element
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address)
    end
    
    typesig { [] }
    def _set_focus_at_last_element
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_focused_window(a_focused_window)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_focused_window)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_focused_window(a_focused_window)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_focused_window)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_focused_element(a_focused_element)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_focused_element)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_focused_element(a_focused_element)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, a_focused_element)
    end
    
    private
    alias_method :initialize_ns_iweb_browser_focus, :initialize
  end
  
end
