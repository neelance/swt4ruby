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
  module WebSiteImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Org::Eclipse::Swt
      include_const ::Org::Eclipse::Swt::Internal, :C
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Ole::Win32
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class WebSite < WebSiteImports.const_get :OleControlSite
    include_class_members WebSiteImports
    
    attr_accessor :i_doc_host_uihandler
    alias_method :attr_i_doc_host_uihandler, :i_doc_host_uihandler
    undef_method :i_doc_host_uihandler
    alias_method :attr_i_doc_host_uihandler=, :i_doc_host_uihandler=
    undef_method :i_doc_host_uihandler=
    
    attr_accessor :i_doc_host_show_ui
    alias_method :attr_i_doc_host_show_ui, :i_doc_host_show_ui
    undef_method :i_doc_host_show_ui
    alias_method :attr_i_doc_host_show_ui=, :i_doc_host_show_ui=
    undef_method :i_doc_host_show_ui=
    
    attr_accessor :i_service_provider
    alias_method :attr_i_service_provider, :i_service_provider
    undef_method :i_service_provider
    alias_method :attr_i_service_provider=, :i_service_provider=
    undef_method :i_service_provider=
    
    attr_accessor :i_internet_security_manager
    alias_method :attr_i_internet_security_manager, :i_internet_security_manager
    undef_method :i_internet_security_manager
    alias_method :attr_i_internet_security_manager=, :i_internet_security_manager=
    undef_method :i_internet_security_manager=
    
    attr_accessor :i_ole_command_target
    alias_method :attr_i_ole_command_target, :i_ole_command_target
    undef_method :i_ole_command_target
    alias_method :attr_i_ole_command_target=, :i_ole_command_target=
    undef_method :i_ole_command_target=
    
    attr_accessor :ignore_next_message
    alias_method :attr_ignore_next_message, :ignore_next_message
    undef_method :ignore_next_message
    alias_method :attr_ignore_next_message=, :ignore_next_message=
    undef_method :ignore_next_message=
    
    class_module.module_eval {
      const_set_lazy(:OLECMDID_SHOWSCRIPTERROR) { 40 }
      const_attr_reader  :OLECMDID_SHOWSCRIPTERROR
      
      const_set_lazy(:ACCENTS) { Array.typed(::Java::Short).new([Character.new(?~.ord), Character.new(?`.ord), Character.new(?\'.ord), Character.new(?^.ord), Character.new(?".ord)]) }
      const_attr_reader  :ACCENTS
      
      const_set_lazy(:CONSUME_KEY) { "org.eclipse.swt.OleFrame.ConsumeKey" }
      const_attr_reader  :CONSUME_KEY
    }
    
    typesig { [Composite, ::Java::Int, String] }
    # $NON-NLS-1$
    def initialize(parent, style, prog_id)
      @i_doc_host_uihandler = nil
      @i_doc_host_show_ui = nil
      @i_service_provider = nil
      @i_internet_security_manager = nil
      @i_ole_command_target = nil
      @ignore_next_message = false
      super(parent, style, prog_id)
    end
    
    typesig { [] }
    def create_cominterfaces
      super
      @i_doc_host_uihandler = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members WebSite
        include COMObject if COMObject.class == Module
        
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
          return _show_context_menu(RJava.cast_to_int(args[0]), args[1], args[2], args[3])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          return _get_host_info(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          # 64
          return _show_ui(RJava.cast_to_int(args[0]), args[1], args[2], args[3], args[4])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          return _hide_ui
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method7 do |args|
          return _update_ui
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method8 do |args|
          # 64
          return _enable_modeless(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method9 do |args|
          # 64
          return _on_doc_window_activate(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method10 do |args|
          # 64
          return _on_frame_window_activate(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method11 do |args|
          # 64
          return _resize_border(args[0], args[1], RJava.cast_to_int(args[2]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method12 do |args|
          # 64
          return _translate_accelerator(args[0], args[1], RJava.cast_to_int(args[2]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method13 do |args|
          # 64
          return _get_option_key_path(args[0], RJava.cast_to_int(args[1]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method14 do |args|
          return _get_drop_target(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method15 do |args|
          return _get_external(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method16 do |args|
          # 64
          return _translate_url(RJava.cast_to_int(args[0]), args[1], args[2])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method17 do |args|
          return _filter_data_object(args[0], args[1])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 4, 1, 5, 0, 0, 1, 1, 1, 3, 3, 2, 2, 1, 3, 2]))
      @i_doc_host_show_ui = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members WebSite
        include COMObject if COMObject.class == Module
        
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
          return _show_message(args[0], args[1], args[2], RJava.cast_to_int(args[3]), args[4], RJava.cast_to_int(args[5]), args[6])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          if ((args.attr_length).equal?(7))
            # 64
            # 64
            # 64
            # 64
            return _show_help(args[0], args[1], RJava.cast_to_int(args[2]), RJava.cast_to_int(args[3]), RJava.cast_to_int(args[4]), RJava.cast_to_int(args[5]), args[6])
          else
            # 64
            # 64
            return _show_help_64(args[0], args[1], RJava.cast_to_int(args[2]), RJava.cast_to_int(args[3]), args[4], args[5])
          end
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 7, (C::PTR_SIZEOF).equal?(4) ? 7 : 6]))
      @i_service_provider = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members WebSite
        include COMObject if COMObject.class == Module
        
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
          return _query_service(args[0], args[1], args[2])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 3]))
      @i_internet_security_manager = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members WebSite
        include COMObject if COMObject.class == Module
        
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
          return _set_security_site(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          return _get_security_site(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          # 64
          return _map_url_to_zone(args[0], args[1], RJava.cast_to_int(args[2]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          return _get_security_id(args[0], args[1], args[2], args[3])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method7 do |args|
          # 64
          # 64
          # 64
          # 64
          # 64
          return _process_url_action(args[0], RJava.cast_to_int(args[1]), args[2], RJava.cast_to_int(args[3]), args[4], RJava.cast_to_int(args[5]), RJava.cast_to_int(args[6]), RJava.cast_to_int(args[7]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method8 do |args|
          # 64
          # 64
          return _query_custom_policy(args[0], args[1], args[2], args[3], args[4], RJava.cast_to_int(args[5]), RJava.cast_to_int(args[6]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method9 do |args|
          # 64
          # 64
          return _set_zone_mapping(RJava.cast_to_int(args[0]), args[1], RJava.cast_to_int(args[2]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method10 do |args|
          # 64
          # 64
          return _get_zone_mappings(RJava.cast_to_int(args[0]), args[1], RJava.cast_to_int(args[2]))
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 1, 1, 3, 4, 8, 7, 3, 3]))
      @i_ole_command_target = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members WebSite
        include COMObject if COMObject.class == Module
        
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
          return _query_status(args[0], RJava.cast_to_int(args[1]), args[2], args[3])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          # 64
          # 64
          return _exec(args[0], RJava.cast_to_int(args[1]), RJava.cast_to_int(args[2]), args[3], args[4])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 4, 5]))
    end
    
    typesig { [] }
    def dispose_cominterfaces
      super
      if (!(@i_doc_host_uihandler).nil?)
        @i_doc_host_uihandler.dispose
        @i_doc_host_uihandler = nil
      end
      if (!(@i_doc_host_show_ui).nil?)
        @i_doc_host_show_ui.dispose
        @i_doc_host_show_ui = nil
      end
      if (!(@i_service_provider).nil?)
        @i_service_provider.dispose
        @i_service_provider = nil
      end
      if (!(@i_internet_security_manager).nil?)
        @i_internet_security_manager.dispose
        @i_internet_security_manager = nil
      end
      if (!(@i_ole_command_target).nil?)
        @i_ole_command_target.dispose
        @i_ole_command_target = nil
      end
    end
    
    typesig { [] }
    def _add_ref
      # Workaround for javac 1.1.8 bug
      return super
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _query_interface(riid, ppv_object)
      result = super(riid, ppv_object)
      if ((result).equal?(COM::S_OK))
        return result
      end
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return COM::E_INVALIDARG
      end
      guid = GUID.new
      COM._move_memory(guid, riid, GUID.attr_sizeof)
      if (COM._is_equal_guid(guid, COM::IIDIDocHostUIHandler))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_doc_host_uihandler.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      if (COM._is_equal_guid(guid, COM::IIDIDocHostShowUI))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_doc_host_show_ui.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      if (COM._is_equal_guid(guid, COM::IIDIServiceProvider))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_service_provider.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      if (COM._is_equal_guid(guid, COM::IIDIInternetSecurityManager))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_internet_security_manager.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      if (COM._is_equal_guid(guid, COM::IIDIOleCommandTarget))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_ole_command_target.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      # long
      COM._move_memory(ppv_object, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
      return COM::E_NOINTERFACE
    end
    
    typesig { [::Java::Int] }
    # IDocHostUIHandler
    def _enable_modeless(enable_modeless)
      return COM::E_NOTIMPL
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _filter_data_object(p_do, pp_doret)
      return COM::E_NOTIMPL
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _get_drop_target(p_drop_target, pp_drop_target)
      return COM::E_NOTIMPL
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_external(pp_dispatch)
      # long
      OS._move_memory(pp_dispatch, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
      return COM::S_FALSE
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_host_info(p_info)
      info = IE::DOCHOSTUIFLAG_THEME
      browser = (get_parent.get_parent).attr_web_browser
      if (((browser.attr_style & SWT::BORDER)).equal?(0))
        info |= IE::DOCHOSTUIFLAG_NO3DOUTERBORDER
      end
      OS._move_memory(p_info + 4, Array.typed(::Java::Int).new([info]), 4)
      # TODO replace the implementation above with the one commented below
      # when 32-bit swt starts compiling with a newer mssdk whose definition
      # of DOCHOSTUIINFO includes the last two OLECHAR* fields.
      # 
      # int info = IE.DOCHOSTUIFLAG_THEME;
      # Browser browser = (Browser)getParent().getParent();
      # if ((browser.getStyle() & SWT.BORDER) == 0) info |= IE.DOCHOSTUIFLAG_NO3DOUTERBORDER;
      # 
      # DOCHOSTUIINFO uiInfo = new DOCHOSTUIINFO ();
      # OS.MoveMemory(uiInfo, pInfo, DOCHOSTUIINFO.sizeof);
      # uiInfo.dwFlags = info;
      # OS.MoveMemory(pInfo, uiInfo, DOCHOSTUIINFO.sizeof);
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    def _get_option_key_path(pch_key, dw)
      return COM::E_NOTIMPL
    end
    
    typesig { [] }
    def _hide_ui
      return COM::E_NOTIMPL
    end
    
    typesig { [::Java::Int] }
    def _on_doc_window_activate(f_activate)
      return COM::E_NOTIMPL
    end
    
    typesig { [::Java::Int] }
    def _on_frame_window_activate(f_activate)
      return COM::E_NOTIMPL
    end
    
    typesig { [] }
    def _release
      # Workaround for javac 1.1.8 bug
      return super
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _resize_border(prc_border, p_uiwindow, f_frame_window)
      return COM::E_NOTIMPL
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def _show_context_menu(dw_id, ppt, pcmdt_reserved, pdisp_reserved)
      browser = get_parent.get_parent
      event = Event.new
      pt = POINT.new
      OS._move_memory(pt, ppt, POINT.attr_sizeof)
      event.attr_x = pt.attr_x
      event.attr_y = pt.attr_y
      browser.notify_listeners(SWT::MenuDetect, event)
      if (!event.attr_doit)
        return COM::S_OK
      end
      menu = browser.get_menu
      if (!(menu).nil? && !menu.is_disposed)
        if (!(pt.attr_x).equal?(event.attr_x) || !(pt.attr_y).equal?(event.attr_y))
          menu.set_location(event.attr_x, event.attr_y)
        end
        menu.set_visible(true)
        return COM::S_OK
      end
      # Show default IE popup menu
      return COM::S_FALSE
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def _show_ui(dw_id, p_active_object, p_command_target, p_frame, p_doc)
      return COM::S_FALSE
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _translate_accelerator(lp_msg, pguid_cmd_group, n_cmd_id)
      # Feature on Internet Explorer.  By default the embedded Internet Explorer control runs
      # the Internet Explorer shortcuts (e.g. Ctrl+F for Find).  This overrides the shortcuts
      # defined by SWT.  The workaround is to forward the accelerator keys to the parent window
      # and have Internet Explorer ignore the ones handled by the parent window.
      menubar = get_shell.get_menu_bar
      if (!(menubar).nil? && !menubar.is_disposed && menubar.is_enabled)
        shell = menubar.get_shell
        # long
        hwnd = shell.attr_handle
        # long
        h_accel = OS._send_message(hwnd, OS::WM_APP + 1, 0, 0)
        if (!(h_accel).equal?(0))
          msg = MSG.new
          OS._move_memory(msg, lp_msg, MSG.attr_sizeof)
          if (!(OS._translate_accelerator(hwnd, h_accel, msg)).equal?(0))
            return COM::S_OK
          end
        end
      end
      # By default the IE shortcuts are run.  However, F5 causes a refresh, which is not
      # appropriate when rendering HTML from memory, and CTRL-N opens a standalone IE,
      # which is undesirable and can cause a crash in some contexts.  The workaround is
      # to block the handling of these shortcuts by IE.
      result = COM::S_FALSE
      msg = MSG.new
      OS._move_memory(msg, lp_msg, MSG.attr_sizeof)
      if ((msg.attr_message).equal?(OS::WM_KEYDOWN))
        # 64
        case (RJava.cast_to_int(msg.attr_w_param))
        # FALL THROUGH
        when OS::VK_F5
          auto = OleAutomation.new(self)
          rgdispid = auto.get_ids_of_names(Array.typed(String).new(["LocationURL"])) # $NON-NLS-1$
          p_var_result = auto.get_property(rgdispid[0])
          auto.dispose
          if (!(p_var_result).nil?)
            if ((p_var_result.get_type).equal?(OLE::VT_BSTR))
              url = p_var_result.get_string
              if ((url == IE::ABOUT_BLANK))
                result = COM::S_OK
              end
            end
            p_var_result.dispose
          end
        when OS::VK_TAB
          # Do not interfere with tab traversal since it's not known
          # if it will be within IE or out to another Control.
        when OS::VK_RETURN
          # Translating OS.VK_RETURN results in the native control handling it
          # twice (eg.- inserting two lines instead of one).  So this key is not
          # translated here, and instead is explicitly handled in the keypress
          # handler.
          self.attr_frame.set_data(CONSUME_KEY, "true") # $NON-NLS-1$
        when OS::VK_N
          # If the exact keypress is Ctrl+N, which opens a new external IE, then eat this key
          if (OS._get_key_state(OS::VK_CONTROL) < 0 && OS._get_key_state(OS::VK_MENU) >= 0 && OS._get_key_state(OS::VK_SHIFT) >= 0)
            result = COM::S_OK
          end
        else
          OS._translate_message(msg)
          self.attr_frame.set_data(CONSUME_KEY, "true") # $NON-NLS-1$
        end
      end
      is_accent = false
      # 64
      case (RJava.cast_to_int(msg.attr_w_param))
      when OS::VK_SHIFT, OS::VK_MENU, OS::VK_CONTROL, OS::VK_CAPITAL, OS::VK_NUMLOCK, OS::VK_SCROLL
      else
        # Bug in Windows. The high bit in the result of MapVirtualKey() on
        # Windows NT is bit 32 while the high bit on Windows 95 is bit 16.
        # They should both be bit 32.  The fix is to test the right bit.
        # 
        # 64
        map_key = OS._map_virtual_key(RJava.cast_to_int(msg.attr_w_param), 2)
        if (!(map_key).equal?(0))
          is_accent = !((map_key & (OS::IsWinNT ? -0x80000000 : 0x8000))).equal?(0)
          if (!is_accent)
            i = 0
            while i < ACCENTS.attr_length
              value = OS._vk_key_scan(ACCENTS[i])
              if (!(value).equal?(-1) && ((value & 0xff)).equal?(msg.attr_w_param))
                state = value >> 8
                if (((OS._get_key_state(OS::VK_SHIFT) < 0)).equal?((!((state & 0x1)).equal?(0))) && ((OS._get_key_state(OS::VK_CONTROL) < 0)).equal?((!((state & 0x2)).equal?(0))) && ((OS._get_key_state(OS::VK_MENU) < 0)).equal?((!((state & 0x4)).equal?(0))))
                  if (!((state & 0x7)).equal?(0))
                    is_accent = true
                  end
                  break
                end
              end
              i += 1
            end
          end
        end
      end
      if (is_accent)
        result = COM::S_OK
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _translate_url(dw_translate, pch_urlin, ppch_urlout)
      return COM::E_NOTIMPL
    end
    
    typesig { [] }
    def _update_ui
      return COM::E_NOTIMPL
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # IDocHostShowUI
    # long
    # long
    # long
    # long
    # long
    def _show_message(hwnd, lpstr_text, lpstr_caption, dw_type, lpstr_help_file, dw_help_context, pl_result)
      ignore = @ignore_next_message
      @ignore_next_message = false
      return ignore ? COM::S_OK : COM::S_FALSE
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int] }
    # long
    # long
    # long
    def _show_help_64(hwnd, psz_help_file, u_command, dw_data, pt, p_dispatch_object_hit)
      point = POINT.new
      OS._move_memory(point, Array.typed(::Java::Long).new([pt]), 8)
      return _show_help(hwnd, psz_help_file, u_command, dw_data, point.attr_x, point.attr_y, p_dispatch_object_hit)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Note.  One of the arguments of ShowHelp is a POINT struct and not a pointer to a POINT struct. Because
    # of the way Callback gets int parameters from a va_list of C arguments 2 integer arguments must be declared,
    # ptMouse_x and ptMouse_y. Otherwise the Browser crashes when the user presses F1 to invoke
    # the help.
    # 
    # long
    # long
    # long
    def _show_help(hwnd, psz_help_file, u_command, dw_data, pt_mouse_x, pt_mouse_y, p_dispatch_object_hit)
      browser = get_parent.get_parent
      event = Event.new
      event.attr_type = SWT::Help
      event.attr_display = get_display
      event.attr_widget = browser
      shell = browser.get_shell
      control = browser
      begin
        if (control.is_listening(SWT::Help))
          control.notify_listeners(SWT::Help, event)
          break
        end
        if ((control).equal?(shell))
          break
        end
        control = control.get_parent
      end while (true)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # IServiceProvider
    # long
    # long
    # long
    def _query_service(guid_service, riid, ppv_object)
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return COM::E_INVALIDARG
      end
      guid = GUID.new
      COM._move_memory(guid, riid, GUID.attr_sizeof)
      if (COM._is_equal_guid(guid, COM::IIDIInternetSecurityManager))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_internet_security_manager.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      # long
      COM._move_memory(ppv_object, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
      return COM::E_NOINTERFACE
    end
    
    typesig { [::Java::Int] }
    # IInternetSecurityManager
    # long
    def _set_security_site(p_site)
      return IE::INET_E_DEFAULT_ACTION
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_security_site(pp_site)
      return IE::INET_E_DEFAULT_ACTION
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _map_url_to_zone(pwsz_url, pdw_zone, dw_flags)
      # Feature in IE 6 sp1.  HTML rendered in memory
      # does not enable local links but the exact same
      # HTML document loaded through a local file is
      # permitted to follow local links.  The workaround is
      # to return URLZONE_INTRANET instead of the default
      # value URLZONE_LOCAL_MACHINE.
      COM._move_memory(pdw_zone, Array.typed(::Java::Int).new([IE::URLZONE_INTRANET]), 4)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def _get_security_id(pwsz_url, pb_security_id, pcb_security_id, dw_reserved)
      return IE::INET_E_DEFAULT_ACTION
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def _process_url_action(pwsz_url, dw_action, p_policy, cb_policy, p_context, cb_context, dw_flags, dw_reserved)
      @ignore_next_message = false
      # Feature in IE 6 sp1.  HTML rendered in memory
      # containing an OBJECT tag referring to a local file
      # brings up a warning dialog asking the user whether
      # it should proceed or not.  The workaround is to
      # set the policy to URLPOLICY_ALLOW in this case (dwAction
      # value of 0x1406).
      # 
      # Feature in IE. Security Patches and user settings
      # affect the way the embedded web control behaves.  The current
      # approach is to consider the content trusted and allow
      # all URLs by default.
      policy = IE::URLPOLICY_ALLOW
      # The URLACTION_JAVA flags refer to the <applet> tag, which resolves to
      # the Microsoft VM if the applet is java 1.1.x compliant, or to the OS's
      # java plug-in VM otherwise.  Applets launched with the MS VM work in the
      # Browser, but applets launched with the OS's java plug-in VM crash as a
      # result of the VM failing to load.  Set the policy to URLPOLICY_JAVA_PROHIBIT
      # so that applets compiled with java compliance > 1.1.x will not crash.
      if (dw_action >= IE::URLACTION_JAVA_MIN && dw_action <= IE::URLACTION_JAVA_MAX)
        policy = IE::URLPOLICY_JAVA_PROHIBIT
        @ignore_next_message = true
      end
      # Note.  Some ActiveX plugins crash when executing
      # inside the embedded explorer itself running into
      # a JVM.  The current workaround is to detect when
      # such ActiveX is about to be started and refuse
      # to execute it.
      if ((dw_action).equal?(IE::URLACTION_ACTIVEX_RUN))
        guid = GUID.new
        COM._move_memory(guid, p_context, GUID.attr_sizeof)
        if (COM._is_equal_guid(guid, COM::IIDJavaBeansBridge) || COM._is_equal_guid(guid, COM::IIDShockwaveActiveXControl))
          policy = IE::URLPOLICY_DISALLOW
          @ignore_next_message = true
        end
      end
      if (cb_policy >= 4)
        COM._move_memory(p_policy, Array.typed(::Java::Int).new([policy]), 4)
      end
      return (policy).equal?(IE::URLPOLICY_ALLOW) ? COM::S_OK : COM::S_FALSE
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def _query_custom_policy(pwsz_url, guid_key, pp_policy, pcb_policy, p_context, cb_context, dw_reserved)
      return IE::INET_E_DEFAULT_ACTION
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    def _set_zone_mapping(dw_zone, lpsz_pattern, dw_flags)
      return IE::INET_E_DEFAULT_ACTION
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    def _get_zone_mappings(dw_zone, ppenum_string, dw_flags)
      return COM::E_NOTIMPL
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # IOleCommandTarget
    # long
    # long
    # long
    def _query_status(pguid_cmd_group, c_cmds, prg_cmds, p_cmd_text)
      return COM::E_NOTSUPPORTED
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def _exec(pguid_cmd_group, n_cmd_id, n_cmd_exec_opt, pva_in, pva_out)
      if (!(pguid_cmd_group).equal?(0))
        guid = GUID.new
        COM._move_memory(guid, pguid_cmd_group, GUID.attr_sizeof)
        # If a javascript error occurred then suppress IE's default script error dialog.
        if (COM._is_equal_guid(guid, COM::CGID_DocHostCommandHandler))
          if ((n_cmd_id).equal?(OLECMDID_SHOWSCRIPTERROR))
            return COM::S_OK
          end
        end
        # Bug in Internet Explorer.  OnToolBar TRUE is also fired when any of the
        # address bar or menu bar are requested but not the tool bar.  A workaround
        # has been posted by a Microsoft developer on the public webbrowser_ctl
        # newsgroup. The workaround is to implement the IOleCommandTarget interface
        # to test the argument of an undocumented command.
        if ((n_cmd_id).equal?(1) && COM._is_equal_guid(guid, COM::CGID_Explorer) && (((n_cmd_exec_opt & 0xffff)).equal?(0xa)))
          browser = (get_parent.get_parent).attr_web_browser
          browser.attr_tool_bar = !((n_cmd_exec_opt & -0x10000)).equal?(0)
        end
      end
      return COM::E_NOTSUPPORTED
    end
    
    private
    alias_method :initialize__web_site, :initialize
  end
  
end
