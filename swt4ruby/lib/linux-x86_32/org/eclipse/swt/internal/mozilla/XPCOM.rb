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
# -  Copyright (C) 2003, 2006 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Mozilla
  module XPCOMImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  # @jniclass flags=cpp
  class XPCOM < XPCOMImports.const_get :C
    include_class_members XPCOMImports
    
    class_module.module_eval {
      const_set_lazy(:MOZILLA_FIVE_HOME) { "MOZILLA_FIVE_HOME" }
      const_attr_reader  :MOZILLA_FIVE_HOME
      
      # $NON-NLS-1$
      const_set_lazy(:MOZILLA_PLUGIN_PATH) { "MOZ_PLUGIN_PATH" }
      const_attr_reader  :MOZILLA_PLUGIN_PATH
      
      # $NON-NLS-1$
      const_set_lazy(:CONTENT_MAYBETEXT) { "application/x-vnd.mozilla.maybe-text" }
      const_attr_reader  :CONTENT_MAYBETEXT
      
      # $NON-NLS-1$
      const_set_lazy(:CONTENT_MULTIPART) { "multipart/x-mixed-replace" }
      const_attr_reader  :CONTENT_MULTIPART
      
      # $NON-NLS-1$
      const_set_lazy(:DOMEVENT_FOCUS) { "focus" }
      const_attr_reader  :DOMEVENT_FOCUS
      
      # $NON-NLS-1$
      const_set_lazy(:DOMEVENT_UNLOAD) { "unload" }
      const_attr_reader  :DOMEVENT_UNLOAD
      
      # $NON-NLS-1$
      const_set_lazy(:DOMEVENT_MOUSEDOWN) { "mousedown" }
      const_attr_reader  :DOMEVENT_MOUSEDOWN
      
      # $NON-NLS-1$
      const_set_lazy(:DOMEVENT_MOUSEUP) { "mouseup" }
      const_attr_reader  :DOMEVENT_MOUSEUP
      
      # $NON-NLS-1$
      const_set_lazy(:DOMEVENT_MOUSEMOVE) { "mousemove" }
      const_attr_reader  :DOMEVENT_MOUSEMOVE
      
      # $NON-NLS-1$
      const_set_lazy(:DOMEVENT_MOUSEDRAG) { "draggesture" }
      const_attr_reader  :DOMEVENT_MOUSEDRAG
      
      # $NON-NLS-1$
      const_set_lazy(:DOMEVENT_MOUSEWHEEL) { "DOMMouseScroll" }
      const_attr_reader  :DOMEVENT_MOUSEWHEEL
      
      # $NON-NLS-1$
      const_set_lazy(:DOMEVENT_MOUSEOVER) { "mouseover" }
      const_attr_reader  :DOMEVENT_MOUSEOVER
      
      # $NON-NLS-1$
      const_set_lazy(:DOMEVENT_MOUSEOUT) { "mouseout" }
      const_attr_reader  :DOMEVENT_MOUSEOUT
      
      # $NON-NLS-1$
      const_set_lazy(:DOMEVENT_KEYUP) { "keyup" }
      const_attr_reader  :DOMEVENT_KEYUP
      
      # $NON-NLS-1$
      const_set_lazy(:DOMEVENT_KEYDOWN) { "keydown" }
      const_attr_reader  :DOMEVENT_KEYDOWN
      
      # $NON-NLS-1$
      const_set_lazy(:DOMEVENT_KEYPRESS) { "keypress" }
      const_attr_reader  :DOMEVENT_KEYPRESS
      
      # $NON-NLS-1$
      # CID constants
      const_set_lazy(:EXTERNAL_CID) { NsID.new("f2c59ad0-bd76-11dd-ad8b-0800200c9a66") }
      const_attr_reader  :EXTERNAL_CID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_APPSHELL_CID) { NsID.new("2d96b3df-c051-11d1-a827-0040959a28c9") }
      const_attr_reader  :NS_APPSHELL_CID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_CATEGORYMANAGER_CID) { NsID.new("16d222a6-1dd2-11b2-b693-f38b02c021b2") }
      const_attr_reader  :NS_CATEGORYMANAGER_CID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_DOWNLOAD_CID) { NsID.new("e3fa9D0a-1dd1-11b2-bdef-8c720b597445") }
      const_attr_reader  :NS_DOWNLOAD_CID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_FILEPICKER_CID) { NsID.new("54ae32f8-1dd2-11b2-a209-df7c505370f8") }
      const_attr_reader  :NS_FILEPICKER_CID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_HELPERAPPLAUNCHERDIALOG_CID) { NsID.new("f68578eb-6ec2-4169-ae19-8c6243f0abe1") }
      const_attr_reader  :NS_HELPERAPPLAUNCHERDIALOG_CID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_INPUTSTREAMCHANNEL_CID) { NsID.new("6ddb050c-0d04-11d4-986e-00c04fa0cf4a") }
      const_attr_reader  :NS_INPUTSTREAMCHANNEL_CID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_IOSERVICE_CID) { NsID.new("9ac9e770-18bc-11d3-9337-00104ba0fd40") }
      const_attr_reader  :NS_IOSERVICE_CID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_LOADGROUP_CID) { NsID.new("e1c61582-2a84-11d3-8cce-0060b0fc14a3") }
      const_attr_reader  :NS_LOADGROUP_CID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_PROMPTSERVICE_CID) { NsID.new("a2112d6a-0e28-421f-b46a-25c0b308cbd0") }
      const_attr_reader  :NS_PROMPTSERVICE_CID
      
      # $NON-NLS-1$
      const_set_lazy(:EXTERNAL_CONTRACTID) { "@eclipse.org/external;1" }
      const_attr_reader  :EXTERNAL_CONTRACTID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_CONTEXTSTACK_CONTRACTID) { "@mozilla.org/js/xpc/ContextStack;1" }
      const_attr_reader  :NS_CONTEXTSTACK_CONTRACTID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_COOKIEMANAGER_CONTRACTID) { "@mozilla.org/cookiemanager;1" }
      const_attr_reader  :NS_COOKIEMANAGER_CONTRACTID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_COOKIESERVICE_CONTRACTID) { "@mozilla.org/cookieService;1" }
      const_attr_reader  :NS_COOKIESERVICE_CONTRACTID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_DIRECTORYSERVICE_CONTRACTID) { "@mozilla.org/file/directory_service;1" }
      const_attr_reader  :NS_DIRECTORYSERVICE_CONTRACTID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_DOMSERIALIZER_CONTRACTID) { "@mozilla.org/xmlextras/xmlserializer;1" }
      const_attr_reader  :NS_DOMSERIALIZER_CONTRACTID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_DOWNLOAD_CONTRACTID) { "@mozilla.org/download;1" }
      const_attr_reader  :NS_DOWNLOAD_CONTRACTID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_FILEPICKER_CONTRACTID) { "@mozilla.org/filepicker;1" }
      const_attr_reader  :NS_FILEPICKER_CONTRACTID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_HELPERAPPLAUNCHERDIALOG_CONTRACTID) { "@mozilla.org/helperapplauncherdialog;1" }
      const_attr_reader  :NS_HELPERAPPLAUNCHERDIALOG_CONTRACTID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_MEMORY_CONTRACTID) { "@mozilla.org/xpcom/memory-service;1" }
      const_attr_reader  :NS_MEMORY_CONTRACTID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_SCRIPTSECURITYMANAGER_CONTRACTID) { "@mozilla.org/scriptsecuritymanager;1" }
      const_attr_reader  :NS_SCRIPTSECURITYMANAGER_CONTRACTID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_OBSERVER_CONTRACTID) { "@mozilla.org/observer-service;1" }
      const_attr_reader  :NS_OBSERVER_CONTRACTID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_PREFLOCALIZEDSTRING_CONTRACTID) { "@mozilla.org/pref-localizedstring;1" }
      const_attr_reader  :NS_PREFLOCALIZEDSTRING_CONTRACTID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_PREFSERVICE_CONTRACTID) { "@mozilla.org/preferences-service;1" }
      const_attr_reader  :NS_PREFSERVICE_CONTRACTID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_PROMPTSERVICE_CONTRACTID) { "@mozilla.org/embedcomp/prompt-service;1" }
      const_attr_reader  :NS_PROMPTSERVICE_CONTRACTID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_TRANSFER_CONTRACTID) { "@mozilla.org/transfer;1" }
      const_attr_reader  :NS_TRANSFER_CONTRACTID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_VARIANT_CONTRACTID) { "@mozilla.org/variant;1" }
      const_attr_reader  :NS_VARIANT_CONTRACTID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_WEBNAVIGATIONINFO_CONTRACTID) { "@mozilla.org/webnavigation-info;1" }
      const_attr_reader  :NS_WEBNAVIGATIONINFO_CONTRACTID
      
      # $NON-NLS-1$
      const_set_lazy(:NS_WINDOWWATCHER_CONTRACTID) { "@mozilla.org/embedcomp/window-watcher;1" }
      const_attr_reader  :NS_WINDOWWATCHER_CONTRACTID
      
      # $NON-NLS-1$
      # directory service constants
      const_set_lazy(:NS_APP_APPLICATION_REGISTRY_DIR) { "AppRegD" }
      const_attr_reader  :NS_APP_APPLICATION_REGISTRY_DIR
      
      # $NON-NLS-1$
      const_set_lazy(:NS_APP_CACHE_PARENT_DIR) { "cachePDir" }
      const_attr_reader  :NS_APP_CACHE_PARENT_DIR
      
      # $NON-NLS-1$
      const_set_lazy(:NS_APP_HISTORY_50_FILE) { "UHist" }
      const_attr_reader  :NS_APP_HISTORY_50_FILE
      
      # $NON-NLS-1$
      const_set_lazy(:NS_APP_LOCALSTORE_50_FILE) { "LclSt" }
      const_attr_reader  :NS_APP_LOCALSTORE_50_FILE
      
      # $NON-NLS-1$
      const_set_lazy(:NS_APP_PLUGINS_DIR_LIST) { "APluginsDL" }
      const_attr_reader  :NS_APP_PLUGINS_DIR_LIST
      
      # $NON-NLS-1$
      const_set_lazy(:NS_APP_PREF_DEFAULTS_50_DIR) { "PrfDef" }
      const_attr_reader  :NS_APP_PREF_DEFAULTS_50_DIR
      
      # $NON-NLS-1$
      const_set_lazy(:NS_APP_PREFS_50_DIR) { "PrefD" }
      const_attr_reader  :NS_APP_PREFS_50_DIR
      
      # $NON-NLS-1$
      const_set_lazy(:NS_APP_PREFS_50_FILE) { "PrefF" }
      const_attr_reader  :NS_APP_PREFS_50_FILE
      
      # $NON-NLS-1$
      const_set_lazy(:NS_APP_USER_CHROME_DIR) { "UChrm" }
      const_attr_reader  :NS_APP_USER_CHROME_DIR
      
      # $NON-NLS-1$
      const_set_lazy(:NS_APP_USER_MIMETYPES_50_FILE) { "UMimTyp" }
      const_attr_reader  :NS_APP_USER_MIMETYPES_50_FILE
      
      # $NON-NLS-1$
      const_set_lazy(:NS_APP_USER_PROFILE_50_DIR) { "ProfD" }
      const_attr_reader  :NS_APP_USER_PROFILE_50_DIR
      
      # $NON-NLS-1$
      const_set_lazy(:NS_GRE_COMPONENT_DIR) { "GreComsD" }
      const_attr_reader  :NS_GRE_COMPONENT_DIR
      
      # $NON-NLS-1$
      const_set_lazy(:NS_GRE_DIR) { "GreD" }
      const_attr_reader  :NS_GRE_DIR
      
      # $NON-NLS-1$
      const_set_lazy(:NS_OS_CURRENT_PROCESS_DIR) { "CurProcD" }
      const_attr_reader  :NS_OS_CURRENT_PROCESS_DIR
      
      # $NON-NLS-1$
      const_set_lazy(:NS_OS_HOME_DIR) { "Home" }
      const_attr_reader  :NS_OS_HOME_DIR
      
      # $NON-NLS-1$
      const_set_lazy(:NS_OS_TEMP_DIR) { "TmpD" }
      const_attr_reader  :NS_OS_TEMP_DIR
      
      # $NON-NLS-1$
      const_set_lazy(:NS_XPCOM_COMPONENT_DIR) { "ComsD" }
      const_attr_reader  :NS_XPCOM_COMPONENT_DIR
      
      # $NON-NLS-1$
      const_set_lazy(:NS_XPCOM_CURRENT_PROCESS_DIR) { "XCurProcD" }
      const_attr_reader  :NS_XPCOM_CURRENT_PROCESS_DIR
      
      # $NON-NLS-1$
      const_set_lazy(:NS_XPCOM_INIT_CURRENT_PROCESS_DIR) { "MozBinD" }
      const_attr_reader  :NS_XPCOM_INIT_CURRENT_PROCESS_DIR
      
      # $NON-NLS-1$
      # XPCOM constants
      const_set_lazy(:NS_OK) { 0 }
      const_attr_reader  :NS_OK
      
      const_set_lazy(:NS_COMFALSE) { 1 }
      const_attr_reader  :NS_COMFALSE
      
      const_set_lazy(:NS_BINDING_ABORTED) { -0x7fb4fffe }
      const_attr_reader  :NS_BINDING_ABORTED
      
      const_set_lazy(:NS_ERROR_BASE) { -0x3e0d0000 }
      const_attr_reader  :NS_ERROR_BASE
      
      const_set_lazy(:NS_ERROR_NOT_INITIALIZED) { NS_ERROR_BASE + 1 }
      const_attr_reader  :NS_ERROR_NOT_INITIALIZED
      
      const_set_lazy(:NS_ERROR_ALREADY_INITIALIZED) { NS_ERROR_BASE + 2 }
      const_attr_reader  :NS_ERROR_ALREADY_INITIALIZED
      
      const_set_lazy(:NS_ERROR_NOT_IMPLEMENTED) { -0x7fffbfff }
      const_attr_reader  :NS_ERROR_NOT_IMPLEMENTED
      
      const_set_lazy(:NS_NOINTERFACE) { -0x7fffbffe }
      const_attr_reader  :NS_NOINTERFACE
      
      const_set_lazy(:NS_ERROR_NO_INTERFACE) { NS_NOINTERFACE }
      const_attr_reader  :NS_ERROR_NO_INTERFACE
      
      const_set_lazy(:NS_ERROR_INVALID_POINTER) { -0x7fffbffd }
      const_attr_reader  :NS_ERROR_INVALID_POINTER
      
      const_set_lazy(:NS_ERROR_NULL_POINTER) { NS_ERROR_INVALID_POINTER }
      const_attr_reader  :NS_ERROR_NULL_POINTER
      
      const_set_lazy(:NS_ERROR_ABORT) { -0x7fffbffc }
      const_attr_reader  :NS_ERROR_ABORT
      
      const_set_lazy(:NS_ERROR_FAILURE) { -0x7fffbffb }
      const_attr_reader  :NS_ERROR_FAILURE
      
      const_set_lazy(:NS_ERROR_UNEXPECTED) { -0x7fff0001 }
      const_attr_reader  :NS_ERROR_UNEXPECTED
      
      const_set_lazy(:NS_ERROR_OUT_OF_MEMORY) { -0x7ff8fff2 }
      const_attr_reader  :NS_ERROR_OUT_OF_MEMORY
      
      const_set_lazy(:NS_ERROR_ILLEGAL_VALUE) { -0x7ff8ffa9 }
      const_attr_reader  :NS_ERROR_ILLEGAL_VALUE
      
      const_set_lazy(:NS_ERROR_INVALID_ARG) { NS_ERROR_ILLEGAL_VALUE }
      const_attr_reader  :NS_ERROR_INVALID_ARG
      
      const_set_lazy(:NS_ERROR_NO_AGGREGATION) { -0x7ffbfef0 }
      const_attr_reader  :NS_ERROR_NO_AGGREGATION
      
      const_set_lazy(:NS_ERROR_NOT_AVAILABLE) { -0x7ffbfeef }
      const_attr_reader  :NS_ERROR_NOT_AVAILABLE
      
      const_set_lazy(:NS_ERROR_FACTORY_NOT_REGISTERED) { -0x7ffbfeac }
      const_attr_reader  :NS_ERROR_FACTORY_NOT_REGISTERED
      
      const_set_lazy(:NS_ERROR_FACTORY_REGISTER_AGAIN) { -0x7ffbfeab }
      const_attr_reader  :NS_ERROR_FACTORY_REGISTER_AGAIN
      
      const_set_lazy(:NS_ERROR_FACTORY_NOT_LOADED) { -0x7ffbfe08 }
      const_attr_reader  :NS_ERROR_FACTORY_NOT_LOADED
      
      const_set_lazy(:NS_ERROR_FACTORY_NO_SIGNATURE_SUPPORT) { NS_ERROR_BASE + 0x101 }
      const_attr_reader  :NS_ERROR_FACTORY_NO_SIGNATURE_SUPPORT
      
      const_set_lazy(:NS_ERROR_FACTORY_EXISTS) { NS_ERROR_BASE + 0x100 }
      const_attr_reader  :NS_ERROR_FACTORY_EXISTS
      
      const_set_lazy(:NS_ERROR_HTMLPARSER_UNRESOLVEDDTD) { -0x7fb1fc0d }
      const_attr_reader  :NS_ERROR_HTMLPARSER_UNRESOLVEDDTD
      
      const_set_lazy(:NS_ERROR_FILE_NOT_FOUND) { -0x7fadffee }
      const_attr_reader  :NS_ERROR_FILE_NOT_FOUND
      
      const_set_lazy(:NS_ERROR_FILE_UNRECOGNIZED_PATH) { -0x7fadffff }
      const_attr_reader  :NS_ERROR_FILE_UNRECOGNIZED_PATH
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM_nsDynamicFunctionLoad_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def ns_dynamic_function_load_sizeof
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM_nsDynamicFunctionLoad_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM_memmove__IL#{NsDynamicFunctionLoad.jni_package_name}_nsDynamicFunctionLoad_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, NsDynamicFunctionLoad, ::Java::Int] }
      # @param dest cast=(void *)
      # @param src cast=(const void *),flags=no_out critical
      # @param size cast=(size_t)
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM_memmove__IL#{NsDynamicFunctionLoad.jni_package_name}_nsDynamicFunctionLoad_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM_memmove__L#{NsID.jni_package_name}_nsID_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [NsID, ::Java::Int, ::Java::Int] }
      # @param dest cast=(void *)
      # @param src cast=(const void *)
      # @param nbytes cast=(size_t)
      # 
      # long
      def memmove(dest, src, nbytes)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM_memmove__L#{NsID.jni_package_name}_nsID_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, nbytes.to_int)
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM_memmove__IL#{NsID.jni_package_name}_nsID_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, NsID, ::Java::Int] }
      # @param dest cast=(void *)
      # @param src cast=(const void *)
      # @param nbytes cast=(size_t)
      # 
      # long
      def memmove(dest, src, nbytes)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM_memmove__IL#{NsID.jni_package_name}_nsID_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, nbytes.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM_strlen_1PRUnichar, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method flags=no_gen
      # long
      def strlen__prunichar(s)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM_strlen_1PRUnichar, JNI.env, self.jni_id, s.to_int)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1JS_1EvaluateUCScriptForPrincipals, [:pointer, :long, :long, :int32, :int32, :int32, :long, :int32, :long, :int32, :long], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      # @method flags=no_gen
      # long
      # long
      # long
      # long
      def ___js_evaluate_ucscript_for_principals(mozilla_path, cx, obj, principals, chars, length, filename, lineno, ret_val)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1JS_1EvaluateUCScriptForPrincipals, JNI.env, self.jni_id, mozilla_path.jni_id, cx.to_int, obj.to_int, principals.to_int, chars.jni_id, length.to_int, filename.jni_id, lineno.to_int, ret_val.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      def _js_evaluate_ucscript_for_principals(mozilla_path, cx, obj, principals, chars, length, filename, lineno, ret_val)
        PLATFORM_LOCK.lock
        begin
          return ___js_evaluate_ucscript_for_principals(mozilla_path, cx, obj, principals, chars, length, filename, lineno, ret_val)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1NS_1GetComponentManager, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      # @param result cast=(nsIComponentManager**)
      # long
      def ___ns_get_component_manager(result)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1NS_1GetComponentManager, JNI.env, self.jni_id, result.jni_id)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      def _ns_get_component_manager(result)
        PLATFORM_LOCK.lock
        begin
          return ___ns_get_component_manager(result)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1NS_1GetServiceManager, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Int)] }
      # @param result cast=(nsIServiceManager**)
      # long
      def ___ns_get_service_manager(result)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1NS_1GetServiceManager, JNI.env, self.jni_id, result.jni_id)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      def _ns_get_service_manager(result)
        PLATFORM_LOCK.lock
        begin
          return ___ns_get_service_manager(result)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1NS_1InitXPCOM2, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param result cast=(nsIServiceManager **)
      # @param binDirectory cast=(nsIFile *)
      # @param appFileLocationProvider cast=(nsIDirectoryServiceProvider *)
      # 
      # long
      # long
      # long
      def ___ns_init_xpcom2(result, bin_directory, app_file_location_provider)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1NS_1InitXPCOM2, JNI.env, self.jni_id, result.to_int, bin_directory.to_int, app_file_location_provider.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _ns_init_xpcom2(result, bin_directory, app_file_location_provider)
        PLATFORM_LOCK.lock
        begin
          return ___ns_init_xpcom2(result, bin_directory, app_file_location_provider)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1NS_1NewLocalFile, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @param path cast=(nsAString *),flags=struct
      # @param result cast=(nsILocalFile**)
      # 
      # long
      # long
      def ___ns_new_local_file(path, follow_links, result)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1NS_1NewLocalFile, JNI.env, self.jni_id, path.to_int, follow_links.to_int, result.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def _ns_new_local_file(path, follow_links, result)
        PLATFORM_LOCK.lock
        begin
          return ___ns_new_local_file(path, follow_links, result)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedCString_1new__, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=new
      # long
      def __ns_embed_cstring_new
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedCString_1new__, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def ns_embed_cstring_new
        PLATFORM_LOCK.lock
        begin
          return __ns_embed_cstring_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedCString_1new___3BI, [:pointer, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      # @method flags=new
      # @param aString cast=(const char *)
      # 
      # long
      def __ns_embed_cstring_new(a_string, length)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedCString_1new___3BI, JNI.env, self.jni_id, a_string.jni_id, length.to_int)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def ns_embed_cstring_new(a_string, length)
        PLATFORM_LOCK.lock
        begin
          return __ns_embed_cstring_new(a_string, length)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedCString_1new__II, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @method flags=new
      # @param aString cast=(const char *)
      # 
      # long
      # long
      def __ns_embed_cstring_new(a_string, length)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedCString_1new__II, JNI.env, self.jni_id, a_string.to_int, length.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def ns_embed_cstring_new(a_string, length)
        PLATFORM_LOCK.lock
        begin
          return __ns_embed_cstring_new(a_string, length)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedCString_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @method flags=delete
      # @param ptr cast=(nsEmbedCString *)
      # 
      # long
      def __ns_embed_cstring_delete(ptr)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedCString_1delete, JNI.env, self.jni_id, ptr.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def ns_embed_cstring_delete(ptr)
        PLATFORM_LOCK.lock
        begin
          __ns_embed_cstring_delete(ptr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedCString_1Length, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method flags=cpp
      # @param ptr cast=(nsEmbedCString *)
      # 
      # long
      def __ns_embed_cstring_length(ptr)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedCString_1Length, JNI.env, self.jni_id, ptr.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def ns_embed_cstring_length(ptr)
        PLATFORM_LOCK.lock
        begin
          return __ns_embed_cstring_length(ptr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsIScriptGlobalObject_1EnsureScriptEnvironment, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @method flags=cpp
      # @param ptr cast=(nsIScriptGlobalObject *)
      # 
      # long
      def __ns_iscript_global_object_ensure_script_environment(ptr, lang)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsIScriptGlobalObject_1EnsureScriptEnvironment, JNI.env, self.jni_id, ptr.to_int, lang.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def ns_iscript_global_object_ensure_script_environment(ptr, lang)
        PLATFORM_LOCK.lock
        begin
          return __ns_iscript_global_object_ensure_script_environment(ptr, lang)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsIScriptGlobalObject_1GetScriptGlobal, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @method flags=cpp
      # @param ptr cast=(nsIScriptGlobalObject *)
      # 
      # long
      # long
      def __ns_iscript_global_object_get_script_global(ptr, lang)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsIScriptGlobalObject_1GetScriptGlobal, JNI.env, self.jni_id, ptr.to_int, lang.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def ns_iscript_global_object_get_script_global(ptr, lang)
        PLATFORM_LOCK.lock
        begin
          return __ns_iscript_global_object_get_script_global(ptr, lang)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsIScriptGlobalObject_1GetScriptContext, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @method flags=cpp
      # @param ptr cast=(nsIScriptGlobalObject *)
      # 
      # long
      # long
      def __ns_iscript_global_object_get_script_context(ptr, lang)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsIScriptGlobalObject_1GetScriptContext, JNI.env, self.jni_id, ptr.to_int, lang.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def ns_iscript_global_object_get_script_context(ptr, lang)
        PLATFORM_LOCK.lock
        begin
          return __ns_iscript_global_object_get_script_context(ptr, lang)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsIScriptContext_1GetNativeContext, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method flags=cpp
      # @param ptr cast=(nsIScriptContext *)
      # 
      # long
      # long
      def __ns_iscript_context_get_native_context(ptr)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsIScriptContext_1GetNativeContext, JNI.env, self.jni_id, ptr.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def ns_iscript_context_get_native_context(ptr)
        PLATFORM_LOCK.lock
        begin
          return __ns_iscript_context_get_native_context(ptr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedCString_1get, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method flags=cpp
      # @param ptr cast=(nsEmbedCString *)
      # 
      # long
      # long
      def __ns_embed_cstring_get(ptr)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedCString_1get, JNI.env, self.jni_id, ptr.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def ns_embed_cstring_get(ptr)
        PLATFORM_LOCK.lock
        begin
          return __ns_embed_cstring_get(ptr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsID_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @method flags=delete
      # @param ptr cast=(nsID *)
      # 
      # long
      def __ns_id_delete(ptr)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsID_1delete, JNI.env, self.jni_id, ptr.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def ns_id_delete(ptr)
        PLATFORM_LOCK.lock
        begin
          __ns_id_delete(ptr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsID_1new, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=new
      # long
      def __ns_id_new
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsID_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def ns_id_new
        PLATFORM_LOCK.lock
        begin
          return __ns_id_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsID_1Equals, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @method flags=cpp
      # @param ptr cast=(nsID *)
      # @param other cast=(nsID *),flags=struct
      # 
      # long
      # long
      def __ns_id_equals(ptr, other)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsID_1Equals, JNI.env, self.jni_id, ptr.to_int, other.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def ns_id_equals(ptr, other)
        PLATFORM_LOCK.lock
        begin
          return __ns_id_equals(ptr, other)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedString_1new__, [:pointer, :long], :int32
      typesig { [] }
      # @method flags=new
      # long
      def __ns_embed_string_new
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedString_1new__, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def ns_embed_string_new
        PLATFORM_LOCK.lock
        begin
          return __ns_embed_string_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedString_1new___3C, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Char)] }
      # @method flags=new
      # @param aString cast=(PRUnichar *)
      # 
      # long
      def __ns_embed_string_new(a_string)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedString_1new___3C, JNI.env, self.jni_id, a_string.jni_id)
      end
      
      typesig { [Array.typed(::Java::Char)] }
      # long
      def ns_embed_string_new(a_string)
        PLATFORM_LOCK.lock
        begin
          return __ns_embed_string_new(a_string)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedString_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @method flags=delete
      # @param ptr cast=(nsEmbedString *)
      # 
      # long
      def __ns_embed_string_delete(ptr)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedString_1delete, JNI.env, self.jni_id, ptr.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def ns_embed_string_delete(ptr)
        PLATFORM_LOCK.lock
        begin
          __ns_embed_string_delete(ptr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedString_1Length, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method flags=cpp
      # @param ptr cast=(nsEmbedString *)
      # 
      # long
      def __ns_embed_string_length(ptr)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedString_1Length, JNI.env, self.jni_id, ptr.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def ns_embed_string_length(ptr)
        PLATFORM_LOCK.lock
        begin
          return __ns_embed_string_length(ptr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedString_1get, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @method flags=cpp
      # @param ptr cast=(nsEmbedString *)
      # 
      # long
      # long
      def __ns_embed_string_get(ptr)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsEmbedString_1get, JNI.env, self.jni_id, ptr.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def ns_embed_string_get(ptr)
        PLATFORM_LOCK.lock
        begin
          return __ns_embed_string_get(ptr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsIMemory_1Alloc, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @method flags=cpp
      # @param ptr cast=(nsIMemory *)
      # @param size cast=(size_t)
      # 
      # long
      # long
      def __ns_imemory_alloc(ptr, size)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsIMemory_1Alloc, JNI.env, self.jni_id, ptr.to_int, size.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def ns_imemory_alloc(ptr, size)
        PLATFORM_LOCK.lock
        begin
          return __ns_imemory_alloc(ptr, size)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsIMemory_1Realloc, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @method flags=cpp
      # @param ptr1 cast=(nsIMemory *)
      # @param ptr2 cast=(void *)
      # @param size cast=(size_t)
      # 
      # long
      # long
      # long
      def __ns_imemory_realloc(ptr1, ptr2, size)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1nsIMemory_1Realloc, JNI.env, self.jni_id, ptr1.to_int, ptr2.to_int, size.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def ns_imemory_realloc(ptr1, ptr2, size)
        PLATFORM_LOCK.lock
        begin
          return __ns_imemory_realloc(ptr1, ptr2, size)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1XPCOMGlueLoadXULFunctions, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param functionLoad cast=(const nsDynamicFunctionLoad *)
      # long
      def ___xpcomglue_load_xulfunctions(function_load)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1XPCOMGlueLoadXULFunctions, JNI.env, self.jni_id, function_load.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def _xpcomglue_load_xulfunctions(function_load)
        PLATFORM_LOCK.lock
        begin
          return ___xpcomglue_load_xulfunctions(function_load)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1XPCOMGlueStartup, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # @param place cast=(const char *)
      def ___xpcomglue_startup(place)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1XPCOMGlueStartup, JNI.env, self.jni_id, place.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def _xpcomglue_startup(place)
        PLATFORM_LOCK.lock
        begin
          return ___xpcomglue_startup(place)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1XPCOMGlueShutdown, [:pointer, :long], :int32
      typesig { [] }
      def ___xpcomglue_shutdown
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1XPCOMGlueShutdown, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _xpcomglue_shutdown
        PLATFORM_LOCK.lock
        begin
          return ___xpcomglue_shutdown
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1Call__I, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def ___call(ptr)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1Call__I, JNI.env, self.jni_id, ptr.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def _call(ptr)
        PLATFORM_LOCK.lock
        begin
          return ___call(ptr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1Call__III_3BII_3I, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @param ptr cast=(nsWriteSegmentFun)
      # @param aInStream cast=(nsIInputStream *)
      # @param aClosure cast=(void *)
      # @param aFromSegment cast=(const char *)
      # @param aWriteCount cast=(PRUint32 *)
      # 
      # long
      # long
      # long
      # long
      def ___call(ptr, a_in_stream, a_closure, a_from_segment, a_to_offset, a_count, a_write_count)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1Call__III_3BII_3I, JNI.env, self.jni_id, ptr.to_int, a_in_stream.to_int, a_closure.to_int, a_from_segment.jni_id, a_to_offset.to_int, a_count.to_int, a_write_count.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      def _call(ptr, a_in_stream, a_closure, a_from_segment, a_to_offset, a_count, a_write_count)
        PLATFORM_LOCK.lock
        begin
          return ___call(ptr, a_in_stream, a_closure, a_from_segment, a_to_offset, a_count, a_write_count)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1Call__IIIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param ptr cast=(SWT_XREInitEmbedding)
      # @param aLibXULDirectory cast=(nsILocalFile *)
      # @param aAppDirectory cast=(nsILocalFile *)
      # @param aAppDirProvider cast=(nsIDirectoryServiceProvider *)
      # @param aStaticComponents cast=(nsStaticModuleInfo const *)
      # 
      # long
      # long
      # long
      # long
      # long
      def ___call(ptr, a_lib_xuldirectory, a_app_directory, a_app_dir_provider, a_static_components, a_static_components_count)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1Call__IIIIII, JNI.env, self.jni_id, ptr.to_int, a_lib_xuldirectory.to_int, a_app_directory.to_int, a_app_dir_provider.to_int, a_static_components.to_int, a_static_components_count.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def _call(ptr, a_lib_xuldirectory, a_app_directory, a_app_dir_provider, a_static_components, a_static_components_count)
        PLATFORM_LOCK.lock
        begin
          return ___call(ptr, a_lib_xuldirectory, a_app_directory, a_app_dir_provider, a_static_components, a_static_components_count)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3C, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3C, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIXdoubleX, [:pointer, :long, :int32, :int32, :double], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Double] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIXdoubleX, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Double] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIXfloatX, [:pointer, :long, :int32, :int32, :float], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Float] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIXfloatX, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Float] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3XfloatX, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Float)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3XfloatX, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Float)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3I, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ, [:pointer, :long, :int32, :int32, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3J, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3S, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Short)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3S, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Short)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJI, [:pointer, :long, :int32, :int32, :int64, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJI, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ, [:pointer, :long, :int32, :int32, :int64, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3I, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3J, [:pointer, :long, :int32, :int32, :int64, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3I, [:pointer, :long, :int32, :int32, :int64, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3I, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3J, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BJ, [:pointer, :long, :int32, :int32, :long, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BI, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BI, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIL#{NsID.jni_package_name}_nsID_2".to_sym, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, NsID] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIL#{NsID.jni_package_name}_nsID_2".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, NsID] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJL#{NsID.jni_package_name}_nsID_2".to_sym, [:pointer, :long, :int32, :int32, :int64, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, NsID] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJL#{NsID.jni_package_name}_nsID_2".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, NsID] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3I_3I, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3I_3J, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3I_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, NsID, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, NsID, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2J".to_sym, [:pointer, :long, :int32, :int32, :long, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, NsID, ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2J".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, NsID, ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2_3I".to_sym, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NsID, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2_3I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, NsID, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2_3J".to_sym, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NsID, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2_3J".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, NsID, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3C_3C, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3C_3C, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3B, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3B, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3B, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3B, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3B, [:pointer, :long, :int32, :int32, :int64, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Byte)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3B, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Byte)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3CI, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3CI, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C_3I, [:pointer, :long, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3J, [:pointer, :long, :int32, :int32, :int64, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3CI, [:pointer, :long, :int32, :int32, :int64, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3CI, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3I_3I_3I, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3I_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3J_3J, [:pointer, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Long), Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3J_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Long), Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3J_3J_3J, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Long), Array.typed(::Java::Long), Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3J_3J_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Long), Array.typed(::Java::Long), Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IISIII, [:pointer, :long, :int32, :int32, :int16, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Short, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IISIII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Short, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IISJIJ, [:pointer, :long, :int32, :int32, :int16, :int64, :int32, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Short, ::Java::Long, ::Java::Int, ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IISJIJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Short, ::Java::Long, ::Java::Int, ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3I_3J_3I, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Long), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3I_3J_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Long), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3I_3J_3J, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Long), Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3I_3J_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Long), Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BI_3I, [:pointer, :long, :int32, :int32, :long, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BI_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BJ_3I, [:pointer, :long, :int32, :int32, :long, :int64, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Long, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BJ_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Long, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BL#{NsID.jni_package_name}_nsID_2_3J".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), NsID, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BL#{NsID.jni_package_name}_nsID_2_3J".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), NsID, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BL#{NsID.jni_package_name}_nsID_2_3I".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), NsID, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BL#{NsID.jni_package_name}_nsID_2_3I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), NsID, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3CI_3I, [:pointer, :long, :int32, :int32, :long, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3CI_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3CJ_3J, [:pointer, :long, :int32, :int32, :long, :int64, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Long, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3CJ_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Long, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C_3C, [:pointer, :long, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C_3C, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3C, [:pointer, :long, :int32, :int32, :int64, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3C, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJ, [:pointer, :long, :int32, :int32, :int64, :int64, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJI, [:pointer, :long, :int32, :int32, :int64, :int64, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJI, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIJJ, [:pointer, :long, :int32, :int32, :int32, :int64, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIJJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3J, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3I, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ_3J, [:pointer, :long, :int32, :int32, :int64, :int64, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJI_3J, [:pointer, :long, :int32, :int32, :int64, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJI_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ_3I, [:pointer, :long, :int32, :int32, :int64, :int64, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIL#{NsID.jni_package_name}_nsID_2_3I".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, NsID, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIL#{NsID.jni_package_name}_nsID_2_3I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, NsID, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJL#{NsID.jni_package_name}_nsID_2_3J".to_sym, [:pointer, :long, :int32, :int32, :int64, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, NsID, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJL#{NsID.jni_package_name}_nsID_2_3J".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, NsID, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3C, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3C, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2L#{NsID.jni_package_name}_nsID_2_3J".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NsID, NsID, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2L#{NsID.jni_package_name}_nsID_2_3J".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, NsID, NsID, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2L#{NsID.jni_package_name}_nsID_2_3I".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NsID, NsID, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2L#{NsID.jni_package_name}_nsID_2_3I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, NsID, NsID, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3B_3I, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3B_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3B_3J, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3B_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3I_3I, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3I_3J, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int), Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3I_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int), Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3J_3I, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Long), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3J_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Long), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BL#{NsID.jni_package_name}_nsID_2I".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), NsID, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BL#{NsID.jni_package_name}_nsID_2I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), NsID, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BL#{NsID.jni_package_name}_nsID_2J".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), NsID, ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BL#{NsID.jni_package_name}_nsID_2J".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), NsID, ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3B_3C, [:pointer, :long, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Char)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3B_3C, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Char)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3B_3C, [:pointer, :long, :int32, :int32, :int64, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Char)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3B_3C, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Char)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3B, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3B, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ_3B, [:pointer, :long, :int32, :int32, :int64, :int64, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, Array.typed(::Java::Byte)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ_3B, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, Array.typed(::Java::Byte)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3BI, [:pointer, :long, :int32, :int32, :long, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3BI, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3B_3I, [:pointer, :long, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3B_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3BJ, [:pointer, :long, :int32, :int32, :int64, :long, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Byte), ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3BJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Byte), ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3BI, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3BI, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3BI, [:pointer, :long, :int32, :int32, :int64, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3BI, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3BS, [:pointer, :long, :int32, :int32, :int32, :long, :int16], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Short] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3BS, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Short] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3BS, [:pointer, :long, :int32, :int32, :int64, :long, :int16], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Byte), ::Java::Short] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3BS, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Byte), ::Java::Short] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BIL#{NsID.jni_package_name}_nsID_2_3I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, NsID, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BIL#{NsID.jni_package_name}_nsID_2_3I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.jni_id, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, NsID, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BJL#{NsID.jni_package_name}_nsID_2_3J".to_sym, [:pointer, :long, :int32, :int32, :long, :int64, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Long, NsID, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BJL#{NsID.jni_package_name}_nsID_2_3J".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.jni_id, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Long, NsID, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3BI_3I, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3BI_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.to_int, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3BJ_3J, [:pointer, :long, :int32, :int32, :int64, :long, :int64, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Byte), ::Java::Long, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3BJ_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.to_int, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Byte), ::Java::Long, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C_3C_3I, [:pointer, :long, :int32, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C_3C_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3C_3J, [:pointer, :long, :int32, :int32, :int64, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3C_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3C_3I, [:pointer, :long, :int32, :int32, :int64, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3C_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIII_3C, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIII_3C, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJI_3C, [:pointer, :long, :int32, :int32, :int64, :int64, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Int, Array.typed(::Java::Char)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJI_3C, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Int, Array.typed(::Java::Char)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJII, [:pointer, :long, :int32, :int32, :int64, :int64, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJI, [:pointer, :long, :int32, :int32, :int64, :int64, :int64, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJI, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIII_3I, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIII_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJ_3J, [:pointer, :long, :int32, :int32, :int64, :int64, :int64, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJ_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJI_3I, [:pointer, :long, :int32, :int32, :int64, :int64, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJI_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3I_3I_3I_3I, [:pointer, :long, :int32, :int32, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3I_3I_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2_3B_3BI".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, NsID, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2_3B_3BI".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id, arg3.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, NsID, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2_3B_3BJ".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :long, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, NsID, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2_3B_3BJ".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id, arg3.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, NsID, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2IL#{NsID.jni_package_name}_nsID_2_3I".to_sym, [:pointer, :long, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NsID, ::Java::Int, NsID, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2IL#{NsID.jni_package_name}_nsID_2_3I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.jni_id, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, NsID, ::Java::Int, NsID, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2JL#{NsID.jni_package_name}_nsID_2_3J".to_sym, [:pointer, :long, :int32, :int32, :long, :int64, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NsID, ::Java::Long, NsID, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2JL#{NsID.jni_package_name}_nsID_2_3J".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.jni_id, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, NsID, ::Java::Long, NsID, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BI_3I_3I, [:pointer, :long, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BI_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.jni_id, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BI_3J_3I, [:pointer, :long, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Long), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BI_3J_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.jni_id, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Long), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3B_3B, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3B_3B, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ_3B_3B, [:pointer, :long, :int32, :int32, :int64, :int64, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ_3B_3B, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3BI, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3BI, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id, arg3.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ_3BJ, [:pointer, :long, :int32, :int32, :int64, :int64, :long, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, Array.typed(::Java::Byte), ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ_3BJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id, arg3.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, Array.typed(::Java::Byte), ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3SI_3I_3I, [:pointer, :long, :int32, :int32, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Short), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3SI_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.jni_id, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Short), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3SJ_3I_3J, [:pointer, :long, :int32, :int32, :long, :int64, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Short), ::Java::Long, Array.typed(::Java::Int), Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3SJ_3I_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.jni_id, arg3.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Short), ::Java::Long, Array.typed(::Java::Int), Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3CIIII, [:pointer, :long, :int32, :int32, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3CIIII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3CIJJJ, [:pointer, :long, :int32, :int32, :long, :int32, :int64, :int64, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3CIJJJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJJJ, [:pointer, :long, :int32, :int32, :int64, :int64, :int64, :int64, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJJJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIIII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3I_3I_3I_3I, [:pointer, :long, :int32, :int32, :int32, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3I_3I_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.jni_id, arg4.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C_3C_3C_3I, [:pointer, :long, :int32, :int32, :int32, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C_3C_3C_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.jni_id, arg4.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3C_3C_3I, [:pointer, :long, :int32, :int32, :int64, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3C_3C_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.jni_id, arg4.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BII_3I_3I, [:pointer, :long, :int32, :int32, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BII_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.to_int, arg3.jni_id, arg4.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BIJ_3J_3I, [:pointer, :long, :int32, :int32, :long, :int32, :int64, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Long, Array.typed(::Java::Long), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3BIJ_3J_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.to_int, arg2.to_int, arg3.jni_id, arg4.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Long, Array.typed(::Java::Long), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3BII, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3BII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id, arg3.to_int, arg4.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ_3BJI, [:pointer, :long, :int32, :int32, :int64, :int64, :long, :int64, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, Array.typed(::Java::Byte), ::Java::Long, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ_3BJI, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id, arg3.to_int, arg4.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, Array.typed(::Java::Byte), ::Java::Long, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIL#{NsID.jni_package_name}_nsID_2II_3I".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, NsID, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIL#{NsID.jni_package_name}_nsID_2II_3I".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.to_int, arg3.to_int, arg4.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, NsID, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJL#{NsID.jni_package_name}_nsID_2JJ_3J".to_sym, [:pointer, :long, :int32, :int32, :int64, :long, :int64, :int64, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, NsID, ::Java::Long, ::Java::Long, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJL#{NsID.jni_package_name}_nsID_2JJ_3J".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.to_int, arg3.to_int, arg4.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, NsID, ::Java::Long, ::Java::Long, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3B_3B_3BI_3I, [:pointer, :long, :int32, :int32, :int32, :long, :long, :long, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3B_3B_3BI_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.jni_id, arg4.to_int, arg5.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3B_3B_3BJ_3J, [:pointer, :long, :int32, :int32, :int64, :long, :long, :long, :int64, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Long, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3B_3B_3BJ_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.jni_id, arg4.to_int, arg5.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Long, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3CIJI, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :int64, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Long, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3CIJI, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id, arg3.to_int, arg4.to_int, arg5.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Long, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ_3CIJI, [:pointer, :long, :int32, :int32, :int64, :int64, :long, :int32, :int64, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, Array.typed(::Java::Char), ::Java::Int, ::Java::Long, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ_3CIJI, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id, arg3.to_int, arg4.to_int, arg5.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, Array.typed(::Java::Char), ::Java::Int, ::Java::Long, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3CJJJ, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int64, :int64, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Long, ::Java::Long, ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3CJJJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id, arg3.to_int, arg4.to_int, arg5.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Long, ::Java::Long, ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ_3CJJJ, [:pointer, :long, :int32, :int32, :int64, :int64, :long, :int64, :int64, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, Array.typed(::Java::Char), ::Java::Long, ::Java::Long, ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ_3CJJJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id, arg3.to_int, arg4.to_int, arg5.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, Array.typed(::Java::Char), ::Java::Long, ::Java::Long, ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3I_3I_3I_3I_3I_3I, [:pointer, :long, :int32, :int32, :long, :long, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3I_3I_3I_3I_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id, arg3.jni_id, arg4.jni_id, arg5.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3J_3J_3J_3J_3J_3I, [:pointer, :long, :int32, :int32, :long, :long, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Long), Array.typed(::Java::Long), Array.typed(::Java::Long), Array.typed(::Java::Long), Array.typed(::Java::Long), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3J_3J_3J_3J_3J_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id, arg3.jni_id, arg4.jni_id, arg5.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Long), Array.typed(::Java::Long), Array.typed(::Java::Long), Array.typed(::Java::Long), Array.typed(::Java::Long), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIIIII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJIIII, [:pointer, :long, :int32, :int32, :int64, :int64, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJIIII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIIII_3I, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIIII_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJJJ_3J, [:pointer, :long, :int32, :int32, :int64, :int64, :int64, :int64, :int64, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJJJ_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2_3B_3BI_3B_3B".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NsID, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2_3B_3BI_3B_3B".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id, arg3.to_int, arg4.jni_id, arg5.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, NsID, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method "Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2_3B_3BJ_3B_3B".to_sym, [:pointer, :long, :int32, :int32, :long, :long, :long, :int64, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, NsID, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method("Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIL#{NsID.jni_package_name}_nsID_2_3B_3BJ_3B_3B".to_sym, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id, arg3.to_int, arg4.jni_id, arg5.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, NsID, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIJJJJ, [:pointer, :long, :int32, :int32, :int32, :int32, :int64, :int64, :int64, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIJJJJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJJJJ, [:pointer, :long, :int32, :int32, :int64, :int64, :int64, :int64, :int64, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJJJJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C_3C_3C_3I_3I, [:pointer, :long, :int32, :int32, :int32, :long, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C_3C_3C_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.jni_id, arg4.jni_id, arg5.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3C_3C_3I_3I, [:pointer, :long, :int32, :int32, :int64, :long, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3C_3C_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.jni_id, arg4.jni_id, arg5.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3B_3BII_3I, [:pointer, :long, :int32, :int32, :long, :long, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3B_3BII_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id, arg3.to_int, arg4.to_int, arg5.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3B_3BII_3J, [:pointer, :long, :int32, :int32, :long, :long, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__II_3B_3B_3BII_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.jni_id, arg1.jni_id, arg2.jni_id, arg3.to_int, arg4.to_int, arg5.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIII_3I_3I, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIII_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.jni_id, arg5.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJIIJ_3I_3J, [:pointer, :long, :int32, :int32, :int64, :int32, :int32, :int64, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Int), Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJIIJ_3I_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.jni_id, arg5.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Int), Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3C_3CI_3I, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIII_3C_3CI_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id, arg3.jni_id, arg4.to_int, arg5.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ_3C_3CI_3J, [:pointer, :long, :int32, :int32, :int64, :int64, :long, :long, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJ_3C_3CI_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.jni_id, arg3.jni_id, arg4.to_int, arg5.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIII_3B_3BI, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :long, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIII_3B_3BI, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.jni_id, arg4.jni_id, arg5.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJ_3B_3BJ, [:pointer, :long, :int32, :int32, :int64, :int64, :int64, :long, :long, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJ_3B_3BJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.jni_id, arg4.jni_id, arg5.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C_3CI_3I_3I_3I, [:pointer, :long, :int32, :int32, :int32, :long, :long, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C_3CI_3I_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.to_int, arg4.jni_id, arg5.jni_id, arg6.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3CI_3J_3I_3I, [:pointer, :long, :int32, :int32, :int64, :long, :long, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Long), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3CI_3J_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.to_int, arg4.jni_id, arg5.jni_id, arg6.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Long), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C_3C_3I_3C_3I_3I, [:pointer, :long, :int32, :int32, :int32, :long, :long, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C_3C_3I_3C_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.jni_id, arg4.jni_id, arg5.jni_id, arg6.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3C_3J_3C_3I_3I, [:pointer, :long, :int32, :int32, :int64, :long, :long, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Long), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3C_3J_3C_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.jni_id, arg4.jni_id, arg5.jni_id, arg6.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Long), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIII_3C_3I_3I, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIII_3C_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.jni_id, arg5.jni_id, arg6.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJIJ_3C_3I_3I, [:pointer, :long, :int32, :int32, :int64, :int64, :int32, :int64, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJIJ_3C_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.jni_id, arg5.jni_id, arg6.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIIIJII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int64, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIIIJII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int, arg6.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJJJJJ, [:pointer, :long, :int32, :int32, :int64, :int64, :int64, :int64, :int64, :int64, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJJJJJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int, arg6.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C_3C_3I_3I_3C_3I_3I, [:pointer, :long, :int32, :int32, :int32, :long, :long, :long, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C_3C_3I_3I_3C_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.jni_id, arg4.jni_id, arg5.jni_id, arg6.jni_id, arg7.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3C_3J_3J_3C_3I_3I, [:pointer, :long, :int32, :int32, :int64, :long, :long, :long, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Long), Array.typed(::Java::Long), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3C_3J_3J_3C_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.jni_id, arg4.jni_id, arg5.jni_id, arg6.jni_id, arg7.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Long), Array.typed(::Java::Long), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIIIIII_3I, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIIIIII_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int, arg6.to_int, arg7.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIJJJJJJ_3J, [:pointer, :long, :int32, :int32, :int32, :int64, :int64, :int64, :int64, :int64, :int64, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIJJJJJJ_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int, arg6.to_int, arg7.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIIIII_3C_3I_3I, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIIIII_3C_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int, arg6.jni_id, arg7.jni_id, arg8.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJJIJ_3C_3I_3J, [:pointer, :long, :int32, :int32, :int64, :int64, :int64, :int64, :int32, :int64, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJJIJ_3C_3I_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int, arg6.jni_id, arg7.jni_id, arg8.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIIIIIIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIIIIIIIII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int, arg6.to_int, arg7.to_int, arg8.to_int, arg9.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJIIJIIIIII, [:pointer, :long, :int32, :int32, :int64, :int32, :int32, :int64, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJIIJIIIIII, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int, arg6.to_int, arg7.to_int, arg8.to_int, arg9.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C_3CI_3C_3C_3C_3C_3I_3I, [:pointer, :long, :int32, :int32, :int32, :long, :long, :int32, :long, :long, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__III_3C_3CI_3C_3C_3C_3C_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.to_int, arg4.jni_id, arg5.jni_id, arg6.jni_id, arg7.jni_id, arg8.jni_id, arg9.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3CI_3C_3C_3C_3C_3I_3I, [:pointer, :long, :int32, :int32, :int64, :long, :long, :int32, :long, :long, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJ_3C_3CI_3C_3C_3C_3C_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.jni_id, arg2.jni_id, arg3.to_int, arg4.jni_id, arg5.jni_id, arg6.jni_id, arg7.jni_id, arg8.jni_id, arg9.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Char), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIII_3CIIIII_3I_3I, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :long, :int32, :int32, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIII_3CIIIII_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.jni_id, arg5.to_int, arg6.to_int, arg7.to_int, arg8.to_int, arg9.to_int, arg10.jni_id, arg11.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJI_3CJJIJI_3J_3J, [:pointer, :long, :int32, :int32, :int64, :int64, :int64, :int32, :long, :int64, :int64, :int32, :int64, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Int, Array.typed(::Java::Char), ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Long, ::Java::Int, Array.typed(::Java::Long), Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJI_3CJJIJI_3J_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.jni_id, arg5.to_int, arg6.to_int, arg7.to_int, arg8.to_int, arg9.to_int, arg10.jni_id, arg11.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Int, Array.typed(::Java::Char), ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Long, ::Java::Int, Array.typed(::Java::Long), Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIII_3C_3BIIIII_3I_3I, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :long, :long, :int32, :int32, :int32, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIII_3C_3BIIIII_3I_3I, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.jni_id, arg5.jni_id, arg6.to_int, arg7.to_int, arg8.to_int, arg9.to_int, arg10.to_int, arg11.jni_id, arg12.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJI_3C_3BJJIJI_3J_3J, [:pointer, :long, :int32, :int32, :int64, :int64, :int64, :int32, :long, :long, :int64, :int64, :int32, :int64, :int32, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Byte), ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Long, ::Java::Int, Array.typed(::Java::Long), Array.typed(::Java::Long)] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJJJI_3C_3BJJIJI_3J_3J, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.jni_id, arg5.jni_id, arg6.to_int, arg7.to_int, arg8.to_int, arg9.to_int, arg10.to_int, arg11.jni_id, arg12.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Byte), ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Long, ::Java::Int, Array.typed(::Java::Long), Array.typed(::Java::Long)] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIIIIIIIIIIIISI, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int16, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Short, ::Java::Int] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIIIIIIIIIIIIIISI, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int, arg6.to_int, arg7.to_int, arg8.to_int, arg9.to_int, arg10.to_int, arg11.to_int, arg12.to_int, arg13.to_int, arg14.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Short, ::Java::Int] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJIIJIIIIIIIIISJ, [:pointer, :long, :int32, :int32, :int64, :int32, :int32, :int64, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int16, :int64], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Short, ::Java::Long] }
      # long
      def ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM__1VtblCall__IIJIIJIIIIIIIIISJ, JNI.env, self.jni_id, fn_number.to_int, pp_vtbl.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int, arg6.to_int, arg7.to_int, arg8.to_int, arg9.to_int, arg10.to_int, arg11.to_int, arg12.to_int, arg13.to_int, arg14.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Short, ::Java::Long] }
      # long
      def _vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14)
        PLATFORM_LOCK.lock
        begin
          return ___vtbl_call(fn_number, pp_vtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_mozilla_XPCOM_GetAddress, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @method flags=no_gen
      def _get_address(ptr, index)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_mozilla_XPCOM_GetAddress, JNI.env, self.jni_id, ptr.to_int, index.to_int)
      end
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__xpcom, :initialize
  end
  
end
