require "rjava"

# Copyright (c) 2005, 2009 IBM Corporation and others.
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
      include_const ::Org::Eclipse::Swt::Browser, :Browser
      include_const ::Org::Eclipse::Swt::Internal, :Callback
      include ::Org::Eclipse::Swt::Internal::Mozilla
      include ::Org::Eclipse::Swt::Internal::Win32
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
    
    class_module.module_eval {
      # long
      
      def mozilla_proc
        defined?(@@mozilla_proc) ? @@mozilla_proc : @@mozilla_proc= 0
      end
      alias_method :attr_mozilla_proc, :mozilla_proc
      
      def mozilla_proc=(value)
        @@mozilla_proc = value
      end
      alias_method :attr_mozilla_proc=, :mozilla_proc=
      
      
      def subclass_proc
        defined?(@@subclass_proc) ? @@subclass_proc : @@subclass_proc= nil
      end
      alias_method :attr_subclass_proc, :subclass_proc
      
      def subclass_proc=(value)
        @@subclass_proc = value
      end
      alias_method :attr_subclass_proc=, :subclass_proc=
    }
    
    typesig { [Browser] }
    def initialize(browser)
      @browser = nil
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
        chars = CharArray.new(buffer.attr_length)
        char_count = OS._multi_byte_to_wide_char(OS::CP_ACP, OS::MB_PRECOMPOSED, buffer, buffer.attr_length, chars, chars.attr_length)
        if ((char_count).equal?(chars.attr_length))
          return chars
        end
        result = CharArray.new(char_count)
        System.arraycopy(chars, 0, result, 0, char_count)
        return result
      end
      
      typesig { [String, String, ::Java::Boolean] }
      def wcs_to_mbcs(code_page, string, terminate)
        byte_count = 0
        chars = CharArray.new(string.length)
        string.get_chars(0, chars.attr_length, chars, 0)
        bytes = Array.typed(::Java::Byte).new(byte_count = chars.attr_length * 2 + (terminate ? 1 : 0)) { 0 }
        byte_count = OS._wide_char_to_multi_byte(OS::CP_ACP, 0, chars, chars.attr_length, bytes, byte_count, nil, nil)
        if (terminate)
          byte_count += 1
        else
          if (!(bytes.attr_length).equal?(byte_count))
            result = Array.typed(::Java::Byte).new(byte_count) { 0 }
            System.arraycopy(bytes, 0, result, 0, byte_count)
            bytes = result
          end
        end
        return bytes
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def window_proc(hwnd, msg, w_param, l_param)
        # 64
        case (RJava.cast_to_int(msg))
        when OS::WM_ERASEBKGND
          rect = RECT.new
          OS._get_client_rect(hwnd, rect)
          OS._fill_rect(w_param, rect, OS._get_sys_color_brush(OS::COLOR_WINDOW))
        end
        # 64
        return OS._call_window_proc(self.attr_mozilla_proc, hwnd, RJava.cast_to_int(msg), w_param, l_param)
      end
    }
    
    typesig { [] }
    def add_window_subclass
      # long
      hwnd_child = OS._get_window(@browser.attr_handle, OS::GW_CHILD)
      if ((self.attr_subclass_proc).nil?)
        self.attr_subclass_proc = Callback.new(MozillaDelegate, "windowProc", 4) # $NON-NLS-1$
        self.attr_mozilla_proc = OS._get_window_long_ptr(hwnd_child, OS::GWL_WNDPROC)
      end
      OS._set_window_long_ptr(hwnd_child, OS::GWL_WNDPROC, self.attr_subclass_proc.get_address)
    end
    
    typesig { [NsIBaseWindow] }
    def create_base_window(base_window)
      return base_window._create
    end
    
    typesig { [] }
    # long
    def get_handle
      return @browser.attr_handle
    end
    
    typesig { [] }
    def get_jslibrary_name
      return "js3250.dll" # $NON-NLS-1$
    end
    
    typesig { [] }
    def get_library_name
      return "xpcom.dll" # $NON-NLS-1$
    end
    
    typesig { [] }
    def get_swtinit_library_name
      return "swt-xulrunner" # $NON-NLS-1$
    end
    
    typesig { [] }
    def handle_focus
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
      remove_window_subclass
      @browser = nil
    end
    
    typesig { [] }
    def remove_window_subclass
      if ((self.attr_subclass_proc).nil?)
        return
      end
      # long
      hwnd_child = OS._get_window(@browser.attr_handle, OS::GW_CHILD)
      OS._set_window_long_ptr(hwnd_child, OS::GWL_WNDPROC, self.attr_mozilla_proc)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    def set_size(embed_handle, width, height)
    end
    
    private
    alias_method :initialize__mozilla_delegate, :initialize
  end
  
end
