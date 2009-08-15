require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module FileDialogImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  # Instances of this class allow the user to navigate
  # the file system and select or enter a file name.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>SAVE, OPEN, MULTI</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles SAVE and OPEN may be specified.
  # </p><p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#filedialog">FileDialog snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample, Dialog tab</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class FileDialog < FileDialogImports.const_get :Dialog
    include_class_members FileDialogImports
    
    attr_accessor :filter_names
    alias_method :attr_filter_names, :filter_names
    undef_method :filter_names
    alias_method :attr_filter_names=, :filter_names=
    undef_method :filter_names=
    
    attr_accessor :filter_extensions
    alias_method :attr_filter_extensions, :filter_extensions
    undef_method :filter_extensions
    alias_method :attr_filter_extensions=, :filter_extensions=
    undef_method :filter_extensions=
    
    attr_accessor :file_names
    alias_method :attr_file_names, :file_names
    undef_method :file_names
    alias_method :attr_file_names=, :file_names=
    undef_method :file_names=
    
    attr_accessor :filter_path
    alias_method :attr_filter_path, :filter_path
    undef_method :filter_path
    alias_method :attr_filter_path=, :filter_path=
    undef_method :filter_path=
    
    attr_accessor :file_name
    alias_method :attr_file_name, :file_name
    undef_method :file_name
    alias_method :attr_file_name=, :file_name=
    undef_method :file_name=
    
    attr_accessor :filter_index
    alias_method :attr_filter_index, :filter_index
    undef_method :filter_index
    alias_method :attr_filter_index=, :filter_index=
    undef_method :filter_index=
    
    attr_accessor :overwrite
    alias_method :attr_overwrite, :overwrite
    undef_method :overwrite
    alias_method :attr_overwrite=, :overwrite=
    undef_method :overwrite=
    
    class_module.module_eval {
      const_set_lazy(:EXTENSION_SEPARATOR) { Character.new(?;.ord) }
      const_attr_reader  :EXTENSION_SEPARATOR
    }
    
    typesig { [Shell] }
    # Constructs a new instance of this class given only its parent.
    # 
    # @param parent a shell which will be the parent of the new instance
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    def initialize(parent)
      initialize__file_dialog(parent, SWT::APPLICATION_MODAL)
    end
    
    typesig { [Shell, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # and a style value describing its behavior and appearance.
    # <p>
    # The style value is either one of the style constants defined in
    # class <code>SWT</code> which is applicable to instances of this
    # class, or must be built by <em>bitwise OR</em>'ing together
    # (that is, using the <code>int</code> "|" operator) two or more
    # of those <code>SWT</code> style constants. The class description
    # lists the style constants that are applicable to the class.
    # Style bits are also inherited from superclasses.
    # </p>
    # 
    # @param parent a shell which will be the parent of the new instance
    # @param style the style of dialog to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    def initialize(parent, style)
      @filter_names = nil
      @filter_extensions = nil
      @file_names = nil
      @filter_path = nil
      @file_name = nil
      @filter_index = 0
      @overwrite = false
      super(parent, check_style(parent, style))
      @filter_names = Array.typed(String).new(0) { nil }
      @filter_extensions = Array.typed(String).new(0) { nil }
      @file_names = Array.typed(String).new(0) { nil }
      @filter_path = ""
      @file_name = ""
      @filter_index = 0
      @overwrite = false
      check_subclass
    end
    
    typesig { [] }
    # Returns the path of the first file that was
    # selected in the dialog relative to the filter path, or an
    # empty string if no such file has been selected.
    # 
    # @return the relative path of the file
    def get_file_name
      return @file_name
    end
    
    typesig { [] }
    # Returns a (possibly empty) array with the paths of all files
    # that were selected in the dialog relative to the filter path.
    # 
    # @return the relative paths of the files
    def get_file_names
      return @file_names
    end
    
    typesig { [] }
    # Returns the file extensions which the dialog will
    # use to filter the files it shows.
    # 
    # @return the file extensions filter
    def get_filter_extensions
      return @filter_extensions
    end
    
    typesig { [] }
    # Get the 0-based index of the file extension filter
    # which was selected by the user, or -1 if no filter
    # was selected.
    # <p>
    # This is an index into the FilterExtensions array and
    # the FilterNames array.
    # </p>
    # 
    # @return index the file extension filter index
    # 
    # @see #getFilterExtensions
    # @see #getFilterNames
    # 
    # @since 3.4
    def get_filter_index
      return @filter_index
    end
    
    typesig { [] }
    # Returns the names that describe the filter extensions
    # which the dialog will use to filter the files it shows.
    # 
    # @return the list of filter names
    def get_filter_names
      return @filter_names
    end
    
    typesig { [] }
    # Returns the directory path that the dialog will use, or an empty
    # string if this is not set.  File names in this path will appear
    # in the dialog, filtered according to the filter extensions.
    # 
    # @return the directory path string
    # 
    # @see #setFilterExtensions
    def get_filter_path
      return @filter_path
    end
    
    typesig { [] }
    # Returns the flag that the dialog will use to
    # determine whether to prompt the user for file
    # overwrite if the selected file already exists.
    # 
    # @return true if the dialog will prompt for file overwrite, false otherwise
    # 
    # @since 3.4
    def get_overwrite
      return @overwrite
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def event_proc(call_back_selector, call_back_parms, call_back_ud)
      case (call_back_selector)
      when OS.attr_k_nav_cbpopup_menu_select
        cb_rec = NavCBRec.new
        OS.memmove(cb_rec, call_back_parms, NavCBRec.attr_sizeof)
        if (!(cb_rec.attr_event_data.attr_event_data_parms.attr_param).equal?(0))
          spec = NavMenuItemSpec.new
          OS.memmove(spec, cb_rec.attr_event_data.attr_event_data_parms.attr_param, NavMenuItemSpec.attr_sizeof)
          index = spec.attr_menu_type
          if (0 <= index && index < @filter_extensions.attr_length)
            @filter_index = index
          end
        end
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def filter_proc(the_item, info_ptr, call_back_ud, filter_mode)
      if ((filter_mode).equal?(OS.attr_k_nav_filtering_browser_list))
        if (!(@filter_extensions).nil? && 0 <= @filter_index && @filter_index < @filter_extensions.attr_length)
          info = NavFileOrFolderInfo.new
          OS.memmove(info, info_ptr, NavFileOrFolderInfo.attr_sizeof)
          if (!info.attr_is_folder)
            OS._aecoerce_desc(the_item, OS.attr_type_fsref, the_item)
            fs_ref = Array.typed(::Java::Byte).new(80) { 0 }
            if ((OS._aeget_desc_data(the_item, fs_ref, fs_ref.attr_length)).equal?(OS.attr_no_err))
              url = OS._cfurlcreate_from_fsref(OS.attr_k_cfallocator_default, fs_ref)
              if (!(url).equal?(0))
                ext = OS._cfurlcopy_path_extension(url)
                OS._cfrelease(url)
                if (!(ext).equal?(0))
                  buffer = CharArray.new(OS._cfstring_get_length(ext))
                  if (buffer.attr_length > 0)
                    range = CFRange.new
                    range.attr_length = buffer.attr_length
                    OS._cfstring_get_characters(ext, range, buffer)
                  end
                  OS._cfrelease(ext)
                  extension = String.new(buffer)
                  extensions = @filter_extensions[@filter_index]
                  start = 0
                  length_ = extensions.length
                  while (start < length_)
                    index = extensions.index_of(EXTENSION_SEPARATOR, start)
                    if ((index).equal?(-1))
                      index = length_
                    end
                    filter = extensions.substring(start, index).trim
                    if ((filter == "*") || (filter == "*.*"))
                      return 1
                    end
                    if (filter.starts_with("*."))
                      filter = RJava.cast_to_string(filter.substring(2))
                    end
                    if ((filter.to_lower_case == extension.to_lower_case))
                      return 1
                    end
                    start = index + 1
                  end
                  return 0
                end
              end
            end
          end
        end
      end
      return 1
    end
    
    typesig { [::Java::Int] }
    def get_string(cf_string)
      if ((cf_string).equal?(0))
        return ""
      end
      length_ = OS._cfstring_get_length(cf_string)
      buffer = CharArray.new(length_)
      range = CFRange.new
      range.attr_length = length_
      OS._cfstring_get_characters(cf_string, range, buffer)
      return String.new(buffer)
    end
    
    typesig { [] }
    # Makes the dialog visible and brings it to the front
    # of the display.
    # 
    # @return a string describing the absolute path of the first selected file,
    # or null if the dialog was cancelled or an error occurred
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the dialog has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the dialog</li>
    # </ul>
    def open
      full_path = nil
      @file_names = Array.typed(String).new(0) { nil }
      title_ptr = 0
      if (!(self.attr_title).nil?)
        buffer = CharArray.new(self.attr_title.length)
        self.attr_title.get_chars(0, buffer.attr_length, buffer, 0)
        title_ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      end
      file_name_ptr = 0
      if (!(@file_name).nil?)
        buffer = CharArray.new(@file_name.length)
        @file_name.get_chars(0, buffer.attr_length, buffer, 0)
        file_name_ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      end
      options = NavDialogCreationOptions.new
      options.attr_window_title = options.attr_client_name = title_ptr
      options.attr_parent_window = OS._get_control_owner(self.attr_parent.attr_handle)
      options.attr_option_flags = OS.attr_k_nav_support_packages | OS.attr_k_nav_allow_invisible_files
      options.attr_location_h = -1
      options.attr_location_v = -1
      options.attr_save_file_name = file_name_ptr
      options.attr_modality = OS.attr_k_window_modality_app_modal
      extensions = 0
      filter_callback = nil
      event_callback = nil
      out_dialog = Array.typed(::Java::Int).new(1) { 0 }
      if (!((self.attr_style & SWT::SAVE)).equal?(0))
        if (!@overwrite)
          options.attr_option_flags |= OS.attr_k_nav_dont_confirm_replacement
        end
        OS._nav_create_put_file_dialog(options, 0, 0, 0, 0, out_dialog)
      else
        if (!((self.attr_style & SWT::MULTI)).equal?(0))
          options.attr_option_flags |= OS.attr_k_nav_allow_multiple_files
        end
        filter_proc = 0
        event_proc = 0
        if (!(@filter_extensions).nil? && !(@filter_extensions.attr_length).equal?(0))
          extensions = options.attr_popup_extension = OS._cfarray_create_mutable(OS.attr_k_cfallocator_default, @filter_extensions.attr_length, 0)
          i = 0
          while i < @filter_extensions.attr_length
            str = @filter_extensions[i]
            if (!(@filter_names).nil? && @filter_names.attr_length > i)
              str = RJava.cast_to_string(@filter_names[i])
            end
            chars = CharArray.new(str.length)
            str.get_chars(0, chars.attr_length, chars, 0)
            ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, chars, chars.attr_length)
            if (!(ptr).equal?(0))
              OS._cfarray_append_value(extensions, ptr)
            end
            i += 1
          end
          filter_callback = Callback.new(self, "filterProc", 4)
          filter_proc = filter_callback.get_address
          if ((filter_proc).equal?(0))
            SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
          end
          event_callback = Callback.new(self, "eventProc", 3)
          event_proc = event_callback.get_address
          if ((event_proc).equal?(0))
            SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
          end
        end
        OS._nav_create_get_file_dialog(options, 0, event_proc, 0, filter_proc, 0, out_dialog)
      end
      if (!(out_dialog[0]).equal?(0))
        if (!(@filter_path).nil? && @filter_path.length > 0)
          chars = CharArray.new(@filter_path.length)
          @filter_path.get_chars(0, chars.attr_length, chars, 0)
          str = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, chars, chars.attr_length)
          if (!(str).equal?(0))
            url = OS._cfurlcreate_with_file_system_path(OS.attr_k_cfallocator_default, str, OS.attr_k_cfurlposixpath_style, false)
            if (!(url).equal?(0))
              fs_ref = Array.typed(::Java::Byte).new(80) { 0 }
              if (OS._cfurlget_fsref(url, fs_ref))
                params = AEDesc.new
                if ((OS._aecreate_desc(OS.attr_type_fsref, fs_ref, fs_ref.attr_length, params)).equal?(OS.attr_no_err))
                  OS._nav_custom_control(out_dialog[0], OS.attr_k_nav_ctl_set_location, params)
                  OS._aedispose_desc(params)
                end
              end
              OS._cfrelease(url)
            end
            OS._cfrelease(str)
          end
        end
        if (!(@filter_extensions).nil? && 0 <= @filter_index && @filter_index < @filter_extensions.attr_length)
          spec = NavMenuItemSpec.new
          spec.attr_menu_type = @filter_index
          OS._nav_custom_control(out_dialog[0], OS.attr_k_nav_ctl_select_custom_type, spec)
        end
        OS._nav_dialog_run(out_dialog[0])
        action = OS._nav_dialog_get_user_action(out_dialog[0])
        case (action)
        when OS.attr_k_nav_user_action_open, OS.attr_k_nav_user_action_choose, OS.attr_k_nav_user_action_save_as
          record = NavReplyRecord.new
          OS._nav_dialog_get_reply(out_dialog[0], record)
          selection = AEDesc.new
          selection.attr_descriptor_type = record.attr_selection_descriptor_type
          selection.attr_data_handle = record.attr_selection_data_handle
          count = Array.typed(::Java::Int).new(1) { 0 }
          OS._aecount_items(selection, count)
          if (count[0] > 0)
            @file_names = Array.typed(String).new(count[0]) { nil }
            maximum_size = 80 # size of FSRef
            data_ptr = OS._new_ptr(maximum_size)
            ae_keyword = Array.typed(::Java::Int).new(1) { 0 }
            type_code = Array.typed(::Java::Int).new(1) { 0 }
            actual_size = Array.typed(::Java::Int).new(1) { 0 }
            if (!((self.attr_style & SWT::SAVE)).equal?(0))
              if ((OS._aeget_nth_ptr(selection, 1, OS.attr_type_fsref, ae_keyword, type_code, data_ptr, maximum_size, actual_size)).equal?(OS.attr_no_err))
                fs_ref = Array.typed(::Java::Byte).new(actual_size[0]) { 0 }
                OS.memmove(fs_ref, data_ptr, actual_size[0])
                path_url = OS._cfurlcreate_from_fsref(OS.attr_k_cfallocator_default, fs_ref)
                # Filter path
                path_string = OS._cfurlcopy_file_system_path(path_url, OS.attr_k_cfurlposixpath_style)
                @filter_path = RJava.cast_to_string(get_string(path_string))
                OS._cfrelease(path_string)
                # Full path
                full_url = OS._cfurlcreate_copy_appending_path_component(OS.attr_k_cfallocator_default, path_url, record.attr_save_file_name, false)
                full_string = OS._cfurlcopy_file_system_path(full_url, OS.attr_k_cfurlposixpath_style)
                full_path = RJava.cast_to_string(get_string(full_string))
                OS._cfrelease(full_string)
                OS._cfrelease(full_url)
                # File name
                @file_name = RJava.cast_to_string(@file_names[0] = get_string(record.attr_save_file_name))
                OS._cfrelease(path_url)
              end
            else
              i = 0
              while i < count[0]
                if ((OS._aeget_nth_ptr(selection, i + 1, OS.attr_type_fsref, ae_keyword, type_code, data_ptr, maximum_size, actual_size)).equal?(OS.attr_no_err))
                  fs_ref = Array.typed(::Java::Byte).new(actual_size[0]) { 0 }
                  OS.memmove(fs_ref, data_ptr, actual_size[0])
                  url = OS._cfurlcreate_from_fsref(OS.attr_k_cfallocator_default, fs_ref)
                  full_string = OS._cfurlcopy_file_system_path(url, OS.attr_k_cfurlposixpath_style)
                  # File path
                  path_url = OS._cfurlcreate_copy_deleting_last_path_component(OS.attr_k_cfallocator_default, url)
                  path_string = OS._cfurlcopy_file_system_path(path_url, OS.attr_k_cfurlposixpath_style)
                  path = get_string(path_string)
                  OS._cfrelease(path_string)
                  OS._cfrelease(path_url)
                  if ((i).equal?(0))
                    # Full path
                    full_path = RJava.cast_to_string(get_string(full_string))
                    # Filter path
                    @filter_path = path
                    # File name
                    file_string = OS._cfurlcopy_last_path_component(url)
                    @file_name = RJava.cast_to_string(@file_names[0] = get_string(file_string))
                    OS._cfrelease(file_string)
                  else
                    if ((path == @filter_path))
                      file_string = OS._cfurlcopy_last_path_component(url)
                      @file_names[i] = get_string(file_string)
                      OS._cfrelease(file_string)
                    else
                      @file_names[i] = get_string(full_string)
                    end
                  end
                  OS._cfrelease(full_string)
                  OS._cfrelease(url)
                end
                i += 1
              end
            end
            OS._dispose_ptr(data_ptr)
          end
          OS._nav_dispose_reply(record)
        end
      end
      if (!(title_ptr).equal?(0))
        OS._cfrelease(title_ptr)
      end
      if (!(file_name_ptr).equal?(0))
        OS._cfrelease(file_name_ptr)
      end
      if (!(out_dialog[0]).equal?(0))
        OS._nav_dialog_dispose(out_dialog[0])
      end
      if (!(extensions).equal?(0))
        count = OS._cfarray_get_count(extensions)
        i = 0
        while i < count
          OS._cfrelease(OS._cfarray_get_value_at_index(extensions, i))
          i += 1
        end
        OS._cfrelease(extensions)
      end
      if (!(filter_callback).nil?)
        filter_callback.dispose
      end
      if (!(event_callback).nil?)
        event_callback.dispose
      end
      return full_path
    end
    
    typesig { [String] }
    # Set the initial filename which the dialog will
    # select by default when opened to the argument,
    # which may be null.  The name will be prefixed with
    # the filter path when one is supplied.
    # 
    # @param string the file name
    def set_file_name(string)
      @file_name = string
    end
    
    typesig { [Array.typed(String)] }
    # Set the file extensions which the dialog will
    # use to filter the files it shows to the argument,
    # which may be null.
    # <p>
    # The strings are platform specific. For example, on
    # some platforms, an extension filter string is typically
    # of the form "*.extension", where "*.*" matches all files.
    # For filters with multiple extensions, use semicolon as
    # a separator, e.g. "*.jpg;*.png".
    # </p>
    # 
    # @param extensions the file extension filter
    # 
    # @see #setFilterNames to specify the user-friendly
    # names corresponding to the extensions
    def set_filter_extensions(extensions)
      @filter_extensions = extensions
    end
    
    typesig { [::Java::Int] }
    # Set the 0-based index of the file extension filter
    # which the dialog will use initially to filter the files
    # it shows to the argument.
    # <p>
    # This is an index into the FilterExtensions array and
    # the FilterNames array.
    # </p>
    # 
    # @param index the file extension filter index
    # 
    # @see #setFilterExtensions
    # @see #setFilterNames
    # 
    # @since 3.4
    def set_filter_index(index)
      @filter_index = index
    end
    
    typesig { [Array.typed(String)] }
    # Sets the names that describe the filter extensions
    # which the dialog will use to filter the files it shows
    # to the argument, which may be null.
    # <p>
    # Each name is a user-friendly short description shown for
    # its corresponding filter. The <code>names</code> array must
    # be the same length as the <code>extensions</code> array.
    # </p>
    # 
    # @param names the list of filter names, or null for no filter names
    # 
    # @see #setFilterExtensions
    def set_filter_names(names)
      @filter_names = names
    end
    
    typesig { [String] }
    # Sets the directory path that the dialog will use
    # to the argument, which may be null. File names in this
    # path will appear in the dialog, filtered according
    # to the filter extensions. If the string is null,
    # then the operating system's default filter path
    # will be used.
    # <p>
    # Note that the path string is platform dependent.
    # For convenience, either '/' or '\' can be used
    # as a path separator.
    # </p>
    # 
    # @param string the directory path
    # 
    # @see #setFilterExtensions
    def set_filter_path(string)
      @filter_path = string
    end
    
    typesig { [::Java::Boolean] }
    # Sets the flag that the dialog will use to
    # determine whether to prompt the user for file
    # overwrite if the selected file already exists.
    # 
    # @param overwrite true if the dialog will prompt for file overwrite, false otherwise
    # 
    # @since 3.4
    def set_overwrite(overwrite)
      @overwrite = overwrite
    end
    
    private
    alias_method :initialize__file_dialog, :initialize
  end
  
end
