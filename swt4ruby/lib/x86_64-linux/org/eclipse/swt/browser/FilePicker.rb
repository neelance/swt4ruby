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
  module FilePickerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include_const ::Org::Eclipse::Swt, :SWT
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Mozilla
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  class FilePicker 
    include_class_members FilePickerImports
    
    attr_accessor :supports
    alias_method :attr_supports, :supports
    undef_method :supports
    alias_method :attr_supports=, :supports=
    undef_method :supports=
    
    attr_accessor :file_picker
    alias_method :attr_file_picker, :file_picker
    undef_method :file_picker
    alias_method :attr_file_picker=, :file_picker=
    undef_method :file_picker=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    attr_accessor :mode
    alias_method :attr_mode, :mode
    undef_method :mode
    alias_method :attr_mode=, :mode=
    undef_method :mode=
    
    # int
    attr_accessor :parent_handle
    alias_method :attr_parent_handle, :parent_handle
    undef_method :parent_handle
    alias_method :attr_parent_handle=, :parent_handle=
    undef_method :parent_handle=
    
    attr_accessor :files
    alias_method :attr_files, :files
    undef_method :files
    alias_method :attr_files=, :files=
    undef_method :files=
    
    attr_accessor :masks
    alias_method :attr_masks, :masks
    undef_method :masks
    alias_method :attr_masks=, :masks=
    undef_method :masks=
    
    attr_accessor :default_filename
    alias_method :attr_default_filename, :default_filename
    undef_method :default_filename
    alias_method :attr_default_filename=, :default_filename=
    undef_method :default_filename=
    
    attr_accessor :directory
    alias_method :attr_directory, :directory
    undef_method :directory
    alias_method :attr_directory=, :directory=
    undef_method :directory=
    
    attr_accessor :title
    alias_method :attr_title, :title
    undef_method :title
    alias_method :attr_title=, :title=
    undef_method :title=
    
    class_module.module_eval {
      const_set_lazy(:SEPARATOR) { System.get_property("file.separator") }
      const_attr_reader  :SEPARATOR
    }
    
    typesig { [] }
    # $NON-NLS-1$
    def initialize
      @supports = nil
      @file_picker = nil
      @ref_count = 0
      @mode = 0
      @parent_handle = 0
      @files = nil
      @masks = nil
      @default_filename = nil
      @directory = nil
      @title = nil
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
        include_class_members FilePicker
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
      @file_picker = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members FilePicker
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
          return _init(args[0], args[1], RJava.cast_to_short(args[2]))
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method4 do |args|
          # 64
          return _append_filters(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method5 do |args|
          return _append_filter(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method6 do |args|
          return _get_default_string(args[0])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method7 do |args|
          return _set_default_string(args[0])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method8 do |args|
          return _get_default_extension(args[0])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method9 do |args|
          return _set_default_extension(args[0])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method10 do |args|
          return _get_filter_index(args[0])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method11 do |args|
          # 64
          return _set_filter_index(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method12 do |args|
          return _get_display_directory(args[0])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method13 do |args|
          return _set_display_directory(args[0])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method14 do |args|
          return _get_file(args[0])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method15 do |args|
          return _get_file_url(args[0])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method16 do |args|
          return _get_files(args[0])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method17 do |args|
          return _show(args[0])
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 3, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]))
    end
    
    typesig { [] }
    def dispose_cominterfaces
      if (!(@supports).nil?)
        @supports.dispose
        @supports = nil
      end
      if (!(@file_picker).nil?)
        @file_picker.dispose
        @file_picker = nil
      end
    end
    
    typesig { [] }
    # int
    def get_address
      return @file_picker.get_address
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
      if (guid._equals(NsIFilePicker::NS_IFILEPICKER_IID))
        # int
        XPCOM.memmove(ppv_object, Array.typed(::Java::Long).new([@file_picker.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIFilePicker_1_8::NS_IFILEPICKER_IID))
        # int
        XPCOM.memmove(ppv_object, Array.typed(::Java::Long).new([@file_picker.get_address]), C::PTR_SIZEOF)
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
      if ((@ref_count).equal?(0))
        dispose_cominterfaces
      end
      return @ref_count
    end
    
    typesig { [::Java::Long] }
    # As of Mozilla 1.8 some of nsIFilePicker's string arguments changed type.  This method
    # answers a java string based on the type of string that is appropriate for the Mozilla
    # version being used.
    # 
    # int
    def parse_astring(string)
      return nil
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Short] }
    # nsIFilePicker
    # int
    # int
    def _init(parent, title, mode)
      @parent_handle = parent
      @mode = mode
      @title = parse_astring(title)
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Long] }
    # int
    def _show(_retval)
      if ((@mode).equal?(self.attr_ns_ifile_picker.attr_mode_get_folder))
        # picking a directory
        result = show_directory_picker
        XPCOM.memmove(_retval, Array.typed(::Java::Short).new([RJava.cast_to_short(result)]), 2)
        # PRInt16
        return XPCOM::NS_OK
      end
      # picking a file
      style = (@mode).equal?(self.attr_ns_ifile_picker.attr_mode_save) ? SWT::SAVE : SWT::OPEN
      if ((@mode).equal?(self.attr_ns_ifile_picker.attr_mode_open_multiple))
        style |= SWT::MULTI
      end
      display = Display.get_current
      parent = nil # TODO compute parent
      if ((parent).nil?)
        parent = Shell.new(display)
      end
      dialog = FileDialog.new(parent, style)
      if (!(@title).nil?)
        dialog.set_text(@title)
      end
      if (!(@directory).nil?)
        dialog.set_filter_path(@directory)
      end
      if (!(@masks).nil?)
        dialog.set_filter_extensions(@masks)
      end
      if (!(@default_filename).nil?)
        dialog.set_file_name(@default_filename)
      end
      filename = dialog.open
      @files = dialog.get_file_names
      @directory = RJava.cast_to_string(dialog.get_filter_path)
      @title = RJava.cast_to_string(@default_filename = RJava.cast_to_string(nil))
      @masks = nil
      result = (filename).nil? ? self.attr_ns_ifile_picker.attr_return_cancel : self.attr_ns_ifile_picker.attr_return_ok
      XPCOM.memmove(_retval, Array.typed(::Java::Short).new([RJava.cast_to_short(result)]), 2)
      # PRInt16
      return XPCOM::NS_OK
    end
    
    typesig { [] }
    def show_directory_picker
      display = Display.get_current
      parent = nil # TODO compute parent
      if ((parent).nil?)
        parent = Shell.new(display)
      end
      dialog = DirectoryDialog.new(parent, SWT::NONE)
      if (!(@title).nil?)
        dialog.set_text(@title)
      end
      if (!(@directory).nil?)
        dialog.set_filter_path(@directory)
      end
      @directory = RJava.cast_to_string(dialog.open)
      @title = RJava.cast_to_string(@default_filename = RJava.cast_to_string(nil))
      @files = @masks = nil
      return (@directory).nil? ? self.attr_ns_ifile_picker.attr_return_cancel : self.attr_ns_ifile_picker.attr_return_ok
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_files(a_files)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_file_url(a_file_url)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_file(a_file)
      filename = "" # $NON-NLS-1$
      if (!(@directory).nil?)
        filename += @directory + SEPARATOR
      end
      if (!(@files).nil? && @files.attr_length > 0)
        filename += RJava.cast_to_string(@files[0])
      end
      path = NsEmbedString.new(filename)
      # int
      # int
      file = Array.typed(::Java::Long).new(1) { 0 }
      rc = XPCOM._ns_new_local_file(path.get_address, 1, file)
      path.dispose
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      if ((file[0]).equal?(0))
        Mozilla.error(XPCOM::NS_ERROR_NULL_POINTER)
      end
      XPCOM.memmove(a_file, file, C::PTR_SIZEOF)
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_display_directory(a_display_directory)
      if ((a_display_directory).equal?(0))
        return XPCOM::NS_OK
      end
      file = NsILocalFile.new(a_display_directory)
      # int
      pathname = XPCOM.ns_embed_cstring_new
      file._get_native_path(pathname)
      length = XPCOM.ns_embed_cstring_length(pathname)
      # int
      buffer = XPCOM.ns_embed_cstring_get(pathname)
      bytes = Array.typed(::Java::Byte).new(length) { 0 }
      XPCOM.memmove(bytes, buffer, length)
      XPCOM.ns_embed_cstring_delete(pathname)
      chars = MozillaDelegate.mbcs_to_wcs(nil, bytes)
      @directory = RJava.cast_to_string(String.new(chars))
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_display_directory(a_display_directory)
      directory_name = !(@directory).nil? ? @directory : "" # $NON-NLS-1$
      path = NsEmbedString.new(directory_name)
      # int
      # int
      file = Array.typed(::Java::Long).new(1) { 0 }
      rc = XPCOM._ns_new_local_file(path.get_address, 1, file)
      path.dispose
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      if ((file[0]).equal?(0))
        Mozilla.error(XPCOM::NS_ERROR_NULL_POINTER)
      end
      XPCOM.memmove(a_display_directory, file, C::PTR_SIZEOF)
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int] }
    def _set_filter_index(a_filter_index)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_filter_index(a_filter_index)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_default_extension(a_default_extension)
      # note that the type of argument 1 changed as of Mozilla 1.8
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_default_extension(a_default_extension)
      # note that the type of argument 1 changed as of Mozilla 1.8
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_default_string(a_default_string)
      @default_filename = RJava.cast_to_string(parse_astring(a_default_string))
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_default_string(a_default_string)
      # note that the type of argument 1 changed as of Mozilla 1.8
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _append_filter(title, filter)
      # note that the type of arguments 1 and 2 changed as of Mozilla 1.8
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [::Java::Int] }
    def _append_filters(filter_mask)
      add_filters = nil
      case (filter_mask)
      when self.attr_ns_ifile_picker.attr_filter_all, self.attr_ns_ifile_picker.attr_filter_apps
        @masks = nil
        # this is equivalent to no filter
      when self.attr_ns_ifile_picker.attr_filter_html
        add_filters = Array.typed(String).new(["*.htm;*.html"]) # $NON-NLS-1$
      when self.attr_ns_ifile_picker.attr_filter_images
        add_filters = Array.typed(String).new(["*.gif;*.jpeg;*.jpg;*.png"]) # $NON-NLS-1$
      when self.attr_ns_ifile_picker.attr_filter_text
        add_filters = Array.typed(String).new(["*.txt"]) # $NON-NLS-1$
      when self.attr_ns_ifile_picker.attr_filter_xml
        add_filters = Array.typed(String).new(["*.xml"]) # $NON-NLS-1$
      when self.attr_ns_ifile_picker.attr_filter_xul
        add_filters = Array.typed(String).new(["*.xul"]) # $NON-NLS-1$
      end
      if ((@masks).nil?)
        @masks = add_filters
      else
        if (!(add_filters).nil?)
          new_filters = Array.typed(String).new(@masks.attr_length + add_filters.attr_length) { nil }
          System.arraycopy(@masks, 0, new_filters, 0, @masks.attr_length)
          System.arraycopy(add_filters, 0, new_filters, @masks.attr_length, add_filters.attr_length)
          @masks = new_filters
        end
      end
      return XPCOM::NS_OK
    end
    
    private
    alias_method :initialize__file_picker, :initialize
  end
  
end
