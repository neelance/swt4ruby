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
  module DirectoryDialogImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
    }
  end
  
  # Instances of this class allow the user to navigate
  # the file system and select a directory.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>(none)</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#directorydialog">DirectoryDialog snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample, Dialog tab</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class DirectoryDialog < DirectoryDialogImports.const_get :Dialog
    include_class_members DirectoryDialogImports
    
    attr_accessor :message
    alias_method :attr_message, :message
    undef_method :message
    alias_method :attr_message=, :message=
    undef_method :message=
    
    attr_accessor :filter_path
    alias_method :attr_filter_path, :filter_path
    undef_method :filter_path
    alias_method :attr_filter_path=, :filter_path=
    undef_method :filter_path=
    
    # $NON-NLS-1$//$NON-NLS-2$
    attr_accessor :directory_path
    alias_method :attr_directory_path, :directory_path
    undef_method :directory_path
    alias_method :attr_directory_path=, :directory_path=
    undef_method :directory_path=
    
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
      initialize__directory_dialog(parent, SWT::APPLICATION_MODAL)
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
      @message = nil
      @filter_path = nil
      @directory_path = nil
      super(parent, check_style(parent, style))
      @message = ""
      @filter_path = ""
      check_subclass
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def _browse_callback_proc(hwnd, u_msg, l_param, lp_data)
      # 64
      case (RJava.cast_to_int(u_msg))
      when OS::BFFM_INITIALIZED
        if (!(@filter_path).nil? && !(@filter_path.length).equal?(0))
          # Use the character encoding for the default locale
          buffer = TCHAR.new(0, @filter_path.replace(Character.new(?/.ord), Character.new(?\\.ord)), true)
          OS._send_message(hwnd, OS::BFFM_SETSELECTION, 1, buffer)
        end
        if (!(self.attr_title).nil? && !(self.attr_title.length).equal?(0))
          # Use the character encoding for the default locale
          buffer = TCHAR.new(0, self.attr_title, true)
          OS._set_window_text(hwnd, buffer)
        end
      when OS::BFFM_VALIDATEFAILEDA, OS::BFFM_VALIDATEFAILEDW
        # Use the character encoding for the default locale
        length_ = OS::IsUnicode ? OS.wcslen(l_param) : OS.strlen(l_param)
        buffer = TCHAR.new(0, length_)
        byte_count = buffer.length * TCHAR.attr_sizeof
        OS._move_memory(buffer, l_param, byte_count)
        @directory_path = (buffer.to_s(0, length_)).to_s
      end
      return 0
    end
    
    typesig { [] }
    # Returns the path which the dialog will use to filter
    # the directories it shows.
    # 
    # @return the filter path
    # 
    # @see #setFilterPath
    def get_filter_path
      return @filter_path
    end
    
    typesig { [] }
    # Returns the dialog's message, which is a description of
    # the purpose for which it was opened. This message will be
    # visible on the dialog while it is open.
    # 
    # @return the message
    def get_message
      return @message
    end
    
    typesig { [] }
    # Makes the dialog visible and brings it to the front
    # of the display.
    # 
    # @return a string describing the absolute path of the selected directory,
    # or null if the dialog was cancelled or an error occurred
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the dialog has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the dialog</li>
    # </ul>
    def open
      if (OS::IsWinCE)
        SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
      end
      # long
      h_heap = OS._get_process_heap
      # Get the owner HWND for the dialog
      # long
      hwnd_owner = 0
      if (!(self.attr_parent).nil?)
        hwnd_owner = self.attr_parent.attr_handle
      end
      # Copy the message to OS memory
      # long
      lpsz_title = 0
      if (!(@message.length).equal?(0))
        string = @message
        if (!(string.index_of(Character.new(?&.ord))).equal?(-1))
          length_ = string.length
          buffer = CharArray.new(length_ * 2)
          index = 0
          i = 0
          while i < length_
            ch = string.char_at(i)
            if ((ch).equal?(Character.new(?&.ord)))
              buffer[((index += 1) - 1)] = Character.new(?&.ord)
            end
            buffer[((index += 1) - 1)] = ch
            ((i += 1) - 1)
          end
          string = (String.new(buffer, 0, index)).to_s
        end
        # Use the character encoding for the default locale
        buffer = TCHAR.new(0, string, true)
        byte_count = buffer.length * TCHAR.attr_sizeof
        lpsz_title = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
        OS._move_memory(lpsz_title, buffer, byte_count)
      end
      # Create the BrowseCallbackProc
      callback = Callback.new(self, "BrowseCallbackProc", 4) # $NON-NLS-1$
      # long
      lpfn = callback.get_address
      if ((lpfn).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      # Make the parent shell be temporary modal
      old_modal = nil
      display = self.attr_parent.get_display
      if (!((self.attr_style & (SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL))).equal?(0))
        old_modal = display.get_modal_dialog
        display.set_modal_dialog(self)
      end
      @directory_path = (nil).to_s
      lpbi = BROWSEINFO.new
      lpbi.attr_hwnd_owner = hwnd_owner
      lpbi.attr_lpsz_title = lpsz_title
      lpbi.attr_ul_flags = OS::BIF_NEWDIALOGSTYLE | OS::BIF_RETURNONLYFSDIRS | OS::BIF_EDITBOX | OS::BIF_VALIDATE
      lpbi.attr_lpfn = lpfn
      # Bug in Windows.  On some hardware configurations, SHBrowseForFolder()
      # causes warning dialogs with the message "There is no disk in the drive
      # Please insert a disk into \Device\Harddisk0\DR0".  This is possibly
      # caused by SHBrowseForFolder() calling internally GetVolumeInformation().
      # MSDN for GetVolumeInformation() says:
      # 
      # "If you are attempting to obtain information about a floppy drive
      # that does not have a floppy disk or a CD-ROM drive that does not
      # have a compact disc, the system displays a message box asking the
      # user to insert a floppy disk or a compact disc, respectively.
      # To prevent the system from displaying this message box, call the
      # SetErrorMode function with SEM_FAILCRITICALERRORS."
      # 
      # The fix is to save and restore the error mode using SetErrorMode()
      # with the SEM_FAILCRITICALERRORS flag around SHBrowseForFolder().
      old_error_mode = OS._set_error_mode(OS::SEM_FAILCRITICALERRORS)
      # Bug in Windows.  When a WH_MSGFILTER hook is used to run code
      # during the message loop for SHBrowseForFolder(), running code
      # in the hook can cause a GP.  Specifically, SetWindowText()
      # for static controls seemed to make the problem happen.
      # The fix is to disable async messages while the directory
      # dialog is open.
      # 
      # NOTE:  This only happens in versions of the comctl32.dll
      # earlier than 6.0.
      old_run_messages = display.attr_run_messages
      if (OS::COMCTL32_MAJOR < 6)
        display.attr_run_messages = false
      end
      # long
      lp_item_id_list = OS._shbrowse_for_folder(lpbi)
      if (OS::COMCTL32_MAJOR < 6)
        display.attr_run_messages = old_run_messages
      end
      OS._set_error_mode(old_error_mode)
      # Clear the temporary dialog modal parent
      if (!((self.attr_style & (SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL))).equal?(0))
        display.set_modal_dialog(old_modal)
      end
      success = !(lp_item_id_list).equal?(0)
      if (success)
        # Use the character encoding for the default locale
        buffer = TCHAR.new(0, OS::MAX_PATH)
        if (OS._shget_path_from_idlist(lp_item_id_list, buffer))
          @directory_path = (buffer.to_s(0, buffer.strlen)).to_s
          @filter_path = @directory_path
        end
      end
      # Free the BrowseCallbackProc
      callback.dispose
      # Free the OS memory
      if (!(lpsz_title).equal?(0))
        OS._heap_free(h_heap, 0, lpsz_title)
      end
      # Free the pointer to the ITEMIDLIST
      # long
      # long
      pp_malloc = Array.typed(::Java::Int).new(1) { 0 }
      if ((OS._shget_malloc(pp_malloc)).equal?(OS::S_OK))
        # void Free (struct IMalloc *this, void *pv);
        OS._vtbl_call(5, pp_malloc[0], lp_item_id_list)
      end
      # This code is intentionally commented.  On some
      # platforms, the owner window is repainted right
      # away when a dialog window exits.  This behavior
      # is currently unspecified.
      # 
      # if (hwndOwner != 0) OS.UpdateWindow (hwndOwner);
      # Return the directory path
      if (!success)
        return nil
      end
      return @directory_path
    end
    
    typesig { [String] }
    # Sets the path that the dialog will use to filter
    # the directories it shows to the argument, which may
    # be null. If the string is null, then the operating
    # system's default filter path will be used.
    # <p>
    # Note that the path string is platform dependent.
    # For convenience, either '/' or '\' can be used
    # as a path separator.
    # </p>
    # 
    # @param string the filter path
    def set_filter_path(string)
      @filter_path = string
    end
    
    typesig { [String] }
    # Sets the dialog's message, which is a description of
    # the purpose for which it was opened. This message will be
    # visible on the dialog while it is open.
    # 
    # @param string the message
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    def set_message(string)
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      @message = string
    end
    
    private
    alias_method :initialize__directory_dialog, :initialize
  end
  
end
