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
  module NsIDocShell_1_9Imports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIDocShell_1_9 < NsISupports
    include_class_members NsIDocShell_1_9Imports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 67 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IDOCSHELL_IID_STR) { "7d1cf6b9-daa3-476d-8f9f-9eb2a971a95c" }
      const_attr_reader  :NS_IDOCSHELL_IID_STR
      
      const_set_lazy(:NS_IDOCSHELL_IID) { NsID.new(NS_IDOCSHELL_IID_STR) }
      const_attr_reader  :NS_IDOCSHELL_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _load_uri(uri, load_info, a_load_flags, first_party)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, uri, load_info, a_load_flags, first_party)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def _load_stream(a_stream, a_uri, a_content_type, a_content_charset, a_load_info)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_stream, a_uri, a_content_type, a_content_charset, a_load_info)
    end
    
    class_module.module_eval {
      const_set_lazy(:INTERNAL_LOAD_FLAGS_NONE) { 0 }
      const_attr_reader  :INTERNAL_LOAD_FLAGS_NONE
      
      const_set_lazy(:INTERNAL_LOAD_FLAGS_INHERIT_OWNER) { 1 }
      const_attr_reader  :INTERNAL_LOAD_FLAGS_INHERIT_OWNER
      
      const_set_lazy(:INTERNAL_LOAD_FLAGS_DONT_SEND_REFERRER) { 2 }
      const_attr_reader  :INTERNAL_LOAD_FLAGS_DONT_SEND_REFERRER
      
      const_set_lazy(:INTERNAL_LOAD_FLAGS_ALLOW_THIRD_PARTY_FIXUP) { 4 }
      const_attr_reader  :INTERNAL_LOAD_FLAGS_ALLOW_THIRD_PARTY_FIXUP
      
      const_set_lazy(:INTERNAL_LOAD_FLAGS_FIRST_LOAD) { 8 }
      const_attr_reader  :INTERNAL_LOAD_FLAGS_FIRST_LOAD
      
      const_set_lazy(:INTERNAL_LOAD_FLAGS_BYPASS_CLASSIFIER) { 16 }
      const_attr_reader  :INTERNAL_LOAD_FLAGS_BYPASS_CLASSIFIER
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char), Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def _internal_load(a_uri, a_referrer, a_owner, a_flags, a_window_target, a_type_hint, a_post_data_stream, a_headers_stream, a_load_flags, a_shentry, first_party, a_doc_shell, a_request)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_uri, a_referrer, a_owner, a_flags, a_window_target, a_type_hint, a_post_data_stream, a_headers_stream, a_load_flags, a_shentry, first_party, a_doc_shell, a_request)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _create_load_info(load_info)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, load_info)
    end
    
    typesig { [] }
    def _prepare_for_new_content_model
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_current_uri(a_uri)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_uri)
    end
    
    typesig { [::Java::Int] }
    def _fire_page_hide_notification(is_unload)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, is_unload)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_pres_context(a_pres_context)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, a_pres_context)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_pres_shell(a_pres_shell)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, a_pres_shell)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_eldest_pres_shell(a_eldest_pres_shell)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 10, get_address, a_eldest_pres_shell)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_content_viewer(a_content_viewer)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 11, get_address, a_content_viewer)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_chrome_event_handler(a_chrome_event_handler)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 12, get_address, a_chrome_event_handler)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_chrome_event_handler(a_chrome_event_handler)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 13, get_address, a_chrome_event_handler)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_document_charset_info(a_document_charset_info)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 14, get_address, a_document_charset_info)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_document_charset_info(a_document_charset_info)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 15, get_address, a_document_charset_info)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_allow_plugins(a_allow_plugins)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 16, get_address, a_allow_plugins)
    end
    
    typesig { [::Java::Int] }
    def _set_allow_plugins(a_allow_plugins)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 17, get_address, a_allow_plugins)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_allow_javascript(a_allow_javascript)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 18, get_address, a_allow_javascript)
    end
    
    typesig { [::Java::Int] }
    def _set_allow_javascript(a_allow_javascript)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 19, get_address, a_allow_javascript)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_allow_meta_redirects(a_allow_meta_redirects)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 20, get_address, a_allow_meta_redirects)
    end
    
    typesig { [::Java::Int] }
    def _set_allow_meta_redirects(a_allow_meta_redirects)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 21, get_address, a_allow_meta_redirects)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_allow_subframes(a_allow_subframes)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 22, get_address, a_allow_subframes)
    end
    
    typesig { [::Java::Int] }
    def _set_allow_subframes(a_allow_subframes)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 23, get_address, a_allow_subframes)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_allow_images(a_allow_images)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 24, get_address, a_allow_images)
    end
    
    typesig { [::Java::Int] }
    def _set_allow_images(a_allow_images)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 25, get_address, a_allow_images)
    end
    
    class_module.module_eval {
      const_set_lazy(:ENUMERATE_FORWARDS) { 0 }
      const_attr_reader  :ENUMERATE_FORWARDS
      
      const_set_lazy(:ENUMERATE_BACKWARDS) { 1 }
      const_attr_reader  :ENUMERATE_BACKWARDS
    }
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _get_doc_shell_enumerator(a_item_type, a_direction, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 26, get_address, a_item_type, a_direction, _retval)
    end
    
    class_module.module_eval {
      const_set_lazy(:APP_TYPE_UNKNOWN) { 0 }
      const_attr_reader  :APP_TYPE_UNKNOWN
      
      const_set_lazy(:APP_TYPE_MAIL) { 1 }
      const_attr_reader  :APP_TYPE_MAIL
      
      const_set_lazy(:APP_TYPE_EDITOR) { 2 }
      const_attr_reader  :APP_TYPE_EDITOR
    }
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_app_type(a_app_type)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 27, get_address, a_app_type)
    end
    
    typesig { [::Java::Int] }
    def _set_app_type(a_app_type)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 28, get_address, a_app_type)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_allow_auth(a_allow_auth)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 29, get_address, a_allow_auth)
    end
    
    typesig { [::Java::Int] }
    def _set_allow_auth(a_allow_auth)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 30, get_address, a_allow_auth)
    end
    
    typesig { [Array.typed(::Java::Float)] }
    def _get_zoom(a_zoom)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 31, get_address, a_zoom)
    end
    
    typesig { [::Java::Float] }
    def _set_zoom(a_zoom)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 32, get_address, a_zoom)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_margin_width(a_margin_width)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 33, get_address, a_margin_width)
    end
    
    typesig { [::Java::Int] }
    def _set_margin_width(a_margin_width)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 34, get_address, a_margin_width)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_margin_height(a_margin_height)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 35, get_address, a_margin_height)
    end
    
    typesig { [::Java::Int] }
    def _set_margin_height(a_margin_height)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 36, get_address, a_margin_height)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_has_focus(a_has_focus)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 37, get_address, a_has_focus)
    end
    
    typesig { [::Java::Int] }
    def _set_has_focus(a_has_focus)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 38, get_address, a_has_focus)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_canvas_has_focus(a_canvas_has_focus)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 39, get_address, a_canvas_has_focus)
    end
    
    typesig { [::Java::Int] }
    def _set_canvas_has_focus(a_canvas_has_focus)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 40, get_address, a_canvas_has_focus)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    def _tab_to_tree_owner(forward, took_focus)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 41, get_address, forward, took_focus)
    end
    
    class_module.module_eval {
      const_set_lazy(:BUSY_FLAGS_NONE) { 0 }
      const_attr_reader  :BUSY_FLAGS_NONE
      
      const_set_lazy(:BUSY_FLAGS_BUSY) { 1 }
      const_attr_reader  :BUSY_FLAGS_BUSY
      
      const_set_lazy(:BUSY_FLAGS_BEFORE_PAGE_LOAD) { 2 }
      const_attr_reader  :BUSY_FLAGS_BEFORE_PAGE_LOAD
      
      const_set_lazy(:BUSY_FLAGS_PAGE_LOADING) { 4 }
      const_attr_reader  :BUSY_FLAGS_PAGE_LOADING
      
      const_set_lazy(:LOAD_CMD_NORMAL) { 1 }
      const_attr_reader  :LOAD_CMD_NORMAL
      
      const_set_lazy(:LOAD_CMD_RELOAD) { 2 }
      const_attr_reader  :LOAD_CMD_RELOAD
      
      const_set_lazy(:LOAD_CMD_HISTORY) { 4 }
      const_attr_reader  :LOAD_CMD_HISTORY
    }
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_busy_flags(a_busy_flags)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 42, get_address, a_busy_flags)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_load_type(a_load_type)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 43, get_address, a_load_type)
    end
    
    typesig { [::Java::Int] }
    def _set_load_type(a_load_type)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 44, get_address, a_load_type)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _is_being_destroyed(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 45, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_is_executing_on_load_handler(a_is_executing_on_load_handler)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 46, get_address, a_is_executing_on_load_handler)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_layout_history_state(a_layout_history_state)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 47, get_address, a_layout_history_state)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_layout_history_state(a_layout_history_state)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 48, get_address, a_layout_history_state)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_should_save_layout_state(a_should_save_layout_state)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 49, get_address, a_should_save_layout_state)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_security_ui(a_security_ui)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 50, get_address, a_security_ui)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_security_ui(a_security_ui)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 51, get_address, a_security_ui)
    end
    
    typesig { [] }
    def _suspend_refresh_uris
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 52, get_address)
    end
    
    typesig { [] }
    def _resume_refresh_uris
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 53, get_address)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    def _begin_restore(viewer, top)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 54, get_address, viewer, top)
    end
    
    typesig { [] }
    def _finish_restore
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 55, get_address)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_restoring_document(a_restoring_document)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 56, get_address, a_restoring_document)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_use_error_pages(a_use_error_pages)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 57, get_address, a_use_error_pages)
    end
    
    typesig { [::Java::Int] }
    def _set_use_error_pages(a_use_error_pages)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 58, get_address, a_use_error_pages)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_previous_trans_index(a_previous_trans_index)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 59, get_address, a_previous_trans_index)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_loaded_trans_index(a_loaded_trans_index)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 60, get_address, a_loaded_trans_index)
    end
    
    typesig { [::Java::Int] }
    def _history_purged(num_entries)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 61, get_address, num_entries)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    # long
    # long
    def _get_session_storage_for_uri(uri, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 62, get_address, uri, _retval)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _add_session_storage(a_domain, storage)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 63, get_address, a_domain, storage)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_current_document_channel(a_current_document_channel)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 64, get_address, a_current_document_channel)
    end
    
    typesig { [::Java::Int] }
    def _set_child_offset(offset)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 65, get_address, offset)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_is_in_unload(a_is_in_unload)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 66, get_address, a_is_in_unload)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_channel_is_unsafe(a_channel_is_unsafe)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 67, get_address, a_channel_is_unsafe)
    end
    
    private
    alias_method :initialize_ns_idoc_shell_1_9, :initialize
  end
  
end
