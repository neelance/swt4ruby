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
    
    attr_accessor :i_authenticate
    alias_method :attr_i_authenticate, :i_authenticate
    undef_method :i_authenticate
    alias_method :attr_i_authenticate=, :i_authenticate=
    undef_method :i_authenticate=
    
    attr_accessor :i_dispatch
    alias_method :attr_i_dispatch, :i_dispatch
    undef_method :i_dispatch
    alias_method :attr_i_dispatch=, :i_dispatch=
    undef_method :i_dispatch=
    
    attr_accessor :ignore_next_message
    alias_method :attr_ignore_next_message, :ignore_next_message
    undef_method :ignore_next_message
    alias_method :attr_ignore_next_message=, :ignore_next_message=
    undef_method :ignore_next_message=
    
    attr_accessor :can_execute_applets
    alias_method :attr_can_execute_applets, :can_execute_applets
    undef_method :can_execute_applets
    alias_method :attr_can_execute_applets=, :can_execute_applets=
    undef_method :can_execute_applets=
    
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
      @i_authenticate = nil
      @i_dispatch = nil
      @ignore_next_message = false
      @can_execute_applets = nil
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
      @i_authenticate = Class.new(COMObject.class == Class ? COMObject : Object) do
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
          return _authenticate(args[0], args[1], args[2])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 3]))
      @i_dispatch = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members WebSite
        include COMObject if COMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          # IDispatch check must be done here instead of in the shared QueryInterface
          # implementation, to avoid answering the superclass's IDispatch implementation
          # instead of this one.
          guid = self.class::GUID.new
          COM._move_memory(guid, args[0], GUID.attr_sizeof)
          if (COM._is_equal_guid(guid, COM::IIDIDispatch))
            # long
            COM._move_memory(args[1], Array.typed(::Java::Int).new([self.attr_i_dispatch.get_address]), OS::PTR_SIZEOF)
            _add_ref
            return COM::S_OK
          end
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
          return _get_type_info_count(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          # 64
          # 64
          return _get_type_info(RJava.cast_to_int(args[0]), RJava.cast_to_int(args[1]), args[2])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          # 64
          # 64
          # 64
          return _get_ids_of_names(RJava.cast_to_int(args[0]), args[1], RJava.cast_to_int(args[2]), RJava.cast_to_int(args[3]), args[4])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          # 64
          # 64
          # 64
          # 64
          return _invoke(RJava.cast_to_int(args[0]), RJava.cast_to_int(args[1]), RJava.cast_to_int(args[2]), RJava.cast_to_int(args[3]), args[4], args[5], args[6], args[7])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 1, 3, 5, 8]))
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
      if (!(@i_authenticate).nil?)
        @i_authenticate.dispose
        @i_authenticate = nil
      end
      if (!(@i_dispatch).nil?)
        @i_dispatch.dispose
        @i_dispatch = nil
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
      OS._move_memory(pp_dispatch, Array.typed(::Java::Int).new([@i_dispatch.get_address]), C::PTR_SIZEOF)
      _add_ref
      return COM::S_OK
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
      # to block IE from handling these shortcuts by answering COM.S_OK.
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
        when OS::VK_N
          if (OS._get_key_state(OS::VK_CONTROL) < 0 && OS._get_key_state(OS::VK_MENU) >= 0 && OS._get_key_state(OS::VK_SHIFT) >= 0)
            self.attr_frame.set_data(CONSUME_KEY, "false") # $NON-NLS-1$
            result = COM::S_OK
          end
        else
          OS._translate_message(msg)
          self.attr_frame.set_data(CONSUME_KEY, "true") # $NON-NLS-1$
        end
      end
      case (msg.attr_message)
      when OS::WM_KEYDOWN, OS::WM_KEYUP
        if (!OS::IsWinCE)
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
        end
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
      if (COM._is_equal_guid(guid, COM::IIDIAuthenticate))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_authenticate.get_address]), OS::PTR_SIZEOF)
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
      if (dw_action >= IE::URLACTION_JAVA_MIN && dw_action <= IE::URLACTION_JAVA_MAX)
        if (can_execute_applets)
          policy = IE::URLPOLICY_JAVA_LOW
        else
          policy = IE::URLPOLICY_JAVA_PROHIBIT
          @ignore_next_message = true
        end
      end
      if ((dw_action).equal?(IE::URLACTION_ACTIVEX_RUN))
        guid = GUID.new
        COM._move_memory(guid, p_context, GUID.attr_sizeof)
        if (COM._is_equal_guid(guid, COM::IIDJavaBeansBridge) && !can_execute_applets)
          policy = IE::URLPOLICY_DISALLOW
          @ignore_next_message = true
        end
        if (COM._is_equal_guid(guid, COM::IIDShockwaveActiveXControl))
          policy = IE::URLPOLICY_DISALLOW
          @ignore_next_message = true
        end
      end
      if ((dw_action).equal?(IE::URLACTION_SCRIPT_RUN))
        browser = (get_parent.get_parent).attr_web_browser
        if (!browser.attr_js_enabled)
          policy = IE::URLPOLICY_DISALLOW
        end
      end
      if (cb_policy >= 4)
        COM._move_memory(p_policy, Array.typed(::Java::Int).new([policy]), 4)
      end
      return (policy).equal?(IE::URLPOLICY_ALLOW) ? COM::S_OK : COM::S_FALSE
    end
    
    typesig { [] }
    def can_execute_applets
      # Executing an applet in embedded IE will crash if IE's Java plug-in
      # launches its jre in IE's process, because this new jre conflicts
      # with the one running eclipse.  These cases need to be avoided by
      # vetoing the running of applets.
      # 
      # However as of Sun jre 1.6u10, applets can be launched in a separate
      # process, which avoids the conflict with the jre running eclipse.
      # Therefore if this condition is detected, and if the required jar
      # libraries are available, then applets can be executed.
      # 
      # 
      # executing applets with IE6 embedded can crash, so do not
      # attempt this if the version is less than IE7
      if (!IE::IsIE7)
        return false
      end
      if ((@can_execute_applets).nil?)
        web_browser = (get_parent.get_parent).attr_web_browser
        script = "try {var element = document.createElement('object');element.classid='clsid:CAFEEFAC-DEC7-0000-0000-ABCDEFFEDCBA';return element.object.isPlugin2();} catch (err) {};return false;" # $NON-NLS-1$
        @can_execute_applets = (web_browser.evaluate(script))
        if (@can_execute_applets.boolean_value)
          begin
            Class.for_name("sun.plugin2.main.server.IExplorerPlugin")
            # plugin.jar
            # $NON-NLS-1$
            Class.for_name("com.sun.deploy.services.Service")
            # deploy.jar
            # $NON-NLS-1$
            Class.for_name("com.sun.javaws.Globals")
            # javaws.jar
            # $NON-NLS-1$
          rescue ClassNotFoundException => e
            # one or more of the required jar libraries are not available
            @can_execute_applets = Boolean::FALSE
          end
        end
      end
      return @can_execute_applets.boolean_value
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # IAuthenticate
    # long
    # long
    # long
    def _authenticate(hwnd, sz_username, sz_password)
      browser = (get_parent.get_parent).attr_web_browser
      i = 0
      while i < browser.attr_authentication_listeners.attr_length
        event = AuthenticationEvent.new(browser.attr_browser)
        event.attr_location = browser.attr_last_navigate_url
        browser.attr_authentication_listeners[i].authenticate(event)
        if (!event.attr_doit)
          return COM::E_ACCESSDENIED
        end
        if (!(event.attr_user).nil? && !(event.attr_password).nil?)
          user = TCHAR.new(0, event.attr_user, true)
          size = user.length * TCHAR.attr_sizeof
          # long
          user_ptr = COM._co_task_mem_alloc(size)
          OS._move_memory(user_ptr, user, size)
          password = TCHAR.new(0, event.attr_password, true)
          size = password.length * TCHAR.attr_sizeof
          # long
          password_ptr = COM._co_task_mem_alloc(size)
          OS._move_memory(password_ptr, password, size)
          # long
          C.memmove(hwnd, Array.typed(::Java::Int).new([0]), C::PTR_SIZEOF)
          # long
          C.memmove(sz_username, Array.typed(::Java::Int).new([user_ptr]), C::PTR_SIZEOF)
          # long
          C.memmove(sz_password, Array.typed(::Java::Int).new([password_ptr]), C::PTR_SIZEOF)
          return COM::S_OK
        end
        i += 1
      end
      # no listener handled the challenge, so defer to the native dialog
      # long
      C.memmove(hwnd, Array.typed(::Java::Int).new([get_shell.attr_handle]), C::PTR_SIZEOF)
      return COM::S_OK
    end
    
    typesig { [::Java::Int] }
    # IDispatch
    # long
    def _get_type_info_count(pctinfo)
      C.memmove(pctinfo, Array.typed(::Java::Int).new([0]), 4)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    def _get_type_info(i_tinfo, lcid, pp_tinfo)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _get_ids_of_names(riid, rgsz_names, c_names, lcid, rg_disp_id)
      # long
      # long
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      OS._move_memory(ptr, rgsz_names, C::PTR_SIZEOF)
      length_ = OS.wcslen(ptr[0])
      buffer = CharArray.new(length_)
      OS._move_memory(buffer, ptr[0], length_ * 2)
      function_name = String.value_of(buffer)
      result = COM::S_OK
      ids = Array.typed(::Java::Int).new(c_names) { 0 }
      # DISPIDs
      if ((function_name == "callJava"))
        # $NON-NLS-1$
        i = 0
        while i < c_names
          ids[i] = i + 1
          i += 1
        end
      else
        result = COM::DISP_E_UNKNOWNNAME
        i = 0
        while i < c_names
          ids[i] = COM::DISPID_UNKNOWN
          i += 1
        end
      end
      OS._move_memory(rg_disp_id, ids, c_names * 4)
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def _invoke(disp_id_member, riid, lcid, dw_flags, p_disp_params, p_var_result, p_excep_info, p_arg_err)
      disp_params = DISPPARAMS.new
      COM._move_memory(disp_params, p_disp_params, DISPPARAMS.attr_sizeof)
      if (!(disp_params.attr_c_args).equal?(2))
        if (!(p_var_result).equal?(0))
          # long
          COM._move_memory(p_var_result, Array.typed(::Java::Int).new([0]), C::PTR_SIZEOF)
        end
        return COM::S_OK
      end
      # long
      ptr = disp_params.attr_rgvarg + Variant.attr_sizeof
      variant = Variant.win32_new(ptr)
      index = variant.get_int
      variant.dispose
      if (index <= 0)
        if (!(p_var_result).equal?(0))
          # long
          COM._move_memory(p_var_result, Array.typed(::Java::Int).new([0]), C::PTR_SIZEOF)
        end
        return COM::S_OK
      end
      variant = Variant.win32_new(disp_params.attr_rgvarg)
      ie = (get_parent.get_parent).attr_web_browser
      key = index
      function = ie.attr_functions.get(key)
      return_value = nil
      if (!(function).nil?)
        begin
          temp = convert_to_java(variant)
          if (temp.is_a?(Array.typed(Object)))
            args = temp
            begin
              return_value = function.function(args)
            rescue JavaException => e
              # exception during function invocation
              return_value = WebBrowser._create_error_string(e.get_localized_message)
            end
          end
        rescue IllegalArgumentException => e
          # invalid argument value type
          if (function.attr_is_evaluate)
            # notify the function so that a java exception can be thrown
            function.function(Array.typed(String).new([WebBrowser._create_error_string(SWTException.new(SWT::ERROR_INVALID_RETURN_VALUE).get_localized_message)]))
          end
          return_value = WebBrowser._create_error_string(e.get_localized_message)
        end
      end
      variant.dispose
      if (!(p_var_result).equal?(0))
        if ((return_value).nil?)
          # long
          COM._move_memory(p_var_result, Array.typed(::Java::Int).new([0]), C::PTR_SIZEOF)
        else
          begin
            variant = convert_to_js(return_value)
          rescue SWTException => e
            # invalid return value type
            variant = convert_to_js(WebBrowser._create_error_string(e.get_localized_message))
          end
          Variant.win32_copy(p_var_result, variant)
          variant.dispose
        end
      end
      return COM::S_OK
    end
    
    typesig { [Variant] }
    def convert_to_java(variant)
      case (variant.get_type)
      when OLE::VT_NULL
        return nil
      when OLE::VT_BSTR
        return variant.get_string
      when OLE::VT_BOOL
        return Boolean.new(variant.get_boolean)
      when OLE::VT_I2, OLE::VT_I4, OLE::VT_I8, OLE::VT_R4, OLE::VT_R8
        return Double.new(variant.get_double)
      when OLE::VT_DISPATCH
        args = nil
        auto = variant.get_automation
        typeattr = auto.get_type_info_attributes
        if (!(typeattr).nil?)
          guid = GUID.new
          guid.attr_data1 = typeattr.attr_guid_data1
          guid.attr_data2 = typeattr.attr_guid_data2
          guid.attr_data3 = typeattr.attr_guid_data3
          guid.attr_data4 = typeattr.attr_guid_data4
          if (COM._is_equal_guid(guid, COM::IIDIJScriptTypeInfo))
            rgdispid = auto.get_ids_of_names(Array.typed(String).new(["length"])) # $NON-NLS-1$
            if (!(rgdispid).nil?)
              var_length = auto.get_property(rgdispid[0])
              length_ = var_length.get_int
              var_length.dispose
              args = Array.typed(Object).new(length_) { nil }
              i = 0
              while i < length_
                rgdispid = auto.get_ids_of_names(Array.typed(String).new([String.value_of(i)]))
                if (!(rgdispid).nil?)
                  current = auto.get_property(rgdispid[0])
                  begin
                    args[i] = convert_to_java(current)
                    current.dispose
                  rescue IllegalArgumentException => e
                    # invalid argument value type
                    current.dispose
                    auto.dispose
                    raise e
                  end
                end
                i += 1
              end
            end
          else
            auto.dispose
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
        end
        auto.dispose
        return args
      end
      SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      return nil
    end
    
    typesig { [Object] }
    def convert_to_js(value)
      if ((value).nil?)
        return Variant.new
      end
      if (value.is_a?(String))
        return Variant.new(value)
      end
      if (value.is_a?(Boolean))
        return Variant.new((value).boolean_value)
      end
      if (value.is_a?(Numeric))
        return Variant.new((value).double_value)
      end
      if (value.is_a?(Array.typed(Object)))
        array_value = value
        length_ = array_value.attr_length
        if (length_ > 0)
          # get IHTMLDocument2
          browser = (get_parent.get_parent).attr_web_browser
          auto = browser.attr_auto
          rgdispid = auto.get_ids_of_names(Array.typed(String).new(["Document"])) # $NON-NLS-1$
          if ((rgdispid).nil?)
            return Variant.new
          end
          p_var_result = auto.get_property(rgdispid[0])
          if ((p_var_result).nil?)
            return Variant.new
          end
          if ((p_var_result.get_type).equal?(COM::VT_EMPTY))
            p_var_result.dispose
            return Variant.new
          end
          document = p_var_result.get_automation
          p_var_result.dispose
          # get IHTMLWindow2
          rgdispid = document.get_ids_of_names(Array.typed(String).new(["parentWindow"])) # $NON-NLS-1$
          if ((rgdispid).nil?)
            document.dispose
            return Variant.new
          end
          p_var_result = document.get_property(rgdispid[0])
          if ((p_var_result).nil? || (p_var_result.get_type).equal?(COM::VT_EMPTY))
            if (!(p_var_result).nil?)
              p_var_result.dispose
            end
            document.dispose
            return Variant.new
          end
          ihtml_window2 = p_var_result.get_automation
          p_var_result.dispose
          document.dispose
          # create a new JS array to be returned
          rgdispid = ihtml_window2.get_ids_of_names(Array.typed(String).new(["Array"])) # $NON-NLS-1$
          if ((rgdispid).nil?)
            ihtml_window2.dispose
            return Variant.new
          end
          array_type = ihtml_window2.get_property(rgdispid[0])
          ihtml_window2.dispose
          array_type_dispatch = array_type.get_dispatch
          array_type.dispose
          # long
          # long
          result = Array.typed(::Java::Int).new(1) { 0 }
          rc = array_type_dispatch._query_interface(COM::IIDIDispatchEx, result)
          if (!(rc).equal?(COM::S_OK))
            return Variant.new
          end
          array_type_dispatch_ex = IDispatchEx.new(result[0])
          result[0] = 0
          # long
          result_ptr = OS._global_alloc(OS::GMEM_FIXED | OS::GMEM_ZEROINIT, VARIANT.attr_sizeof)
          params = DISPPARAMS.new
          rc = array_type_dispatch_ex._invoke_ex(COM::DISPID_VALUE, COM::LOCALE_USER_DEFAULT, COM::DISPATCH_CONSTRUCT, params, result_ptr, nil, 0)
          if (!(rc).equal?(COM::S_OK))
            OS._global_free(result_ptr)
            return Variant.new
          end
          array = Variant.win32_new(result_ptr)
          OS._global_free(result_ptr)
          # populate the array
          auto = array.get_automation
          rgdispids = auto.get_ids_of_names(Array.typed(String).new(["push"])) # $NON-NLS-1$
          if (!(rgdispids).nil?)
            i = 0
            while i < length_
              current_object = array_value[i]
              begin
                variant = convert_to_js(current_object)
                auto.invoke(rgdispids[0], Array.typed(Variant).new([variant]))
                variant.dispose
              rescue SWTException => e
                # invalid return value type
                auto.dispose
                array.dispose
                raise e
              end
              i += 1
            end
          end
          auto.dispose
          return array
        end
      end
      SWT.error(SWT::ERROR_INVALID_RETURN_VALUE)
      return nil
    end
    
    private
    alias_method :initialize__web_site, :initialize
  end
  
end
