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
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
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
      const_set_lazy(:FILTER) { "*.*" }
      const_attr_reader  :FILTER
      
      
      def buffer_size
        defined?(@@buffer_size) ? @@buffer_size : @@buffer_size= 1024 * 32
      end
      alias_method :attr_buffer_size, :buffer_size
      
      def buffer_size=(value)
        @@buffer_size = value
      end
      alias_method :attr_buffer_size=, :buffer_size=
      
      
      def use_hook
        defined?(@@use_hook) ? @@use_hook : @@use_hook= true
      end
      alias_method :attr_use_hook, :use_hook
      
      def use_hook=(value)
        @@use_hook = value
      end
      alias_method :attr_use_hook=, :use_hook=
      
      when_class_loaded do
        # Feature in Vista.  When OFN_ENABLEHOOK is set in the
        # save or open file dialog,  Vista uses the old XP look
        # and feel.  OFN_ENABLEHOOK is used to grow the file
        # name buffer in a multi-select file dialog.  The fix
        # is to only use OFN_ENABLEHOOK when the buffer has
        # overrun.
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
          self.attr_use_hook = false
        end
      end
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def _ofnhook_proc(hdlg, ui_msg, w_param, l_param)
      # 64
      case (RJava.cast_to_int(ui_msg))
      when OS::WM_NOTIFY
        ofn = OFNOTIFY.new
        OS._move_memory(ofn, l_param, OFNOTIFY.attr_sizeof)
        if ((ofn.attr_code).equal?(OS::CDN_SELCHANGE))
          # 64
          l_result = RJava.cast_to_int(OS._send_message(ofn.attr_hwnd_from, OS::CDM_GETSPEC, 0, 0))
          if (l_result > 0)
            l_result += OS::MAX_PATH
            lpofn = OPENFILENAME.new
            OS._move_memory(lpofn, ofn.attr_lp_ofn, OPENFILENAME.attr_sizeof)
            if (lpofn.attr_n_max_file < l_result)
              # long
              h_heap = OS._get_process_heap
              # long
              lpstr_file = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, l_result * TCHAR.attr_sizeof)
              if (!(lpstr_file).equal?(0))
                if (!(lpofn.attr_lpstr_file).equal?(0))
                  OS._heap_free(h_heap, 0, lpofn.attr_lpstr_file)
                end
                lpofn.attr_lpstr_file = lpstr_file
                lpofn.attr_n_max_file = l_result
                OS._move_memory(ofn.attr_lp_ofn, lpofn, OPENFILENAME.attr_sizeof)
              end
            end
          end
        end
      end
      return 0
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
      # long
      h_heap = OS._get_process_heap
      # Get the owner HWND for the dialog
      # long
      hwnd_owner = self.attr_parent.attr_handle
      # long
      hwnd_parent = self.attr_parent.attr_handle
      # Feature in Windows.  There is no API to set the orientation of a
      # file dialog.  It is always inherited from the parent.  The fix is
      # to create a hidden parent and set the orientation in the hidden
      # parent for the dialog to inherit.
      enabled = false
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(4, 10))
        dialog_orientation = self.attr_style & (SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT)
        parent_orientation = self.attr_parent.attr_style & (SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT)
        if (!(dialog_orientation).equal?(parent_orientation))
          ex_style = OS::WS_EX_NOINHERITLAYOUT
          if ((dialog_orientation).equal?(SWT::RIGHT_TO_LEFT))
            ex_style |= OS::WS_EX_LAYOUTRTL
          end
          hwnd_owner = OS._create_window_ex(ex_style, Shell::DialogClass, nil, 0, OS::CW_USEDEFAULT, 0, OS::CW_USEDEFAULT, 0, hwnd_parent, 0, OS._get_module_handle(nil), nil)
          enabled = OS._is_window_enabled(hwnd_parent)
          if (enabled)
            OS._enable_window(hwnd_parent, false)
          end
        end
      end
      # Convert the title and copy it into lpstrTitle
      if ((self.attr_title).nil?)
        self.attr_title = ""
      end
      # Use the character encoding for the default locale
      buffer3 = TCHAR.new(0, self.attr_title, true)
      byte_count3 = buffer3.length * TCHAR.attr_sizeof
      # long
      lpstr_title = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count3)
      OS._move_memory(lpstr_title, buffer3, byte_count3)
      # Compute filters and copy into lpstrFilter
      str_filter = ""
      if ((@filter_names).nil?)
        @filter_names = Array.typed(String).new(0) { nil }
      end
      if ((@filter_extensions).nil?)
        @filter_extensions = Array.typed(String).new(0) { nil }
      end
      i = 0
      while i < @filter_extensions.attr_length
        filter_name = @filter_extensions[i]
        if (i < @filter_names.attr_length)
          filter_name = RJava.cast_to_string(@filter_names[i])
        end
        str_filter = str_filter + filter_name + RJava.cast_to_string(Character.new(?\0.ord)) + RJava.cast_to_string(@filter_extensions[i]) + RJava.cast_to_string(Character.new(?\0.ord))
        i += 1
      end
      if ((@filter_extensions.attr_length).equal?(0))
        str_filter = str_filter + FILTER + RJava.cast_to_string(Character.new(?\0.ord)) + FILTER + RJava.cast_to_string(Character.new(?\0.ord))
      end
      # Use the character encoding for the default locale
      buffer4 = TCHAR.new(0, str_filter, true)
      byte_count4 = buffer4.length * TCHAR.attr_sizeof
      # long
      lpstr_filter = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count4)
      OS._move_memory(lpstr_filter, buffer4, byte_count4)
      # Convert the fileName and filterName to C strings
      if ((@file_name).nil?)
        @file_name = ""
      end
      # Use the character encoding for the default locale
      name = TCHAR.new(0, @file_name, true)
      # Copy the name into lpstrFile and ensure that the
      # last byte is NULL and the buffer does not overrun.
      n_max_file = OS::MAX_PATH
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        n_max_file = Math.max(n_max_file, self.attr_buffer_size)
      end
      byte_count = n_max_file * TCHAR.attr_sizeof
      # long
      lpstr_file = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
      byte_count_file = Math.min(name.length * TCHAR.attr_sizeof, byte_count - TCHAR.attr_sizeof)
      OS._move_memory(lpstr_file, name, byte_count_file)
      # Copy the path into lpstrInitialDir and ensure that
      # the last byte is NULL and the buffer does not overrun.
      if ((@filter_path).nil?)
        @filter_path = ""
      end
      # Use the character encoding for the default locale
      path = TCHAR.new(0, @filter_path.replace(Character.new(?/.ord), Character.new(?\\.ord)), true)
      byte_count5 = OS::MAX_PATH * TCHAR.attr_sizeof
      # long
      lpstr_initial_dir = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count5)
      byte_count_dir = Math.min(path.length * TCHAR.attr_sizeof, byte_count5 - TCHAR.attr_sizeof)
      OS._move_memory(lpstr_initial_dir, path, byte_count_dir)
      # Create the file dialog struct
      struct = OPENFILENAME.new
      struct.attr_l_struct_size = OPENFILENAME.attr_sizeof
      struct.attr_flags = OS::OFN_HIDEREADONLY | OS::OFN_NOCHANGEDIR
      save = !((self.attr_style & SWT::SAVE)).equal?(0)
      if (save && @overwrite)
        struct.attr_flags |= OS::OFN_OVERWRITEPROMPT
      end
      callback = nil
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        struct.attr_flags |= OS::OFN_ALLOWMULTISELECT | OS::OFN_EXPLORER
        if (!OS::IsWinCE && self.attr_use_hook)
          callback = Callback.new(self, "OFNHookProc", 4) # $NON-NLS-1$
          # long
          lpfn_hook = callback.get_address
          if ((lpfn_hook).equal?(0))
            SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
          end
          struct.attr_lpfn_hook = lpfn_hook
          struct.attr_flags |= OS::OFN_ENABLEHOOK
        end
      end
      struct.attr_hwnd_owner = hwnd_owner
      struct.attr_lpstr_title = lpstr_title
      struct.attr_lpstr_file = lpstr_file
      struct.attr_n_max_file = n_max_file
      struct.attr_lpstr_initial_dir = lpstr_initial_dir
      struct.attr_lpstr_filter = lpstr_filter
      struct.attr_n_filter_index = (@filter_index).equal?(0) ? @filter_index : @filter_index + 1
      # Set the default extension to an empty string.  If the
      # user fails to type an extension and this extension is
      # empty, Windows uses the current value of the filter
      # extension at the time that the dialog is closed.
      # 
      # long
      lpstr_def_ext = 0
      if (save)
        lpstr_def_ext = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, TCHAR.attr_sizeof)
        struct.attr_lpstr_def_ext = lpstr_def_ext
      end
      # Make the parent shell be temporary modal
      old_modal = nil
      display = self.attr_parent.get_display
      if (!((self.attr_style & (SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL))).equal?(0))
        old_modal = display.get_modal_dialog
        display.set_modal_dialog(self)
      end
      # Feature in Windows.  For some reason, the WH_MSGFILTER filter
      # does not run for GetSaveFileName() or GetOpenFileName().  The
      # fix is to allow async messages to run in the WH_FOREGROUNDIDLE
      # hook instead.
      # 
      # Bug in Windows 98.  For some reason, when certain operating
      # system calls such as Shell_NotifyIcon(), GetOpenFileName()
      # and GetSaveFileName() are made during the WH_FOREGROUNDIDLE
      # hook, Windows hangs.  The fix is to disallow async messages
      # during WH_FOREGROUNDIDLE.
      old_run_messages_in_idle = display.attr_run_messages_in_idle
      display.attr_run_messages_in_idle = !OS::IsWin95
      # Open the dialog.  If the open fails due to an invalid
      # file name, use an empty file name and open it again.
      success = (save) ? OS._get_save_file_name(struct) : OS._get_open_file_name(struct)
      case (OS._comm_dlg_extended_error)
      when OS::FNERR_INVALIDFILENAME
        OS._move_memory(lpstr_file, TCHAR.new(0, "", true), TCHAR.attr_sizeof)
        success = (save) ? OS._get_save_file_name(struct) : OS._get_open_file_name(struct)
      when OS::FNERR_BUFFERTOOSMALL
        self.attr_use_hook = true
      end
      display.attr_run_messages_in_idle = old_run_messages_in_idle
      # Clear the temporary dialog modal parent
      if (!((self.attr_style & (SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL))).equal?(0))
        display.set_modal_dialog(old_modal)
      end
      # Dispose the callback and reassign the buffer
      if (!(callback).nil?)
        callback.dispose
      end
      lpstr_file = struct.attr_lpstr_file
      # Set the new path, file name and filter
      @file_names = Array.typed(String).new(0) { nil }
      full_path = nil
      if (success)
        # Use the character encoding for the default locale
        buffer = TCHAR.new(0, struct.attr_n_max_file)
        byte_count1 = buffer.length * TCHAR.attr_sizeof
        OS._move_memory(buffer, lpstr_file, byte_count1)
        # Bug in WinCE.  For some reason, nFileOffset and nFileExtension
        # are always zero on WinCE HPC. nFileOffset is always zero on
        # WinCE PPC when using GetSaveFileName().  nFileOffset is correctly
        # set on WinCE PPC when using OpenFileName().  The fix is to parse
        # lpstrFile to calculate nFileOffset.
        # 
        # Note: WinCE does not support multi-select file dialogs.
        n_file_offset = struct.attr_n_file_offset
        if (OS::IsWinCE && (n_file_offset).equal?(0))
          index = 0
          while (index < buffer.length)
            ch = buffer.tchar_at(index)
            if ((ch).equal?(0))
              break
            end
            if ((ch).equal?(Character.new(?\\.ord)))
              n_file_offset = index + 1
            end
            index += 1
          end
        end
        if (n_file_offset > 0)
          # Use the character encoding for the default locale
          prefix = TCHAR.new(0, n_file_offset - 1)
          byte_count2 = prefix.length * TCHAR.attr_sizeof
          OS._move_memory(prefix, lpstr_file, byte_count2)
          @filter_path = RJava.cast_to_string(prefix.to_s(0, prefix.length))
          # Get each file from the buffer.  Files are delimited
          # by a NULL character with 2 NULL characters at the end.
          count = 0
          @file_names = Array.typed(String).new(!((self.attr_style & SWT::MULTI)).equal?(0) ? 4 : 1) { nil }
          start = n_file_offset
          begin
            end_ = start
            while (end_ < buffer.length && !(buffer.tchar_at(end_)).equal?(0))
              end_ += 1
            end
            string = buffer.to_s(start, end_ - start)
            start = end_
            if ((count).equal?(@file_names.attr_length))
              new_file_names = Array.typed(String).new(@file_names.attr_length + 4) { nil }
              System.arraycopy(@file_names, 0, new_file_names, 0, @file_names.attr_length)
              @file_names = new_file_names
            end
            @file_names[((count += 1) - 1)] = string
            if (((self.attr_style & SWT::MULTI)).equal?(0))
              break
            end
            start += 1
          end while (start < buffer.length && !(buffer.tchar_at(start)).equal?(0))
          if (@file_names.attr_length > 0)
            @file_name = RJava.cast_to_string(@file_names[0])
          end
          separator = ""
          length_ = @filter_path.length
          if (length_ > 0 && !(@filter_path.char_at(length_ - 1)).equal?(Character.new(?\\.ord)))
            separator = "\\"
          end
          full_path = @filter_path + separator + @file_name
          if (count < @file_names.attr_length)
            new_file_names = Array.typed(String).new(count) { nil }
            System.arraycopy(@file_names, 0, new_file_names, 0, count)
            @file_names = new_file_names
          end
        end
        @filter_index = struct.attr_n_filter_index - 1
      end
      # Free the memory that was allocated.
      OS._heap_free(h_heap, 0, lpstr_file)
      OS._heap_free(h_heap, 0, lpstr_filter)
      OS._heap_free(h_heap, 0, lpstr_initial_dir)
      OS._heap_free(h_heap, 0, lpstr_title)
      if (!(lpstr_def_ext).equal?(0))
        OS._heap_free(h_heap, 0, lpstr_def_ext)
      end
      # Destroy the BIDI orientation window
      if (!(hwnd_parent).equal?(hwnd_owner))
        if (enabled)
          OS._enable_window(hwnd_parent, true)
        end
        OS._set_active_window(hwnd_parent)
        OS._destroy_window(hwnd_owner)
      end
      # This code is intentionally commented.  On some
      # platforms, the owner window is repainted right
      # away when a dialog window exits.  This behavior
      # is currently unspecified.
      # 
      # if (hwndOwner != 0) OS.UpdateWindow (hwndOwner);
      # Answer the full path or null
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
