require "rjava"

# Copyright (c) 2003, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module WindowCreator2Imports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Mozilla
      include ::Org::Eclipse::Swt::Layout
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  class WindowCreator2 
    include_class_members WindowCreator2Imports
    
    attr_accessor :supports
    alias_method :attr_supports, :supports
    undef_method :supports
    alias_method :attr_supports=, :supports=
    undef_method :supports=
    
    attr_accessor :window_creator
    alias_method :attr_window_creator, :window_creator
    undef_method :window_creator
    alias_method :attr_window_creator=, :window_creator=
    undef_method :window_creator=
    
    attr_accessor :window_creator2
    alias_method :attr_window_creator2, :window_creator2
    undef_method :window_creator2
    alias_method :attr_window_creator2=, :window_creator2=
    undef_method :window_creator2=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    typesig { [] }
    def initialize
      @supports = nil
      @window_creator = nil
      @window_creator2 = nil
      @ref_count = 0
      create_cominterfaces
    end
    
    typesig { [] }
    def _add_ref
      ((@ref_count += 1) - 1)
      return @ref_count
    end
    
    typesig { [] }
    def create_cominterfaces
      @supports = # Create each of the interfaces that this object implements
      Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members WindowCreator2
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0]))
      @window_creator = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members WindowCreator2
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method3 do |args|
          # 64
          return _create_chrome_window(args[0], RJava.cast_to_int(args[1]), args[2])
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 3]))
      @window_creator2 = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members WindowCreator2
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method3 do |args|
          # 64
          return _create_chrome_window(args[0], RJava.cast_to_int(args[1]), args[2])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method4 do |args|
          # 64
          # 64
          return _create_chrome_window2(args[0], RJava.cast_to_int(args[1]), RJava.cast_to_int(args[2]), args[3], args[4], args[5])
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 3, 6]))
    end
    
    typesig { [] }
    def dispose_cominterfaces
      if (!(@supports).nil?)
        @supports.dispose
        @supports = nil
      end
      if (!(@window_creator).nil?)
        @window_creator.dispose
        @window_creator = nil
      end
      if (!(@window_creator2).nil?)
        @window_creator2.dispose
        @window_creator2 = nil
      end
    end
    
    typesig { [] }
    # int
    def get_address
      return @window_creator.get_address
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _query_interface(riid, ppv_object)
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return XPCOM::NS_ERROR_NO_INTERFACE
      end
      guid = NsID.new
      XPCOM.memmove(guid, riid, self.attr_ns_id.attr_sizeof)
      if (guid._equals(NsISupports::NS_ISUPPORTS_IID))
        # int
        XPCOM.memmove(ppv_object, Array.typed(::Java::Long).new([@supports.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIWindowCreator::NS_IWINDOWCREATOR_IID))
        # int
        XPCOM.memmove(ppv_object, Array.typed(::Java::Long).new([@window_creator.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIWindowCreator2::NS_IWINDOWCREATOR2_IID))
        # int
        XPCOM.memmove(ppv_object, Array.typed(::Java::Long).new([@window_creator2.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      # int
      XPCOM.memmove(ppv_object, Array.typed(::Java::Long).new([0]), C::PTR_SIZEOF)
      return XPCOM::NS_ERROR_NO_INTERFACE
    end
    
    typesig { [] }
    def _release
      ((@ref_count -= 1) + 1)
      if ((@ref_count).equal?(0))
        dispose_cominterfaces
      end
      return @ref_count
    end
    
    typesig { [::Java::Long, ::Java::Int, ::Java::Long] }
    # nsIWindowCreator
    # int
    # int
    def _create_chrome_window(parent, chrome_flags, _retval)
      return _create_chrome_window2(parent, chrome_flags, 0, 0, 0, _retval)
    end
    
    typesig { [::Java::Long, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long] }
    # nsIWindowCreator2
    # int
    # int
    # int
    # int
    def _create_chrome_window2(parent, chrome_flags, context_flags, uri, cancel, _retval)
      if ((parent).equal?(0) && ((chrome_flags & NsIWebBrowserChrome::CHROME_OPENAS_CHROME)).equal?(0))
        return XPCOM::NS_ERROR_NOT_IMPLEMENTED
      end
      src = nil
      if (!(parent).equal?(0))
        browser_chrome_parent = NsIWebBrowserChrome.new(parent)
        # int
        # int
        a_web_browser = Array.typed(::Java::Long).new(1) { 0 }
        rc = browser_chrome_parent._get_web_browser(a_web_browser)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        if ((a_web_browser[0]).equal?(0))
          Mozilla.error(XPCOM::NS_ERROR_NO_INTERFACE)
        end
        web_browser = NsIWebBrowser.new(a_web_browser[0])
        # int
        # int
        result = Array.typed(::Java::Long).new(1) { 0 }
        rc = web_browser._query_interface(NsIBaseWindow::NS_IBASEWINDOW_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        if ((result[0]).equal?(0))
          Mozilla.error(XPCOM::NS_ERROR_NO_INTERFACE)
        end
        web_browser._release
        base_window = NsIBaseWindow.new(result[0])
        result[0] = 0
        # int
        # int
        a_parent_native_window = Array.typed(::Java::Long).new(1) { 0 }
        rc = base_window._get_parent_native_window(a_parent_native_window)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        if ((a_parent_native_window[0]).equal?(0))
          Mozilla.error(XPCOM::NS_ERROR_NO_INTERFACE)
        end
        base_window._release
        src = Mozilla.find_browser(a_parent_native_window[0])
      end
      browser = nil
      doit = true
      if (!((chrome_flags & NsIWebBrowserChrome::CHROME_OPENAS_CHROME)).equal?(0))
        # Mozilla will request a new Browser in a modal window in order to emulate a native
        # dialog that is not available to it (eg.- a print dialog on Linux).  For this
        # reason modal requests are handled here so that the user is not exposed to them.
        style = SWT::DIALOG_TRIM
        if (!((chrome_flags & NsIWebBrowserChrome::CHROME_MODAL)).equal?(0))
          style |= SWT::APPLICATION_MODAL
        end
        shell = (src).nil? ? Shell.new(style) : Shell.new(src.get_shell, style)
        shell.set_layout(FillLayout.new)
        browser = Browser.new(shell, (src).nil? ? SWT::MOZILLA : src.get_style & SWT::MOZILLA)
        browser.add_visibility_window_listener(Class.new(VisibilityWindowListener.class == Class ? VisibilityWindowListener : Object) do
          extend LocalClass
          include_class_members WindowCreator2
          include VisibilityWindowListener if VisibilityWindowListener.class == Module
          
          typesig { [WindowEvent] }
          define_method :hide do |event|
          end
          
          typesig { [WindowEvent] }
          define_method :show do |event|
            if (!(event.attr_location).nil?)
              shell.set_location(event.attr_location)
            end
            if (!(event.attr_size).nil?)
              size = event.attr_size
              shell.set_size(shell.compute_size(size.attr_x, size.attr_y))
            end
            shell.open
          end
          
          typesig { [] }
          define_method :initialize do
            super()
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
        browser.add_close_window_listener(Class.new(CloseWindowListener.class == Class ? CloseWindowListener : Object) do
          extend LocalClass
          include_class_members WindowCreator2
          include CloseWindowListener if CloseWindowListener.class == Module
          
          typesig { [WindowEvent] }
          define_method :close do |event|
            shell.close
          end
          
          typesig { [] }
          define_method :initialize do
            super()
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
        if (!(uri).equal?(0))
          location = NsIURI.new(uri)
          # int
          a_spec = XPCOM.ns_embed_cstring_new
          if ((location._get_spec(a_spec)).equal?(XPCOM::NS_OK))
            length = XPCOM.ns_embed_cstring_length(a_spec)
            if (length > 0)
              # int
              buffer = XPCOM.ns_embed_cstring_get(a_spec)
              dest = Array.typed(::Java::Byte).new(length) { 0 }
              XPCOM.memmove(dest, buffer, length)
              browser.set_url(String.new(dest))
            end
          end
          XPCOM.ns_embed_cstring_delete(a_spec)
        end
      else
        event = WindowEvent.new(src)
        event.attr_display = src.get_display
        event.attr_widget = src
        event.attr_required = true
        i = 0
        while i < src.attr_web_browser.attr_open_window_listeners.attr_length
          src.attr_web_browser.attr_open_window_listeners[i].open(event)
          ((i += 1) - 1)
        end
        browser = event.attr_browser
        # Ensure that the Browser provided by the client is valid for use
        doit = !(browser).nil? && !browser.is_disposed
        if (doit)
          platform = Platform::SWT_PLATFORM
          is_mozilla_native_platform = (platform == "gtk") || (platform == "motif") # $NON-NLS-1$ //$NON-NLS-2$
          doit = is_mozilla_native_platform || !((browser.get_style & SWT::MOZILLA)).equal?(0)
        end
      end
      if (doit)
        mozilla = browser.attr_web_browser
        mozilla.attr_is_child = true
        # int
        chrome_ptr = mozilla.attr_web_browser_chrome.get_address
        web_browser_chrome = NsIWebBrowserChrome.new(chrome_ptr)
        web_browser_chrome._set_chrome_flags(chrome_flags)
        web_browser_chrome._add_ref
        # int
        XPCOM.memmove(_retval, Array.typed(::Java::Long).new([chrome_ptr]), C::PTR_SIZEOF)
      else
        if (!(cancel).equal?(0))
          C.memmove(cancel, Array.typed(::Java::Int).new([1]), 4)
          # PRBool
        end
      end
      return doit ? XPCOM::NS_OK : XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    private
    alias_method :initialize__window_creator2, :initialize
  end
  
end
