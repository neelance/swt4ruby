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
  module NsIContextMenuListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIContextMenuListener < NsISupports
    include_class_members NsIContextMenuListenerImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 1 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_ICONTEXTMENULISTENER_IID_STR) { "3478b6b0-3875-11d4-94ef-0020183bf181" }
      const_attr_reader  :NS_ICONTEXTMENULISTENER_IID_STR
      
      const_set_lazy(:NS_ICONTEXTMENULISTENER_IID) { NsID.new(NS_ICONTEXTMENULISTENER_IID_STR) }
      const_attr_reader  :NS_ICONTEXTMENULISTENER_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    class_module.module_eval {
      const_set_lazy(:CONTEXT_NONE) { 0 }
      const_attr_reader  :CONTEXT_NONE
      
      const_set_lazy(:CONTEXT_LINK) { 1 }
      const_attr_reader  :CONTEXT_LINK
      
      const_set_lazy(:CONTEXT_IMAGE) { 2 }
      const_attr_reader  :CONTEXT_IMAGE
      
      const_set_lazy(:CONTEXT_DOCUMENT) { 4 }
      const_attr_reader  :CONTEXT_DOCUMENT
      
      const_set_lazy(:CONTEXT_TEXT) { 8 }
      const_attr_reader  :CONTEXT_TEXT
      
      const_set_lazy(:CONTEXT_INPUT) { 16 }
      const_attr_reader  :CONTEXT_INPUT
    }
    
    typesig { [::Java::Int, ::Java::Long, ::Java::Long] }
    # int
    # int
    def _on_show_context_menu(a_context_flags, a_event, a_node)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_context_flags, a_event, a_node)
    end
    
    private
    alias_method :initialize_ns_icontext_menu_listener, :initialize
  end
  
end
