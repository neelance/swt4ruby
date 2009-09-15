require "rjava"

# Copyright (c) 2003, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module MozillaImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Java::Io
      include ::Java::Lang::Reflect
      include ::Java::Util
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Mozilla
      include ::Org::Eclipse::Swt::Internal::Mozilla::Init
      include ::Org::Eclipse::Swt::Layout
    }
  end
  
  class Mozilla < MozillaImports.const_get :WebBrowser
    include_class_members MozillaImports
    
    # long
    attr_accessor :embed_handle
    alias_method :attr_embed_handle, :embed_handle
    undef_method :embed_handle
    alias_method :attr_embed_handle=, :embed_handle=
    undef_method :embed_handle=
    
    attr_accessor :web_browser
    alias_method :attr_web_browser, :web_browser
    undef_method :web_browser
    alias_method :attr_web_browser=, :web_browser=
    undef_method :web_browser=
    
    attr_accessor :web_browser_object
    alias_method :attr_web_browser_object, :web_browser_object
    undef_method :web_browser_object
    alias_method :attr_web_browser_object=, :web_browser_object=
    undef_method :web_browser_object=
    
    attr_accessor :delegate
    alias_method :attr_delegate, :delegate
    undef_method :delegate
    alias_method :attr_delegate=, :delegate=
    undef_method :delegate=
    
    # Interfaces for this Mozilla embedding notification
    attr_accessor :supports
    alias_method :attr_supports, :supports
    undef_method :supports
    alias_method :attr_supports=, :supports=
    undef_method :supports=
    
    attr_accessor :weak_reference
    alias_method :attr_weak_reference, :weak_reference
    undef_method :weak_reference
    alias_method :attr_weak_reference=, :weak_reference=
    undef_method :weak_reference=
    
    attr_accessor :web_progress_listener
    alias_method :attr_web_progress_listener, :web_progress_listener
    undef_method :web_progress_listener
    alias_method :attr_web_progress_listener=, :web_progress_listener=
    undef_method :web_progress_listener=
    
    attr_accessor :web_browser_chrome
    alias_method :attr_web_browser_chrome, :web_browser_chrome
    undef_method :web_browser_chrome
    alias_method :attr_web_browser_chrome=, :web_browser_chrome=
    undef_method :web_browser_chrome=
    
    attr_accessor :web_browser_chrome_focus
    alias_method :attr_web_browser_chrome_focus, :web_browser_chrome_focus
    undef_method :web_browser_chrome_focus
    alias_method :attr_web_browser_chrome_focus=, :web_browser_chrome_focus=
    undef_method :web_browser_chrome_focus=
    
    attr_accessor :embedding_site_window
    alias_method :attr_embedding_site_window, :embedding_site_window
    undef_method :embedding_site_window
    alias_method :attr_embedding_site_window=, :embedding_site_window=
    undef_method :embedding_site_window=
    
    attr_accessor :interface_requestor
    alias_method :attr_interface_requestor, :interface_requestor
    undef_method :interface_requestor
    alias_method :attr_interface_requestor=, :interface_requestor=
    undef_method :interface_requestor=
    
    attr_accessor :supports_weak_reference
    alias_method :attr_supports_weak_reference, :supports_weak_reference
    undef_method :supports_weak_reference
    alias_method :attr_supports_weak_reference=, :supports_weak_reference=
    undef_method :supports_weak_reference=
    
    attr_accessor :context_menu_listener
    alias_method :attr_context_menu_listener, :context_menu_listener
    undef_method :context_menu_listener
    alias_method :attr_context_menu_listener=, :context_menu_listener=
    undef_method :context_menu_listener=
    
    attr_accessor :uri_content_listener
    alias_method :attr_uri_content_listener, :uri_content_listener
    undef_method :uri_content_listener
    alias_method :attr_uri_content_listener=, :uri_content_listener=
    undef_method :uri_content_listener=
    
    attr_accessor :tooltip_listener
    alias_method :attr_tooltip_listener, :tooltip_listener
    undef_method :tooltip_listener
    alias_method :attr_tooltip_listener=, :tooltip_listener=
    undef_method :tooltip_listener=
    
    attr_accessor :dom_event_listener
    alias_method :attr_dom_event_listener, :dom_event_listener
    undef_method :dom_event_listener
    alias_method :attr_dom_event_listener=, :dom_event_listener=
    undef_method :dom_event_listener=
    
    attr_accessor :chrome_flags
    alias_method :attr_chrome_flags, :chrome_flags
    undef_method :chrome_flags
    alias_method :attr_chrome_flags=, :chrome_flags=
    undef_method :chrome_flags=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    attr_accessor :last_key_code
    alias_method :attr_last_key_code, :last_key_code
    undef_method :last_key_code
    alias_method :attr_last_key_code=, :last_key_code=
    undef_method :last_key_code=
    
    attr_accessor :last_char_code
    alias_method :attr_last_char_code, :last_char_code
    undef_method :last_char_code
    alias_method :attr_last_char_code=, :last_char_code=
    undef_method :last_char_code=
    
    attr_accessor :auth_count
    alias_method :attr_auth_count, :auth_count
    undef_method :auth_count
    alias_method :attr_auth_count=, :auth_count=
    undef_method :auth_count=
    
    # long
    attr_accessor :request
    alias_method :attr_request, :request
    undef_method :request
    alias_method :attr_request=, :request=
    undef_method :request=
    
    attr_accessor :location
    alias_method :attr_location, :location
    undef_method :location
    alias_method :attr_location=, :location=
    undef_method :location=
    
    attr_accessor :size
    alias_method :attr_size, :size
    undef_method :size
    alias_method :attr_size=, :size=
    undef_method :size=
    
    attr_accessor :visible
    alias_method :attr_visible, :visible
    undef_method :visible
    alias_method :attr_visible=, :visible=
    undef_method :visible=
    
    attr_accessor :is_child
    alias_method :attr_is_child, :is_child
    undef_method :is_child
    alias_method :attr_is_child=, :is_child=
    undef_method :is_child=
    
    attr_accessor :ignore_dispose
    alias_method :attr_ignore_dispose, :ignore_dispose
    undef_method :ignore_dispose
    alias_method :attr_ignore_dispose=, :ignore_dispose=
    undef_method :ignore_dispose=
    
    attr_accessor :tip
    alias_method :attr_tip, :tip
    undef_method :tip
    alias_method :attr_tip=, :tip=
    undef_method :tip=
    
    attr_accessor :listener
    alias_method :attr_listener, :listener
    undef_method :listener
    alias_method :attr_listener=, :listener=
    undef_method :listener=
    
    attr_accessor :unhooked_domwindows
    alias_method :attr_unhooked_domwindows, :unhooked_domwindows
    undef_method :unhooked_domwindows
    alias_method :attr_unhooked_domwindows=, :unhooked_domwindows=
    undef_method :unhooked_domwindows=
    
    attr_accessor :last_navigate_url
    alias_method :attr_last_navigate_url, :last_navigate_url
    undef_method :last_navigate_url
    alias_method :attr_last_navigate_url=, :last_navigate_url=
    undef_method :last_navigate_url=
    
    attr_accessor :html_bytes
    alias_method :attr_html_bytes, :html_bytes
    undef_method :html_bytes
    alias_method :attr_html_bytes=, :html_bytes=
    undef_method :html_bytes=
    
    class_module.module_eval {
      
      def app_shell
        defined?(@@app_shell) ? @@app_shell : @@app_shell= nil
      end
      alias_method :attr_app_shell, :app_shell
      
      def app_shell=(value)
        @@app_shell = value
      end
      alias_method :attr_app_shell=, :app_shell=
      
      
      def location_provider
        defined?(@@location_provider) ? @@location_provider : @@location_provider= nil
      end
      alias_method :attr_location_provider, :location_provider
      
      def location_provider=(value)
        @@location_provider = value
      end
      alias_method :attr_location_provider=, :location_provider=
      
      
      def window_creator
        defined?(@@window_creator) ? @@window_creator : @@window_creator= nil
      end
      alias_method :attr_window_creator, :window_creator
      
      def window_creator=(value)
        @@window_creator = value
      end
      alias_method :attr_window_creator=, :window_creator=
      
      
      def browser_count
        defined?(@@browser_count) ? @@browser_count : @@browser_count= 0
      end
      alias_method :attr_browser_count, :browser_count
      
      def browser_count=(value)
        @@browser_count = value
      end
      alias_method :attr_browser_count=, :browser_count=
      
      
      def next_jsfunction_index
        defined?(@@next_jsfunction_index) ? @@next_jsfunction_index : @@next_jsfunction_index= 1
      end
      alias_method :attr_next_jsfunction_index, :next_jsfunction_index
      
      def next_jsfunction_index=(value)
        @@next_jsfunction_index = value
      end
      alias_method :attr_next_jsfunction_index=, :next_jsfunction_index=
      
      
      def all_functions
        defined?(@@all_functions) ? @@all_functions : @@all_functions= Hashtable.new
      end
      alias_method :attr_all_functions, :all_functions
      
      def all_functions=(value)
        @@all_functions = value
      end
      alias_method :attr_all_functions=, :all_functions=
      
      
      def initialized
        defined?(@@initialized) ? @@initialized : @@initialized= false
      end
      alias_method :attr_initialized, :initialized
      
      def initialized=(value)
        @@initialized = value
      end
      alias_method :attr_initialized=, :initialized=
      
      
      def is_pre_1_8
        defined?(@@is_pre_1_8) ? @@is_pre_1_8 : @@is_pre_1_8= false
      end
      alias_method :attr_is_pre_1_8, :is_pre_1_8
      
      def is_pre_1_8=(value)
        @@is_pre_1_8 = value
      end
      alias_method :attr_is_pre_1_8=, :is_pre_1_8=
      
      
      def is_pre_1_9
        defined?(@@is_pre_1_9) ? @@is_pre_1_9 : @@is_pre_1_9= false
      end
      alias_method :attr_is_pre_1_9, :is_pre_1_9
      
      def is_pre_1_9=(value)
        @@is_pre_1_9 = value
      end
      alias_method :attr_is_pre_1_9=, :is_pre_1_9=
      
      
      def performed_version_check
        defined?(@@performed_version_check) ? @@performed_version_check : @@performed_version_check= false
      end
      alias_method :attr_performed_version_check, :performed_version_check
      
      def performed_version_check=(value)
        @@performed_version_check = value
      end
      alias_method :attr_performed_version_check=, :performed_version_check=
      
      
      def xpcomwas_glued
        defined?(@@xpcomwas_glued) ? @@xpcomwas_glued : @@xpcomwas_glued= false
      end
      alias_method :attr_xpcomwas_glued, :xpcomwas_glued
      
      def xpcomwas_glued=(value)
        @@xpcomwas_glued = value
      end
      alias_method :attr_xpcomwas_glued=, :xpcomwas_glued=
      
      
      def xpcominit_was_glued
        defined?(@@xpcominit_was_glued) ? @@xpcominit_was_glued : @@xpcominit_was_glued= false
      end
      alias_method :attr_xpcominit_was_glued, :xpcominit_was_glued
      
      def xpcominit_was_glued=(value)
        @@xpcominit_was_glued = value
      end
      alias_method :attr_xpcominit_was_glued=, :xpcominit_was_glued=
      
      # XULRunner detect constants
      const_set_lazy(:GRERANGE_LOWER) { "1.8.1.2" }
      const_attr_reader  :GRERANGE_LOWER
      
      # $NON-NLS-1$
      const_set_lazy(:GRERANGE_LOWER_FALLBACK) { "1.8" }
      const_attr_reader  :GRERANGE_LOWER_FALLBACK
      
      # $NON-NLS-1$
      const_set_lazy(:LowerRangeInclusive) { true }
      const_attr_reader  :LowerRangeInclusive
      
      const_set_lazy(:GRERANGE_UPPER) { "1.9.*" }
      const_attr_reader  :GRERANGE_UPPER
      
      # $NON-NLS-1$
      const_set_lazy(:UpperRangeInclusive) { true }
      const_attr_reader  :UpperRangeInclusive
      
      const_set_lazy(:MAX_PORT) { 65535 }
      const_attr_reader  :MAX_PORT
      
      const_set_lazy(:SEPARATOR_OS) { System.get_property("file.separator") }
      const_attr_reader  :SEPARATOR_OS
      
      # $NON-NLS-1$
      const_set_lazy(:ABOUT_BLANK) { "about:blank" }
      const_attr_reader  :ABOUT_BLANK
      
      # $NON-NLS-1$
      const_set_lazy(:DISPOSE_LISTENER_HOOKED) { "org.eclipse.swt.browser.Mozilla.disposeListenerHooked" }
      const_attr_reader  :DISPOSE_LISTENER_HOOKED
      
      # $NON-NLS-1$
      const_set_lazy(:PREFIX_JAVASCRIPT) { "javascript:" }
      const_attr_reader  :PREFIX_JAVASCRIPT
      
      # $NON-NLS-1$
      const_set_lazy(:PREFERENCE_CHARSET) { "intl.charset.default" }
      const_attr_reader  :PREFERENCE_CHARSET
      
      # $NON-NLS-1$
      const_set_lazy(:PREFERENCE_DISABLEOPENDURINGLOAD) { "dom.disable_open_during_load" }
      const_attr_reader  :PREFERENCE_DISABLEOPENDURINGLOAD
      
      # $NON-NLS-1$
      const_set_lazy(:PREFERENCE_DISABLEWINDOWSTATUSCHANGE) { "dom.disable_window_status_change" }
      const_attr_reader  :PREFERENCE_DISABLEWINDOWSTATUSCHANGE
      
      # $NON-NLS-1$
      const_set_lazy(:PREFERENCE_LANGUAGES) { "intl.accept_languages" }
      const_attr_reader  :PREFERENCE_LANGUAGES
      
      # $NON-NLS-1$
      const_set_lazy(:PREFERENCE_PROXYHOST_FTP) { "network.proxy.ftp" }
      const_attr_reader  :PREFERENCE_PROXYHOST_FTP
      
      # $NON-NLS-1$
      const_set_lazy(:PREFERENCE_PROXYPORT_FTP) { "network.proxy.ftp_port" }
      const_attr_reader  :PREFERENCE_PROXYPORT_FTP
      
      # $NON-NLS-1$
      const_set_lazy(:PREFERENCE_PROXYHOST_HTTP) { "network.proxy.http" }
      const_attr_reader  :PREFERENCE_PROXYHOST_HTTP
      
      # $NON-NLS-1$
      const_set_lazy(:PREFERENCE_PROXYPORT_HTTP) { "network.proxy.http_port" }
      const_attr_reader  :PREFERENCE_PROXYPORT_HTTP
      
      # $NON-NLS-1$
      const_set_lazy(:PREFERENCE_PROXYHOST_SSL) { "network.proxy.ssl" }
      const_attr_reader  :PREFERENCE_PROXYHOST_SSL
      
      # $NON-NLS-1$
      const_set_lazy(:PREFERENCE_PROXYPORT_SSL) { "network.proxy.ssl_port" }
      const_attr_reader  :PREFERENCE_PROXYPORT_SSL
      
      # $NON-NLS-1$
      const_set_lazy(:PREFERENCE_PROXYTYPE) { "network.proxy.type" }
      const_attr_reader  :PREFERENCE_PROXYTYPE
      
      # $NON-NLS-1$
      const_set_lazy(:PROFILE_AFTER_CHANGE) { "profile-after-change" }
      const_attr_reader  :PROFILE_AFTER_CHANGE
      
      # $NON-NLS-1$
      const_set_lazy(:PROFILE_BEFORE_CHANGE) { "profile-before-change" }
      const_attr_reader  :PROFILE_BEFORE_CHANGE
      
      # $NON-NLS-1$
      const_set_lazy(:PROFILE_DIR) { SEPARATOR_OS + "eclipse" + SEPARATOR_OS }
      const_attr_reader  :PROFILE_DIR
      
      # $NON-NLS-1$
      const_set_lazy(:PROFILE_DO_CHANGE) { "profile-do-change" }
      const_attr_reader  :PROFILE_DO_CHANGE
      
      # $NON-NLS-1$
      const_set_lazy(:PROPERTY_PROXYPORT) { "network.proxy_port" }
      const_attr_reader  :PROPERTY_PROXYPORT
      
      # $NON-NLS-1$
      const_set_lazy(:PROPERTY_PROXYHOST) { "network.proxy_host" }
      const_attr_reader  :PROPERTY_PROXYHOST
      
      # $NON-NLS-1$
      const_set_lazy(:SEPARATOR_LOCALE) { "-" }
      const_attr_reader  :SEPARATOR_LOCALE
      
      # $NON-NLS-1$
      const_set_lazy(:SHUTDOWN_PERSIST) { "shutdown-persist" }
      const_attr_reader  :SHUTDOWN_PERSIST
      
      # $NON-NLS-1$
      const_set_lazy(:STARTUP) { "startup" }
      const_attr_reader  :STARTUP
      
      # $NON-NLS-1$
      const_set_lazy(:TOKENIZER_LOCALE) { "," }
      const_attr_reader  :TOKENIZER_LOCALE
      
      # $NON-NLS-1$
      const_set_lazy(:URI_FROMMEMORY) { "file:///" }
      const_attr_reader  :URI_FROMMEMORY
      
      # $NON-NLS-1$
      const_set_lazy(:XULRUNNER_PATH) { "org.eclipse.swt.browser.XULRunnerPath" }
      const_attr_reader  :XULRUNNER_PATH
      
      # $NON-NLS-1$
      # TEMPORARY CODE
      const_set_lazy(:GRE_INITIALIZED) { "org.eclipse.swt.browser.XULRunnerInitialized" }
      const_attr_reader  :GRE_INITIALIZED
      
      # $NON-NLS-1$
      when_class_loaded do
        MozillaClearSessions = Class.new(Runnable.class == Class ? Runnable : Object) do
          extend LocalClass
          include_class_members Mozilla
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            if (!self.attr_initialized)
              return
            end
            # long
            # long
            result = Array.typed(::Java::Int).new(1) { 0 }
            rc = XPCOM._ns_get_service_manager(result)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            if ((result[0]).equal?(0))
              error(XPCOM::NS_NOINTERFACE)
            end
            service_manager = NsIServiceManager.new(result[0])
            result[0] = 0
            a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_COOKIEMANAGER_CONTRACTID, true)
            rc = service_manager._get_service_by_contract_id(a_contract_id, NsICookieManager::NS_ICOOKIEMANAGER_IID, result)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            if ((result[0]).equal?(0))
              error(XPCOM::NS_NOINTERFACE)
            end
            service_manager._release
            manager = NsICookieManager.new(result[0])
            result[0] = 0
            rc = manager._get_enumerator(result)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            enumerator = NsISimpleEnumerator.new(result[0])
            more_elements = Array.typed(::Java::Int).new(1) { 0 }
            # PRBool
            rc = enumerator._has_more_elements(more_elements)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            while (!(more_elements[0]).equal?(0))
              result[0] = 0
              rc = enumerator._get_next(result)
              if (!(rc).equal?(XPCOM::NS_OK))
                error(rc)
              end
              cookie = NsICookie.new(result[0])
              expires = Array.typed(::Java::Long).new(1) { 0 }
              rc = cookie._get_expires(expires)
              if ((expires[0]).equal?(0))
                # indicates a session cookie
                # long
                domain = XPCOM.ns_embed_cstring_new
                # long
                name = XPCOM.ns_embed_cstring_new
                # long
                path = XPCOM.ns_embed_cstring_new
                cookie._get_host(domain)
                cookie._get_name(name)
                cookie._get_path(path)
                rc = manager._remove(domain, name, path, 0)
                XPCOM.ns_embed_cstring_delete(domain)
                XPCOM.ns_embed_cstring_delete(name)
                XPCOM.ns_embed_cstring_delete(path)
                if (!(rc).equal?(XPCOM::NS_OK))
                  error(rc)
                end
              end
              cookie._release
              rc = enumerator._has_more_elements(more_elements)
              if (!(rc).equal?(XPCOM::NS_OK))
                error(rc)
              end
            end
            enumerator._release
            manager._release
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        MozillaGetCookie = Class.new(Runnable.class == Class ? Runnable : Object) do
          extend LocalClass
          include_class_members Mozilla
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            if (!self.attr_initialized)
              return
            end
            # long
            # long
            result = Array.typed(::Java::Int).new(1) { 0 }
            rc = XPCOM._ns_get_service_manager(result)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            if ((result[0]).equal?(0))
              error(XPCOM::NS_NOINTERFACE)
            end
            service_manager = NsIServiceManager.new(result[0])
            result[0] = 0
            rc = service_manager._get_service(XPCOM::NS_IOSERVICE_CID, NsIIOService::NS_IIOSERVICE_IID, result)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            if ((result[0]).equal?(0))
              error(XPCOM::NS_NOINTERFACE)
            end
            io_service = NsIIOService.new(result[0])
            result[0] = 0
            bytes = MozillaDelegate.wcs_to_mbcs(nil, CookieUrl, false)
            # long
            a_spec = XPCOM.ns_embed_cstring_new(bytes, bytes.attr_length)
            rc = io_service._new_uri(a_spec, nil, 0, result)
            XPCOM.ns_embed_cstring_delete(a_spec)
            io_service._release
            if (!(rc).equal?(XPCOM::NS_OK))
              service_manager._release
              return
            end
            if ((result[0]).equal?(0))
              error(XPCOM::NS_ERROR_NULL_POINTER)
            end
            a_uri = NsIURI.new(result[0])
            result[0] = 0
            a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_COOKIESERVICE_CONTRACTID, true)
            rc = service_manager._get_service_by_contract_id(a_contract_id, NsICookieService::NS_ICOOKIESERVICE_IID, result)
            # long
            cookie_string = 0
            if ((rc).equal?(XPCOM::NS_OK) && !(result[0]).equal?(0))
              cookie_service = NsICookieService.new(result[0])
              result[0] = 0
              rc = cookie_service._get_cookie_string(a_uri.get_address, 0, result)
              cookie_service._release
              if (!(rc).equal?(XPCOM::NS_OK))
                error(rc)
              end
              if ((result[0]).equal?(0))
                a_uri._release
                service_manager._release
                return
              end
              cookie_string = result[0]
            else
              result[0] = 0
              rc = service_manager._get_service_by_contract_id(a_contract_id, NsICookieService_1_9::NS_ICOOKIESERVICE_IID, result)
              if (!(rc).equal?(XPCOM::NS_OK))
                error(rc)
              end
              if ((result[0]).equal?(0))
                error(XPCOM::NS_NOINTERFACE)
              end
              cookie_service = NsICookieService_1_9.new(result[0])
              result[0] = 0
              rc = cookie_service._get_cookie_string(a_uri.get_address, 0, result)
              cookie_service._release
              if (!(rc).equal?(XPCOM::NS_OK))
                error(rc)
              end
              if ((result[0]).equal?(0))
                a_uri._release
                service_manager._release
                return
              end
              cookie_string = result[0]
            end
            a_uri._release
            service_manager._release
            result[0] = 0
            length = C.strlen(cookie_string)
            bytes = Array.typed(::Java::Byte).new(length) { 0 }
            XPCOM.memmove___org_eclipse_swt_browser_mozilla_1(bytes, cookie_string, length)
            C.free(cookie_string)
            all_cookies = String.new(MozillaDelegate.mbcs_to_wcs(nil, bytes))
            tokenizer = self.class::StringTokenizer.new(all_cookies, ";") # $NON-NLS-1$
            while (tokenizer.has_more_tokens)
              cookie = tokenizer.next_token
              index = cookie.index_of(Character.new(?=.ord))
              if (!(index).equal?(-1))
                name = cookie.substring(0, index).trim
                if ((name == CookieName))
                  CookieValue = cookie.substring(index + 1).trim
                  return
                end
              end
            end
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        MozillaSetCookie = Class.new(Runnable.class == Class ? Runnable : Object) do
          extend LocalClass
          include_class_members Mozilla
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            if (!self.attr_initialized)
              return
            end
            # long
            # long
            result = Array.typed(::Java::Int).new(1) { 0 }
            rc = XPCOM._ns_get_service_manager(result)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            if ((result[0]).equal?(0))
              error(XPCOM::NS_NOINTERFACE)
            end
            service_manager = NsIServiceManager.new(result[0])
            result[0] = 0
            rc = service_manager._get_service(XPCOM::NS_IOSERVICE_CID, NsIIOService::NS_IIOSERVICE_IID, result)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            if ((result[0]).equal?(0))
              error(XPCOM::NS_NOINTERFACE)
            end
            io_service = NsIIOService.new(result[0])
            result[0] = 0
            bytes = MozillaDelegate.wcs_to_mbcs(nil, CookieUrl, false)
            # long
            a_spec = XPCOM.ns_embed_cstring_new(bytes, bytes.attr_length)
            rc = io_service._new_uri(a_spec, nil, 0, result)
            XPCOM.ns_embed_cstring_delete(a_spec)
            io_service._release
            if (!(rc).equal?(XPCOM::NS_OK))
              service_manager._release
              return
            end
            if ((result[0]).equal?(0))
              error(XPCOM::NS_ERROR_NULL_POINTER)
            end
            a_uri = NsIURI.new(result[0])
            result[0] = 0
            a_cookie = MozillaDelegate.wcs_to_mbcs(nil, CookieValue, true)
            a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_COOKIESERVICE_CONTRACTID, true)
            rc = service_manager._get_service_by_contract_id(a_contract_id, NsICookieService::NS_ICOOKIESERVICE_IID, result)
            if ((rc).equal?(XPCOM::NS_OK) && !(result[0]).equal?(0))
              cookie_service = NsICookieService.new(result[0])
              rc = cookie_service._set_cookie_string(a_uri.get_address, 0, a_cookie, 0)
              cookie_service._release
            else
              result[0] = 0
              rc = service_manager._get_service_by_contract_id(a_contract_id, NsICookieService_1_9::NS_ICOOKIESERVICE_IID, result)
              if (!(rc).equal?(XPCOM::NS_OK))
                error(rc)
              end
              if ((result[0]).equal?(0))
                error(XPCOM::NS_NOINTERFACE)
              end
              cookie_service = NsICookieService_1_9.new(result[0])
              rc = cookie_service._set_cookie_string(a_uri.get_address, 0, a_cookie, 0)
              cookie_service._release
            end
            result[0] = 0
            a_uri._release
            service_manager._release
            CookieResult = (rc).equal?(0)
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
      end
    }
    
    typesig { [Composite, ::Java::Int] }
    def create(parent, style)
      @delegate = MozillaDelegate.new(self.attr_browser)
      display = parent.get_display
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      if (!self.attr_initialized)
        init_loaded = false
        is_xulrunner = false
        gre_initialized = System.get_property(GRE_INITIALIZED)
        if (("true" == gre_initialized))
          # $NON-NLS-1$
          # 
          # Another browser has already initialized xulrunner in this process,
          # so just bind to it instead of trying to initialize a new one.
          self.attr_initialized = true
        end
        mozilla_path = System.get_property(XULRUNNER_PATH)
        # Browser clients that ship XULRunner in a plug-in must have an opportunity
        # to set the org.eclipse.swt.browser.XULRunnerPath system property to point
        # at their XULRunner before the first Mozilla-based Browser is created.  To
        # facilitate this, reflection is used to reference non-existent class
        # org.eclipse.swt.browser.XULRunnerInitializer the first time a Mozilla-
        # based Browser is created.   A client wishing to use this hook can do so
        # by creating a fragment of org.eclipse.swt that implements this class and
        # sets the system property in its static initializer.
        if ((mozilla_path).nil?)
          begin
            Class.for_name("org.eclipse.swt.browser.XULRunnerInitializer") # $NON-NLS-1$
            mozilla_path = RJava.cast_to_string(System.get_property(XULRUNNER_PATH))
          rescue ClassNotFoundException => e
            # no fragment is providing this class, which is the typical case
          end
        end
        if ((mozilla_path).nil?)
          begin
            lib_name = @delegate.get_swtinit_library_name
            Library.load_library(lib_name)
            init_loaded = true
          rescue UnsatisfiedLinkError => e
            # If this library failed to load then do not attempt to detect a
            # xulrunner to use.  The Browser may still be usable if MOZILLA_FIVE_HOME
            # points at a GRE.
          end
        else
          mozilla_path += SEPARATOR_OS + RJava.cast_to_string(@delegate.get_library_name)
          is_xulrunner = true
        end
        if (init_loaded)
          # attempt to discover a XULRunner to use as the GRE
          range = GREVersionRange.new
          bytes = MozillaDelegate.wcs_to_mbcs(nil, GRERANGE_LOWER, true)
          # long
          lower = C.malloc(bytes.attr_length)
          C.memmove___org_eclipse_swt_browser_mozilla_3(lower, bytes, bytes.attr_length)
          range.attr_lower = lower
          range.attr_lower_inclusive = LowerRangeInclusive
          bytes = MozillaDelegate.wcs_to_mbcs(nil, GRERANGE_UPPER, true)
          # long
          upper = C.malloc(bytes.attr_length)
          C.memmove___org_eclipse_swt_browser_mozilla_5(upper, bytes, bytes.attr_length)
          range.attr_upper = upper
          range.attr_upper_inclusive = UpperRangeInclusive
          length = XPCOMInit::PATH_MAX
          # long
          gre_buffer = C.malloc(length)
          # long
          properties_ptr = C.malloc(2 * C::PTR_SIZEOF)
          rc = XPCOMInit._gre_get_grepath_with_properties(range, 1, properties_ptr, 0, gre_buffer, length)
          # A XULRunner was not found that supports wrapping of XPCOM handles as JavaXPCOM objects.
          # Drop the lower version bound and try to detect an earlier XULRunner installation.
          if (!(rc).equal?(XPCOM::NS_OK))
            C.free(lower)
            bytes = MozillaDelegate.wcs_to_mbcs(nil, GRERANGE_LOWER_FALLBACK, true)
            lower = C.malloc(bytes.attr_length)
            C.memmove___org_eclipse_swt_browser_mozilla_7(lower, bytes, bytes.attr_length)
            range.attr_lower = lower
            rc = XPCOMInit._gre_get_grepath_with_properties(range, 1, properties_ptr, 0, gre_buffer, length)
          end
          C.free(lower)
          C.free(upper)
          C.free(properties_ptr)
          if ((rc).equal?(XPCOM::NS_OK))
            # indicates that a XULRunner was found
            length = C.strlen(gre_buffer)
            bytes = Array.typed(::Java::Byte).new(length) { 0 }
            C.memmove___org_eclipse_swt_browser_mozilla_9(bytes, gre_buffer, length)
            mozilla_path = RJava.cast_to_string(String.new(MozillaDelegate.mbcs_to_wcs(nil, bytes)))
            is_xulrunner = mozilla_path.length > 0
            # Test whether the detected XULRunner can be used as the GRE before loading swt's
            # XULRunner library.  If it cannot be used then fall back to attempting to use
            # the GRE pointed to by MOZILLA_FIVE_HOME.
            # 
            # One case where this will fail is attempting to use a 64-bit xulrunner while swt
            # is running in 32-bit mode, or vice versa.
            if (is_xulrunner)
              path = MozillaDelegate.wcs_to_mbcs(nil, mozilla_path, true)
              rc = XPCOMInit._xpcomglue_startup(path)
              if (!(rc).equal?(XPCOM::NS_OK))
                mozilla_path = RJava.cast_to_string(mozilla_path.substring(0, mozilla_path.last_index_of(SEPARATOR_OS)))
                if (Device.attr_debug)
                  System.out.println("cannot use detected XULRunner: " + mozilla_path)
                end # $NON-NLS-1$
                # attempt to XPCOMGlueStartup the GRE pointed at by MOZILLA_FIVE_HOME
                # long
                ptr = C.getenv(MozillaDelegate.wcs_to_mbcs(nil, XPCOM::MOZILLA_FIVE_HOME, true))
                if ((ptr).equal?(0))
                  is_xulrunner = false
                else
                  length = C.strlen(ptr)
                  buffer = Array.typed(::Java::Byte).new(length) { 0 }
                  C.memmove___org_eclipse_swt_browser_mozilla_11(buffer, ptr, length)
                  mozilla_path = RJava.cast_to_string(String.new(MozillaDelegate.mbcs_to_wcs(nil, buffer)))
                  # Attempting to XPCOMGlueStartup a mozilla-based GRE != xulrunner can
                  # crash, so don't attempt unless the GRE appears to be xulrunner.
                  if ((mozilla_path.index_of("xulrunner")).equal?(-1))
                    # $NON-NLS-1$
                    is_xulrunner = false
                  else
                    mozilla_path += SEPARATOR_OS + RJava.cast_to_string(@delegate.get_library_name)
                    path = MozillaDelegate.wcs_to_mbcs(nil, mozilla_path, true)
                    rc = XPCOMInit._xpcomglue_startup(path)
                    if (!(rc).equal?(XPCOM::NS_OK))
                      is_xulrunner = false
                      mozilla_path = RJava.cast_to_string(mozilla_path.substring(0, mozilla_path.last_index_of(SEPARATOR_OS)))
                      if (Device.attr_debug)
                        System.out.println("failed to start as XULRunner: " + mozilla_path)
                      end # $NON-NLS-1$
                    end
                  end
                end
              end
              if (is_xulrunner)
                self.attr_xpcominit_was_glued = true
              end
            end
          end
          C.free(gre_buffer)
        end
        if (is_xulrunner)
          if (Device.attr_debug)
            System.out.println("XULRunner path: " + mozilla_path)
          end # $NON-NLS-1$
          begin
            Library.load_library("swt-xulrunner") # $NON-NLS-1$
          rescue UnsatisfiedLinkError => e
            SWT.error(SWT::ERROR_NO_HANDLES, e)
          end
          path = MozillaDelegate.wcs_to_mbcs(nil, mozilla_path, true)
          rc = XPCOM._xpcomglue_startup(path)
          if (!(rc).equal?(XPCOM::NS_OK))
            self.attr_browser.dispose
            error(rc)
          end
          self.attr_xpcomwas_glued = true
          # Remove the trailing xpcom lib name from mozillaPath because the
          # Mozilla.initialize and NS_InitXPCOM2 invocations require a directory name only.
          mozilla_path = RJava.cast_to_string(mozilla_path.substring(0, mozilla_path.last_index_of(SEPARATOR_OS)))
        else
          if (!((style & SWT::MOZILLA)).equal?(0))
            self.attr_browser.dispose
            error_string = (!(mozilla_path).nil? && mozilla_path.length > 0) ? " [Failed to use detected XULRunner: " + mozilla_path + "]" : " [Could not detect registered XULRunner to use]" # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
            SWT.error(SWT::ERROR_NO_HANDLES, nil, error_string)
          end
          # attempt to use the GRE pointed at by MOZILLA_FIVE_HOME
          # long
          ptr = C.getenv(MozillaDelegate.wcs_to_mbcs(nil, XPCOM::MOZILLA_FIVE_HOME, true))
          if (!(ptr).equal?(0))
            length_ = C.strlen(ptr)
            buffer = Array.typed(::Java::Byte).new(length_) { 0 }
            C.memmove___org_eclipse_swt_browser_mozilla_13(buffer, ptr, length_)
            mozilla_path = RJava.cast_to_string(String.new(MozillaDelegate.mbcs_to_wcs(nil, buffer)))
          else
            self.attr_browser.dispose
            SWT.error(SWT::ERROR_NO_HANDLES, nil, " [Unknown Mozilla path (MOZILLA_FIVE_HOME not set)]") # $NON-NLS-1$
          end
          if (Device.attr_debug)
            System.out.println("Mozilla path: " + mozilla_path)
          end # $NON-NLS-1$
          # Note.  Embedding a Mozilla GTK1.2 causes a crash.  The workaround
          # is to check the version of GTK used by Mozilla by looking for
          # the libwidget_gtk.so library used by Mozilla GTK1.2. Mozilla GTK2
          # uses the libwidget_gtk2.so library.
          if (Compatibility.file_exists(mozilla_path, "components/libwidget_gtk.so"))
            # $NON-NLS-1$
            self.attr_browser.dispose
            SWT.error(SWT::ERROR_NO_HANDLES, nil, " [Mozilla GTK2 required (GTK1.2 detected)]") # $NON-NLS-1$
          end
          begin
            Library.load_library("swt-mozilla") # $NON-NLS-1$
          rescue UnsatisfiedLinkError => e
            begin
              # The initial loadLibrary attempt may have failed as a result of the user's
              # system not having libstdc++.so.6 installed, so try to load the alternate
              # swt mozilla library that depends on libswtc++.so.5 instead.
              Library.load_library("swt-mozilla-gcc3") # $NON-NLS-1$
            rescue UnsatisfiedLinkError => ex
              self.attr_browser.dispose
              # Print the error from the first failed attempt since at this point it's
              # known that the failure was not due to the libstdc++.so.6 dependency.
              SWT.error(SWT::ERROR_NO_HANDLES, e, " [MOZILLA_FIVE_HOME='" + mozilla_path + "']") # $NON-NLS-1$ //$NON-NLS-2$
            end
          end
        end
        if (!self.attr_initialized)
          self.attr_location_provider = AppFileLocProvider.new(mozilla_path)
          self.attr_location_provider._add_ref
          # extract external.xpt to temp
          temp_path = System.get_property("java.io.tmpdir") # $NON-NLS-1$
          components_dir = JavaFile.new(temp_path, "eclipse/mozillaComponents") # $NON-NLS-1$
          is = Library.get_resource_as_stream("/external.xpt") # $NON-NLS-1$
          if (!(is).nil?)
            if (!components_dir.exists)
              components_dir.mkdirs
            end
            read = 0
            buffer = Array.typed(::Java::Byte).new(4096) { 0 }
            file = JavaFile.new(components_dir, "external.xpt") # $NON-NLS-1$
            begin
              os = FileOutputStream.new(file)
              while (!((read = is.read(buffer))).equal?(-1))
                os.write(buffer, 0, read)
              end
              os.close
              is.close
            rescue FileNotFoundException => e
            rescue IOException => e
            end
          end
          if (components_dir.exists && components_dir.is_directory)
            self.attr_location_provider.set_components_path(components_dir.get_absolute_path)
          end
          # long
          # long
          ret_val = Array.typed(::Java::Int).new(1) { 0 }
          path_string = NsEmbedString.new(mozilla_path)
          rc = XPCOM._ns_new_local_file(path_string.get_address, 1, ret_val)
          path_string.dispose
          if (!(rc).equal?(XPCOM::NS_OK))
            self.attr_browser.dispose
            error(rc)
          end
          if ((ret_val[0]).equal?(0))
            self.attr_browser.dispose
            error(XPCOM::NS_ERROR_NULL_POINTER)
          end
          local_file = NsILocalFile.new(ret_val[0])
          if (is_xulrunner)
            size = XPCOM.ns_dynamic_function_load_sizeof
            # alloc memory for two structs, the second is empty to signify the end of the list
            # long
            ptr = C.malloc(size * 2)
            C.memset(ptr, 0, size * 2)
            function_load = NsDynamicFunctionLoad.new
            bytes = MozillaDelegate.wcs_to_mbcs(nil, "XRE_InitEmbedding", true) # $NON-NLS-1$
            function_load.attr_function_name = C.malloc(bytes.attr_length)
            C.memmove___org_eclipse_swt_browser_mozilla_15(function_load.attr_function_name, bytes, bytes.attr_length)
            function_load.attr_function = C.malloc(C::PTR_SIZEOF)
            # long
            C.memmove___org_eclipse_swt_browser_mozilla_17(function_load.attr_function, Array.typed(::Java::Int).new([0]), C::PTR_SIZEOF)
            XPCOM.memmove___org_eclipse_swt_browser_mozilla_19(ptr, function_load, XPCOM.ns_dynamic_function_load_sizeof)
            XPCOM._xpcomglue_load_xulfunctions(ptr)
            C.memmove___org_eclipse_swt_browser_mozilla_21(result, function_load.attr_function, C::PTR_SIZEOF)
            # long
            function_ptr = result[0]
            result[0] = 0
            C.free(function_load.attr_function)
            C.free(function_load.attr_function_name)
            C.free(ptr)
            rc = XPCOM._call(function_ptr, local_file.get_address, local_file.get_address, self.attr_location_provider.get_address, 0, 0)
            if ((rc).equal?(XPCOM::NS_OK))
              System.set_property(XULRUNNER_PATH, mozilla_path)
            end
          else
            rc = XPCOM._ns_init_xpcom2(0, local_file.get_address, self.attr_location_provider.get_address)
          end
          local_file._release
          if (!(rc).equal?(XPCOM::NS_OK))
            self.attr_browser.dispose
            SWT.error(SWT::ERROR_NO_HANDLES, nil, " [MOZILLA_FIVE_HOME may not point at an embeddable GRE] [NS_InitEmbedding " + mozilla_path + " error " + RJava.cast_to_string(rc) + "]") # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
          end
          System.set_property(GRE_INITIALIZED, "true") # $NON-NLS-1$
        end
        # If JavaXPCOM is detected then attempt to initialize it with the XULRunner being used
        if (is_xulrunner)
          begin
            clazz = Class.for_name("org.mozilla.xpcom.Mozilla") # $NON-NLS-1$
            method = clazz.get_method("getInstance", Array.typed(Class).new(0) { nil }) # $NON-NLS-1$
            mozilla = method.invoke(nil, Array.typed(Object).new(0) { nil })
            method = clazz.get_method("getComponentManager", Array.typed(Class).new(0) { nil }) # $NON-NLS-1$
            begin
              method.invoke(mozilla, Array.typed(Object).new(0) { nil })
            rescue InvocationTargetException => e
              # indicates that JavaXPCOM has not been initialized yet
              file_class = Class.for_name("java.io.File") # $NON-NLS-1$
              method = clazz.get_method("initialize", Array.typed(Class).new([file_class])) # $NON-NLS-1$
              constructor = file_class.get_declared_constructor(Array.typed(Class).new([String]))
              argument = constructor.new_instance(Array.typed(Object).new([mozilla_path]))
              method.invoke(mozilla, Array.typed(Object).new([argument]))
            end
          rescue ClassNotFoundException => e
            # JavaXPCOM is not on the classpath
          rescue NoSuchMethodException => e
            # the JavaXPCOM on the classpath does not implement initialize()
          rescue IllegalArgumentException => e
          rescue IllegalAccessException => e
          rescue InvocationTargetException => e
          rescue InstantiationException => e
          end
        end
        rc = XPCOM._ns_get_component_manager(result)
        if (!(rc).equal?(XPCOM::NS_OK))
          self.attr_browser.dispose
          error(rc)
        end
        if ((result[0]).equal?(0))
          self.attr_browser.dispose
          error(XPCOM::NS_NOINTERFACE)
        end
        component_manager = NsIComponentManager.new(result[0])
        result[0] = 0
        if (@delegate.needs_spinup)
          # nsIAppShell is discontinued as of xulrunner 1.9, so do not fail if it is not found
          rc = component_manager._create_instance(XPCOM::NS_APPSHELL_CID, 0, NsIAppShell::NS_IAPPSHELL_IID, result)
          if (!(rc).equal?(XPCOM::NS_ERROR_NO_INTERFACE))
            if (!(rc).equal?(XPCOM::NS_OK))
              self.attr_browser.dispose
              error(rc)
            end
            if ((result[0]).equal?(0))
              self.attr_browser.dispose
              error(XPCOM::NS_NOINTERFACE)
            end
            self.attr_app_shell = NsIAppShell.new(result[0])
            rc = self.attr_app_shell._create(0, nil)
            if (!(rc).equal?(XPCOM::NS_OK))
              self.attr_browser.dispose
              error(rc)
            end
            rc = self.attr_app_shell._spinup
            if (!(rc).equal?(XPCOM::NS_OK))
              self.attr_browser.dispose
              error(rc)
            end
          end
          result[0] = 0
        end
        self.attr_window_creator = WindowCreator2.new
        self.attr_window_creator._add_ref
        rc = XPCOM._ns_get_service_manager(result)
        if (!(rc).equal?(XPCOM::NS_OK))
          self.attr_browser.dispose
          error(rc)
        end
        if ((result[0]).equal?(0))
          self.attr_browser.dispose
          error(XPCOM::NS_NOINTERFACE)
        end
        service_manager = NsIServiceManager.new(result[0])
        result[0] = 0
        a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_WINDOWWATCHER_CONTRACTID, true)
        rc = service_manager._get_service_by_contract_id(a_contract_id, NsIWindowWatcher::NS_IWINDOWWATCHER_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          self.attr_browser.dispose
          error(rc)
        end
        if ((result[0]).equal?(0))
          self.attr_browser.dispose
          error(XPCOM::NS_NOINTERFACE)
        end
        window_watcher = NsIWindowWatcher.new(result[0])
        result[0] = 0
        rc = window_watcher._set_window_creator(self.attr_window_creator.get_address)
        if (!(rc).equal?(XPCOM::NS_OK))
          self.attr_browser.dispose
          error(rc)
        end
        window_watcher._release
        # compute the profile directory and set it on the AppFileLocProvider
        if (!(self.attr_location_provider).nil?)
          buffer = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_DIRECTORYSERVICE_CONTRACTID, true)
          rc = service_manager._get_service_by_contract_id(buffer, NsIDirectoryService::NS_IDIRECTORYSERVICE_IID, result)
          if (!(rc).equal?(XPCOM::NS_OK))
            self.attr_browser.dispose
            error(rc)
          end
          if ((result[0]).equal?(0))
            self.attr_browser.dispose
            error(XPCOM::NS_NOINTERFACE)
          end
          directory_service = NsIDirectoryService.new(result[0])
          result[0] = 0
          rc = directory_service._query_interface(NsIProperties::NS_IPROPERTIES_IID, result)
          if (!(rc).equal?(XPCOM::NS_OK))
            self.attr_browser.dispose
            error(rc)
          end
          if ((result[0]).equal?(0))
            self.attr_browser.dispose
            error(XPCOM::NS_NOINTERFACE)
          end
          directory_service._release
          properties = NsIProperties.new(result[0])
          result[0] = 0
          buffer = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_APP_APPLICATION_REGISTRY_DIR, true)
          rc = properties._get(buffer, NsIFile::NS_IFILE_IID, result)
          if (!(rc).equal?(XPCOM::NS_OK))
            self.attr_browser.dispose
            error(rc)
          end
          if ((result[0]).equal?(0))
            self.attr_browser.dispose
            error(XPCOM::NS_NOINTERFACE)
          end
          properties._release
          profile_dir = NsIFile.new(result[0])
          result[0] = 0
          # long
          path = XPCOM.ns_embed_cstring_new
          rc = profile_dir._get_native_path(path)
          if (!(rc).equal?(XPCOM::NS_OK))
            self.attr_browser.dispose
            error(rc)
          end
          length_ = XPCOM.ns_embed_cstring_length(path)
          # long
          ptr = XPCOM.ns_embed_cstring_get(path)
          buffer = Array.typed(::Java::Byte).new(length_) { 0 }
          XPCOM.memmove___org_eclipse_swt_browser_mozilla_23(buffer, ptr, length_)
          profile_path = RJava.cast_to_string(String.new(MozillaDelegate.mbcs_to_wcs(nil, buffer))) + PROFILE_DIR
          self.attr_location_provider.set_profile_path(profile_path)
          self.attr_location_provider.attr_is_xulrunner = is_xulrunner
          XPCOM.ns_embed_cstring_delete(path)
          profile_dir._release
          # notify observers of a new profile directory being used
          buffer = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_OBSERVER_CONTRACTID, true)
          rc = service_manager._get_service_by_contract_id(buffer, NsIObserverService::NS_IOBSERVERSERVICE_IID, result)
          if (!(rc).equal?(XPCOM::NS_OK))
            self.attr_browser.dispose
            error(rc)
          end
          if ((result[0]).equal?(0))
            self.attr_browser.dispose
            error(XPCOM::NS_NOINTERFACE)
          end
          observer_service = NsIObserverService.new(result[0])
          result[0] = 0
          buffer = MozillaDelegate.wcs_to_mbcs(nil, PROFILE_DO_CHANGE, true)
          length_ = STARTUP.length
          chars = CharArray.new(length_ + 1)
          STARTUP.get_chars(0, length_, chars, 0)
          rc = observer_service._notify_observers(0, buffer, chars)
          if (!(rc).equal?(XPCOM::NS_OK))
            self.attr_browser.dispose
            error(rc)
          end
          buffer = MozillaDelegate.wcs_to_mbcs(nil, PROFILE_AFTER_CHANGE, true)
          rc = observer_service._notify_observers(0, buffer, chars)
          if (!(rc).equal?(XPCOM::NS_OK))
            self.attr_browser.dispose
            error(rc)
          end
          observer_service._release
        end
        # As a result of using a common profile the user cannot change their locale
        # and charset.  The fix for this is to set mozilla's locale and charset
        # preference values according to the user's current locale and charset.
        a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_PREFSERVICE_CONTRACTID, true)
        rc = service_manager._get_service_by_contract_id(a_contract_id, NsIPrefService::NS_IPREFSERVICE_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          self.attr_browser.dispose
          error(rc)
        end
        if ((result[0]).equal?(0))
          self.attr_browser.dispose
          error(XPCOM::NS_NOINTERFACE)
        end
        pref_service = NsIPrefService.new(result[0])
        result[0] = 0
        buffer = Array.typed(::Java::Byte).new(1) { 0 }
        rc = pref_service._get_branch(buffer, result)
        # empty buffer denotes root preference level
        pref_service._release
        if (!(rc).equal?(XPCOM::NS_OK))
          self.attr_browser.dispose
          error(rc)
        end
        if ((result[0]).equal?(0))
          self.attr_browser.dispose
          error(XPCOM::NS_NOINTERFACE)
        end
        pref_branch = NsIPrefBranch.new(result[0])
        result[0] = 0
        # get Mozilla's current locale preference value
        pref_locales = nil
        localized_string = nil
        buffer = MozillaDelegate.wcs_to_mbcs(nil, PREFERENCE_LANGUAGES, true)
        rc = pref_branch._get_complex_value(buffer, NsIPrefLocalizedString::NS_IPREFLOCALIZEDSTRING_IID, result)
        # Feature of Debian.  For some reason attempting to query for the current locale
        # preference fails on Debian.  The workaround for this is to assume a value of
        # "en-us,en" since this is typically the default value when mozilla is used without
        # a profile.
        if (!(rc).equal?(XPCOM::NS_OK))
          pref_locales = "en-us,en" + TOKENIZER_LOCALE # $NON-NLS-1$
        else
          if ((result[0]).equal?(0))
            self.attr_browser.dispose
            error(XPCOM::NS_NOINTERFACE)
          end
          localized_string = NsIPrefLocalizedString.new(result[0])
          result[0] = 0
          rc = localized_string._to_string(result)
          if (!(rc).equal?(XPCOM::NS_OK))
            self.attr_browser.dispose
            error(rc)
          end
          if ((result[0]).equal?(0))
            self.attr_browser.dispose
            error(XPCOM::NS_NOINTERFACE)
          end
          length_ = XPCOM.strlen__prunichar(result[0])
          dest = CharArray.new(length_)
          XPCOM.memmove___org_eclipse_swt_browser_mozilla_25(dest, result[0], length_ * 2)
          pref_locales = RJava.cast_to_string(String.new(dest)) + TOKENIZER_LOCALE
        end
        result[0] = 0
        # construct the new locale preference value by prepending the
        # user's current locale and language to the original value
        locale = Locale.get_default
        language = locale.get_language
        country = locale.get_country
        string_buffer = StringBuffer.new(language)
        string_buffer.append(SEPARATOR_LOCALE)
        string_buffer.append(country.to_lower_case)
        string_buffer.append(TOKENIZER_LOCALE)
        string_buffer.append(language)
        string_buffer.append(TOKENIZER_LOCALE)
        new_locales = string_buffer.to_s
        start = 0
        end_ = -1
        begin
          start = end_ + 1
          end_ = pref_locales.index_of(TOKENIZER_LOCALE, start)
          token = nil
          if ((end_).equal?(-1))
            token = RJava.cast_to_string(pref_locales.substring(start))
          else
            token = RJava.cast_to_string(pref_locales.substring(start, end_))
          end
          if (token.length > 0)
            token = RJava.cast_to_string((token + TOKENIZER_LOCALE).trim)
            # ensure that duplicate locale values are not added
            if ((new_locales.index_of(token)).equal?(-1))
              string_buffer.append(token)
            end
          end
        end while (!(end_).equal?(-1))
        new_locales = RJava.cast_to_string(string_buffer.to_s)
        if (!(new_locales == pref_locales))
          # write the new locale value
          new_locales = RJava.cast_to_string(new_locales.substring(0, new_locales.length - TOKENIZER_LOCALE.length))
          # remove trailing tokenizer
          length_ = new_locales.length
          char_buffer = CharArray.new(length_ + 1)
          new_locales.get_chars(0, length_, char_buffer, 0)
          if ((localized_string).nil?)
            contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_PREFLOCALIZEDSTRING_CONTRACTID, true)
            rc = component_manager._create_instance_by_contract_id(contract_id, 0, NsIPrefLocalizedString::NS_IPREFLOCALIZEDSTRING_IID, result)
            if (!(rc).equal?(XPCOM::NS_OK))
              self.attr_browser.dispose
              error(rc)
            end
            if ((result[0]).equal?(0))
              self.attr_browser.dispose
              error(XPCOM::NS_NOINTERFACE)
            end
            localized_string = NsIPrefLocalizedString.new(result[0])
            result[0] = 0
          end
          localized_string._set_data_with_length(length_, char_buffer)
          rc = pref_branch._set_complex_value(buffer, NsIPrefLocalizedString::NS_IPREFLOCALIZEDSTRING_IID, localized_string.get_address)
        end
        if (!(localized_string).nil?)
          localized_string._release
          localized_string = nil
        end
        # get Mozilla's current charset preference value
        pref_charset = nil
        buffer = MozillaDelegate.wcs_to_mbcs(nil, PREFERENCE_CHARSET, true)
        rc = pref_branch._get_complex_value(buffer, NsIPrefLocalizedString::NS_IPREFLOCALIZEDSTRING_IID, result)
        # Feature of Debian.  For some reason attempting to query for the current charset
        # preference fails on Debian.  The workaround for this is to assume a value of
        # "ISO-8859-1" since this is typically the default value when mozilla is used
        # without a profile.
        if (!(rc).equal?(XPCOM::NS_OK))
          pref_charset = "ISO-8859-1" # $NON_NLS-1$
        else
          if ((result[0]).equal?(0))
            self.attr_browser.dispose
            error(XPCOM::NS_NOINTERFACE)
          end
          localized_string = NsIPrefLocalizedString.new(result[0])
          result[0] = 0
          rc = localized_string._to_string(result)
          if (!(rc).equal?(XPCOM::NS_OK))
            self.attr_browser.dispose
            error(rc)
          end
          if ((result[0]).equal?(0))
            self.attr_browser.dispose
            error(XPCOM::NS_NOINTERFACE)
          end
          length_ = XPCOM.strlen__prunichar(result[0])
          dest = CharArray.new(length_)
          XPCOM.memmove___org_eclipse_swt_browser_mozilla_27(dest, result[0], length_ * 2)
          pref_charset = RJava.cast_to_string(String.new(dest))
        end
        result[0] = 0
        new_charset = System.get_property("file.encoding") # $NON-NLS-1$
        if (!(new_charset == pref_charset))
          # write the new charset value
          length_ = new_charset.length
          char_buffer = CharArray.new(length_ + 1)
          new_charset.get_chars(0, length_, char_buffer, 0)
          if ((localized_string).nil?)
            contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_PREFLOCALIZEDSTRING_CONTRACTID, true)
            rc = component_manager._create_instance_by_contract_id(contract_id, 0, NsIPrefLocalizedString::NS_IPREFLOCALIZEDSTRING_IID, result)
            if (!(rc).equal?(XPCOM::NS_OK))
              self.attr_browser.dispose
              error(rc)
            end
            if ((result[0]).equal?(0))
              self.attr_browser.dispose
              error(XPCOM::NS_NOINTERFACE)
            end
            localized_string = NsIPrefLocalizedString.new(result[0])
            result[0] = 0
          end
          localized_string._set_data_with_length(length_, char_buffer)
          rc = pref_branch._set_complex_value(buffer, NsIPrefLocalizedString::NS_IPREFLOCALIZEDSTRING_IID, localized_string.get_address)
        end
        if (!(localized_string).nil?)
          localized_string._release
        end
        # Check for proxy values set as documented java properties and update mozilla's
        # preferences with these values if needed.
        proxy_host = System.get_property(PROPERTY_PROXYHOST)
        proxy_port_string = System.get_property(PROPERTY_PROXYPORT)
        port = -1
        if (!(proxy_port_string).nil?)
          begin
            value = JavaInteger.value_of(proxy_port_string).int_value
            if (0 <= value && value <= MAX_PORT)
              port = value
            end
          rescue NumberFormatException => e
            # do nothing, java property has non-integer value
          end
        end
        if (!(proxy_host).nil?)
          contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_PREFLOCALIZEDSTRING_CONTRACTID, true)
          rc = component_manager._create_instance_by_contract_id(contract_id, 0, NsIPrefLocalizedString::NS_IPREFLOCALIZEDSTRING_IID, result)
          if (!(rc).equal?(XPCOM::NS_OK))
            error(rc)
          end
          if ((result[0]).equal?(0))
            error(XPCOM::NS_NOINTERFACE)
          end
          localized_string = NsIPrefLocalizedString.new(result[0])
          result[0] = 0
          length_ = proxy_host.length
          char_buffer = CharArray.new(length_ + 1)
          proxy_host.get_chars(0, length_, char_buffer, 0)
          rc = localized_string._set_data_with_length(length_, char_buffer)
          if (!(rc).equal?(XPCOM::NS_OK))
            error(rc)
          end
          buffer = MozillaDelegate.wcs_to_mbcs(nil, PREFERENCE_PROXYHOST_FTP, true)
          rc = pref_branch._set_complex_value(buffer, NsIPrefLocalizedString::NS_IPREFLOCALIZEDSTRING_IID, localized_string.get_address)
          if (!(rc).equal?(XPCOM::NS_OK))
            error(rc)
          end
          buffer = MozillaDelegate.wcs_to_mbcs(nil, PREFERENCE_PROXYHOST_HTTP, true)
          rc = pref_branch._set_complex_value(buffer, NsIPrefLocalizedString::NS_IPREFLOCALIZEDSTRING_IID, localized_string.get_address)
          if (!(rc).equal?(XPCOM::NS_OK))
            error(rc)
          end
          buffer = MozillaDelegate.wcs_to_mbcs(nil, PREFERENCE_PROXYHOST_SSL, true)
          rc = pref_branch._set_complex_value(buffer, NsIPrefLocalizedString::NS_IPREFLOCALIZEDSTRING_IID, localized_string.get_address)
          if (!(rc).equal?(XPCOM::NS_OK))
            error(rc)
          end
          localized_string._release
        end
        if (!(port).equal?(-1))
          buffer = MozillaDelegate.wcs_to_mbcs(nil, PREFERENCE_PROXYPORT_FTP, true)
          rc = pref_branch._set_int_pref(buffer, port)
          if (!(rc).equal?(XPCOM::NS_OK))
            error(rc)
          end
          buffer = MozillaDelegate.wcs_to_mbcs(nil, PREFERENCE_PROXYPORT_HTTP, true)
          rc = pref_branch._set_int_pref(buffer, port)
          if (!(rc).equal?(XPCOM::NS_OK))
            error(rc)
          end
          buffer = MozillaDelegate.wcs_to_mbcs(nil, PREFERENCE_PROXYPORT_SSL, true)
          rc = pref_branch._set_int_pref(buffer, port)
          if (!(rc).equal?(XPCOM::NS_OK))
            error(rc)
          end
        end
        if (!(proxy_host).nil? || !(port).equal?(-1))
          buffer = MozillaDelegate.wcs_to_mbcs(nil, PREFERENCE_PROXYTYPE, true)
          rc = pref_branch._set_int_pref(buffer, 1)
          if (!(rc).equal?(XPCOM::NS_OK))
            error(rc)
          end
        end
        # Ensure that windows that are shown during page loads are not blocked.  Firefox may
        # try to block these by default since such windows are often unwelcome, but this
        # assumption should not be made in the Browser's context.  Since the Browser client
        # is responsible for creating the new Browser and Shell in an OpenWindowListener,
        # they should decide whether the new window is unwelcome or not and act accordingly.
        buffer = MozillaDelegate.wcs_to_mbcs(nil, PREFERENCE_DISABLEOPENDURINGLOAD, true)
        rc = pref_branch._set_bool_pref(buffer, 0)
        if (!(rc).equal?(XPCOM::NS_OK))
          self.attr_browser.dispose
          error(rc)
        end
        # Ensure that the status text can be set through means like javascript
        buffer = MozillaDelegate.wcs_to_mbcs(nil, PREFERENCE_DISABLEWINDOWSTATUSCHANGE, true)
        rc = pref_branch._set_bool_pref(buffer, 0)
        if (!(rc).equal?(XPCOM::NS_OK))
          self.attr_browser.dispose
          error(rc)
        end
        pref_branch._release
        factory = PromptService2Factory.new
        factory._add_ref
        rc = component_manager._query_interface(NsIComponentRegistrar::NS_ICOMPONENTREGISTRAR_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          self.attr_browser.dispose
          error(rc)
        end
        if ((result[0]).equal?(0))
          self.attr_browser.dispose
          error(XPCOM::NS_NOINTERFACE)
        end
        component_registrar = NsIComponentRegistrar.new(result[0])
        result[0] = 0
        component_registrar._auto_register(0)
        # detect the External component
        a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_PROMPTSERVICE_CONTRACTID, true)
        a_class_name = MozillaDelegate.wcs_to_mbcs(nil, "Prompt Service", true) # $NON-NLS-1$
        rc = component_registrar._register_factory(XPCOM::NS_PROMPTSERVICE_CID, a_class_name, a_contract_id, factory.get_address)
        if (!(rc).equal?(XPCOM::NS_OK))
          self.attr_browser.dispose
          error(rc)
        end
        factory._release
        external_factory = ExternalFactory.new
        external_factory._add_ref
        a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::EXTERNAL_CONTRACTID, true)
        a_class_name = MozillaDelegate.wcs_to_mbcs(nil, "External", true) # $NON-NLS-1$
        rc = component_registrar._register_factory(XPCOM::EXTERNAL_CID, a_class_name, a_contract_id, external_factory.get_address)
        if (!(rc).equal?(XPCOM::NS_OK))
          self.attr_browser.dispose
          error(rc)
        end
        external_factory._release
        rc = service_manager._get_service(XPCOM::NS_CATEGORYMANAGER_CID, NsICategoryManager::NS_ICATEGORYMANAGER_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        if ((result[0]).equal?(0))
          error(XPCOM::NS_NOINTERFACE)
        end
        service_manager._release
        category_manager = NsICategoryManager.new(result[0])
        result[0] = 0
        category = MozillaDelegate.wcs_to_mbcs(nil, "JavaScript global property", true) # $NON-NLS-1$
        entry = MozillaDelegate.wcs_to_mbcs(nil, "external", true) # $NON-NLS-1$
        rc = category_manager._add_category_entry(category, entry, a_contract_id, 1, 1, result)
        result[0] = 0
        category_manager._release
        # This Download factory will be used if the GRE version is < 1.8.
        # If the GRE version is 1.8.x then the Download factory that is registered later for
        # contract "Transfer" will be used.
        # If the GRE version is >= 1.9 then no Download factory is registered because this
        # functionality is provided by the GRE.
        download_factory = DownloadFactory.new
        download_factory._add_ref
        a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_DOWNLOAD_CONTRACTID, true)
        a_class_name = MozillaDelegate.wcs_to_mbcs(nil, "Download", true) # $NON-NLS-1$
        rc = component_registrar._register_factory(XPCOM::NS_DOWNLOAD_CID, a_class_name, a_contract_id, download_factory.get_address)
        if (!(rc).equal?(XPCOM::NS_OK))
          self.attr_browser.dispose
          error(rc)
        end
        download_factory._release
        picker_factory = is_xulrunner ? FilePickerFactory_1_8.new : FilePickerFactory.new
        picker_factory._add_ref
        a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_FILEPICKER_CONTRACTID, true)
        a_class_name = MozillaDelegate.wcs_to_mbcs(nil, "FilePicker", true) # $NON-NLS-1$
        rc = component_registrar._register_factory(XPCOM::NS_FILEPICKER_CID, a_class_name, a_contract_id, picker_factory.get_address)
        if (!(rc).equal?(XPCOM::NS_OK))
          self.attr_browser.dispose
          error(rc)
        end
        picker_factory._release
        component_registrar._release
        component_manager._release
        self.attr_initialized = true
      end
      if ((display.get_data(DISPOSE_LISTENER_HOOKED)).nil?)
        display.set_data(DISPOSE_LISTENER_HOOKED, DISPOSE_LISTENER_HOOKED)
        display.add_listener(SWT::Dispose, Class.new(Listener.class == Class ? Listener : Object) do
          extend LocalClass
          include_class_members Mozilla
          include Listener if Listener.class == Module
          
          typesig { [Event] }
          define_method :handle_event do |event|
            if (self.attr_browser_count > 0)
              return
            end
            # another display is still active
            # long
            # long
            result_ = Array.typed(::Java::Int).new(1) { 0 }
            rc = XPCOM._ns_get_service_manager(result_)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            if ((result_[0]).equal?(0))
              error(XPCOM::NS_NOINTERFACE)
            end
            service_manager = NsIServiceManager.new(result_[0])
            result_[0] = 0
            buffer = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_OBSERVER_CONTRACTID, true)
            rc = service_manager._get_service_by_contract_id(buffer, NsIObserverService::NS_IOBSERVERSERVICE_IID, result_)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            if ((result_[0]).equal?(0))
              error(XPCOM::NS_NOINTERFACE)
            end
            observer_service = NsIObserverService.new(result_[0])
            result_[0] = 0
            buffer = MozillaDelegate.wcs_to_mbcs(nil, PROFILE_BEFORE_CHANGE, true)
            length_ = SHUTDOWN_PERSIST.length
            chars = CharArray.new(length_ + 1)
            SHUTDOWN_PERSIST.get_chars(0, length_, chars, 0)
            rc = observer_service._notify_observers(0, buffer, chars)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            observer_service._release
            if (!(self.attr_location_provider).nil?)
              prefs_location = self.attr_location_provider.attr_profile_path + AppFileLocProvider::PREFERENCES_FILE
              path_string = NsEmbedString.new(prefs_location)
              rc = XPCOM._ns_new_local_file(path_string.get_address, 1, result_)
              if (!(rc).equal?(XPCOM::NS_OK))
                Mozilla.error(rc)
              end
              if ((result_[0]).equal?(0))
                Mozilla.error(XPCOM::NS_ERROR_NULL_POINTER)
              end
              path_string.dispose
              local_file = NsILocalFile.new(result_[0])
              result_[0] = 0
              rc = local_file._query_interface(NsIFile::NS_IFILE_IID, result_)
              if (!(rc).equal?(XPCOM::NS_OK))
                Mozilla.error(rc)
              end
              if ((result_[0]).equal?(0))
                Mozilla.error(XPCOM::NS_ERROR_NO_INTERFACE)
              end
              local_file._release
              pref_file = NsIFile.new(result_[0])
              result_[0] = 0
              buffer = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_PREFSERVICE_CONTRACTID, true)
              rc = service_manager._get_service_by_contract_id(buffer, NsIPrefService::NS_IPREFSERVICE_IID, result_)
              if (!(rc).equal?(XPCOM::NS_OK))
                error(rc)
              end
              if ((result_[0]).equal?(0))
                error(XPCOM::NS_NOINTERFACE)
              end
              pref_service = NsIPrefService.new(result_[0])
              result_[0] = 0
              rc = pref_service._save_pref_file(pref_file.get_address)
              pref_service._release
              pref_file._release
            end
            service_manager._release
            if (self.attr_xpcomwas_glued)
              # XULRunner 1.9 can crash on Windows if XPCOMGlueShutdown is invoked here,
              # presumably because one or more of its unloaded symbols are referenced when
              # this callback returns.  The workaround is to delay invoking XPCOMGlueShutdown
              # so that its symbols are still available once this callback returns.
              listener_class = self.class
              display.async_exec(Class.new(self.class::Runnable.class == Class ? self.class::Runnable : Object) do
                extend LocalClass
                include_class_members listener_class
                include class_self::Runnable if class_self::Runnable.class == Module
                
                typesig { [] }
                define_method :run do
                  XPCOM._xpcomglue_shutdown
                end
                
                typesig { [Vararg.new(Object)] }
                define_method :initialize do |*args|
                  super(*args)
                end
                
                private
                alias_method :initialize_anonymous, :initialize
              end.new_local(self))
              # the following is intentionally commented, because calling XRE_TermEmbedding
              # causes subsequent browser instantiations within the process to fail
              # int size = XPCOM.nsDynamicFunctionLoad_sizeof ();
              # /* alloc memory for two structs, the second is empty to signify the end of the list */
              # int /*long*/ ptr = C.malloc (size * 2);
              # C.memset (ptr, 0, size * 2);
              # nsDynamicFunctionLoad functionLoad = new nsDynamicFunctionLoad ();
              # byte[] bytes = MozillaDelegate.wcsToMbcs (null, "XRE_TermEmbedding", true); //$NON-NLS-1$
              # functionLoad.functionName = C.malloc (bytes.length);
              # C.memmove (functionLoad.functionName, bytes, bytes.length);
              # functionLoad.function = C.malloc (C.PTR_SIZEOF);
              # C.memmove (functionLoad.function, new int /*long*/[] {0} , C.PTR_SIZEOF);
              # XPCOM.memmove (ptr, functionLoad, XPCOM.nsDynamicFunctionLoad_sizeof ());
              # XPCOM.XPCOMGlueLoadXULFunctions (ptr);
              # C.memmove (result, functionLoad.function, C.PTR_SIZEOF);
              # int /*long*/ functionPtr = result[0];
              # result[0] = 0;
              # C.free (functionLoad.function);
              # C.free (functionLoad.functionName);
              # C.free (ptr);
              # XPCOM.Call (functionPtr);
              self.attr_xpcomwas_glued = false
            end
            if (self.attr_xpcominit_was_glued)
              XPCOMInit._xpcomglue_shutdown
              self.attr_xpcominit_was_glued = false
            end
            self.attr_initialized = false
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
      end
      self.attr_browser_count += 1
      rc = XPCOM._ns_get_component_manager(result)
      if (!(rc).equal?(XPCOM::NS_OK))
        self.attr_browser.dispose
        error(rc)
      end
      if ((result[0]).equal?(0))
        self.attr_browser.dispose
        error(XPCOM::NS_NOINTERFACE)
      end
      component_manager = NsIComponentManager.new(result[0])
      result[0] = 0
      ns_iwebbrowser_cid = NsID.new("F1EAC761-87E9-11d3-AF80-00A024FFC08C") # $NON-NLS-1$
      rc = component_manager._create_instance(ns_iwebbrowser_cid, 0, NsIWebBrowser::NS_IWEBBROWSER_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        self.attr_browser.dispose
        error(rc)
      end
      if ((result[0]).equal?(0))
        self.attr_browser.dispose
        error(XPCOM::NS_NOINTERFACE)
      end
      @web_browser = NsIWebBrowser.new(result[0])
      result[0] = 0
      create_cominterfaces
      _add_ref
      rc = @web_browser._set_container_window(@web_browser_chrome.get_address)
      if (!(rc).equal?(XPCOM::NS_OK))
        self.attr_browser.dispose
        error(rc)
      end
      rc = @web_browser._query_interface(NsIBaseWindow::NS_IBASEWINDOW_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        self.attr_browser.dispose
        error(rc)
      end
      if ((result[0]).equal?(0))
        self.attr_browser.dispose
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      base_window = NsIBaseWindow.new(result[0])
      result[0] = 0
      rect = self.attr_browser.get_client_area
      if (rect.is_empty)
        rect.attr_width = 1
        rect.attr_height = 1
      end
      @embed_handle = @delegate.get_handle
      rc = base_window._init_window(@embed_handle, 0, 0, 0, rect.attr_width, rect.attr_height)
      if (!(rc).equal?(XPCOM::NS_OK))
        self.attr_browser.dispose
        error(XPCOM::NS_ERROR_FAILURE)
      end
      rc = @delegate.create_base_window(base_window)
      if (!(rc).equal?(XPCOM::NS_OK))
        self.attr_browser.dispose
        error(XPCOM::NS_ERROR_FAILURE)
      end
      rc = base_window._set_visibility(1)
      if (!(rc).equal?(XPCOM::NS_OK))
        self.attr_browser.dispose
        error(XPCOM::NS_ERROR_FAILURE)
      end
      base_window._release
      if (!self.attr_performed_version_check)
        self.attr_performed_version_check = true
        rc = component_manager._query_interface(NsIComponentRegistrar::NS_ICOMPONENTREGISTRAR_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          self.attr_browser.dispose
          error(rc)
        end
        if ((result[0]).equal?(0))
          self.attr_browser.dispose
          error(XPCOM::NS_NOINTERFACE)
        end
        component_registrar = NsIComponentRegistrar.new(result[0])
        result[0] = 0
        dialog_factory = HelperAppLauncherDialogFactory.new
        dialog_factory._add_ref
        a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_HELPERAPPLAUNCHERDIALOG_CONTRACTID, true)
        a_class_name = MozillaDelegate.wcs_to_mbcs(nil, "Helper App Launcher Dialog", true) # $NON-NLS-1$
        rc = component_registrar._register_factory(XPCOM::NS_HELPERAPPLAUNCHERDIALOG_CID, a_class_name, a_contract_id, dialog_factory.get_address)
        if (!(rc).equal?(XPCOM::NS_OK))
          self.attr_browser.dispose
          error(rc)
        end
        dialog_factory._release
        # Check for the availability of the pre-1.8 implementation of nsIDocShell
        # to determine if the GRE's version is < 1.8.
        rc = @web_browser._query_interface(NsIInterfaceRequestor::NS_IINTERFACEREQUESTOR_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          self.attr_browser.dispose
          error(XPCOM::NS_ERROR_FAILURE)
        end
        if ((result[0]).equal?(0))
          self.attr_browser.dispose
          error(XPCOM::NS_ERROR_NO_INTERFACE)
        end
        interface_requestor = NsIInterfaceRequestor.new(result[0])
        result[0] = 0
        rc = interface_requestor._get_interface(NsIDocShell::NS_IDOCSHELL_IID, result)
        if ((rc).equal?(XPCOM::NS_OK) && !(result[0]).equal?(0))
          self.attr_is_pre_1_8 = true
          NsISupports.new(result[0])._release
        end
        result[0] = 0
        self.attr_is_pre_1_9 = true
        # A Download factory for contract "Transfer" must be registered iff the GRE's version is 1.8.x.
        # Check for the availability of the 1.8 implementation of nsIDocShell to determine if the
        # GRE's version is 1.8.x.
        # If the GRE version is < 1.8 then the previously-registered Download factory for contract
        # "Download" will be used.
        # If the GRE version is >= 1.9 then no Download factory is registered because this
        # functionality is provided by the GRE.
        if (!self.attr_is_pre_1_8)
          rc = interface_requestor._get_interface(NsIDocShell_1_8::NS_IDOCSHELL_IID, result)
          if ((rc).equal?(XPCOM::NS_OK) && !(result[0]).equal?(0))
            # 1.8
            NsISupports.new(result[0])._release
            result[0] = 0
            download_factory_1_8 = DownloadFactory_1_8.new
            download_factory_1_8._add_ref
            a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_TRANSFER_CONTRACTID, true)
            a_class_name = MozillaDelegate.wcs_to_mbcs(nil, "Transfer", true) # $NON-NLS-1$
            rc = component_registrar._register_factory(XPCOM::NS_DOWNLOAD_CID, a_class_name, a_contract_id, download_factory_1_8.get_address)
            if (!(rc).equal?(XPCOM::NS_OK))
              self.attr_browser.dispose
              error(rc)
            end
            download_factory_1_8._release
          else
            # >= 1.9
            self.attr_is_pre_1_9 = false
          end
        end
        result[0] = 0
        interface_requestor._release
        component_registrar._release
      end
      component_manager._release
      # Bug in XULRunner 1.9.  On win32, Mozilla does not clear its background before content has
      # been set into it.  As a result, embedders appear broken if they do not immediately display
      # a URL or text.  The Mozilla bug for this is https://bugzilla.mozilla.org/show_bug.cgi?id=453523.
      # 
      # The workaround is to subclass the Mozilla window and clear it whenever WM_ERASEBKGND is received.
      # This subclass should be removed once content has been set into the browser.
      if (!self.attr_is_pre_1_9)
        @delegate.add_window_subclass
      end
      rc = @web_browser._add_web_browser_listener(@weak_reference.get_address, NsIWebProgressListener::NS_IWEBPROGRESSLISTENER_IID)
      if (!(rc).equal?(XPCOM::NS_OK))
        self.attr_browser.dispose
        error(rc)
      end
      rc = @web_browser._set_parent_uricontent_listener(@uri_content_listener.get_address)
      if (!(rc).equal?(XPCOM::NS_OK))
        self.attr_browser.dispose
        error(rc)
      end
      @delegate.init
      @listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members Mozilla
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          catch(:break_case) do
            case (event.attr_type)
            when SWT::Dispose
              # make this handler run after other dispose listeners
              if (self.attr_ignore_dispose)
                self.attr_ignore_dispose = false
                throw :break_case, :thrown
              end
              self.attr_ignore_dispose = true
              self.attr_browser.notify_listeners(event.attr_type, event)
              event.attr_type = SWT::NONE
              on_dispose(event.attr_display)
            when SWT::Resize
              on_resize
            when SWT::FocusIn
              _activate
            when SWT::Activate
              _activate
            when SWT::Deactivate
              display_ = event.attr_display
              if ((@local_class_parent.attr_browser).equal?(display_.get_focus_control))
                _deactivate
              end
            when SWT::Show
              # Feature in GTK Mozilla.  Mozilla does not show up when
              # its container (a GTK fixed handle) is made visible
              # after having been hidden.  The workaround is to reset
              # its size after the container has been made visible.
              display_ = event.attr_display
              listener_class = self.class
              display_.async_exec(Class.new(self.class::Runnable.class == Class ? self.class::Runnable : Object) do
                extend LocalClass
                include_class_members listener_class
                include class_self::Runnable if class_self::Runnable.class == Module
                
                typesig { [] }
                define_method :run do
                  if (self.attr_browser.is_disposed)
                    return
                  end
                  on_resize
                end
                
                typesig { [Vararg.new(Object)] }
                define_method :initialize do |*args|
                  super(*args)
                end
                
                private
                alias_method :initialize_anonymous, :initialize
              end.new_local(self))
            end
          end
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      # needed to make browser traversable
      folder_events = Array.typed(::Java::Int).new([SWT::Dispose, SWT::Resize, SWT::FocusIn, SWT::Activate, SWT::Deactivate, SWT::Show, SWT::KeyDown])
      i = 0
      while i < folder_events.attr_length
        self.attr_browser.add_listener(folder_events[i], @listener)
        i += 1
      end
    end
    
    typesig { [] }
    def back
      @html_bytes = nil
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = @web_browser._query_interface(NsIWebNavigation::NS_IWEBNAVIGATION_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      web_navigation = NsIWebNavigation.new(result[0])
      rc = web_navigation._go_back
      web_navigation._release
      return (rc).equal?(XPCOM::NS_OK)
    end
    
    typesig { [] }
    def create_cominterfaces
      @supports = # Create each of the interfaces that this object implements
      Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members Mozilla
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0]))
      @weak_reference = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members Mozilla
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method3 do |args|
          return _query_referent(args[0], args[1])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 2]))
      @web_progress_listener = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members Mozilla
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method3 do |args|
          # 64
          # 64
          return _on_state_change(args[0], args[1], RJava.cast_to_int(args[2]), RJava.cast_to_int(args[3]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          # 64
          # 64
          # 64
          # 64
          return _on_progress_change(args[0], args[1], RJava.cast_to_int(args[2]), RJava.cast_to_int(args[3]), RJava.cast_to_int(args[4]), RJava.cast_to_int(args[5]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          return _on_location_change(args[0], args[1], args[2])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          # 64
          return _on_status_change(args[0], args[1], RJava.cast_to_int(args[2]), args[3])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method7 do |args|
          # 64
          return _on_security_change(args[0], args[1], RJava.cast_to_int(args[2]))
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 4, 6, 3, 4, 3]))
      @web_browser_chrome = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members Mozilla
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method3 do |args|
          # 64
          return _set_status(RJava.cast_to_int(args[0]), args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          return _get_web_browser(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          return _set_web_browser(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          return _get_chrome_flags(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method7 do |args|
          # 64
          return _set_chrome_flags(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method8 do |args|
          return _destroy_browser_window
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method9 do |args|
          # 64
          # 64
          return _size_browser_to(RJava.cast_to_int(args[0]), RJava.cast_to_int(args[1]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method10 do |args|
          return _show_as_modal
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method11 do |args|
          return _is_window_modal(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method12 do |args|
          # 64
          return _exit_modal_event_loop(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 2, 1, 1, 1, 1, 0, 2, 0, 1, 1]))
      @web_browser_chrome_focus = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members Mozilla
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method3 do |args|
          return _focus_next_element
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          return _focus_prev_element
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 0, 0]))
      @embedding_site_window = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members Mozilla
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method3 do |args|
          # 64
          # 64
          # 64
          # 64
          # 64
          return _set_dimensions(RJava.cast_to_int(args[0]), RJava.cast_to_int(args[1]), RJava.cast_to_int(args[2]), RJava.cast_to_int(args[3]), RJava.cast_to_int(args[4]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          # 64
          return _get_dimensions(RJava.cast_to_int(args[0]), args[1], args[2], args[3], args[4])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          return _set_focus
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          return _get_visibility(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method7 do |args|
          # 64
          return _set_visibility(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method8 do |args|
          return _get_title(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method9 do |args|
          return _set_title(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method10 do |args|
          return _get_site_window(args[0])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 5, 5, 0, 1, 1, 1, 1, 1]))
      @interface_requestor = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members Mozilla
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method3 do |args|
          return _get_interface(args[0], args[1])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 2]))
      @supports_weak_reference = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members Mozilla
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method3 do |args|
          return _get_weak_reference(args[0])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 1]))
      @context_menu_listener = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members Mozilla
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method3 do |args|
          # 64
          return _on_show_context_menu(RJava.cast_to_int(args[0]), args[1], args[2])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 3]))
      @uri_content_listener = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members Mozilla
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method3 do |args|
          return _on_start_uriopen(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          # 64
          return _do_content(args[0], RJava.cast_to_int(args[1]), args[2], args[3], args[4])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          return _is_preferred(args[0], args[1], args[2])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          # 64
          return _can_handle_content(args[0], RJava.cast_to_int(args[1]), args[2], args[3])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method7 do |args|
          return _get_load_cookie(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method8 do |args|
          return _set_load_cookie(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method9 do |args|
          return _get_parent_content_listener(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method10 do |args|
          return _set_parent_content_listener(args[0])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 2, 5, 3, 4, 1, 1, 1, 1]))
      @tooltip_listener = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members Mozilla
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method3 do |args|
          # 64
          # 64
          return _on_show_tooltip(RJava.cast_to_int(args[0]), RJava.cast_to_int(args[1]), args[2])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          return _on_hide_tooltip
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 3, 0]))
      @dom_event_listener = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members Mozilla
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method3 do |args|
          return _handle_event(args[0])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 1]))
    end
    
    typesig { [BrowserFunction] }
    def deregister_function(function)
      super(function)
      self.attr_all_functions.remove(function.attr_index)
    end
    
    typesig { [] }
    def dispose_cominterfaces
      if (!(@supports).nil?)
        @supports.dispose
        @supports = nil
      end
      if (!(@weak_reference).nil?)
        @weak_reference.dispose
        @weak_reference = nil
      end
      if (!(@web_progress_listener).nil?)
        @web_progress_listener.dispose
        @web_progress_listener = nil
      end
      if (!(@web_browser_chrome).nil?)
        @web_browser_chrome.dispose
        @web_browser_chrome = nil
      end
      if (!(@web_browser_chrome_focus).nil?)
        @web_browser_chrome_focus.dispose
        @web_browser_chrome_focus = nil
      end
      if (!(@embedding_site_window).nil?)
        @embedding_site_window.dispose
        @embedding_site_window = nil
      end
      if (!(@interface_requestor).nil?)
        @interface_requestor.dispose
        @interface_requestor = nil
      end
      if (!(@supports_weak_reference).nil?)
        @supports_weak_reference.dispose
        @supports_weak_reference = nil
      end
      if (!(@context_menu_listener).nil?)
        @context_menu_listener.dispose
        @context_menu_listener = nil
      end
      if (!(@uri_content_listener).nil?)
        @uri_content_listener.dispose
        @uri_content_listener = nil
      end
      if (!(@tooltip_listener).nil?)
        @tooltip_listener.dispose
        @tooltip_listener = nil
      end
      if (!(@dom_event_listener).nil?)
        @dom_event_listener.dispose
        @dom_event_listener = nil
      end
    end
    
    typesig { [String] }
    def execute(script)
      # This could be the first content that is set into the browser, so
      # ensure that the custom subclass that works around Mozilla bug
      # https://bugzilla.mozilla.org/show_bug.cgi?id=453523 is removed.
      @delegate.remove_window_subclass
      # As of mozilla 1.9 executing javascript via the javascript: protocol no
      # longer happens synchronously.  As a result, the result of executing JS
      # is not returned to the java side when expected by the client.  The
      # workaround is to invoke the javascript handler directly via C++, which is
      # exposed as of mozilla 1.9.
      # 
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      if (!self.attr_is_pre_1_9)
        rc = XPCOM._ns_get_service_manager(result)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        if ((result[0]).equal?(0))
          error(XPCOM::NS_NOINTERFACE)
        end
        service_manager = NsIServiceManager.new(result[0])
        result[0] = 0
        principal = nil
        a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_SCRIPTSECURITYMANAGER_CONTRACTID, true)
        rc = service_manager._get_service_by_contract_id(a_contract_id, NsIScriptSecurityManager_1_9_1::NS_ISCRIPTSECURITYMANAGER_IID, result)
        if ((rc).equal?(XPCOM::NS_OK) && !(result[0]).equal?(0))
          security_manager = NsIScriptSecurityManager_1_9_1.new(result[0])
          result[0] = 0
          rc = security_manager._get_system_principal(result)
          if (!(rc).equal?(XPCOM::NS_OK))
            error(rc)
          end
          if ((result[0]).equal?(0))
            error(XPCOM::NS_ERROR_NULL_POINTER)
          end
          principal = NsIPrincipal.new(result[0])
          result[0] = 0
          security_manager._release
        else
          rc = service_manager._get_service_by_contract_id(a_contract_id, NsIScriptSecurityManager_1_9::NS_ISCRIPTSECURITYMANAGER_IID, result)
          if ((rc).equal?(XPCOM::NS_OK) && !(result[0]).equal?(0))
            security_manager = NsIScriptSecurityManager_1_9.new(result[0])
            result[0] = 0
            rc = security_manager._get_system_principal(result)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            if ((result[0]).equal?(0))
              error(XPCOM::NS_ERROR_NULL_POINTER)
            end
            principal = NsIPrincipal.new(result[0])
            result[0] = 0
            security_manager._release
          end
        end
        service_manager._release
        if (!(principal).nil?)
          rc = @web_browser._query_interface(NsIInterfaceRequestor::NS_IINTERFACEREQUESTOR_IID, result)
          if (!(rc).equal?(XPCOM::NS_OK))
            error(rc)
          end
          if ((result[0]).equal?(0))
            error(XPCOM::NS_ERROR_NO_INTERFACE)
          end
          interface_requestor = NsIInterfaceRequestor.new(result[0])
          result[0] = 0
          script_global_object_nsid = NsID.new("6afecd40-0b9a-4cfd-8c42-0f645cd91829")
          # nsIScriptGlobalObject
          # $NON-NLS-1$
          rc = interface_requestor._get_interface(script_global_object_nsid, result)
          interface_requestor._release
          if ((rc).equal?(XPCOM::NS_OK) && !(result[0]).equal?(0))
            # long
            script_global_object = result[0]
            result[0] = 0
            # 64
            rc = RJava.cast_to_int(XPCOM.ns_iscript_global_object_ensure_script_environment(script_global_object, 2))
            # nsIProgrammingLanguage.JAVASCRIPT
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            # long
            script_context = XPCOM.ns_iscript_global_object_get_script_context(script_global_object, 2)
            # nsIProgrammingLanguage.JAVASCRIPT
            # long
            global_jsobject = XPCOM.ns_iscript_global_object_get_script_global(script_global_object, 2)
            # nsIProgrammingLanguage.JAVASCRIPT
            NsISupports.new(script_global_object)._release
            if (!(script_context).equal?(0) && !(global_jsobject).equal?(0))
              # ensure that the received nsIScriptContext implements the expected interface
              script_context_nsid = NsID.new("e7b9871d-3adc-4bf7-850d-7fb9554886bf")
              # nsIScriptContext
              # $NON-NLS-1$
              rc = NsISupports.new(script_context)._query_interface(script_context_nsid, result)
              if ((rc).equal?(XPCOM::NS_OK) && !(result[0]).equal?(0))
                NsISupports.new(result[0])._release
                result[0] = 0
                # long
                native_context = XPCOM.ns_iscript_context_get_native_context(script_context)
                if (!(native_context).equal?(0))
                  length_ = script.length
                  script_chars = CharArray.new(length_)
                  script.get_chars(0, length_, script_chars, 0)
                  urlbytes = MozillaDelegate.wcs_to_mbcs(nil, get_url, true)
                  rc = principal._get_jsprincipals(native_context, result)
                  if ((rc).equal?(XPCOM::NS_OK) && !(result[0]).equal?(0))
                    # long
                    principals = result[0]
                    result[0] = 0
                    principal._release
                    mozilla_path = self.attr_location_provider.attr_mozilla_path + @delegate.get_jslibrary_name + Character.new(?\0.ord)
                    path_bytes = nil
                    begin
                      path_bytes = mozilla_path.get_bytes("UTF-8") # $NON-NLS-1$
                    rescue UnsupportedEncodingException => e
                      path_bytes = mozilla_path.get_bytes
                    end
                    rc = XPCOM._js_evaluate_ucscript_for_principals(path_bytes, native_context, global_jsobject, principals, script_chars, length_, urlbytes, 0, result)
                    return !(rc).equal?(0)
                  end
                end
              end
            end
          end
          principal._release
        end
      end
      # fall back to the pre-1.9 approach
      url = PREFIX_JAVASCRIPT + script + ";void(0);" # $NON-NLS-1$
      rc = @web_browser._query_interface(NsIWebNavigation::NS_IWEBNAVIGATION_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      web_navigation = NsIWebNavigation.new(result[0])
      arg = url.to_char_array
      c = CharArray.new(arg.attr_length + 1)
      System.arraycopy(arg, 0, c, 0, arg.attr_length)
      rc = web_navigation._load_uri(c, NsIWebNavigation::LOAD_FLAGS_NONE, 0, 0, 0)
      web_navigation._release
      return (rc).equal?(XPCOM::NS_OK)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      # long
      def find_browser(handle)
        return MozillaDelegate.find_browser(handle)
      end
      
      typesig { [NsIDOMWindow] }
      def find_browser(a_domwindow)
        # long
        # long
        result = Array.typed(::Java::Int).new(1) { 0 }
        rc = XPCOM._ns_get_service_manager(result)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        if ((result[0]).equal?(0))
          Mozilla.error(XPCOM::NS_NOINTERFACE)
        end
        service_manager = NsIServiceManager.new(result[0])
        result[0] = 0
        a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_WINDOWWATCHER_CONTRACTID, true)
        rc = service_manager._get_service_by_contract_id(a_contract_id, NsIWindowWatcher::NS_IWINDOWWATCHER_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        if ((result[0]).equal?(0))
          Mozilla.error(XPCOM::NS_NOINTERFACE)
        end
        service_manager._release
        window_watcher = NsIWindowWatcher.new(result[0])
        result[0] = 0
        # the chrome will only be answered for the top-level nsIDOMWindow
        rc = a_domwindow._get_top(result)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        if ((result[0]).equal?(0))
          Mozilla.error(XPCOM::NS_NOINTERFACE)
        end
        # long
        top_domwindow = result[0]
        result[0] = 0
        rc = window_watcher._get_chrome_for_window(top_domwindow, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        NsISupports.new(top_domwindow)._release
        window_watcher._release
        if ((result[0]).equal?(0))
          return nil
        end
        # the parent chrome is disconnected
        web_browser_chrome = NsIWebBrowserChrome.new(result[0])
        result[0] = 0
        rc = web_browser_chrome._query_interface(NsIEmbeddingSiteWindow::NS_IEMBEDDINGSITEWINDOW_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        if ((result[0]).equal?(0))
          Mozilla.error(XPCOM::NS_NOINTERFACE)
        end
        web_browser_chrome._release
        embedding_site_window = NsIEmbeddingSiteWindow.new(result[0])
        result[0] = 0
        rc = embedding_site_window._get_site_window(result)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        if ((result[0]).equal?(0))
          Mozilla.error(XPCOM::NS_NOINTERFACE)
        end
        embedding_site_window._release
        return find_browser(result[0])
      end
    }
    
    typesig { [] }
    def forward
      @html_bytes = nil
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = @web_browser._query_interface(NsIWebNavigation::NS_IWEBNAVIGATION_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      web_navigation = NsIWebNavigation.new(result[0])
      rc = web_navigation._go_forward
      web_navigation._release
      return (rc).equal?(XPCOM::NS_OK)
    end
    
    typesig { [] }
    def get_browser_type
      return "mozilla" # $NON-NLS-1$
    end
    
    typesig { [] }
    def get_next_function_index
      return ((self.attr_next_jsfunction_index += 1) - 1)
    end
    
    typesig { [] }
    def get_text
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = @web_browser._get_content_domwindow(result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_NOINTERFACE)
      end
      window = NsIDOMWindow.new(result[0])
      result[0] = 0
      rc = window._get_document(result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_NOINTERFACE)
      end
      window._release
      # long
      document = result[0]
      result[0] = 0
      rc = XPCOM._ns_get_component_manager(result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_NOINTERFACE)
      end
      component_manager = NsIComponentManager.new(result[0])
      result[0] = 0
      contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_DOMSERIALIZER_CONTRACTID, true)
      chars = nil
      rc = component_manager._create_instance_by_contract_id(contract_id, 0, NsIDOMSerializer_1_7::NS_IDOMSERIALIZER_IID, result)
      if ((rc).equal?(XPCOM::NS_OK))
        # mozilla >= 1.7
        if ((result[0]).equal?(0))
          error(XPCOM::NS_NOINTERFACE)
        end
        serializer = NsIDOMSerializer_1_7.new(result[0])
        result[0] = 0
        # long
        string = XPCOM.ns_embed_string_new
        rc = serializer._serialize_to_string(document, string)
        serializer._release
        length_ = XPCOM.ns_embed_string_length(string)
        # long
        buffer = XPCOM.ns_embed_string_get(string)
        chars = CharArray.new(length_)
        XPCOM.memmove___org_eclipse_swt_browser_mozilla_29(chars, buffer, length_ * 2)
        XPCOM.ns_embed_string_delete(string)
      else
        # mozilla < 1.7
        rc = component_manager._create_instance_by_contract_id(contract_id, 0, NsIDOMSerializer::NS_IDOMSERIALIZER_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        if ((result[0]).equal?(0))
          error(XPCOM::NS_NOINTERFACE)
        end
        serializer = NsIDOMSerializer.new(result[0])
        result[0] = 0
        rc = serializer._serialize_to_string(document, result)
        serializer._release
        length_ = XPCOM.strlen__prunichar(result[0])
        chars = CharArray.new(length_)
        XPCOM.memmove___org_eclipse_swt_browser_mozilla_31(chars, result[0], length_ * 2)
      end
      component_manager._release
      NsISupports.new(document)._release
      return String.new(chars)
    end
    
    typesig { [] }
    def get_url
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = @web_browser._query_interface(NsIWebNavigation::NS_IWEBNAVIGATION_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      web_navigation = NsIWebNavigation.new(result[0])
      # long
      # long
      a_current_uri = Array.typed(::Java::Int).new(1) { 0 }
      rc = web_navigation._get_current_uri(a_current_uri)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      web_navigation._release
      dest = nil
      if (!(a_current_uri[0]).equal?(0))
        uri = NsIURI.new(a_current_uri[0])
        # long
        a_spec = XPCOM.ns_embed_cstring_new
        rc = uri._get_spec(a_spec)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        length_ = XPCOM.ns_embed_cstring_length(a_spec)
        # long
        buffer = XPCOM.ns_embed_cstring_get(a_spec)
        dest = Array.typed(::Java::Byte).new(length_) { 0 }
        XPCOM.memmove___org_eclipse_swt_browser_mozilla_33(dest, buffer, length_)
        XPCOM.ns_embed_cstring_delete(a_spec)
        uri._release
      end
      if ((dest).nil?)
        return ""
      end # $NON-NLS-1$
      location = String.new(dest)
      # If the URI indicates that the page is being rendered from memory
      # (via setText()) then set it to about:blank to be consistent with IE.
      if ((location == URI_FROMMEMORY))
        location = ABOUT_BLANK
      end
      return location
    end
    
    typesig { [] }
    def get_web_browser
      if (((self.attr_browser.get_style & SWT::MOZILLA)).equal?(0))
        return nil
      end
      if (!(@web_browser_object).nil?)
        return @web_browser_object
      end
      begin
        clazz = Class.for_name("org.mozilla.xpcom.Mozilla") # $NON-NLS-1$
        method = clazz.get_method("getInstance", Array.typed(Class).new(0) { nil }) # $NON-NLS-1$
        mozilla = method.invoke(nil, Array.typed(Object).new(0) { nil })
        method = clazz.get_method("wrapXPCOMObject", Array.typed(Class).new([Long::TYPE, String])) # $NON-NLS-1$
        @web_browser_object = method.invoke(mozilla, Array.typed(Object).new([Long.new(@web_browser.get_address), NsIWebBrowser::NS_IWEBBROWSER_IID_STR]))
        # The following AddRef() is needed to offset the automatic Release() that
        # will be performed by JavaXPCOM when webBrowserObject is finalized.
        @web_browser._add_ref
        return @web_browser_object
      rescue ClassNotFoundException => e
      rescue NoSuchMethodException => e
      rescue IllegalArgumentException => e
      rescue IllegalAccessException => e
      rescue InvocationTargetException => e
      end
      return nil
    end
    
    typesig { [] }
    def is_back_enabled
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = @web_browser._query_interface(NsIWebNavigation::NS_IWEBNAVIGATION_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      web_navigation = NsIWebNavigation.new(result[0])
      a_can_go_back = Array.typed(::Java::Int).new(1) { 0 }
      # PRBool
      rc = web_navigation._get_can_go_back(a_can_go_back)
      web_navigation._release
      return !(a_can_go_back[0]).equal?(0)
    end
    
    typesig { [] }
    def is_forward_enabled
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = @web_browser._query_interface(NsIWebNavigation::NS_IWEBNAVIGATION_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      web_navigation = NsIWebNavigation.new(result[0])
      a_can_go_forward = Array.typed(::Java::Int).new(1) { 0 }
      # PRBool
      rc = web_navigation._get_can_go_forward(a_can_go_forward)
      web_navigation._release
      return !(a_can_go_forward[0]).equal?(0)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def error(code)
        raise SWTError.new("XPCOM error " + RJava.cast_to_string(code)) # $NON-NLS-1$
      end
    }
    
    typesig { [Display] }
    def on_dispose(display)
      rc = @web_browser._remove_web_browser_listener(@weak_reference.get_address, NsIWebProgressListener::NS_IWEBPROGRESSLISTENER_IID)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      rc = @web_browser._set_parent_uricontent_listener(0)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      rc = @web_browser._set_container_window(0)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      unhook_domlisteners
      if (!(@listener).nil?)
        folder_events = Array.typed(::Java::Int).new([SWT::Dispose, SWT::Resize, SWT::FocusIn, SWT::Activate, SWT::Deactivate, SWT::Show, SWT::KeyDown, ])
        i = 0
        while i < folder_events.attr_length
          self.attr_browser.remove_listener(folder_events[i], @listener)
          i += 1
        end
        @listener = nil
      end
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = @web_browser._query_interface(NsIBaseWindow::NS_IBASEWINDOW_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      base_window = NsIBaseWindow.new(result[0])
      rc = base_window._destroy
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      base_window._release
      _release
      @web_browser._release
      @web_browser = nil
      @web_browser_object = nil
      @last_navigate_url = RJava.cast_to_string(nil)
      @html_bytes = nil
      if (!(@tip).nil? && !@tip.is_disposed)
        @tip.dispose
      end
      @tip = nil
      @location = @size = nil
      elements_ = @unhooked_domwindows.elements
      while (elements_.has_more_elements)
        ptr_object = elements_.next_element
        NsISupports.new(ptr_object.attr_value)._release
      end
      @unhooked_domwindows = nil
      elements_ = self.attr_functions.elements
      while (elements_.has_more_elements)
        function = (elements_.next_element)
        self.attr_all_functions.remove(function.attr_index)
        function.dispose(false)
      end
      self.attr_functions = nil
      @delegate.on_dispose(@embed_handle)
      @delegate = nil
      @embed_handle = 0
      self.attr_browser_count -= 1
    end
    
    typesig { [] }
    def _activate
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = @web_browser._query_interface(NsIWebBrowserFocus::NS_IWEBBROWSERFOCUS_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      web_browser_focus = NsIWebBrowserFocus.new(result[0])
      rc = web_browser_focus._activate
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      web_browser_focus._release
    end
    
    typesig { [] }
    def _deactivate
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = @web_browser._query_interface(NsIWebBrowserFocus::NS_IWEBBROWSERFOCUS_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      web_browser_focus = NsIWebBrowserFocus.new(result[0])
      rc = web_browser_focus._deactivate
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      web_browser_focus._release
    end
    
    typesig { [] }
    def on_resize
      rect = self.attr_browser.get_client_area
      width = Math.max(1, rect.attr_width)
      height = Math.max(1, rect.attr_height)
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = @web_browser._query_interface(NsIBaseWindow::NS_IBASEWINDOW_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      @delegate.set_size(@embed_handle, width, height)
      base_window = NsIBaseWindow.new(result[0])
      rc = base_window._set_position_and_size(0, 0, width, height, 1)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      base_window._release
    end
    
    typesig { [] }
    def refresh
      @html_bytes = nil
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = @web_browser._query_interface(NsIWebNavigation::NS_IWEBNAVIGATION_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      web_navigation = NsIWebNavigation.new(result[0])
      rc = web_navigation._reload(NsIWebNavigation::LOAD_FLAGS_NONE)
      web_navigation._release
      if ((rc).equal?(XPCOM::NS_OK))
        return
      end
      # Feature in Mozilla.  Reload returns an error code NS_ERROR_INVALID_POINTER
      # when it is called immediately after a request to load a new document using
      # LoadURI.  The workaround is to ignore this error code.
      # 
      # Feature in Mozilla.  Attempting to reload a file that no longer exists
      # returns an error code of NS_ERROR_FILE_NOT_FOUND.  This is equivalent to
      # attempting to load a non-existent local url, which is not a Browser error,
      # so this error code should be ignored.
      if (!(rc).equal?(XPCOM::NS_ERROR_INVALID_POINTER) && !(rc).equal?(XPCOM::NS_ERROR_FILE_NOT_FOUND))
        error(rc)
      end
    end
    
    typesig { [BrowserFunction] }
    def register_function(function)
      super(function)
      self.attr_all_functions.put(function.attr_index, function)
    end
    
    typesig { [String] }
    def set_text(html)
      # Feature in Mozilla.  The focus memory of Mozilla must be
      # properly managed through the nsIWebBrowserFocus interface.
      # In particular, nsIWebBrowserFocus.deactivate must be called
      # when the focus moves from the browser (or one of its children
      # managed by Mozilla to another widget.  We currently do not
      # get notified when a widget takes focus away from the Browser.
      # As a result, deactivate is not properly called. This causes
      # Mozilla to retake focus the next time a document is loaded.
      # This breaks the case where the HTML loaded in the Browser
      # varies while the user enters characters in a text widget. The text
      # widget loses focus every time new content is loaded.
      # The current workaround is to call deactivate everytime if
      # the browser currently does not have focus. A better workaround
      # would be to have a way to call deactivate when the Browser
      # or one of its children loses focus.
      if (!(self.attr_browser).equal?(self.attr_browser.get_display.get_focus_control))
        _deactivate
      end
      # convert the String containing HTML to an array of bytes with UTF-8 data
      data = nil
      begin
        data = html.get_bytes("UTF-8") # $NON-NLS-1$
      rescue UnsupportedEncodingException => e
        return false
      end
      # This could be the first content that is set into the browser, so
      # ensure that the custom subclass that works around Mozilla bug
      # https://bugzilla.mozilla.org/show_bug.cgi?id=453523 is removed.
      @delegate.remove_window_subclass
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = @web_browser._query_interface(NsIWebBrowserStream::NS_IWEBBROWSERSTREAM_IID, result)
      if ((rc).equal?(XPCOM::NS_OK) && !(result[0]).equal?(0))
        # Setting mozilla's content through nsIWebBrowserStream does not cause a page
        # load to occur, so the events that usually accompany a page change are not
        # fired.  To make this behave as expected, navigate to about:blank first and
        # then set the html content once the page has loaded.
        NsISupports.new(result[0])._release
        result[0] = 0
        # If htmlBytes is not null then the about:blank page is already being loaded,
        # so no Navigate is required.  Just set the html that is to be shown.
        blank_loading = !(@html_bytes).nil?
        @html_bytes = data
        if (blank_loading)
          return true
        end
        # navigate to about:blank
        rc = @web_browser._query_interface(NsIWebNavigation::NS_IWEBNAVIGATION_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        if ((result[0]).equal?(0))
          error(XPCOM::NS_ERROR_NO_INTERFACE)
        end
        web_navigation = NsIWebNavigation.new(result[0])
        result[0] = 0
        uri = CharArray.new(ABOUT_BLANK.length + 1)
        ABOUT_BLANK.get_chars(0, ABOUT_BLANK.length, uri, 0)
        rc = web_navigation._load_uri(uri, NsIWebNavigation::LOAD_FLAGS_NONE, 0, 0, 0)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        web_navigation._release
      else
        content_charset_buffer = MozillaDelegate.wcs_to_mbcs(nil, "UTF-8", true) # $NON-NLS-1$
        # long
        a_content_charset = XPCOM.ns_embed_cstring_new(content_charset_buffer, content_charset_buffer.attr_length)
        content_type_buffer = MozillaDelegate.wcs_to_mbcs(nil, "text/html", true) # $NON-NLS-1$
        # long
        a_content_type = XPCOM.ns_embed_cstring_new(content_type_buffer, content_type_buffer.attr_length)
        rc = XPCOM._ns_get_service_manager(result)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        if ((result[0]).equal?(0))
          error(XPCOM::NS_NOINTERFACE)
        end
        service_manager = NsIServiceManager.new(result[0])
        result[0] = 0
        rc = service_manager._get_service(XPCOM::NS_IOSERVICE_CID, NsIIOService::NS_IIOSERVICE_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        if ((result[0]).equal?(0))
          error(XPCOM::NS_NOINTERFACE)
        end
        service_manager._release
        io_service = NsIIOService.new(result[0])
        result[0] = 0
        # Note.  Mozilla ignores LINK tags used to load CSS stylesheets
        # when the URI protocol for the nsInputStreamChannel
        # is about:blank.  The fix is to specify the file protocol.
        a_string = MozillaDelegate.wcs_to_mbcs(nil, URI_FROMMEMORY, false)
        # long
        a_spec = XPCOM.ns_embed_cstring_new(a_string, a_string.attr_length)
        rc = io_service._new_uri(a_spec, nil, 0, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        if ((result[0]).equal?(0))
          error(XPCOM::NS_NOINTERFACE)
        end
        XPCOM.ns_embed_cstring_delete(a_spec)
        io_service._release
        uri = NsIURI.new(result[0])
        result[0] = 0
        rc = @web_browser._query_interface(NsIInterfaceRequestor::NS_IINTERFACEREQUESTOR_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        if ((result[0]).equal?(0))
          error(XPCOM::NS_ERROR_NO_INTERFACE)
        end
        interface_requestor = NsIInterfaceRequestor.new(result[0])
        result[0] = 0
        # Feature in Mozilla. LoadStream invokes the nsIInputStream argument
        # through a different thread.  The callback mechanism must attach
        # a non java thread to the JVM otherwise the nsIInputStream Read and
        # Close methods never get called.
        input_stream = InputStream.new(data)
        input_stream._add_ref
        rc = interface_requestor._get_interface(NsIDocShell::NS_IDOCSHELL_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        if ((result[0]).equal?(0))
          error(XPCOM::NS_ERROR_NO_INTERFACE)
        end
        doc_shell = NsIDocShell.new(result[0])
        result[0] = 0
        rc = doc_shell._load_stream(input_stream.get_address, uri.get_address, a_content_type, a_content_charset, 0)
        doc_shell._release
        input_stream._release
        interface_requestor._release
        uri._release
        XPCOM.ns_embed_cstring_delete(a_content_type)
        XPCOM.ns_embed_cstring_delete(a_content_charset)
      end
      return true
    end
    
    typesig { [String] }
    def set_url(url)
      @html_bytes = nil
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = @web_browser._query_interface(NsIWebNavigation::NS_IWEBNAVIGATION_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      # This could be the first content that is set into the browser, so
      # ensure that the custom subclass that works around Mozilla bug
      # https://bugzilla.mozilla.org/show_bug.cgi?id=453523 is removed.
      @delegate.remove_window_subclass
      web_navigation = NsIWebNavigation.new(result[0])
      uri = CharArray.new(url.length + 1)
      url.get_chars(0, url.length, uri, 0)
      rc = web_navigation._load_uri(uri, NsIWebNavigation::LOAD_FLAGS_NONE, 0, 0, 0)
      web_navigation._release
      return (rc).equal?(XPCOM::NS_OK)
    end
    
    typesig { [] }
    def stop
      @html_bytes = nil
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = @web_browser._query_interface(NsIWebNavigation::NS_IWEBNAVIGATION_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      web_navigation = NsIWebNavigation.new(result[0])
      rc = web_navigation._stop(NsIWebNavigation::STOP_ALL)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      web_navigation._release
    end
    
    typesig { [NsIDOMEventTarget, ::Java::Boolean] }
    def hook_domlisteners(target, is_top)
      string = NsEmbedString.new(XPCOM::DOMEVENT_FOCUS)
      target._add_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_UNLOAD)
      target._add_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_MOUSEDOWN)
      target._add_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_MOUSEUP)
      target._add_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_MOUSEMOVE)
      target._add_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_MOUSEWHEEL)
      target._add_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_MOUSEDRAG)
      target._add_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      # Only hook mouseover and mouseout if the target is a top-level frame, so that mouse moves
      # between frames will not generate events.
      if (is_top && @delegate.hook_enter_exit)
        string = NsEmbedString.new(XPCOM::DOMEVENT_MOUSEOVER)
        target._add_event_listener(string.get_address, @dom_event_listener.get_address, 0)
        string.dispose
        string = NsEmbedString.new(XPCOM::DOMEVENT_MOUSEOUT)
        target._add_event_listener(string.get_address, @dom_event_listener.get_address, 0)
        string.dispose
      end
      string = NsEmbedString.new(XPCOM::DOMEVENT_KEYDOWN)
      target._add_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_KEYPRESS)
      target._add_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_KEYUP)
      target._add_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
    end
    
    typesig { [] }
    def unhook_domlisteners
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = @web_browser._get_content_domwindow(result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      window = NsIDOMWindow.new(result[0])
      result[0] = 0
      rc = window._query_interface(NsIDOMEventTarget::NS_IDOMEVENTTARGET_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      target = NsIDOMEventTarget.new(result[0])
      result[0] = 0
      unhook_domlisteners(target)
      target._release
      # Listeners must be unhooked in pages contained in frames
      rc = window._get_frames(result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      frames = NsIDOMWindowCollection.new(result[0])
      result[0] = 0
      frame_count = Array.typed(::Java::Int).new(1) { 0 }
      rc = frames._get_length(frame_count)
      # PRUint32
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      count = frame_count[0]
      if (count > 0)
        i = 0
        while i < count
          rc = frames._item(i, result)
          if (!(rc).equal?(XPCOM::NS_OK))
            error(rc)
          end
          if ((result[0]).equal?(0))
            error(XPCOM::NS_ERROR_NO_INTERFACE)
          end
          frame = NsIDOMWindow.new(result[0])
          result[0] = 0
          rc = frame._query_interface(NsIDOMEventTarget::NS_IDOMEVENTTARGET_IID, result)
          if (!(rc).equal?(XPCOM::NS_OK))
            error(rc)
          end
          if ((result[0]).equal?(0))
            error(XPCOM::NS_ERROR_NO_INTERFACE)
          end
          target = NsIDOMEventTarget.new(result[0])
          result[0] = 0
          unhook_domlisteners(target)
          target._release
          frame._release
          i += 1
        end
      end
      frames._release
      window._release
    end
    
    typesig { [NsIDOMEventTarget] }
    def unhook_domlisteners(target)
      string = NsEmbedString.new(XPCOM::DOMEVENT_FOCUS)
      target._remove_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_UNLOAD)
      target._remove_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_MOUSEDOWN)
      target._remove_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_MOUSEUP)
      target._remove_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_MOUSEMOVE)
      target._remove_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_MOUSEWHEEL)
      target._remove_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_MOUSEDRAG)
      target._remove_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_MOUSEOVER)
      target._remove_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_MOUSEOUT)
      target._remove_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_KEYDOWN)
      target._remove_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_KEYPRESS)
      target._remove_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
      string = NsEmbedString.new(XPCOM::DOMEVENT_KEYUP)
      target._remove_event_listener(string.get_address, @dom_event_listener.get_address, 0)
      string.dispose
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # nsISupports
    # long
    # long
    def _query_interface(riid, ppv_object)
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return XPCOM::NS_ERROR_NO_INTERFACE
      end
      guid = NsID.new
      XPCOM.memmove___org_eclipse_swt_browser_mozilla_35(guid, riid, self.attr_ns_id.attr_sizeof)
      if (guid._equals(NsISupports::NS_ISUPPORTS_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_mozilla_37(ppv_object, Array.typed(::Java::Int).new([@supports.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIWeakReference::NS_IWEAKREFERENCE_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_mozilla_39(ppv_object, Array.typed(::Java::Int).new([@weak_reference.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIWebProgressListener::NS_IWEBPROGRESSLISTENER_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_mozilla_41(ppv_object, Array.typed(::Java::Int).new([@web_progress_listener.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIWebBrowserChrome::NS_IWEBBROWSERCHROME_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_mozilla_43(ppv_object, Array.typed(::Java::Int).new([@web_browser_chrome.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIWebBrowserChromeFocus::NS_IWEBBROWSERCHROMEFOCUS_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_mozilla_45(ppv_object, Array.typed(::Java::Int).new([@web_browser_chrome_focus.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIEmbeddingSiteWindow::NS_IEMBEDDINGSITEWINDOW_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_mozilla_47(ppv_object, Array.typed(::Java::Int).new([@embedding_site_window.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIInterfaceRequestor::NS_IINTERFACEREQUESTOR_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_mozilla_49(ppv_object, Array.typed(::Java::Int).new([@interface_requestor.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsISupportsWeakReference::NS_ISUPPORTSWEAKREFERENCE_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_mozilla_51(ppv_object, Array.typed(::Java::Int).new([@supports_weak_reference.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIContextMenuListener::NS_ICONTEXTMENULISTENER_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_mozilla_53(ppv_object, Array.typed(::Java::Int).new([@context_menu_listener.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIURIContentListener::NS_IURICONTENTLISTENER_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_mozilla_55(ppv_object, Array.typed(::Java::Int).new([@uri_content_listener.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsITooltipListener::NS_ITOOLTIPLISTENER_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_mozilla_57(ppv_object, Array.typed(::Java::Int).new([@tooltip_listener.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      # long
      XPCOM.memmove___org_eclipse_swt_browser_mozilla_59(ppv_object, Array.typed(::Java::Int).new([0]), C::PTR_SIZEOF)
      return XPCOM::NS_ERROR_NO_INTERFACE
    end
    
    typesig { [] }
    def _add_ref
      @ref_count += 1
      return @ref_count
    end
    
    typesig { [] }
    def _release
      @ref_count -= 1
      if ((@ref_count).equal?(0))
        dispose_cominterfaces
      end
      return @ref_count
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # nsIWeakReference
    # long
    # long
    def _query_referent(riid, ppv_object)
      return _query_interface(riid, ppv_object)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # nsIInterfaceRequestor
    # long
    # long
    def _get_interface(riid, ppv_object)
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return XPCOM::NS_ERROR_NO_INTERFACE
      end
      guid = NsID.new
      XPCOM.memmove___org_eclipse_swt_browser_mozilla_61(guid, riid, self.attr_ns_id.attr_sizeof)
      if (guid._equals(NsIDOMWindow::NS_IDOMWINDOW_IID))
        # long
        # long
        a_content_domwindow = Array.typed(::Java::Int).new(1) { 0 }
        rc = @web_browser._get_content_domwindow(a_content_domwindow)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        if ((a_content_domwindow[0]).equal?(0))
          error(XPCOM::NS_ERROR_NO_INTERFACE)
        end
        XPCOM.memmove___org_eclipse_swt_browser_mozilla_63(ppv_object, a_content_domwindow, C::PTR_SIZEOF)
        return rc
      end
      return _query_interface(riid, ppv_object)
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_weak_reference(ppv_object)
      # long
      XPCOM.memmove___org_eclipse_swt_browser_mozilla_65(ppv_object, Array.typed(::Java::Int).new([@weak_reference.get_address]), C::PTR_SIZEOF)
      _add_ref
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # nsIWebProgressListener
    # long
    # long
    def _on_state_change(a_web_progress, a_request, a_state_flags, a_status)
      if (((a_state_flags & NsIWebProgressListener::STATE_IS_DOCUMENT)).equal?(0))
        return XPCOM::NS_OK
      end
      if (!((a_state_flags & NsIWebProgressListener::STATE_START)).equal?(0))
        if ((@request).equal?(0))
          @request = a_request
        end
        # Add the page's nsIDOMWindow to the collection of windows that will
        # have DOM listeners added to them later on in the page loading
        # process.  These listeners cannot be added yet because the
        # nsIDOMWindow is not ready to take them at this stage.
        # 
        # long
        # long
        result = Array.typed(::Java::Int).new(1) { 0 }
        progress = NsIWebProgress.new(a_web_progress)
        rc = progress._get_domwindow(result)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        if ((result[0]).equal?(0))
          error(XPCOM::NS_NOINTERFACE)
        end
        @unhooked_domwindows.add_element(SwtLONG.new(result[0]))
      else
        if (!((a_state_flags & NsIWebProgressListener::STATE_REDIRECTING)).equal?(0))
          if ((@request).equal?(a_request))
            @request = 0
          end
        else
          if (!((a_state_flags & NsIWebProgressListener::STATE_STOP)).equal?(0))
            # If this page's nsIDOMWindow handle is still in unhookedDOMWindows then
            # add its DOM listeners now.  It's possible for this to happen since
            # there is no guarantee that a STATE_TRANSFERRING state change will be
            # received for every window in a page, which is when these listeners
            # are typically added.
            # 
            # long
            # long
            result = Array.typed(::Java::Int).new(1) { 0 }
            progress = NsIWebProgress.new(a_web_progress)
            rc = progress._get_domwindow(result)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            if ((result[0]).equal?(0))
              error(XPCOM::NS_NOINTERFACE)
            end
            dom_window = NsIDOMWindow.new(result[0])
            ptr_object = SwtLONG.new(result[0])
            result[0] = 0
            index = @unhooked_domwindows.index_of(ptr_object)
            if (!(index).equal?(-1))
              rc = @web_browser._get_content_domwindow(result)
              if (!(rc).equal?(XPCOM::NS_OK))
                error(rc)
              end
              if ((result[0]).equal?(0))
                error(XPCOM::NS_ERROR_NO_INTERFACE)
              end
              is_top = (result[0]).equal?(dom_window.get_address)
              NsISupports.new(result[0])._release
              result[0] = 0
              rc = dom_window._query_interface(NsIDOMEventTarget::NS_IDOMEVENTTARGET_IID, result)
              if (!(rc).equal?(XPCOM::NS_OK))
                error(rc)
              end
              if ((result[0]).equal?(0))
                error(XPCOM::NS_ERROR_NO_INTERFACE)
              end
              target = NsIDOMEventTarget.new(result[0])
              result[0] = 0
              hook_domlisteners(target, is_top)
              target._release
              # Remove and unreference the nsIDOMWindow from the collection of windows
              # that are waiting to have DOM listeners hooked on them.
              @unhooked_domwindows.remove(ptr_object)
              NsISupports.new(ptr_object.attr_value)._release
            end
            # If htmlBytes is not null then there is html from a previous setText() call
            # waiting to be set into the about:blank page once it has completed loading.
            if (!(@html_bytes).nil?)
              req = NsIRequest.new(a_request)
              # long
              name = XPCOM.ns_embed_cstring_new
              rc = req._get_name(name)
              if (!(rc).equal?(XPCOM::NS_OK))
                error(rc)
              end
              length_ = XPCOM.ns_embed_cstring_length(name)
              # long
              buffer = XPCOM.ns_embed_cstring_get(name)
              dest = Array.typed(::Java::Byte).new(length_) { 0 }
              XPCOM.memmove___org_eclipse_swt_browser_mozilla_67(dest, buffer, length_)
              url = String.new(dest)
              XPCOM.ns_embed_cstring_delete(name)
              if (url.starts_with(ABOUT_BLANK))
                # Setting mozilla's content with nsIWebBrowserStream invalidates the
                # DOM listeners that were hooked on it (about:blank), so remove them and
                # add new ones after the content has been set.
                unhook_domlisteners
                rc = XPCOM._ns_get_service_manager(result)
                if (!(rc).equal?(XPCOM::NS_OK))
                  error(rc)
                end
                if ((result[0]).equal?(0))
                  error(XPCOM::NS_NOINTERFACE)
                end
                service_manager = NsIServiceManager.new(result[0])
                result[0] = 0
                rc = service_manager._get_service(XPCOM::NS_IOSERVICE_CID, NsIIOService::NS_IIOSERVICE_IID, result)
                if (!(rc).equal?(XPCOM::NS_OK))
                  error(rc)
                end
                if ((result[0]).equal?(0))
                  error(XPCOM::NS_NOINTERFACE)
                end
                service_manager._release
                io_service = NsIIOService.new(result[0])
                result[0] = 0
                # Note.  Mozilla ignores LINK tags used to load CSS stylesheets
                # when the URI protocol for the nsInputStreamChannel
                # is about:blank.  The fix is to specify the file protocol.
                a_string = MozillaDelegate.wcs_to_mbcs(nil, URI_FROMMEMORY, false)
                # long
                a_spec = XPCOM.ns_embed_cstring_new(a_string, a_string.attr_length)
                rc = io_service._new_uri(a_spec, nil, 0, result)
                if (!(rc).equal?(XPCOM::NS_OK))
                  error(rc)
                end
                if ((result[0]).equal?(0))
                  error(XPCOM::NS_NOINTERFACE)
                end
                XPCOM.ns_embed_cstring_delete(a_spec)
                io_service._release
                uri = NsIURI.new(result[0])
                result[0] = 0
                rc = @web_browser._query_interface(NsIWebBrowserStream::NS_IWEBBROWSERSTREAM_IID, result)
                if (!(rc).equal?(XPCOM::NS_OK))
                  error(rc)
                end
                if ((result[0]).equal?(0))
                  error(XPCOM::NS_NOINTERFACE)
                end
                stream = NsIWebBrowserStream.new(result[0])
                result[0] = 0
                content_type_buffer = MozillaDelegate.wcs_to_mbcs(nil, "text/html", true) # $NON-NLS-1$
                # long
                a_content_type = XPCOM.ns_embed_cstring_new(content_type_buffer, content_type_buffer.attr_length)
                rc = stream._open_stream(uri.get_address, a_content_type)
                if (!(rc).equal?(XPCOM::NS_OK))
                  error(rc)
                end
                # long
                ptr = C.malloc(@html_bytes.attr_length)
                XPCOM.memmove___org_eclipse_swt_browser_mozilla_69(ptr, @html_bytes, @html_bytes.attr_length)
                page_size = 8192
                page_count = @html_bytes.attr_length / page_size + 1
                # long
                current = ptr
                i = 0
                while i < page_count
                  length_ = (i).equal?(page_count - 1) ? @html_bytes.attr_length % page_size : page_size
                  if (length_ > 0)
                    rc = stream._append_to_stream(current, length_)
                    if (!(rc).equal?(XPCOM::NS_OK))
                      error(rc)
                    end
                  end
                  current += page_size
                  i += 1
                end
                rc = stream._close_stream
                if (!(rc).equal?(XPCOM::NS_OK))
                  error(rc)
                end
                C.free(ptr)
                XPCOM.ns_embed_cstring_delete(a_content_type)
                stream._release
                uri._release
                @html_bytes = nil
                rc = @web_browser._get_content_domwindow(result)
                if (!(rc).equal?(XPCOM::NS_OK))
                  error(rc)
                end
                if ((result[0]).equal?(0))
                  error(XPCOM::NS_ERROR_NO_INTERFACE)
                end
                is_top = (result[0]).equal?(dom_window.get_address)
                NsISupports.new(result[0])._release
                result[0] = 0
                rc = dom_window._query_interface(NsIDOMEventTarget::NS_IDOMEVENTTARGET_IID, result)
                if (!(rc).equal?(XPCOM::NS_OK))
                  error(rc)
                end
                if ((result[0]).equal?(0))
                  error(XPCOM::NS_ERROR_NO_INTERFACE)
                end
                target = NsIDOMEventTarget.new(result[0])
                result[0] = 0
                hook_domlisteners(target, is_top)
                target._release
              end
            end
            dom_window._release
            # Feature in Mozilla.  When a request is redirected (STATE_REDIRECTING),
            # it never reaches the state STATE_STOP and it is replaced with a new request.
            # The new request is received when it is in the state STATE_STOP.
            # To handle this case,  the variable request is set to 0 when the corresponding
            # request is redirected. The following request received with the state STATE_STOP
            # - the new request resulting from the redirection - is used to send
            # the ProgressListener.completed event.
            if ((@request).equal?(a_request) || (@request).equal?(0))
              @request = 0
              event = StatusTextEvent.new(self.attr_browser)
              event.attr_display = self.attr_browser.get_display
              event.attr_widget = self.attr_browser
              event.attr_text = "" # $NON-NLS-1$
              i = 0
              while i < self.attr_status_text_listeners.attr_length
                self.attr_status_text_listeners[i].changed(event)
                i += 1
              end
              # re-install registered functions
              elements_ = self.attr_functions.elements
              while (elements_.has_more_elements)
                function = elements_.next_element
                execute(function.attr_function_string)
              end
              event2 = ProgressEvent.new(self.attr_browser)
              event2.attr_display = self.attr_browser.get_display
              event2.attr_widget = self.attr_browser
              i_ = 0
              while i_ < self.attr_progress_listeners.attr_length
                self.attr_progress_listeners[i_].completed(event2)
                i_ += 1
              end
            end
          else
            if (!((a_state_flags & NsIWebProgressListener::STATE_TRANSFERRING)).equal?(0))
              # Hook DOM listeners to the page's nsIDOMWindow here because this is
              # the earliest opportunity to do so.
              # 
              # long
              # long
              result = Array.typed(::Java::Int).new(1) { 0 }
              progress = NsIWebProgress.new(a_web_progress)
              rc = progress._get_domwindow(result)
              if (!(rc).equal?(XPCOM::NS_OK))
                error(rc)
              end
              if ((result[0]).equal?(0))
                error(XPCOM::NS_NOINTERFACE)
              end
              dom_window = NsIDOMWindow.new(result[0])
              ptr_object = SwtLONG.new(result[0])
              result[0] = 0
              index = @unhooked_domwindows.index_of(ptr_object)
              if (!(index).equal?(-1))
                rc = @web_browser._get_content_domwindow(result)
                if (!(rc).equal?(XPCOM::NS_OK))
                  error(rc)
                end
                if ((result[0]).equal?(0))
                  error(XPCOM::NS_ERROR_NO_INTERFACE)
                end
                is_top = (result[0]).equal?(dom_window.get_address)
                NsISupports.new(result[0])._release
                result[0] = 0
                rc = dom_window._query_interface(NsIDOMEventTarget::NS_IDOMEVENTTARGET_IID, result)
                if (!(rc).equal?(XPCOM::NS_OK))
                  error(rc)
                end
                if ((result[0]).equal?(0))
                  error(XPCOM::NS_ERROR_NO_INTERFACE)
                end
                target = NsIDOMEventTarget.new(result[0])
                result[0] = 0
                hook_domlisteners(target, is_top)
                target._release
                # Remove and unreference the nsIDOMWindow from the collection of windows
                # that are waiting to have DOM listeners hooked on them.
                @unhooked_domwindows.remove(ptr_object)
                NsISupports.new(ptr_object.attr_value)._release
              end
              dom_window._release
            end
          end
        end
      end
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _on_progress_change(a_web_progress, a_request, a_cur_self_progress, a_max_self_progress, a_cur_total_progress, a_max_total_progress)
      if ((self.attr_progress_listeners.attr_length).equal?(0))
        return XPCOM::NS_OK
      end
      event = ProgressEvent.new(self.attr_browser)
      event.attr_display = self.attr_browser.get_display
      event.attr_widget = self.attr_browser
      event.attr_current = a_cur_total_progress
      event.attr_total = a_max_total_progress
      i = 0
      while i < self.attr_progress_listeners.attr_length
        self.attr_progress_listeners[i].changed(event)
        i += 1
      end
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def _on_location_change(a_web_progress, a_request, a_location)
      # Feature in Mozilla.  When a page is loaded via setText before a previous
      # setText page load has completed, the expected OnStateChange STATE_STOP for the
      # original setText never arrives because it gets replaced by the OnStateChange
      # STATE_STOP for the new request.  This results in the request field never being
      # cleared because the original request's OnStateChange STATE_STOP is still expected
      # (but never arrives).  To handle this case, the request field is updated to the new
      # overriding request since its OnStateChange STATE_STOP will be received next.
      if (!(@request).equal?(0) && !(@request).equal?(a_request))
        @request = a_request
      end
      if ((self.attr_location_listeners.attr_length).equal?(0))
        return XPCOM::NS_OK
      end
      web_progress = NsIWebProgress.new(a_web_progress)
      # long
      # long
      a_domwindow = Array.typed(::Java::Int).new(1) { 0 }
      rc = web_progress._get_domwindow(a_domwindow)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((a_domwindow[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      dom_window = NsIDOMWindow.new(a_domwindow[0])
      # long
      # long
      a_top = Array.typed(::Java::Int).new(1) { 0 }
      rc = dom_window._get_top(a_top)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((a_top[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      dom_window._release
      top_window = NsIDOMWindow.new(a_top[0])
      top_window._release
      location = NsIURI.new(a_location)
      # long
      a_spec = XPCOM.ns_embed_cstring_new
      location._get_spec(a_spec)
      length_ = XPCOM.ns_embed_cstring_length(a_spec)
      # long
      buffer = XPCOM.ns_embed_cstring_get(a_spec)
      dest = Array.typed(::Java::Byte).new(length_) { 0 }
      XPCOM.memmove___org_eclipse_swt_browser_mozilla_71(dest, buffer, length_)
      XPCOM.ns_embed_cstring_delete(a_spec)
      url = String.new(dest)
      # As of Mozilla 1.8, the first time that a page is displayed, regardless of
      # whether it's via Browser.setURL() or Browser.setText(), the GRE navigates
      # to about:blank and fires the corresponding navigation events.  Do not send
      # this event on to the user since it is not expected.
      if (!self.attr_is_pre_1_8 && (a_request).equal?(0) && url.starts_with(ABOUT_BLANK))
        return XPCOM::NS_OK
      end
      event = LocationEvent.new(self.attr_browser)
      event.attr_display = self.attr_browser.get_display
      event.attr_widget = self.attr_browser
      event.attr_location = url
      # If the URI indicates that the page is being rendered from memory
      # (via setText()) then set it to about:blank to be consistent with IE.
      if ((event.attr_location == URI_FROMMEMORY))
        event.attr_location = ABOUT_BLANK
      end
      event.attr_top = (a_top[0]).equal?(a_domwindow[0])
      i = 0
      while i < self.attr_location_listeners.attr_length
        self.attr_location_listeners[i].changed(event)
        i += 1
      end
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def _on_status_change(a_web_progress, a_request, a_status, a_message)
      if ((self.attr_status_text_listeners.attr_length).equal?(0))
        return XPCOM::NS_OK
      end
      event = StatusTextEvent.new(self.attr_browser)
      event.attr_display = self.attr_browser.get_display
      event.attr_widget = self.attr_browser
      length_ = XPCOM.strlen__prunichar(a_message)
      dest = CharArray.new(length_)
      XPCOM.memmove___org_eclipse_swt_browser_mozilla_73(dest, a_message, length_ * 2)
      event.attr_text = String.new(dest)
      i = 0
      while i < self.attr_status_text_listeners.attr_length
        self.attr_status_text_listeners[i].changed(event)
        i += 1
      end
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _on_security_change(a_web_progress, a_request, state)
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # nsIWebBrowserChrome
    # long
    def _set_status(status_type, status)
      if ((self.attr_status_text_listeners.attr_length).equal?(0))
        return XPCOM::NS_OK
      end
      event = StatusTextEvent.new(self.attr_browser)
      event.attr_display = self.attr_browser.get_display
      event.attr_widget = self.attr_browser
      length_ = XPCOM.strlen__prunichar(status)
      dest = CharArray.new(length_)
      XPCOM.memmove___org_eclipse_swt_browser_mozilla_75(dest, status, length_ * 2)
      string = String.new(dest)
      event.attr_text = string
      i = 0
      while i < self.attr_status_text_listeners.attr_length
        self.attr_status_text_listeners[i].changed(event)
        i += 1
      end
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_web_browser(a_web_browser)
      # long
      # long
      ret = Array.typed(::Java::Int).new(1) { 0 }
      if (!(@web_browser).nil?)
        @web_browser._add_ref
        ret[0] = @web_browser.get_address
      end
      XPCOM.memmove___org_eclipse_swt_browser_mozilla_77(a_web_browser, ret, C::PTR_SIZEOF)
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_web_browser(a_web_browser)
      if (!(@web_browser).nil?)
        @web_browser._release
      end
      @web_browser = !(a_web_browser).equal?(0) ? NsIWebBrowser.new(a_web_browser) : nil
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_chrome_flags(a_chrome_flags)
      ret = Array.typed(::Java::Int).new(1) { 0 }
      ret[0] = @chrome_flags
      XPCOM.memmove___org_eclipse_swt_browser_mozilla_79(a_chrome_flags, ret, 4)
      # PRUint32
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int] }
    def _set_chrome_flags(a_chrome_flags)
      @chrome_flags = a_chrome_flags
      return XPCOM::NS_OK
    end
    
    typesig { [] }
    def _destroy_browser_window
      new_event = WindowEvent.new(self.attr_browser)
      new_event.attr_display = self.attr_browser.get_display
      new_event.attr_widget = self.attr_browser
      i = 0
      while i < self.attr_close_window_listeners.attr_length
        self.attr_close_window_listeners[i].close(new_event)
        i += 1
      end
      # Note on Mozilla.  The DestroyBrowserWindow notification cannot be cancelled.
      # The browser widget cannot be used after this notification has been received.
      # The application is advised to close the window hosting the browser widget.
      # The browser widget must be disposed in all cases.
      self.attr_browser.dispose
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def _size_browser_to(a_cx, a_cy)
      @size = Point.new(a_cx, a_cy)
      is_chrome = !((@chrome_flags & NsIWebBrowserChrome::CHROME_OPENAS_CHROME)).equal?(0)
      if (is_chrome)
        shell = self.attr_browser.get_shell
        shell.set_size(shell.compute_size(@size.attr_x, @size.attr_y))
      end
      return XPCOM::NS_OK
    end
    
    typesig { [] }
    def _show_as_modal
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = XPCOM._ns_get_service_manager(result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_NOINTERFACE)
      end
      service_manager = NsIServiceManager.new(result[0])
      result[0] = 0
      a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_CONTEXTSTACK_CONTRACTID, true)
      rc = service_manager._get_service_by_contract_id(a_contract_id, NsIJSContextStack::NS_IJSCONTEXTSTACK_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_NOINTERFACE)
      end
      service_manager._release
      stack = NsIJSContextStack.new(result[0])
      result[0] = 0
      rc = stack._push(0)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      shell = self.attr_browser.get_shell
      display = self.attr_browser.get_display
      while (!shell.is_disposed)
        if (!display.read_and_dispatch)
          display.sleep
        end
      end
      rc = stack._pop(result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      stack._release
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int] }
    # long
    def _is_window_modal(retval)
      result = !((@chrome_flags & NsIWebBrowserChrome::CHROME_MODAL)).equal?(0) ? 1 : 0
      XPCOM.memmove___org_eclipse_swt_browser_mozilla_81(retval, Array.typed(::Java::Int).new([result]), 4)
      # PRBool
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int] }
    def _exit_modal_event_loop(a_status)
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # nsIEmbeddingSiteWindow
    def _set_dimensions(flags, x, y, cx, cy)
      if (!((flags & NsIEmbeddingSiteWindow::DIM_FLAGS_POSITION)).equal?(0))
        @location = Point.new(x, y)
        self.attr_browser.get_shell.set_location(x, y)
      end
      if (!((flags & NsIEmbeddingSiteWindow::DIM_FLAGS_SIZE_INNER)).equal?(0))
        self.attr_browser.set_size(cx, cy)
      end
      if (!((flags & NsIEmbeddingSiteWindow::DIM_FLAGS_SIZE_OUTER)).equal?(0))
        self.attr_browser.get_shell.set_size(cx, cy)
      end
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def _get_dimensions(flags, x, y, cx, cy)
      if (!((flags & NsIEmbeddingSiteWindow::DIM_FLAGS_POSITION)).equal?(0))
        location = self.attr_browser.get_shell.get_location
        if (!(x).equal?(0))
          C.memmove___org_eclipse_swt_browser_mozilla_83(x, Array.typed(::Java::Int).new([location.attr_x]), 4)
        end
        # PRInt32
        if (!(y).equal?(0))
          C.memmove___org_eclipse_swt_browser_mozilla_85(y, Array.typed(::Java::Int).new([location.attr_y]), 4)
        end
        # PRInt32
      end
      if (!((flags & NsIEmbeddingSiteWindow::DIM_FLAGS_SIZE_INNER)).equal?(0))
        size = self.attr_browser.get_size
        if (!(cx).equal?(0))
          C.memmove___org_eclipse_swt_browser_mozilla_87(cx, Array.typed(::Java::Int).new([size.attr_x]), 4)
        end
        # PRInt32
        if (!(cy).equal?(0))
          C.memmove___org_eclipse_swt_browser_mozilla_89(cy, Array.typed(::Java::Int).new([size.attr_y]), 4)
        end
        # PRInt32
      end
      if (!((flags & NsIEmbeddingSiteWindow::DIM_FLAGS_SIZE_OUTER)).equal?(0))
        size = self.attr_browser.get_shell.get_size
        if (!(cx).equal?(0))
          C.memmove___org_eclipse_swt_browser_mozilla_91(cx, Array.typed(::Java::Int).new([size.attr_x]), 4)
        end
        # PRInt32
        if (!(cy).equal?(0))
          C.memmove___org_eclipse_swt_browser_mozilla_93(cy, Array.typed(::Java::Int).new([size.attr_y]), 4)
        end
        # PRInt32
      end
      return XPCOM::NS_OK
    end
    
    typesig { [] }
    def _set_focus
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = @web_browser._query_interface(NsIBaseWindow::NS_IBASEWINDOW_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_ERROR_NO_INTERFACE)
      end
      base_window = NsIBaseWindow.new(result[0])
      rc = base_window._set_focus
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      base_window._release
      # Note. Mozilla notifies here that one of the children took
      # focus. This could or should be used to fire an SWT.FOCUS_IN
      # event on Browser focus listeners.
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_visibility(a_visibility)
      visible = self.attr_browser.is_visible && !self.attr_browser.get_shell.get_minimized
      XPCOM.memmove___org_eclipse_swt_browser_mozilla_95(a_visibility, Array.typed(::Java::Int).new([visible ? 1 : 0]), 4)
      # PRBool
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int] }
    def _set_visibility(a_visibility)
      if (@is_child)
        event = WindowEvent.new(self.attr_browser)
        event.attr_display = self.attr_browser.get_display
        event.attr_widget = self.attr_browser
        if (!(a_visibility).equal?(0))
          # Bug in Mozilla.  When the JavaScript window.open is executed, Mozilla
          # fires multiple SetVisibility 1 notifications.  The workaround is
          # to ignore subsequent notifications.
          if (!@visible)
            @visible = true
            event.attr_location = @location
            event.attr_size = @size
            event.attr_address_bar = !((@chrome_flags & NsIWebBrowserChrome::CHROME_LOCATIONBAR)).equal?(0)
            event.attr_menu_bar = !((@chrome_flags & NsIWebBrowserChrome::CHROME_MENUBAR)).equal?(0)
            event.attr_status_bar = !((@chrome_flags & NsIWebBrowserChrome::CHROME_STATUSBAR)).equal?(0)
            event.attr_tool_bar = !((@chrome_flags & NsIWebBrowserChrome::CHROME_TOOLBAR)).equal?(0)
            i = 0
            while i < self.attr_visibility_window_listeners.attr_length
              self.attr_visibility_window_listeners[i].show(event)
              i += 1
            end
            @location = nil
            @size = nil
          end
        else
          @visible = false
          i = 0
          while i < self.attr_visibility_window_listeners.attr_length
            self.attr_visibility_window_listeners[i].hide(event)
            i += 1
          end
        end
      else
        @visible = !(a_visibility).equal?(0)
      end
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_title(a_title)
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_title(a_title)
      if ((self.attr_title_listeners.attr_length).equal?(0))
        return XPCOM::NS_OK
      end
      event = TitleEvent.new(self.attr_browser)
      event.attr_display = self.attr_browser.get_display
      event.attr_widget = self.attr_browser
      # To be consistent with other platforms the title event should
      # contain the page's url if the page does not contain a <title>
      # tag.
      length_ = XPCOM.strlen__prunichar(a_title)
      if (length_ > 0)
        dest = CharArray.new(length_)
        XPCOM.memmove___org_eclipse_swt_browser_mozilla_97(dest, a_title, length_ * 2)
        event.attr_title = String.new(dest)
      else
        event.attr_title = get_url
      end
      i = 0
      while i < self.attr_title_listeners.attr_length
        self.attr_title_listeners[i].changed(event)
        i += 1
      end
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_site_window(a_site_window)
      # Note.  The handle is expected to be an HWND on Windows and
      # a GtkWidget* on GTK.  This callback is invoked on Windows
      # when the javascript window.print is invoked and the print
      # dialog comes up. If no handle is returned, the print dialog
      # does not come up on this platform.
      # 
      # long
      XPCOM.memmove___org_eclipse_swt_browser_mozilla_99(a_site_window, Array.typed(::Java::Int).new([@embed_handle]), C::PTR_SIZEOF)
      return XPCOM::NS_OK
    end
    
    typesig { [] }
    # nsIWebBrowserChromeFocus
    def _focus_next_element
      self.attr_browser.get_display.async_exec(# Bug in Mozilla embedding API.  Mozilla takes back the focus after sending
      # this event.  This prevents tabbing out of Mozilla. This behaviour can be reproduced
      # with the Mozilla application TestGtkEmbed.  The workaround is to
      # send the traversal notification after this callback returns.
      Class.new(Runnable.class == Class ? Runnable : Object) do
        extend LocalClass
        include_class_members Mozilla
        include Runnable if Runnable.class == Module
        
        typesig { [] }
        define_method :run do
          if (self.attr_browser.is_disposed)
            return
          end
          self.attr_browser.traverse(SWT::TRAVERSE_TAB_NEXT)
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      return XPCOM::NS_OK
    end
    
    typesig { [] }
    def _focus_prev_element
      self.attr_browser.get_display.async_exec(# Bug in Mozilla embedding API.  Mozilla takes back the focus after sending
      # this event.  This prevents tabbing out of Mozilla. This behaviour can be reproduced
      # with the Mozilla application TestGtkEmbed.  The workaround is to
      # send the traversal notification after this callback returns.
      Class.new(Runnable.class == Class ? Runnable : Object) do
        extend LocalClass
        include_class_members Mozilla
        include Runnable if Runnable.class == Module
        
        typesig { [] }
        define_method :run do
          if (self.attr_browser.is_disposed)
            return
          end
          self.attr_browser.traverse(SWT::TRAVERSE_TAB_PREVIOUS)
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # nsIContextMenuListener
    # long
    # long
    def _on_show_context_menu(a_context_flags, a_event, a_node)
      dom_event = NsIDOMEvent.new(a_event)
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = dom_event._query_interface(NsIDOMMouseEvent::NS_IDOMMOUSEEVENT_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_NOINTERFACE)
      end
      dom_mouse_event = NsIDOMMouseEvent.new(result[0])
      a_screen_x = Array.typed(::Java::Int).new(1) { 0 }
      a_screen_y = Array.typed(::Java::Int).new(1) { 0 }
      rc = dom_mouse_event._get_screen_x(a_screen_x)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      rc = dom_mouse_event._get_screen_y(a_screen_y)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      dom_mouse_event._release
      event = Event.new
      event.attr_x = a_screen_x[0]
      event.attr_y = a_screen_y[0]
      self.attr_browser.notify_listeners(SWT::MenuDetect, event)
      if (!event.attr_doit || self.attr_browser.is_disposed)
        return XPCOM::NS_OK
      end
      menu = self.attr_browser.get_menu
      if (!(menu).nil? && !menu.is_disposed)
        if (!(a_screen_x[0]).equal?(event.attr_x) || !(a_screen_y[0]).equal?(event.attr_y))
          menu.set_location(event.attr_x, event.attr_y)
        end
        menu.set_visible(true)
      end
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # nsIURIContentListener
    # long
    # long
    def _on_start_uriopen(a_uri, retval)
      @auth_count = 0
      location = NsIURI.new(a_uri)
      # long
      a_spec = XPCOM.ns_embed_cstring_new
      location._get_spec(a_spec)
      length_ = XPCOM.ns_embed_cstring_length(a_spec)
      # long
      buffer = XPCOM.ns_embed_cstring_get(a_spec)
      buffer = XPCOM.ns_embed_cstring_get(a_spec)
      dest = Array.typed(::Java::Byte).new(length_) { 0 }
      XPCOM.memmove___org_eclipse_swt_browser_mozilla_101(dest, buffer, length_)
      XPCOM.ns_embed_cstring_delete(a_spec)
      value = String.new(dest)
      doit = true
      if ((@request).equal?(0))
        # listeners should not be notified of internal transitions like "javascript:..."
        # because this is an implementation side-effect, not a true navigate
        if (!value.starts_with(PREFIX_JAVASCRIPT))
          if (self.attr_location_listeners.attr_length > 0)
            event = LocationEvent.new(self.attr_browser)
            event.attr_display = self.attr_browser.get_display
            event.attr_widget = self.attr_browser
            event.attr_location = value
            # If the URI indicates that the page is being rendered from memory
            # (via setText()) then set it to about:blank to be consistent with IE.
            if ((event.attr_location == URI_FROMMEMORY))
              event.attr_location = ABOUT_BLANK
            end
            event.attr_doit = doit
            i = 0
            while i < self.attr_location_listeners.attr_length
              self.attr_location_listeners[i].changing(event)
              i += 1
            end
            doit = event.attr_doit && !self.attr_browser.is_disposed
          end
          if (doit)
            if (self.attr_js_enabled_changed)
              self.attr_js_enabled_changed = false
              # long
              # long
              result = Array.typed(::Java::Int).new(1) { 0 }
              rc = @web_browser._query_interface(NsIWebBrowserSetup::NS_IWEBBROWSERSETUP_IID, result)
              if (!(rc).equal?(XPCOM::NS_OK))
                error(rc)
              end
              if ((result[0]).equal?(0))
                error(XPCOM::NS_NOINTERFACE)
              end
              setup = NsIWebBrowserSetup.new(result[0])
              result[0] = 0
              rc = setup._set_property(NsIWebBrowserSetup::SETUP_ALLOW_JAVASCRIPT, self.attr_js_enabled ? 1 : 0)
              if (!(rc).equal?(XPCOM::NS_OK))
                error(rc)
              end
              setup._release
            end
            @last_navigate_url = value
          end
        end
      end
      XPCOM.memmove___org_eclipse_swt_browser_mozilla_103(retval, Array.typed(::Java::Int).new([doit ? 0 : 1]), 4)
      # PRBool
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def _do_content(a_content_type, a_is_content_preferred, a_request, a_content_handler, retval)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def _is_preferred(a_content_type, a_desired_content_type, retval)
      preferred = false
      size = XPCOM.strlen(a_content_type)
      if (size > 0)
        type_bytes = Array.typed(::Java::Byte).new(size + 1) { 0 }
        XPCOM.memmove___org_eclipse_swt_browser_mozilla_105(type_bytes, a_content_type, size)
        content_type = String.new(type_bytes, 0, size)
        # do not attempt to handle known problematic content types
        if (!(content_type == XPCOM::CONTENT_MAYBETEXT) && !(content_type == XPCOM::CONTENT_MULTIPART))
          # determine whether browser can handle the content type
          # long
          # long
          result = Array.typed(::Java::Int).new(1) { 0 }
          rc = XPCOM._ns_get_service_manager(result)
          if (!(rc).equal?(XPCOM::NS_OK))
            error(rc)
          end
          if ((result[0]).equal?(0))
            error(XPCOM::NS_NOINTERFACE)
          end
          service_manager = NsIServiceManager.new(result[0])
          result[0] = 0
          # First try to use the nsIWebNavigationInfo if it's available (>= mozilla 1.8)
          a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_WEBNAVIGATIONINFO_CONTRACTID, true)
          rc = service_manager._get_service_by_contract_id(a_contract_id, NsIWebNavigationInfo::NS_IWEBNAVIGATIONINFO_IID, result)
          if ((rc).equal?(XPCOM::NS_OK))
            bytes = MozillaDelegate.wcs_to_mbcs(nil, content_type, true)
            # long
            type_ptr = XPCOM.ns_embed_cstring_new(bytes, bytes.attr_length)
            info = NsIWebNavigationInfo.new(result[0])
            result[0] = 0
            is_supported_result = Array.typed(::Java::Int).new(1) { 0 }
            # PRUint32
            rc = info._is_type_supported(type_ptr, 0, is_supported_result)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            info._release
            XPCOM.ns_embed_cstring_delete(type_ptr)
            preferred = !(is_supported_result[0]).equal?(0)
          else
            # nsIWebNavigationInfo is not available, so do the type lookup
            result[0] = 0
            rc = service_manager._get_service(XPCOM::NS_CATEGORYMANAGER_CID, NsICategoryManager::NS_ICATEGORYMANAGER_IID, result)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            if ((result[0]).equal?(0))
              error(XPCOM::NS_NOINTERFACE)
            end
            category_manager = NsICategoryManager.new(result[0])
            result[0] = 0
            category_bytes = MozillaDelegate.wcs_to_mbcs(nil, "Gecko-Content-Viewers", true) # $NON-NLS-1$
            rc = category_manager._get_category_entry(category_bytes, type_bytes, result)
            category_manager._release
            # if no viewer for the content type is registered then rc == XPCOM.NS_ERROR_NOT_AVAILABLE
            preferred = (rc).equal?(XPCOM::NS_OK)
          end
          service_manager._release
        end
      end
      XPCOM.memmove___org_eclipse_swt_browser_mozilla_107(retval, Array.typed(::Java::Int).new([preferred ? 1 : 0]), 4)
      # PRBool
      if (preferred)
        # long
        XPCOM.memmove___org_eclipse_swt_browser_mozilla_109(a_desired_content_type, Array.typed(::Java::Int).new([0]), C::PTR_SIZEOF)
      end
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def _can_handle_content(a_content_type, a_is_content_preferred, a_desired_content_type, retval)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_load_cookie(a_load_cookie)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_load_cookie(a_load_cookie)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_parent_content_listener(a_parent_content_listener)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_parent_content_listener(a_parent_content_listener)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # nsITooltipListener
    # long
    def _on_show_tooltip(a_xcoords, a_ycoords, a_tip_text)
      length_ = XPCOM.strlen__prunichar(a_tip_text)
      dest = CharArray.new(length_)
      XPCOM.memmove___org_eclipse_swt_browser_mozilla_111(dest, a_tip_text, length_ * 2)
      text = String.new(dest)
      if (!(@tip).nil? && !@tip.is_disposed)
        @tip.dispose
      end
      display = self.attr_browser.get_display
      parent = self.attr_browser.get_shell
      @tip = Shell.new(parent, SWT::ON_TOP)
      @tip.set_layout(FillLayout.new)
      label = Label.new(@tip, SWT::CENTER)
      label.set_foreground(display.get_system_color(SWT::COLOR_INFO_FOREGROUND))
      label.set_background(display.get_system_color(SWT::COLOR_INFO_BACKGROUND))
      label.set_text(text)
      # Bug in Mozilla embedded API.  Tooltip coordinates are wrong for
      # elements inside an inline frame (IFrame tag).  The workaround is
      # to position the tooltip based on the mouse cursor location.
      point = display.get_cursor_location
      # Assuming cursor is 21x21 because this is the size of
      # the arrow cursor on Windows
      point.attr_y += 21
      @tip.set_location(point)
      @tip.pack
      @tip.set_visible(true)
      return XPCOM::NS_OK
    end
    
    typesig { [] }
    def _on_hide_tooltip
      if (!(@tip).nil? && !@tip.is_disposed)
        @tip.dispose
      end
      @tip = nil
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int] }
    # nsIDOMEventListener
    # long
    def _handle_event(event)
      dom_event = NsIDOMEvent.new(event)
      # long
      type = XPCOM.ns_embed_string_new
      rc = dom_event._get_type(type)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      length_ = XPCOM.ns_embed_string_length(type)
      # long
      buffer = XPCOM.ns_embed_string_get(type)
      chars = CharArray.new(length_)
      XPCOM.memmove___org_eclipse_swt_browser_mozilla_113(chars, buffer, length_ * 2)
      type_string = String.new(chars)
      XPCOM.ns_embed_string_delete(type)
      if ((XPCOM::DOMEVENT_UNLOAD == type_string))
        # long
        # long
        result = Array.typed(::Java::Int).new(1) { 0 }
        rc = dom_event._get_current_target(result)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        if ((result[0]).equal?(0))
          error(XPCOM::NS_NOINTERFACE)
        end
        target = NsIDOMEventTarget.new(result[0])
        unhook_domlisteners(target)
        target._release
        return XPCOM::NS_OK
      end
      if ((XPCOM::DOMEVENT_FOCUS == type_string))
        @delegate.handle_focus
        return XPCOM::NS_OK
      end
      if ((XPCOM::DOMEVENT_KEYDOWN == type_string))
        # long
        # long
        result = Array.typed(::Java::Int).new(1) { 0 }
        rc = dom_event._query_interface(NsIDOMKeyEvent::NS_IDOMKEYEVENT_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        if ((result[0]).equal?(0))
          error(XPCOM::NS_NOINTERFACE)
        end
        dom_key_event = NsIDOMKeyEvent.new(result[0])
        result[0] = 0
        a_key_code = Array.typed(::Java::Int).new(1) { 0 }
        # PRUint32
        rc = dom_key_event._get_key_code(a_key_code)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        key_code = translate_key(a_key_code[0])
        # if keyCode == lastKeyCode then either a repeating key like Shift
        # is being held or a key for which key events are not sent has been
        # pressed.  In both of these cases a KeyDown should not be sent.
        if (!(key_code).equal?(@last_key_code))
          @last_key_code = key_code
          case (key_code)
          when SWT::SHIFT, SWT::CONTROL, SWT::ALT, SWT::CAPS_LOCK, SWT::NUM_LOCK, SWT::SCROLL_LOCK, SWT::COMMAND
            # keypress events will not be received for these keys, so send KeyDowns for them now
            a_alt_key = Array.typed(::Java::Int).new(1) { 0 }
            a_ctrl_key = Array.typed(::Java::Int).new(1) { 0 }
            a_shift_key = Array.typed(::Java::Int).new(1) { 0 }
            a_meta_key = Array.typed(::Java::Int).new(1) { 0 }
            # PRBool
            rc = dom_key_event._get_alt_key(a_alt_key)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            rc = dom_key_event._get_ctrl_key(a_ctrl_key)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            rc = dom_key_event._get_shift_key(a_shift_key)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            rc = dom_key_event._get_meta_key(a_meta_key)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            key_event = Event.new
            key_event.attr_widget = self.attr_browser
            key_event.attr_type = SWT::KeyDown
            key_event.attr_key_code = key_code
            key_event.attr_state_mask = (!(a_alt_key[0]).equal?(0) ? SWT::ALT : 0) | (!(a_ctrl_key[0]).equal?(0) ? SWT::CTRL : 0) | (!(a_shift_key[0]).equal?(0) ? SWT::SHIFT : 0) | (!(a_meta_key[0]).equal?(0) ? SWT::COMMAND : 0)
            key_event.attr_state_mask &= ~key_code
            # remove current keydown if it's a state key
            self.attr_browser.notify_listeners(key_event.attr_type, key_event)
            if (!key_event.attr_doit || self.attr_browser.is_disposed)
              dom_event._prevent_default
            end
          else
            # If the keydown has Meta (but not Meta+Ctrl) as a modifier then send a KeyDown event for it here
            # because a corresponding keypress event will not be received for it from the DOM.  If the keydown
            # does not have Meta as a modifier, or has Meta+Ctrl as a modifier, then then do nothing here
            # because its KeyDown event will be sent from the keypress listener.
            a_meta_key = Array.typed(::Java::Int).new(1) { 0 }
            # PRBool
            rc = dom_key_event._get_meta_key(a_meta_key)
            if (!(rc).equal?(XPCOM::NS_OK))
              error(rc)
            end
            if (!(a_meta_key[0]).equal?(0))
              a_ctrl_key = Array.typed(::Java::Int).new(1) { 0 }
              # PRBool
              rc = dom_key_event._get_ctrl_key(a_ctrl_key)
              if (!(rc).equal?(XPCOM::NS_OK))
                error(rc)
              end
              if ((a_ctrl_key[0]).equal?(0))
                a_alt_key = Array.typed(::Java::Int).new(1) { 0 }
                a_shift_key = Array.typed(::Java::Int).new(1) { 0 }
                # PRBool
                rc = dom_key_event._get_alt_key(a_alt_key)
                if (!(rc).equal?(XPCOM::NS_OK))
                  error(rc)
                end
                rc = dom_key_event._get_shift_key(a_shift_key)
                if (!(rc).equal?(XPCOM::NS_OK))
                  error(rc)
                end
                key_event = Event.new
                key_event.attr_widget = self.attr_browser
                key_event.attr_type = SWT::KeyDown
                key_event.attr_key_code = @last_key_code
                key_event.attr_state_mask = (!(a_alt_key[0]).equal?(0) ? SWT::ALT : 0) | (!(a_ctrl_key[0]).equal?(0) ? SWT::CTRL : 0) | (!(a_shift_key[0]).equal?(0) ? SWT::SHIFT : 0) | (!(a_meta_key[0]).equal?(0) ? SWT::COMMAND : 0)
                self.attr_browser.notify_listeners(key_event.attr_type, key_event)
                if (!key_event.attr_doit || self.attr_browser.is_disposed)
                  dom_event._prevent_default
                end
              end
            end
          end
        end
        dom_key_event._release
        return XPCOM::NS_OK
      end
      if ((XPCOM::DOMEVENT_KEYPRESS == type_string))
        # if keydown could not determine a keycode for this key then it's a
        # key for which key events are not sent (eg.- the Windows key)
        if ((@last_key_code).equal?(0))
          return XPCOM::NS_OK
        end
        # On linux only, unexpected keypress events are received for some
        # modifier keys.  The workaround is to ignore these events since
        # KeyDown events are sent for these keys in the keydown listener.
        case (@last_key_code)
        when SWT::CAPS_LOCK, SWT::NUM_LOCK, SWT::SCROLL_LOCK
          return XPCOM::NS_OK
        end
        # long
        # long
        result = Array.typed(::Java::Int).new(1) { 0 }
        rc = dom_event._query_interface(NsIDOMKeyEvent::NS_IDOMKEYEVENT_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        if ((result[0]).equal?(0))
          error(XPCOM::NS_NOINTERFACE)
        end
        dom_key_event = NsIDOMKeyEvent.new(result[0])
        result[0] = 0
        a_alt_key = Array.typed(::Java::Int).new(1) { 0 }
        a_ctrl_key = Array.typed(::Java::Int).new(1) { 0 }
        a_shift_key = Array.typed(::Java::Int).new(1) { 0 }
        a_meta_key = Array.typed(::Java::Int).new(1) { 0 }
        # PRBool
        rc = dom_key_event._get_alt_key(a_alt_key)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        rc = dom_key_event._get_ctrl_key(a_ctrl_key)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        rc = dom_key_event._get_shift_key(a_shift_key)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        rc = dom_key_event._get_meta_key(a_meta_key)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        dom_key_event._release
        a_char_code = Array.typed(::Java::Int).new(1) { 0 }
        # PRUint32
        rc = dom_key_event._get_char_code(a_char_code)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        @last_char_code = a_char_code[0]
        if ((@last_char_code).equal?(0))
          case (@last_key_code)
          when SWT::TAB
            @last_char_code = SWT::TAB
          when SWT::CR
            @last_char_code = SWT::CR
          when SWT::BS
            @last_char_code = SWT::BS
          when SWT::ESC
            @last_char_code = SWT::ESC
          when SWT::DEL
            @last_char_code = SWT::DEL
          end
        end
        if (!(a_ctrl_key[0]).equal?(0) && (0 <= @last_char_code && @last_char_code <= 0x7f))
          if (Character.new(?a.ord) <= @last_char_code && @last_char_code <= Character.new(?z.ord))
            @last_char_code -= Character.new(?a.ord) - Character.new(?A.ord)
          end
          if (64 <= @last_char_code && @last_char_code <= 95)
            @last_char_code -= 64
          end
        end
        key_event = Event.new
        key_event.attr_widget = self.attr_browser
        key_event.attr_type = SWT::KeyDown
        key_event.attr_key_code = @last_key_code
        key_event.attr_character = RJava.cast_to_char(@last_char_code)
        key_event.attr_state_mask = (!(a_alt_key[0]).equal?(0) ? SWT::ALT : 0) | (!(a_ctrl_key[0]).equal?(0) ? SWT::CTRL : 0) | (!(a_shift_key[0]).equal?(0) ? SWT::SHIFT : 0) | (!(a_meta_key[0]).equal?(0) ? SWT::COMMAND : 0)
        self.attr_browser.notify_listeners(key_event.attr_type, key_event)
        if (!key_event.attr_doit || self.attr_browser.is_disposed)
          dom_event._prevent_default
        end
        return XPCOM::NS_OK
      end
      if ((XPCOM::DOMEVENT_KEYUP == type_string))
        # long
        # long
        result = Array.typed(::Java::Int).new(1) { 0 }
        rc = dom_event._query_interface(NsIDOMKeyEvent::NS_IDOMKEYEVENT_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        if ((result[0]).equal?(0))
          error(XPCOM::NS_NOINTERFACE)
        end
        dom_key_event = NsIDOMKeyEvent.new(result[0])
        result[0] = 0
        a_key_code = Array.typed(::Java::Int).new(1) { 0 }
        # PRUint32
        rc = dom_key_event._get_key_code(a_key_code)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        key_code = translate_key(a_key_code[0])
        if ((key_code).equal?(0))
          # indicates a key for which key events are not sent
          dom_key_event._release
          return XPCOM::NS_OK
        end
        if (!(key_code).equal?(@last_key_code))
          # keyup does not correspond to the last keydown
          @last_key_code = key_code
          @last_char_code = 0
        end
        a_alt_key = Array.typed(::Java::Int).new(1) { 0 }
        a_ctrl_key = Array.typed(::Java::Int).new(1) { 0 }
        a_shift_key = Array.typed(::Java::Int).new(1) { 0 }
        a_meta_key = Array.typed(::Java::Int).new(1) { 0 }
        # PRBool
        rc = dom_key_event._get_alt_key(a_alt_key)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        rc = dom_key_event._get_ctrl_key(a_ctrl_key)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        rc = dom_key_event._get_shift_key(a_shift_key)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        rc = dom_key_event._get_meta_key(a_meta_key)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        dom_key_event._release
        key_event = Event.new
        key_event.attr_widget = self.attr_browser
        key_event.attr_type = SWT::KeyUp
        key_event.attr_key_code = @last_key_code
        key_event.attr_character = RJava.cast_to_char(@last_char_code)
        key_event.attr_state_mask = (!(a_alt_key[0]).equal?(0) ? SWT::ALT : 0) | (!(a_ctrl_key[0]).equal?(0) ? SWT::CTRL : 0) | (!(a_shift_key[0]).equal?(0) ? SWT::SHIFT : 0) | (!(a_meta_key[0]).equal?(0) ? SWT::COMMAND : 0)
        case (@last_key_code)
        when SWT::SHIFT, SWT::CONTROL, SWT::ALT, SWT::COMMAND
          key_event.attr_state_mask |= @last_key_code
        end
        self.attr_browser.notify_listeners(key_event.attr_type, key_event)
        if (!key_event.attr_doit || self.attr_browser.is_disposed)
          dom_event._prevent_default
        end
        @last_key_code = @last_char_code = 0
        return XPCOM::NS_OK
      end
      # mouse event
      # long
      # long
      result = Array.typed(::Java::Int).new(1) { 0 }
      rc = dom_event._query_interface(NsIDOMMouseEvent::NS_IDOMMOUSEEVENT_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      if ((result[0]).equal?(0))
        error(XPCOM::NS_NOINTERFACE)
      end
      dom_mouse_event = NsIDOMMouseEvent.new(result[0])
      result[0] = 0
      # MouseOver and MouseOut events are fired any time the mouse enters or exits
      # any element within the Browser.  To ensure that SWT events are only
      # fired for mouse movements into or out of the Browser, do not fire an
      # event if the element being exited (on MouseOver) or entered (on MouseExit)
      # is within the Browser.
      if ((XPCOM::DOMEVENT_MOUSEOVER == type_string) || (XPCOM::DOMEVENT_MOUSEOUT == type_string))
        rc = dom_mouse_event._get_related_target(result)
        if (!(rc).equal?(XPCOM::NS_OK))
          error(rc)
        end
        if (!(result[0]).equal?(0))
          dom_mouse_event._release
          return XPCOM::NS_OK
        end
      end
      a_client_x = Array.typed(::Java::Int).new(1) { 0 }
      a_client_y = Array.typed(::Java::Int).new(1) { 0 }
      a_detail = Array.typed(::Java::Int).new(1) { 0 }
      # PRInt32
      rc = dom_mouse_event._get_client_x(a_client_x)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      rc = dom_mouse_event._get_client_y(a_client_y)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      rc = dom_mouse_event._get_detail(a_detail)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      a_button = Array.typed(::Java::Short).new(1) { 0 }
      # PRUint16
      rc = dom_mouse_event._get_button(a_button)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      a_alt_key = Array.typed(::Java::Int).new(1) { 0 }
      a_ctrl_key = Array.typed(::Java::Int).new(1) { 0 }
      a_shift_key = Array.typed(::Java::Int).new(1) { 0 }
      a_meta_key = Array.typed(::Java::Int).new(1) { 0 }
      # PRBool
      rc = dom_mouse_event._get_alt_key(a_alt_key)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      rc = dom_mouse_event._get_ctrl_key(a_ctrl_key)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      rc = dom_mouse_event._get_shift_key(a_shift_key)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      rc = dom_mouse_event._get_meta_key(a_meta_key)
      if (!(rc).equal?(XPCOM::NS_OK))
        error(rc)
      end
      dom_mouse_event._release
      mouse_event = Event.new
      mouse_event.attr_widget = self.attr_browser
      mouse_event.attr_x = a_client_x[0]
      mouse_event.attr_y = a_client_y[0]
      mouse_event.attr_state_mask = (!(a_alt_key[0]).equal?(0) ? SWT::ALT : 0) | (!(a_ctrl_key[0]).equal?(0) ? SWT::CTRL : 0) | (!(a_shift_key[0]).equal?(0) ? SWT::SHIFT : 0) | (!(a_meta_key[0]).equal?(0) ? SWT::COMMAND : 0)
      if ((XPCOM::DOMEVENT_MOUSEDOWN == type_string))
        @delegate.handle_mouse_down
        mouse_event.attr_type = SWT::MouseDown
        mouse_event.attr_button = a_button[0] + 1
        mouse_event.attr_count = a_detail[0]
      else
        if ((XPCOM::DOMEVENT_MOUSEUP == type_string))
          # Bug on OSX.  For some reason multiple mouseup events come from the DOM
          # when button 3 is released on OSX.  The first of these events has a count
          # detail and the others do not.  The workaround is to not fire received
          # button 3 mouseup events that do not have a count since mouse events
          # without a click count are not valid.
          button = a_button[0] + 1
          count = a_detail[0]
          if ((count).equal?(0) && (button).equal?(3))
            return XPCOM::NS_OK
          end
          mouse_event.attr_type = SWT::MouseUp
          mouse_event.attr_button = button
          mouse_event.attr_count = count
        else
          if ((XPCOM::DOMEVENT_MOUSEMOVE == type_string))
            mouse_event.attr_type = SWT::MouseMove
          else
            if ((XPCOM::DOMEVENT_MOUSEWHEEL == type_string))
              mouse_event.attr_type = SWT::MouseWheel
              mouse_event.attr_count = -a_detail[0]
            else
              if ((XPCOM::DOMEVENT_MOUSEOVER == type_string))
                mouse_event.attr_type = SWT::MouseEnter
              else
                if ((XPCOM::DOMEVENT_MOUSEOUT == type_string))
                  mouse_event.attr_type = SWT::MouseExit
                else
                  if ((XPCOM::DOMEVENT_MOUSEDRAG == type_string))
                    mouse_event.attr_type = SWT::DragDetect
                    mouse_event.attr_button = a_button[0] + 1
                    case (mouse_event.attr_button)
                    when 1
                      mouse_event.attr_state_mask |= SWT::BUTTON1
                    when 2
                      mouse_event.attr_state_mask |= SWT::BUTTON2
                    when 3
                      mouse_event.attr_state_mask |= SWT::BUTTON3
                    when 4
                      mouse_event.attr_state_mask |= SWT::BUTTON4
                    when 5
                      mouse_event.attr_state_mask |= SWT::BUTTON5
                    end
                  end
                end
              end
            end
          end
        end
      end
      self.attr_browser.notify_listeners(mouse_event.attr_type, mouse_event)
      if (self.attr_browser.is_disposed)
        return XPCOM::NS_OK
      end
      if ((a_detail[0]).equal?(2) && (XPCOM::DOMEVENT_MOUSEDOWN == type_string))
        mouse_event = Event.new
        mouse_event.attr_widget = self.attr_browser
        mouse_event.attr_x = a_client_x[0]
        mouse_event.attr_y = a_client_y[0]
        mouse_event.attr_state_mask = (!(a_alt_key[0]).equal?(0) ? SWT::ALT : 0) | (!(a_ctrl_key[0]).equal?(0) ? SWT::CTRL : 0) | (!(a_shift_key[0]).equal?(0) ? SWT::SHIFT : 0) | (!(a_meta_key[0]).equal?(0) ? SWT::COMMAND : 0)
        mouse_event.attr_type = SWT::MouseDoubleClick
        mouse_event.attr_button = a_button[0] + 1
        mouse_event.attr_count = a_detail[0]
        self.attr_browser.notify_listeners(mouse_event.attr_type, mouse_event)
      end
      return XPCOM::NS_OK
    end
    
    typesig { [] }
    def initialize
      @embed_handle = 0
      @web_browser = nil
      @web_browser_object = nil
      @delegate = nil
      @supports = nil
      @weak_reference = nil
      @web_progress_listener = nil
      @web_browser_chrome = nil
      @web_browser_chrome_focus = nil
      @embedding_site_window = nil
      @interface_requestor = nil
      @supports_weak_reference = nil
      @context_menu_listener = nil
      @uri_content_listener = nil
      @tooltip_listener = nil
      @dom_event_listener = nil
      @chrome_flags = 0
      @ref_count = 0
      @last_key_code = 0
      @last_char_code = 0
      @auth_count = 0
      @request = 0
      @location = nil
      @size = nil
      @visible = false
      @is_child = false
      @ignore_dispose = false
      @tip = nil
      @listener = nil
      @unhooked_domwindows = nil
      @last_navigate_url = nil
      @html_bytes = nil
      super()
      @chrome_flags = NsIWebBrowserChrome::CHROME_DEFAULT
      @tip = nil
      @unhooked_domwindows = Vector.new
    end
    
    private
    alias_method :initialize__mozilla, :initialize
  end
  
end
