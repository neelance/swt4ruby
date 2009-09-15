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
  module MessageBoxImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
  # @noextend This class is not intended to be subclassed by clients.
  class MessageBox < MessageBoxImports.const_get :Dialog
    include_class_members MessageBoxImports
    
    attr_accessor :message
    alias_method :attr_message, :message
    undef_method :message
    alias_method :attr_message=, :message=
    undef_method :message=
    
    attr_accessor :return_code
    alias_method :attr_return_code, :return_code
    undef_method :return_code
    alias_method :attr_return_code=, :return_code=
    undef_method :return_code=
    
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
    # 
    # @see SWT#ICON_ERROR
    # @see SWT#ICON_INFORMATION
    # @see SWT#ICON_QUESTION
    # @see SWT#ICON_WARNING
    # @see SWT#ICON_WORKING
    # @see SWT#OK
    # @see SWT#CANCEL
    # @see SWT#YES
    # @see SWT#NO
    # @see SWT#ABORT
    # @see SWT#RETRY
    # @see SWT#IGNORE
    def initialize(parent, style)
      @message = nil
      @return_code = 0
      super(parent, check_style(parent, check_style(style)))
      @message = ""
      if (Display.get_sheet_enabled)
        if (!(parent).nil? && !((style & SWT::SHEET)).equal?(0))
          self.attr_style |= SWT::SHEET
        end
      end
      check_subclass
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
    
    typesig { [] }
    # Returns the dialog's message, or an empty string if it does not have one.
    # The message is a description of the purpose for which the dialog was opened.
    # This message will be visible in the dialog while it is open.
    # 
    # @return the message
    def get_message
      return @message
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
      alert = NSAlert.new.alloc.init
      alert_type = OS::NSInformationalAlertStyle
      if (!((self.attr_style & SWT::ICON_ERROR)).equal?(0))
        alert_type = OS::NSCriticalAlertStyle
      end
      if (!((self.attr_style & SWT::ICON_INFORMATION)).equal?(0))
        alert_type = OS::NSInformationalAlertStyle
      end
      if (!((self.attr_style & SWT::ICON_QUESTION)).equal?(0))
        alert_type = OS::NSInformationalAlertStyle
      end
      if (!((self.attr_style & SWT::ICON_WARNING)).equal?(0))
        alert_type = OS::NSWarningAlertStyle
      end
      if (!((self.attr_style & SWT::ICON_WORKING)).equal?(0))
        alert_type = OS::NSInformationalAlertStyle
      end
      alert.set_alert_style(alert_type)
      mask = (SWT::YES | SWT::NO | SWT::OK | SWT::CANCEL | SWT::ABORT | SWT::RETRY | SWT::IGNORE)
      bits = self.attr_style & mask
      title = nil
      case (bits)
      when SWT::OK
        title = NSString.string_with(SWT.get_message("SWT_OK"))
        alert.add_button_with_title(title)
      when SWT::CANCEL
        title = NSString.string_with(SWT.get_message("SWT_Cancel"))
        alert.add_button_with_title(title)
      when SWT::OK | SWT::CANCEL
        title = NSString.string_with(SWT.get_message("SWT_OK"))
        alert.add_button_with_title(title)
        title = NSString.string_with(SWT.get_message("SWT_Cancel"))
        alert.add_button_with_title(title)
      when SWT::YES
        title = NSString.string_with(SWT.get_message("SWT_Yes"))
        alert.add_button_with_title(title)
      when SWT::NO
        title = NSString.string_with(SWT.get_message("SWT_No"))
        alert.add_button_with_title(title)
      when SWT::YES | SWT::NO
        title = NSString.string_with(SWT.get_message("SWT_Yes"))
        alert.add_button_with_title(title)
        title = NSString.string_with(SWT.get_message("SWT_No"))
        alert.add_button_with_title(title)
        # no.setKeyEquivalent(NSString.stringWith("\033"));
      when SWT::YES | SWT::NO | SWT::CANCEL
        title = NSString.string_with(SWT.get_message("SWT_Yes"))
        alert.add_button_with_title(title)
        title = NSString.string_with(SWT.get_message("SWT_Cancel"))
        alert.add_button_with_title(title)
        title = NSString.string_with(SWT.get_message("SWT_No"))
        alert.add_button_with_title(title)
      when SWT::RETRY | SWT::CANCEL
        title = NSString.string_with(SWT.get_message("SWT_Retry"))
        alert.add_button_with_title(title)
        title = NSString.string_with(SWT.get_message("SWT_Cancel"))
        alert.add_button_with_title(title)
      when SWT::ABORT | SWT::RETRY | SWT::IGNORE
        title = NSString.string_with(SWT.get_message("SWT_Abort"))
        alert.add_button_with_title(title)
        title = NSString.string_with(SWT.get_message("SWT_Ignore"))
        alert.add_button_with_title(title)
        title = NSString.string_with(SWT.get_message("SWT_Retry"))
        alert.add_button_with_title(title)
      end
      title = NSString.string_with(!(self.attr_title).nil? ? self.attr_title : "")
      alert.window___org_eclipse_swt_widgets_message_box_1.set_title(title)
      message = NSString.string_with(!(@message).nil? ? @message : "")
      alert.set_message_text(message)
      response = 0
      # long
      jni_ref = 0
      delegate = nil
      if (!((self.attr_style & SWT::SHEET)).equal?(0))
        delegate = SWTPanelDelegate.new.alloc.init
        jni_ref = OS._new_global_ref(self)
        if ((jni_ref).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        OS.object_set_instance_variable(delegate.attr_id, Display::SWT_OBJECT, jni_ref)
        alert.begin_sheet_modal_for_window(self.attr_parent.attr_window, delegate, OS.attr_sel_panel_did_end_return_code_context_info_, 0)
        if (!((self.attr_style & SWT::APPLICATION_MODAL)).equal?(0))
          # 64
          response = RJava.cast_to_int(alert.run_modal)
        else
          @return_code = 0
          window = alert.window___org_eclipse_swt_widgets_message_box_3
          application = NSApplication.shared_application
          while (window.is_visible)
            application.run___org_eclipse_swt_widgets_message_box_5
          end
          response = @return_code
        end
      else
        # 64
        response = RJava.cast_to_int(alert.run_modal)
      end
      if (!(delegate).nil?)
        delegate.release
      end
      if (!(jni_ref).equal?(0))
        OS._delete_global_ref(jni_ref)
      end
      alert.release
      case (bits)
      when SWT::OK
        case (response)
        when OS::NSAlertFirstButtonReturn
          return SWT::OK
        end
      when SWT::CANCEL
        case (response)
        when OS::NSAlertFirstButtonReturn
          return SWT::CANCEL
        end
      when SWT::OK | SWT::CANCEL
        case (response)
        when OS::NSAlertFirstButtonReturn
          return SWT::OK
        when OS::NSAlertSecondButtonReturn
          return SWT::CANCEL
        end
      when SWT::YES
        case (response)
        when OS::NSAlertFirstButtonReturn
          return SWT::YES
        end
      when SWT::NO
        case (response)
        when OS::NSAlertFirstButtonReturn
          return SWT::NO
        end
      when SWT::YES | SWT::NO
        case (response)
        when OS::NSAlertFirstButtonReturn
          return SWT::YES
        when OS::NSAlertSecondButtonReturn
          return SWT::NO
        end
      when SWT::YES | SWT::NO | SWT::CANCEL
        case (response)
        when OS::NSAlertFirstButtonReturn
          return SWT::YES
        when OS::NSAlertSecondButtonReturn
          return SWT::CANCEL
        when OS::NSAlertThirdButtonReturn
          return SWT::NO
        end
      when SWT::RETRY | SWT::CANCEL
        case (response)
        when OS::NSAlertFirstButtonReturn
          return SWT::RETRY
        when OS::NSAlertSecondButtonReturn
          return SWT::CANCEL
        end
      when SWT::ABORT | SWT::RETRY | SWT::IGNORE
        case (response)
        when OS::NSAlertFirstButtonReturn
          return SWT::ABORT
        when OS::NSAlertSecondButtonReturn
          return SWT::IGNORE
        when OS::NSAlertThirdButtonReturn
          return SWT::RETRY
        end
      end
      return SWT::CANCEL
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def panel_did_end_return_code_context_info(id, sel, alert, return_code, context_info)
      # 64
      @return_code = RJava.cast_to_int(return_code)
      application = NSApplication.shared_application
      application.end_sheet(NSAlert.new(alert).window___org_eclipse_swt_widgets_message_box_6, return_code)
      if (!((self.attr_style & SWT::PRIMARY_MODAL)).equal?(0))
        application.stop(nil)
      end
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
    alias_method :initialize__message_box, :initialize
  end
  
end
