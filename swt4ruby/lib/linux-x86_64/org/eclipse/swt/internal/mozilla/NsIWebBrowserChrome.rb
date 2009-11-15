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
  module NsIWebBrowserChromeImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIWebBrowserChrome < NsIWebBrowserChromeImports.const_get :NsISupports
    include_class_members NsIWebBrowserChromeImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 10 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IWEBBROWSERCHROME_IID_STR) { "ba434c60-9d52-11d3-afb0-00a024ffc08c" }
      const_attr_reader  :NS_IWEBBROWSERCHROME_IID_STR
      
      const_set_lazy(:NS_IWEBBROWSERCHROME_IID) { NsID.new(NS_IWEBBROWSERCHROME_IID_STR) }
      const_attr_reader  :NS_IWEBBROWSERCHROME_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    class_module.module_eval {
      const_set_lazy(:STATUS_SCRIPT) { 1 }
      const_attr_reader  :STATUS_SCRIPT
      
      const_set_lazy(:STATUS_SCRIPT_DEFAULT) { 2 }
      const_attr_reader  :STATUS_SCRIPT_DEFAULT
      
      const_set_lazy(:STATUS_LINK) { 3 }
      const_attr_reader  :STATUS_LINK
    }
    
    typesig { [::Java::Int, Array.typed(::Java::Char)] }
    def _set_status(status_type, status)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, status_type, status)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_web_browser(a_web_browser)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_web_browser)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_web_browser(a_web_browser)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_web_browser)
    end
    
    class_module.module_eval {
      const_set_lazy(:CHROME_DEFAULT) { 1 }
      const_attr_reader  :CHROME_DEFAULT
      
      const_set_lazy(:CHROME_WINDOW_BORDERS) { 2 }
      const_attr_reader  :CHROME_WINDOW_BORDERS
      
      const_set_lazy(:CHROME_WINDOW_CLOSE) { 4 }
      const_attr_reader  :CHROME_WINDOW_CLOSE
      
      const_set_lazy(:CHROME_WINDOW_RESIZE) { 8 }
      const_attr_reader  :CHROME_WINDOW_RESIZE
      
      const_set_lazy(:CHROME_MENUBAR) { 16 }
      const_attr_reader  :CHROME_MENUBAR
      
      const_set_lazy(:CHROME_TOOLBAR) { 32 }
      const_attr_reader  :CHROME_TOOLBAR
      
      const_set_lazy(:CHROME_LOCATIONBAR) { 64 }
      const_attr_reader  :CHROME_LOCATIONBAR
      
      const_set_lazy(:CHROME_STATUSBAR) { 128 }
      const_attr_reader  :CHROME_STATUSBAR
      
      const_set_lazy(:CHROME_PERSONAL_TOOLBAR) { 256 }
      const_attr_reader  :CHROME_PERSONAL_TOOLBAR
      
      const_set_lazy(:CHROME_SCROLLBARS) { 512 }
      const_attr_reader  :CHROME_SCROLLBARS
      
      const_set_lazy(:CHROME_TITLEBAR) { 1024 }
      const_attr_reader  :CHROME_TITLEBAR
      
      const_set_lazy(:CHROME_EXTRA) { 2048 }
      const_attr_reader  :CHROME_EXTRA
      
      const_set_lazy(:CHROME_WITH_SIZE) { 4096 }
      const_attr_reader  :CHROME_WITH_SIZE
      
      const_set_lazy(:CHROME_WITH_POSITION) { 8192 }
      const_attr_reader  :CHROME_WITH_POSITION
      
      const_set_lazy(:CHROME_WINDOW_MIN) { 16384 }
      const_attr_reader  :CHROME_WINDOW_MIN
      
      const_set_lazy(:CHROME_WINDOW_POPUP) { 32768 }
      const_attr_reader  :CHROME_WINDOW_POPUP
      
      const_set_lazy(:CHROME_WINDOW_RAISED) { 33554432 }
      const_attr_reader  :CHROME_WINDOW_RAISED
      
      const_set_lazy(:CHROME_WINDOW_LOWERED) { 67108864 }
      const_attr_reader  :CHROME_WINDOW_LOWERED
      
      const_set_lazy(:CHROME_CENTER_SCREEN) { 134217728 }
      const_attr_reader  :CHROME_CENTER_SCREEN
      
      const_set_lazy(:CHROME_DEPENDENT) { 268435456 }
      const_attr_reader  :CHROME_DEPENDENT
      
      const_set_lazy(:CHROME_MODAL) { 536870912 }
      const_attr_reader  :CHROME_MODAL
      
      const_set_lazy(:CHROME_OPENAS_DIALOG) { 1073741824 }
      const_attr_reader  :CHROME_OPENAS_DIALOG
      
      const_set_lazy(:CHROME_OPENAS_CHROME) { --2147483648 }
      const_attr_reader  :CHROME_OPENAS_CHROME
      
      const_set_lazy(:CHROME_ALL) { 4094 }
      const_attr_reader  :CHROME_ALL
    }
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_chrome_flags(a_chrome_flags)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_chrome_flags)
    end
    
    typesig { [::Java::Int] }
    def _set_chrome_flags(a_chrome_flags)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_chrome_flags)
    end
    
    typesig { [] }
    def _destroy_browser_window
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def _size_browser_to(a_cx, a_cy)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_cx, a_cy)
    end
    
    typesig { [] }
    def _show_as_modal
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _is_window_modal(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, _retval)
    end
    
    typesig { [::Java::Int] }
    def _exit_modal_event_loop(a_status)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 10, get_address, a_status)
    end
    
    private
    alias_method :initialize_ns_iweb_browser_chrome, :initialize
  end
  
end
