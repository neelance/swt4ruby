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
  module NsIObserverServiceImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIObserverService < NsIObserverServiceImports.const_get :NsISupports
    include_class_members NsIObserverServiceImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 4 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IOBSERVERSERVICE_IID_STR) { "d07f5192-e3d1-11d2-8acd-00105a1b8860" }
      const_attr_reader  :NS_IOBSERVERSERVICE_IID_STR
      
      const_set_lazy(:NS_IOBSERVERSERVICE_IID) { NsID.new(NS_IOBSERVERSERVICE_IID_STR) }
      const_attr_reader  :NS_IOBSERVERSERVICE_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
    # long
    def _add_observer(an_observer, a_topic, owns_weak)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, an_observer, a_topic, owns_weak)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Byte)] }
    # long
    def _remove_observer(an_observer, a_topic)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, an_observer, a_topic)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Char)] }
    # long
    def _notify_observers(a_subject, a_topic, some_data)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_subject, a_topic, some_data)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
    # long
    def _enumerate_observers(a_topic, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_topic, _retval)
    end
    
    private
    alias_method :initialize_ns_iobserver_service, :initialize
  end
  
end
