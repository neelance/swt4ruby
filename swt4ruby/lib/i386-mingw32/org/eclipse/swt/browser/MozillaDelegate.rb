require "rjava"

# Copyright (c) 2005, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module MozillaDelegateImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include_const ::Org::Eclipse::Swt::Browser, :Browser
      include_const ::Org::Eclipse::Swt::Internal::Win32, :OS
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
    }
    
    typesig { [] }
    # long
    def get_handle
      return @browser.attr_handle
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
      @browser = nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    def set_size(embed_handle, width, height)
    end
    
    private
    alias_method :initialize__mozilla_delegate, :initialize
  end
  
end
