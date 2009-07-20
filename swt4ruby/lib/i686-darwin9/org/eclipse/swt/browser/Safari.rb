require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module SafariImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Org::Eclipse::Swt
      include_const ::Org::Eclipse::Swt::Graphics, :Point
      include_const ::Org::Eclipse::Swt::Graphics, :Rectangle
      include_const ::Org::Eclipse::Swt::Internal, :Callback
      include ::Org::Eclipse::Swt::Internal::Carbon
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  class Safari < SafariImports.const_get :WebBrowser
    include_class_members SafariImports
    
    # Objective-C WebView delegate
    attr_accessor :delegate
    alias_method :attr_delegate, :delegate
    undef_method :delegate
    alias_method :attr_delegate=, :delegate=
    undef_method :delegate=
    
    # Carbon HIView handle
    attr_accessor :web_view_handle
    alias_method :attr_web_view_handle, :web_view_handle
    undef_method :web_view_handle
    alias_method :attr_web_view_handle=, :web_view_handle=
    undef_method :web_view_handle=
    
    attr_accessor :web_view
    alias_method :attr_web_view, :web_view
    undef_method :web_view
    alias_method :attr_web_view=, :web_view=
    undef_method :web_view=
    
    attr_accessor :window_bounds_handler
    alias_method :attr_window_bounds_handler, :window_bounds_handler
    undef_method :window_bounds_handler
    alias_method :attr_window_bounds_handler=, :window_bounds_handler=
    undef_method :window_bounds_handler=
    
    attr_accessor :changing_location
    alias_method :attr_changing_location, :changing_location
    undef_method :changing_location
    alias_method :attr_changing_location=, :changing_location=
    undef_method :changing_location=
    
    attr_accessor :has_new_focus_element
    alias_method :attr_has_new_focus_element, :has_new_focus_element
    undef_method :has_new_focus_element
    alias_method :attr_has_new_focus_element=, :has_new_focus_element=
    undef_method :has_new_focus_element=
    
    attr_accessor :last_hovered_link_url
    alias_method :attr_last_hovered_link_url, :last_hovered_link_url
    undef_method :last_hovered_link_url
    alias_method :attr_last_hovered_link_url=, :last_hovered_link_url=
    undef_method :last_hovered_link_url=
    
    attr_accessor :html
    alias_method :attr_html, :html
    undef_method :html
    alias_method :attr_html=, :html=
    undef_method :html=
    
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
    
    class_module.module_eval {
      # TEMPORARY CODE
      # boolean doit;
      
      def initialized
        defined?(@@initialized) ? @@initialized : @@initialized= false
      end
      alias_method :attr_initialized, :initialized
      
      def initialized=(value)
        @@initialized = value
      end
      alias_method :attr_initialized=, :initialized=
      
      
      def callback3
        defined?(@@callback3) ? @@callback3 : @@callback3= nil
      end
      alias_method :attr_callback3, :callback3
      
      def callback3=(value)
        @@callback3 = value
      end
      alias_method :attr_callback3=, :callback3=
      
      
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
      const_set_lazy(:AGENT_STRING) { "Safari/412.0" }
      const_attr_reader  :AGENT_STRING
      
      # Safari version on OSX 10.4 initial release
      # $NON-NLS-1$
      const_set_lazy(:URI_FROMMEMORY) { "file:///" }
      const_attr_reader  :URI_FROMMEMORY
      
      # $NON-NLS-1$
      const_set_lazy(:PROTOCOL_FILE) { "file:" }
      const_attr_reader  :PROTOCOL_FILE
      
      # $NON-NLS-1$
      const_set_lazy(:PROTOCOL_HTTP) { "http:" }
      const_attr_reader  :PROTOCOL_HTTP
      
      # $NON-NLS-1$
      const_set_lazy(:URI_APPLEWEBDATA) { "applewebdata://" }
      const_attr_reader  :URI_APPLEWEBDATA
      
      # $NON-NLS-1$
      const_set_lazy(:ABOUT_BLANK) { "about:blank" }
      const_attr_reader  :ABOUT_BLANK
      
      # $NON-NLS-1$
      const_set_lazy(:ADD_WIDGET_KEY) { "org.eclipse.swt.internal.addWidget" }
      const_attr_reader  :ADD_WIDGET_KEY
      
      # $NON-NLS-1$
      const_set_lazy(:BROWSER_WINDOW) { "org.eclipse.swt.browser.Browser.Window" }
      const_attr_reader  :BROWSER_WINDOW
      
      # $NON-NLS-1$
      const_set_lazy(:SAFARI_EVENTS_FIX_KEY) { "org.eclipse.swt.internal.safariEventsFix" }
      const_attr_reader  :SAFARI_EVENTS_FIX_KEY
      
      # $NON-NLS-1$
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
      const_set_lazy(:DOMEVENT_FOCUSIN) { "DOMFocusIn" }
      const_attr_reader  :DOMEVENT_FOCUSIN
      
      # $NON-NLS-1$
      const_set_lazy(:DOMEVENT_FOCUSOUT) { "DOMFocusOut" }
      const_attr_reader  :DOMEVENT_FOCUSOUT
      
      # $NON-NLS-1$
      when_class_loaded do
        NativeClearSessions = Class.new(Runnable.class == Class ? Runnable : Object) do
          extend LocalClass
          include_class_members Safari
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            storage = Cocoa.objc_msg_send(Cocoa::C_NSHTTPCookieStorage, Cocoa::S_sharedHTTPCookieStorage)
            cookies = Cocoa.objc_msg_send(storage, Cocoa::S_cookies)
            count = Cocoa.objc_msg_send(cookies, Cocoa::S_count)
            i = 0
            while i < count
              cookie = Cocoa.objc_msg_send(cookies, Cocoa::S_objectAtIndex, i)
              is_session = !(Cocoa.objc_msg_send(cookie, Cocoa::S_isSessionOnly)).equal?(0)
              if (is_session)
                Cocoa.objc_msg_send(storage, Cocoa::S_deleteCookie, cookie)
              end
              i += 1
            end
          end
          
          typesig { [] }
          define_method :initialize do
            super()
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
      end
    }
    
    typesig { [Composite, ::Java::Int] }
    def create(parent, style)
      # Note.  Loading the webkit bundle on Jaguar causes a crash.
      # The workaround is to detect any OS prior to 10.30 and fail
      # without crashing.
      if (OS::VERSION < 0x1030)
        self.attr_browser.dispose
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      # Bug in Safari on OSX 10.5 (Leopard) only.  VoiceOver no longer follows focus when
      # HIWebViewCreate is used to create a WebView.  The VoiceOver cursor (activated by
      # Control+Alt+arrows) continues to work, but keyboard focus is not tracked.  The fix
      # is to create the WebView with HICocoaViewCreate (api introduced in OSX 10.5) when
      # running on OSX 10.5.
      out_control = Array.typed(::Java::Int).new(1) { 0 }
      if (OS::VERSION >= 0x1050)
        @web_view = Cocoa.objc_msg_send(Cocoa.objc_msg_send(Cocoa::C_WebView, Cocoa::S_alloc), Cocoa::S_initWithFrame_frameName_groupName, NSRect.new, 0, 0)
        if (!(@web_view).equal?(0))
          Cocoa._hicocoa_view_create(@web_view, 0, out_control)
          @web_view_handle = out_control[0]
          Cocoa.objc_msg_send(@web_view, Cocoa::S_release)
        end
      else
        Cocoa._hiweb_view_create(out_control)
        @web_view_handle = out_control[0]
        if (!(@web_view_handle).equal?(0))
          @web_view = Cocoa._hiweb_view_get_web_view(@web_view_handle)
        end
      end
      if ((@web_view_handle).equal?(0))
        self.attr_browser.dispose
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      display = self.attr_browser.get_display
      display.set_data(ADD_WIDGET_KEY, Array.typed(Object).new([@web_view_handle, self.attr_browser]))
      # WebKit's DOM listener api became functional in OSX 10.4.  If OSX 10.4 or
      # later is detected then override the default event mechanism to not send key
      # events and some mouse events so that the browser can send them by listening
      # to the DOM instead.
      if (!(OS::VERSION < 0x1040))
        self.attr_browser.set_data(SAFARI_EVENTS_FIX_KEY)
      end
      # Bug in Safari.  For some reason, every application must contain
      # a visible window that has never had a WebView or mouse move events
      # are not delivered.  This seems to happen after a browser has been
      # either hidden or disposed in any window.  The fix is to create a
      # single transparent overlay window that is disposed when the display
      # is disposed.
      if ((display.get_data(BROWSER_WINDOW)).nil?)
        bounds = Rect.new
        OS._set_rect(bounds, RJava.cast_to_short(0), RJava.cast_to_short(0), RJava.cast_to_short(1), RJava.cast_to_short(1))
        out_window = Array.typed(::Java::Int).new(1) { 0 }
        OS._create_new_window(OS.attr_k_overlay_window_class, 0, bounds, out_window)
        OS._show_window(out_window[0])
        OS._hiobject_set_accessibility_ignored(out_window[0], true)
        display.dispose_exec(Class.new(Runnable.class == Class ? Runnable : Object) do
          extend LocalClass
          include_class_members Safari
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            if (!(out_window[0]).equal?(0))
              OS._dispose_window(out_window[0])
            end
            out_window[0] = 0
          end
          
          typesig { [] }
          define_method :initialize do
            super()
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
        display.set_data(BROWSER_WINDOW, out_window)
      end
      # Bug in Safari. The WebView does not draw properly if it is embedded as
      # sub view of the browser handle.  The fix is to add the web view to the
      # window root control and resize it on top of the browser handle.
      # 
      # Note that when the browser is reparented, the web view has to
      # be reparented by hand by hooking kEventControlOwningWindowChanged.
      window = OS._get_control_owner(self.attr_browser.attr_handle)
      content_view = Array.typed(::Java::Int).new(1) { 0 }
      OS._hiview_find_by_id(OS._hiview_get_root(window), OS.k_hiview_window_content_id, content_view)
      OS._hiview_add_subview(content_view[0], @web_view_handle)
      OS._hiview_change_features(@web_view_handle, OS.attr_k_hiview_feature_is_opaque, 0)
      # Bug in Safari. The WebView does not receive mouse and key events when it is added
      # to a visible top window.  It is assumed that Safari hooks its own event listener
      # when the top window emits the kEventWindowShown event. The workaround is to send a
      # fake kEventWindowShown event to the top window after the WebView has been added
      # to the HIView (after the top window is visible) to give Safari a chance to hook
      # events.
      OS._hiview_set_visible(@web_view_handle, true)
      if (self.attr_browser.get_shell.is_visible)
        show_event = Array.typed(::Java::Int).new(1) { 0 }
        OS._create_event(0, OS.attr_k_event_class_window, OS.attr_k_event_window_shown, 0.0, OS.attr_k_event_attribute_user_event, show_event)
        OS._set_event_parameter(show_event[0], OS.attr_k_event_param_direct_object, OS.attr_type_window_ref, 4, Array.typed(::Java::Int).new([OS._get_control_owner(self.attr_browser.attr_handle)]))
        OS._send_event_to_event_target(show_event[0], OS._get_window_event_target(window))
        if (!(show_event[0]).equal?(0))
          OS._release_event(show_event[0])
        end
      end
      # This code is intentionally commented. Setting a group name is the right thing
      # to do in order to avoid multiple open window requests. For some reason, Safari
      # crashes when requested to reopen the same window if that window was previously
      # closed. This may be because that window was not correctly closed.
      # 
      # String groupName = "MyDocument"; //$NON-NLS-1$
      # int length = groupName.length();
      # char[] buffer = new char[length];
      # groupName.getChars(0, length, buffer, 0);
      # int groupNameString = OS.CFStringCreateWithCharacters(0, buffer, length);
      # // [webView setGroupName:@"MyDocument"];
      # WebKit.objc_msgSend(webView, WebKit.S_setGroupName, groupNameString);
      # OS.CFRelease(groupNameString);
      notification_center = Cocoa.objc_msg_send(Cocoa::C_NSNotificationCenter, Cocoa::S_defaultCenter)
      listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members Safari
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |e|
          catch(:break_case) do
            case (e.attr_type)
            when SWT::Dispose
              # make this handler run after other dispose listeners
              if (self.attr_ignore_dispose)
                self.attr_ignore_dispose = false
                throw :break_case, :thrown
              end
              self.attr_ignore_dispose = true
              self.attr_browser.notify_listeners(e.attr_type, e)
              e.attr_type = SWT::NONE
              OS._remove_event_handler(self.attr_window_bounds_handler)
              self.attr_window_bounds_handler = 0
              e.attr_display.set_data(ADD_WIDGET_KEY, Array.typed(Object).new([self.attr_web_view_handle, nil]))
              Cocoa.objc_msg_send(self.attr_web_view, Cocoa::S_setFrameLoadDelegate, 0)
              Cocoa.objc_msg_send(self.attr_web_view, Cocoa::S_setResourceLoadDelegate, 0)
              Cocoa.objc_msg_send(self.attr_web_view, Cocoa::S_setUIDelegate, 0)
              Cocoa.objc_msg_send(self.attr_web_view, Cocoa::S_setPolicyDelegate, 0)
              Cocoa.objc_msg_send(self.attr_web_view, Cocoa::S_setDownloadDelegate, 0)
              Cocoa.objc_msg_send(notification_center, Cocoa::S_removeObserver, self.attr_delegate)
              Cocoa.objc_msg_send(self.attr_delegate, Cocoa::S_release)
              OS._dispose_control(self.attr_web_view_handle)
              self.attr_web_view = self.attr_web_view_handle = 0
              self.attr_html = nil
              self.attr_last_hovered_link_url = nil
            when SWT::FocusIn
              self.attr_has_new_focus_element = true
              OS._set_keyboard_focus(OS._get_control_owner(self.attr_browser.attr_handle), self.attr_web_view_handle, RJava.cast_to_short(-1))
            end
          end
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      self.attr_browser.add_listener(SWT::Dispose, listener)
      self.attr_browser.add_listener(SWT::FocusIn, listener)
      self.attr_browser.add_listener(SWT::KeyDown, listener)
      # needed to make browser traversable
      if ((self.attr_callback3).nil?)
        self.attr_callback3 = Callback.new(self.get_class, "eventProc3", 3)
      end # $NON-NLS-1$
      callback3address = self.attr_callback3.get_address
      if ((callback3address).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      mask = Array.typed(::Java::Int).new([OS.attr_k_event_class_keyboard, OS.attr_k_event_raw_key_down, OS.attr_k_event_class_control, OS.attr_k_event_control_draw, OS.attr_k_event_class_control, OS.attr_k_event_control_get_click_activation, OS.attr_k_event_class_control, OS.attr_k_event_control_set_cursor, OS.attr_k_event_class_text_input, OS.attr_k_event_text_input_unicode_for_key_event, ])
      OS._install_event_handler(OS._get_control_event_target(@web_view_handle), callback3address, mask.attr_length / 2, mask, @web_view_handle, nil)
      mask1 = Array.typed(::Java::Int).new([OS.attr_k_event_class_control, OS.attr_k_event_control_bounds_changed, OS.attr_k_event_class_control, OS.attr_k_event_control_visibility_changed, OS.attr_k_event_class_control, OS.attr_k_event_control_owning_window_changed, ])
      OS._install_event_handler(OS._get_control_event_target(self.attr_browser.attr_handle), callback3address, mask1.attr_length / 2, mask1, self.attr_browser.attr_handle, nil)
      mask2 = Array.typed(::Java::Int).new([OS.attr_k_event_class_window, OS.attr_k_event_window_bounds_changed, ])
      out_ref = Array.typed(::Java::Int).new(1) { 0 }
      OS._install_event_handler(OS._get_window_event_target(window), callback3address, mask2.attr_length / 2, mask2, self.attr_browser.attr_handle, out_ref)
      @window_bounds_handler = out_ref[0]
      if ((self.attr_callback7).nil?)
        self.attr_callback7 = Callback.new(self.get_class, "eventProc7", 7)
      end # $NON-NLS-1$
      callback7address = self.attr_callback7.get_address
      if ((callback7address).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      # delegate = [[WebResourceLoadDelegate alloc] init eventProc];
      @delegate = Cocoa.objc_msg_send(Cocoa::C_WebKitDelegate, Cocoa::S_alloc)
      @delegate = Cocoa.objc_msg_send(@delegate, Cocoa::S_initWithProc, callback7address, @web_view_handle)
      # [webView setFrameLoadDelegate:delegate];
      Cocoa.objc_msg_send(@web_view, Cocoa::S_setFrameLoadDelegate, @delegate)
      # [webView setResourceLoadDelegate:delegate];
      Cocoa.objc_msg_send(@web_view, Cocoa::S_setResourceLoadDelegate, @delegate)
      # [webView setUIDelegate:delegate];
      Cocoa.objc_msg_send(@web_view, Cocoa::S_setUIDelegate, @delegate)
      # register delegate for all notifications sent out from webview
      Cocoa.objc_msg_send(notification_center, Cocoa::S_addObserver_selector_name_object, @delegate, Cocoa::S_handleNotification, 0, @web_view)
      # [webView setPolicyDelegate:delegate];
      Cocoa.objc_msg_send(@web_view, Cocoa::S_setPolicyDelegate, @delegate)
      # [webView setDownloadDelegate:delegate];
      Cocoa.objc_msg_send(@web_view, Cocoa::S_setDownloadDelegate, @delegate)
      # [webView setApplicationNameForUserAgent:applicationName];
      length_ = AGENT_STRING.length
      chars = CharArray.new(length_)
      AGENT_STRING.get_chars(0, length_, chars, 0)
      s_handle = OS._cfstring_create_with_characters(0, chars, length_)
      Cocoa.objc_msg_send(@web_view, Cocoa::S_setApplicationNameForUserAgent, s_handle)
      OS._cfrelease(s_handle)
      if (OS::VERSION < 0x1050 && (display.get_active_shell).equal?(self.attr_browser.get_shell))
        Cocoa.objc_msg_send(Cocoa.objc_msg_send(@web_view, Cocoa::S_window), Cocoa::S_makeKeyWindow)
      end
      if (!self.attr_initialized)
        self.attr_initialized = true
        # disable applets
        preferences = Cocoa.objc_msg_send(Cocoa::C_WebPreferences, Cocoa::S_standardPreferences)
        Cocoa.objc_msg_send(preferences, Cocoa::S_setJavaEnabled, 0)
      end
    end
    
    class_module.module_eval {
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def event_proc3(next_handler, the_event, user_data)
        widget = Display.get_current.find_widget(user_data)
        if (widget.is_a?(Browser))
          return ((widget).attr_web_browser).handle_callback(next_handler, the_event)
        end
        return OS.attr_event_not_handled_err
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def event_proc7(webview, user_data, selector, arg0, arg1, arg2, arg3)
        widget = Display.get_current.find_widget(user_data)
        if (widget.is_a?(Browser))
          return ((widget).attr_web_browser).handle_callback(selector, arg0, arg1, arg2, arg3)
        end
        return 0
      end
    }
    
    typesig { [] }
    def back
      @html = (nil).to_s
      return !(Cocoa.objc_msg_send(@web_view, Cocoa::S_goBack)).equal?(0)
    end
    
    typesig { [String] }
    def execute(script)
      length_ = script.length
      buffer = CharArray.new(length_)
      script.get_chars(0, length_, buffer, 0)
      string = OS._cfstring_create_with_characters(0, buffer, length_)
      value = Cocoa.objc_msg_send(@web_view, Cocoa::S_stringByEvaluatingJavaScriptFromString, string)
      OS._cfrelease(string)
      return !(value).equal?(0)
    end
    
    typesig { [] }
    def forward
      @html = (nil).to_s
      return !(Cocoa.objc_msg_send(@web_view, Cocoa::S_goForward)).equal?(0)
    end
    
    typesig { [] }
    def get_text
      main_frame = Cocoa.objc_msg_send(@web_view, Cocoa::S_mainFrame)
      data_source = Cocoa.objc_msg_send(main_frame, Cocoa::S_dataSource)
      if ((data_source).equal?(0))
        return ""
      end # $NON-NLS-1$
      representation = Cocoa.objc_msg_send(data_source, Cocoa::S_representation)
      if ((representation).equal?(0))
        return ""
      end # $NON-NLS-1$
      source = Cocoa.objc_msg_send(representation, Cocoa::S_documentSource)
      if ((source).equal?(0))
        return ""
      end # $NON-NLS-1$
      length_ = OS._cfstring_get_length(source)
      buffer = CharArray.new(length_)
      range = CFRange.new
      range.attr_length = length_
      OS._cfstring_get_characters(source, range, buffer)
      return String.new(buffer)
    end
    
    typesig { [] }
    def get_url
      return @url
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def handle_callback(next_handler, the_event)
      event_kind = OS._get_event_kind(the_event)
      case (OS._get_event_class(the_event))
      when OS.attr_k_event_class_control
        case (event_kind)
        when OS.attr_k_event_control_get_click_activation
          OS._set_event_parameter(the_event, OS.attr_k_event_param_click_activation, OS.attr_type_click_activation_result, 4, Array.typed(::Java::Int).new([OS.attr_k_activate_and_handle_click]))
          return OS.attr_no_err
        when OS.attr_k_event_control_set_cursor
          return OS.attr_no_err
        when OS.attr_k_event_control_draw
          # Bug on Safari. The web view cannot be obscured by other views above it.
          # This problem is specified in the apple documentation for HiWebViewCreate.
          # The workaround is to don't draw the web view when it is not visible.
          if (!self.attr_browser.is_visible)
            return OS.attr_no_err
          end
        when OS.attr_k_event_control_owning_window_changed
          # Reparent the web view handler
          window = OS._get_control_owner(self.attr_browser.attr_handle)
          content_view = Array.typed(::Java::Int).new(1) { 0 }
          OS._hiview_find_by_id(OS._hiview_get_root(window), OS.k_hiview_window_content_id, content_view)
          OS._hiview_add_subview(content_view[0], @web_view_handle)
          # Reset the kEventWindowBoundsChanged handler
          OS._remove_event_handler(@window_bounds_handler)
          mask2 = Array.typed(::Java::Int).new([OS.attr_k_event_class_window, OS.attr_k_event_window_bounds_changed, ])
          out_ref = Array.typed(::Java::Int).new(1) { 0 }
          OS._install_event_handler(OS._get_window_event_target(window), self.attr_callback3.get_address, mask2.attr_length / 2, mask2, self.attr_browser.attr_handle, out_ref)
          @window_bounds_handler = out_ref[0]
        when OS.attr_k_event_control_bounds_changed, OS.attr_k_event_control_visibility_changed
          # Bug on Safari. The web view cannot be obscured by other views above it.
          # This problem is specified in the apple documentation for HiWebViewCreate.
          # The workaround is to hook kEventControlVisibilityChanged on the browser
          # and move the browser out of the screen when hidden and restore its bounds
          # when shown.
          bounds = CGRect.new
          if (!self.attr_browser.is_visible)
            bounds.attr_x = bounds.attr_y = -MIN_SIZE
            bounds.attr_width = bounds.attr_height = MIN_SIZE
            OS._hiview_set_frame(@web_view_handle, bounds)
          else
            OS._hiview_get_bounds(self.attr_browser.attr_handle, bounds)
            content_view = Array.typed(::Java::Int).new(1) { 0 }
            OS._hiview_find_by_id(OS._hiview_get_root(OS._get_control_owner(self.attr_browser.attr_handle)), OS.k_hiview_window_content_id, content_view)
            OS._hiview_convert_rect(bounds, self.attr_browser.attr_handle, content_view[0])
            # Bug in Safari.  For some reason, the web view will display incorrectly or
            # blank depending on its contents, if its size is set to a value smaller than
            # MIN_SIZE. It will not display properly even after the size is made larger.
            # The fix is to avoid setting sizes smaller than MIN_SIZE.
            if (bounds.attr_width <= MIN_SIZE)
              bounds.attr_width = MIN_SIZE
            end
            if (bounds.attr_height <= MIN_SIZE)
              bounds.attr_height = MIN_SIZE
            end
            OS._hiview_set_frame(@web_view_handle, bounds)
          end
        end
        catch(:break_case) do
          case (event_kind)
          when OS.attr_k_event_window_bounds_changed
            # Bug on Safari. Resizing the height of a Shell containing a Browser at
            # a fixed location causes the Browser to redraw at a wrong location.
            # The web view is a HIView container that internally hosts
            # a Cocoa NSView that uses a coordinates system with the origin at the
            # bottom left corner of a window instead of the coordinates system used
            # in Carbon that starts at the top left corner. The workaround is to
            # reposition the web view every time the Shell of the Browser is resized.
            # 
            # Note the size should not be updated if the browser is hidden.
            if (self.attr_browser.is_visible)
              old_bounds = CGRect.new
              OS._get_event_parameter(the_event, OS.attr_k_event_param_original_bounds, OS.attr_type_hirect, nil, CGRect.attr_sizeof, nil, old_bounds)
              bounds = CGRect.new
              OS._get_event_parameter(the_event, OS.attr_k_event_param_current_bounds, OS.attr_type_hirect, nil, CGRect.attr_sizeof, nil, bounds)
              if ((old_bounds.attr_height).equal?(bounds.attr_height))
                throw :break_case, :thrown
              end
              OS._hiview_get_bounds(self.attr_browser.attr_handle, bounds)
              content_view = Array.typed(::Java::Int).new(1) { 0 }
              OS._hiview_find_by_id(OS._hiview_get_root(OS._get_control_owner(self.attr_browser.attr_handle)), OS.k_hiview_window_content_id, content_view)
              OS._hiview_convert_rect(bounds, self.attr_browser.attr_handle, content_view[0])
              # Bug in Safari.  For some reason, the web view will display incorrectly or
              # blank depending on its contents, if its size is set to a value smaller than
              # MIN_SIZE. It will not display properly even after the size is made larger.
              # The fix is to avoid setting sizes smaller than MIN_SIZE.
              if (bounds.attr_width <= MIN_SIZE)
                bounds.attr_width = MIN_SIZE
              end
              if (bounds.attr_height <= MIN_SIZE)
                bounds.attr_height = MIN_SIZE
              end
              bounds.attr_x += 1
              # Note that the bounds needs to change
              OS._hiview_set_frame(@web_view_handle, bounds)
              bounds.attr_x -= 1
              OS._hiview_set_frame(@web_view_handle, bounds)
            end
          end
        end == :thrown or break
        case (event_kind)
        when OS.attr_k_event_raw_key_down
          # Bug in Safari. The WebView blocks the propagation of certain Carbon events
          # such as kEventRawKeyDown. On the Mac, Carbon events propagate from the
          # Focus Target Handler to the Control Target Handler, Window Target and finally
          # the Application Target Handler. It is assumed that WebView hooks its events
          # on the Window Target and does not pass kEventRawKeyDown to the next handler.
          # Since kEventRawKeyDown events never make it to the Application Target Handler,
          # the Application Target Handler never gets to emit kEventTextInputUnicodeForKeyEvent
          # used by SWT to send a SWT.KeyDown event.
          # The workaround is to hook kEventRawKeyDown on the Control Target Handler which gets
          # called before the WebView hook on the Window Target Handler. Then, forward this event
          # directly to the Application Target Handler. Note that if in certain conditions Safari
          # does not block the kEventRawKeyDown, then multiple kEventTextInputUnicodeForKeyEvent
          # events might be generated as a result of this workaround.
          # 
          # TEMPORARY CODE
          # doit = false;
          # OS.SendEventToEventTarget(theEvent, OS.GetApplicationEventTarget());
          # if (!doit) return OS.noErr;
          length_ = Array.typed(::Java::Int).new(1) { 0 }
          status = OS._get_event_parameter(the_event, OS.attr_k_event_param_key_unicodes, OS.attr_type_unicode_text, nil, 4, length_, nil)
          if ((status).equal?(OS.attr_no_err) && !(length_[0]).equal?(0))
            modifiers = Array.typed(::Java::Int).new(1) { 0 }
            OS._get_event_parameter(the_event, OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, 4, nil, modifiers)
            chars = CharArray.new(1)
            OS._get_event_parameter(the_event, OS.attr_k_event_param_key_unicodes, OS.attr_type_unicode_text, nil, 2, nil, chars)
            if (!((modifiers[0] & OS.attr_cmd_key)).equal?(0))
              case (chars[0])
              when Character.new(?v.ord)
                Cocoa.objc_msg_send(@web_view, Cocoa::S_paste)
                return OS.attr_no_err
              when Character.new(?c.ord)
                Cocoa.objc_msg_send(@web_view, Cocoa::S_copy)
                return OS.attr_no_err
              when Character.new(?x.ord)
                Cocoa.objc_msg_send(@web_view, Cocoa::S_cut)
                return OS.attr_no_err
              end
            end
          end
          # Bug in Carbon.  OSX crashes if a HICocoaView is disposed during a key event,
          # presumably as a result of attempting to use it after its refcount has reached
          # 0.  The workaround is to temporarily add an extra ref to the view and its
          # ancestor while the DOM listener is handling the event, in case the
          # Browser gets disposed in a callback.
          handle = @web_view_handle
          root = OS._hiview_get_superview(@web_view_handle)
          OS._cfretain(handle)
          OS._cfretain(root)
          result = OS._call_next_event_handler(next_handler, the_event)
          OS._cfrelease(handle)
          OS._cfrelease(root)
          return result
        end
        case (event_kind)
        when OS.attr_k_event_text_input_unicode_for_key_event
          # Note.  This event is received from the Window Target therefore after it was received
          # by the Focus Target. The SWT.KeyDown event is sent by SWT on the Focus Target. If it
          # is received here, then the SWT.KeyDown doit flag must have been left to the value
          # true.  For package visibility reasons we cannot access the doit flag directly.
          # 
          # Sequence of events when the user presses a key down
          # 
          # .Control Target - kEventRawKeyDown
          # .forward to ApplicationEventTarget
          # .Focus Target kEventTextInputUnicodeForKeyEvent - SWT emits SWT.KeyDown -
          # blocks further propagation if doit false. Browser does not know directly about
          # the doit flag value.
          # .Window Target kEventTextInputUnicodeForKeyEvent - if received, Browser knows
          # SWT.KeyDown is not blocked and event should be sent to WebKit
          # Return from Control Target - kEventRawKeyDown: let the event go to WebKit if doit true
          # (eventNotHandledErr) or stop it (noErr).
          # 
          # TEMPORARY CODE
          # doit = true;
        end
      when OS.attr_k_event_class_window
        catch(:break_case) do
          case (event_kind)
          when OS.attr_k_event_window_bounds_changed
            # Bug on Safari. Resizing the height of a Shell containing a Browser at
            # a fixed location causes the Browser to redraw at a wrong location.
            # The web view is a HIView container that internally hosts
            # a Cocoa NSView that uses a coordinates system with the origin at the
            # bottom left corner of a window instead of the coordinates system used
            # in Carbon that starts at the top left corner. The workaround is to
            # reposition the web view every time the Shell of the Browser is resized.
            # 
            # Note the size should not be updated if the browser is hidden.
            if (self.attr_browser.is_visible)
              old_bounds = CGRect.new
              OS._get_event_parameter(the_event, OS.attr_k_event_param_original_bounds, OS.attr_type_hirect, nil, CGRect.attr_sizeof, nil, old_bounds)
              bounds = CGRect.new
              OS._get_event_parameter(the_event, OS.attr_k_event_param_current_bounds, OS.attr_type_hirect, nil, CGRect.attr_sizeof, nil, bounds)
              if ((old_bounds.attr_height).equal?(bounds.attr_height))
                throw :break_case, :thrown
              end
              OS._hiview_get_bounds(self.attr_browser.attr_handle, bounds)
              content_view = Array.typed(::Java::Int).new(1) { 0 }
              OS._hiview_find_by_id(OS._hiview_get_root(OS._get_control_owner(self.attr_browser.attr_handle)), OS.k_hiview_window_content_id, content_view)
              OS._hiview_convert_rect(bounds, self.attr_browser.attr_handle, content_view[0])
              # Bug in Safari.  For some reason, the web view will display incorrectly or
              # blank depending on its contents, if its size is set to a value smaller than
              # MIN_SIZE. It will not display properly even after the size is made larger.
              # The fix is to avoid setting sizes smaller than MIN_SIZE.
              if (bounds.attr_width <= MIN_SIZE)
                bounds.attr_width = MIN_SIZE
              end
              if (bounds.attr_height <= MIN_SIZE)
                bounds.attr_height = MIN_SIZE
              end
              bounds.attr_x += 1
              # Note that the bounds needs to change
              OS._hiview_set_frame(@web_view_handle, bounds)
              bounds.attr_x -= 1
              OS._hiview_set_frame(@web_view_handle, bounds)
            end
          end
        end == :thrown or break
        case (event_kind)
        when OS.attr_k_event_raw_key_down
          # Bug in Safari. The WebView blocks the propagation of certain Carbon events
          # such as kEventRawKeyDown. On the Mac, Carbon events propagate from the
          # Focus Target Handler to the Control Target Handler, Window Target and finally
          # the Application Target Handler. It is assumed that WebView hooks its events
          # on the Window Target and does not pass kEventRawKeyDown to the next handler.
          # Since kEventRawKeyDown events never make it to the Application Target Handler,
          # the Application Target Handler never gets to emit kEventTextInputUnicodeForKeyEvent
          # used by SWT to send a SWT.KeyDown event.
          # The workaround is to hook kEventRawKeyDown on the Control Target Handler which gets
          # called before the WebView hook on the Window Target Handler. Then, forward this event
          # directly to the Application Target Handler. Note that if in certain conditions Safari
          # does not block the kEventRawKeyDown, then multiple kEventTextInputUnicodeForKeyEvent
          # events might be generated as a result of this workaround.
          # 
          # TEMPORARY CODE
          # doit = false;
          # OS.SendEventToEventTarget(theEvent, OS.GetApplicationEventTarget());
          # if (!doit) return OS.noErr;
          length_ = Array.typed(::Java::Int).new(1) { 0 }
          status = OS._get_event_parameter(the_event, OS.attr_k_event_param_key_unicodes, OS.attr_type_unicode_text, nil, 4, length_, nil)
          if ((status).equal?(OS.attr_no_err) && !(length_[0]).equal?(0))
            modifiers = Array.typed(::Java::Int).new(1) { 0 }
            OS._get_event_parameter(the_event, OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, 4, nil, modifiers)
            chars = CharArray.new(1)
            OS._get_event_parameter(the_event, OS.attr_k_event_param_key_unicodes, OS.attr_type_unicode_text, nil, 2, nil, chars)
            if (!((modifiers[0] & OS.attr_cmd_key)).equal?(0))
              case (chars[0])
              when Character.new(?v.ord)
                Cocoa.objc_msg_send(@web_view, Cocoa::S_paste)
                return OS.attr_no_err
              when Character.new(?c.ord)
                Cocoa.objc_msg_send(@web_view, Cocoa::S_copy)
                return OS.attr_no_err
              when Character.new(?x.ord)
                Cocoa.objc_msg_send(@web_view, Cocoa::S_cut)
                return OS.attr_no_err
              end
            end
          end
          # Bug in Carbon.  OSX crashes if a HICocoaView is disposed during a key event,
          # presumably as a result of attempting to use it after its refcount has reached
          # 0.  The workaround is to temporarily add an extra ref to the view and its
          # ancestor while the DOM listener is handling the event, in case the
          # Browser gets disposed in a callback.
          handle = @web_view_handle
          root = OS._hiview_get_superview(@web_view_handle)
          OS._cfretain(handle)
          OS._cfretain(root)
          result = OS._call_next_event_handler(next_handler, the_event)
          OS._cfrelease(handle)
          OS._cfrelease(root)
          return result
        end
        case (event_kind)
        when OS.attr_k_event_text_input_unicode_for_key_event
          # Note.  This event is received from the Window Target therefore after it was received
          # by the Focus Target. The SWT.KeyDown event is sent by SWT on the Focus Target. If it
          # is received here, then the SWT.KeyDown doit flag must have been left to the value
          # true.  For package visibility reasons we cannot access the doit flag directly.
          # 
          # Sequence of events when the user presses a key down
          # 
          # .Control Target - kEventRawKeyDown
          # .forward to ApplicationEventTarget
          # .Focus Target kEventTextInputUnicodeForKeyEvent - SWT emits SWT.KeyDown -
          # blocks further propagation if doit false. Browser does not know directly about
          # the doit flag value.
          # .Window Target kEventTextInputUnicodeForKeyEvent - if received, Browser knows
          # SWT.KeyDown is not blocked and event should be sent to WebKit
          # Return from Control Target - kEventRawKeyDown: let the event go to WebKit if doit true
          # (eventNotHandledErr) or stop it (noErr).
          # 
          # TEMPORARY CODE
          # doit = true;
        end
      when OS.attr_k_event_class_keyboard
        case (event_kind)
        when OS.attr_k_event_raw_key_down
          # Bug in Safari. The WebView blocks the propagation of certain Carbon events
          # such as kEventRawKeyDown. On the Mac, Carbon events propagate from the
          # Focus Target Handler to the Control Target Handler, Window Target and finally
          # the Application Target Handler. It is assumed that WebView hooks its events
          # on the Window Target and does not pass kEventRawKeyDown to the next handler.
          # Since kEventRawKeyDown events never make it to the Application Target Handler,
          # the Application Target Handler never gets to emit kEventTextInputUnicodeForKeyEvent
          # used by SWT to send a SWT.KeyDown event.
          # The workaround is to hook kEventRawKeyDown on the Control Target Handler which gets
          # called before the WebView hook on the Window Target Handler. Then, forward this event
          # directly to the Application Target Handler. Note that if in certain conditions Safari
          # does not block the kEventRawKeyDown, then multiple kEventTextInputUnicodeForKeyEvent
          # events might be generated as a result of this workaround.
          # 
          # TEMPORARY CODE
          # doit = false;
          # OS.SendEventToEventTarget(theEvent, OS.GetApplicationEventTarget());
          # if (!doit) return OS.noErr;
          length_ = Array.typed(::Java::Int).new(1) { 0 }
          status = OS._get_event_parameter(the_event, OS.attr_k_event_param_key_unicodes, OS.attr_type_unicode_text, nil, 4, length_, nil)
          if ((status).equal?(OS.attr_no_err) && !(length_[0]).equal?(0))
            modifiers = Array.typed(::Java::Int).new(1) { 0 }
            OS._get_event_parameter(the_event, OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, 4, nil, modifiers)
            chars = CharArray.new(1)
            OS._get_event_parameter(the_event, OS.attr_k_event_param_key_unicodes, OS.attr_type_unicode_text, nil, 2, nil, chars)
            if (!((modifiers[0] & OS.attr_cmd_key)).equal?(0))
              case (chars[0])
              when Character.new(?v.ord)
                Cocoa.objc_msg_send(@web_view, Cocoa::S_paste)
                return OS.attr_no_err
              when Character.new(?c.ord)
                Cocoa.objc_msg_send(@web_view, Cocoa::S_copy)
                return OS.attr_no_err
              when Character.new(?x.ord)
                Cocoa.objc_msg_send(@web_view, Cocoa::S_cut)
                return OS.attr_no_err
              end
            end
          end
          # Bug in Carbon.  OSX crashes if a HICocoaView is disposed during a key event,
          # presumably as a result of attempting to use it after its refcount has reached
          # 0.  The workaround is to temporarily add an extra ref to the view and its
          # ancestor while the DOM listener is handling the event, in case the
          # Browser gets disposed in a callback.
          handle = @web_view_handle
          root = OS._hiview_get_superview(@web_view_handle)
          OS._cfretain(handle)
          OS._cfretain(root)
          result = OS._call_next_event_handler(next_handler, the_event)
          OS._cfrelease(handle)
          OS._cfrelease(root)
          return result
        end
        case (event_kind)
        when OS.attr_k_event_text_input_unicode_for_key_event
          # Note.  This event is received from the Window Target therefore after it was received
          # by the Focus Target. The SWT.KeyDown event is sent by SWT on the Focus Target. If it
          # is received here, then the SWT.KeyDown doit flag must have been left to the value
          # true.  For package visibility reasons we cannot access the doit flag directly.
          # 
          # Sequence of events when the user presses a key down
          # 
          # .Control Target - kEventRawKeyDown
          # .forward to ApplicationEventTarget
          # .Focus Target kEventTextInputUnicodeForKeyEvent - SWT emits SWT.KeyDown -
          # blocks further propagation if doit false. Browser does not know directly about
          # the doit flag value.
          # .Window Target kEventTextInputUnicodeForKeyEvent - if received, Browser knows
          # SWT.KeyDown is not blocked and event should be sent to WebKit
          # Return from Control Target - kEventRawKeyDown: let the event go to WebKit if doit true
          # (eventNotHandledErr) or stop it (noErr).
          # 
          # TEMPORARY CODE
          # doit = true;
        end
      when OS.attr_k_event_class_text_input
        case (event_kind)
        when OS.attr_k_event_text_input_unicode_for_key_event
          # Note.  This event is received from the Window Target therefore after it was received
          # by the Focus Target. The SWT.KeyDown event is sent by SWT on the Focus Target. If it
          # is received here, then the SWT.KeyDown doit flag must have been left to the value
          # true.  For package visibility reasons we cannot access the doit flag directly.
          # 
          # Sequence of events when the user presses a key down
          # 
          # .Control Target - kEventRawKeyDown
          # .forward to ApplicationEventTarget
          # .Focus Target kEventTextInputUnicodeForKeyEvent - SWT emits SWT.KeyDown -
          # blocks further propagation if doit false. Browser does not know directly about
          # the doit flag value.
          # .Window Target kEventTextInputUnicodeForKeyEvent - if received, Browser knows
          # SWT.KeyDown is not blocked and event should be sent to WebKit
          # Return from Control Target - kEventRawKeyDown: let the event go to WebKit if doit true
          # (eventNotHandledErr) or stop it (noErr).
          # 
          # TEMPORARY CODE
          # doit = true;
        end
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Here we dispatch all WebView upcalls.
    def handle_callback(selector, arg0, arg1, arg2, arg3)
      ret = 0
      # for meaning of selector see WebKitDelegate methods in webkit.c
      case (selector)
      when 1
        did_fail_provisional_load_with_error(arg0, arg1)
      when 2
        did_finish_load_for_frame(arg0)
      when 3
        did_receive_title(arg0, arg1)
      when 4
        did_start_provisional_load_for_frame(arg0)
      when 5
        did_finish_loading_from_data_source(arg0, arg1)
      when 6
        did_fail_loading_with_error(arg0, arg1, arg2)
      when 7
        ret = identifier_for_initial_request(arg0, arg1)
      when 8
        ret = will_send_request(arg0, arg1, arg2, arg3)
      when 9
        handle_notification(arg0)
      when 10
        did_commit_load_for_frame(arg0)
      when 11
        ret = create_web_view_with_request(arg0)
      when 12
        web_view_show(arg0)
      when 13
        set_frame(arg0)
      when 14
        web_view_close
      when 15
        ret = context_menu_items_for_element(arg0, arg1)
      when 16
        set_status_bar_visible(arg0)
      when 17
        set_resizable(arg0)
      when 18
        set_toolbars_visible(arg0)
      when 19
        decide_policy_for_mimetype(arg0, arg1, arg2, arg3)
      when 20
        decide_policy_for_navigation_action(arg0, arg1, arg2, arg3)
      when 21
        decide_policy_for_new_window_action(arg0, arg1, arg2, arg3)
      when 22
        unable_to_implement_policy_with_error(arg0, arg1)
      when 23
        set_status_text(arg0)
      when 24
        web_view_focus
      when 25
        web_view_unfocus
      when 26
        run_java_script_alert_panel_with_message(arg0)
      when 27
        ret = run_java_script_confirm_panel_with_message(arg0)
      when 28
        run_open_panel_for_file_button_with_result_listener(arg0)
      when 29
        decide_destination_with_suggested_filename(arg0, arg1)
      when 30
        mouse_did_move_over_element(arg0, arg1)
      when 31
        did_change_location_within_page_for_frame(arg0)
      when 32
        handle_event(arg0)
      end
      return ret
    end
    
    typesig { [] }
    def is_back_enabled
      return !(Cocoa.objc_msg_send(@web_view, Cocoa::S_canGoBack)).equal?(0)
    end
    
    typesig { [] }
    def is_forward_enabled
      return !(Cocoa.objc_msg_send(@web_view, Cocoa::S_canGoForward)).equal?(0)
    end
    
    typesig { [] }
    def refresh
      Cocoa.objc_msg_send(@web_view, Cocoa::S_reload, 0)
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
      length_ = html.length
      buffer = CharArray.new(length_)
      html.get_chars(0, length_, buffer, 0)
      string = OS._cfstring_create_with_characters(0, buffer, length_)
      length_ = URI_FROMMEMORY.length
      buffer = CharArray.new(length_)
      URI_FROMMEMORY.get_chars(0, length_, buffer, 0)
      urlstring = OS._cfstring_create_with_characters(0, buffer, length_)
      # Note.  URLWithString uses autorelease.  The resulting URL
      # does not need to be released.
      # URL = [NSURL URLWithString:(NSString *)URLString]
      url = Cocoa.objc_msg_send(Cocoa::C_NSURL, Cocoa::S_URLWithString, urlstring)
      OS._cfrelease(urlstring)
      # mainFrame = [webView mainFrame];
      main_frame = Cocoa.objc_msg_send(@web_view, Cocoa::S_mainFrame)
      # [mainFrame loadHTMLString:(NSString *) string baseURL:(NSURL *)URL];
      Cocoa.objc_msg_send(main_frame, Cocoa::S_loadHTMLStringbaseURL, string, url)
      OS._cfrelease(string)
    end
    
    typesig { [String] }
    def set_url(url)
      @html = (nil).to_s
      if (url.starts_with(PROTOCOL_FILE))
        url = (url.substring(PROTOCOL_FILE.length)).to_s
      end
      selector = Cocoa::S_fileURLWithPath
      is_http_url = !(url.index_of(Character.new(?/.ord))).equal?(0)
      if (is_http_url)
        selector = Cocoa::S_URLWithString
        if ((url.index_of(Character.new(?:.ord))).equal?(-1))
          url = PROTOCOL_HTTP + "//" + url # $NON-NLS-1$
        end
      end
      length_ = url.length
      chars = CharArray.new(length_)
      url.get_chars(0, length_, chars, 0)
      s_handle = OS._cfstring_create_with_characters(0, chars, length_)
      # NSURL.fileURLWithPath and NSURL.URLWithString do autorelease
      in_url = Cocoa.objc_msg_send(Cocoa::C_NSURL, selector, s_handle)
      OS._cfrelease(s_handle)
      if ((in_url).equal?(0))
        return false
      end
      # request = [NSURLRequest requestWithURL:(NSURL*)inURL];
      request = Cocoa.objc_msg_send(Cocoa::C_NSURLRequest, Cocoa::S_requestWithURL, in_url)
      # mainFrame = [webView mainFrame];
      main_frame = Cocoa.objc_msg_send(@web_view, Cocoa::S_mainFrame)
      # [mainFrame loadRequest:request];
      Cocoa.objc_msg_send(main_frame, Cocoa::S_loadRequest, request)
      return true
    end
    
    typesig { [] }
    def stop
      @html = (nil).to_s
      Cocoa.objc_msg_send(@web_view, Cocoa::S_stopLoading, 0)
    end
    
    typesig { [::Java::Int] }
    # WebFrameLoadDelegate
    def did_change_location_within_page_for_frame(frame)
      # id url= [[[[frame provisionalDataSource] request] URL] absoluteString];
      data_source = Cocoa.objc_msg_send(frame, Cocoa::S_dataSource)
      request = Cocoa.objc_msg_send(data_source, Cocoa::S_request)
      url = Cocoa.objc_msg_send(request, Cocoa::S_URL)
      s = Cocoa.objc_msg_send(url, Cocoa::S_absoluteString)
      length_ = OS._cfstring_get_length(s)
      if ((length_).equal?(0))
        return
      end
      buffer = CharArray.new(length_)
      range = CFRange.new
      range.attr_length = length_
      OS._cfstring_get_characters(s, range, buffer)
      url2 = String.new(buffer)
      # If the URI indicates that the page is being rendered from memory
      # (via setText()) then set it to about:blank to be consistent with IE.
      if ((url2 == URI_FROMMEMORY))
        url2 = ABOUT_BLANK
      end
      display = self.attr_browser.get_display
      top = (frame).equal?(Cocoa.objc_msg_send(@web_view, Cocoa::S_mainFrame))
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
    
    typesig { [::Java::Int, ::Java::Int] }
    def did_fail_provisional_load_with_error(error_, frame)
      if ((frame).equal?(Cocoa.objc_msg_send(@web_view, Cocoa::S_mainFrame)))
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
    def did_finish_load_for_frame(frame)
      hook_domfocus_listeners(frame)
      hook_dommouse_listeners(frame)
      if ((frame).equal?(Cocoa.objc_msg_send(@web_view, Cocoa::S_mainFrame)))
        hook_domkey_listeners(frame)
        display = self.attr_browser.get_display
        # To be consistent with other platforms a title event should be fired when a
        # page has completed loading.  A page with a <title> tag will do this
        # automatically when the didReceiveTitle callback is received.  However a page
        # without a <title> tag will not do this by default, so fire the event
        # here with the page's url as the title.
        data_source = Cocoa.objc_msg_send(frame, Cocoa::S_dataSource)
        if (!(data_source).equal?(0))
          title = Cocoa.objc_msg_send(data_source, Cocoa::S_pageTitle)
          if ((title).equal?(0))
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
                
                typesig { [] }
                define_method :initialize do
                  super()
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
            
            typesig { [] }
            define_method :initialize do
              super()
            end
            
            private
            alias_method :initialize_anonymous, :initialize
          end.new_local(self))
          i += 1
        end
        # Feature on Safari.  The identifier is used here as a marker for the events
        # related to the top frame and the URL changes related to that top frame as
        # they should appear on the location bar of a browser.  It is expected to reset
        # the identifier to 0 when the event didFinishLoadingFromDataSource related to
        # the identifierForInitialRequest event is received.  Howeever, Safari fires
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
    def hook_domfocus_listeners(frame)
      # These listeners only need to be hooked for OSX 10.4 (Tiger).  The WebKit on
      # OSX < 10.4 does not send these DOM events, and tab traversals that exit
      # Safari are handled as of OSX 10.5 as a result of using HICocoaViewCreate,
      # which makes these listeners unnecessary.
      if (!(0x1040 <= OS::VERSION && OS::VERSION < 0x1050))
        return
      end
      document = Cocoa.objc_msg_send(frame, Cocoa::S_DOMDocument)
      string = DOMEVENT_FOCUSIN
      length_ = string.length
      chars = CharArray.new(length_)
      string.get_chars(0, length_, chars, 0)
      ptr = OS._cfstring_create_with_characters(0, chars, length_)
      Cocoa.objc_msg_send(document, Cocoa::S_addEventListener, ptr, @delegate, 0)
      OS._cfrelease(ptr)
      string = DOMEVENT_FOCUSOUT
      length_ = string.length
      chars = CharArray.new(length_)
      string.get_chars(0, length_, chars, 0)
      ptr = OS._cfstring_create_with_characters(0, chars, length_)
      Cocoa.objc_msg_send(document, Cocoa::S_addEventListener, ptr, @delegate, 0)
      OS._cfrelease(ptr)
    end
    
    typesig { [::Java::Int] }
    def hook_domkey_listeners(frame)
      # WebKit's DOM listener api became functional in OSX 10.4, so if an earlier
      # version than this is detected then do not hook the DOM listeners.
      if (OS::VERSION < 0x1040)
        return
      end
      document = Cocoa.objc_msg_send(frame, Cocoa::S_DOMDocument)
      string = DOMEVENT_KEYDOWN
      length_ = string.length
      chars = CharArray.new(length_)
      string.get_chars(0, length_, chars, 0)
      ptr = OS._cfstring_create_with_characters(0, chars, length_)
      Cocoa.objc_msg_send(document, Cocoa::S_addEventListener, ptr, @delegate, 0)
      OS._cfrelease(ptr)
      string = DOMEVENT_KEYUP
      length_ = string.length
      chars = CharArray.new(length_)
      string.get_chars(0, length_, chars, 0)
      ptr = OS._cfstring_create_with_characters(0, chars, length_)
      Cocoa.objc_msg_send(document, Cocoa::S_addEventListener, ptr, @delegate, 0)
      OS._cfrelease(ptr)
    end
    
    typesig { [::Java::Int] }
    def hook_dommouse_listeners(frame)
      # WebKit's DOM listener api became functional in OSX 10.4, so if an earlier
      # version than this is detected then do not hook the DOM listeners.
      if (OS::VERSION < 0x1040)
        return
      end
      document = Cocoa.objc_msg_send(frame, Cocoa::S_DOMDocument)
      string = DOMEVENT_MOUSEDOWN
      length_ = string.length
      chars = CharArray.new(length_)
      string.get_chars(0, length_, chars, 0)
      ptr = OS._cfstring_create_with_characters(0, chars, length_)
      Cocoa.objc_msg_send(document, Cocoa::S_addEventListener, ptr, @delegate, 0)
      OS._cfrelease(ptr)
      string = DOMEVENT_MOUSEUP
      length_ = string.length
      chars = CharArray.new(length_)
      string.get_chars(0, length_, chars, 0)
      ptr = OS._cfstring_create_with_characters(0, chars, length_)
      Cocoa.objc_msg_send(document, Cocoa::S_addEventListener, ptr, @delegate, 0)
      OS._cfrelease(ptr)
      string = DOMEVENT_MOUSEMOVE
      length_ = string.length
      chars = CharArray.new(length_)
      string.get_chars(0, length_, chars, 0)
      ptr = OS._cfstring_create_with_characters(0, chars, length_)
      Cocoa.objc_msg_send(document, Cocoa::S_addEventListener, ptr, @delegate, 0)
      OS._cfrelease(ptr)
      string = DOMEVENT_MOUSEWHEEL
      length_ = string.length
      chars = CharArray.new(length_)
      string.get_chars(0, length_, chars, 0)
      ptr = OS._cfstring_create_with_characters(0, chars, length_)
      Cocoa.objc_msg_send(document, Cocoa::S_addEventListener, ptr, @delegate, 0)
      OS._cfrelease(ptr)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def did_receive_title(title, frame)
      if ((frame).equal?(Cocoa.objc_msg_send(@web_view, Cocoa::S_mainFrame)))
        length_ = OS._cfstring_get_length(title)
        buffer = CharArray.new(length_)
        range = CFRange.new
        range.attr_length = length_
        OS._cfstring_get_characters(title, range, buffer)
        new_title = String.new(buffer)
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
    
    typesig { [::Java::Int] }
    def did_start_provisional_load_for_frame(frame)
      # This code is intentionally commented.  WebFrameLoadDelegate:didStartProvisionalLoadForFrame is
      # called before WebResourceLoadDelegate:willSendRequest and
      # WebFrameLoadDelegate:didCommitLoadForFrame.  The resource count is reset when didCommitLoadForFrame
      # is received for the top frame.
      # 
      # int webView = WebKit.HIWebViewGetWebView(webViewHandle);
      # if (frame == WebKit.objc_msgSend(webView, WebKit.S_mainFrame)) {
      # /* reset resource status variables */
      # resourceCount= 0;
      # }
    end
    
    typesig { [::Java::Int] }
    def did_commit_load_for_frame(frame)
      # id url= [[[[frame provisionalDataSource] request] URL] absoluteString];
      data_source = Cocoa.objc_msg_send(frame, Cocoa::S_dataSource)
      request = Cocoa.objc_msg_send(data_source, Cocoa::S_request)
      url = Cocoa.objc_msg_send(request, Cocoa::S_URL)
      s = Cocoa.objc_msg_send(url, Cocoa::S_absoluteString)
      length_ = OS._cfstring_get_length(s)
      if ((length_).equal?(0))
        return
      end
      buffer = CharArray.new(length_)
      range = CFRange.new
      range.attr_length = length_
      OS._cfstring_get_characters(s, range, buffer)
      url2 = String.new(buffer)
      # If the URI indicates that the page is being rendered from memory
      # (via setText()) then set it to about:blank to be consistent with IE.
      if ((url2 == URI_FROMMEMORY))
        url2 = ABOUT_BLANK
      end
      display = self.attr_browser.get_display
      top = (frame).equal?(Cocoa.objc_msg_send(@web_view, Cocoa::S_mainFrame))
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
            
            typesig { [] }
            define_method :initialize do
              super()
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
    # WebResourceLoadDelegate
    def did_finish_loading_from_data_source(identifier, data_source)
      # Feature on Safari.  The identifier is used here as a marker for the events
      # related to the top frame and the URL changes related to that top frame as
      # they should appear on the location bar of a browser.  It is expected to reset
      # the identifier to 0 when the event didFinishLoadingFromDataSource related to
      # the identifierForInitialRequest event is received.  Howeever, Safari fires
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def did_fail_loading_with_error(identifier, error_, data_source)
      # Feature on Safari.  The identifier is used here as a marker for the events
      # related to the top frame and the URL changes related to that top frame as
      # they should appear on the location bar of a browser.  It is expected to reset
      # the identifier to 0 when the event didFinishLoadingFromDataSource related to
      # the identifierForInitialRequest event is received.  Howeever, Safari fires
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
    
    typesig { [::Java::Int, ::Java::Int] }
    def identifier_for_initial_request(request, data_source)
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
          
          typesig { [] }
          define_method :initialize do
            super()
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
        i += 1
      end
      # Note.  numberWithInt uses autorelease.  The resulting object
      # does not need to be released.
      # identifier = [NSNumber numberWithInt: resourceCount++]
      identifier = Cocoa.objc_msg_send(Cocoa::C_NSNumber, Cocoa::S_numberWithInt, ((@resource_count += 1) - 1))
      if ((@identifier).equal?(0))
        frame = Cocoa.objc_msg_send(data_source, Cocoa::S_webFrame)
        if ((frame).equal?(Cocoa.objc_msg_send(@web_view, Cocoa::S_mainFrame)))
          @identifier = identifier
        end
      end
      return identifier
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def will_send_request(identifier, request, redirect_response, data_source)
      return request
    end
    
    typesig { [::Java::Int] }
    # handleNotification
    def handle_notification(notification)
    end
    
    typesig { [::Java::Int] }
    # UIDelegate
    def create_web_view_with_request(request)
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
      web_view = 0
      browser = nil
      if (!(new_event.attr_browser).nil? && new_event.attr_browser.attr_web_browser.is_a?(Safari))
        browser = new_event.attr_browser
      end
      if (!(browser).nil? && !browser.is_disposed)
        web_view = (browser.attr_web_browser).attr_web_view
        if (!(request).equal?(0))
          # mainFrame = [webView mainFrame];
          main_frame = Cocoa.objc_msg_send(web_view, Cocoa::S_mainFrame)
          # [mainFrame loadRequest:request];
          Cocoa.objc_msg_send(main_frame, Cocoa::S_loadRequest, request)
        end
      end
      return web_view
    end
    
    typesig { [::Java::Int] }
    def web_view_show(sender)
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
    
    typesig { [::Java::Int] }
    def set_frame(frame)
      dest = Array.typed(::Java::Float).new(4) { 0.0 }
      OS.memmove(dest, frame, 16)
      # convert to SWT system coordinates
      bounds = self.attr_browser.get_display.get_bounds
      @location = Point.new(RJava.cast_to_int(dest[0]), bounds.attr_height - RJava.cast_to_int(dest[1]) - RJava.cast_to_int(dest[3]))
      @size = Point.new(RJava.cast_to_int(dest[2]), RJava.cast_to_int(dest[3]))
    end
    
    typesig { [] }
    def web_view_focus
    end
    
    typesig { [] }
    def web_view_unfocus
    end
    
    typesig { [::Java::Int] }
    def run_java_script_alert_panel_with_message(message)
      length_ = OS._cfstring_get_length(message)
      buffer = CharArray.new(length_)
      range = CFRange.new
      range.attr_length = length_
      OS._cfstring_get_characters(message, range, buffer)
      text = String.new(buffer)
      message_box = MessageBox.new(self.attr_browser.get_shell, SWT::OK | SWT::ICON_WARNING)
      message_box.set_text("Javascript") # $NON-NLS-1$
      message_box.set_message(text)
      message_box.open
    end
    
    typesig { [::Java::Int] }
    def run_java_script_confirm_panel_with_message(message)
      length_ = OS._cfstring_get_length(message)
      buffer = CharArray.new(length_)
      range = CFRange.new
      range.attr_length = length_
      OS._cfstring_get_characters(message, range, buffer)
      text = String.new(buffer)
      message_box = MessageBox.new(self.attr_browser.get_shell, SWT::OK | SWT::CANCEL | SWT::ICON_QUESTION)
      message_box.set_text("Javascript") # $NON-NLS-1$
      message_box.set_message(text)
      return (message_box.open).equal?(SWT::OK) ? 1 : 0
    end
    
    typesig { [::Java::Int] }
    def run_open_panel_for_file_button_with_result_listener(result_listener)
      dialog = FileDialog.new(self.attr_browser.get_shell, SWT::NONE)
      result = dialog.open
      if ((result).nil?)
        Cocoa.objc_msg_send(result_listener, Cocoa::S_cancel)
        return
      end
      length_ = result.length
      buffer = CharArray.new(length_)
      result.get_chars(0, length_, buffer, 0)
      filename = OS._cfstring_create_with_characters(0, buffer, length_)
      Cocoa.objc_msg_send(result_listener, Cocoa::S_chooseFilename, filename)
      OS._cfrelease(filename)
    end
    
    typesig { [] }
    def web_view_close
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
    
    typesig { [::Java::Int, ::Java::Int] }
    def context_menu_items_for_element(element, default_menu_items)
      pt = Org::Eclipse::Swt::Internal::Carbon::Point.new
      OS._get_global_mouse(pt)
      event = Event.new
      event.attr_x = pt.attr_h
      event.attr_y = pt.attr_v
      self.attr_browser.notify_listeners(SWT::MenuDetect, event)
      if (!event.attr_doit || self.attr_browser.is_disposed)
        return 0
      end
      menu = self.attr_browser.get_menu
      if (!(menu).nil? && !menu.is_disposed)
        if (!(event.attr_x).equal?(pt.attr_h) || !(event.attr_y).equal?(pt.attr_v))
          menu.set_location(event.attr_x, event.attr_y)
        end
        menu.set_visible(true)
        return 0
      end
      return default_menu_items
    end
    
    typesig { [::Java::Int] }
    def set_status_bar_visible(visible)
      # Note.  Webkit only emits the notification when the status bar should be hidden.
      @status_bar = !(visible).equal?(0)
    end
    
    typesig { [::Java::Int] }
    def set_status_text(text)
      length_ = OS._cfstring_get_length(text)
      if ((length_).equal?(0))
        return
      end
      buffer = CharArray.new(length_)
      range = CFRange.new
      range.attr_length = length_
      OS._cfstring_get_characters(text, range, buffer)
      status_text = StatusTextEvent.new(self.attr_browser)
      status_text.attr_display = self.attr_browser.get_display
      status_text.attr_widget = self.attr_browser
      status_text.attr_text = String.new(buffer)
      i = 0
      while i < self.attr_status_text_listeners.attr_length
        self.attr_status_text_listeners[i].changed(status_text)
        i += 1
      end
    end
    
    typesig { [::Java::Int] }
    def set_resizable(visible)
    end
    
    typesig { [::Java::Int] }
    def set_toolbars_visible(visible)
      # Note.  Webkit only emits the notification when the tool bar should be hidden.
      @tool_bar = !(visible).equal?(0)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def mouse_did_move_over_element(element_information, modifier_flags)
      if ((element_information).equal?(0))
        return
      end
      length_ = WebElementLinkURLKey.length
      chars = CharArray.new(length_)
      WebElementLinkURLKey.get_chars(0, length_, chars, 0)
      key = OS._cfstring_create_with_characters(0, chars, length_)
      value = Cocoa.objc_msg_send(element_information, Cocoa::S_valueForKey, key)
      OS._cfrelease(key)
      if ((value).equal?(0))
        # not currently over a link
        if ((@last_hovered_link_url).nil?)
          return
        end
        @last_hovered_link_url = (nil).to_s
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
      string_ptr = Cocoa.objc_msg_send(value, Cocoa::S_absoluteString)
      length_ = OS._cfstring_get_length(string_ptr)
      url_string = nil
      if ((length_).equal?(0))
        url_string = "" # $NON-NLS-1$
      else
        chars = CharArray.new(length_)
        range = CFRange.new
        range.attr_length = length_
        OS._cfstring_get_characters(string_ptr, range, chars)
        url_string = (String.new(chars)).to_s
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # PolicyDelegate
    def decide_policy_for_mimetype(type, request, frame, listener)
      can_show = !(Cocoa.objc_msg_send(Cocoa::C_WebView, Cocoa::S_canShowMIMEType, type)).equal?(0)
      Cocoa.objc_msg_send(listener, can_show ? Cocoa::S_use : Cocoa::S_download)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def decide_policy_for_navigation_action(action_information, request, frame, listener)
      url = Cocoa.objc_msg_send(request, Cocoa::S_URL)
      if ((url).equal?(0))
        # indicates that a URL with an invalid format was specified
        Cocoa.objc_msg_send(listener, Cocoa::S_ignore)
        return
      end
      s = Cocoa.objc_msg_send(url, Cocoa::S_absoluteString)
      length_ = OS._cfstring_get_length(s)
      buffer = CharArray.new(length_)
      range = CFRange.new
      range.attr_length = length_
      OS._cfstring_get_characters(s, range, buffer)
      url2 = String.new(buffer)
      # If the URI indicates that the page is being rendered from memory
      # (via setText()) then set it to about:blank to be consistent with IE.
      if ((url2 == URI_FROMMEMORY))
        url2 = ABOUT_BLANK
      end
      if (url2.starts_with(URI_APPLEWEBDATA))
        # listeners should not be notified of internal transitions like this
        Cocoa.objc_msg_send(listener, Cocoa::S_use)
      else
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
        Cocoa.objc_msg_send(listener, new_event.attr_doit ? Cocoa::S_use : Cocoa::S_ignore)
      end
      if (!(@html).nil? && !self.attr_browser.is_disposed)
        html = @html
        @html = nil
        __set_text(html)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def decide_policy_for_new_window_action(action_information, request, frame_name, listener)
      Cocoa.objc_msg_send(listener, Cocoa::S_use)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def unable_to_implement_policy_with_error(error_, frame)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # WebDownload
    def decide_destination_with_suggested_filename(download, filename)
      length_ = OS._cfstring_get_length(filename)
      buffer = CharArray.new(length_)
      range = CFRange.new
      range.attr_length = length_
      OS._cfstring_get_characters(filename, range, buffer)
      name = String.new(buffer)
      dialog = FileDialog.new(self.attr_browser.get_shell, SWT::SAVE)
      dialog.set_text(SWT.get_message("SWT_FileDownload")) # $NON-NLS-1$
      dialog.set_file_name(name)
      path = dialog.open
      if ((path).nil?)
        # cancel pressed
        Cocoa.objc_msg_send(download, Cocoa::S_cancel)
        return
      end
      length_ = path.length
      chars = CharArray.new(length_)
      path.get_chars(0, length_, chars, 0)
      result = OS._cfstring_create_with_characters(0, chars, length_)
      Cocoa.objc_msg_send(download, Cocoa::S_setDestinationAllowOverwrite, result, 1)
      OS._cfrelease(result)
    end
    
    typesig { [::Java::Int] }
    # DOMEventListener
    def handle_event(evt)
      type = Cocoa.objc_msg_send(evt, Cocoa::S_type)
      length_ = OS._cfstring_get_length(type)
      buffer = CharArray.new(length_)
      range = CFRange.new
      range.attr_length = length_
      OS._cfstring_get_characters(type, range, buffer)
      type_string = String.new(buffer)
      if ((type_string == DOMEVENT_FOCUSIN))
        @has_new_focus_element = true
        return
      end
      if ((type_string == DOMEVENT_FOCUSOUT))
        @has_new_focus_element = false
        return
      end
      ctrl = !(Cocoa.objc_msg_send(evt, Cocoa::S_ctrlKey)).equal?(0)
      shift = !(Cocoa.objc_msg_send(evt, Cocoa::S_shiftKey)).equal?(0)
      alt = !(Cocoa.objc_msg_send(evt, Cocoa::S_altKey)).equal?(0)
      meta = !(Cocoa.objc_msg_send(evt, Cocoa::S_metaKey)).equal?(0)
      if ((DOMEVENT_KEYDOWN == type_string) || (DOMEVENT_KEYUP == type_string))
        key_code = Cocoa.objc_msg_send(evt, Cocoa::S_keyCode)
        char_code = Cocoa.objc_msg_send(evt, Cocoa::S_charCode)
        key_event = Event.new
        key_event.attr_widget = self.attr_browser
        if ((DOMEVENT_KEYDOWN == type_string))
          key_event.attr_type = SWT::KeyDown
        else
          key_event.attr_type = SWT::KeyUp
        end
        key_event.attr_key_code = translate_key(key_code)
        key_event.attr_character = RJava.cast_to_char(char_code)
        key_event.attr_state_mask = (alt ? SWT::ALT : 0) | (ctrl ? SWT::CTRL : 0) | (shift ? SWT::SHIFT : 0) | (meta ? SWT::COMMAND : 0)
        self.attr_browser.notify_listeners(key_event.attr_type, key_event)
        if (self.attr_browser.is_disposed)
          Cocoa.objc_msg_send(evt, Cocoa::S_preventDefault)
          return
        end
        doit = key_event.attr_doit
        # Bug in Safari.  As a result of using HIWebViewCreate on OSX versions < 10.5 (Leopard), attempting
        # to traverse out of Safari backwards (Shift+Tab) leaves it in a strange state where Safari no
        # longer has focus but still receives keys.  The Carbon-based Safari examples have the same
        # problem.  The workaround is to only allow forward Tab traversals in the Browser on OSX < 10.5.
        if (doit && OS::VERSION < 0x1050 && (key_event.attr_key_code).equal?(SWT::TAB) && !((key_event.attr_state_mask & SWT::SHIFT)).equal?(0))
          doit = false
        end
        if (!doit)
          Cocoa.objc_msg_send(evt, Cocoa::S_preventDefault)
        else
          if (!@has_new_focus_element && (key_event.attr_key_code).equal?(SWT::TAB) && (DOMEVENT_KEYUP == type_string))
            self.attr_browser.traverse(SWT::TRAVERSE_TAB_NEXT)
            @has_new_focus_element = false
          end
        end
        return
      end
      # mouse event
      client_x = Cocoa.objc_msg_send(evt, Cocoa::S_clientX)
      client_y = Cocoa.objc_msg_send(evt, Cocoa::S_clientY)
      detail = Cocoa.objc_msg_send(evt, Cocoa::S_detail)
      mouse_event = Event.new
      mouse_event.attr_widget = self.attr_browser
      mouse_event.attr_x = client_x
      mouse_event.attr_y = client_y
      mouse_event.attr_state_mask = (alt ? SWT::ALT : 0) | (ctrl ? SWT::CTRL : 0) | (shift ? SWT::SHIFT : 0) | (meta ? SWT::COMMAND : 0)
      if ((DOMEVENT_MOUSEDOWN == type_string))
        mouse_event.attr_type = SWT::MouseDown
        button = Cocoa.objc_msg_send(evt, Cocoa::S_button)
        mouse_event.attr_button = button + 1
        mouse_event.attr_count = detail
      else
        if ((DOMEVENT_MOUSEUP == type_string))
          mouse_event.attr_type = SWT::MouseUp
          button = Cocoa.objc_msg_send(evt, Cocoa::S_button)
          mouse_event.attr_button = button + 1
          mouse_event.attr_count = detail
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
          if ((DOMEVENT_MOUSEMOVE == type_string))
            # Feature in Safari.  Spurious and redundant mousemove events are received in
            # various contexts, including following every MouseUp.  The workaround is to
            # not fire MouseMove events whose x and y values match the last MouseMove.
            if ((mouse_event.attr_x).equal?(@last_mouse_move_x) && (mouse_event.attr_y).equal?(@last_mouse_move_y))
              return
            end
            mouse_event.attr_type = SWT::MouseMove
            @last_mouse_move_x = mouse_event.attr_x
            @last_mouse_move_y = mouse_event.attr_y
          else
            if ((DOMEVENT_MOUSEWHEEL == type_string))
              mouse_event.attr_type = SWT::MouseWheel
              delta = Cocoa.objc_msg_send(evt, Cocoa::S_wheelDelta)
              mouse_event.attr_count = delta / 120
            end
          end
        end
      end
      self.attr_browser.notify_listeners(mouse_event.attr_type, mouse_event)
      if (self.attr_browser.is_disposed)
        return
      end
      if ((detail).equal?(2) && (DOMEVENT_MOUSEDOWN == type_string))
        button = Cocoa.objc_msg_send(evt, Cocoa::S_button)
        mouse_event = Event.new
        mouse_event.attr_widget = self.attr_browser
        mouse_event.attr_x = client_x
        mouse_event.attr_y = client_y
        mouse_event.attr_state_mask = (alt ? SWT::ALT : 0) | (ctrl ? SWT::CTRL : 0) | (shift ? SWT::SHIFT : 0) | (meta ? SWT::COMMAND : 0)
        mouse_event.attr_type = SWT::MouseDoubleClick
        mouse_event.attr_button = button + 1
        mouse_event.attr_count = detail
        self.attr_browser.notify_listeners(mouse_event.attr_type, mouse_event)
      end
    end
    
    typesig { [] }
    def initialize
      @delegate = 0
      @web_view_handle = 0
      @web_view = 0
      @window_bounds_handler = 0
      @changing_location = false
      @has_new_focus_element = false
      @last_hovered_link_url = nil
      @html = nil
      @identifier = 0
      @resource_count = 0
      @last_mouse_move_x = 0
      @last_mouse_move_y = 0
      @url = nil
      @location = nil
      @size = nil
      @status_bar = false
      @tool_bar = false
      @ignore_dispose = false
      super()
      @url = ""
      @status_bar = true
      @tool_bar = true
    end
    
    private
    alias_method :initialize__safari, :initialize
  end
  
end
