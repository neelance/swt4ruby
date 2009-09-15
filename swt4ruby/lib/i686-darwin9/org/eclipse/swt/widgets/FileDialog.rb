require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module FileDialogImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
  # @noextend This class is not intended to be subclassed by clients.
  class FileDialog < FileDialogImports.const_get :Dialog
    include_class_members FileDialogImports
    
    attr_accessor :panel
    alias_method :attr_panel, :panel
    undef_method :panel
    alias_method :attr_panel=, :panel=
    undef_method :panel=
    
    attr_accessor :popup
    alias_method :attr_popup, :popup
    undef_method :popup
    alias_method :attr_popup=, :popup=
    undef_method :popup=
    
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
    # 
    # @see SWT#SAVE
    # @see SWT#OPEN
    # @see SWT#MULTI
    def initialize(parent, style)
      @panel = nil
      @popup = nil
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
      @filter_index = -1
      @overwrite = false
      if (Display.get_sheet_enabled)
        if (!(parent).nil? && !((style & SWT::SHEET)).equal?(0))
          self.attr_style |= SWT::SHEET
        end
      end
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
      # long
      method = 0
      # long
      method_impl = 0
      callback = nil
      if (!((self.attr_style & SWT::SAVE)).equal?(0))
        save_panel_ = NSSavePanel.save_panel
        @panel = save_panel_
        if (!@overwrite)
          callback = Callback.new(self, "_overwriteExistingFileCheck", 3)
          # long
          proc = callback.get_address
          if ((proc).equal?(0))
            error(SWT::ERROR_NO_MORE_CALLBACKS)
          end
          method = OS.class_get_instance_method(OS.attr_class_nssave_panel, OS.attr_sel_overwrite_existing_file_check)
          if (!(method).equal?(0))
            method_impl = OS.method_set_implementation(method, proc)
          end
        end
      else
        open_panel_ = NSOpenPanel.open_panel
        open_panel_.set_allows_multiple_selection(!((self.attr_style & SWT::MULTI)).equal?(0))
        @panel = open_panel_
      end
      @panel.set_can_create_directories(true)
      # long
      jni_ref = 0
      delegate = nil
      if (!(@filter_extensions).nil? && !(@filter_extensions.attr_length).equal?(0))
        delegate = SWTPanelDelegate.new.alloc.init
        jni_ref = OS._new_global_ref(self)
        if ((jni_ref).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        OS.object_set_instance_variable(delegate.attr_id, Display::SWT_OBJECT, jni_ref)
        @panel.set_delegate(delegate)
        widget = NSPopUpButton.new.alloc
        widget.init_with_frame(NSRect.new, false)
        widget.set_target(delegate)
        widget.set_action(OS.attr_sel_send_selection_)
        menu_ = widget.menu
        menu_.set_autoenables_items(false)
        i = 0
        while i < @filter_extensions.attr_length
          str = @filter_extensions[i]
          if (!(@filter_names).nil? && @filter_names.attr_length > i)
            str = RJava.cast_to_string(@filter_names[i])
          end
          ns_item = NSMenuItem.new.alloc
          ns_item.init_with_title(NSString.string_with(str), 0, NSString.string_with(""))
          menu_.add_item(ns_item)
          ns_item.release
          i += 1
        end
        widget.select_item_at_index(0 <= @filter_index && @filter_index < @filter_extensions.attr_length ? @filter_index : 0)
        widget.size_to_fit
        @panel.set_accessory_view(widget)
        @popup = widget
      end
      @panel.set_title(NSString.string_with(!(self.attr_title).nil? ? self.attr_title : ""))
      application = NSApplication.shared_application
      if (!(self.attr_parent).nil? && !((self.attr_style & SWT::SHEET)).equal?(0))
        application.begin_sheet(@panel, self.attr_parent.attr_window, nil, 0, 0)
      end
      dir = !(@filter_path).nil? ? NSString.string_with(@filter_path) : nil
      file = !(@file_name).nil? ? NSString.string_with(@file_name) : nil
      # long
      response = @panel.run_modal_for_directory(dir, file)
      if (!(self.attr_parent).nil? && !((self.attr_style & SWT::SHEET)).equal?(0))
        application.end_sheet(@panel, 0)
      end
      if (!@overwrite)
        if (!(method).equal?(0))
          OS.method_set_implementation(method, method_impl)
        end
        if (!(callback).nil?)
          callback.dispose
        end
      end
      if ((response).equal?(OS::NSFileHandlingPanelOKButton))
        filename_ = @panel.filename
        full_path = RJava.cast_to_string(filename_.get_string)
        if (((self.attr_style & SWT::SAVE)).equal?(0))
          filenames = (@panel).filenames
          # 64
          count_ = RJava.cast_to_int(filenames.count)
          @file_names = Array.typed(String).new(count_) { nil }
          i = 0
          while i < count_
            filename_ = NSString.new(filenames.object_at_index(i))
            filename_only = filename_.last_path_component
            path_only = filename_.string_by_deleting_last_path_component
            if ((i).equal?(0))
              # Filter path
              @filter_path = RJava.cast_to_string(path_only.get_string)
              # File name
              @file_name = RJava.cast_to_string(@file_names[0] = filename_only.get_string)
            else
              if ((path_only.get_string == @filter_path))
                @file_names[i] = filename_only.get_string
              else
                @file_names[i] = filename_.get_string
              end
            end
            i += 1
          end
        end
        @filter_index = -1
      end
      if (!(@popup).nil?)
        # 64
        @filter_index = RJava.cast_to_int(@popup.index_of_selected_item)
        @panel.set_accessory_view(nil)
        @popup.release
        @popup = nil
      end
      if (!(delegate).nil?)
        @panel.set_delegate(nil)
        delegate.release
      end
      if (!(jni_ref).equal?(0))
        OS._delete_global_ref(jni_ref)
      end
      @panel = nil
      return full_path
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def __overwrite_existing_file_check(id, sel, str)
      return 1
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def panel_should_show_filename(id, sel, arg0, arg1)
      path = NSString.new(arg1)
      if (!(@filter_extensions).nil? && !(@filter_extensions.attr_length).equal?(0))
        manager = NSFileManager.default_manager
        # long
        ptr = OS.malloc(1)
        found = manager.file_exists_at_path(path, ptr)
        is_directory = Array.typed(::Java::Byte).new(1) { 0 }
        OS.memmove___org_eclipse_swt_widgets_file_dialog_1(is_directory, ptr, 1)
        OS.free(ptr)
        if (found)
          if (!(is_directory[0]).equal?(0))
            return 1
          else
            ext = path.path_extension
            if (!(ext).nil?)
              # 64
              filter_index = RJava.cast_to_int(@popup.index_of_selected_item)
              extension = ext.get_string
              extensions = @filter_extensions[filter_index]
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
            end
            return 0
          end
        end
      end
      return 1
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def send_selection(id, sel, arg)
      @panel.validate_visible_columns
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
