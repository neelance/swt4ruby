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
  module NsIPromptServiceImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIPromptService < NsIPromptServiceImports.const_get :NsISupports
    include_class_members NsIPromptServiceImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 9 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IPROMPTSERVICE_IID_STR) { "1630c61a-325e-49ca-8759-a31b16c47aa5" }
      const_attr_reader  :NS_IPROMPTSERVICE_IID_STR
      
      const_set_lazy(:NS_IPROMPTSERVICE_IID) { NsID.new(NS_IPROMPTSERVICE_IID_STR) }
      const_attr_reader  :NS_IPROMPTSERVICE_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char)] }
    # int
    def _alert(a_parent, a_dialog_title, a_text)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_parent, a_dialog_title, a_text)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int)] }
    # int
    def _alert_check(a_parent, a_dialog_title, a_text, a_check_msg, a_check_state)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_parent, a_dialog_title, a_text, a_check_msg, a_check_state)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int)] }
    # int
    def _confirm(a_parent, a_dialog_title, a_text, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_parent, a_dialog_title, a_text, _retval)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    # int
    def _confirm_check(a_parent, a_dialog_title, a_text, a_check_msg, a_check_state, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_parent, a_dialog_title, a_text, a_check_msg, a_check_state, _retval)
    end
    
    class_module.module_eval {
      const_set_lazy(:BUTTON_POS_0) { 1 }
      const_attr_reader  :BUTTON_POS_0
      
      const_set_lazy(:BUTTON_POS_1) { 256 }
      const_attr_reader  :BUTTON_POS_1
      
      const_set_lazy(:BUTTON_POS_2) { 65536 }
      const_attr_reader  :BUTTON_POS_2
      
      const_set_lazy(:BUTTON_TITLE_OK) { 1 }
      const_attr_reader  :BUTTON_TITLE_OK
      
      const_set_lazy(:BUTTON_TITLE_CANCEL) { 2 }
      const_attr_reader  :BUTTON_TITLE_CANCEL
      
      const_set_lazy(:BUTTON_TITLE_YES) { 3 }
      const_attr_reader  :BUTTON_TITLE_YES
      
      const_set_lazy(:BUTTON_TITLE_NO) { 4 }
      const_attr_reader  :BUTTON_TITLE_NO
      
      const_set_lazy(:BUTTON_TITLE_SAVE) { 5 }
      const_attr_reader  :BUTTON_TITLE_SAVE
      
      const_set_lazy(:BUTTON_TITLE_DONT_SAVE) { 6 }
      const_attr_reader  :BUTTON_TITLE_DONT_SAVE
      
      const_set_lazy(:BUTTON_TITLE_REVERT) { 7 }
      const_attr_reader  :BUTTON_TITLE_REVERT
      
      const_set_lazy(:BUTTON_TITLE_IS_STRING) { 127 }
      const_attr_reader  :BUTTON_TITLE_IS_STRING
      
      const_set_lazy(:BUTTON_POS_0_DEFAULT) { 0 }
      const_attr_reader  :BUTTON_POS_0_DEFAULT
      
      const_set_lazy(:BUTTON_POS_1_DEFAULT) { 16777216 }
      const_attr_reader  :BUTTON_POS_1_DEFAULT
      
      const_set_lazy(:BUTTON_POS_2_DEFAULT) { 33554432 }
      const_attr_reader  :BUTTON_POS_2_DEFAULT
      
      const_set_lazy(:BUTTON_DELAY_ENABLE) { 67108864 }
      const_attr_reader  :BUTTON_DELAY_ENABLE
      
      const_set_lazy(:STD_OK_CANCEL_BUTTONS) { 513 }
      const_attr_reader  :STD_OK_CANCEL_BUTTONS
      
      const_set_lazy(:STD_YES_NO_BUTTONS) { 1027 }
      const_attr_reader  :STD_YES_NO_BUTTONS
    }
    
    typesig { [::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    # int
    def _confirm_ex(a_parent, a_dialog_title, a_text, a_button_flags, a_button0title, a_button1title, a_button2title, a_check_msg, a_check_state, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_parent, a_dialog_title, a_text, a_button_flags, a_button0title, a_button1title, a_button2title, a_check_msg, a_check_state, _retval)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Long), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    # int
    # int
    def _prompt(a_parent, a_dialog_title, a_text, a_value, a_check_msg, a_check_state, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_parent, a_dialog_title, a_text, a_value, a_check_msg, a_check_state, _retval)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Long), Array.typed(::Java::Long), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    # int
    # int
    # int
    def _prompt_username_and_password(a_parent, a_dialog_title, a_text, a_username, a_password, a_check_msg, a_check_state, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_parent, a_dialog_title, a_text, a_username, a_password, a_check_msg, a_check_state, _retval)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Long), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    # int
    # int
    def _prompt_password(a_parent, a_dialog_title, a_text, a_password, a_check_msg, a_check_state, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, a_parent, a_dialog_title, a_text, a_password, a_check_msg, a_check_state, _retval)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Long), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    # int
    # int
    def _select(a_parent, a_dialog_title, a_text, a_count, a_select_list, a_out_selection, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, a_parent, a_dialog_title, a_text, a_count, a_select_list, a_out_selection, _retval)
    end
    
    private
    alias_method :initialize_ns_iprompt_service, :initialize
  end
  
end
