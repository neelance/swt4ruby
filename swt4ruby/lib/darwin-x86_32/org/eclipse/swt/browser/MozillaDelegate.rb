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
  module MozillaDelegateImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include_const ::Org::Eclipse::Swt, :SWT
      include_const ::Org::Eclipse::Swt::Browser, :Browser
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt::Internal::Mozilla
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
    
    attr_accessor :listener
    alias_method :attr_listener, :listener
    undef_method :listener
    alias_method :attr_listener=, :listener=
    undef_method :listener=
    
    attr_accessor :has_focus
    alias_method :attr_has_focus, :has_focus
    undef_method :has_focus
    alias_method :attr_has_focus=, :has_focus=
    undef_method :has_focus=
    
    typesig { [Browser] }
    def initialize(browser)
      @browser = nil
      @listener = nil
      @has_focus = false
      @browser = browser
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      # long
      def find_browser(handle)
        display = Display.get_current
        return display.find_widget(handle)
      end
      
      typesig { [String, Array.typed(::Java::Byte)] }
      def mbcs_to_wcs(code_page, buffer)
        # int encoding = OS.CFStringGetSystemEncoding ();
        # int cfstring = OS.CFStringCreateWithBytes (OS.kCFAllocatorDefault, buffer, buffer.length, encoding, false);
        # char[] chars = null;
        # if (cfstring != 0) {
        # int length = OS.CFStringGetLength (cfstring);
        # chars = new char [length];
        # if (length != 0) {
        # CFRange range = new CFRange ();
        # range.length = length;
        # OS.CFStringGetCharacters (cfstring, range, chars);
        # }
        # OS.CFRelease (cfstring);
        # }
        # return chars;
        # TODO implement mbcsToWcs
        return String.new(buffer).to_char_array
      end
      
      typesig { [String, String, ::Java::Boolean] }
      def wcs_to_mbcs(code_page, string, terminate)
        # char[] chars = new char [string.length()];
        # string.getChars (0, chars.length, chars, 0);
        # int cfstring = OS.CFStringCreateWithCharacters (OS.kCFAllocatorDefault, chars, chars.length);
        # byte[] buffer = null;
        # if (cfstring != 0) {
        # CFRange range = new CFRange ();
        # range.length = chars.length;
        # int encoding = OS.CFStringGetSystemEncoding ();
        # int[] size = new int[1];
        # int numChars = OS.CFStringGetBytes (cfstring, range, encoding, (byte)'?', true, null, 0, size);
        # buffer = new byte [size[0] + (terminate ? 1 : 0)];
        # if (numChars != 0) {
        # numChars = OS.CFStringGetBytes (cfstring, range, encoding, (byte)'?', true, buffer, size[0], size);
        # }
        # OS.CFRelease (cfstring);
        # }
        # return buffer;
        # TODO implement wcsToMbcs
        if (terminate)
          string += "\0"
        end
        return string.get_bytes
      end
    }
    
    typesig { [] }
    def add_window_subclass
    end
    
    typesig { [NsIBaseWindow] }
    def create_base_window(base_window)
      # Feature of Mozilla on OSX.  Mozilla replaces the OSX application menu whenever
      # a browser's base window is created.  The workaround is to restore the previous
      # menu after creating the base window.
      application = NSApplication.shared_application
      main_menu_ = application.main_menu
      main_menu_.retain
      rc = base_window._create
      application.set_main_menu(main_menu_)
      main_menu_.release
      return rc
    end
    
    typesig { [] }
    # long
    def get_handle
      return @browser.attr_view.attr_id
    end
    
    typesig { [] }
    def get_jslibrary_name
      return "libmozjs.dylib" # $NON-NLS-1$
    end
    
    typesig { [] }
    def get_library_name
      return "libxpcom.dylib" # $NON-NLS-1$
    end
    
    typesig { [] }
    def get_swtinit_library_name
      return "swt-xulrunner" # $NON-NLS-1$
    end
    
    typesig { [] }
    def handle_focus
      if (@has_focus)
        return
      end
      @has_focus = true
      (@browser.attr_web_browser)._activate
      @browser.set_focus
      @listener = Class.new(Listener.class == Class ? Listener : Object) do
        local_class_in MozillaDelegate
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
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      @browser.get_display.add_filter(SWT::FocusIn, @listener)
      @browser.get_shell.add_listener(SWT::Deactivate, @listener)
    end
    
    typesig { [] }
    def handle_mouse_down
    end
    
    typesig { [] }
    def hook_enter_exit
      return true
    end
    
    typesig { [] }
    def init
    end
    
    typesig { [] }
    def needs_spinup
      return false
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
    
    typesig { [] }
    def remove_window_subclass
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    def set_size(embed_handle, width, height)
      # TODO
    end
    
    private
    alias_method :initialize__mozilla_delegate, :initialize
  end
  
end
