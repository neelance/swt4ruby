require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module SafariImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include_const ::Java::Util, :Enumeration
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt::Layout
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  class Safari < SafariImports.const_get :WebBrowser
    include_class_members SafariImports
    
    attr_accessor :web_view
    alias_method :attr_web_view, :web_view
    undef_method :web_view
    alias_method :attr_web_view=, :web_view=
    undef_method :web_view=
    
    attr_accessor :preferences
    alias_method :attr_preferences, :preferences
    undef_method :preferences
    alias_method :attr_preferences=, :preferences=
    undef_method :preferences=
    
    attr_accessor :delegate
    alias_method :attr_delegate, :delegate
    undef_method :delegate
    alias_method :attr_delegate=, :delegate=
    undef_method :delegate=
    
    attr_accessor :changing_location
    alias_method :attr_changing_location, :changing_location
    undef_method :changing_location
    alias_method :attr_changing_location=, :changing_location=
    undef_method :changing_location=
    
    attr_accessor :last_hovered_link_url
    alias_method :attr_last_hovered_link_url, :last_hovered_link_url
    undef_method :last_hovered_link_url
    alias_method :attr_last_hovered_link_url=, :last_hovered_link_url=
    undef_method :last_hovered_link_url=
    
    attr_accessor :last_navigate_url
    alias_method :attr_last_navigate_url, :last_navigate_url
    undef_method :last_navigate_url
    alias_method :attr_last_navigate_url=, :last_navigate_url=
    undef_method :last_navigate_url=
    
    attr_accessor :html
    alias_method :attr_html, :html
    undef_method :html
    alias_method :attr_html=, :html=
    undef_method :html=
    
    # long
    attr_accessor :identifier
    alias_method :attr_identifier, :identifier
    undef_method :identifier
    alias_method :attr_identifier=, :identifier=
    undef_method :identifier=
    
    attr_accessor :resource_count
    alias_method :attr_resource_count, :resource_count
    undef_method :resource_count
    alias_method :attr_resource_count=, :resource_count=
    undef_method :resource_count=
    
    attr_accessor :url
    alias_method :attr_url, :url
    undef_method :url
    alias_method :attr_url=, :url=
    undef_method :url=
    
    # $NON-NLS-1$
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
    
    attr_accessor :status_bar
    alias_method :attr_status_bar, :status_bar
    undef_method :status_bar
    alias_method :attr_status_bar=, :status_bar=
    undef_method :status_bar=
    
    attr_accessor :tool_bar
    alias_method :attr_tool_bar, :tool_bar
    undef_method :tool_bar
    alias_method :attr_tool_bar=, :tool_bar=
    undef_method :tool_bar=
    
    attr_accessor :ignore_dispose
    alias_method :attr_ignore_dispose, :ignore_dispose
    undef_method :ignore_dispose
    alias_method :attr_ignore_dispose=, :ignore_dispose=
    undef_method :ignore_dispose=
    
    attr_accessor :last_mouse_move_x
    alias_method :attr_last_mouse_move_x, :last_mouse_move_x
    undef_method :last_mouse_move_x
    alias_method :attr_last_mouse_move_x=, :last_mouse_move_x=
    undef_method :last_mouse_move_x=
    
    attr_accessor :last_mouse_move_y
    alias_method :attr_last_mouse_move_y, :last_mouse_move_y
    undef_method :last_mouse_move_y
    alias_method :attr_last_mouse_move_y=, :last_mouse_move_y=
    undef_method :last_mouse_move_y=
    
    class_module.module_eval {
      # TEMPORARY CODE
      # boolean doit;
      # long
      
      def delegate_class
        defined?(@@delegate_class) ? @@delegate_class : @@delegate_class= 0
      end
      alias_method :attr_delegate_class, :delegate_class
      
      def delegate_class=(value)
        @@delegate_class = value
      end
      alias_method :attr_delegate_class=, :delegate_class=
      
      
      def initialized
        defined?(@@initialized) ? @@initialized : @@initialized= false
      end
      alias_method :attr_initialized, :initialized
      
      def initialized=(value)
        @@initialized = value
      end
      alias_method :attr_initialized=, :initialized=
      
      # the following Callbacks are never freed
      
      def callback3
        defined?(@@callback3) ? @@callback3 : @@callback3= nil
      end
      alias_method :attr_callback3, :callback3
      
      def callback3=(value)
        @@callback3 = value
      end
      alias_method :attr_callback3=, :callback3=
      
      
      def callback4
        defined?(@@callback4) ? @@callback4 : @@callback4= nil
      end
      alias_method :attr_callback4, :callback4
      
      def callback4=(value)
        @@callback4 = value
      end
      alias_method :attr_callback4=, :callback4=
      
      
      def callback5
        defined?(@@callback5) ? @@callback5 : @@callback5= nil
      end
      alias_method :attr_callback5, :callback5
      
      def callback5=(value)
        @@callback5 = value
      end
      alias_method :attr_callback5=, :callback5=
      
      
      def callback6
        defined?(@@callback6) ? @@callback6 : @@callback6= nil
      end
      alias_method :attr_callback6, :callback6
      
      def callback6=(value)
        @@callback6 = value
      end
      alias_method :attr_callback6=, :callback6=
      
      
      def callback7
        defined?(@@callback7) ? @@callback7 : @@callback7= nil
      end
      alias_method :attr_callback7, :callback7
      
      def callback7=(value)
        @@callback7 = value
      end
      alias_method :attr_callback7=, :callback7=
      
      const_set_lazy(:MIN_SIZE) { 16 }
      const_attr_reader  :MIN_SIZE
      
      const_set_lazy(:MAX_PROGRESS) { 100 }
      const_attr_reader  :MAX_PROGRESS
      
      const_set_lazy(:WebElementLinkURLKey) { "WebElementLinkURL" }
      const_attr_reader  :WebElementLinkURLKey
      
      # $NON-NLS-1$
      const_set_lazy(:AGENT_STRING) { "Safari/unknown" }
      const_attr_reader  :AGENT_STRING
      
      # $NON-NLS-1$
      const_set_lazy(:URI_FROMMEMORY) { "file:///" }
      const_attr_reader  :URI_FROMMEMORY
      
      # $NON-NLS-1$
      const_set_lazy(:PROTOCOL_FILE) { "file://" }
      const_attr_reader  :PROTOCOL_FILE
      
      # $NON-NLS-1$
      const_set_lazy(:PROTOCOL_HTTP) { "http://" }
      const_attr_reader  :PROTOCOL_HTTP
      
      # $NON-NLS-1$
      const_set_lazy(:ABOUT_BLANK) { "about:blank" }
      const_attr_reader  :ABOUT_BLANK
      
      # $NON-NLS-1$
      const_set_lazy(:HEADER_SETCOOKIE) { "Set-Cookie" }
      const_attr_reader  :HEADER_SETCOOKIE
      
      # $NON-NLS-1$
      const_set_lazy(:ADD_WIDGET_KEY) { "org.eclipse.swt.internal.addWidget" }
      const_attr_reader  :ADD_WIDGET_KEY
      
      # $NON-NLS-1$
      const_set_lazy(:SAFARI_EVENTS_FIX_KEY) { "org.eclipse.swt.internal.safariEventsFix" }
      const_attr_reader  :SAFARI_EVENTS_FIX_KEY
      
      # $NON-NLS-1$
      const_set_lazy(:SWT_OBJECT) { Array.typed(::Java::Byte).new([Character.new(?S.ord), Character.new(?W.ord), Character.new(?T.ord), Character.new(?_.ord), Character.new(?O.ord), Character.new(?B.ord), Character.new(?J.ord), Character.new(?E.ord), Character.new(?C.ord), Character.new(?T.ord), Character.new(?\0.ord)]) }
      const_attr_reader  :SWT_OBJECT
      
      # event strings
      const_set_lazy(:DOMEVENT_KEYUP) { "keyup" }
      const_attr_reader  :DOMEVENT_KEYUP
      
      # $NON-NLS-1$
      const_set_lazy(:DOMEVENT_KEYDOWN) { "keydown" }
      const_attr_reader  :DOMEVENT_KEYDOWN
      
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
      const_set_lazy(:DOMEVENT_MOUSEWHEEL) { "mousewheel" }
      const_attr_reader  :DOMEVENT_MOUSEWHEEL
      
      # $NON-NLS-1$
      when_class_loaded do
        NativeClearSessions = Class.new(Runnable.class == Class ? Runnable : Object) do
          extend LocalClass
          include_class_members Safari
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            storage = NSHTTPCookieStorage.shared_httpcookie_storage
            cookies_ = storage.cookies
            # 64
            count_ = RJava.cast_to_int(cookies_.count)
            i = 0
            while i < count_
              cookie = self.class::NSHTTPCookie.new(cookies_.object_at_index(i))
              if (cookie.is_session_only)
                storage.delete_cookie(cookie)
              end
              i += 1
            end
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        NativeGetCookie = Class.new(Runnable.class == Class ? Runnable : Object) do
          extend LocalClass
          include_class_members Safari
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            storage = NSHTTPCookieStorage.shared_httpcookie_storage
            url = NSURL._urlwith_string(NSString.string_with(CookieUrl))
            cookies = storage.cookies_for_url(url)
            # 64
            count_ = RJava.cast_to_int(cookies.count)
            if ((count_).equal?(0))
              return
            end
            name = NSString.string_with(CookieName)
            i = 0
            while i < count_
              current = self.class::NSHTTPCookie.new(cookies.object_at_index(i))
              if ((current.name.compare(name)).equal?(OS::NSOrderedSame))
                CookieValue = current.value.get_string
                return
              end
              i += 1
            end
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        NativeSetCookie = Class.new(Runnable.class == Class ? Runnable : Object) do
          extend LocalClass
          include_class_members Safari
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            url = NSURL._urlwith_string(NSString.string_with(CookieUrl))
            headers = NSMutableDictionary.dictionary_with_capacity(1)
            headers.set_value(NSString.string_with(CookieValue), NSString.string_with(HEADER_SETCOOKIE))
            cookies = NSHTTPCookie.cookies_with_response_header_fields(headers, url)
            if ((cookies.count).equal?(0))
              return
            end
            storage = NSHTTPCookieStorage.shared_httpcookie_storage
            cookie = self.class::NSHTTPCookie.new(cookies.object_at_index(0))
            storage.set_cookie(cookie)
            CookieResult = true
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
      if ((self.attr_delegate_class).equal?(0))
        safari_class = self.get_class
        self.attr_callback3 = Callback.new(safari_class, "browserProc", 3) # $NON-NLS-1$
        # long
        proc3 = self.attr_callback3.get_address
        if ((proc3).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_callback4 = Callback.new(safari_class, "browserProc", 4) # $NON-NLS-1$
        # long
        proc4 = self.attr_callback4.get_address
        if ((proc4).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_callback5 = Callback.new(safari_class, "browserProc", 5) # $NON-NLS-1$
        # long
        proc5 = self.attr_callback5.get_address
        if ((proc5).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_callback6 = Callback.new(safari_class, "browserProc", 6) # $NON-NLS-1$
        # long
        proc6 = self.attr_callback6.get_address
        if ((proc6).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_callback7 = Callback.new(safari_class, "browserProc", 7) # $NON-NLS-1$
        # long
        proc7 = self.attr_callback7.get_address
        if ((proc7).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        # long
        set_frame_proc = OS._callback_web_view_set_frame_(proc4)
        if ((set_frame_proc).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        class_name = "SWTWebViewDelegate" # $NON-NLS-1$
        types = Array.typed(::Java::Byte).new([Character.new(?*.ord), Character.new(?\0.ord)])
        size = C::PTR_SIZEOF
        align = (C::PTR_SIZEOF).equal?(4) ? 2 : 3
        self.attr_delegate_class = OS.objc_allocate_class_pair(OS.attr_class_nsobject, class_name, 0)
        OS.class_add_ivar(self.attr_delegate_class, SWT_OBJECT, size, align, types)
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_did_change_location_within_page_for_frame_, proc4, "@:@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_did_fail_provisional_load_with_error_for_frame_, proc5, "@:@@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_did_finish_load_for_frame_, proc4, "@:@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_did_receive_title_for_frame_, proc5, "@:@@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_did_start_provisional_load_for_frame_, proc4, "@:@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_did_commit_load_for_frame_, proc4, "@:@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_resource_did_finish_loading_from_data_source_, proc5, "@:@@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_resource_did_receive_authentication_challenge_from_data_source_, proc6, "@:@@@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_resource_did_fail_loading_with_error_from_data_source_, proc6, "@:@@@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_identifier_for_initial_request_from_data_source_, proc5, "@:@@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_resource_will_send_request_redirect_response_from_data_source_, proc7, "@:@@@@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_create_web_view_with_request_, proc4, "@:@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_show_, proc3, "@:@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_close_, proc3, "@:@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_context_menu_items_for_element_default_menu_items_, proc5, "@:@@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_set_status_bar_visible_, proc4, "@:@B") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_set_resizable_, proc4, "@:@B") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_set_toolbars_visible_, proc4, "@:@B") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_set_status_text_, proc4, "@:@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_focus_, proc3, "@:@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_unfocus_, proc3, "@:@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_run_java_script_alert_panel_with_message_, proc4, "@:@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_run_java_script_confirm_panel_with_message_, proc4, "@:@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_run_open_panel_for_file_button_with_result_listener_, proc4, "@:@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_mouse_did_move_over_element_modifier_flags_, proc5, "@:@@I") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_print_frame_view_, proc4, "@:@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_decide_policy_for_mimetype_request_frame_decision_listener_, proc7, "@:@@@@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_decide_policy_for_navigation_action_request_frame_decision_listener_, proc7, "@:@@@@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_decide_policy_for_new_window_action_request_new_frame_name_decision_listener_, proc7, "@:@@@@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_unable_to_implement_policy_with_error_frame_, proc5, "@:@@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_download_decide_destination_with_suggested_filename_, proc4, "@:@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_handle_event_, proc3, "@:@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_set_frame_, set_frame_proc, "@:@{NSRect}") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_web_view_window_script_object_available_, proc4, "@:@@") # $NON-NLS-1$
        OS.class_add_method(self.attr_delegate_class, OS.attr_sel_call_java, proc5, "@:@@@") # $NON-NLS-1$
        OS.objc_register_class_pair(self.attr_delegate_class)
        # long
        meta_class = OS.objc_get_meta_class(class_name)
        OS.class_add_method(meta_class, OS.attr_sel_is_selector_excluded_from_web_script_, proc3, "@:@") # $NON-NLS-1$
        OS.class_add_method(meta_class, OS.attr_sel_web_script_name_for_selector_, proc3, "@:@") # $NON-NLS-1$
      end
      # Override the default event mechanism to not send key events so
      # that the browser can send them by listening to the DOM instead.
      self.attr_browser.set_data(SAFARI_EVENTS_FIX_KEY)
      web_view = WebView.new.alloc
      if ((web_view).nil?)
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      web_view.init_with_frame(self.attr_browser.attr_view.frame, nil, nil)
      web_view.set_autoresizing_mask(OS::NSViewWidthSizable | OS::NSViewHeightSizable)
      delegate = SWTWebViewDelegate.new.alloc.init
      display = self.attr_browser.get_display
      display.set_data(ADD_WIDGET_KEY, Array.typed(Object).new([delegate, self.attr_browser]))
      @delegate = delegate
      @web_view = web_view
      self.attr_browser.attr_view.add_subview(web_view)
      listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members Safari
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |e|
          catch(:break_case) do
            case (e.attr_type)
            when SWT::FocusIn
              @local_class_parent.attr_web_view.window___org_eclipse_swt_browser_safari_0.make_first_responder(@local_class_parent.attr_web_view)
            when SWT::Dispose
              # make this handler run after other dispose listeners
              if (self.attr_ignore_dispose)
                self.attr_ignore_dispose = false
                throw :break_case, :thrown
              end
              self.attr_ignore_dispose = true
              self.attr_browser.notify_listeners(e.attr_type, e)
              e.attr_type = SWT::NONE
              e.attr_display.set_data(ADD_WIDGET_KEY, Array.typed(Object).new([delegate, nil]))
              @local_class_parent.attr_web_view.set_frame_load_delegate(nil)
              @local_class_parent.attr_web_view.set_resource_load_delegate(nil)
              @local_class_parent.attr_web_view.set_uidelegate(nil)
              @local_class_parent.attr_web_view.set_policy_delegate(nil)
              @local_class_parent.attr_web_view.set_download_delegate(nil)
              @local_class_parent.attr_web_view.release
              @local_class_parent.attr_web_view = nil
              @local_class_parent.attr_delegate.release
              @local_class_parent.attr_delegate = nil
              self.attr_html = nil
              self.attr_last_hovered_link_url = self.attr_last_navigate_url = nil
              elements_ = self.attr_functions.elements
              while (elements_.has_more_elements)
                (elements_.next_element).dispose(false)
              end
              self.attr_functions = nil
              if (!(self.attr_preferences).nil?)
                self.attr_preferences.release
              end
              self.attr_preferences = nil
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
      self.attr_browser.add_listener(SWT::Dispose, listener)
      # Needed to be able to tab into the browser
      self.attr_browser.add_listener(SWT::KeyDown, listener)
      self.attr_browser.add_listener(SWT::FocusIn, listener)
      web_view.set_frame_load_delegate(delegate)
      web_view.set_resource_load_delegate(delegate)
      web_view.set_uidelegate(delegate)
      web_view.set_policy_delegate(delegate)
      web_view.set_download_delegate(delegate)
      web_view.set_application_name_for_user_agent(NSString.string_with(AGENT_STRING))
      if (!self.attr_initialized)
        self.attr_initialized = true
        # disable applets
        WebPreferences.standard_preferences.set_java_enabled(false)
      end
    end
    
    typesig { [] }
    def back
      @html = RJava.cast_to_string(nil)
      return @web_view.go_back
    end
    
    class_module.module_eval {
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def browser_proc(id, sel, arg0)
        if ((id).equal?(self.attr_delegate_class))
          if ((sel).equal?(OS.attr_sel_is_selector_excluded_from_web_script_))
            return is_selector_excluded_from_web_script(arg0) ? 1 : 0
          else
            if ((sel).equal?(OS.attr_sel_web_script_name_for_selector_))
              return web_script_name_for_selector(arg0)
            end
          end
        end
        widget = Display.get_current.find_widget(id)
        if ((widget).nil?)
          return 0
        end
        safari = (widget).attr_web_browser
        if ((sel).equal?(OS.attr_sel_web_view_show_))
          safari.web_view_show(arg0)
        else
          if ((sel).equal?(OS.attr_sel_web_view_close_))
            safari.web_view_close(arg0)
          else
            if ((sel).equal?(OS.attr_sel_web_view_focus_))
              safari.web_view_focus(arg0)
            else
              if ((sel).equal?(OS.attr_sel_web_view_unfocus_))
                safari.web_view_unfocus(arg0)
              else
                if ((sel).equal?(OS.attr_sel_handle_event_))
                  safari.handle_event(arg0)
                end
              end
            end
          end
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def browser_proc(id, sel, arg0, arg1)
        widget = Display.get_current.find_widget(id)
        if ((widget).nil?)
          return 0
        end
        safari = (widget).attr_web_browser
        if ((sel).equal?(OS.attr_sel_web_view_did_change_location_within_page_for_frame_))
          safari.web_view_did_change_location_within_page_for_frame(arg0, arg1)
        else
          if ((sel).equal?(OS.attr_sel_web_view_did_finish_load_for_frame_))
            safari.web_view_did_finish_load_for_frame(arg0, arg1)
          else
            if ((sel).equal?(OS.attr_sel_web_view_did_start_provisional_load_for_frame_))
              safari.web_view_did_start_provisional_load_for_frame(arg0, arg1)
            else
              if ((sel).equal?(OS.attr_sel_web_view_did_commit_load_for_frame_))
                safari.web_view_did_commit_load_for_frame(arg0, arg1)
              else
                if ((sel).equal?(OS.attr_sel_web_view_set_frame_))
                  safari.web_view_set_frame(arg0, arg1)
                else
                  if ((sel).equal?(OS.attr_sel_web_view_create_web_view_with_request_))
                    return safari.web_view_create_web_view_with_request(arg0, arg1)
                  else
                    if ((sel).equal?(OS.attr_sel_web_view_set_status_bar_visible_))
                      safari.web_view_set_status_bar_visible(arg0, !(arg1).equal?(0))
                    else
                      if ((sel).equal?(OS.attr_sel_web_view_set_resizable_))
                        safari.web_view_set_resizable(arg0, !(arg1).equal?(0))
                      else
                        if ((sel).equal?(OS.attr_sel_web_view_set_status_text_))
                          safari.web_view_set_status_text(arg0, arg1)
                        else
                          if ((sel).equal?(OS.attr_sel_web_view_set_toolbars_visible_))
                            safari.web_view_set_toolbars_visible(arg0, !(arg1).equal?(0))
                          else
                            if ((sel).equal?(OS.attr_sel_web_view_run_java_script_alert_panel_with_message_))
                              safari.web_view_run_java_script_alert_panel_with_message(arg0, arg1)
                            else
                              if ((sel).equal?(OS.attr_sel_web_view_run_java_script_confirm_panel_with_message_))
                                return safari.web_view_run_java_script_confirm_panel_with_message(arg0, arg1)
                              else
                                if ((sel).equal?(OS.attr_sel_web_view_run_open_panel_for_file_button_with_result_listener_))
                                  safari.web_view_run_open_panel_for_file_button_with_result_listener(arg0, arg1)
                                else
                                  if ((sel).equal?(OS.attr_sel_download_decide_destination_with_suggested_filename_))
                                    safari.download_decide_destination_with_suggested_filename(arg0, arg1)
                                  else
                                    if ((sel).equal?(OS.attr_sel_web_view_print_frame_view_))
                                      safari.web_view_print_frame_view(arg0, arg1)
                                    else
                                      if ((sel).equal?(OS.attr_sel_web_view_window_script_object_available_))
                                        safari.web_view_window_script_object_available(arg0, arg1)
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      def browser_proc(id, sel, arg0, arg1, arg2)
        widget = Display.get_current.find_widget(id)
        if ((widget).nil?)
          return 0
        end
        safari = (widget).attr_web_browser
        if ((sel).equal?(OS.attr_sel_web_view_did_fail_provisional_load_with_error_for_frame_))
          safari.web_view_did_fail_provisional_load_with_error_for_frame(arg0, arg1, arg2)
        else
          if ((sel).equal?(OS.attr_sel_web_view_did_receive_title_for_frame_))
            safari.web_view_did_receive_title_for_frame(arg0, arg1, arg2)
          else
            if ((sel).equal?(OS.attr_sel_web_view_resource_did_finish_loading_from_data_source_))
              safari.web_view_resource_did_finish_loading_from_data_source(arg0, arg1, arg2)
            else
              if ((sel).equal?(OS.attr_sel_web_view_identifier_for_initial_request_from_data_source_))
                return safari.web_view_identifier_for_initial_request_from_data_source(arg0, arg1, arg2)
              else
                if ((sel).equal?(OS.attr_sel_web_view_context_menu_items_for_element_default_menu_items_))
                  return safari.web_view_context_menu_items_for_element_default_menu_items(arg0, arg1, arg2)
                else
                  if ((sel).equal?(OS.attr_sel_web_view_mouse_did_move_over_element_modifier_flags_))
                    safari.web_view_mouse_did_move_over_element_modifier_flags(arg0, arg1, arg2)
                  else
                    if ((sel).equal?(OS.attr_sel_web_view_unable_to_implement_policy_with_error_frame_))
                      safari.web_view_unable_to_implement_policy_with_error_frame(arg0, arg1, arg2)
                    else
                      if ((sel).equal?(OS.attr_sel_call_java))
                        result = safari.call_java(arg0, arg1, arg2)
                        return (result).nil? ? 0 : result.attr_id
                      end
                    end
                  end
                end
              end
            end
          end
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def browser_proc(id, sel, arg0, arg1, arg2, arg3)
        widget = Display.get_current.find_widget(id)
        if ((widget).nil?)
          return 0
        end
        safari = (widget).attr_web_browser
        if ((sel).equal?(OS.attr_sel_web_view_resource_did_fail_loading_with_error_from_data_source_))
          safari.web_view_resource_did_fail_loading_with_error_from_data_source(arg0, arg1, arg2, arg3)
        else
          if ((sel).equal?(OS.attr_sel_web_view_resource_did_receive_authentication_challenge_from_data_source_))
            safari.web_view_resource_did_receive_authentication_challenge_from_data_source(arg0, arg1, arg2, arg3)
          end
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def browser_proc(id, sel, arg0, arg1, arg2, arg3, arg4)
        widget = Display.get_current.find_widget(id)
        if ((widget).nil?)
          return 0
        end
        safari = (widget).attr_web_browser
        if ((sel).equal?(OS.attr_sel_web_view_resource_will_send_request_redirect_response_from_data_source_))
          return safari.web_view_resource_will_send_request_redirect_response_from_data_source(arg0, arg1, arg2, arg3, arg4)
        else
          if ((sel).equal?(OS.attr_sel_web_view_decide_policy_for_mimetype_request_frame_decision_listener_))
            safari.web_view_decide_policy_for_mimetype_request_frame_decision_listener(arg0, arg1, arg2, arg3, arg4)
          else
            if ((sel).equal?(OS.attr_sel_web_view_decide_policy_for_navigation_action_request_frame_decision_listener_))
              safari.web_view_decide_policy_for_navigation_action_request_frame_decision_listener(arg0, arg1, arg2, arg3, arg4)
            else
              if ((sel).equal?(OS.attr_sel_web_view_decide_policy_for_new_window_action_request_new_frame_name_decision_listener_))
                safari.web_view_decide_policy_for_new_window_action_request_new_frame_name_decision_listener(arg0, arg1, arg2, arg3, arg4)
              end
            end
          end
        end
        return 0
      end
      
      typesig { [::Java::Int] }
      # long
      def is_selector_excluded_from_web_script(a_selector)
        return !(a_selector).equal?(OS.attr_sel_call_java)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def web_script_name_for_selector(a_selector)
        if ((a_selector).equal?(OS.attr_sel_call_java))
          return NSString.string_with("callJava").attr_id # $NON-NLS-1$
        end
        return 0
      end
    }
    
    typesig { [String] }
    def execute(script)
      return !(@web_view.string_by_evaluating_java_script_from_string(NSString.string_with(script))).nil?
    end
    
    typesig { [] }
    def forward
      @html = RJava.cast_to_string(nil)
      return @web_view.go_forward
    end
    
    typesig { [] }
    def get_browser_type
      return "safari" # $NON-NLS-1$
    end
    
    typesig { [] }
    def get_text
      main_frame_ = @web_view.main_frame
      data_source_ = main_frame_.data_source
      if ((data_source_).nil?)
        return ""
      end # $NON-NLS-1$
      representation_ = data_source_.representation
      if ((representation_).nil?)
        return ""
      end # $NON-NLS-1$
      source = representation_.document_source
      if ((source).nil?)
        return ""
      end # $NON-NLS-1$
      return source.get_string
    end
    
    typesig { [] }
    def get_url
      return @url
    end
    
    typesig { [] }
    def is_back_enabled
      return @web_view.can_go_back
    end
    
    typesig { [] }
    def is_forward_enabled
      return @web_view.can_go_forward
    end
    
    typesig { [] }
    def refresh
      @web_view.reload(nil)
    end
    
    typesig { [String] }
    def set_text(html)
      # Bug in Safari.  The web view segment faults in some circumstances
      # when the text changes during the location changing callback.  The
      # fix is to defer the work until the callback is done.
      if (@changing_location)
        @html = html
      else
        __set_text(html)
      end
      return true
    end
    
    typesig { [String] }
    def __set_text(html)
      string = NSString.string_with(html)
      urlstring = NSString.string_with(URI_FROMMEMORY)
      url = NSURL._urlwith_string(urlstring)
      main_frame_ = @web_view.main_frame
      main_frame_.load_htmlstring(string, url)
    end
    
    typesig { [String] }
    def set_url(url)
      @html = RJava.cast_to_string(nil)
      if ((url.index_of(Character.new(?/.ord))).equal?(0))
        url = PROTOCOL_FILE + url
      else
        if ((url.index_of(Character.new(?:.ord))).equal?(-1))
          url = PROTOCOL_HTTP + url
        end
      end
      str = NSString.string_with(url)
      unescaped_str = NSString.string_with("%#") # $NON-NLS-1$
      # long
      ptr = OS._cfurlcreate_string_by_adding_percent_escapes(0, str.attr_id, unescaped_str.attr_id, 0, OS.attr_k_cfstring_encoding_utf8)
      escaped_string = NSString.new(ptr)
      in_url = NSURL._urlwith_string(escaped_string)
      OS._cfrelease(ptr)
      request = NSURLRequest.request_with_url(in_url)
      main_frame_ = @web_view.main_frame
      main_frame_.load_request(request)
      return true
    end
    
    typesig { [] }
    def stop
      @html = RJava.cast_to_string(nil)
      @web_view.stop_loading(nil)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # WebFrameLoadDelegate
    # long
    # long
    def web_view_did_change_location_within_page_for_frame(sender, frame_id)
      frame_ = WebFrame.new(frame_id)
      data_source_ = frame_.data_source
      request_ = data_source_.request
      url = request_._url
      s = url.absolute_string
      # 64
      length_ = RJava.cast_to_int(s.length)
      if ((length_).equal?(0))
        return
      end
      url2 = s.get_string
      # If the URI indicates that the page is being rendered from memory
      # (via setText()) then set it to about:blank to be consistent with IE.
      if ((url2 == URI_FROMMEMORY))
        url2 = ABOUT_BLANK
      end
      display = self.attr_browser.get_display
      top = (frame_id).equal?(@web_view.main_frame.attr_id)
      if (top)
        status_text = StatusTextEvent.new(self.attr_browser)
        status_text.attr_display = display
        status_text.attr_widget = self.attr_browser
        status_text.attr_text = url2
        i = 0
        while i < self.attr_status_text_listeners.attr_length
          self.attr_status_text_listeners[i].changed(status_text)
          i += 1
        end
      end
      location = LocationEvent.new(self.attr_browser)
      location.attr_display = display
      location.attr_widget = self.attr_browser
      location.attr_location = url2
      location.attr_top = top
      i = 0
      while i < self.attr_location_listeners.attr_length
        self.attr_location_listeners[i].changed(location)
        i += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def web_view_did_fail_provisional_load_with_error_for_frame(sender, error_, frame_)
      if ((frame_).equal?(@web_view.main_frame.attr_id))
        # Feature on Safari.  The identifier is used here as a marker for the events
        # related to the top frame and the URL changes related to that top frame as
        # they should appear on the location bar of a browser.  It is expected to reset
        # the identifier to 0 when the event didFinishLoadingFromDataSource related to
        # the identifierForInitialRequest event is received.  However, Safari fires
        # the didFinishLoadingFromDataSource event before the entire content of the
        # top frame is loaded.  It is possible to receive multiple willSendRequest
        # events in this interval, causing the Browser widget to send unwanted
        # Location.changing events.  For this reason, the identifier is reset to 0
        # when the top frame has either finished loading (didFinishLoadForFrame
        # event) or failed (didFailProvisionalLoadWithError).
        @identifier = 0
      end
      nserror = NSError.new(error_)
      # long
      error_code = nserror.code
      if (error_code <= OS::NSURLErrorBadURL)
        description = nserror.localized_description
        if (!(description).nil?)
          description_string = description.get_string
          url_string = nil
          info = nserror.user_info
          if (!(info).nil?)
            key = NSString.new(OS._nserror_failing_urlstring_key)
            id = info.value_for_key(key)
            if (!(id).nil?)
              url = NSString.new(id)
              url_string = RJava.cast_to_string(url.get_string)
            end
          end
          message = !(url_string).nil? ? url_string + "\n\n" : "" # $NON-NLS-1$ //$NON-NLS-2$
          message += RJava.cast_to_string(Compatibility.get_message("SWT_Page_Load_Failed", Array.typed(Object).new([description_string]))) # $NON-NLS-1$
          message_box = MessageBox.new(self.attr_browser.get_shell, SWT::OK | SWT::ICON_ERROR)
          message_box.set_message(message)
          message_box.open
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def web_view_did_finish_load_for_frame(sender, frame_id)
      hook_dommouse_listeners(frame_id)
      if ((frame_id).equal?(@web_view.main_frame.attr_id))
        hook_domkey_listeners(frame_id)
        display = self.attr_browser.get_display
        # To be consistent with other platforms a title event should be fired when a
        # page has completed loading.  A page with a <title> tag will do this
        # automatically when the didReceiveTitle callback is received.  However a page
        # without a <title> tag will not do this by default, so fire the event
        # here with the page's url as the title.
        frame_ = WebFrame.new(frame_id)
        data_source_ = frame_.data_source
        if (!(data_source_).nil?)
          title = data_source_.page_title
          if ((title).nil?)
            # page has no title
            new_event = TitleEvent.new(self.attr_browser)
            new_event.attr_display = display
            new_event.attr_widget = self.attr_browser
            new_event.attr_title = @url
            i = 0
            while i < self.attr_title_listeners.attr_length
              listener = self.attr_title_listeners[i]
              display.async_exec(# Note on WebKit.  Running the event loop from a Browser
              # delegate callback breaks the WebKit (stop loading or
              # crash).  The workaround is to invoke Display.asyncExec()
              # so that the Browser does not crash if this is attempted.
              Class.new(Runnable.class == Class ? Runnable : Object) do
                extend LocalClass
                include_class_members Safari
                include Runnable if Runnable.class == Module
                
                typesig { [] }
                define_method :run do
                  if (!display.is_disposed && !self.attr_browser.is_disposed)
                    listener.changed(new_event)
                  end
                end
                
                typesig { [Vararg.new(Object)] }
                define_method :initialize do |*args|
                  super(*args)
                end
                
                private
                alias_method :initialize_anonymous, :initialize
              end.new_local(self))
              i += 1
            end
          end
        end
        progress = ProgressEvent.new(self.attr_browser)
        progress.attr_display = display
        progress.attr_widget = self.attr_browser
        progress.attr_current = MAX_PROGRESS
        progress.attr_total = MAX_PROGRESS
        i = 0
        while i < self.attr_progress_listeners.attr_length
          listener = self.attr_progress_listeners[i]
          display.async_exec(# Note on WebKit.  Running the event loop from a Browser
          # delegate callback breaks the WebKit (stop loading or
          # crash).  The ProgressBar widget currently touches the
          # event loop every time the method setSelection is called.
          # The workaround is to invoke Display.asyncExec() so that
          # the Browser does not crash when the user updates the
          # selection of the ProgressBar.
          Class.new(Runnable.class == Class ? Runnable : Object) do
            extend LocalClass
            include_class_members Safari
            include Runnable if Runnable.class == Module
            
            typesig { [] }
            define_method :run do
              if (!display.is_disposed && !self.attr_browser.is_disposed)
                listener.completed(progress)
              end
            end
            
            typesig { [Vararg.new(Object)] }
            define_method :initialize do |*args|
              super(*args)
            end
            
            private
            alias_method :initialize_anonymous, :initialize
          end.new_local(self))
          i += 1
        end
        # re-install registered functions
        elements_ = self.attr_functions.elements
        while (elements_.has_more_elements)
          function = elements_.next_element
          execute(function.attr_function_string)
        end
        # Feature on Safari.  The identifier is used here as a marker for the events
        # related to the top frame and the URL changes related to that top frame as
        # they should appear on the location bar of a browser.  It is expected to reset
        # the identifier to 0 when the event didFinishLoadingFromDataSource related to
        # the identifierForInitialRequest event is received.  However, Safari fires
        # the didFinishLoadingFromDataSource event before the entire content of the
        # top frame is loaded.  It is possible to receive multiple willSendRequest
        # events in this interval, causing the Browser widget to send unwanted
        # Location.changing events.  For this reason, the identifier is reset to 0
        # when the top frame has either finished loading (didFinishLoadForFrame
        # event) or failed (didFailProvisionalLoadWithError).
        @identifier = 0
      end
    end
    
    typesig { [::Java::Int] }
    # long
    def hook_domkey_listeners(frame_id)
      frame_ = WebFrame.new(frame_id)
      document = frame_._domdocument
      if ((document).nil?)
        return
      end
      type = NSString.string_with(DOMEVENT_KEYDOWN)
      document.add_event_listener(type, @delegate, false)
      type = NSString.string_with(DOMEVENT_KEYUP)
      document.add_event_listener(type, @delegate, false)
    end
    
    typesig { [::Java::Int] }
    # long
    def hook_dommouse_listeners(frame_id)
      frame_ = WebFrame.new(frame_id)
      document = frame_._domdocument
      if ((document).nil?)
        return
      end
      type = NSString.string_with(DOMEVENT_MOUSEDOWN)
      document.add_event_listener(type, @delegate, false)
      type = NSString.string_with(DOMEVENT_MOUSEUP)
      document.add_event_listener(type, @delegate, false)
      type = NSString.string_with(DOMEVENT_MOUSEMOVE)
      document.add_event_listener(type, @delegate, false)
      type = NSString.string_with(DOMEVENT_MOUSEWHEEL)
      document.add_event_listener(type, @delegate, false)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def web_view_did_receive_title_for_frame(sender, title_id, frame_id)
      if ((frame_id).equal?(@web_view.main_frame.attr_id))
        title = NSString.new(title_id)
        new_title = title.get_string
        new_event = TitleEvent.new(self.attr_browser)
        new_event.attr_display = self.attr_browser.get_display
        new_event.attr_widget = self.attr_browser
        new_event.attr_title = new_title
        i = 0
        while i < self.attr_title_listeners.attr_length
          self.attr_title_listeners[i].changed(new_event)
          i += 1
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def web_view_did_start_provisional_load_for_frame(sender, frame_id)
      # This code is intentionally commented.  WebFrameLoadDelegate:didStartProvisionalLoadForFrame is
      # called before WebResourceLoadDelegate:willSendRequest and
      # WebFrameLoadDelegate:didCommitLoadForFrame.  The resource count is reset when didCommitLoadForFrame
      # is received for the top frame.
      # 
      # if (frameID == webView.mainFrame().id) {
      # /* reset resource status variables */
      # resourceCount= 0;
      # }
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def web_view_did_commit_load_for_frame(sender, frame_id)
      frame_ = WebFrame.new(frame_id)
      data_source_ = frame_.data_source
      request_ = data_source_.request
      url = request_._url
      s = url.absolute_string
      # 64
      length_ = RJava.cast_to_int(s.length)
      if ((length_).equal?(0))
        return
      end
      url2 = s.get_string
      # If the URI indicates that the page is being rendered from memory
      # (via setText()) then set it to about:blank to be consistent with IE.
      if ((url2 == URI_FROMMEMORY))
        url2 = ABOUT_BLANK
      end
      display = self.attr_browser.get_display
      top = (frame_id).equal?(@web_view.main_frame.attr_id)
      if (top)
        # reset resource status variables
        @resource_count = 0
        @url = url2
        progress = ProgressEvent.new(self.attr_browser)
        progress.attr_display = display
        progress.attr_widget = self.attr_browser
        progress.attr_current = 1
        progress.attr_total = MAX_PROGRESS
        i = 0
        while i < self.attr_progress_listeners.attr_length
          listener = self.attr_progress_listeners[i]
          display.async_exec(# Note on WebKit.  Running the event loop from a Browser
          # delegate callback breaks the WebKit (stop loading or
          # crash).  The widget ProgressBar currently touches the
          # event loop every time the method setSelection is called.
          # The workaround is to invoke Display.asyncexec so that
          # the Browser does not crash when the user updates the
          # selection of the ProgressBar.
          Class.new(Runnable.class == Class ? Runnable : Object) do
            extend LocalClass
            include_class_members Safari
            include Runnable if Runnable.class == Module
            
            typesig { [] }
            define_method :run do
              if (!display.is_disposed && !self.attr_browser.is_disposed)
                listener.changed(progress)
              end
            end
            
            typesig { [Vararg.new(Object)] }
            define_method :initialize do |*args|
              super(*args)
            end
            
            private
            alias_method :initialize_anonymous, :initialize
          end.new_local(self))
          i += 1
        end
        status_text = StatusTextEvent.new(self.attr_browser)
        status_text.attr_display = display
        status_text.attr_widget = self.attr_browser
        status_text.attr_text = url2
        i_ = 0
        while i_ < self.attr_status_text_listeners.attr_length
          self.attr_status_text_listeners[i_].changed(status_text)
          i_ += 1
        end
      end
      location = LocationEvent.new(self.attr_browser)
      location.attr_display = display
      location.attr_widget = self.attr_browser
      location.attr_location = url2
      location.attr_top = top
      i = 0
      while i < self.attr_location_listeners.attr_length
        self.attr_location_listeners[i].changed(location)
        i += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def web_view_window_script_object_available(web_view, window_script_object)
      script_object = NSObject.new(window_script_object)
      key = NSString.string_with("external") # $NON-NLS-1$
      script_object.set_value(@delegate, key)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # WebResourceLoadDelegate
    # long
    # long
    # long
    def web_view_resource_did_finish_loading_from_data_source(sender, identifier, data_source_)
      # Feature on Safari.  The identifier is used here as a marker for the events
      # related to the top frame and the URL changes related to that top frame as
      # they should appear on the location bar of a browser.  It is expected to reset
      # the identifier to 0 when the event didFinishLoadingFromDataSource related to
      # the identifierForInitialRequest event is received.  However, Safari fires
      # the didFinishLoadingFromDataSource event before the entire content of the
      # top frame is loaded.  It is possible to receive multiple willSendRequest
      # events in this interval, causing the Browser widget to send unwanted
      # Location.changing events.  For this reason, the identifier is reset to 0
      # when the top frame has either finished loading (didFinishLoadForFrame
      # event) or failed (didFailProvisionalLoadWithError).
      # 
      # this code is intentionally commented
      # if (this.identifier == identifier) this.identifier = 0;
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def web_view_resource_did_fail_loading_with_error_from_data_source(sender, identifier, error_, data_source_)
      # Feature on Safari.  The identifier is used here as a marker for the events
      # related to the top frame and the URL changes related to that top frame as
      # they should appear on the location bar of a browser.  It is expected to reset
      # the identifier to 0 when the event didFinishLoadingFromDataSource related to
      # the identifierForInitialRequest event is received.  However, Safari fires
      # the didFinishLoadingFromDataSource event before the entire content of the
      # top frame is loaded.  It is possible to receive multiple willSendRequest
      # events in this interval, causing the Browser widget to send unwanted
      # Location.changing events.  For this reason, the identifier is reset to 0
      # when the top frame has either finished loading (didFinishLoadForFrame
      # event) or failed (didFailProvisionalLoadWithError).
      # 
      # this code is intentionally commented
      # if (this.identifier == identifier) this.identifier = 0;
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def web_view_resource_did_receive_authentication_challenge_from_data_source(sender, identifier, challenge, data_source_)
      ns_challenge = NSURLAuthenticationChallenge.new(challenge)
      # Do not invoke the listeners if this challenge has been failed too many
      # times because a listener is likely giving incorrect credentials repeatedly
      # and will do so indefinitely.
      if (ns_challenge.previous_failure_count < 3)
        i = 0
        while i < self.attr_authentication_listeners.attr_length
          event = AuthenticationEvent.new(self.attr_browser)
          event.attr_location = @last_navigate_url
          self.attr_authentication_listeners[i].authenticate(event)
          if (!event.attr_doit)
            challenge_sender = ns_challenge.sender
            OS.objc_msg_send(challenge_sender.attr_id, OS.attr_sel_cancel_authentication_challenge_, challenge)
            return
          end
          if (!(event.attr_user).nil? && !(event.attr_password).nil?)
            challenge_sender = ns_challenge.sender
            user = NSString.string_with(event.attr_user)
            password = NSString.string_with(event.attr_password)
            credential = NSURLCredential.credential_with_user(user, password, OS::NSURLCredentialPersistenceForSession)
            OS.objc_msg_send(challenge_sender.attr_id, OS.attr_sel_use_credential_for_authentication_challenge_, credential.attr_id, challenge)
            return
          end
          i += 1
        end
      end
      # no listener handled the challenge, so try to invoke the native panel
      # long
      cls = OS.attr_class_web_panel_authentication_handler
      if (!(cls).equal?(0))
        # long
        method = OS.class_get_class_method(cls, OS.attr_sel_shared_handler)
        if (!(method).equal?(0))
          # long
          handler = OS.objc_msg_send(cls, OS.attr_sel_shared_handler)
          if (!(handler).equal?(0))
            OS.objc_msg_send(handler, OS.attr_sel_start_authentication, challenge, @web_view.window___org_eclipse_swt_browser_safari_2.attr_id)
            return
          end
        end
      end
      # the native panel was not available, so show a custom dialog
      user_return = Array.typed(String).new(1) { nil }
      password_return = Array.typed(String).new(1) { nil }
      proposed_credential_ = ns_challenge.proposed_credential
      if (!(proposed_credential_).nil?)
        user_return[0] = proposed_credential_.user.get_string
        if (proposed_credential_.has_password)
          password_return[0] = proposed_credential_.password.get_string
        end
      end
      space = ns_challenge.protection_space
      host_ = space.host.get_string + Character.new(?:.ord) + space.port
      realm_ = space.realm.get_string
      result = show_authentication_dialog(user_return, password_return, host_, realm_)
      if (!result)
        challenge_sender = ns_challenge.sender
        OS.objc_msg_send(challenge_sender.attr_id, OS.attr_sel_cancel_authentication_challenge_, challenge)
        return
      end
      challenge_sender = ns_challenge.sender
      user_ = NSString.string_with(user_return[0])
      password_ = NSString.string_with(password_return[0])
      credential = NSURLCredential.credential_with_user(user_, password_, OS::NSURLCredentialPersistenceForSession)
      OS.objc_msg_send(challenge_sender.attr_id, OS.attr_sel_use_credential_for_authentication_challenge_, credential.attr_id, challenge)
    end
    
    typesig { [Array.typed(String), Array.typed(String), String, String] }
    def show_authentication_dialog(user_, password_, host_, realm_)
      shell = Shell.new(self.attr_browser.get_shell)
      shell.set_layout(GridLayout.new)
      title = SWT.get_message("SWT_Authentication_Required") # $NON-NLS-1$
      shell.set_text(title)
      label = Label.new(shell, SWT::WRAP)
      label.set_text(Compatibility.get_message("SWT_Enter_Username_and_Password", Array.typed(String).new([realm_, host_]))) # $NON-NLS-1$
      data = GridData.new
      monitor = self.attr_browser.get_monitor
      max_width = monitor.get_bounds.attr_width * 2 / 3
      width = label.compute_size(SWT::DEFAULT, SWT::DEFAULT).attr_x
      data.attr_width_hint = Math.min(width, max_width)
      data.attr_horizontal_alignment = GridData::FILL
      data.attr_grab_excess_horizontal_space = true
      label.set_layout_data(data)
      user_label = Label.new(shell, SWT::NONE)
      user_label.set_text(SWT.get_message("SWT_Username")) # $NON-NLS-1$
      user_text = Text.new(shell, SWT::BORDER)
      if (!(user_[0]).nil?)
        user_text.set_text(user_[0])
      end
      data = GridData.new
      data.attr_horizontal_alignment = GridData::FILL
      data.attr_grab_excess_horizontal_space = true
      user_text.set_layout_data(data)
      password_label = Label.new(shell, SWT::NONE)
      password_label.set_text(SWT.get_message("SWT_Password")) # $NON-NLS-1$
      password_text = Text.new(shell, SWT::PASSWORD | SWT::BORDER)
      if (!(password_[0]).nil?)
        password_text.set_text(password_[0])
      end
      data = GridData.new
      data.attr_horizontal_alignment = GridData::FILL
      data.attr_grab_excess_horizontal_space = true
      password_text.set_layout_data(data)
      result = Array.typed(::Java::Boolean).new(1) { false }
      buttons = Array.typed(Button).new(2) { nil }
      listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members Safari
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          user_[0] = user_text.get_text
          password_[0] = password_text.get_text
          result[0] = (event.attr_widget).equal?(buttons[1])
          shell.close
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      composite = Composite.new(shell, SWT::NONE)
      data = GridData.new
      data.attr_horizontal_alignment = GridData::END_
      composite.set_layout_data(data)
      composite.set_layout(GridLayout.new(2, true))
      buttons[0] = Button.new(composite, SWT::PUSH)
      buttons[0].set_text(SWT.get_message("SWT_Cancel")) # $NON-NLS-1$
      buttons[0].set_layout_data(GridData.new(GridData::FILL_HORIZONTAL))
      buttons[0].add_listener(SWT::Selection, listener)
      buttons[1] = Button.new(composite, SWT::PUSH)
      buttons[1].set_text(SWT.get_message("SWT_OK")) # $NON-NLS-1$
      buttons[1].set_layout_data(GridData.new(GridData::FILL_HORIZONTAL))
      buttons[1].add_listener(SWT::Selection, listener)
      shell.set_default_button(buttons[1])
      shell.pack
      shell.open
      display = self.attr_browser.get_display
      while (!shell.is_disposed)
        if (!display.read_and_dispatch)
          display.sleep
        end
      end
      return result[0]
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def web_view_identifier_for_initial_request_from_data_source(sender_, request_, data_source_id)
      display = self.attr_browser.get_display
      progress = ProgressEvent.new(self.attr_browser)
      progress.attr_display = display
      progress.attr_widget = self.attr_browser
      progress.attr_current = @resource_count
      progress.attr_total = Math.max(@resource_count, MAX_PROGRESS)
      i = 0
      while i < self.attr_progress_listeners.attr_length
        listener = self.attr_progress_listeners[i]
        display.async_exec(# Note on WebKit.  Running the event loop from a Browser
        # delegate callback breaks the WebKit (stop loading or
        # crash).  The widget ProgressBar currently touches the
        # event loop every time the method setSelection is called.
        # The workaround is to invoke Display.asyncexec so that
        # the Browser does not crash when the user updates the
        # selection of the ProgressBar.
        Class.new(Runnable.class == Class ? Runnable : Object) do
          extend LocalClass
          include_class_members Safari
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            if (!display.is_disposed && !self.attr_browser.is_disposed)
              listener.changed(progress)
            end
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
        i += 1
      end
      identifier = NSNumber.number_with_int(((@resource_count += 1) - 1))
      if ((@identifier).equal?(0))
        data_source_ = WebDataSource.new(data_source_id)
        frame_ = data_source_.web_frame
        if ((frame_.attr_id).equal?(@web_view.main_frame.attr_id))
          @identifier = identifier.attr_id
        end
      end
      return identifier.attr_id
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def web_view_resource_will_send_request_redirect_response_from_data_source(sender_, identifier, request_, redirect_response, data_source_)
      ns_request = NSURLRequest.new(request_)
      url = ns_request._url
      if (url.is_file_url)
        new_request = NSMutableURLRequest.new(ns_request.mutable_copy)
        new_request.autorelease
        new_request.set_cache_policy(OS::NSURLRequestReloadIgnoringLocalCacheData)
        return new_request.attr_id
      end
      return request_
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # UIDelegate
    # long
    # long
    # long
    def web_view_create_web_view_with_request(sender_, request_)
      new_event = WindowEvent.new(self.attr_browser)
      new_event.attr_display = self.attr_browser.get_display
      new_event.attr_widget = self.attr_browser
      new_event.attr_required = true
      if (!(self.attr_open_window_listeners).nil?)
        i = 0
        while i < self.attr_open_window_listeners.attr_length
          self.attr_open_window_listeners[i].open(new_event)
          i += 1
        end
      end
      result = nil
      browser = nil
      if (!(new_event.attr_browser).nil? && new_event.attr_browser.attr_web_browser.is_a?(Safari))
        browser = new_event.attr_browser
      end
      if (!(browser).nil? && !browser.is_disposed)
        result = (browser.attr_web_browser).attr_web_view
        if (!(request_).equal?(0))
          main_frame_ = result.main_frame
          main_frame_.load_request(NSURLRequest.new(request_))
        end
      end
      return !(result).nil? ? result.attr_id : 0
    end
    
    typesig { [::Java::Int] }
    # long
    def web_view_show(sender_)
      # Feature on WebKit.  The Safari WebKit expects the application
      # to create a new Window using the Objective C Cocoa API in response
      # to UIDelegate.createWebViewWithRequest. The application is then
      # expected to use Objective C Cocoa API to make this window visible
      # when receiving the UIDelegate.webViewShow message.  For some reason,
      # a window created with the Carbon API hosting the new browser instance
      # does not redraw until it has been resized.  The fix is to increase the
      # size of the Shell and restore it to its initial size.
      parent = self.attr_browser.get_shell
      pt = parent.get_size
      parent.set_size(pt.attr_x + 1, pt.attr_y)
      parent.set_size(pt.attr_x, pt.attr_y)
      new_event = WindowEvent.new(self.attr_browser)
      new_event.attr_display = self.attr_browser.get_display
      new_event.attr_widget = self.attr_browser
      if (!(@location).nil?)
        new_event.attr_location = @location
      end
      if (!(@size).nil?)
        new_event.attr_size = @size
      end
      # Feature in Safari.  Safari's tool bar contains
      # the address bar.  The address bar is displayed
      # if the tool bar is displayed. There is no separate
      # notification for the address bar.
      # Feature in Safari.  The menu bar is always
      # displayed. There is no notification to hide
      # the menu bar.
      new_event.attr_address_bar = @tool_bar
      new_event.attr_menu_bar = true
      new_event.attr_status_bar = @status_bar
      new_event.attr_tool_bar = @tool_bar
      i = 0
      while i < self.attr_visibility_window_listeners.attr_length
        self.attr_visibility_window_listeners[i].show(new_event)
        i += 1
      end
      @location = nil
      @size = nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def web_view_set_frame(sender_, frame_)
      rect = NSRect.new
      OS.memmove___org_eclipse_swt_browser_safari_4(rect, frame_, NSRect.attr_sizeof)
      # convert to SWT system coordinates
      bounds = self.attr_browser.get_display.get_bounds
      @location = Point.new(RJava.cast_to_int(rect.attr_x), bounds.attr_height - RJava.cast_to_int(rect.attr_y) - RJava.cast_to_int(rect.attr_height))
      @size = Point.new(RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
    end
    
    typesig { [::Java::Int] }
    # long
    def web_view_focus(sender_)
    end
    
    typesig { [::Java::Int] }
    # long
    def web_view_unfocus(sender_)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def web_view_run_java_script_alert_panel_with_message(sender_, message_id)
      message = NSString.new(message_id)
      text = message.get_string
      message_box = MessageBox.new(self.attr_browser.get_shell, SWT::OK | SWT::ICON_WARNING)
      message_box.set_text("Javascript") # $NON-NLS-1$
      message_box.set_message(text)
      message_box.open
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def web_view_run_java_script_confirm_panel_with_message(sender_, message_id)
      message = NSString.new(message_id)
      text = message.get_string
      message_box = MessageBox.new(self.attr_browser.get_shell, SWT::OK | SWT::CANCEL | SWT::ICON_QUESTION)
      message_box.set_text("Javascript") # $NON-NLS-1$
      message_box.set_message(text)
      return (message_box.open).equal?(SWT::OK) ? 1 : 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def web_view_run_open_panel_for_file_button_with_result_listener(sender_, result_listener_id)
      dialog = FileDialog.new(self.attr_browser.get_shell, SWT::NONE)
      result = dialog.open
      result_listener = WebOpenPanelResultListener.new(result_listener_id)
      if ((result).nil?)
        result_listener.cancel
        return
      end
      result_listener.choose_filename(NSString.string_with(result))
    end
    
    typesig { [::Java::Int] }
    # long
    def web_view_close(sender_)
      parent = self.attr_browser.get_shell
      new_event = WindowEvent.new(self.attr_browser)
      new_event.attr_display = self.attr_browser.get_display
      new_event.attr_widget = self.attr_browser
      i = 0
      while i < self.attr_close_window_listeners.attr_length
        self.attr_close_window_listeners[i].close(new_event)
        i += 1
      end
      self.attr_browser.dispose
      if (parent.is_disposed)
        return
      end
      # Feature on WebKit.  The Safari WebKit expects the application
      # to create a new Window using the Objective C Cocoa API in response
      # to UIDelegate.createWebViewWithRequest. The application is then
      # expected to use Objective C Cocoa API to make this window visible
      # when receiving the UIDelegate.webViewShow message.  For some reason,
      # a window created with the Carbon API hosting the new browser instance
      # does not redraw until it has been resized.  The fix is to increase the
      # size of the Shell and restore it to its initial size.
      pt = parent.get_size
      parent.set_size(pt.attr_x + 1, pt.attr_y)
      parent.set_size(pt.attr_x, pt.attr_y)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def web_view_context_menu_items_for_element_default_menu_items(sender_, element, default_menu_items)
      pt = self.attr_browser.get_display.get_cursor_location
      event = Event.new
      event.attr_x = pt.attr_x
      event.attr_y = pt.attr_y
      self.attr_browser.notify_listeners(SWT::MenuDetect, event)
      menu = self.attr_browser.get_menu
      if (!event.attr_doit)
        return 0
      end
      if (!(menu).nil? && !menu.is_disposed)
        if (!(event.attr_x).equal?(pt.attr_x) || !(event.attr_y).equal?(pt.attr_y))
          menu.set_location(event.attr_x, event.attr_y)
        end
        menu.set_visible(true)
        return 0
      end
      return default_menu_items
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    # long
    def web_view_set_status_bar_visible(sender_, visible)
      # Note.  Webkit only emits the notification when the status bar should be hidden.
      @status_bar = visible
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def web_view_set_status_text(sender_, text_id)
      text = NSString.new(text_id)
      # 64
      length_ = RJava.cast_to_int(text.length)
      if ((length_).equal?(0))
        return
      end
      status_text = StatusTextEvent.new(self.attr_browser)
      status_text.attr_display = self.attr_browser.get_display
      status_text.attr_widget = self.attr_browser
      status_text.attr_text = text.get_string
      i = 0
      while i < self.attr_status_text_listeners.attr_length
        self.attr_status_text_listeners[i].changed(status_text)
        i += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    # long
    def web_view_set_resizable(sender_, visible)
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    # long
    def web_view_set_toolbars_visible(sender_, visible)
      # Note.  Webkit only emits the notification when the tool bar should be hidden.
      @tool_bar = visible
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def web_view_mouse_did_move_over_element_modifier_flags(sender_, element_information_id, modifier_flags)
      if ((element_information_id).equal?(0))
        return
      end
      key = NSString.string_with(WebElementLinkURLKey)
      element_information = NSDictionary.new(element_information_id)
      value = element_information.value_for_key(key)
      if ((value).nil?)
        # not currently over a link
        if ((@last_hovered_link_url).nil?)
          return
        end
        @last_hovered_link_url = RJava.cast_to_string(nil)
        status_text = StatusTextEvent.new(self.attr_browser)
        status_text.attr_display = self.attr_browser.get_display
        status_text.attr_widget = self.attr_browser
        status_text.attr_text = "" # $NON-NLS-1$
        i = 0
        while i < self.attr_status_text_listeners.attr_length
          self.attr_status_text_listeners[i].changed(status_text)
          i += 1
        end
        return
      end
      url = NSURL.new(value.attr_id).absolute_string
      # 64
      length_ = RJava.cast_to_int(url.length)
      url_string = nil
      if ((length_).equal?(0))
        url_string = "" # $NON-NLS-1$
      else
        url_string = RJava.cast_to_string(url.get_string)
      end
      if ((url_string == @last_hovered_link_url))
        return
      end
      @last_hovered_link_url = url_string
      status_text = StatusTextEvent.new(self.attr_browser)
      status_text.attr_display = self.attr_browser.get_display
      status_text.attr_widget = self.attr_browser
      status_text.attr_text = url_string
      i = 0
      while i < self.attr_status_text_listeners.attr_length
        self.attr_status_text_listeners[i].changed(status_text)
        i += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def web_view_print_frame_view(sender_, frame_view_id)
      view = WebFrameView.new(frame_view_id)
      view_print = view.document_view_should_handle_print
      if (view_print)
        view.print_document_view
        return
      end
      info = NSPrintInfo.shared_print_info
      operation = view.print_operation_with_print_info(info)
      if (!(operation).nil?)
        operation.run_operation
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # PolicyDelegate
    # long
    # long
    # long
    # long
    # long
    def web_view_decide_policy_for_mimetype_request_frame_decision_listener(sender_, type, request_, frame_, listener_id)
      can_show = WebView.can_show_mimetype(NSString.new(type))
      listener = WebPolicyDecisionListener.new(listener_id)
      if (can_show)
        listener.use___org_eclipse_swt_browser_safari_6
      else
        listener.download
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def web_view_decide_policy_for_navigation_action_request_frame_decision_listener(sender_, action_information, request_, frame_, listener_id)
      url = NSURLRequest.new(request_)._url
      listener = WebPolicyDecisionListener.new(listener_id)
      if ((url).nil?)
        # indicates that a URL with an invalid format was specified
        listener.ignore
        return
      end
      s = url.absolute_string
      url2 = s.get_string
      # If the URI indicates that the page is being rendered from memory
      # (via setText()) then set it to about:blank to be consistent with IE.
      if ((url2 == URI_FROMMEMORY))
        url2 = ABOUT_BLANK
      end
      new_event = LocationEvent.new(self.attr_browser)
      new_event.attr_display = self.attr_browser.get_display
      new_event.attr_widget = self.attr_browser
      new_event.attr_location = url2
      new_event.attr_doit = true
      if (!(self.attr_location_listeners).nil?)
        @changing_location = true
        i = 0
        while i < self.attr_location_listeners.attr_length
          self.attr_location_listeners[i].changing(new_event)
          i += 1
        end
        @changing_location = false
      end
      if (new_event.attr_doit)
        if (self.attr_js_enabled_changed)
          self.attr_js_enabled_changed = false
          if ((@preferences).nil?)
            @preferences = WebPreferences.new.alloc.init
            @web_view.set_preferences(@preferences)
          end
          @preferences.set_java_script_enabled(self.attr_js_enabled)
        end
        listener.use___org_eclipse_swt_browser_safari_8
        @last_navigate_url = url2
      else
        listener.ignore
      end
      if (!(@html).nil? && !self.attr_browser.is_disposed)
        html = @html
        @html = nil
        __set_text(html)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def web_view_decide_policy_for_new_window_action_request_new_frame_name_decision_listener(sender_, action_information, request_, frame_name, listener_id)
      listener = WebPolicyDecisionListener.new(listener_id)
      listener.use___org_eclipse_swt_browser_safari_10
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def web_view_unable_to_implement_policy_with_error_frame(sender_, error_, frame_)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # WebDownload
    # long
    # long
    def download_decide_destination_with_suggested_filename(download_id, filename)
      string = NSString.new(filename)
      name = string.get_string
      dialog = FileDialog.new(self.attr_browser.get_shell, SWT::SAVE)
      dialog.set_text(SWT.get_message("SWT_FileDownload")) # $NON-NLS-1$
      dialog.set_file_name(name)
      path = dialog.open
      download_ = NSURLDownload.new(download_id)
      if ((path).nil?)
        # cancel pressed
        download_.cancel
        return
      end
      download_.set_destination(NSString.string_with(path), true)
    end
    
    typesig { [::Java::Int] }
    # DOMEventListener
    # long
    def handle_event(evt_id)
      string = NSString.new(OS.objc_msg_send(evt_id, OS.attr_sel_type))
      type = string.get_string
      if ((DOMEVENT_KEYDOWN == type) || (DOMEVENT_KEYUP == type))
        event = DOMKeyboardEvent.new(evt_id)
        ctrl = event.ctrl_key
        shift = event.shift_key
        alt = event.alt_key
        meta = event.meta_key
        key_code_ = event.key_code
        char_code_ = event.char_code
        key_event = Event.new
        key_event.attr_widget = self.attr_browser
        event_type = (DOMEVENT_KEYDOWN == type) ? SWT::KeyDown : SWT::KeyUp
        key_event.attr_type = event_type
        translated_key = translate_key(key_code_)
        key_event.attr_key_code = translated_key
        key_event.attr_character = RJava.cast_to_char(char_code_)
        state_mask = (alt ? SWT::ALT : 0) | (ctrl ? SWT::CTRL : 0) | (shift ? SWT::SHIFT : 0) | (meta ? SWT::COMMAND : 0)
        key_event.attr_state_mask = state_mask
        self.attr_browser.notify_listeners(key_event.attr_type, key_event)
        if (!key_event.attr_doit)
          event.prevent_default
        else
          if ((event_type).equal?(SWT::KeyDown) && (state_mask).equal?(SWT::COMMAND))
            if ((translated_key).equal?(Character.new(?v.ord)))
              @web_view.paste(@web_view)
            else
              if ((translated_key).equal?(Character.new(?c.ord)))
                @web_view.copy(@web_view)
              else
                if ((translated_key).equal?(Character.new(?x.ord)))
                  @web_view.cut(@web_view)
                end
              end
            end
          end
        end
        return
      end
      if ((DOMEVENT_MOUSEWHEEL == type))
        event = DOMWheelEvent.new(evt_id)
        client_x_ = event.client_x
        client_y_ = event.client_y
        delta = event.wheel_delta
        ctrl = event.ctrl_key
        shift = event.shift_key
        alt = event.alt_key
        meta = event.meta_key
        mouse_event = Event.new
        mouse_event.attr_type = SWT::MouseWheel
        mouse_event.attr_widget = self.attr_browser
        mouse_event.attr_x = client_x_
        mouse_event.attr_y = client_y_
        mouse_event.attr_count = delta / 120
        mouse_event.attr_state_mask = (alt ? SWT::ALT : 0) | (ctrl ? SWT::CTRL : 0) | (shift ? SWT::SHIFT : 0) | (meta ? SWT::COMMAND : 0)
        self.attr_browser.notify_listeners(mouse_event.attr_type, mouse_event)
        return
      end
      # mouse event
      event = DOMMouseEvent.new(evt_id)
      client_x_ = event.client_x
      client_y_ = event.client_y
      detail_ = event.detail
      button_ = event.button
      ctrl = event.ctrl_key
      shift = event.shift_key
      alt = event.alt_key
      meta = event.meta_key
      mouse_event = Event.new
      mouse_event.attr_widget = self.attr_browser
      mouse_event.attr_x = client_x_
      mouse_event.attr_y = client_y_
      mouse_event.attr_state_mask = (alt ? SWT::ALT : 0) | (ctrl ? SWT::CTRL : 0) | (shift ? SWT::SHIFT : 0) | (meta ? SWT::COMMAND : 0)
      if ((DOMEVENT_MOUSEDOWN == type))
        mouse_event.attr_type = SWT::MouseDown
        mouse_event.attr_button = button_ + 1
        mouse_event.attr_count = detail_
      else
        if ((DOMEVENT_MOUSEUP == type))
          mouse_event.attr_type = SWT::MouseUp
          mouse_event.attr_button = button_ + 1
          mouse_event.attr_count = detail_
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
        else
          if ((DOMEVENT_MOUSEMOVE == type))
            # Bug in Safari.  Spurious and redundant mousemove events are received in
            # various contexts, including following every MouseUp.  The workaround is
            # to not fire MouseMove events whose x and y values match the last MouseMove
            if ((mouse_event.attr_x).equal?(@last_mouse_move_x) && (mouse_event.attr_y).equal?(@last_mouse_move_y))
              return
            end
            mouse_event.attr_type = SWT::MouseMove
            @last_mouse_move_x = mouse_event.attr_x
            @last_mouse_move_y = mouse_event.attr_y
          end
        end
      end
      self.attr_browser.notify_listeners(mouse_event.attr_type, mouse_event)
      if ((detail_).equal?(2) && (DOMEVENT_MOUSEDOWN == type))
        mouse_event = Event.new
        mouse_event.attr_widget = self.attr_browser
        mouse_event.attr_x = client_x_
        mouse_event.attr_y = client_y_
        mouse_event.attr_state_mask = (alt ? SWT::ALT : 0) | (ctrl ? SWT::CTRL : 0) | (shift ? SWT::SHIFT : 0) | (meta ? SWT::COMMAND : 0)
        mouse_event.attr_type = SWT::MouseDoubleClick
        mouse_event.attr_button = button_ + 1
        mouse_event.attr_count = detail_
        self.attr_browser.notify_listeners(mouse_event.attr_type, mouse_event)
      end
    end
    
    typesig { [::Java::Int] }
    # external
    # long
    def convert_to_java(value)
      object = NSObject.new(value)
      # long
      clazz = OS.objc_look_up_class("NSString") # $NON-NLS-1$
      if (object.is_kind_of_class(clazz))
        string = NSString.new(value)
        return string.get_string
      end
      clazz = OS.objc_look_up_class("NSNumber") # $NON-NLS-1$
      if (object.is_kind_of_class(clazz))
        number = NSNumber.new(value)
        # long
        ptr = number.obj_ctype
        type = Array.typed(::Java::Byte).new(1) { 0 }
        OS.memmove___org_eclipse_swt_browser_safari_12(type, ptr, 1)
        if ((type[0]).equal?(Character.new(?c.ord)) || (type[0]).equal?(Character.new(?B.ord)))
          return Boolean.new(number.bool_value)
        end
        if (!("islqISLQfd".index_of(type[0])).equal?(-1))
          # $NON-NLS-1$
          return Double.new(number.double_value)
        end
      end
      clazz = OS.objc_look_up_class("WebScriptObject") # $NON-NLS-1$
      if (object.is_kind_of_class(clazz))
        script = WebScriptObject.new(value)
        id = script.value_for_key(NSString.string_with("length")) # $NON-NLS-1$
        if ((id).nil?)
          # not a JS array
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        length_ = NSNumber.new(id).int_value
        arguments = Array.typed(Object).new(length_) { nil }
        i = 0
        while i < length_
          current = script.web_script_value_at_index(i)
          if (!(current).nil?)
            arguments[i] = convert_to_java(current.attr_id)
          end
          i += 1
        end
        return arguments
      end
      clazz = OS.objc_look_up_class("WebUndefined") # $NON-NLS-1$
      if (object.is_kind_of_class(clazz))
        return nil
      end
      SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      return nil
    end
    
    typesig { [Object] }
    def convert_to_js(value)
      if ((value).nil?)
        return WebUndefined.undefined
      end
      if (value.is_a?(String))
        return NSString.string_with(value)
      end
      if (value.is_a?(Boolean))
        return NSNumber.number_with_bool((value).boolean_value)
      end
      if (value.is_a?(Numeric))
        return NSNumber.number_with_double((value).double_value)
      end
      if (value.is_a?(Array.typed(Object)))
        array_value = value
        length_ = array_value.attr_length
        if (length_ > 0)
          array = NSMutableArray.array_with_capacity(length_)
          i = 0
          while i < length_
            current_object = array_value[i]
            array.add_object(convert_to_js(current_object))
            i += 1
          end
          return array
        end
      end
      SWT.error(SWT::ERROR_INVALID_RETURN_VALUE)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def call_java(index, args, arg1)
      return_value = nil
      object = NSObject.new(index)
      # long
      clazz = OS.objc_look_up_class("NSNumber") # $NON-NLS-1$
      if (object.is_kind_of_class(clazz))
        number = NSNumber.new(index)
        key = number.int_value
        function = self.attr_functions.get(key)
        if (!(function).nil?)
          begin
            temp = convert_to_java(args)
            if (temp.is_a?(Array.typed(Object)))
              arguments = temp
              begin
                return_value = function.function(arguments)
              rescue JavaException => e
                # exception during function invocation
                return_value = WebBrowser._create_error_string(e.get_localized_message)
              end
            end
          rescue IllegalArgumentException => e
            # invalid argument value type
            if (function.attr_is_evaluate)
              # notify the evaluate function so that a java exception can be thrown
              function.function(Array.typed(String).new([WebBrowser._create_error_string(SWTException.new(SWT::ERROR_INVALID_RETURN_VALUE).get_localized_message)]))
            end
            return_value = WebBrowser._create_error_string(e.get_localized_message)
          end
        end
      end
      begin
        return convert_to_js(return_value)
      rescue SWTException => e
        # invalid return value type
        return convert_to_js(WebBrowser._create_error_string(e.get_localized_message))
      end
    end
    
    typesig { [] }
    def initialize
      @web_view = nil
      @preferences = nil
      @delegate = nil
      @changing_location = false
      @last_hovered_link_url = nil
      @last_navigate_url = nil
      @html = nil
      @identifier = 0
      @resource_count = 0
      @url = nil
      @location = nil
      @size = nil
      @status_bar = false
      @tool_bar = false
      @ignore_dispose = false
      @last_mouse_move_x = 0
      @last_mouse_move_y = 0
      super()
      @url = ""
      @status_bar = true
      @tool_bar = true
    end
    
    private
    alias_method :initialize__safari, :initialize
  end
  
end
