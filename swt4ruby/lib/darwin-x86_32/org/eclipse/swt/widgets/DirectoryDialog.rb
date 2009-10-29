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
  module DirectoryDialogImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
  # @noextend This class is not intended to be subclassed by clients.
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
      if (Display.get_sheet_enabled)
        if (!(parent).nil? && !((style & SWT::SHEET)).equal?(0))
          self.attr_style |= SWT::SHEET
        end
      end
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
      panel = NSOpenPanel.open_panel
      panel.set_can_create_directories(true)
      panel.set_allows_multiple_selection(!((self.attr_style & SWT::MULTI)).equal?(0))
      panel.set_title(NSString.string_with(!(self.attr_title).nil? ? self.attr_title : ""))
      panel.set_message(NSString.string_with(!(@message).nil? ? @message : ""))
      panel.set_can_choose_files(false)
      panel.set_can_choose_directories(true)
      application = NSApplication.shared_application
      if (!(self.attr_parent).nil? && !((self.attr_style & SWT::SHEET)).equal?(0))
        application.begin_sheet(panel, self.attr_parent.attr_window, nil, 0, 0)
      end
      dir = !(@filter_path).nil? ? NSString.string_with(@filter_path) : nil
      # long
      response = panel.run_modal_for_directory(dir, nil)
      if (!(self.attr_parent).nil? && !((self.attr_style & SWT::SHEET)).equal?(0))
        application.end_sheet(panel, 0)
      end
      if ((response).equal?(OS::NSFileHandlingPanelOKButton))
        filename_ = panel.filename
        directory_path = RJava.cast_to_string(@filter_path = RJava.cast_to_string(filename_.get_string))
      end
      # options.optionFlags = OS.kNavSupportPackages | OS.kNavAllowOpenPackages | OS.kNavAllowInvisibleFiles;
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
