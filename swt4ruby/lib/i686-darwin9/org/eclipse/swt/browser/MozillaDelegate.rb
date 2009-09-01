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
      include_const ::Java::Util, :Hashtable
      include_const ::Org::Eclipse::Swt, :SWT
      include_const ::Org::Eclipse::Swt::Browser, :Browser
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Carbon
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
    
    class_module.module_eval {
      
      def callback3
        defined?(@@callback3) ? @@callback3 : @@callback3= nil
      end
      alias_method :attr_callback3, :callback3
      
      def callback3=(value)
        @@callback3 = value
      end
      alias_method :attr_callback3=, :callback3=
      
      
      def handles
        defined?(@@handles) ? @@handles : @@handles= Hashtable.new
      end
      alias_method :attr_handles, :handles
      
      def handles=(value)
        @@handles = value
      end
      alias_method :attr_handles=, :handles=
    }
    
    typesig { [Browser] }
    def initialize(browser)
      @browser = nil
      @listener = nil
      @has_focus = false
      @browser = browser
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def find_browser(handle)
        value = self.attr_handles.get(SwtLONG.new(handle))
        if (!(value).nil?)
          display = Display.get_current
          return display.find_widget(value.attr_value)
        end
        return nil
      end
      
      typesig { [String, Array.typed(::Java::Byte)] }
      def mbcs_to_wcs(code_page, buffer)
        encoding = OS._cfstring_get_system_encoding
        cfstring = OS._cfstring_create_with_bytes(OS.attr_k_cfallocator_default, buffer, buffer.attr_length, encoding, false)
        chars = nil
        if (!(cfstring).equal?(0))
          length = OS._cfstring_get_length(cfstring)
          chars = CharArray.new(length)
          if (!(length).equal?(0))
            range = CFRange.new
            range.attr_length = length
            OS._cfstring_get_characters(cfstring, range, chars)
          end
          OS._cfrelease(cfstring)
        end
        return chars
      end
      
      typesig { [String, String, ::Java::Boolean] }
      def wcs_to_mbcs(code_page, string, terminate)
        chars = CharArray.new(string.length)
        string.get_chars(0, chars.attr_length, chars, 0)
        cfstring = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, chars, chars.attr_length)
        buffer = nil
        if (!(cfstring).equal?(0))
          range = CFRange.new
          range.attr_length = chars.attr_length
          encoding = OS._cfstring_get_system_encoding
          size = Array.typed(::Java::Int).new(1) { 0 }
          num_chars = OS._cfstring_get_bytes(cfstring, range, encoding, Character.new(??.ord), true, nil, 0, size)
          buffer = Array.typed(::Java::Byte).new(size[0] + (terminate ? 1 : 0)) { 0 }
          if (!(num_chars).equal?(0))
            num_chars = OS._cfstring_get_bytes(cfstring, range, encoding, Character.new(??.ord), true, buffer, size[0], size)
          end
          OS._cfrelease(cfstring)
        end
        return buffer
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def event_proc3(next_handler, the_event, user_data)
        widget = Display.get_current.find_widget(user_data)
        if (widget.is_a?(Browser))
          browser = widget
          case (OS._get_event_class(the_event))
          when OS.attr_k_event_class_mouse
            browser.get_shell.force_active
            (browser.attr_web_browser)._activate
          when OS.attr_k_event_class_keyboard
            # Bug in Carbon.  OSX crashes if a HICocoaView is disposed during a key event,
            # presumably as a result of attempting to use it after its refcount has reached
            # 0.  The workaround is to temporarily add an extra ref to the view while the
            # DOM listener is handling the event, in case the Browser gets disposed in a
            # callback.
            handle = browser.attr_handle
            OS._cfretain(handle)
            result = OS._call_next_event_handler(next_handler, the_event)
            OS._cfrelease(handle)
            return result
          end
        end
        return OS.attr_event_not_handled_err
      end
    }
    
    typesig { [] }
    def get_handle
      embed_handle = Cocoa.objc_msg_send(Cocoa::C_NSImageView, Cocoa::S_alloc)
      if ((embed_handle).equal?(0))
        @browser.dispose
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      r = NSRect.new
      embed_handle = Cocoa.objc_msg_send(embed_handle, Cocoa::S_initWithFrame, r)
      rc = 0
      out_control = Array.typed(::Java::Int).new(1) { 0 }
      rc = Cocoa._hicocoa_view_create(embed_handle, 0, out_control)
      # OSX >= 10.5
      if ((rc).equal?(OS.attr_no_err) && !(out_control[0]).equal?(0))
        Cocoa.objc_msg_send(embed_handle, Cocoa::S_release)
      else
        # will succeed on OSX 10.4 with an updated vm containing HIJavaViewCreateWithCocoaView
        begin
          System.load_library("frameembedding") # $NON-NLS-1$
        rescue UnsatisfiedLinkError => e
        end
        rc = Cocoa._hijava_view_create_with_cocoa_view(out_control, embed_handle)
        if (!((rc).equal?(OS.attr_no_err) && !(out_control[0]).equal?(0)))
          @browser.dispose
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
      end
      sub_hiview = out_control[0]
      new_layout_info = HILayoutInfo.new
      new_layout_info.attr_version = 0
      OS._hiview_get_layout_info(sub_hiview, new_layout_info)
      biding = new_layout_info.attr_binding.attr_top
      biding.attr_to_view = 0
      biding.attr_kind = OS.attr_k_hilayout_bind_min
      biding.attr_offset = 0
      biding = new_layout_info.attr_binding.attr_left
      biding.attr_to_view = 0
      biding.attr_kind = OS.attr_k_hilayout_bind_min
      biding.attr_offset = 0
      biding = new_layout_info.attr_binding.attr_bottom
      biding.attr_to_view = 0
      biding.attr_kind = OS.attr_k_hilayout_bind_max
      biding.attr_offset = 0
      biding = new_layout_info.attr_binding.attr_right
      biding.attr_to_view = 0
      biding.attr_kind = OS.attr_k_hilayout_bind_max
      biding.attr_offset = 0
      OS._hiview_set_layout_info(sub_hiview, new_layout_info)
      OS._hiview_change_features(sub_hiview, OS.attr_k_hiview_feature_is_opaque, 0)
      OS._hiview_set_visible(sub_hiview, true)
      parent_handle = @browser.attr_handle
      OS._hiview_add_subview(@browser.attr_handle, sub_hiview)
      rect = CGRect.new
      OS._hiview_get_frame(parent_handle, rect)
      rect.attr_x = rect.attr_y = 0
      OS._hiview_set_frame(sub_hiview, rect)
      self.attr_handles.put(SwtLONG.new(embed_handle), SwtLONG.new(@browser.attr_handle))
      if ((self.attr_callback3).nil?)
        self.attr_callback3 = Callback.new(self.get_class, "eventProc3", 3)
      end # $NON-NLS-1$
      callback3address = self.attr_callback3.get_address
      if ((callback3address).equal?(0))
        @browser.dispose
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      mask = Array.typed(::Java::Int).new([OS.attr_k_event_class_mouse, OS.attr_k_event_mouse_down, OS.attr_k_event_class_keyboard, OS.attr_k_event_raw_key_down, ])
      control_target = OS._get_control_event_target(sub_hiview)
      OS._install_event_handler(control_target, callback3address, mask.attr_length / 2, mask, @browser.attr_handle, nil)
      return embed_handle
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
    def on_dispose(embed_handle)
      self.attr_handles.remove(SwtLONG.new(embed_handle))
      if (!(@listener).nil?)
        @browser.get_display.remove_filter(SWT::FocusIn, @listener)
        @browser.get_shell.remove_listener(SWT::Deactivate, @listener)
        @listener = nil
      end
      @browser = nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def set_size(embed_handle, width, height)
      # TODO
    end
    
    private
    alias_method :initialize__mozilla_delegate, :initialize
  end
  
end
