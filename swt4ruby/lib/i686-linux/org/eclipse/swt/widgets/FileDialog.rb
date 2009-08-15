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
      include ::Org::Eclipse::Swt::Internal::Gtk
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
    
    attr_accessor :file_names
    alias_method :attr_file_names, :file_names
    undef_method :file_names
    alias_method :attr_file_names=, :file_names=
    undef_method :file_names=
    
    attr_accessor :full_path
    alias_method :attr_full_path, :full_path
    undef_method :full_path
    alias_method :attr_full_path=, :full_path=
    undef_method :full_path=
    
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
    
    # long
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    class_module.module_eval {
      const_set_lazy(:SEPARATOR) { System.get_property("file.separator").char_at(0) }
      const_attr_reader  :SEPARATOR
      
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
      @filter_path = nil
      @file_name = nil
      @file_names = nil
      @full_path = nil
      @filter_index = 0
      @overwrite = false
      @handle = 0
      super(parent, check_style(parent, style))
      @filter_names = Array.typed(String).new(0) { nil }
      @filter_extensions = Array.typed(String).new(0) { nil }
      @filter_path = ""
      @file_name = ""
      @file_names = Array.typed(String).new(0) { nil }
      @full_path = ""
      @filter_index = -1
      @overwrite = false
      check_subclass
    end
    
    typesig { [] }
    def compute_result_chooser_dialog
      # MULTI is only valid if the native dialog's action is Open
      @full_path = RJava.cast_to_string(nil)
      if (((self.attr_style & (SWT::SAVE | SWT::MULTI))).equal?(SWT::MULTI))
        # long
        list = OS.gtk_file_chooser_get_filenames(@handle)
        list_length = OS.g_slist_length(list)
        @file_names = Array.typed(String).new(list_length) { nil }
        # long
        current = list
        write_pos = 0
        i = 0
        while i < list_length
          # long
          name = OS.g_slist_data(current)
          # long
          utf8ptr = OS.g_filename_to_utf8(name, -1, nil, nil, nil)
          OS.g_free(name)
          if (!(utf8ptr).equal?(0))
            # long
            # long
            items_written = Array.typed(::Java::Int).new(1) { 0 }
            # long
            utf16ptr = OS.g_utf8_to_utf16(utf8ptr, -1, nil, items_written, nil)
            OS.g_free(utf8ptr)
            if (!(utf16ptr).equal?(0))
              # 64
              clength = RJava.cast_to_int(items_written[0])
              chars = CharArray.new(clength)
              OS.memmove(chars, utf16ptr, clength * 2)
              OS.g_free(utf16ptr)
              @full_path = RJava.cast_to_string(String.new(chars))
              @file_names[((write_pos += 1) - 1)] = @full_path.substring(@full_path.last_index_of(SEPARATOR) + 1)
            end
          end
          current = OS.g_slist_next(current)
          i += 1
        end
        if (!(write_pos).equal?(0) && !(write_pos).equal?(list_length))
          valid_file_names = Array.typed(String).new(write_pos) { nil }
          System.arraycopy(@file_names, 0, valid_file_names, 0, write_pos)
          @file_names = valid_file_names
        end
        OS.g_slist_free(list)
      else
        # long
        path = OS.gtk_file_chooser_get_filename(@handle)
        if (!(path).equal?(0))
          # long
          utf8ptr = OS.g_filename_to_utf8(path, -1, nil, nil, nil)
          OS.g_free(path)
          if (!(utf8ptr).equal?(0))
            # long
            # long
            items_written = Array.typed(::Java::Int).new(1) { 0 }
            # long
            utf16ptr = OS.g_utf8_to_utf16(utf8ptr, -1, nil, items_written, nil)
            OS.g_free(utf8ptr)
            if (!(utf16ptr).equal?(0))
              # 64
              clength = RJava.cast_to_int(items_written[0])
              chars = CharArray.new(clength)
              OS.memmove(chars, utf16ptr, clength * 2)
              OS.g_free(utf16ptr)
              @full_path = RJava.cast_to_string(String.new(chars))
              @file_names = Array.typed(String).new(1) { nil }
              @file_names[0] = @full_path.substring(@full_path.last_index_of(SEPARATOR) + 1)
            end
          end
        end
      end
      @filter_index = -1
      # long
      filter = OS.gtk_file_chooser_get_filter(@handle)
      if (!(filter).equal?(0))
        # long
        filter_name_ptr = OS.gtk_file_filter_get_name(filter)
        if (!(filter_name_ptr).equal?(0))
          length = OS.strlen(filter_name_ptr)
          buffer = Array.typed(::Java::Byte).new(length) { 0 }
          OS.memmove(buffer, filter_name_ptr, length)
          # OS.g_free (filterNamePtr); //GTK owns this pointer - do not free
          filter_name = String.new(Converter.mbcs_to_wcs(nil, buffer))
          i = 0
          while i < @filter_extensions.attr_length
            if (@filter_names.attr_length > 0)
              if ((@filter_names[i] == filter_name))
                @filter_index = i
                break
              end
            else
              if ((@filter_extensions[i] == filter_name))
                @filter_index = i
                break
              end
            end
            i += 1
          end
        end
      end
      if (!(@full_path).nil?)
        separator_index = @full_path.last_index_of(SEPARATOR)
        @file_name = RJava.cast_to_string(@full_path.substring(separator_index + 1))
        @filter_path = RJava.cast_to_string(@full_path.substring(0, separator_index))
      end
      return @full_path
    end
    
    typesig { [] }
    def compute_result_classic_dialog
      @filter_index = -1
      selection = GtkFileSelection.new
      OS.memmove(selection, @handle)
      # long
      entry = selection.attr_selection_entry
      # long
      entry_text = OS.gtk_entry_get_text(entry)
      entry_length = OS.strlen(entry_text)
      if ((entry_length).equal?(0))
        # long
        file_list = selection.attr_file_list
        # long
        list_selection = OS.gtk_tree_view_get_selection(file_list)
        # long
        # long
        model = Array.typed(::Java::Int).new(1) { 0 }
        # long
        selected_list = OS.gtk_tree_selection_get_selected_rows(list_selection, model)
        if ((selected_list).equal?(0))
          return nil
        end
        list_length = OS.g_list_length(selected_list)
        if ((list_length).equal?(0))
          OS.g_list_free(selected_list)
          return nil
        end
        # long
        path = OS.g_list_nth_data(selected_list, 0)
        # long
        # long
        ptr = Array.typed(::Java::Int).new(1) { 0 }
        # long
        iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
        if (OS.gtk_tree_model_get_iter(model[0], iter, path))
          OS.gtk_tree_model_get(model[0], iter, 0, ptr, -1)
        end
        OS.g_free(iter)
        i = 0
        while i < list_length
          OS.gtk_tree_path_free(OS.g_list_nth_data(selected_list, i))
          i += 1
        end
        OS.g_list_free(selected_list)
        if ((ptr[0]).equal?(0))
          return nil
        end
        length = OS.strlen(ptr[0])
        buffer = Array.typed(::Java::Byte).new(length) { 0 }
        OS.memmove(buffer, ptr[0], length)
        OS.g_free(ptr[0])
        OS.gtk_entry_set_text(entry, buffer)
      end
      # long
      file_name_ptr = OS.gtk_file_selection_get_filename(@handle)
      # long
      utf8ptr = OS.g_filename_to_utf8(file_name_ptr, -1, nil, nil, nil)
      # long
      # long
      items_written = Array.typed(::Java::Int).new(1) { 0 }
      # long
      utf16ptr = OS.g_utf8_to_utf16(utf8ptr, -1, nil, items_written, nil)
      # 64
      entry_length = RJava.cast_to_int(items_written[0])
      buffer = CharArray.new(entry_length)
      OS.memmove(buffer, utf16ptr, entry_length * 2)
      os_answer = String.new(buffer)
      OS.g_free(utf16ptr)
      OS.g_free(utf8ptr)
      if ((os_answer).nil?)
        return nil
      end
      separator_index = os_answer.last_index_of(SEPARATOR)
      if ((separator_index + 1).equal?(os_answer.length))
        return nil
      end
      answer = @full_path = os_answer
      @file_name = RJava.cast_to_string(@full_path.substring(separator_index + 1))
      @filter_path = RJava.cast_to_string(@full_path.substring(0, separator_index))
      if (((self.attr_style & SWT::MULTI)).equal?(0))
        @file_names = Array.typed(String).new([@file_name])
      else
        # long
        names_ptr = OS.gtk_file_selection_get_selections(@handle)
        # long
        names_ptr1 = names_ptr
        # long
        # long
        name_ptr = Array.typed(::Java::Int).new(1) { 0 }
        OS.memmove(name_ptr, names_ptr1, OS::PTR_SIZEOF)
        length_ = 0
        while (!(name_ptr[0]).equal?(0))
          length_ += 1
          names_ptr1 += OS::PTR_SIZEOF
          OS.memmove(name_ptr, names_ptr1, OS::PTR_SIZEOF)
        end
        @file_names = Array.typed(String).new(length_) { nil }
        # long
        name_ptr = Array.typed(::Java::Int).new(length_) { 0 }
        OS.memmove(name_ptr, names_ptr, length_ * OS::PTR_SIZEOF)
        i = 0
        while i < length_
          utf8ptr = OS.g_filename_to_utf8(name_ptr[i], -1, nil, nil, nil)
          # long
          items_written = Array.typed(::Java::Int).new(1) { 0 }
          utf16ptr = OS.g_utf8_to_utf16(utf8ptr, -1, nil, items_written, nil)
          # 64
          buffer = CharArray.new(RJava.cast_to_int(items_written[0]))
          OS.memmove(buffer, utf16ptr, items_written[0] * 2)
          name = String.new(buffer)
          @file_names[i] = name.substring(name.last_index_of(SEPARATOR) + 1)
          OS.g_free(utf16ptr)
          OS.g_free(utf8ptr)
          i += 1
        end
        OS.g_strfreev(names_ptr)
      end
      return answer
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
      use_chooser_dialog = OS::GTK_VERSION >= OS._version(2, 4, 10)
      if (use_chooser_dialog)
        return open_chooser_dialog
      else
        return open_classic_dialog
      end
    end
    
    typesig { [] }
    def open_chooser_dialog
      title_bytes = Converter.wcs_to_mbcs(nil, self.attr_title, true)
      action = !((self.attr_style & SWT::SAVE)).equal?(0) ? OS::GTK_FILE_CHOOSER_ACTION_SAVE : OS::GTK_FILE_CHOOSER_ACTION_OPEN
      # long
      shell_handle = self.attr_parent.top_handle
      @handle = OS.gtk_file_chooser_dialog_new(title_bytes, shell_handle, action, OS._gtk_stock_cancel, OS::GTK_RESPONSE_CANCEL, OS._gtk_stock_ok, OS::GTK_RESPONSE_OK, 0)
      # long
      pixbufs = OS.gtk_window_get_icon_list(shell_handle)
      if (!(pixbufs).equal?(0))
        OS.gtk_window_set_icon_list(@handle, pixbufs)
        OS.g_list_free(pixbufs)
      end
      preset_chooser_dialog
      display = !(self.attr_parent).nil? ? self.attr_parent.get_display : Display.get_current
      display.add_idle_proc
      answer = nil
      old_modal = nil
      if (OS.gtk_window_get_modal(@handle))
        old_modal = display.get_modal_dialog
        display.set_modal_dialog(self)
      end
      signal_id = 0
      # long
      hook_id = 0
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        signal_id = OS.g_signal_lookup(OS.attr_map, OS._gtk_type_widget)
        hook_id = OS.g_signal_add_emission_hook(signal_id, 0, display.attr_emission_proc, @handle, 0)
      end
      response = OS.gtk_dialog_run(@handle)
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        OS.g_signal_remove_emission_hook(signal_id, hook_id)
      end
      if (OS.gtk_window_get_modal(@handle))
        display.set_modal_dialog(old_modal)
      end
      if ((response).equal?(OS::GTK_RESPONSE_OK))
        answer = RJava.cast_to_string(compute_result_chooser_dialog)
      end
      display.remove_idle_proc
      OS.gtk_widget_destroy(@handle)
      return answer
    end
    
    typesig { [] }
    def open_classic_dialog
      title_bytes = Converter.wcs_to_mbcs(nil, self.attr_title, true)
      @handle = OS.gtk_file_selection_new(title_bytes)
      if (!(self.attr_parent).nil?)
        # long
        shell_handle = self.attr_parent.top_handle
        OS.gtk_window_set_transient_for(@handle, shell_handle)
        # long
        pixbufs = OS.gtk_window_get_icon_list(shell_handle)
        if (!(pixbufs).equal?(0))
          OS.gtk_window_set_icon_list(@handle, pixbufs)
          OS.g_list_free(pixbufs)
        end
      end
      preset_classic_dialog
      display = !(self.attr_parent).nil? ? self.attr_parent.get_display : Display.get_current
      display.add_idle_proc
      answer = nil
      old_modal = nil
      if (OS.gtk_window_get_modal(@handle))
        old_modal = display.get_modal_dialog
        display.set_modal_dialog(self)
      end
      signal_id = 0
      # long
      hook_id = 0
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        signal_id = OS.g_signal_lookup(OS.attr_map, OS._gtk_type_widget)
        hook_id = OS.g_signal_add_emission_hook(signal_id, 0, display.attr_emission_proc, @handle, 0)
      end
      response = OS.gtk_dialog_run(@handle)
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        OS.g_signal_remove_emission_hook(signal_id, hook_id)
      end
      if (OS.gtk_window_get_modal(@handle))
        display.set_modal_dialog(old_modal)
      end
      if ((response).equal?(OS::GTK_RESPONSE_OK))
        answer = RJava.cast_to_string(compute_result_classic_dialog)
      end
      display.remove_idle_proc
      OS.gtk_widget_destroy(@handle)
      return answer
    end
    
    typesig { [] }
    def preset_chooser_dialog
      # MULTI is only valid if the native dialog's action is Open
      if (((self.attr_style & (SWT::SAVE | SWT::MULTI))).equal?(SWT::MULTI))
        OS.gtk_file_chooser_set_select_multiple(@handle, true)
      end
      if ((@filter_path).nil?)
        @filter_path = ""
      end
      if ((@file_name).nil?)
        @file_name = ""
      end
      if (@filter_path.length > 0)
        string_buffer = StringBuffer.new
        # filename must be a full path
        if (!(@filter_path.char_at(0)).equal?(SEPARATOR))
          string_buffer.append(SEPARATOR)
        end
        string_buffer.append(@filter_path)
        if (@file_name.length > 0 && ((self.attr_style & SWT::SAVE)).equal?(0))
          if (!(@filter_path.char_at(@filter_path.length - 1)).equal?(SEPARATOR))
            string_buffer.append(SEPARATOR)
          end
          string_buffer.append(@file_name)
          buffer = Converter.wcs_to_mbcs(nil, string_buffer.to_s, true)
          # Bug in GTK. GtkFileChooser may crash on GTK versions 2.4.10 to 2.6
          # when setting a file name that is not a true canonical path.
          # The fix is to use the canonical path.
          # 
          # long
          ptr = OS.realpath(buffer, nil)
          if (!(ptr).equal?(0))
            OS.gtk_file_chooser_set_filename(@handle, ptr)
            OS.g_free(ptr)
          end
        else
          buffer = Converter.wcs_to_mbcs(nil, string_buffer.to_s, true)
          # Bug in GTK. GtkFileChooser may crash on GTK versions 2.4.10 to 2.6
          # when setting a file name that is not a true canonical path.
          # The fix is to use the canonical path.
          # 
          # long
          ptr = OS.realpath(buffer, nil)
          if (!(ptr).equal?(0))
            OS.gtk_file_chooser_set_current_folder(@handle, ptr)
            OS.g_free(ptr)
          end
        end
      else
        if (@file_name.length > 0)
          if ((@file_name.char_at(0)).equal?(SEPARATOR))
            buffer = Converter.wcs_to_mbcs(nil, @file_name, true)
            # Bug in GTK. GtkFileChooser may crash on GTK versions 2.4.10 to 2.6
            # when setting a file name that is not a true canonical path.
            # The fix is to use the canonical path.
            # 
            # long
            ptr = OS.realpath(buffer, nil)
            if (!(ptr).equal?(0))
              OS.gtk_file_chooser_set_filename(@handle, ptr)
              OS.g_free(ptr)
            end
          end
        end
      end
      if (!((self.attr_style & SWT::SAVE)).equal?(0) && @file_name.length > 0)
        buffer = Converter.wcs_to_mbcs(nil, @file_name, true)
        OS.gtk_file_chooser_set_current_name(@handle, buffer)
      end
      if (!((self.attr_style & SWT::SAVE)).equal?(0))
        if (OS::GTK_VERSION >= OS._version(2, 8, 0))
          OS.gtk_file_chooser_set_do_overwrite_confirmation(@handle, @overwrite)
        end
      end
      # Set the extension filters
      if ((@filter_names).nil?)
        @filter_names = Array.typed(String).new(0) { nil }
      end
      if ((@filter_extensions).nil?)
        @filter_extensions = Array.typed(String).new(0) { nil }
      end
      # long
      initial_filter = 0
      i = 0
      while i < @filter_extensions.attr_length
        if (!(@filter_extensions[i]).nil?)
          # long
          filter = OS.gtk_file_filter_new
          if (@filter_names.attr_length > i && !(@filter_names[i]).nil?)
            name = Converter.wcs_to_mbcs(nil, @filter_names[i], true)
            OS.gtk_file_filter_set_name(filter, name)
          else
            name = Converter.wcs_to_mbcs(nil, @filter_extensions[i], true)
            OS.gtk_file_filter_set_name(filter, name)
          end
          start = 0
          index = @filter_extensions[i].index_of(EXTENSION_SEPARATOR)
          while (!(index).equal?(-1))
            current = @filter_extensions[i].substring(start, index)
            filter_string = Converter.wcs_to_mbcs(nil, current, true)
            OS.gtk_file_filter_add_pattern(filter, filter_string)
            start = index + 1
            index = @filter_extensions[i].index_of(EXTENSION_SEPARATOR, start)
          end
          current = @filter_extensions[i].substring(start)
          filter_string = Converter.wcs_to_mbcs(nil, current, true)
          OS.gtk_file_filter_add_pattern(filter, filter_string)
          OS.gtk_file_chooser_add_filter(@handle, filter)
          if ((i).equal?(@filter_index))
            initial_filter = filter
          end
        end
        i += 1
      end
      if (!(initial_filter).equal?(0))
        OS.gtk_file_chooser_set_filter(@handle, initial_filter)
      end
      @full_path = RJava.cast_to_string(nil)
      @file_names = Array.typed(String).new(0) { nil }
    end
    
    typesig { [] }
    def preset_classic_dialog
      OS.gtk_file_selection_set_select_multiple(@handle, !((self.attr_style & SWT::MULTI)).equal?(0))
      # Calculate the fully-specified file name and convert to bytes
      string_buffer = StringBuffer.new
      if ((@filter_path).nil?)
        @filter_path = ""
      else
        if (@filter_path.length > 0)
          string_buffer.append(@filter_path)
          if (!(@filter_path.char_at(@filter_path.length - 1)).equal?(SEPARATOR))
            string_buffer.append(SEPARATOR)
          end
        end
      end
      if ((@file_name).nil?)
        @file_name = ""
      else
        string_buffer.append(@file_name)
      end
      @full_path = RJava.cast_to_string(string_buffer.to_s)
      length_ = @full_path.length
      buffer = CharArray.new(length_ + 1)
      @full_path.get_chars(0, length_, buffer, 0)
      # long
      utf8ptr = OS.g_utf16_to_utf8(buffer, -1, nil, nil, nil)
      # long
      file_name_ptr = OS.g_filename_from_utf8(utf8ptr, -1, nil, nil, nil)
      OS.gtk_file_selection_set_filename(@handle, file_name_ptr)
      OS.g_free(utf8ptr)
      OS.g_free(file_name_ptr)
      if ((@filter_names).nil?)
        @filter_names = Array.typed(String).new(0) { nil }
      end
      if ((@filter_extensions).nil?)
        @filter_extensions = Array.typed(String).new(0) { nil }
      end
      @full_path = RJava.cast_to_string(nil)
      @file_names = Array.typed(String).new(0) { nil }
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
