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
  module HelperAppLauncherDialog_1_9Imports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Org::Eclipse::Swt
      include_const ::Org::Eclipse::Swt::Internal, :C
      include ::Org::Eclipse::Swt::Internal::Mozilla
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # This class implements the nsIHelperAppLauncherDialog interface for mozilla
  # versions >= 1.9.  For mozilla versions 1.4 - 1.8.x this interface is
  # implemented by class HelperAppLauncherDialog.  HelperAppLauncherDialogFactory
  # determines at runtime which of these classes to instantiate.
  class HelperAppLauncherDialog_1_9 
    include_class_members HelperAppLauncherDialog_1_9Imports
    
    attr_accessor :supports
    alias_method :attr_supports, :supports
    undef_method :supports
    alias_method :attr_supports=, :supports=
    undef_method :supports=
    
    attr_accessor :helper_app_launcher_dialog
    alias_method :attr_helper_app_launcher_dialog, :helper_app_launcher_dialog
    undef_method :helper_app_launcher_dialog
    alias_method :attr_helper_app_launcher_dialog=, :helper_app_launcher_dialog=
    undef_method :helper_app_launcher_dialog=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    typesig { [] }
    def initialize
      @supports = nil
      @helper_app_launcher_dialog = nil
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
        local_class_in HelperAppLauncherDialog_1_9
        include_class_members HelperAppLauncherDialog_1_9
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
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0]))
      @helper_app_launcher_dialog = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        local_class_in HelperAppLauncherDialog_1_9
        include_class_members HelperAppLauncherDialog_1_9
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
          return _show(args[0], args[1], RJava.cast_to_int(args[2]))
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method4 do |args|
          # 64
          return _prompt_for_save_to_file(args[0], args[1], args[2], args[3], RJava.cast_to_int(args[4]), args[5])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
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
      if (!(@helper_app_launcher_dialog).nil?)
        @helper_app_launcher_dialog.dispose
        @helper_app_launcher_dialog = nil
      end
    end
    
    typesig { [] }
    # int
    def get_address
      return @helper_app_launcher_dialog.get_address
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _query_interface(riid, ppv_object)
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return XPCOM::NS_ERROR_NO_INTERFACE
      end
      guid = NsID.new
      XPCOM.memmove___org_eclipse_swt_browser_helper_app_launcher_dialog_1_9_1(guid, riid, self.attr_ns_id.attr_sizeof)
      if (guid._equals(NsISupports::NS_ISUPPORTS_IID))
        # int
        XPCOM.memmove___org_eclipse_swt_browser_helper_app_launcher_dialog_1_9_3(ppv_object, Array.typed(::Java::Long).new([@supports.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIHelperAppLauncherDialog_1_9::NS_IHELPERAPPLAUNCHERDIALOG_IID))
        # int
        XPCOM.memmove___org_eclipse_swt_browser_helper_app_launcher_dialog_1_9_5(ppv_object, Array.typed(::Java::Long).new([@helper_app_launcher_dialog.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      # int
      XPCOM.memmove___org_eclipse_swt_browser_helper_app_launcher_dialog_1_9_7(ppv_object, Array.typed(::Java::Long).new([0]), C::PTR_SIZEOF)
      return XPCOM::NS_ERROR_NO_INTERFACE
    end
    
    typesig { [] }
    def _release
      @ref_count -= 1
      # Note.  This instance lives as long as the download it is bound to.
      # Its reference count is expected to go down to 0 when the download
      # has completed or when it has been cancelled. E.g. when the user
      # cancels the File Dialog, cancels or closes the Download Dialog
      # and when the Download Dialog goes away after the download is completed.
      if ((@ref_count).equal?(0))
        dispose_cominterfaces
      end
      return @ref_count
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Int] }
    # nsIHelperAppLauncherDialog
    # int
    # int
    def _show(a_launcher, a_context, a_reason)
      helper_app_launcher = NsIHelperAppLauncher_1_9.new(a_launcher)
      return helper_app_launcher._save_to_disk(0, 0)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Long] }
    # int
    # int
    # int
    # int
    # int
    def _prompt_for_save_to_file(a_launcher, a_window_context, a_default_file_name, a_suggested_file_extension, a_force_prompt, _retval)
      length = XPCOM.strlen__prunichar(a_default_file_name)
      dest = CharArray.new(length)
      XPCOM.memmove___org_eclipse_swt_browser_helper_app_launcher_dialog_1_9_9(dest, a_default_file_name, length * 2)
      default_file = String.new(dest)
      length = XPCOM.strlen__prunichar(a_suggested_file_extension)
      dest = CharArray.new(length)
      XPCOM.memmove___org_eclipse_swt_browser_helper_app_launcher_dialog_1_9_11(dest, a_suggested_file_extension, length * 2)
      suggested_file_extension = String.new(dest)
      shell = Shell.new
      file_dialog = FileDialog.new(shell, SWT::SAVE)
      file_dialog.set_file_name(default_file)
      file_dialog.set_filter_extensions(Array.typed(String).new([suggested_file_extension]))
      name = file_dialog.open
      shell.close
      if ((name).nil?)
        launcher = NsIHelperAppLauncher_1_9.new(a_launcher)
        rc = launcher._cancel(XPCOM::NS_BINDING_ABORTED)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        return XPCOM::NS_ERROR_FAILURE
      end
      path = NsEmbedString.new(name)
      # int
      # int
      result = Array.typed(::Java::Long).new(1) { 0 }
      rc = XPCOM._ns_new_local_file(path.get_address, 1, result)
      path.dispose
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      if ((result[0]).equal?(0))
        Mozilla.error(XPCOM::NS_ERROR_NULL_POINTER)
      end
      # Our own nsIDownload has been registered during the Browser initialization. It will be invoked by Mozilla.
      XPCOM.memmove___org_eclipse_swt_browser_helper_app_launcher_dialog_1_9_13(_retval, result, C::PTR_SIZEOF)
      return XPCOM::NS_OK
    end
    
    private
    alias_method :initialize__helper_app_launcher_dialog_1_9, :initialize
  end
  
end
