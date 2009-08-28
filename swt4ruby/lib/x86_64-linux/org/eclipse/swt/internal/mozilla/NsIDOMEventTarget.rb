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
  module NsIDOMEventTargetImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIDOMEventTarget < NsISupports
    include_class_members NsIDOMEventTargetImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 3 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IDOMEVENTTARGET_IID_STR) { "1c773b30-d1cf-11d2-bd95-00805f8ae3f4" }
      const_attr_reader  :NS_IDOMEVENTTARGET_IID_STR
      
      const_set_lazy(:NS_IDOMEVENTTARGET_IID) { NsID.new(NS_IDOMEVENTTARGET_IID_STR) }
      const_attr_reader  :NS_IDOMEVENTTARGET_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Int] }
    # int
    # int
    def _add_event_listener(type, listener, use_capture)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, type, listener, use_capture)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Int] }
    # int
    # int
    def _remove_event_listener(type, listener, use_capture)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, type, listener, use_capture)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Int)] }
    # int
    def _dispatch_event(evt, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, evt, _retval)
    end
    
    private
    alias_method :initialize_ns_idomevent_target, :initialize
  end
  
end
