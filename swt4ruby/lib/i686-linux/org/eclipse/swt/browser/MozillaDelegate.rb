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
  module MozillaDelegateImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include_const ::Org::Eclipse::Swt, :SWT
      include_const ::Org::Eclipse::Swt::Browser, :Browser
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  class MozillaDelegate 
    include_class_members MozillaDelegateImports
    
    attr_accessor :browser
    alias_method :attr_browser, :browser
    undef_method :browser
    alias_method :attr_browser=, :browser=
    undef_method :browser=
    
    # long
    attr_accessor :mozilla_handle
    alias_method :attr_mozilla_handle, :mozilla_handle
    undef_method :mozilla_handle
    alias_method :attr_mozilla_handle=, :mozilla_handle=
    undef_method :mozilla_handle=
    
    attr_accessor :embed_handle
    alias_method :attr_embed_handle, :embed_handle
    undef_method :embed_handle
    alias_method :attr_embed_handle=, :embed_handle=
    undef_method :embed_handle=
    
    attr_accessor :has_focus
    alias_method :attr_has_focus, :has_focus
    undef_method :has_focus
    alias_method :attr_has_focus=, :has_focus=
    undef_method :has_focus=
    
    attr_accessor :listener
    alias_method :attr_listener, :listener
    undef_method :listener
    alias_method :attr_listener=, :listener=
    undef_method :listener=
    
    class_module.module_eval {
      
      def event_callback
        defined?(@@event_callback) ? @@event_callback : @@event_callback= nil
      end
      alias_method :attr_event_callback, :event_callback
      
      def event_callback=(value)
        @@event_callback = value
      end
      alias_method :attr_event_callback=, :event_callback=
      
      # long
      
      def event_proc
        defined?(@@event_proc) ? @@event_proc : @@event_proc= 0
      end
      alias_method :attr_event_proc, :event_proc
      
      def event_proc=(value)
        @@event_proc = value
      end
      alias_method :attr_event_proc=, :event_proc=
      
      const_set_lazy(:STOP_PROPOGATE) { 1 }
      const_attr_reader  :STOP_PROPOGATE
      
      
      def is_linux
        defined?(@@is_linux) ? @@is_linux : @@is_linux= false
      end
      alias_method :attr_is_linux, :is_linux
      
      def is_linux=(value)
        @@is_linux = value
      end
      alias_method :attr_is_linux=, :is_linux=
      
      when_class_loaded do
        os_name = System.get_property("os.name").to_lower_case # $NON-NLS-1$
        self.attr_is_linux = os_name.starts_with("linux") # $NON-NLS-1$
      end
    }
    
    typesig { [Browser] }
    def initialize(browser)
      @browser = nil
      @mozilla_handle = 0
      @embed_handle = 0
      @has_focus = false
      @listener = nil
      if (!self.attr_is_linux)
        browser.dispose
        SWT.error(SWT::ERROR_NO_HANDLES, nil, " [Unsupported platform]") # $NON-NLS-1$
      end
      @browser = browser
    end
    
    class_module.module_eval {
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def event_proc(handle, gdk_event, pointer)
        # long
        parent = OS.gtk_widget_get_parent(handle)
        parent = OS.gtk_widget_get_parent(parent)
        if ((parent).equal?(0))
          return 0
        end
        widget = Display.get_current.find_widget(parent)
        if (!(widget).nil? && widget.is_a?(Browser))
          return ((widget).attr_web_browser).attr_delegate.gtk_event(handle, gdk_event, pointer)
        end
        return 0
      end
      
      typesig { [::Java::Int] }
      # long
      def find_browser(handle)
        # Note.  On GTK, Mozilla is embedded into a GtkHBox handle
        # and not directly into the parent Composite handle.
        # 
        # long
        parent = OS.gtk_widget_get_parent(handle)
        display = Display.get_current
        return display.find_widget(parent)
      end
      
      typesig { [String, Array.typed(::Java::Byte)] }
      def mbcs_to_wcs(code_page, buffer)
        return Converter.mbcs_to_wcs(code_page, buffer)
      end
      
      typesig { [String, String, ::Java::Boolean] }
      def wcs_to_mbcs(code_page, string, terminate)
        return Converter.wcs_to_mbcs(code_page, string, terminate)
      end
    }
    
    typesig { [] }
    # long
    def get_handle
      # Bug in Mozilla Linux GTK.  Embedding Mozilla into a GtkFixed
      # handle causes problems with some Mozilla plug-ins.  For some
      # reason, the Flash plug-in causes the child of the GtkFixed
      # handle to be resized to 1 when the Flash document is loaded.
      # That could be due to gtk_container_resize_children being called
      # by Mozilla - or one of its plug-ins - on the GtkFixed handle,
      # causing the child of the GtkFixed handle to be resized to 1.
      # The workaround is to embed Mozilla into a GtkHBox handle.
      @embed_handle = OS.gtk_hbox_new(false, 0)
      OS.gtk_container_add(@browser.attr_handle, @embed_handle)
      OS.gtk_widget_show(@embed_handle)
      return @embed_handle
    end
    
    typesig { [] }
    def get_library_name
      return "libxpcom.so" # $NON-NLS-1$
    end
    
    typesig { [] }
    def get_swtinit_library_name
      return "swt-xpcominit" # $NON-NLS-1$
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def gtk_event(handle, gdk_event, pointer)
      event = GdkEvent.new
      OS.memmove(event, gdk_event, GdkEvent.attr_sizeof)
      if ((event.attr_type).equal?(OS::GDK_BUTTON_PRESS))
        if (!@has_focus)
          @browser.set_focus
        end
      end
      # Stop the propagation of events that are not consumed by Mozilla, before
      # they reach the parent embedder.  These event have already been received.
      if ((pointer).equal?(STOP_PROPOGATE))
        return 1
      end
      return 0
    end
    
    typesig { [] }
    def handle_focus
      if (@has_focus)
        return
      end
      @has_focus = true
      @listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members MozillaDelegate
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          if ((event.attr_widget).equal?(self.attr_browser))
            return
          end
          (self.attr_browser.attr_web_browser)._deactivate
          self.attr_has_focus = false
          self.attr_browser.get_display.remove_filter(SWT::FocusIn, self)
          self.attr_browser.get_shell.remove_listener(SWT::Deactivate, self)
          self.attr_listener = nil
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      @browser.get_display.add_filter(SWT::FocusIn, @listener)
      @browser.get_shell.add_listener(SWT::Deactivate, @listener)
    end
    
    typesig { [] }
    def handle_mouse_down
      shell_style = @browser.get_shell.get_style
      if (!((shell_style & SWT::ON_TOP)).equal?(0) && ((((shell_style & SWT::NO_FOCUS)).equal?(0)) || (((@browser.get_style & SWT::NO_FOCUS)).equal?(0))))
        @browser.get_display.async_exec(Class.new(Runnable.class == Class ? Runnable : Object) do
          extend LocalClass
          include_class_members MozillaDelegate
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            if ((self.attr_browser).nil? || self.attr_browser.is_disposed)
              return
            end
            (self.attr_browser.attr_web_browser)._activate
          end
          
          typesig { [] }
          define_method :initialize do
            super()
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
      end
    end
    
    typesig { [] }
    def hook_enter_exit
      return false
    end
    
    typesig { [] }
    def init
      if ((self.attr_event_callback).nil?)
        self.attr_event_callback = Callback.new(get_class, "eventProc", 3) # $NON-NLS-1$
        self.attr_event_proc = self.attr_event_callback.get_address
        if ((self.attr_event_proc).equal?(0))
          @browser.dispose
          Mozilla.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
      end
      # Feature in Mozilla.  GtkEvents such as key down, key pressed may be consumed
      # by Mozilla and never be received by the parent embedder.  The workaround
      # is to find the top Mozilla gtk widget that receives all the Mozilla GtkEvents,
      # i.e. the first child of the parent embedder. Then hook event callbacks and
      # forward the event to the parent embedder before Mozilla received and consumed
      # them.
      # 
      # long
      list = OS.gtk_container_get_children(@embed_handle)
      if (!(list).equal?(0))
        @mozilla_handle = OS.g_list_data(list)
        OS.g_list_free(list)
        if (!(@mozilla_handle).equal?(0))
          # Note. Callback to get events before Mozilla receives and consumes them.
          OS.g_signal_connect(@mozilla_handle, OS.attr_event, self.attr_event_proc, 0)
          # Note.  Callback to get the events not consumed by Mozilla - and to block
          # them so that they don't get propagated to the parent handle twice.
          # This hook is set after Mozilla and is therefore called after Mozilla's
          # handler because GTK dispatches events in their order of registration.
          OS.g_signal_connect(@mozilla_handle, OS.attr_key_press_event, self.attr_event_proc, STOP_PROPOGATE)
          OS.g_signal_connect(@mozilla_handle, OS.attr_key_release_event, self.attr_event_proc, STOP_PROPOGATE)
          OS.g_signal_connect(@mozilla_handle, OS.attr_button_press_event, self.attr_event_proc, STOP_PROPOGATE)
        end
      end
    end
    
    typesig { [] }
    def needs_spinup
      return true
    end
    
    typesig { [::Java::Int] }
    # long
    def on_dispose(embed_handle)
      if (!(@listener).nil?)
        @browser.get_display.remove_filter(SWT::FocusIn, @listener)
        @browser.get_shell.remove_listener(SWT::Deactivate, @listener)
        @listener = nil
      end
      @browser = nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    def set_size(embed_handle, width, height)
      OS.gtk_widget_set_size_request(embed_handle, width, height)
    end
    
    private
    alias_method :initialize__mozilla_delegate, :initialize
  end
  
end
