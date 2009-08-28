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
  module NsIPromptService2Imports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIPromptService2 < NsIPromptService
    include_class_members NsIPromptService2Imports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsIPromptService::LAST_METHOD_ID + 2 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IPROMPTSERVICE2_IID_STR) { "cf86d196-dbee-4482-9dfa-3477aa128319" }
      const_attr_reader  :NS_IPROMPTSERVICE2_IID_STR
      
      const_set_lazy(:NS_IPROMPTSERVICE2_IID) { NsID.new(NS_IPROMPTSERVICE2_IID_STR) }
      const_attr_reader  :NS_IPROMPTSERVICE2_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    # int
    # int
    # int
    def _prompt_auth(a_parent, a_channel, level, auth_info, checkbox_label, check_value, _retval)
      return XPCOM._vtbl_call(NsIPromptService::LAST_METHOD_ID + 1, get_address, a_parent, a_channel, level, auth_info, checkbox_label, check_value, _retval)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Long)] }
    # int
    # int
    # int
    # int
    # int
    # int
    def _async_prompt_auth(a_parent, a_channel, a_callback, a_context, level, auth_info, checkbox_label, check_value, _retval)
      return XPCOM._vtbl_call(NsIPromptService::LAST_METHOD_ID + 2, get_address, a_parent, a_channel, a_callback, a_context, level, auth_info, checkbox_label, check_value, _retval)
    end
    
    private
    alias_method :initialize_ns_iprompt_service2, :initialize
  end
  
end
