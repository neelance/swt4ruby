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
  module NsIHelperAppLauncherImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIHelperAppLauncher < NsISupports
    include_class_members NsIHelperAppLauncherImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 9 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IHELPERAPPLAUNCHER_IID_STR) { "9503d0fe-4c9d-11d4-98d0-001083010e9b" }
      const_attr_reader  :NS_IHELPERAPPLAUNCHER_IID_STR
      
      const_set_lazy(:NS_IHELPERAPPLAUNCHER_IID) { NsID.new(NS_IHELPERAPPLAUNCHER_IID_STR) }
      const_attr_reader  :NS_IHELPERAPPLAUNCHER_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_mimeinfo(a_mimeinfo)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_mimeinfo)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_source(a_source)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_source)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_suggested_file_name(a_suggested_file_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_suggested_file_name)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    def _save_to_disk(a_new_file_location, a_remember_this_preference)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_new_file_location, a_remember_this_preference)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    def _launch_with_application(a_application, a_remember_this_preference)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_application, a_remember_this_preference)
    end
    
    typesig { [] }
    def _cancel
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_web_progress_listener(a_web_progress_listener)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_web_progress_listener)
    end
    
    typesig { [] }
    def _close_progress_window
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address)
    end
    
    typesig { [Array.typed(::Java::Int), Array.typed(::Java::Long), Array.typed(::Java::Int)] }
    # long
    # long
    def _get_download_info(a_source_url, a_time_download_started, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, a_source_url, a_time_download_started, _retval)
    end
    
    private
    alias_method :initialize_ns_ihelper_app_launcher, :initialize
  end
  
end
