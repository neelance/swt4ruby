require "rjava"

# Copyright (c) 2003, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module IEImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt::Ole::Win32
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  class IE < IEImports.const_get :WebBrowser
    include_class_members IEImports
    
    attr_accessor :frame
    alias_method :attr_frame, :frame
    undef_method :frame
    alias_method :attr_frame=, :frame=
    undef_method :frame=
    
    attr_accessor :site
    alias_method :attr_site, :site
    undef_method :site
    alias_method :attr_site=, :site=
    undef_method :site=
    
    attr_accessor :auto
    alias_method :attr_auto, :auto
    undef_method :auto
    alias_method :attr_auto=, :auto=
    undef_method :auto=
    
    attr_accessor :dom_listener
    alias_method :attr_dom_listener, :dom_listener
    undef_method :dom_listener
    alias_method :attr_dom_listener=, :dom_listener=
    undef_method :dom_listener=
    
    attr_accessor :documents
    alias_method :attr_documents, :documents
    undef_method :documents
    alias_method :attr_documents=, :documents=
    undef_method :documents=
    
    attr_accessor :back
    alias_method :attr_back, :back
    undef_method :back
    alias_method :attr_back=, :back=
    undef_method :back=
    
    attr_accessor :forward
    alias_method :attr_forward, :forward
    undef_method :forward
    alias_method :attr_forward=, :forward=
    undef_method :forward=
    
    attr_accessor :navigate
    alias_method :attr_navigate, :navigate
    undef_method :navigate
    alias_method :attr_navigate=, :navigate=
    undef_method :navigate=
    
    attr_accessor :delay_set_text
    alias_method :attr_delay_set_text, :delay_set_text
    undef_method :delay_set_text
    alias_method :attr_delay_set_text=, :delay_set_text=
    undef_method :delay_set_text=
    
    attr_accessor :ignore_dispose
    alias_method :attr_ignore_dispose, :ignore_dispose
    undef_method :ignore_dispose
    alias_method :attr_ignore_dispose=, :ignore_dispose=
    undef_method :ignore_dispose=
    
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
    
    attr_accessor :address_bar
    alias_method :attr_address_bar, :address_bar
    undef_method :address_bar
    alias_method :attr_address_bar=, :address_bar=
    undef_method :address_bar=
    
    attr_accessor :menu_bar
    alias_method :attr_menu_bar, :menu_bar
    undef_method :menu_bar
    alias_method :attr_menu_bar=, :menu_bar=
    undef_method :menu_bar=
    
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
    
    # long
    attr_accessor :global_dispatch
    alias_method :attr_global_dispatch, :global_dispatch
    undef_method :global_dispatch
    alias_method :attr_global_dispatch=, :global_dispatch=
    undef_method :global_dispatch=
    
    attr_accessor :html
    alias_method :attr_html, :html
    undef_method :html
    alias_method :attr_html=, :html=
    undef_method :html=
    
    attr_accessor :style
    alias_method :attr_style, :style
    undef_method :style
    alias_method :attr_style=, :style=
    undef_method :style=
    
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
      
      def silence_internal_navigate
        defined?(@@silence_internal_navigate) ? @@silence_internal_navigate : @@silence_internal_navigate= false
      end
      alias_method :attr_silence_internal_navigate, :silence_internal_navigate
      
      def silence_internal_navigate=(value)
        @@silence_internal_navigate = value
      end
      alias_method :attr_silence_internal_navigate=, :silence_internal_navigate=
      
      
      def prog_id
        defined?(@@prog_id) ? @@prog_id : @@prog_id= "Shell.Explorer"
      end
      alias_method :attr_prog_id, :prog_id
      
      def prog_id=(value)
        @@prog_id = value
      end
      alias_method :attr_prog_id=, :prog_id=
      
      # $NON-NLS-1$
      const_set_lazy(:BeforeNavigate2) { 0xfa }
      const_attr_reader  :BeforeNavigate2
      
      const_set_lazy(:CommandStateChange) { 0x69 }
      const_attr_reader  :CommandStateChange
      
      const_set_lazy(:DocumentComplete) { 0x103 }
      const_attr_reader  :DocumentComplete
      
      const_set_lazy(:NavigateComplete2) { 0xfc }
      const_attr_reader  :NavigateComplete2
      
      const_set_lazy(:NewWindow2) { 0xfb }
      const_attr_reader  :NewWindow2
      
      const_set_lazy(:OnMenuBar) { 0x100 }
      const_attr_reader  :OnMenuBar
      
      const_set_lazy(:OnStatusBar) { 0x101 }
      const_attr_reader  :OnStatusBar
      
      const_set_lazy(:OnToolBar) { 0xff }
      const_attr_reader  :OnToolBar
      
      const_set_lazy(:OnVisible) { 0xfe }
      const_attr_reader  :OnVisible
      
      const_set_lazy(:ProgressChange) { 0x6c }
      const_attr_reader  :ProgressChange
      
      const_set_lazy(:RegisterAsBrowser) { 0x228 }
      const_attr_reader  :RegisterAsBrowser
      
      const_set_lazy(:StatusTextChange) { 0x66 }
      const_attr_reader  :StatusTextChange
      
      const_set_lazy(:TitleChange) { 0x71 }
      const_attr_reader  :TitleChange
      
      const_set_lazy(:WindowClosing) { 0x107 }
      const_attr_reader  :WindowClosing
      
      const_set_lazy(:WindowSetHeight) { 0x10b }
      const_attr_reader  :WindowSetHeight
      
      const_set_lazy(:WindowSetLeft) { 0x108 }
      const_attr_reader  :WindowSetLeft
      
      const_set_lazy(:WindowSetResizable) { 0x106 }
      const_attr_reader  :WindowSetResizable
      
      const_set_lazy(:WindowSetTop) { 0x109 }
      const_attr_reader  :WindowSetTop
      
      const_set_lazy(:WindowSetWidth) { 0x10a }
      const_attr_reader  :WindowSetWidth
      
      const_set_lazy(:CSC_NAVIGATEFORWARD) { 1 }
      const_attr_reader  :CSC_NAVIGATEFORWARD
      
      const_set_lazy(:CSC_NAVIGATEBACK) { 2 }
      const_attr_reader  :CSC_NAVIGATEBACK
      
      const_set_lazy(:INET_E_DEFAULT_ACTION) { -0x7ff3ffef }
      const_attr_reader  :INET_E_DEFAULT_ACTION
      
      const_set_lazy(:READYSTATE_COMPLETE) { 4 }
      const_attr_reader  :READYSTATE_COMPLETE
      
      const_set_lazy(:URLPOLICY_ALLOW) { 0x0 }
      const_attr_reader  :URLPOLICY_ALLOW
      
      const_set_lazy(:URLPOLICY_DISALLOW) { 0x3 }
      const_attr_reader  :URLPOLICY_DISALLOW
      
      const_set_lazy(:URLPOLICY_JAVA_PROHIBIT) { 0x0 }
      const_attr_reader  :URLPOLICY_JAVA_PROHIBIT
      
      const_set_lazy(:URLZONE_LOCAL_MACHINE) { 0 }
      const_attr_reader  :URLZONE_LOCAL_MACHINE
      
      const_set_lazy(:URLZONE_INTRANET) { 1 }
      const_attr_reader  :URLZONE_INTRANET
      
      const_set_lazy(:URLACTION_ACTIVEX_MIN) { 0x1200 }
      const_attr_reader  :URLACTION_ACTIVEX_MIN
      
      const_set_lazy(:URLACTION_ACTIVEX_MAX) { 0x13ff }
      const_attr_reader  :URLACTION_ACTIVEX_MAX
      
      const_set_lazy(:URLACTION_ACTIVEX_RUN) { 0x1200 }
      const_attr_reader  :URLACTION_ACTIVEX_RUN
      
      const_set_lazy(:URLACTION_JAVA_MIN) { 0x1c00 }
      const_attr_reader  :URLACTION_JAVA_MIN
      
      const_set_lazy(:URLPOLICY_JAVA_LOW) { 0x30000 }
      const_attr_reader  :URLPOLICY_JAVA_LOW
      
      const_set_lazy(:URLACTION_JAVA_MAX) { 0x1cff }
      const_attr_reader  :URLACTION_JAVA_MAX
      
      const_set_lazy(:DISPID_AMBIENT_DLCONTROL) { -5512 }
      const_attr_reader  :DISPID_AMBIENT_DLCONTROL
      
      const_set_lazy(:DLCTL_DLIMAGES) { 0x10 }
      const_attr_reader  :DLCTL_DLIMAGES
      
      const_set_lazy(:DLCTL_VIDEOS) { 0x20 }
      const_attr_reader  :DLCTL_VIDEOS
      
      const_set_lazy(:DLCTL_BGSOUNDS) { 0x40 }
      const_attr_reader  :DLCTL_BGSOUNDS
      
      const_set_lazy(:DLCTL_NO_SCRIPTS) { 0x80 }
      const_attr_reader  :DLCTL_NO_SCRIPTS
      
      const_set_lazy(:DLCTL_NO_JAVA) { 0x100 }
      const_attr_reader  :DLCTL_NO_JAVA
      
      const_set_lazy(:DLCTL_NO_RUNACTIVEXCTLS) { 0x200 }
      const_attr_reader  :DLCTL_NO_RUNACTIVEXCTLS
      
      const_set_lazy(:DLCTL_NO_DLACTIVEXCTLS) { 0x400 }
      const_attr_reader  :DLCTL_NO_DLACTIVEXCTLS
      
      const_set_lazy(:DLCTL_DOWNLOADONLY) { 0x800 }
      const_attr_reader  :DLCTL_DOWNLOADONLY
      
      const_set_lazy(:DLCTL_NO_FRAMEDOWNLOAD) { 0x1000 }
      const_attr_reader  :DLCTL_NO_FRAMEDOWNLOAD
      
      const_set_lazy(:DLCTL_RESYNCHRONIZE) { 0x2000 }
      const_attr_reader  :DLCTL_RESYNCHRONIZE
      
      const_set_lazy(:DLCTL_PRAGMA_NO_CACHE) { 0x4000 }
      const_attr_reader  :DLCTL_PRAGMA_NO_CACHE
      
      const_set_lazy(:DLCTL_FORCEOFFLINE) { 0x10000000 }
      const_attr_reader  :DLCTL_FORCEOFFLINE
      
      const_set_lazy(:DLCTL_NO_CLIENTPULL) { 0x20000000 }
      const_attr_reader  :DLCTL_NO_CLIENTPULL
      
      const_set_lazy(:DLCTL_SILENT) { 0x40000000 }
      const_attr_reader  :DLCTL_SILENT
      
      const_set_lazy(:DOCHOSTUIFLAG_THEME) { 0x40000 }
      const_attr_reader  :DOCHOSTUIFLAG_THEME
      
      const_set_lazy(:DOCHOSTUIFLAG_NO3DBORDER) { 0x4 }
      const_attr_reader  :DOCHOSTUIFLAG_NO3DBORDER
      
      const_set_lazy(:DOCHOSTUIFLAG_NO3DOUTERBORDER) { 0x200000 }
      const_attr_reader  :DOCHOSTUIFLAG_NO3DOUTERBORDER
      
      const_set_lazy(:ABOUT_BLANK) { "about:blank" }
      const_attr_reader  :ABOUT_BLANK
      
      # $NON-NLS-1$
      const_set_lazy(:CLSID_SHELLEXPLORER1) { "{EAB22AC3-30C1-11CF-A7EB-0000C05BAE0B}" }
      const_attr_reader  :CLSID_SHELLEXPLORER1
      
      # $NON-NLS-1$
      const_set_lazy(:EVENT_DOUBLECLICK) { "dblclick" }
      const_attr_reader  :EVENT_DOUBLECLICK
      
      # $NON-NLS-1$
      const_set_lazy(:EVENT_DRAGEND) { "dragend" }
      const_attr_reader  :EVENT_DRAGEND
      
      # $NON-NLS-1$
      const_set_lazy(:EVENT_DRAGSTART) { "dragstart" }
      const_attr_reader  :EVENT_DRAGSTART
      
      # $NON-NLS-1$
      const_set_lazy(:EVENT_KEYDOWN) { "keydown" }
      const_attr_reader  :EVENT_KEYDOWN
      
      # $NON-NLS-1$
      const_set_lazy(:EVENT_KEYPRESS) { "keypress" }
      const_attr_reader  :EVENT_KEYPRESS
      
      # $NON-NLS-1$
      const_set_lazy(:EVENT_KEYUP) { "keyup" }
      const_attr_reader  :EVENT_KEYUP
      
      # $NON-NLS-1$
      const_set_lazy(:EVENT_MOUSEMOVE) { "mousemove" }
      const_attr_reader  :EVENT_MOUSEMOVE
      
      # $NON-NLS-1$
      const_set_lazy(:EVENT_MOUSEWHEEL) { "mousewheel" }
      const_attr_reader  :EVENT_MOUSEWHEEL
      
      # $NON-NLS-1$
      const_set_lazy(:EVENT_MOUSEUP) { "mouseup" }
      const_attr_reader  :EVENT_MOUSEUP
      
      # $NON-NLS-1$
      const_set_lazy(:EVENT_MOUSEDOWN) { "mousedown" }
      const_attr_reader  :EVENT_MOUSEDOWN
      
      # $NON-NLS-1$
      const_set_lazy(:EVENT_MOUSEOUT) { "mouseout" }
      const_attr_reader  :EVENT_MOUSEOUT
      
      # $NON-NLS-1$
      const_set_lazy(:EVENT_MOUSEOVER) { "mouseover" }
      const_attr_reader  :EVENT_MOUSEOVER
      
      # $NON-NLS-1$
      const_set_lazy(:PROPERTY_ALTKEY) { "altKey" }
      const_attr_reader  :PROPERTY_ALTKEY
      
      # $NON-NLS-1$
      const_set_lazy(:PROPERTY_BUTTON) { "button" }
      const_attr_reader  :PROPERTY_BUTTON
      
      # $NON-NLS-1$
      const_set_lazy(:PROPERTY_CLIENTX) { "clientX" }
      const_attr_reader  :PROPERTY_CLIENTX
      
      # $NON-NLS-1$
      const_set_lazy(:PROPERTY_CLIENTY) { "clientY" }
      const_attr_reader  :PROPERTY_CLIENTY
      
      # $NON-NLS-1$
      const_set_lazy(:PROPERTY_CTRLKEY) { "ctrlKey" }
      const_attr_reader  :PROPERTY_CTRLKEY
      
      # $NON-NLS-1$
      const_set_lazy(:PROPERTY_FROMELEMENT) { "fromElement" }
      const_attr_reader  :PROPERTY_FROMELEMENT
      
      # $NON-NLS-1$
      const_set_lazy(:PROPERTY_KEYCODE) { "keyCode" }
      const_attr_reader  :PROPERTY_KEYCODE
      
      # $NON-NLS-1$
      const_set_lazy(:PROPERTY_REPEAT) { "repeat" }
      const_attr_reader  :PROPERTY_REPEAT
      
      # $NON-NLS-1$
      const_set_lazy(:PROPERTY_RETURNVALUE) { "returnValue" }
      const_attr_reader  :PROPERTY_RETURNVALUE
      
      # $NON-NLS-1$
      const_set_lazy(:PROPERTY_SHIFTKEY) { "shiftKey" }
      const_attr_reader  :PROPERTY_SHIFTKEY
      
      # $NON-NLS-1$
      const_set_lazy(:PROPERTY_TOELEMENT) { "toElement" }
      const_attr_reader  :PROPERTY_TOELEMENT
      
      # $NON-NLS-1$
      const_set_lazy(:PROPERTY_TYPE) { "type" }
      const_attr_reader  :PROPERTY_TYPE
      
      # $NON-NLS-1$
      const_set_lazy(:PROPERTY_WHEELDELTA) { "wheelDelta" }
      const_attr_reader  :PROPERTY_WHEELDELTA
      
      # $NON-NLS-1$
      when_class_loaded do
        NativeClearSessions = Class.new(Runnable.class == Class ? Runnable : Object) do
          extend LocalClass
          include_class_members IE
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            OS._internet_set_option(0, OS::INTERNET_OPTION_END_BROWSER_SESSION, 0, 0)
          end
          
          typesig { [] }
          define_method :initialize do
            super()
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        # Registry entry HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Version indicates
        # which version of IE is installed.  Check this value in order to determine version-specific
        # features that can be enabled.
        key = TCHAR.new(0, "Software\\Microsoft\\Internet Explorer", true) # $NON-NLS-1$
        # long
        # long
        phk_result = Array.typed(::Java::Int).new(1) { 0 }
        if ((OS._reg_open_key_ex(OS::HKEY_LOCAL_MACHINE, key, 0, OS::KEY_READ, phk_result)).equal?(0))
          lpcb_data = Array.typed(::Java::Int).new(1) { 0 }
          buffer = TCHAR.new(0, "Version", true) # $NON-NLS-1$
          result = OS._reg_query_value_ex(phk_result[0], buffer, 0, nil, nil, lpcb_data)
          if ((result).equal?(0))
            lp_data = TCHAR.new(0, lpcb_data[0] / TCHAR.attr_sizeof)
            result = OS._reg_query_value_ex(phk_result[0], buffer, 0, nil, lp_data, lpcb_data)
            if ((result).equal?(0))
              version_string = lp_data.to_s(0, lp_data.strlen)
              index = version_string.index_of(".") # $NON-NLS-1$
              if (!(index).equal?(-1))
                major_string = version_string.substring(0, index)
                major = 0
                begin
                  major = JavaInteger.value_of(major_string).int_value
                rescue NumberFormatException => e
                  # just continue, version-specific features will not be enabled
                end
                if (major >= 7)
                  self.attr_silence_internal_navigate = true
                end
              end
            end
          end
          OS._reg_close_key(phk_result[0])
        end
        # Registry entry HKEY_CLASSES_ROOT\Shell.Explorer\CLSID indicates which version of
        # Shell.Explorer to use by default.  We usually want to use this value because it
        # typically points at the newest one that is available.  However it is possible for
        # this registry entry to be changed by another application to point at some other
        # Shell.Explorer version.
        # 
        # The Browser depends on the Shell.Explorer version being at least Shell.Explorer.2.
        # If it is detected in the registry to be Shell.Explorer.1 then change the progId that
        # will be embedded to explicitly specify Shell.Explorer.2.
        key = TCHAR.new(0, "Shell.Explorer\\CLSID", true) # $NON-NLS-1$
        # long
        phk_result = Array.typed(::Java::Int).new(1) { 0 }
        if ((OS._reg_open_key_ex(OS::HKEY_CLASSES_ROOT, key, 0, OS::KEY_READ, phk_result)).equal?(0))
          lpcb_data = Array.typed(::Java::Int).new(1) { 0 }
          result = OS._reg_query_value_ex(phk_result[0], nil, 0, nil, nil, lpcb_data)
          if ((result).equal?(0))
            lp_data = TCHAR.new(0, lpcb_data[0] / TCHAR.attr_sizeof)
            result = OS._reg_query_value_ex(phk_result[0], nil, 0, nil, lp_data, lpcb_data)
            if ((result).equal?(0))
              clsid = lp_data.to_s(0, lp_data.strlen)
              if ((clsid == CLSID_SHELLEXPLORER1))
                # Shell.Explorer.1 is the default, ensure that Shell.Explorer.2 is available
                key = TCHAR.new(0, "Shell.Explorer.2", true) # $NON-NLS-1$
                # long
                # long
                phk_result2 = Array.typed(::Java::Int).new(1) { 0 }
                if ((OS._reg_open_key_ex(OS::HKEY_CLASSES_ROOT, key, 0, OS::KEY_READ, phk_result2)).equal?(0))
                  # specify that Shell.Explorer.2 is to be used
                  OS._reg_close_key(phk_result2[0])
                  self.attr_prog_id = "Shell.Explorer.2" # $NON-NLS-1$
                end
              end
            end
          end
          OS._reg_close_key(phk_result[0])
        end
      end
    }
    
    typesig { [Composite, ::Java::Int] }
    def create(parent, style)
      @style = style
      @frame = OleFrame.new(self.attr_browser, SWT::NONE)
      begin
        @site = WebSite.new(@frame, SWT::NONE, self.attr_prog_id) # $NON-NLS-1$
      rescue SWTException => e
        self.attr_browser.dispose
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      @site.do_verb(OLE::OLEIVERB_INPLACEACTIVATE)
      @auto = OleAutomation.new(@site)
      @dom_listener = Class.new(OleListener.class == Class ? OleListener : Object) do
        extend LocalClass
        include_class_members IE
        include OleListener if OleListener.class == Module
        
        typesig { [OleEvent] }
        define_method :handle_event do |e|
          handle_domevent(e)
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members IE
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |e|
          catch(:break_case) do
            case (e.attr_type)
            # FocusIn and Traverse are hooked to handle traversal into
            # and out of the Browser when it has key listeners.
            when SWT::Dispose
              # make this handler run after other dispose listeners
              if (self.attr_ignore_dispose)
                self.attr_ignore_dispose = false
                throw :break_case, :thrown
              end
              self.attr_ignore_dispose = true
              self.attr_browser.notify_listeners(e.attr_type, e)
              e.attr_type = SWT::NONE
              # It is possible for the Browser's OLE frame to have been disposed
              # by a Dispose listener that was invoked by notifyListeners above,
              # so check for this before unhooking its DOM listeners.
              if (!self.attr_frame.is_disposed)
                unhook_domlisteners(self.attr_documents)
              end
              i = 0
              while i < self.attr_documents.attr_length
                self.attr_documents[i].dispose
                i += 1
              end
              self.attr_documents = nil
              self.attr_dom_listener = nil
              if (!(self.attr_auto).nil?)
                self.attr_auto.dispose
              end
              self.attr_auto = nil
            when SWT::Resize
              self.attr_frame.set_bounds(self.attr_browser.get_client_area)
            when SWT::MouseWheel
              # MouseWheel events come from the DOM
              e.attr_doit = false
            when SWT::FocusIn
              self.attr_site.set_focus
            when SWT::Traverse
              if (self.attr_browser.is_listening(SWT::KeyDown) || self.attr_browser.is_listening(SWT::KeyUp))
                if ((e.attr_detail).equal?(SWT::TRAVERSE_TAB_PREVIOUS))
                  self.attr_browser.traverse(SWT::TRAVERSE_TAB_PREVIOUS)
                  e.attr_doit = false
                end
              end
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
      self.attr_browser.add_listener(SWT::Resize, listener)
      @site.add_listener(SWT::MouseWheel, listener)
      @site.add_listener(SWT::Traverse, listener)
      ole_listener = Class.new(OleListener.class == Class ? OleListener : Object) do
        extend LocalClass
        include_class_members IE
        include OleListener if OleListener.class == Module
        
        typesig { [OleEvent] }
        define_method :handle_event do |event|
          # callbacks are asynchronous, auto could be disposed
          if (!(self.attr_auto).nil?)
            case (event.attr_type)
            when BeforeNavigate2
              var_result = event.attr_arguments[1]
              url = var_result.get_string
              new_event = LocationEvent.new(self.attr_browser)
              new_event.attr_display = self.attr_browser.get_display
              new_event.attr_widget = self.attr_browser
              new_event.attr_location = url
              new_event.attr_doit = true
              i = 0
              while i < self.attr_location_listeners.attr_length
                self.attr_location_listeners[i].changing(new_event)
                i += 1
              end
              doit = new_event.attr_doit && !self.attr_browser.is_disposed
              cancel = event.attr_arguments[6]
              if (!(cancel).nil?)
                # long
                p_cancel = cancel.get_by_ref
                COM._move_memory(p_cancel, Array.typed(::Java::Short).new([doit ? COM::VARIANT_FALSE : COM::VARIANT_TRUE]), 2)
              end
              if (doit)
                var_result = event.attr_arguments[0]
                dispatch = var_result.get_dispatch
                variant = Variant.new(self.attr_auto)
                top = variant.get_dispatch
                is_top = (top.get_address).equal?(dispatch.get_address)
                if (is_top)
                  # unhook DOM listeners and unref the last document(s)
                  unhook_domlisteners(self.attr_documents)
                  i_ = 0
                  while i_ < self.attr_documents.attr_length
                    self.attr_documents[i_].dispose
                    i_ += 1
                  end
                  self.attr_documents = Array.typed(OleAutomation).new(0) { nil }
                end
              end
            when CommandStateChange
              enabled = false
              var_result = event.attr_arguments[0]
              command = var_result.get_int
              var_result = event.attr_arguments[1]
              enabled = var_result.get_boolean
              case (command)
              when CSC_NAVIGATEBACK
                self.attr_back = enabled
              when CSC_NAVIGATEFORWARD
                self.attr_forward = enabled
              end
            when DocumentComplete
              var_result = event.attr_arguments[0]
              dispatch = var_result.get_dispatch
              var_result = event.attr_arguments[1]
              url = var_result.get_string
              if (!(self.attr_html).nil? && (url == ABOUT_BLANK))
                ole_listener_class = self.class
                runnable = Class.new(Runnable.class == Class ? Runnable : Object) do
                  extend LocalClass
                  include_class_members ole_listener_class
                  include Runnable if Runnable.class == Module
                  
                  typesig { [] }
                  define_method :run do
                    if (self.attr_browser.is_disposed || (self.attr_html).nil?)
                      return
                    end
                    char_count = self.attr_html.length
                    chars = CharArray.new(char_count)
                    self.attr_html.get_chars(0, char_count, chars, 0)
                    self.attr_html = nil
                    byte_count = OS._wide_char_to_multi_byte(OS::CP_UTF8, 0, chars, char_count, nil, 0, nil, nil)
                    # Note. Internet Explorer appears to treat the data loaded with
                    # nsIPersistStreamInit.Load as if it were encoded using the default
                    # local charset.  There does not seem to be an API to set the
                    # desired charset explicitly in this case.  The fix is to
                    # prepend the UTF-8 Byte Order Mark signature to the data.
                    utf8bom = Array.typed(::Java::Byte).new([0xef, 0xbb, 0xbf])
                    # long
                    h_global = OS._global_alloc(OS::GMEM_FIXED | OS::GMEM_ZEROINIT, utf8bom.attr_length + byte_count)
                    if (!(h_global).equal?(0))
                      OS._move_memory(h_global, utf8bom, utf8bom.attr_length)
                      OS._wide_char_to_multi_byte(OS::CP_UTF8, 0, chars, char_count, h_global + utf8bom.attr_length, byte_count, nil, nil)
                      # long
                      # long
                      ppstm = Array.typed(::Java::Int).new(1) { 0 }
                      # Note.  CreateStreamOnHGlobal is called with the flag fDeleteOnRelease.
                      # If the call succeeds the buffer hGlobal is freed automatically
                      # when the IStream object is released. If the call fails, free the buffer
                      # hGlobal.
                      if ((OS._create_stream_on_hglobal(h_global, true, ppstm)).equal?(OS::S_OK))
                        rgdispid = self.attr_auto.get_ids_of_names(Array.typed(String).new(["Document"])) # $NON-NLS-1$
                        p_var_result = self.attr_auto.get_property(rgdispid[0])
                        dispatch_document = p_var_result.get_dispatch
                        # long
                        # long
                        ppv_object = Array.typed(::Java::Int).new(1) { 0 }
                        result = dispatch_document._query_interface(COM::IIDIPersistStreamInit, ppv_object)
                        if ((result).equal?(OS::S_OK))
                          persist_stream_init = IPersistStreamInit.new(ppv_object[0])
                          if ((persist_stream_init._init_new).equal?(OS::S_OK))
                            persist_stream_init._load(ppstm[0])
                          end
                          persist_stream_init._release
                        end
                        p_var_result.dispose
                        # This code is intentionally commented.  The IDispatch obtained from a Variant
                        # did not increase the reference count for the enclosed interface.
                        # 
                        # dispatchDocument.Release();
                        stream = IUnknown.new(ppstm[0])
                        stream._release
                      else
                        OS._global_free(h_global)
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
                if (self.attr_delay_set_text)
                  self.attr_delay_set_text = false
                  self.attr_browser.get_display.async_exec(runnable)
                else
                  runnable.run
                end
              else
                variant = Variant.new(self.attr_auto)
                top = variant.get_dispatch
                location_event = LocationEvent.new(self.attr_browser)
                location_event.attr_display = self.attr_browser.get_display
                location_event.attr_widget = self.attr_browser
                location_event.attr_location = url
                location_event.attr_top = (top.get_address).equal?(dispatch.get_address)
                i = 0
                while i < self.attr_location_listeners.attr_length
                  self.attr_location_listeners[i].changed(location_event)
                  i += 1
                end
                if (self.attr_browser.is_disposed)
                  return
                end
                # This code is intentionally commented.  A Variant constructed from an
                # OleAutomation object does not increase its reference count.  The IDispatch
                # obtained from this Variant did not increase the reference count for the
                # OleAutomation instance either.
                # 
                # top.Release();
                # variant.dispose();
                # 
                # Note.  The completion of the page loading is detected as
                # described in the MSDN article "Determine when a page is
                # done loading in WebBrowser Control".
                if (!(self.attr_global_dispatch).equal?(0) && (dispatch.get_address).equal?(self.attr_global_dispatch))
                  # final document complete
                  self.attr_global_dispatch = 0
                  progress_event = ProgressEvent.new(self.attr_browser)
                  progress_event.attr_display = self.attr_browser.get_display
                  progress_event.attr_widget = self.attr_browser
                  i_ = 0
                  while i_ < self.attr_progress_listeners.attr_length
                    self.attr_progress_listeners[i_].completed(progress_event)
                    i_ += 1
                  end
                end
              end
              # This code is intentionally commented.  This IDispatch was received
              # as an argument from the OleEvent and it will be disposed along with
              # the other arguments.
              # 
              # dispatch.Release();
            when NavigateComplete2
              var_result = event.attr_arguments[0]
              dispatch = var_result.get_dispatch
              if ((self.attr_global_dispatch).equal?(0))
                self.attr_global_dispatch = dispatch.get_address
              end
              web_browser = var_result.get_automation
              var_result = event.attr_arguments[1]
              variant = Variant.new(self.attr_auto)
              top = variant.get_dispatch
              is_top = (top.get_address).equal?(dispatch.get_address)
              hook_domlisteners(web_browser, is_top)
              web_browser.dispose
            when NewWindow2
              cancel = event.attr_arguments[1]
              # long
              p_cancel = cancel.get_by_ref
              new_event = WindowEvent.new(self.attr_browser)
              new_event.attr_display = self.attr_browser.get_display
              new_event.attr_widget = self.attr_browser
              new_event.attr_required = false
              i = 0
              while i < self.attr_open_window_listeners.attr_length
                self.attr_open_window_listeners[i].open(new_event)
                i += 1
              end
              browser = nil
              if (!(new_event.attr_browser).nil? && new_event.attr_browser.attr_web_browser.is_a?(IE))
                browser = new_event.attr_browser.attr_web_browser
              end
              doit = !(browser).nil? && !browser.attr_browser.is_disposed
              if (doit)
                variant = Variant.new(browser.attr_auto)
                i_dispatch = variant.get_dispatch
                pp_disp = event.attr_arguments[0]
                # long
                byref = pp_disp.get_by_ref
                if (!(byref).equal?(0))
                  # long
                  COM._move_memory(byref, Array.typed(::Java::Int).new([i_dispatch.get_address]), OS::PTR_SIZEOF)
                end
                # This code is intentionally commented.  A Variant constructed from an
                # OleAutomation object does not increase its reference count.  The IDispatch
                # obtained from this Variant did not increase the reference count for the
                # OleAutomation instance either.
                # 
                # variant.dispose();
                # iDispatch.Release();
              end
              if (new_event.attr_required)
                COM._move_memory(p_cancel, Array.typed(::Java::Short).new([doit ? COM::VARIANT_FALSE : COM::VARIANT_TRUE]), 2)
              end
            when OnMenuBar
              arg0 = event.attr_arguments[0]
              self.attr_menu_bar = arg0.get_boolean
            when OnStatusBar
              arg0 = event.attr_arguments[0]
              self.attr_status_bar = arg0.get_boolean
            when OnToolBar
              arg0 = event.attr_arguments[0]
              self.attr_tool_bar = arg0.get_boolean
              # Feature in Internet Explorer.  OnToolBar FALSE is emitted
              # when both tool bar, address bar and menu bar must not be visible.
              # OnToolBar TRUE is emitted when either of tool bar, address bar
              # or menu bar is visible.
              if (!self.attr_tool_bar)
                self.attr_address_bar = false
                self.attr_menu_bar = false
              end
            when OnVisible
              arg1 = event.attr_arguments[0]
              visible = arg1.get_boolean
              new_event = WindowEvent.new(self.attr_browser)
              new_event.attr_display = self.attr_browser.get_display
              new_event.attr_widget = self.attr_browser
              if (visible)
                if (self.attr_address_bar)
                  # Bug in Internet Explorer.  There is no distinct notification for
                  # the address bar.  If neither address, menu or tool bars are visible,
                  # OnToolBar FALSE is emitted. For some reason, querying the value of
                  # AddressBar in this case returns true even though it should not be
                  # set visible.  The workaround is to only query the value of AddressBar
                  # when OnToolBar FALSE has not been emitted.
                  rgdispid = self.attr_auto.get_ids_of_names(Array.typed(String).new(["AddressBar"])) # $NON-NLS-1$
                  p_var_result = self.attr_auto.get_property(rgdispid[0])
                  if (!(p_var_result).nil? && (p_var_result.get_type).equal?(OLE::VT_BOOL))
                    self.attr_address_bar = p_var_result.get_boolean
                  end
                end
                new_event.attr_address_bar = self.attr_address_bar
                new_event.attr_menu_bar = self.attr_menu_bar
                new_event.attr_status_bar = self.attr_status_bar
                new_event.attr_tool_bar = self.attr_tool_bar
                new_event.attr_location = self.attr_location
                new_event.attr_size = self.attr_size
                i = 0
                while i < self.attr_visibility_window_listeners.attr_length
                  self.attr_visibility_window_listeners[i].show(new_event)
                  i += 1
                end
                self.attr_location = nil
                self.attr_size = nil
              else
                i = 0
                while i < self.attr_visibility_window_listeners.attr_length
                  self.attr_visibility_window_listeners[i].hide(new_event)
                  i += 1
                end
              end
            when ProgressChange
              arg1 = event.attr_arguments[0]
              n_progress = !(arg1.get_type).equal?(OLE::VT_I4) ? 0 : arg1.get_int # may be -1
              arg2 = event.attr_arguments[1]
              n_progress_max = !(arg2.get_type).equal?(OLE::VT_I4) ? 0 : arg2.get_int
              new_event = ProgressEvent.new(self.attr_browser)
              new_event.attr_display = self.attr_browser.get_display
              new_event.attr_widget = self.attr_browser
              new_event.attr_current = n_progress
              new_event.attr_total = n_progress_max
              if (!(n_progress).equal?(-1))
                i = 0
                while i < self.attr_progress_listeners.attr_length
                  self.attr_progress_listeners[i].changed(new_event)
                  i += 1
                end
              end
            when StatusTextChange
              arg1 = event.attr_arguments[0]
              if ((arg1.get_type).equal?(OLE::VT_BSTR))
                text = arg1.get_string
                new_event = StatusTextEvent.new(self.attr_browser)
                new_event.attr_display = self.attr_browser.get_display
                new_event.attr_widget = self.attr_browser
                new_event.attr_text = text
                i = 0
                while i < self.attr_status_text_listeners.attr_length
                  self.attr_status_text_listeners[i].changed(new_event)
                  i += 1
                end
              end
            when TitleChange
              arg1 = event.attr_arguments[0]
              if ((arg1.get_type).equal?(OLE::VT_BSTR))
                title = arg1.get_string
                new_event = TitleEvent.new(self.attr_browser)
                new_event.attr_display = self.attr_browser.get_display
                new_event.attr_widget = self.attr_browser
                new_event.attr_title = title
                i = 0
                while i < self.attr_title_listeners.attr_length
                  self.attr_title_listeners[i].changed(new_event)
                  i += 1
                end
              end
            when WindowClosing
              # Disposing the Browser directly from this callback will crash if the
              # Browser has a text field with an active caret.  As a workaround fire
              # the Close event and dispose the Browser in an async block.
              ole_listener_class = self.class
              self.attr_browser.get_display.async_exec(Class.new(Runnable.class == Class ? Runnable : Object) do
                extend LocalClass
                include_class_members ole_listener_class
                include Runnable if Runnable.class == Module
                
                typesig { [] }
                define_method :run do
                  if (self.attr_browser.is_disposed)
                    return
                  end
                  new_event = WindowEvent.new(self.attr_browser)
                  new_event.attr_display = self.attr_browser.get_display
                  new_event.attr_widget = self.attr_browser
                  i = 0
                  while i < self.attr_close_window_listeners.attr_length
                    self.attr_close_window_listeners[i].close(new_event)
                    i += 1
                  end
                  self.attr_browser.dispose
                end
                
                typesig { [] }
                define_method :initialize do
                  super()
                end
                
                private
                alias_method :initialize_anonymous, :initialize
              end.new_local(self))
              cancel = event.attr_arguments[1]
              # long
              p_cancel = cancel.get_by_ref
              arg1 = event.attr_arguments[0]
              is_child_window = arg1.get_boolean
              COM._move_memory(p_cancel, Array.typed(::Java::Short).new([is_child_window ? COM::VARIANT_FALSE : COM::VARIANT_TRUE]), 2)
            when WindowSetHeight
              if ((self.attr_size).nil?)
                self.attr_size = Point.new(0, 0)
              end
              arg1 = event.attr_arguments[0]
              self.attr_size.attr_y = arg1.get_int
            when WindowSetLeft
              if ((self.attr_location).nil?)
                self.attr_location = Point.new(0, 0)
              end
              arg1 = event.attr_arguments[0]
              self.attr_location.attr_x = arg1.get_int
            when WindowSetTop
              if ((self.attr_location).nil?)
                self.attr_location = Point.new(0, 0)
              end
              arg1 = event.attr_arguments[0]
              self.attr_location.attr_y = arg1.get_int
            when WindowSetWidth
              if ((self.attr_size).nil?)
                self.attr_size = Point.new(0, 0)
              end
              arg1 = event.attr_arguments[0]
              self.attr_size.attr_x = arg1.get_int
            end
          end
          # Dispose all arguments passed in the OleEvent.  This must be
          # done to properly release any IDispatch reference that was
          # automatically addRef'ed when constructing the OleEvent.
          arguments = event.attr_arguments
          i = 0
          while i < arguments.attr_length
            arguments[i].dispose
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
      @site.add_event_listener(BeforeNavigate2, ole_listener)
      @site.add_event_listener(CommandStateChange, ole_listener)
      @site.add_event_listener(DocumentComplete, ole_listener)
      @site.add_event_listener(NavigateComplete2, ole_listener)
      @site.add_event_listener(NewWindow2, ole_listener)
      @site.add_event_listener(OnMenuBar, ole_listener)
      @site.add_event_listener(OnStatusBar, ole_listener)
      @site.add_event_listener(OnToolBar, ole_listener)
      @site.add_event_listener(OnVisible, ole_listener)
      @site.add_event_listener(ProgressChange, ole_listener)
      @site.add_event_listener(StatusTextChange, ole_listener)
      @site.add_event_listener(TitleChange, ole_listener)
      @site.add_event_listener(WindowClosing, ole_listener)
      @site.add_event_listener(WindowSetHeight, ole_listener)
      @site.add_event_listener(WindowSetLeft, ole_listener)
      @site.add_event_listener(WindowSetTop, ole_listener)
      @site.add_event_listener(WindowSetWidth, ole_listener)
      variant = Variant.new(true)
      @auto.set_property(RegisterAsBrowser, variant)
      variant.dispose
      variant = Variant.new(false)
      rgdispid = @auto.get_ids_of_names(Array.typed(String).new(["RegisterAsDropTarget"])) # $NON-NLS-1$
      if (!(rgdispid).nil?)
        @auto.set_property(rgdispid[0], variant)
      end
      variant.dispose
    end
    
    typesig { [] }
    def back
      if (!@back)
        return false
      end
      rgdispid = @auto.get_ids_of_names(Array.typed(String).new(["GoBack"])) # $NON-NLS-1$
      p_var_result = @auto.invoke(rgdispid[0])
      return !(p_var_result).nil? && (p_var_result.get_type).equal?(OLE::VT_EMPTY)
    end
    
    typesig { [String] }
    def execute(script)
      # get IHTMLDocument2
      rgdispid = @auto.get_ids_of_names(Array.typed(String).new(["Document"])) # $NON-NLS-1$
      disp_id_member = rgdispid[0]
      p_var_result = @auto.get_property(disp_id_member)
      if ((p_var_result).nil? || (p_var_result.get_type).equal?(COM::VT_EMPTY))
        return false
      end
      document = p_var_result.get_automation
      p_var_result.dispose
      # get IHTMLWindow2
      rgdispid = document.get_ids_of_names(Array.typed(String).new(["parentWindow"])) # $NON-NLS-1$
      if ((rgdispid).nil?)
        # implies that browser's content is not a IHTMLDocument2 (eg.- acrobat reader)
        document.dispose
        return false
      end
      disp_id_member = rgdispid[0]
      p_var_result = document.get_property(disp_id_member)
      ihtml_window2 = p_var_result.get_automation
      p_var_result.dispose
      document.dispose
      rgdispid = ihtml_window2.get_ids_of_names(Array.typed(String).new(["execScript", "code"])) # $NON-NLS-1$  //$NON-NLS-2$
      rgvarg = Array.typed(Variant).new(1) { nil }
      rgvarg[0] = Variant.new(script)
      rgdispid_named_args = Array.typed(::Java::Int).new(1) { 0 }
      rgdispid_named_args[0] = rgdispid[1]
      p_var_result = ihtml_window2.invoke(rgdispid[0], rgvarg, rgdispid_named_args)
      rgvarg[0].dispose
      ihtml_window2.dispose
      if ((p_var_result).nil?)
        return false
      end
      p_var_result.dispose
      return true
    end
    
    typesig { [] }
    def forward
      if (!@forward)
        return false
      end
      rgdispid = @auto.get_ids_of_names(Array.typed(String).new(["GoForward"])) # $NON-NLS-1$
      p_var_result = @auto.invoke(rgdispid[0])
      return !(p_var_result).nil? && (p_var_result.get_type).equal?(OLE::VT_EMPTY)
    end
    
    typesig { [] }
    def get_text
      # get the document object
      rgdispid = @auto.get_ids_of_names(Array.typed(String).new(["Document"])) # $NON-NLS-1$
      p_var_result = @auto.get_property(rgdispid[0])
      if ((p_var_result).nil? || (p_var_result.get_type).equal?(COM::VT_EMPTY))
        return ""
      end # $NON-NLS-1$
      document = p_var_result.get_automation
      p_var_result.dispose
      # get the html object
      rgdispid = document.get_ids_of_names(Array.typed(String).new(["documentElement"])) # $NON-NLS-1$
      if ((rgdispid).nil?)
        # implies that the browser is displaying non-HTML content
        document.dispose
        return "" # $NON-NLS-1$
      end
      p_var_result = document.get_property(rgdispid[0])
      document.dispose
      if ((p_var_result).nil? || (p_var_result.get_type).equal?(COM::VT_EMPTY))
        return ""
      end # $NON-NLS-1$
      element = p_var_result.get_automation
      p_var_result.dispose
      # get its outerHTML property
      rgdispid = element.get_ids_of_names(Array.typed(String).new(["outerHTML"])) # $NON-NLS-1$
      p_var_result = element.get_property(rgdispid[0])
      element.dispose
      if ((p_var_result).nil? || (p_var_result.get_type).equal?(COM::VT_EMPTY))
        return ""
      end # $NON-NLS-1$
      result = p_var_result.get_string
      p_var_result.dispose
      return result
    end
    
    typesig { [] }
    def get_url
      rgdispid = @auto.get_ids_of_names(Array.typed(String).new(["LocationURL"])) # $NON-NLS-1$
      p_var_result = @auto.get_property(rgdispid[0])
      if ((p_var_result).nil? || !(p_var_result.get_type).equal?(OLE::VT_BSTR))
        return ""
      end
      result = p_var_result.get_string
      p_var_result.dispose
      return result
    end
    
    typesig { [] }
    def is_back_enabled
      return @back
    end
    
    typesig { [] }
    def is_forward_enabled
      return @forward
    end
    
    typesig { [] }
    def is_focus_control
      return @site.is_focus_control || @frame.is_focus_control
    end
    
    typesig { [] }
    def refresh
      rgdispid = @auto.get_ids_of_names(Array.typed(String).new(["Refresh"])) # $NON-NLS-1$
      @auto.invoke(rgdispid[0])
    end
    
    typesig { [String] }
    def set_text(html)
      # If the html field is non-null then the about:blank page is already being
      # loaded, so no Stop or Navigate is required.  Just set the html that is to
      # be shown.
      blank_loading = !(@html).nil?
      @html = html
      if (blank_loading)
        return true
      end
      # Navigate to the blank page and insert the given html when
      # receiving the next DocumentComplete notification.  See the
      # MSDN article "Loading HTML content from a Stream".
      # 
      # Note.  Stop any pending request.  This is required to avoid displaying a
      # blank page as a result of consecutive calls to setUrl and/or setText.
      # The previous request would otherwise render the new html content and
      # reset the html field before the browser actually navigates to the blank
      # page as requested below.
      # 
      # Feature in Internet Explorer.  Stopping pending requests when no request
      # is pending causes a default page 'Action cancelled' to be displayed.  The
      # workaround is to not invoke 'stop' when no request has been set since
      # that instance was created.
      rgdispid = nil
      if (@navigate)
        # Stopping the loading of a page causes DocumentComplete events from previous
        # requests to be received before the DocumentComplete for this page.  In such
        # cases we must be sure to not set the html into the browser too soon, since
        # doing so could result in its page being cleared out by a subsequent
        # DocumentComplete.  The Browser's ReadyState can be used to determine whether
        # these extra events will be received or not.
        rgdispid = @auto.get_ids_of_names(Array.typed(String).new(["ReadyState"])) # $NON-NLS-1$
        p_var_result = @auto.get_property(rgdispid[0])
        if ((p_var_result).nil?)
          return false
        end
        @delay_set_text = !(p_var_result.get_int).equal?(READYSTATE_COMPLETE)
        p_var_result.dispose
        rgdispid = @auto.get_ids_of_names(Array.typed(String).new(["Stop"])) # $NON-NLS-1$
        @auto.invoke(rgdispid[0])
      end
      rgdispid = @auto.get_ids_of_names(Array.typed(String).new(["Navigate", "URL"])) # $NON-NLS-1$ //$NON-NLS-2$
      @navigate = true
      rgvarg = Array.typed(Variant).new(1) { nil }
      rgvarg[0] = Variant.new(ABOUT_BLANK)
      rgdispid_named_args = Array.typed(::Java::Int).new(1) { 0 }
      rgdispid_named_args[0] = rgdispid[1]
      old_value = false
      if (!OS::IsWinCE && self.attr_silence_internal_navigate)
        h_result = OS._co_internet_is_feature_enabled(OS::FEATURE_DISABLE_NAVIGATION_SOUNDS, OS::GET_FEATURE_FROM_PROCESS)
        old_value = (h_result).equal?(COM::S_OK)
        OS._co_internet_set_feature_enabled(OS::FEATURE_DISABLE_NAVIGATION_SOUNDS, OS::SET_FEATURE_ON_PROCESS, true)
      end
      p_var_result = @auto.invoke(rgdispid[0], rgvarg, rgdispid_named_args)
      if (!OS::IsWinCE && self.attr_silence_internal_navigate)
        OS._co_internet_set_feature_enabled(OS::FEATURE_DISABLE_NAVIGATION_SOUNDS, OS::SET_FEATURE_ON_PROCESS, old_value)
      end
      rgvarg[0].dispose
      if ((p_var_result).nil?)
        return false
      end
      result = (p_var_result.get_type).equal?(OLE::VT_EMPTY)
      p_var_result.dispose
      return result
    end
    
    typesig { [String] }
    def set_url(url)
      @html = (nil).to_s
      # Bug in Internet Explorer.  For some reason, Navigating to an xml document before
      # a previous Navigate has completed will leave the Browser in a bad state if the
      # Navigate to the xml document does not complete.  This bad state causes a GP when
      # the parent window is eventually disposed.  The workaround is to issue a Stop before
      # navigating to any xml document.
      if (url.ends_with(".xml"))
        # $NON-NLS-1$
        # 
        # Feature in Internet Explorer.  Stopping pending requests when no request has been
        # issued causes a default 'Action cancelled' page to be displayed.  Since Stop must
        # be issued here, the workaround is to first Navigate to the about:blank page before
        # issuing Stop so that the 'Action cancelled' page is not displayed.
        if (!@navigate)
          rgdispid = @auto.get_ids_of_names(Array.typed(String).new(["Navigate", "URL"])) # $NON-NLS-1$ //$NON-NLS-2$
          rgvarg = Array.typed(Variant).new(1) { nil }
          rgvarg[0] = Variant.new(ABOUT_BLANK)
          rgdispid_named_args = Array.typed(::Java::Int).new(1) { 0 }
          rgdispid_named_args[0] = rgdispid[1]
          old_value = false
          if (!OS::IsWinCE && self.attr_silence_internal_navigate)
            h_result = OS._co_internet_is_feature_enabled(OS::FEATURE_DISABLE_NAVIGATION_SOUNDS, OS::GET_FEATURE_FROM_PROCESS)
            old_value = (h_result).equal?(COM::S_OK)
            OS._co_internet_set_feature_enabled(OS::FEATURE_DISABLE_NAVIGATION_SOUNDS, OS::SET_FEATURE_ON_PROCESS, true)
          end
          @auto.invoke(rgdispid[0], rgvarg, rgdispid_named_args)
          if (!OS::IsWinCE && self.attr_silence_internal_navigate)
            OS._co_internet_set_feature_enabled(OS::FEATURE_DISABLE_NAVIGATION_SOUNDS, OS::SET_FEATURE_ON_PROCESS, old_value)
          end
          rgvarg[0].dispose
        end
        rgdispid = @auto.get_ids_of_names(Array.typed(String).new(["Stop"])) # $NON-NLS-1$
        @auto.invoke(rgdispid[0])
      end
      rgdispid = @auto.get_ids_of_names(Array.typed(String).new(["Navigate", "URL"])) # $NON-NLS-1$ //$NON-NLS-2$
      @navigate = true
      rgvarg = Array.typed(Variant).new(1) { nil }
      rgvarg[0] = Variant.new(url)
      rgdispid_named_args = Array.typed(::Java::Int).new(1) { 0 }
      rgdispid_named_args[0] = rgdispid[1]
      p_var_result = @auto.invoke(rgdispid[0], rgvarg, rgdispid_named_args)
      rgvarg[0].dispose
      if ((p_var_result).nil?)
        return false
      end
      result = (p_var_result.get_type).equal?(OLE::VT_EMPTY)
      p_var_result.dispose
      return result
    end
    
    typesig { [] }
    def stop
      rgdispid = @auto.get_ids_of_names(Array.typed(String).new(["Stop"])) # $NON-NLS-1$
      @auto.invoke(rgdispid[0])
    end
    
    typesig { [OleEvent] }
    def handle_domevent(e)
      if ((e.attr_arguments).nil? || (e.attr_arguments.attr_length).equal?(0))
        return
      end
      # for IE5
      arg = e.attr_arguments[0]
      event = arg.get_automation
      rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_TYPE]))
      disp_id_member = rgdispid[0]
      p_var_result = event.get_property(disp_id_member)
      event_type = p_var_result.get_string
      p_var_result.dispose
      if ((event_type == EVENT_KEYDOWN))
        rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_KEYCODE]))
        disp_id_member = rgdispid[0]
        p_var_result = event.get_property(disp_id_member)
        @last_key_code = translate_key(p_var_result.get_int)
        p_var_result.dispose
        msg = MSG.new
        flags = OS::PM_NOREMOVE | OS::PM_NOYIELD
        if (OS._peek_message(msg, @frame.attr_handle, OS::WM_CHAR, OS::WM_CHAR, flags))
          # a keypress will be received for this key so don't send KeyDown here
          event.dispose
          return
        end
        # if this is a repeating key then an event should not be fired for it
        rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_REPEAT]))
        disp_id_member = rgdispid[0]
        p_var_result = event.get_property(disp_id_member)
        repeating = p_var_result.get_boolean
        p_var_result.dispose
        if (repeating)
          event.dispose
          return
        end
        mask = 0
        rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_ALTKEY]))
        disp_id_member = rgdispid[0]
        p_var_result = event.get_property(disp_id_member)
        if (p_var_result.get_boolean)
          mask |= SWT::ALT
        end
        p_var_result.dispose
        rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_CTRLKEY]))
        disp_id_member = rgdispid[0]
        p_var_result = event.get_property(disp_id_member)
        if (p_var_result.get_boolean)
          mask |= SWT::CTRL
        end
        p_var_result.dispose
        rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_SHIFTKEY]))
        disp_id_member = rgdispid[0]
        p_var_result = event.get_property(disp_id_member)
        if (p_var_result.get_boolean)
          mask |= SWT::SHIFT
        end
        p_var_result.dispose
        key_event = Event.new
        key_event.attr_widget = self.attr_browser
        key_event.attr_type = SWT::KeyDown
        key_event.attr_key_code = @last_key_code
        key_event.attr_state_mask = mask
        key_event.attr_state_mask &= ~@last_key_code
        # remove current keydown if it's a state key
        self.attr_browser.notify_listeners(key_event.attr_type, key_event)
        if (!key_event.attr_doit)
          rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_RETURNVALUE]))
          disp_id_member = rgdispid[0]
          p_var_false = Variant.new(false)
          event.set_property(disp_id_member, p_var_false)
          p_var_false.dispose
        end
        event.dispose
        return
      end
      if ((event_type == EVENT_KEYPRESS))
        mask = 0
        rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_CTRLKEY]))
        disp_id_member = rgdispid[0]
        p_var_result = event.get_property(disp_id_member)
        if (p_var_result.get_boolean)
          mask |= SWT::CTRL
        end
        p_var_result.dispose
        rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_SHIFTKEY]))
        disp_id_member = rgdispid[0]
        p_var_result = event.get_property(disp_id_member)
        if (p_var_result.get_boolean)
          mask |= SWT::SHIFT
        end
        p_var_result.dispose
        rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_ALTKEY]))
        disp_id_member = rgdispid[0]
        p_var_result = event.get_property(disp_id_member)
        if (p_var_result.get_boolean)
          mask |= SWT::ALT
        end
        p_var_result.dispose
        # in the keypress event the keyCode actually corresponds to the character code
        rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_KEYCODE]))
        disp_id_member = rgdispid[0]
        p_var_result = event.get_property(disp_id_member)
        @last_char_code = p_var_result.get_int
        p_var_result.dispose
        # WebSite.TranslateAccelerator() explicitly does not translate OS.VK_RETURN
        # keys, so the PeekMessage check in the keydown handler always allows a
        # KeyDown to be sent for this key.  However, keydown and keypress events are
        # both sometimes received for OS.VK_RETURN, depending on the page's focus
        # control.  To handle this, do not send a KeyDown for OS.VK_RETURN here since
        # one is always sent for it from the keydown handler.
        if ((@last_char_code).equal?(OS::VK_RETURN))
          event.dispose
          return
        end
        key_event = Event.new
        key_event.attr_widget = self.attr_browser
        key_event.attr_type = SWT::KeyDown
        key_event.attr_key_code = @last_key_code
        key_event.attr_character = RJava.cast_to_char(@last_char_code)
        key_event.attr_state_mask = mask
        self.attr_browser.notify_listeners(key_event.attr_type, key_event)
        if (!key_event.attr_doit)
          rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_RETURNVALUE]))
          disp_id_member = rgdispid[0]
          p_var_false = Variant.new(false)
          event.set_property(disp_id_member, p_var_false)
          p_var_false.dispose
        end
        event.dispose
        return
      end
      if ((event_type == EVENT_KEYUP))
        rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_KEYCODE]))
        disp_id_member = rgdispid[0]
        p_var_result = event.get_property(disp_id_member)
        key_code = translate_key(p_var_result.get_int)
        p_var_result.dispose
        # if a key code could not be determined for this key then it's a
        # key for which key events are not sent (eg.- the Windows key)
        if ((key_code).equal?(0))
          @last_key_code = @last_char_code = 0
          event.dispose
          return
        end
        if (!(key_code).equal?(@last_key_code))
          # keyup does not correspond to the last keydown
          @last_key_code = key_code
          @last_char_code = 0
        end
        mask = 0
        rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_CTRLKEY]))
        disp_id_member = rgdispid[0]
        p_var_result = event.get_property(disp_id_member)
        if (p_var_result.get_boolean)
          mask |= SWT::CTRL
        end
        p_var_result.dispose
        rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_ALTKEY]))
        disp_id_member = rgdispid[0]
        p_var_result = event.get_property(disp_id_member)
        if (p_var_result.get_boolean)
          mask |= SWT::ALT
        end
        p_var_result.dispose
        rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_SHIFTKEY]))
        disp_id_member = rgdispid[0]
        p_var_result = event.get_property(disp_id_member)
        if (p_var_result.get_boolean)
          mask |= SWT::SHIFT
        end
        p_var_result.dispose
        key_event = Event.new
        key_event.attr_widget = self.attr_browser
        key_event.attr_type = SWT::KeyUp
        key_event.attr_key_code = @last_key_code
        key_event.attr_character = RJava.cast_to_char(@last_char_code)
        key_event.attr_state_mask = mask
        case (@last_key_code)
        when SWT::SHIFT, SWT::CONTROL, SWT::ALT, SWT::COMMAND
          key_event.attr_state_mask |= @last_key_code
        end
        self.attr_browser.notify_listeners(key_event.attr_type, key_event)
        if (!key_event.attr_doit)
          rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_RETURNVALUE]))
          disp_id_member = rgdispid[0]
          p_var_false = Variant.new(false)
          event.set_property(disp_id_member, p_var_false)
          p_var_false.dispose
        end
        @last_key_code = @last_char_code = 0
        event.dispose
        return
      end
      # Feature in IE. MouseOver/MouseOut events are fired any time the mouse enters
      # or exits any element within the Browser.  To ensure that SWT events are only
      # fired for mouse movements into or out of the Browser, do not fire an event if
      # the element being exited (on MouseOver) or entered (on MouseExit) is within
      # the Browser.
      if ((event_type == EVENT_MOUSEOVER))
        rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_FROMELEMENT]))
        disp_id_member = rgdispid[0]
        p_var_result = event.get_property(disp_id_member)
        is_internal = !(p_var_result.get_type).equal?(COM::VT_EMPTY)
        p_var_result.dispose
        if (is_internal)
          event.dispose
          return
        end
      end
      if ((event_type == EVENT_MOUSEOUT))
        rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_TOELEMENT]))
        disp_id_member = rgdispid[0]
        p_var_result = event.get_property(disp_id_member)
        is_internal = !(p_var_result.get_type).equal?(COM::VT_EMPTY)
        p_var_result.dispose
        if (is_internal)
          event.dispose
          return
        end
      end
      x = 0
      y = 0
      mask = 0
      new_event = Event.new
      new_event.attr_widget = self.attr_browser
      rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_CLIENTX]))
      disp_id_member = rgdispid[0]
      p_var_result = event.get_property(disp_id_member)
      x = p_var_result.get_int
      new_event.attr_x = x
      p_var_result.dispose
      rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_CLIENTY]))
      disp_id_member = rgdispid[0]
      p_var_result = event.get_property(disp_id_member)
      y = p_var_result.get_int
      new_event.attr_y = y
      p_var_result.dispose
      rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_CTRLKEY]))
      disp_id_member = rgdispid[0]
      p_var_result = event.get_property(disp_id_member)
      if (p_var_result.get_boolean)
        mask |= SWT::CTRL
      end
      p_var_result.dispose
      rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_ALTKEY]))
      disp_id_member = rgdispid[0]
      p_var_result = event.get_property(disp_id_member)
      if (p_var_result.get_boolean)
        mask |= SWT::ALT
      end
      p_var_result.dispose
      rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_SHIFTKEY]))
      disp_id_member = rgdispid[0]
      p_var_result = event.get_property(disp_id_member)
      if (p_var_result.get_boolean)
        mask |= SWT::SHIFT
      end
      p_var_result.dispose
      new_event.attr_state_mask = mask
      rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_BUTTON]))
      disp_id_member = rgdispid[0]
      p_var_result = event.get_property(disp_id_member)
      button = p_var_result.get_int
      p_var_result.dispose
      case (button)
      when 1
        button = 1
      when 2
        button = 3
      when 4
        button = 2
      end
      if ((event_type == EVENT_MOUSEDOWN))
        new_event.attr_type = SWT::MouseDown
        new_event.attr_button = button
        new_event.attr_count = 1
      else
        if ((event_type == EVENT_MOUSEUP) || (event_type == EVENT_DRAGEND))
          new_event.attr_type = SWT::MouseUp
          new_event.attr_button = !(button).equal?(0) ? button : 1
          # button assumed to be 1 for dragends
          new_event.attr_count = 1
          case (new_event.attr_button)
          when 1
            new_event.attr_state_mask |= SWT::BUTTON1
          when 2
            new_event.attr_state_mask |= SWT::BUTTON2
          when 3
            new_event.attr_state_mask |= SWT::BUTTON3
          when 4
            new_event.attr_state_mask |= SWT::BUTTON4
          when 5
            new_event.attr_state_mask |= SWT::BUTTON5
          end
        else
          if ((event_type == EVENT_MOUSEWHEEL))
            new_event.attr_type = SWT::MouseWheel
            rgdispid = event.get_ids_of_names(Array.typed(String).new([PROPERTY_WHEELDELTA]))
            disp_id_member = rgdispid[0]
            p_var_result = event.get_property(disp_id_member)
            new_event.attr_count = p_var_result.get_int / 120 * 3
            p_var_result.dispose
          else
            if ((event_type == EVENT_MOUSEMOVE))
              # Feature in IE.  Spurious and redundant mousemove events are often received.  The workaround
              # is to not fire MouseMove events whose x and y values match the last MouseMove.
              if ((new_event.attr_x).equal?(@last_mouse_move_x) && (new_event.attr_y).equal?(@last_mouse_move_y))
                return
              end
              new_event.attr_type = SWT::MouseMove
              @last_mouse_move_x = new_event.attr_x
              @last_mouse_move_y = new_event.attr_y
            else
              if ((event_type == EVENT_MOUSEOVER))
                new_event.attr_type = SWT::MouseEnter
              else
                if ((event_type == EVENT_MOUSEOUT))
                  new_event.attr_type = SWT::MouseExit
                else
                  if ((event_type == EVENT_DRAGSTART))
                    new_event.attr_type = SWT::DragDetect
                    new_event.attr_button = 1
                    # button assumed to be 1 for dragstarts
                    new_event.attr_state_mask |= SWT::BUTTON1
                  end
                end
              end
            end
          end
        end
      end
      event.dispose
      self.attr_browser.notify_listeners(new_event.attr_type, new_event)
      if ((event_type == EVENT_DOUBLECLICK))
        new_event = Event.new
        new_event.attr_widget = self.attr_browser
        new_event.attr_type = SWT::MouseDoubleClick
        new_event.attr_x = x
        new_event.attr_y = y
        new_event.attr_state_mask = mask
        new_event.attr_type = SWT::MouseDoubleClick
        new_event.attr_button = 1
        # dblclick only comes for button 1 and does not set the button property
        new_event.attr_count = 2
        self.attr_browser.notify_listeners(new_event.attr_type, new_event)
      end
    end
    
    typesig { [OleAutomation, ::Java::Boolean] }
    def hook_domlisteners(web_browser, is_top)
      rgdispid = web_browser.get_ids_of_names(Array.typed(String).new(["Document"])) # $NON-NLS-1$
      disp_id_member = rgdispid[0]
      p_var_result = web_browser.get_property(disp_id_member)
      if ((p_var_result).nil?)
        return
      end
      if ((p_var_result.get_type).equal?(COM::VT_EMPTY))
        p_var_result.dispose
        return
      end
      document = p_var_result.get_automation
      p_var_result.dispose
      # In some cases, such as setting the Browser's content from a string,
      # NavigateComplete2 is received multiple times for a top-level document.
      # For cases like this, any previously-hooked DOM listeners must be
      # removed from the document before hooking the new set of listeners,
      # otherwise multiple sets of events will be received.
      unhook_domlisteners(Array.typed(OleAutomation).new([document]))
      @site.add_event_listener(document, COM::IIDIHTMLDocumentEvents2, COM::DISPID_HTMLDOCUMENTEVENTS_ONKEYDOWN, @dom_listener)
      @site.add_event_listener(document, COM::IIDIHTMLDocumentEvents2, COM::DISPID_HTMLDOCUMENTEVENTS_ONKEYPRESS, @dom_listener)
      @site.add_event_listener(document, COM::IIDIHTMLDocumentEvents2, COM::DISPID_HTMLDOCUMENTEVENTS_ONKEYUP, @dom_listener)
      @site.add_event_listener(document, COM::IIDIHTMLDocumentEvents2, COM::DISPID_HTMLDOCUMENTEVENTS_ONMOUSEDOWN, @dom_listener)
      @site.add_event_listener(document, COM::IIDIHTMLDocumentEvents2, COM::DISPID_HTMLDOCUMENTEVENTS_ONMOUSEUP, @dom_listener)
      @site.add_event_listener(document, COM::IIDIHTMLDocumentEvents2, COM::DISPID_HTMLDOCUMENTEVENTS_ONMOUSEWHEEL, @dom_listener)
      @site.add_event_listener(document, COM::IIDIHTMLDocumentEvents2, COM::DISPID_HTMLDOCUMENTEVENTS_ONDBLCLICK, @dom_listener)
      @site.add_event_listener(document, COM::IIDIHTMLDocumentEvents2, COM::DISPID_HTMLDOCUMENTEVENTS_ONMOUSEMOVE, @dom_listener)
      @site.add_event_listener(document, COM::IIDIHTMLDocumentEvents2, COM::DISPID_HTMLDOCUMENTEVENTS_ONDRAGSTART, @dom_listener)
      @site.add_event_listener(document, COM::IIDIHTMLDocumentEvents2, COM::DISPID_HTMLDOCUMENTEVENTS_ONDRAGEND, @dom_listener)
      # ensure that enter/exit are only fired once, by the top-level document
      if (is_top)
        @site.add_event_listener(document, COM::IIDIHTMLDocumentEvents2, COM::DISPID_HTMLDOCUMENTEVENTS_ONMOUSEOVER, @dom_listener)
        @site.add_event_listener(document, COM::IIDIHTMLDocumentEvents2, COM::DISPID_HTMLDOCUMENTEVENTS_ONMOUSEOUT, @dom_listener)
      end
      new_documents = Array.typed(OleAutomation).new(@documents.attr_length + 1) { nil }
      System.arraycopy(@documents, 0, new_documents, 0, @documents.attr_length)
      new_documents[@documents.attr_length] = document
      @documents = new_documents
    end
    
    typesig { [Array.typed(OleAutomation)] }
    def unhook_domlisteners(documents)
      buffer = (COM::IIDIHTMLDocumentEvents2 + Character.new(?\0.ord)).to_char_array
      guid = GUID.new
      if ((COM._iidfrom_string(buffer, guid)).equal?(COM::S_OK))
        i = 0
        while i < documents.attr_length
          document = documents[i]
          @site.remove_event_listener(document, guid, COM::DISPID_HTMLDOCUMENTEVENTS_ONKEYDOWN, @dom_listener)
          @site.remove_event_listener(document, guid, COM::DISPID_HTMLDOCUMENTEVENTS_ONKEYPRESS, @dom_listener)
          @site.remove_event_listener(document, guid, COM::DISPID_HTMLDOCUMENTEVENTS_ONKEYUP, @dom_listener)
          @site.remove_event_listener(document, guid, COM::DISPID_HTMLDOCUMENTEVENTS_ONMOUSEDOWN, @dom_listener)
          @site.remove_event_listener(document, guid, COM::DISPID_HTMLDOCUMENTEVENTS_ONMOUSEUP, @dom_listener)
          @site.remove_event_listener(document, guid, COM::DISPID_HTMLDOCUMENTEVENTS_ONMOUSEWHEEL, @dom_listener)
          @site.remove_event_listener(document, guid, COM::DISPID_HTMLDOCUMENTEVENTS_ONDBLCLICK, @dom_listener)
          @site.remove_event_listener(document, guid, COM::DISPID_HTMLDOCUMENTEVENTS_ONMOUSEMOVE, @dom_listener)
          @site.remove_event_listener(document, guid, COM::DISPID_HTMLDOCUMENTEVENTS_ONDRAGSTART, @dom_listener)
          @site.remove_event_listener(document, guid, COM::DISPID_HTMLDOCUMENTEVENTS_ONDRAGEND, @dom_listener)
          @site.remove_event_listener(document, guid, COM::DISPID_HTMLDOCUMENTEVENTS_ONMOUSEOVER, @dom_listener)
          @site.remove_event_listener(document, guid, COM::DISPID_HTMLDOCUMENTEVENTS_ONMOUSEOUT, @dom_listener)
          i += 1
        end
      end
    end
    
    typesig { [] }
    def initialize
      @frame = nil
      @site = nil
      @auto = nil
      @dom_listener = nil
      @documents = nil
      @back = false
      @forward = false
      @navigate = false
      @delay_set_text = false
      @ignore_dispose = false
      @location = nil
      @size = nil
      @address_bar = false
      @menu_bar = false
      @status_bar = false
      @tool_bar = false
      @global_dispatch = 0
      @html = nil
      @style = 0
      @last_key_code = 0
      @last_char_code = 0
      @last_mouse_move_x = 0
      @last_mouse_move_y = 0
      super()
      @documents = Array.typed(OleAutomation).new(0) { nil }
      @address_bar = true
      @menu_bar = true
      @status_bar = true
      @tool_bar = true
    end
    
    private
    alias_method :initialize__ie, :initialize
  end
  
end
