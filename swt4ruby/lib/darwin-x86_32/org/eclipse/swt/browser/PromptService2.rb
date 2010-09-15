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
  module PromptService2Imports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Mozilla
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  class PromptService2 
    include_class_members PromptService2Imports
    
    attr_accessor :supports
    alias_method :attr_supports, :supports
    undef_method :supports
    alias_method :attr_supports=, :supports=
    undef_method :supports=
    
    attr_accessor :prompt_service
    alias_method :attr_prompt_service, :prompt_service
    undef_method :prompt_service
    alias_method :attr_prompt_service=, :prompt_service=
    undef_method :prompt_service=
    
    attr_accessor :prompt_service2
    alias_method :attr_prompt_service2, :prompt_service2
    undef_method :prompt_service2
    alias_method :attr_prompt_service2=, :prompt_service2=
    undef_method :prompt_service2=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    typesig { [] }
    def initialize
      @supports = nil
      @prompt_service = nil
      @prompt_service2 = nil
      @ref_count = 0
      create_cominterfaces
    end
    
    typesig { [] }
    def _add_ref
      @ref_count += 1
      return @ref_count
    end
    
    typesig { [] }
    def create_cominterfaces
      @supports = # Create each of the interfaces that this object implements
      Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        local_class_in PromptService2
        include_class_members PromptService2
        include XPCOMObject if XPCOMObject.class == Module
        
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
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0]))
      @prompt_service = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        local_class_in PromptService2
        include_class_members PromptService2
        include XPCOMObject if XPCOMObject.class == Module
        
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
          return _alert(args[0], args[1], args[2])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          return _alert_check(args[0], args[1], args[2], args[3], args[4])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          return _confirm(args[0], args[1], args[2], args[3])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          return _confirm_check(args[0], args[1], args[2], args[3], args[4], args[5])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method7 do |args|
          # 64
          return _confirm_ex(args[0], args[1], args[2], RJava.cast_to_int(args[3]), args[4], args[5], args[6], args[7], args[8], args[9])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method8 do |args|
          return _prompt(args[0], args[1], args[2], args[3], args[4], args[5], args[6])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method9 do |args|
          return _prompt_username_and_password(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method10 do |args|
          return _prompt_password(args[0], args[1], args[2], args[3], args[4], args[5], args[6])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method11 do |args|
          # 64
          return _select(args[0], args[1], args[2], RJava.cast_to_int(args[3]), args[4], args[5], args[6])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 3, 5, 4, 6, 10, 7, 8, 7, 7]))
      @prompt_service2 = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        local_class_in PromptService2
        include_class_members PromptService2
        include XPCOMObject if XPCOMObject.class == Module
        
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
          return _alert(args[0], args[1], args[2])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          return _alert_check(args[0], args[1], args[2], args[3], args[4])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          return _confirm(args[0], args[1], args[2], args[3])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          return _confirm_check(args[0], args[1], args[2], args[3], args[4], args[5])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method7 do |args|
          # 64
          return _confirm_ex(args[0], args[1], args[2], RJava.cast_to_int(args[3]), args[4], args[5], args[6], args[7], args[8], args[9])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method8 do |args|
          return _prompt(args[0], args[1], args[2], args[3], args[4], args[5], args[6])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method9 do |args|
          return _prompt_username_and_password(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method10 do |args|
          return _prompt_password(args[0], args[1], args[2], args[3], args[4], args[5], args[6])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method11 do |args|
          # 64
          return _select(args[0], args[1], args[2], RJava.cast_to_int(args[3]), args[4], args[5], args[6])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method12 do |args|
          # 64
          return _prompt_auth(args[0], args[1], RJava.cast_to_int(args[2]), args[3], args[4], args[5], args[6])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method13 do |args|
          # 64
          return _async_prompt_auth(args[0], args[1], args[2], args[3], RJava.cast_to_int(args[4]), args[5], args[6], args[7], args[8])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 3, 5, 4, 6, 10, 7, 8, 7, 7, 7, 9]))
    end
    
    typesig { [] }
    def dispose_cominterfaces
      if (!(@supports).nil?)
        @supports.dispose
        @supports = nil
      end
      if (!(@prompt_service).nil?)
        @prompt_service.dispose
        @prompt_service = nil
      end
      if (!(@prompt_service2).nil?)
        @prompt_service2.dispose
        @prompt_service2 = nil
      end
    end
    
    typesig { [] }
    # long
    def get_address
      return @prompt_service2.get_address
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _query_interface(riid, ppv_object)
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return XPCOM::NS_ERROR_NO_INTERFACE
      end
      guid = NsID.new
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_1(guid, riid, self.attr_ns_id.attr_sizeof)
      if (guid._equals(NsISupports::NS_ISUPPORTS_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_3(ppv_object, Array.typed(::Java::Int).new([@supports.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIPromptService::NS_IPROMPTSERVICE_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_5(ppv_object, Array.typed(::Java::Int).new([@prompt_service.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIPromptService2::NS_IPROMPTSERVICE2_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_7(ppv_object, Array.typed(::Java::Int).new([@prompt_service2.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      # long
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_9(ppv_object, Array.typed(::Java::Int).new([0]), C::PTR_SIZEOF)
      return XPCOM::NS_ERROR_NO_INTERFACE
    end
    
    typesig { [] }
    def _release
      @ref_count -= 1
      if ((@ref_count).equal?(0))
        dispose_cominterfaces
      end
      return @ref_count
    end
    
    typesig { [::Java::Int] }
    # long
    def get_browser(a_domwindow)
      if ((a_domwindow).equal?(0))
        return nil
      end
      window = NsIDOMWindow.new(a_domwindow)
      return Mozilla.find_browser(window)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    def get_label(button_flag, index, button_title)
      label = nil
      flag = (button_flag & (0xff * index)) / index
      case (flag)
      # $NON-NLS-1$
      # $NON-NLS-1$
      # $NON-NLS-1$
      # $NON-NLS-1$
      # $NON-NLS-1$
      when NsIPromptService::BUTTON_TITLE_CANCEL
        label = RJava.cast_to_string(SWT.get_message("SWT_Cancel"))
      when NsIPromptService::BUTTON_TITLE_NO
        label = RJava.cast_to_string(SWT.get_message("SWT_No"))
      when NsIPromptService::BUTTON_TITLE_OK
        label = RJava.cast_to_string(SWT.get_message("SWT_OK"))
      when NsIPromptService::BUTTON_TITLE_SAVE
        label = RJava.cast_to_string(SWT.get_message("SWT_Save"))
      when NsIPromptService::BUTTON_TITLE_YES
        label = RJava.cast_to_string(SWT.get_message("SWT_Yes"))
      when NsIPromptService::BUTTON_TITLE_IS_STRING
        length = XPCOM.strlen__prunichar(button_title)
        dest = CharArray.new(length)
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_11(dest, button_title, length * 2)
        label = RJava.cast_to_string(String.new(dest))
      end
      return label
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # nsIPromptService
    # long
    # long
    # long
    def _alert(a_parent, a_dialog_title, a_text)
      browser = get_browser(a_parent)
      length = XPCOM.strlen__prunichar(a_dialog_title)
      dest = CharArray.new(length)
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_13(dest, a_dialog_title, length * 2)
      title_label = String.new(dest)
      length = XPCOM.strlen__prunichar(a_text)
      dest = CharArray.new(length)
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_15(dest, a_text, length * 2)
      text_label = String.new(dest)
      shell = (browser).nil? ? Shell.new : browser.get_shell
      message_box = MessageBox.new(shell, SWT::OK | SWT::ICON_WARNING)
      message_box.set_text(title_label)
      message_box.set_message(text_label)
      message_box.open
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def _alert_check(a_parent, a_dialog_title, a_text, a_check_msg, a_check_state)
      browser = get_browser(a_parent)
      length = XPCOM.strlen__prunichar(a_dialog_title)
      dest = CharArray.new(length)
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_17(dest, a_dialog_title, length * 2)
      title_label = String.new(dest)
      length = XPCOM.strlen__prunichar(a_text)
      dest = CharArray.new(length)
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_19(dest, a_text, length * 2)
      text_label = String.new(dest)
      length = XPCOM.strlen__prunichar(a_check_msg)
      dest = CharArray.new(length)
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_21(dest, a_check_msg, length * 2)
      check_label = String.new(dest)
      shell = (browser).nil? ? Shell.new : browser.get_shell
      dialog = PromptDialog.new(shell)
      check = Array.typed(::Java::Int).new(1) { 0 }
      if (!(a_check_state).equal?(0))
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_23(check, a_check_state, 4)
      end
      # PRBool
      dialog.alert_check(title_label, text_label, check_label, check)
      if (!(a_check_state).equal?(0))
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_25(a_check_state, check, 4)
      end
      # PRBool
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def _async_prompt_auth(a_parent, a_channel, a_callback, a_context, level, auth_info, checkbox_label, check_value, _retval)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def _confirm(a_parent, a_dialog_title, a_text, _retval)
      browser = get_browser(a_parent)
      length = XPCOM.strlen__prunichar(a_dialog_title)
      dest = CharArray.new(length)
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_27(dest, a_dialog_title, length * 2)
      title_label = String.new(dest)
      length = XPCOM.strlen__prunichar(a_text)
      dest = CharArray.new(length)
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_29(dest, a_text, length * 2)
      text_label = String.new(dest)
      shell = (browser).nil? ? Shell.new : browser.get_shell
      message_box = MessageBox.new(shell, SWT::OK | SWT::CANCEL | SWT::ICON_QUESTION)
      message_box.set_text(title_label)
      message_box.set_message(text_label)
      id = message_box.open
      result = Array.typed(::Java::Int).new([(id).equal?(SWT::OK) ? 1 : 0])
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_31(_retval, result, 4)
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def _confirm_check(a_parent, a_dialog_title, a_text, a_check_msg, a_check_state, _retval)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def _confirm_ex(a_parent, a_dialog_title, a_text, a_button_flags, a_button0title, a_button1title, a_button2title, a_check_msg, a_check_state, _retval)
      browser = get_browser(a_parent)
      length = XPCOM.strlen__prunichar(a_dialog_title)
      dest = CharArray.new(length)
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_33(dest, a_dialog_title, length * 2)
      title_label = String.new(dest)
      length = XPCOM.strlen__prunichar(a_text)
      dest = CharArray.new(length)
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_35(dest, a_text, length * 2)
      text_label = String.new(dest)
      check_label = nil
      if (!(a_check_msg).equal?(0))
        length = XPCOM.strlen__prunichar(a_check_msg)
        dest = CharArray.new(length)
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_37(dest, a_check_msg, length * 2)
        check_label = RJava.cast_to_string(String.new(dest))
      end
      button0label = get_label(a_button_flags, NsIPromptService::BUTTON_POS_0, a_button0title)
      button1label = get_label(a_button_flags, NsIPromptService::BUTTON_POS_1, a_button1title)
      button2label = get_label(a_button_flags, NsIPromptService::BUTTON_POS_2, a_button2title)
      default_index = 0
      if (!((a_button_flags & NsIPromptService::BUTTON_POS_1_DEFAULT)).equal?(0))
        default_index = 1
      else
        if (!((a_button_flags & NsIPromptService::BUTTON_POS_2_DEFAULT)).equal?(0))
          default_index = 2
        end
      end
      shell = (browser).nil? ? Shell.new : browser.get_shell
      dialog = PromptDialog.new(shell)
      check = Array.typed(::Java::Int).new(1) { 0 }
      result = Array.typed(::Java::Int).new(1) { 0 }
      if (!(a_check_state).equal?(0))
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_39(check, a_check_state, 4)
      end
      dialog.confirm_ex(title_label, text_label, check_label, button0label, button1label, button2label, default_index, check, result)
      if (!(a_check_state).equal?(0))
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_41(a_check_state, check, 4)
      end
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_43(_retval, result, 4)
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def _prompt(a_parent, a_dialog_title, a_text, a_value, a_check_msg, a_check_state, _retval)
      browser = get_browser(a_parent)
      title_label = nil
      text_label = nil
      check_label = nil
      value_label = Array.typed(String).new(1) { nil }
      dest = nil
      length = 0
      if (!(a_dialog_title).equal?(0))
        length = XPCOM.strlen__prunichar(a_dialog_title)
        dest = CharArray.new(length)
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_45(dest, a_dialog_title, length * 2)
        title_label = RJava.cast_to_string(String.new(dest))
      end
      length = XPCOM.strlen__prunichar(a_text)
      dest = CharArray.new(length)
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_47(dest, a_text, length * 2)
      text_label = RJava.cast_to_string(String.new(dest))
      # long
      # long
      value_addr = Array.typed(::Java::Int).new(1) { 0 }
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_49(value_addr, a_value, C::PTR_SIZEOF)
      if (!(value_addr[0]).equal?(0))
        length = XPCOM.strlen__prunichar(value_addr[0])
        dest = CharArray.new(length)
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_51(dest, value_addr[0], length * 2)
        value_label[0] = String.new(dest)
      end
      if (!(a_check_msg).equal?(0))
        length = XPCOM.strlen__prunichar(a_check_msg)
        if (length > 0)
          dest = CharArray.new(length)
          XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_53(dest, a_check_msg, length * 2)
          check_label = RJava.cast_to_string(String.new(dest))
        end
      end
      shell = (browser).nil? ? Shell.new : browser.get_shell
      dialog = PromptDialog.new(shell)
      check = Array.typed(::Java::Int).new(1) { 0 }
      result = Array.typed(::Java::Int).new(1) { 0 }
      if (!(a_check_state).equal?(0))
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_55(check, a_check_state, 4)
      end
      dialog.prompt(title_label, text_label, check_label, value_label, check, result)
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_57(_retval, result, 4)
      if ((result[0]).equal?(1))
        # User selected OK. User name and password are returned as PRUnichar values. Any default
        # value that we override must be freed using the nsIMemory service.
        if (!(value_label[0]).nil?)
          # long
          # long
          result2 = Array.typed(::Java::Int).new(1) { 0 }
          rc = XPCOM._ns_get_service_manager(result2)
          if (!(rc).equal?(XPCOM::NS_OK))
            SWT.error(rc)
          end
          if ((result2[0]).equal?(0))
            SWT.error(XPCOM::NS_NOINTERFACE)
          end
          service_manager = NsIServiceManager.new(result2[0])
          result2[0] = 0
          a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_MEMORY_CONTRACTID, true)
          rc = service_manager._get_service_by_contract_id(a_contract_id, NsIMemory::NS_IMEMORY_IID, result2)
          if (!(rc).equal?(XPCOM::NS_OK))
            SWT.error(rc)
          end
          if ((result2[0]).equal?(0))
            SWT.error(XPCOM::NS_NOINTERFACE)
          end
          service_manager._release
          memory = NsIMemory.new(result2[0])
          result2[0] = 0
          cnt = value_label[0].length
          buffer = CharArray.new(cnt + 1)
          value_label[0].get_chars(0, cnt, buffer, 0)
          size = buffer.attr_length * 2
          # long
          ptr = memory._alloc(size)
          XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_59(ptr, buffer, size)
          # long
          XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_61(a_value, Array.typed(::Java::Int).new([ptr]), C::PTR_SIZEOF)
          if (!(value_addr[0]).equal?(0))
            memory._free(value_addr[0])
          end
          memory._release
        end
      end
      if (!(a_check_state).equal?(0))
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_63(a_check_state, check, 4)
      end
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def _prompt_auth(a_parent, a_channel, level, auth_info, checkbox_label, checkbox_value, _retval)
      auth = NsIAuthInformation.new(auth_info)
      browser = get_browser(a_parent)
      if (!(browser).nil?)
        mozilla = browser.attr_web_browser
        # Do not invoke the listeners if this challenge has been failed too many
        # times because a listener is likely giving incorrect credentials repeatedly
        # and will do so indefinitely.
        if (((mozilla.attr_auth_count += 1) - 1) < 3)
          i = 0
          while i < mozilla.attr_authentication_listeners.attr_length
            event = AuthenticationEvent.new(browser)
            event.attr_location = mozilla.attr_last_navigate_url
            mozilla.attr_authentication_listeners[i].authenticate(event)
            if (!event.attr_doit)
              XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_65(_retval, Array.typed(::Java::Int).new([0]), 4)
              # PRBool
              return XPCOM::NS_OK
            end
            if (!(event.attr_user).nil? && !(event.attr_password).nil?)
              string = NsEmbedString.new(event.attr_user)
              rc = auth._set_username(string.get_address)
              if (!(rc).equal?(XPCOM::NS_OK))
                SWT.error(rc)
              end
              string.dispose
              string = NsEmbedString.new(event.attr_password)
              rc = auth._set_password(string.get_address)
              if (!(rc).equal?(XPCOM::NS_OK))
                SWT.error(rc)
              end
              string.dispose
              XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_67(_retval, Array.typed(::Java::Int).new([1]), 4)
              # PRBool
              return XPCOM::NS_OK
            end
            i += 1
          end
        end
      end
      # no listener handled the challenge, so show an authentication dialog
      check_label = nil
      check_value = Array.typed(::Java::Int).new(1) { 0 }
      user_label = Array.typed(String).new(1) { nil }
      pass_label = Array.typed(String).new(1) { nil }
      title = SWT.get_message("SWT_Authentication_Required") # $NON-NLS-1$
      if (!(checkbox_label).equal?(0) && !(checkbox_value).equal?(0))
        length = XPCOM.strlen__prunichar(checkbox_label)
        dest = CharArray.new(length)
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_69(dest, checkbox_label, length * 2)
        check_label = RJava.cast_to_string(String.new(dest))
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_71(check_value, checkbox_value, 4)
        # PRBool
      end
      # get initial username and password values
      # long
      ptr = XPCOM.ns_embed_string_new
      rc = auth._get_username(ptr)
      if (!(rc).equal?(XPCOM::NS_OK))
        SWT.error(rc)
      end
      length = XPCOM.ns_embed_string_length(ptr)
      # long
      buffer = XPCOM.ns_embed_string_get(ptr)
      chars = CharArray.new(length)
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_73(chars, buffer, length * 2)
      user_label[0] = String.new(chars)
      XPCOM.ns_embed_string_delete(ptr)
      ptr = XPCOM.ns_embed_string_new
      rc = auth._get_password(ptr)
      if (!(rc).equal?(XPCOM::NS_OK))
        SWT.error(rc)
      end
      length = XPCOM.ns_embed_string_length(ptr)
      buffer = XPCOM.ns_embed_string_get(ptr)
      chars = CharArray.new(length)
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_75(chars, buffer, length * 2)
      pass_label[0] = String.new(chars)
      XPCOM.ns_embed_string_delete(ptr)
      # compute the message text
      ptr = XPCOM.ns_embed_string_new
      rc = auth._get_realm(ptr)
      if (!(rc).equal?(XPCOM::NS_OK))
        SWT.error(rc)
      end
      length = XPCOM.ns_embed_string_length(ptr)
      buffer = XPCOM.ns_embed_string_get(ptr)
      chars = CharArray.new(length)
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_77(chars, buffer, length * 2)
      realm = String.new(chars)
      XPCOM.ns_embed_string_delete(ptr)
      channel = NsIChannel.new(a_channel)
      # long
      # long
      uri = Array.typed(::Java::Int).new(1) { 0 }
      rc = channel._get_uri(uri)
      if (!(rc).equal?(XPCOM::NS_OK))
        SWT.error(rc)
      end
      if ((uri[0]).equal?(0))
        Mozilla.error(XPCOM::NS_NOINTERFACE)
      end
      ns_uri = NsIURI.new(uri[0])
      # long
      host = XPCOM.ns_embed_cstring_new
      rc = ns_uri._get_host(host)
      if (!(rc).equal?(XPCOM::NS_OK))
        SWT.error(rc)
      end
      length = XPCOM.ns_embed_cstring_length(host)
      buffer = XPCOM.ns_embed_cstring_get(host)
      bytes = Array.typed(::Java::Byte).new(length) { 0 }
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_79(bytes, buffer, length)
      host_string = String.new(bytes)
      XPCOM.ns_embed_cstring_delete(host)
      ns_uri._release
      message = nil
      if (realm.length > 0 && host_string.length > 0)
        message = RJava.cast_to_string(Compatibility.get_message("SWT_Enter_Username_and_Password", Array.typed(String).new([realm, host_string]))) # $NON-NLS-1$
      else
        message = "" # $NON-NLS-1$
      end
      # open the prompter
      shell = (browser).nil? ? Shell.new : browser.get_shell
      dialog = PromptDialog.new(shell)
      result = Array.typed(::Java::Int).new(1) { 0 }
      dialog.prompt_username_and_password(title, message, check_label, user_label, pass_label, check_value, result)
      XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_81(_retval, result, 4)
      # PRBool
      if ((result[0]).equal?(1))
        # User selected OK
        string = NsEmbedString.new(user_label[0])
        rc = auth._set_username(string.get_address)
        if (!(rc).equal?(XPCOM::NS_OK))
          SWT.error(rc)
        end
        string.dispose
        string = NsEmbedString.new(pass_label[0])
        rc = auth._set_password(string.get_address)
        if (!(rc).equal?(XPCOM::NS_OK))
          SWT.error(rc)
        end
        string.dispose
      end
      if (!(checkbox_value).equal?(0))
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_83(checkbox_value, check_value, 4)
      end
      # PRBool
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def _prompt_username_and_password(a_parent, a_dialog_title, a_text, a_username, a_password, a_check_msg, a_check_state, _retval)
      browser = get_browser(a_parent)
      user = nil
      password = nil
      if (!(browser).nil?)
        mozilla = browser.attr_web_browser
        # Do not invoke the listeners if this challenge has been failed too many
        # times because a listener is likely giving incorrect credentials repeatedly
        # and will do so indefinitely.
        if (((mozilla.attr_auth_count += 1) - 1) < 3)
          i = 0
          while i < mozilla.attr_authentication_listeners.attr_length
            event = AuthenticationEvent.new(browser)
            event.attr_location = mozilla.attr_last_navigate_url
            mozilla.attr_authentication_listeners[i].authenticate(event)
            if (!event.attr_doit)
              XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_85(_retval, Array.typed(::Java::Int).new([0]), 4)
              # PRBool
              return XPCOM::NS_OK
            end
            if (!(event.attr_user).nil? && !(event.attr_password).nil?)
              user = RJava.cast_to_string(event.attr_user)
              password = RJava.cast_to_string(event.attr_password)
              XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_87(_retval, Array.typed(::Java::Int).new([1]), 4)
              # PRBool
              break
            end
            i += 1
          end
        end
      end
      if ((user).nil?)
        # no listener handled the challenge, so show an authentication dialog
        title_label = nil
        text_label = nil
        check_label = nil
        user_label = Array.typed(String).new(1) { nil }
        pass_label = Array.typed(String).new(1) { nil }
        dest = nil
        length_ = 0
        if (!(a_dialog_title).equal?(0))
          length_ = XPCOM.strlen__prunichar(a_dialog_title)
          dest = CharArray.new(length_)
          XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_89(dest, a_dialog_title, length_ * 2)
          title_label = RJava.cast_to_string(String.new(dest))
        else
          title_label = RJava.cast_to_string(SWT.get_message("SWT_Authentication_Required")) # $NON-NLS-1$
        end
        length_ = XPCOM.strlen__prunichar(a_text)
        dest = CharArray.new(length_)
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_91(dest, a_text, length_ * 2)
        text_label = RJava.cast_to_string(String.new(dest))
        # long
        # long
        user_addr = Array.typed(::Java::Int).new(1) { 0 }
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_93(user_addr, a_username, C::PTR_SIZEOF)
        if (!(user_addr[0]).equal?(0))
          length_ = XPCOM.strlen__prunichar(user_addr[0])
          dest = CharArray.new(length_)
          XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_95(dest, user_addr[0], length_ * 2)
          user_label[0] = String.new(dest)
        end
        # long
        # long
        pass_addr = Array.typed(::Java::Int).new(1) { 0 }
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_97(pass_addr, a_password, C::PTR_SIZEOF)
        if (!(pass_addr[0]).equal?(0))
          length_ = XPCOM.strlen__prunichar(pass_addr[0])
          dest = CharArray.new(length_)
          XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_99(dest, pass_addr[0], length_ * 2)
          pass_label[0] = String.new(dest)
        end
        if (!(a_check_msg).equal?(0))
          length_ = XPCOM.strlen__prunichar(a_check_msg)
          if (length_ > 0)
            dest = CharArray.new(length_)
            XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_101(dest, a_check_msg, length_ * 2)
            check_label = RJava.cast_to_string(String.new(dest))
          end
        end
        shell = (browser).nil? ? Shell.new : browser.get_shell
        dialog = PromptDialog.new(shell)
        check = Array.typed(::Java::Int).new(1) { 0 }
        result = Array.typed(::Java::Int).new(1) { 0 }
        if (!(a_check_state).equal?(0))
          XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_103(check, a_check_state, 4)
        end
        # PRBool
        dialog.prompt_username_and_password(title_label, text_label, check_label, user_label, pass_label, check, result)
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_105(_retval, result, 4)
        # PRBool
        if ((result[0]).equal?(1))
          # User selected OK
          user = RJava.cast_to_string(user_label[0])
          password = RJava.cast_to_string(pass_label[0])
        end
        if (!(a_check_state).equal?(0))
          XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_107(a_check_state, check, 4)
        end
        # PRBool
      end
      if (!(user).nil?)
        # User name and password are returned as PRUnichar values. Any default
        # value that we override must be freed using the nsIMemory service.
        # 
        # long
        # long
        user_addr = Array.typed(::Java::Int).new(1) { 0 }
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_109(user_addr, a_username, C::PTR_SIZEOF)
        # long
        # long
        pass_addr = Array.typed(::Java::Int).new(1) { 0 }
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_111(pass_addr, a_password, C::PTR_SIZEOF)
        # long
        # long
        result = Array.typed(::Java::Int).new(1) { 0 }
        rc = XPCOM._ns_get_service_manager(result)
        if (!(rc).equal?(XPCOM::NS_OK))
          SWT.error(rc)
        end
        if ((result[0]).equal?(0))
          SWT.error(XPCOM::NS_NOINTERFACE)
        end
        service_manager = NsIServiceManager.new(result[0])
        result[0] = 0
        a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_MEMORY_CONTRACTID, true)
        rc = service_manager._get_service_by_contract_id(a_contract_id, NsIMemory::NS_IMEMORY_IID, result)
        if (!(rc).equal?(XPCOM::NS_OK))
          SWT.error(rc)
        end
        if ((result[0]).equal?(0))
          SWT.error(XPCOM::NS_NOINTERFACE)
        end
        service_manager._release
        memory = NsIMemory.new(result[0])
        result[0] = 0
        if (!(user_addr[0]).equal?(0))
          memory._free(user_addr[0])
        end
        if (!(pass_addr[0]).equal?(0))
          memory._free(pass_addr[0])
        end
        memory._release
        # write the name and password values
        cnt = user.length
        buffer = CharArray.new(cnt + 1)
        user.get_chars(0, cnt, buffer, 0)
        size = buffer.attr_length * 2
        # long
        ptr = C.malloc(size)
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_113(ptr, buffer, size)
        # long
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_115(a_username, Array.typed(::Java::Int).new([ptr]), C::PTR_SIZEOF)
        cnt = password.length
        buffer = CharArray.new(cnt + 1)
        password.get_chars(0, cnt, buffer, 0)
        size = buffer.attr_length * 2
        ptr = C.malloc(size)
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_117(ptr, buffer, size)
        # long
        XPCOM.memmove___org_eclipse_swt_browser_prompt_service2_119(a_password, Array.typed(::Java::Int).new([ptr]), C::PTR_SIZEOF)
      end
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def _prompt_password(a_parent, a_dialog_title, a_text, a_password, a_check_msg, a_check_state, _retval)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def _select(a_parent, a_dialog_title, a_text, a_count, a_select_list, a_out_selection, _retval)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    private
    alias_method :initialize__prompt_service2, :initialize
  end
  
end
