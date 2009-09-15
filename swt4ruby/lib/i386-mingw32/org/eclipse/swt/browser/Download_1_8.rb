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
  module Download_1_8Imports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include_const ::Org::Eclipse::Swt, :SWT
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Mozilla
      include ::Org::Eclipse::Swt::Layout
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # This class implements the nsIDownload interface for mozilla
  # version 1.8.x.  For mozilla versions 1.4 - 1.7.x this interface
  # is implemented by class nsIDownload.  Mozilla versions later
  # than 1.8.x do not need to call this interface.
  class Download_1_8 
    include_class_members Download_1_8Imports
    
    attr_accessor :supports
    alias_method :attr_supports, :supports
    undef_method :supports
    alias_method :attr_supports=, :supports=
    undef_method :supports=
    
    attr_accessor :download
    alias_method :attr_download, :download
    undef_method :download
    alias_method :attr_download=, :download=
    undef_method :download=
    
    attr_accessor :progress_dialog
    alias_method :attr_progress_dialog, :progress_dialog
    undef_method :progress_dialog
    alias_method :attr_progress_dialog=, :progress_dialog=
    undef_method :progress_dialog=
    
    attr_accessor :web_progress_listener
    alias_method :attr_web_progress_listener, :web_progress_listener
    undef_method :web_progress_listener
    alias_method :attr_web_progress_listener=, :web_progress_listener=
    undef_method :web_progress_listener=
    
    attr_accessor :cancelable
    alias_method :attr_cancelable, :cancelable
    undef_method :cancelable
    alias_method :attr_cancelable=, :cancelable=
    undef_method :cancelable=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    attr_accessor :shell
    alias_method :attr_shell, :shell
    undef_method :shell
    alias_method :attr_shell=, :shell=
    undef_method :shell=
    
    attr_accessor :status
    alias_method :attr_status, :status
    undef_method :status
    alias_method :attr_status=, :status=
    undef_method :status=
    
    attr_accessor :cancel
    alias_method :attr_cancel, :cancel
    undef_method :cancel
    alias_method :attr_cancel=, :cancel=
    undef_method :cancel=
    
    class_module.module_eval {
      const_set_lazy(:Is32) { (C::PTR_SIZEOF).equal?(4) }
      const_attr_reader  :Is32
    }
    
    typesig { [] }
    def initialize
      @supports = nil
      @download = nil
      @progress_dialog = nil
      @web_progress_listener = nil
      @cancelable = nil
      @ref_count = 0
      @shell = nil
      @status = nil
      @cancel = nil
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
        include_class_members Download_1_8
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
      @download = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members Download_1_8
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
          # 64
          # 64
          return _on_state_change(args[0], args[1], RJava.cast_to_int(args[2]), RJava.cast_to_int(args[3]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          # 64
          # 64
          # 64
          # 64
          return _on_progress_change(args[0], args[1], RJava.cast_to_int(args[2]), RJava.cast_to_int(args[3]), RJava.cast_to_int(args[4]), RJava.cast_to_int(args[5]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          return _on_location_change(args[0], args[1], args[2])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          # 64
          return _on_status_change(args[0], args[1], RJava.cast_to_int(args[2]), args[3])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method7 do |args|
          # 64
          return _on_security_change(args[0], args[1], RJava.cast_to_int(args[2]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method8 do |args|
          if ((args.attr_length).equal?(10))
            return _on_progress_change64_32(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9])
          else
            return _on_progress_change64(args[0], args[1], args[2], args[3], args[4], args[5])
          end
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method9 do |args|
          if ((args.attr_length).equal?(8))
            return _init_32(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7])
          else
            return _init(args[0], args[1], args[2], args[3], args[4], args[5], args[6])
          end
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method10 do |args|
          return _get_target_file(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method11 do |args|
          return _get_percent_complete(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method12 do |args|
          return _get_amount_transferred(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method13 do |args|
          return _get_size(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method14 do |args|
          return _get_source(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method15 do |args|
          return _get_target(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method16 do |args|
          return _get_cancelable(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method17 do |args|
          return _get_display_name(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method18 do |args|
          return _get_start_time(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method19 do |args|
          return _get_mimeinfo(args[0])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 4, 6, 3, 4, 3, Is32 ? 10 : 6, Is32 ? 8 : 7, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]))
      @progress_dialog = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members Download_1_8
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
          # 64
          # 64
          return _on_state_change(args[0], args[1], RJava.cast_to_int(args[2]), RJava.cast_to_int(args[3]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          # 64
          # 64
          # 64
          # 64
          return _on_progress_change(args[0], args[1], RJava.cast_to_int(args[2]), RJava.cast_to_int(args[3]), RJava.cast_to_int(args[4]), RJava.cast_to_int(args[5]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          return _on_location_change(args[0], args[1], args[2])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          # 64
          return _on_status_change(args[0], args[1], RJava.cast_to_int(args[2]), args[3])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method7 do |args|
          # 64
          return _on_security_change(args[0], args[1], RJava.cast_to_int(args[2]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method8 do |args|
          if ((args.attr_length).equal?(10))
            return _on_progress_change64_32(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9])
          else
            return _on_progress_change64(args[0], args[1], args[2], args[3], args[4], args[5])
          end
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method9 do |args|
          if ((args.attr_length).equal?(8))
            return _init_32(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7])
          else
            return _init(args[0], args[1], args[2], args[3], args[4], args[5], args[6])
          end
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method10 do |args|
          return _get_target_file(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method11 do |args|
          return _get_percent_complete(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method12 do |args|
          return _get_amount_transferred(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method13 do |args|
          return _get_size(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method14 do |args|
          return _get_source(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method15 do |args|
          return _get_target(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method16 do |args|
          return _get_cancelable(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method17 do |args|
          return _get_display_name(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method18 do |args|
          return _get_start_time(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method19 do |args|
          return _get_mimeinfo(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method20 do |args|
          return _open(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method21 do |args|
          return _get_cancel_download_on_close(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method22 do |args|
          # 64
          return _set_cancel_download_on_close(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method23 do |args|
          return _get_observer(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method24 do |args|
          return _set_observer(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method25 do |args|
          return _get_dialog(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method26 do |args|
          return _set_dialog(args[0])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 4, 6, 3, 4, 3, Is32 ? 10 : 6, Is32 ? 8 : 7, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]))
      @web_progress_listener = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members Download_1_8
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
          # 64
          # 64
          return _on_state_change(args[0], args[1], RJava.cast_to_int(args[2]), RJava.cast_to_int(args[3]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          # 64
          # 64
          # 64
          # 64
          return _on_progress_change(args[0], args[1], RJava.cast_to_int(args[2]), RJava.cast_to_int(args[3]), RJava.cast_to_int(args[4]), RJava.cast_to_int(args[5]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          return _on_location_change(args[0], args[1], args[2])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          # 64
          return _on_status_change(args[0], args[1], RJava.cast_to_int(args[2]), args[3])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method7 do |args|
          # 64
          return _on_security_change(args[0], args[1], RJava.cast_to_int(args[2]))
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 4, 6, 3, 4, 3]))
    end
    
    typesig { [] }
    def dispose_cominterfaces
      if (!(@supports).nil?)
        @supports.dispose
        @supports = nil
      end
      if (!(@download).nil?)
        @download.dispose
        @download = nil
      end
      if (!(@progress_dialog).nil?)
        @progress_dialog.dispose
        @progress_dialog = nil
      end
      if (!(@web_progress_listener).nil?)
        @web_progress_listener.dispose
        @web_progress_listener = nil
      end
    end
    
    typesig { [] }
    # long
    def get_address
      return @progress_dialog.get_address
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _query_interface(riid, ppv_object)
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return XPCOM::NS_ERROR_NO_INTERFACE
      end
      guid = NsID.new
      XPCOM.memmove___org_eclipse_swt_browser_download_1_8_1(guid, riid, self.attr_ns_id.attr_sizeof)
      if (guid._equals(NsISupports::NS_ISUPPORTS_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_download_1_8_3(ppv_object, Array.typed(::Java::Int).new([@supports.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIDownload_1_8::NS_IDOWNLOAD_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_download_1_8_5(ppv_object, Array.typed(::Java::Int).new([@download.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIProgressDialog_1_8::NS_IPROGRESSDIALOG_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_download_1_8_7(ppv_object, Array.typed(::Java::Int).new([@progress_dialog.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIWebProgressListener::NS_IWEBPROGRESSLISTENER_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_download_1_8_9(ppv_object, Array.typed(::Java::Int).new([@web_progress_listener.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      # long
      XPCOM.memmove___org_eclipse_swt_browser_download_1_8_11(ppv_object, Array.typed(::Java::Int).new([0]), C::PTR_SIZEOF)
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # nsIDownload
    # Note. The argument startTime is defined as a PRInt64. This translates into two java ints.
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def _init_32(a_source, a_target, a_display_name, a_mimeinfo, start_time1, start_time2, a_temp_file, a_cancelable)
      start_time = (start_time2 << 32) + start_time1
      return _init(a_source, a_target, a_display_name, a_mimeinfo, start_time, a_temp_file, a_cancelable)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def _init(a_source, a_target, a_display_name, a_mimeinfo, start_time, a_temp_file, a_cancelable)
      @cancelable = NsICancelable.new(a_cancelable)
      source = NsIURI.new(a_source)
      # long
      a_spec = XPCOM.ns_embed_cstring_new
      rc = source._get_host(a_spec)
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      length = XPCOM.ns_embed_cstring_length(a_spec)
      # long
      buffer = XPCOM.ns_embed_cstring_get(a_spec)
      dest = Array.typed(::Java::Byte).new(length) { 0 }
      XPCOM.memmove___org_eclipse_swt_browser_download_1_8_13(dest, buffer, length)
      XPCOM.ns_embed_cstring_delete(a_spec)
      url = String.new(dest)
      target = NsIURI.new(a_target)
      # long
      a_path = XPCOM.ns_embed_cstring_new
      rc = target._get_path(a_path)
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      length = XPCOM.ns_embed_cstring_length(a_path)
      buffer = XPCOM.ns_embed_cstring_get(a_path)
      dest = Array.typed(::Java::Byte).new(length) { 0 }
      XPCOM.memmove___org_eclipse_swt_browser_download_1_8_15(dest, buffer, length)
      XPCOM.ns_embed_cstring_delete(a_path)
      filename = String.new(dest)
      separator = filename.last_index_of(System.get_property("file.separator")) # $NON-NLS-1$
      filename = RJava.cast_to_string(filename.substring(separator + 1))
      listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members Download_1_8
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          if ((event.attr_widget).equal?(self.attr_cancel))
            self.attr_shell.close
          end
          if (!(self.attr_cancelable).nil?)
            rc_ = self.attr_cancelable._cancel(XPCOM::NS_BINDING_ABORTED)
            if (!(rc_).equal?(XPCOM::NS_OK))
              Mozilla.error(rc_)
            end
          end
          self.attr_shell = nil
          self.attr_cancelable = nil
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      @shell = Shell.new(SWT::DIALOG_TRIM)
      msg = Compatibility.get_message("SWT_Download_File", Array.typed(Object).new([filename])) # $NON-NLS-1$
      @shell.set_text(msg)
      grid_layout = GridLayout.new
      grid_layout.attr_margin_height = 15
      grid_layout.attr_margin_width = 15
      grid_layout.attr_vertical_spacing = 20
      @shell.set_layout(grid_layout)
      msg = RJava.cast_to_string(Compatibility.get_message("SWT_Download_Location", Array.typed(Object).new([filename, url]))) # $NON-NLS-1$
      Label.new(@shell, SWT::SIMPLE).set_text(msg)
      @status = Label.new(@shell, SWT::SIMPLE)
      msg = RJava.cast_to_string(Compatibility.get_message("SWT_Download_Started")) # $NON-NLS-1$
      @status.set_text(msg)
      data = GridData.new
      data.attr_grab_excess_horizontal_space = true
      data.attr_grab_excess_vertical_space = true
      @status.set_layout_data(data)
      @cancel = Button.new(@shell, SWT::PUSH)
      @cancel.set_text(SWT.get_message("SWT_Cancel")) # $NON-NLS-1$
      data = GridData.new
      data.attr_horizontal_alignment = GridData::CENTER
      @cancel.set_layout_data(data)
      @cancel.add_listener(SWT::Selection, listener)
      @shell.add_listener(SWT::Close, listener)
      @shell.pack
      @shell.open
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_amount_transferred(arg0)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_cancelable(arg0)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_display_name(a_display_name)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_mimeinfo(a_mimeinfo)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_percent_complete(a_percent_complete)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_size(arg0)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_source(a_source)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_start_time(a_start_time)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_target(a_target)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_target_file(arg0)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # nsIProgressDialog
    # long
    def _get_cancel_download_on_close(a_cancel_download_on_close)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_dialog(a_dialog)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_observer(a_observer)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # long
    def _open(a_parent)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    def _set_cancel_download_on_close(a_cancel_download_on_close)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_dialog(a_dialog)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_observer(a_observer)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # nsIWebProgressListener
    # long
    # long
    # long
    def _on_location_change(a_web_progress, a_request, a_location)
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _on_progress_change(a_web_progress, a_request, a_cur_self_progress, a_max_self_progress, a_cur_total_progress, a_max_total_progress)
      return _on_progress_change64(a_web_progress, a_request, a_cur_self_progress, a_max_self_progress, a_cur_total_progress, a_max_total_progress)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Note. The last 4 args in the original interface are defined as PRInt64. These each translate into two java ints.
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def _on_progress_change64_32(a_web_progress, a_request, a_cur_self_progress1, a_cur_self_progress2, a_max_self_progress1, a_max_self_progress2, a_cur_total_progress1, a_cur_total_progress2, a_max_total_progress1, a_max_total_progress2)
      a_cur_self_progress = (a_cur_self_progress2 << 32) + a_cur_self_progress1
      a_max_self_progress = (a_max_self_progress2 << 32) + a_max_self_progress1
      a_cur_total_progress = (a_cur_total_progress2 << 32) + a_cur_total_progress1
      a_max_total_progress = (a_max_total_progress2 << 32) + a_max_total_progress1
      return _on_progress_change64(a_web_progress, a_request, a_cur_self_progress, a_max_self_progress, a_cur_total_progress, a_max_total_progress)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
    # long
    # long
    def _on_progress_change64(a_web_progress, a_request, a_cur_self_progress, a_max_self_progress, a_cur_total_progress, a_max_total_progress)
      current_kbytes = a_cur_total_progress / 1024
      total_kbytes = a_max_total_progress / 1024
      if (!(@shell).nil? && !@shell.is_disposed)
        arguments = Array.typed(Object).new([Long.new(current_kbytes), Long.new(total_kbytes)])
        status_msg = Compatibility.get_message("SWT_Download_Status", arguments) # $NON-NLS-1$
        @status.set_text(status_msg)
        @shell.layout(true)
        @shell.get_display.update
      end
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _on_security_change(a_web_progress, a_request, state)
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _on_state_change(a_web_progress, a_request, a_state_flags, a_status)
      if (!((a_state_flags & NsIWebProgressListener::STATE_STOP)).equal?(0))
        @cancelable = nil
        if (!(@shell).nil? && !@shell.is_disposed)
          @shell.dispose
        end
        @shell = nil
      end
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def _on_status_change(a_web_progress, a_request, a_status, a_message)
      return XPCOM::NS_OK
    end
    
    private
    alias_method :initialize__download_1_8, :initialize
  end
  
end
