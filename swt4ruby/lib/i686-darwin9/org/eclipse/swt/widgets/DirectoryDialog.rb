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
      include ::Org::Eclipse::Swt::Internal::Carbon
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
      directory_path = nil
      title_ptr = 0
      message_ptr = 0
      if (!(self.attr_title).nil?)
        buffer = CharArray.new(self.attr_title.length)
        self.attr_title.get_chars(0, buffer.attr_length, buffer, 0)
        title_ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      end
      buffer = CharArray.new(@message.length)
      @message.get_chars(0, buffer.attr_length, buffer, 0)
      message_ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      options = NavDialogCreationOptions.new
      options.attr_parent_window = OS._get_control_owner(self.attr_parent.attr_handle)
      # NEEDS WORK - no title displayed
      options.attr_window_title = options.attr_client_name = title_ptr
      options.attr_option_flags = OS.attr_k_nav_support_packages | OS.attr_k_nav_allow_open_packages | OS.attr_k_nav_allow_invisible_files
      options.attr_message = message_ptr
      options.attr_location_h = -1
      options.attr_location_v = -1
      out_dialog = Array.typed(::Java::Int).new(1) { 0 }
      # NEEDS WORK - use inFilterProc to handle filtering
      if ((OS._nav_create_choose_folder_dialog(options, 0, 0, 0, out_dialog)).equal?(OS.attr_no_err))
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
        OS._nav_dialog_run(out_dialog[0])
        if ((OS._nav_dialog_get_user_action(out_dialog[0])).equal?(OS.attr_k_nav_user_action_choose))
          record = NavReplyRecord.new
          OS._nav_dialog_get_reply(out_dialog[0], record)
          selection = AEDesc.new
          selection.attr_descriptor_type = record.attr_selection_descriptor_type
          selection.attr_data_handle = record.attr_selection_data_handle
          count = Array.typed(::Java::Int).new(1) { 0 }
          OS._aecount_items(selection, count)
          if (count[0] > 0)
            the_aekeyword = Array.typed(::Java::Int).new(1) { 0 }
            type_code = Array.typed(::Java::Int).new(1) { 0 }
            maximum_size = 80 # size of FSRef
            data_ptr = OS._new_ptr(maximum_size)
            actual_size = Array.typed(::Java::Int).new(1) { 0 }
            status = OS._aeget_nth_ptr(selection, 1, OS.attr_type_fsref, the_aekeyword, type_code, data_ptr, maximum_size, actual_size)
            if ((status).equal?(OS.attr_no_err) && (type_code[0]).equal?(OS.attr_type_fsref))
              fs_ref = Array.typed(::Java::Byte).new(actual_size[0]) { 0 }
              OS.memmove(fs_ref, data_ptr, actual_size[0])
              dir_url = OS._cfurlcreate_from_fsref(OS.attr_k_cfallocator_default, fs_ref)
              dir_string = OS._cfurlcopy_file_system_path(dir_url, OS.attr_k_cfurlposixpath_style)
              OS._cfrelease(dir_url)
              length_ = OS._cfstring_get_length(dir_string)
              buffer = CharArray.new(length_)
              range = CFRange.new
              range.attr_length = length_
              OS._cfstring_get_characters(dir_string, range, buffer)
              OS._cfrelease(dir_string)
              @filter_path = RJava.cast_to_string(directory_path = RJava.cast_to_string(String.new(buffer)))
            end
            OS._dispose_ptr(data_ptr)
          end
        end
      end
      if (!(title_ptr).equal?(0))
        OS._cfrelease(title_ptr)
      end
      if (!(message_ptr).equal?(0))
        OS._cfrelease(message_ptr)
      end
      if (!(out_dialog[0]).equal?(0))
        OS._nav_dialog_dispose(out_dialog[0])
      end
      return directory_path
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
    
    private
    alias_method :initialize__directory_dialog, :initialize
  end
  
end
