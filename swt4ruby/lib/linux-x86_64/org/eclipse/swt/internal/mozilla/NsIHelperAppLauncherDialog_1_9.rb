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
  module NsIHelperAppLauncherDialog_1_9Imports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIHelperAppLauncherDialog_1_9 < NsIHelperAppLauncherDialog_1_9Imports.const_get :NsISupports
    include_class_members NsIHelperAppLauncherDialog_1_9Imports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 2 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IHELPERAPPLAUNCHERDIALOG_IID_STR) { "f3704fdc-8ae6-4eba-a3c3-f02958ac0649" }
      const_attr_reader  :NS_IHELPERAPPLAUNCHERDIALOG_IID_STR
      
      const_set_lazy(:NS_IHELPERAPPLAUNCHERDIALOG_IID) { NsID.new(NS_IHELPERAPPLAUNCHERDIALOG_IID_STR) }
      const_attr_reader  :NS_IHELPERAPPLAUNCHERDIALOG_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    class_module.module_eval {
      const_set_lazy(:REASON_CANTHANDLE) { 0 }
      const_attr_reader  :REASON_CANTHANDLE
      
      const_set_lazy(:REASON_SERVERREQUEST) { 1 }
      const_attr_reader  :REASON_SERVERREQUEST
      
      const_set_lazy(:REASON_TYPESNIFFED) { 2 }
      const_attr_reader  :REASON_TYPESNIFFED
    }
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Int] }
    # int
    # int
    def _show(a_launcher, a_window_context, a_reason)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_launcher, a_window_context, a_reason)
    end
    
    typesig { [::Java::Long, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Long)] }
    # int
    # int
    # int
    def _prompt_for_save_to_file(a_launcher, a_window_context, a_default_file_name, a_suggested_file_extension, a_force_prompt, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_launcher, a_window_context, a_default_file_name, a_suggested_file_extension, a_force_prompt, _retval)
    end
    
    private
    alias_method :initialize_ns_ihelper_app_launcher_dialog_1_9, :initialize
  end
  
end
