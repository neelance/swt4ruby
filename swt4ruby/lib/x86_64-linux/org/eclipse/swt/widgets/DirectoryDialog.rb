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
  module DirectoryDialogImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
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
    
    class_module.module_eval {
      const_set_lazy(:SEPARATOR) { System.get_property("file.separator") }
      const_attr_reader  :SEPARATOR
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
      super(parent, check_style(parent, style))
      @message = ""
      @filter_path = ""
      check_subclass
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
      # int
      shell_handle = self.attr_parent.top_handle
      # int
      handle = OS.gtk_file_chooser_dialog_new(title_bytes, shell_handle, OS::GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER, OS._gtk_stock_cancel, OS::GTK_RESPONSE_CANCEL, OS._gtk_stock_ok, OS::GTK_RESPONSE_OK, 0)
      # int
      pixbufs = OS.gtk_window_get_icon_list(shell_handle)
      if (!(pixbufs).equal?(0))
        OS.gtk_window_set_icon_list(handle, pixbufs)
        OS.g_list_free(pixbufs)
      end
      if (!(@filter_path).nil? && @filter_path.length > 0)
        string_buffer = StringBuffer.new
        # filename must be a full path
        if (!@filter_path.starts_with(SEPARATOR))
          string_buffer.append(SEPARATOR)
        end
        string_buffer.append(@filter_path)
        buffer = Converter.wcs_to_mbcs(nil, string_buffer.to_s, true)
        # Bug in GTK. GtkFileChooser may crash on GTK versions 2.4.10 to 2.6
        # when setting a file name that is not a true canonical path.
        # The fix is to use the canonical path.
        # 
        # int
        ptr = OS.realpath(buffer, nil)
        if (!(ptr).equal?(0))
          OS.gtk_file_chooser_set_current_folder(handle, ptr)
          OS.g_free(ptr)
        end
      end
      if (@message.length > 0)
        buffer = Converter.wcs_to_mbcs(nil, @message, true)
        # int
        box = OS.gtk_hbox_new(false, 0)
        if ((box).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        # int
        label = OS.gtk_label_new(buffer)
        if ((label).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_container_add(box, label)
        OS.gtk_widget_show(label)
        OS.gtk_label_set_line_wrap(label, true)
        OS.gtk_label_set_justify(label, OS::GTK_JUSTIFY_CENTER)
        OS.gtk_file_chooser_set_extra_widget(handle, box)
      end
      answer = nil
      display = !(self.attr_parent).nil? ? self.attr_parent.get_display : Display.get_current
      display.add_idle_proc
      old_modal = nil
      if (OS.gtk_window_get_modal(handle))
        old_modal = display.get_modal_dialog
        display.set_modal_dialog(self)
      end
      signal_id = 0
      # int
      hook_id = 0
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        signal_id = OS.g_signal_lookup(OS.attr_map, OS._gtk_type_widget)
        hook_id = OS.g_signal_add_emission_hook(signal_id, 0, display.attr_emission_proc, handle, 0)
      end
      response = OS.gtk_dialog_run(handle)
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        OS.g_signal_remove_emission_hook(signal_id, hook_id)
      end
      if (OS.gtk_window_get_modal(handle))
        display.set_modal_dialog(old_modal)
      end
      if ((response).equal?(OS::GTK_RESPONSE_OK))
        # int
        path = OS.gtk_file_chooser_get_filename(handle)
        if (!(path).equal?(0))
          # int
          utf8ptr = OS.g_filename_to_utf8(path, -1, nil, nil, nil)
          OS.g_free(path)
          if (!(utf8ptr).equal?(0))
            # int
            # int
            items_written = Array.typed(::Java::Long).new(1) { 0 }
            # int
            utf16ptr = OS.g_utf8_to_utf16(utf8ptr, -1, nil, items_written, nil)
            OS.g_free(utf8ptr)
            if (!(utf16ptr).equal?(0))
              # 64
              clength = RJava.cast_to_int(items_written[0])
              chars = CharArray.new(clength)
              OS.memmove(chars, utf16ptr, clength * 2)
              OS.g_free(utf16ptr)
              answer = RJava.cast_to_string(String.new(chars))
              @filter_path = answer
            end
          end
        end
      end
      display.remove_idle_proc
      OS.gtk_widget_destroy(handle)
      return answer
    end
    
    typesig { [] }
    def open_classic_dialog
      title_bytes = Converter.wcs_to_mbcs(nil, self.attr_title, true)
      # int
      handle = OS.gtk_file_selection_new(title_bytes)
      if (!(self.attr_parent).nil?)
        # int
        shell_handle = self.attr_parent.top_handle
        OS.gtk_window_set_transient_for(handle, shell_handle)
        # int
        pixbufs = OS.gtk_window_get_icon_list(shell_handle)
        if (!(pixbufs).equal?(0))
          OS.gtk_window_set_icon_list(handle, pixbufs)
          OS.g_list_free(pixbufs)
        end
      end
      answer = nil
      if (!(@filter_path).nil?)
        path = @filter_path
        if (path.length > 0 && !path.ends_with(SEPARATOR))
          path += SEPARATOR
        end
        length_ = path.length
        buffer = CharArray.new(length_ + 1)
        path.get_chars(0, length_, buffer, 0)
        # int
        utf8ptr = OS.g_utf16_to_utf8(buffer, -1, nil, nil, nil)
        # int
        file_name_ptr = OS.g_filename_from_utf8(utf8ptr, -1, nil, nil, nil)
        OS.gtk_file_selection_set_filename(handle, file_name_ptr)
        OS.g_free(utf8ptr)
        OS.g_free(file_name_ptr)
      end
      selection = GtkFileSelection.new
      OS.memmove(selection, handle)
      OS.gtk_file_selection_hide_fileop_buttons(handle)
      # int
      file_list_parent = OS.gtk_widget_get_parent(selection.attr_file_list)
      OS.gtk_widget_hide(selection.attr_file_list)
      OS.gtk_widget_hide(file_list_parent)
      if (@message.length > 0)
        buffer = Converter.wcs_to_mbcs(nil, @message, true)
        # int
        label_handle = OS.gtk_label_new(buffer)
        OS.gtk_label_set_line_wrap(label_handle, true)
        OS.gtk_misc_set_alignment(label_handle, 0.0, 0.0)
        OS.gtk_container_add(selection.attr_main_vbox, label_handle)
        OS.gtk_box_set_child_packing(selection.attr_main_vbox, label_handle, false, false, 0, OS::GTK_PACK_START)
        OS.gtk_widget_show(label_handle)
      end
      display = !(self.attr_parent).nil? ? self.attr_parent.get_display : Display.get_current
      display.add_idle_proc
      old_modal = nil
      if (OS.gtk_window_get_modal(handle))
        old_modal = display.get_modal_dialog
        display.set_modal_dialog(self)
      end
      signal_id = 0
      # int
      hook_id = 0
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        signal_id = OS.g_signal_lookup(OS.attr_map, OS._gtk_type_widget)
        hook_id = OS.g_signal_add_emission_hook(signal_id, 0, display.attr_emission_proc, handle, 0)
      end
      response = OS.gtk_dialog_run(handle)
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        OS.g_signal_remove_emission_hook(signal_id, hook_id)
      end
      if (OS.gtk_window_get_modal(handle))
        display.set_modal_dialog(old_modal)
      end
      if ((response).equal?(OS::GTK_RESPONSE_OK))
        # int
        file_name_ptr = OS.gtk_file_selection_get_filename(handle)
        # int
        utf8ptr = OS.g_filename_to_utf8(file_name_ptr, -1, nil, nil, nil)
        if (!(utf8ptr).equal?(0))
          # int
          # int
          items_written = Array.typed(::Java::Long).new(1) { 0 }
          # int
          utf16ptr = OS.g_utf8_to_utf16(utf8ptr, -1, nil, items_written, nil)
          if (!(utf16ptr).equal?(0))
            # 64
            length_ = RJava.cast_to_int(items_written[0])
            buffer = CharArray.new(length_)
            OS.memmove(buffer, utf16ptr, length_ * 2)
            os_answer = String.new(buffer)
            if (!(os_answer).nil?)
              # remove trailing separator, unless root directory
              if (!(os_answer == SEPARATOR) && os_answer.ends_with(SEPARATOR))
                os_answer = RJava.cast_to_string(os_answer.substring(0, os_answer.length - 1))
              end
              answer = RJava.cast_to_string(@filter_path = os_answer)
            end
            OS.g_free(utf16ptr)
          end
          OS.g_free(utf8ptr)
        end
      end
      display.remove_idle_proc
      OS.gtk_widget_destroy(handle)
      return answer
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
