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
  module NsIWindowWatcherImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIWindowWatcher < NsISupports
    include_class_members NsIWindowWatcherImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 11 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IWINDOWWATCHER_IID_STR) { "002286a8-494b-43b3-8ddd-49e3fc50622b" }
      const_attr_reader  :NS_IWINDOWWATCHER_IID_STR
      
      const_set_lazy(:NS_IWINDOWWATCHER_IID) { NsID.new(NS_IWINDOWWATCHER_IID_STR) }
      const_attr_reader  :NS_IWINDOWWATCHER_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Long, Array.typed(::Java::Long)] }
    # int
    # int
    # int
    def _open_window(a_parent, a_url, a_name, a_features, a_arguments, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_parent, a_url, a_name, a_features, a_arguments, _retval)
    end
    
    typesig { [::Java::Long] }
    # int
    def _register_notification(a_observer)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_observer)
    end
    
    typesig { [::Java::Long] }
    # int
    def _unregister_notification(a_observer)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_observer)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_window_enumerator(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, _retval)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Long)] }
    # int
    # int
    def _get_new_prompter(a_parent, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_parent, _retval)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Long)] }
    # int
    # int
    def _get_new_auth_prompter(a_parent, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_parent, _retval)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_window_creator(creator)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, creator)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Long)] }
    # int
    # int
    def _get_chrome_for_window(a_window, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, a_window, _retval)
    end
    
    typesig { [Array.typed(::Java::Char), ::Java::Long, Array.typed(::Java::Long)] }
    # int
    # int
    def _get_window_by_name(a_target_name, a_current_window, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, a_target_name, a_current_window, _retval)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_active_window(a_active_window)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 10, get_address, a_active_window)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_active_window(a_active_window)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 11, get_address, a_active_window)
    end
    
    private
    alias_method :initialize_ns_iwindow_watcher, :initialize
  end
  
end
