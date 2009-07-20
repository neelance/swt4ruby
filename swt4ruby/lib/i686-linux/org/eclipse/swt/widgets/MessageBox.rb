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
  module MessageBoxImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  # Instances of this class are used to inform or warn the user.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>ICON_ERROR, ICON_INFORMATION, ICON_QUESTION, ICON_WARNING, ICON_WORKING</dd>
  # <dd>OK, OK | CANCEL</dd>
  # <dd>YES | NO, YES | NO | CANCEL</dd>
  # <dd>RETRY | CANCEL</dd>
  # <dd>ABORT | RETRY | IGNORE</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles ICON_ERROR, ICON_INFORMATION, ICON_QUESTION,
  # ICON_WARNING and ICON_WORKING may be specified.
  # </p><p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample, Dialog tab</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class MessageBox < MessageBoxImports.const_get :Dialog
    include_class_members MessageBoxImports
    
    attr_accessor :message
    alias_method :attr_message, :message
    undef_method :message
    alias_method :attr_message=, :message=
    undef_method :message=
    
    # long
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
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
      initialize__message_box(parent, SWT::OK | SWT::ICON_INFORMATION | SWT::APPLICATION_MODAL)
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
      @handle = 0
      super(parent, check_style(parent, check_style(style)))
      @message = ""
      check_subclass
    end
    
    typesig { [] }
    # Returns the dialog's message, or an empty string if it does not have one.
    # The message is a description of the purpose for which the dialog was opened.
    # This message will be visible in the dialog while it is open.
    # 
    # @return the message
    def get_message
      return @message
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
    
    typesig { [] }
    # Makes the dialog visible and brings it to the front
    # of the display.
    # 
    # @return the ID of the button that was selected to dismiss the
    # message box (e.g. SWT.OK, SWT.CANCEL, etc.)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the dialog has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the dialog</li>
    # </ul>
    def open
      # long
      parent_handle = (!(self.attr_parent).nil?) ? self.attr_parent.top_handle : 0
      dialog_flags = OS::GTK_DIALOG_DESTROY_WITH_PARENT
      if (!((self.attr_style & (SWT::PRIMARY_MODAL | SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL))).equal?(0))
        dialog_flags |= OS::GTK_DIALOG_MODAL
      end
      message_type = OS::GTK_MESSAGE_INFO
      if (!((self.attr_style & (SWT::ICON_WARNING))).equal?(0))
        message_type = OS::GTK_MESSAGE_WARNING
      end
      if (!((self.attr_style & (SWT::ICON_QUESTION))).equal?(0))
        message_type = OS::GTK_MESSAGE_QUESTION
      end
      if (!((self.attr_style & (SWT::ICON_ERROR))).equal?(0))
        message_type = OS::GTK_MESSAGE_ERROR
      end
      buffer = Converter.wcs_to_mbcs(nil, fix_percent(@message), true)
      @handle = OS.gtk_message_dialog_new(parent_handle, dialog_flags, message_type, 0, buffer)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      if (!(parent_handle).equal?(0))
        # long
        pixbufs = OS.gtk_window_get_icon_list(parent_handle)
        if (!(pixbufs).equal?(0))
          OS.gtk_window_set_icon_list(@handle, pixbufs)
          OS.g_list_free(pixbufs)
        end
      end
      create_buttons
      buffer = Converter.wcs_to_mbcs(nil, self.attr_title, true)
      OS.gtk_window_set_title(@handle, buffer)
      display = !(self.attr_parent).nil? ? self.attr_parent.get_display : Display.get_current
      display.add_idle_proc
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
      display.remove_idle_proc
      OS.gtk_widget_destroy(@handle)
      return response
    end
    
    typesig { [] }
    def create_buttons
      if (!((self.attr_style & SWT::OK)).equal?(0))
        OS.gtk_dialog_add_button(@handle, Converter.wcs_to_mbcs(nil, "gtk-ok", true), SWT::OK)
      end
      if (!((self.attr_style & SWT::CANCEL)).equal?(0))
        OS.gtk_dialog_add_button(@handle, Converter.wcs_to_mbcs(nil, "gtk-cancel", true), SWT::CANCEL)
      end
      if (!((self.attr_style & SWT::YES)).equal?(0))
        OS.gtk_dialog_add_button(@handle, Converter.wcs_to_mbcs(nil, "gtk-yes", true), SWT::YES)
      end
      if (!((self.attr_style & SWT::NO)).equal?(0))
        OS.gtk_dialog_add_button(@handle, Converter.wcs_to_mbcs(nil, "gtk-no", true), SWT::NO)
      end
      if (!((self.attr_style & SWT::ABORT)).equal?(0))
        OS.gtk_dialog_add_button(@handle, Converter.wcs_to_mbcs(nil, SWT.get_message("SWT_Abort"), true), SWT::ABORT)
      end
      if (!((self.attr_style & SWT::RETRY)).equal?(0))
        OS.gtk_dialog_add_button(@handle, Converter.wcs_to_mbcs(nil, SWT.get_message("SWT_Retry"), true), SWT::RETRY)
      end
      if (!((self.attr_style & SWT::IGNORE)).equal?(0))
        OS.gtk_dialog_add_button(@handle, Converter.wcs_to_mbcs(nil, SWT.get_message("SWT_Ignore"), true), SWT::IGNORE)
      end
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        mask = (SWT::YES | SWT::NO | SWT::OK | SWT::CANCEL | SWT::ABORT | SWT::RETRY | SWT::IGNORE)
        bits = style & mask
        if ((bits).equal?(SWT::OK) || (bits).equal?(SWT::CANCEL) || (bits).equal?((SWT::OK | SWT::CANCEL)))
          return style
        end
        if ((bits).equal?(SWT::YES) || (bits).equal?(SWT::NO) || (bits).equal?((SWT::YES | SWT::NO)) || (bits).equal?((SWT::YES | SWT::NO | SWT::CANCEL)))
          return style
        end
        if ((bits).equal?((SWT::RETRY | SWT::CANCEL)) || (bits).equal?((SWT::ABORT | SWT::RETRY | SWT::IGNORE)))
          return style
        end
        style = (style & ~mask) | SWT::OK
        return style
      end
    }
    
    typesig { [String] }
    def fix_percent(string)
      length_ = string.length
      text = CharArray.new(length_)
      string.get_chars(0, length_, text, 0)
      i = 0
      j = 0
      result = CharArray.new(length_ * 2)
      while (i < length_)
        case (text[i])
        when Character.new(?%.ord)
          result[((j += 1) - 1)] = Character.new(?%.ord)
        end
        result[((j += 1) - 1)] = text[((i += 1) - 1)]
      end
      return result
    end
    
    private
    alias_method :initialize__message_box, :initialize
  end
  
end
