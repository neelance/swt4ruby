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
  module NsIScriptSecurityManager_1_9_1Imports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  # public int GetPrincipalFromContext(long /*int*/ cx, long /*int*/[] _retval NS_OUTPARAM) {
  # return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 24, getAddress(), cx, _retval NS_OUTPARAM);
  # }
  # public int GetChannelPrincipal(long /*int*/ aChannel, long /*int*/[] _retval NS_OUTPARAM) {
  # return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 25, getAddress(), aChannel, _retval NS_OUTPARAM);
  # }
  # public int IsSystemPrincipal(long /*int*/ aPrincipal, int[] _retval NS_OUTPARAM) {
  # return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 26, getAddress(), aPrincipal, _retval NS_OUTPARAM);
  # }
  class NsIScriptSecurityManager_1_9_1 < NsIXPCSecurityManager
    include_class_members NsIScriptSecurityManager_1_9_1Imports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsIXPCSecurityManager::LAST_METHOD_ID + 26 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_ISCRIPTSECURITYMANAGER_IID_STR) { "f8e350b9-9f31-451a-8c8f-d10fea26b780" }
      const_attr_reader  :NS_ISCRIPTSECURITYMANAGER_IID_STR
      
      const_set_lazy(:NS_ISCRIPTSECURITYMANAGER_IID) { NsID.new(NS_ISCRIPTSECURITYMANAGER_IID_STR) }
      const_attr_reader  :NS_ISCRIPTSECURITYMANAGER_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Long, ::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
    # public int CheckPropertyAccess(long /*int*/ aJSContext, long /*int*/ aJSObject, byte[] aClassName, !ERROR UNKNOWN C TYPE <jsval >! aProperty, int aAction) {
    # return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 1, getAddress(), aJSContext, aJSObject, aClassName, aProperty, aAction);
    # }
    # int
    # int
    def _check_connect(a_jscontext, a_target_uri, a_class_name, a_property)
      return XPCOM._vtbl_call(NsIXPCSecurityManager::LAST_METHOD_ID + 2, get_address, a_jscontext, a_target_uri, a_class_name, a_property)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _check_load_urifrom_script(cx, uri)
      return XPCOM._vtbl_call(NsIXPCSecurityManager::LAST_METHOD_ID + 3, get_address, cx, uri)
    end
    
    class_module.module_eval {
      const_set_lazy(:STANDARD) { 0 }
      const_attr_reader  :STANDARD
      
      const_set_lazy(:LOAD_IS_AUTOMATIC_DOCUMENT_REPLACEMENT) { 1 }
      const_attr_reader  :LOAD_IS_AUTOMATIC_DOCUMENT_REPLACEMENT
      
      const_set_lazy(:ALLOW_CHROME) { 2 }
      const_attr_reader  :ALLOW_CHROME
      
      const_set_lazy(:DISALLOW_INHERIT_PRINCIPAL) { 4 }
      const_attr_reader  :DISALLOW_INHERIT_PRINCIPAL
      
      const_set_lazy(:DISALLOW_SCRIPT_OR_DATA) { 4 }
      const_attr_reader  :DISALLOW_SCRIPT_OR_DATA
      
      const_set_lazy(:DISALLOW_SCRIPT) { 8 }
      const_attr_reader  :DISALLOW_SCRIPT
    }
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Int] }
    # int
    # int
    def _check_load_uriwith_principal(a_principal, uri, flags)
      return XPCOM._vtbl_call(NsIXPCSecurityManager::LAST_METHOD_ID + 4, get_address, a_principal, uri, flags)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Int] }
    # int
    # int
    def _check_load_uri(from, uri, flags)
      return XPCOM._vtbl_call(NsIXPCSecurityManager::LAST_METHOD_ID + 5, get_address, from, uri, flags)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Int] }
    # int
    # int
    def _check_load_uristr_with_principal(a_principal, uri, flags)
      return XPCOM._vtbl_call(NsIXPCSecurityManager::LAST_METHOD_ID + 6, get_address, a_principal, uri, flags)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Int] }
    # int
    # int
    def _check_load_uristr(from, uri, flags)
      return XPCOM._vtbl_call(NsIXPCSecurityManager::LAST_METHOD_ID + 7, get_address, from, uri, flags)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def _check_function_access(cx, fun_obj, target_obj)
      return XPCOM._vtbl_call(NsIXPCSecurityManager::LAST_METHOD_ID + 8, get_address, cx, fun_obj, target_obj)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # public int CanExecuteScripts(long /*int*/ cx, long /*int*/ principal, int[] _retval NS_OUTPARAM) {
    # return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 9, getAddress(), cx, principal, _retval NS_OUTPARAM);
    # }
    # public int GetSubjectPrincipal(long /*int*/[] _retval NS_OUTPARAM) {
    # return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 10, getAddress(), _retval NS_OUTPARAM);
    # }
    # int
    def _get_system_principal(_retval)
      return XPCOM._vtbl_call(NsIXPCSecurityManager::LAST_METHOD_ID + 11, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    # public int GetCertificatePrincipal(long /*int*/ aCertFingerprint, long /*int*/ aSubjectName, long /*int*/ aPrettyName, long /*int*/ aCert, long /*int*/ aURI, long /*int*/[] _retval NS_OUTPARAM) {
    # return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 12, getAddress(), aCertFingerprint, aSubjectName, aPrettyName, aCert, aURI, _retval NS_OUTPARAM);
    # }
    # public int GetCodebasePrincipal(long /*int*/ aURI, long /*int*/[] _retval NS_OUTPARAM) {
    # return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 13, getAddress(), aURI, _retval NS_OUTPARAM);
    # }
    # public int RequestCapability(long /*int*/ principal, byte[] capability, long /*int*/ _retval NS_OUTPARAM) {
    # return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 14, getAddress(), principal, capability, _retval NS_OUTPARAM);
    # }
    # public int IsCapabilityEnabled(byte[] capability, int[] _retval NS_OUTPARAM) {
    # return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 15, getAddress(), capability, _retval NS_OUTPARAM);
    # }
    def _enable_capability(capability)
      return XPCOM._vtbl_call(NsIXPCSecurityManager::LAST_METHOD_ID + 16, get_address, capability)
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def _revert_capability(capability)
      return XPCOM._vtbl_call(NsIXPCSecurityManager::LAST_METHOD_ID + 17, get_address, capability)
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def _disable_capability(capability)
      return XPCOM._vtbl_call(NsIXPCSecurityManager::LAST_METHOD_ID + 18, get_address, capability)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # public int SetCanEnableCapability(long /*int*/ certificateFingerprint, byte[] capability, !ERROR UNKNOWN C TYPE <PRInt16 >! canEnable) {
    # return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 19, getAddress(), certificateFingerprint, capability, canEnable);
    # }
    # public int GetObjectPrincipal(long /*int*/ cx, long /*int*/ obj, long /*int*/[] _retval NS_OUTPARAM) {
    # return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 20, getAddress(), cx, obj, _retval NS_OUTPARAM);
    # }
    # public int SubjectPrincipalIsSystem(int[] _retval NS_OUTPARAM) {
    # return XPCOM.VtblCall(nsIXPCSecurityManager.LAST_METHOD_ID + 21, getAddress(), _retval NS_OUTPARAM);
    # }
    # int
    # int
    def _check_same_origin(a_jscontext, a_target_uri)
      return XPCOM._vtbl_call(NsIXPCSecurityManager::LAST_METHOD_ID + 22, get_address, a_jscontext, a_target_uri)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Int] }
    # int
    # int
    def _check_same_origin_uri(a_source_uri, a_target_uri, report_error)
      return XPCOM._vtbl_call(NsIXPCSecurityManager::LAST_METHOD_ID + 23, get_address, a_source_uri, a_target_uri, report_error)
    end
    
    private
    alias_method :initialize_ns_iscript_security_manager_1_9_1, :initialize
  end
  
end
