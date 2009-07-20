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
  module NsIAppShellImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIAppShell < NsISupports
    include_class_members NsIAppShellImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 8 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IAPPSHELL_IID_STR) { "a0757c31-eeac-11d1-9ec1-00aa002fb821" }
      const_attr_reader  :NS_IAPPSHELL_IID_STR
      
      const_set_lazy(:NS_IAPPSHELL_IID) { NsID.new(NS_IAPPSHELL_IID_STR) }
      const_attr_reader  :NS_IAPPSHELL_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Long)] }
    # int
    # int
    def _create(argc, argv)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, argc, argv)
    end
    
    typesig { [] }
    def _run
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address)
    end
    
    typesig { [] }
    def _spinup
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address)
    end
    
    typesig { [] }
    def _spindown
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address)
    end
    
    typesig { [::Java::Long, ::Java::Int] }
    # int
    def _listen_to_event_queue(a_queue, a_listen)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_queue, a_listen)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Long)] }
    # int
    # int
    def _get_native_event(a_real_event, a_event)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_real_event, a_event)
    end
    
    typesig { [::Java::Int, ::Java::Long] }
    # int
    def _dispatch_native_event(a_real_event, a_event)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_real_event, a_event)
    end
    
    typesig { [] }
    def _exit
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address)
    end
    
    private
    alias_method :initialize_ns_iapp_shell, :initialize
  end
  
end
