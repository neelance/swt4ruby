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
  module HelperAppLauncherDialogImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Org::Eclipse::Swt
      include_const ::Org::Eclipse::Swt::Internal, :C
      include ::Org::Eclipse::Swt::Internal::Mozilla
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  class HelperAppLauncherDialog 
    include_class_members HelperAppLauncherDialogImports
    
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
        extend LocalClass
        include_class_members HelperAppLauncherDialog
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
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0]))
      @helper_app_launcher_dialog = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members HelperAppLauncherDialog
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
          return _prompt_for_save_to_file(args[0], args[1], args[2], args[3], args[4])
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 3, 5]))
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
      XPCOM.memmove(guid, riid, self.attr_ns_id.attr_sizeof)
      if (guid._equals(NsISupports::NS_ISUPPORTS_IID))
        # int
        XPCOM.memmove(ppv_object, Array.typed(::Java::Long).new([@supports.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIHelperAppLauncherDialog::NS_IHELPERAPPLAUNCHERDIALOG_IID))
        # int
        XPCOM.memmove(ppv_object, Array.typed(::Java::Long).new([@helper_app_launcher_dialog.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      # int
      XPCOM.memmove(ppv_object, Array.typed(::Java::Long).new([0]), C::PTR_SIZEOF)
      return XPCOM::NS_ERROR_NO_INTERFACE
    end
    
    typesig { [] }
    def _release
      @ref_count -= 1
      # Note.  This instance lives as long as the download it is binded to.
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
      # The interface for nsIHelperAppLauncher changed in GRE versions 1.8 and 1.9.  Query for
      # each of these interfaces in turn until one is found.
      supports = NsISupports.new(a_launcher)
      # int
      # int
      result = Array.typed(::Java::Long).new(1) { 0 }
      rc = supports._query_interface(NsIHelperAppLauncher_1_9::NS_IHELPERAPPLAUNCHER_IID, result)
      if ((rc).equal?(0))
        helper_app_launcher = NsIHelperAppLauncher_1_9.new(a_launcher)
        rc = helper_app_launcher._save_to_disk(0, 0)
        helper_app_launcher._release
        return rc
      end
      result[0] = 0
      rc = supports._query_interface(NsIHelperAppLauncher_1_8::NS_IHELPERAPPLAUNCHER_IID, result)
      if ((rc).equal?(0))
        helper_app_launcher = NsIHelperAppLauncher_1_8.new(a_launcher)
        rc = helper_app_launcher._save_to_disk(0, 0)
        helper_app_launcher._release
        return rc
      end
      helper_app_launcher = NsIHelperAppLauncher.new(a_launcher)
      # < 1.8
      return helper_app_launcher._save_to_disk(0, 0)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    # int
    def _prompt_for_save_to_file(arg0, arg1, arg2, arg3, arg4)
      # int
      a_default_file = 0
      a_suggested_file_extension = 0
      _retval = 0
      has_launcher = false
      # The interface for nsIHelperAppLauncherDialog changed as of mozilla 1.5 when an
      # extra argument was added to the PromptForSaveToFile method (this resulted in all
      # subsequent arguments shifting right).  The workaround is to provide an XPCOMObject
      # that fits the newer API, and to use the first argument's type to infer whether
      # the old or new nsIHelperAppLauncherDialog interface is being used (and by extension
      # the ordering of the arguments).  In mozilla >= 1.5 the first argument is an
      # nsIHelperAppLauncher.
      # 
      # 
      # The interface for nsIHelperAppLauncher changed as of mozilla 1.8, so the first
      # argument must be queried for both the old and new nsIHelperAppLauncher interfaces.
      using_1_8 = false
      using_1_9 = false
      support = NsISupports.new(arg0)
      # int
      # int
      result = Array.typed(::Java::Long).new(1) { 0 }
      rc = support._query_interface(NsIHelperAppLauncher_1_8::NS_IHELPERAPPLAUNCHER_IID, result)
      if ((rc).equal?(0))
        using_1_8 = true
        has_launcher = true
        NsISupports.new(result[0])._release
      else
        result[0] = 0
        rc = support._query_interface(NsIHelperAppLauncher_1_9::NS_IHELPERAPPLAUNCHER_IID, result)
        if ((rc).equal?(0))
          using_1_9 = true
          has_launcher = true
          NsISupports.new(result[0])._release
        else
          result[0] = 0
          rc = support._query_interface(NsIHelperAppLauncher::NS_IHELPERAPPLAUNCHER_IID, result)
          if ((rc).equal?(0))
            has_launcher = true
            NsISupports.new(result[0])._release
          end
        end
      end
      result[0] = 0
      if (has_launcher)
        # >= 1.5
        a_default_file = arg2
        a_suggested_file_extension = arg3
        _retval = arg4
      else
        # 1.4
        a_default_file = arg1
        a_suggested_file_extension = arg2
        _retval = arg3
      end
      length = XPCOM.strlen__prunichar(a_default_file)
      dest = CharArray.new(length)
      XPCOM.memmove(dest, a_default_file, length * 2)
      default_file = String.new(dest)
      length = XPCOM.strlen__prunichar(a_suggested_file_extension)
      dest = CharArray.new(length)
      XPCOM.memmove(dest, a_suggested_file_extension, length * 2)
      suggested_file_extension = String.new(dest)
      shell = Shell.new
      file_dialog = FileDialog.new(shell, SWT::SAVE)
      file_dialog.set_file_name(default_file)
      file_dialog.set_filter_extensions(Array.typed(String).new([suggested_file_extension]))
      name = file_dialog.open
      shell.close
      if ((name).nil?)
        if (has_launcher)
          if (using_1_8)
            launcher = NsIHelperAppLauncher_1_8.new(arg0)
            rc = launcher._cancel(XPCOM::NS_BINDING_ABORTED)
          else
            if (using_1_9)
              launcher = NsIHelperAppLauncher_1_9.new(arg0)
              rc = launcher._cancel(XPCOM::NS_BINDING_ABORTED)
            else
              launcher = NsIHelperAppLauncher.new(arg0)
              rc = launcher._cancel
            end
          end
          if (!(rc).equal?(XPCOM::NS_OK))
            Mozilla.error(rc)
          end
          return XPCOM::NS_OK
        end
        return XPCOM::NS_ERROR_FAILURE
      end
      path = NsEmbedString.new(name)
      rc = XPCOM._ns_new_local_file(path.get_address, 1, result)
      path.dispose
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      if ((result[0]).equal?(0))
        Mozilla.error(XPCOM::NS_ERROR_NULL_POINTER)
      end
      # Our own nsIDownload has been registered during the Browser initialization. It will be invoked by Mozilla.
      XPCOM.memmove(_retval, result, C::PTR_SIZEOF)
      return XPCOM::NS_OK
    end
    
    private
    alias_method :initialize__helper_app_launcher_dialog, :initialize
  end
  
end
