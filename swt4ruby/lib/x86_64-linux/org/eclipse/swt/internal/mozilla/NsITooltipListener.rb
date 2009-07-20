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
# -  Copyright (C) 2004, 2005 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Mozilla
  module NsITooltipListenerImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsITooltipListener < NsISupports
    include_class_members NsITooltipListenerImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 2 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_ITOOLTIPLISTENER_IID_STR) { "44b78386-1dd2-11b2-9ad2-e4eee2ca1916" }
      const_attr_reader  :NS_ITOOLTIPLISTENER_IID_STR
      
      const_set_lazy(:NS_ITOOLTIPLISTENER_IID) { NsID.new(NS_ITOOLTIPLISTENER_IID_STR) }
      const_attr_reader  :NS_ITOOLTIPLISTENER_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
    def _on_show_tooltip(a_xcoords, a_ycoords, a_tip_text)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_xcoords, a_ycoords, a_tip_text)
    end
    
    typesig { [] }
    def _on_hide_tooltip
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address)
    end
    
    private
    alias_method :initialize_ns_itooltip_listener, :initialize
  end
  
end
