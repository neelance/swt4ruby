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
  module MessageBoxImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Carbon
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
      super(parent, check_style(parent, check_style(style)))
      @message = ""
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
    
    typesig { [String] }
    def create_cfstring(id)
      string = SWT.get_message(id)
      buffer = CharArray.new(string.length)
      string.get_chars(0, buffer.attr_length, buffer, 0)
      return OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
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
      alert_type = OS.attr_k_alert_plain_alert
      if (!((self.attr_style & SWT::ICON_ERROR)).equal?(0))
        alert_type = OS.attr_k_alert_stop_alert
      end
      if (!((self.attr_style & SWT::ICON_INFORMATION)).equal?(0))
        alert_type = OS.attr_k_alert_note_alert
      end
      if (!((self.attr_style & SWT::ICON_QUESTION)).equal?(0))
        alert_type = OS.attr_k_alert_note_alert
      end
      if (!((self.attr_style & SWT::ICON_WARNING)).equal?(0))
        alert_type = OS.attr_k_alert_caution_alert
      end
      if (!((self.attr_style & SWT::ICON_WORKING)).equal?(0))
        alert_type = OS.attr_k_alert_note_alert
      end
      error = 0
      explanation = 0
      error_string = self.attr_title
      explanation_string = @message
      if (!(error_string).nil?)
        buffer = CharArray.new(error_string.length)
        error_string.get_chars(0, buffer.attr_length, buffer, 0)
        error = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      end
      if (!(explanation_string).nil?)
        buffer = CharArray.new(explanation_string.length)
        explanation_string.get_chars(0, buffer.attr_length, buffer, 0)
        explanation = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      end
      param = AlertStdCFStringAlertParamRec.new
      param.attr_version = OS.attr_k_std_cfstring_alert_version_one
      param.attr_position = RJava.cast_to_short(OS.attr_k_window_alert_position_parent_window_screen)
      default_str = 0
      cancel_str = 0
      other_str = 0
      mask = (SWT::YES | SWT::NO | SWT::OK | SWT::CANCEL | SWT::ABORT | SWT::RETRY | SWT::IGNORE)
      bits = self.attr_style & mask
      case (bits)
      when SWT::OK
        param.attr_default_button = RJava.cast_to_short(OS.attr_k_alert_std_alert_okbutton)
        param.attr_default_text = OS.attr_k_alert_default_oktext
      when SWT::CANCEL
        param.attr_default_button = RJava.cast_to_short(OS.attr_k_alert_std_alert_okbutton)
        param.attr_default_text = default_str = create_cfstring("SWT_Cancel")
      when SWT::OK | SWT::CANCEL
        param.attr_default_button = RJava.cast_to_short(OS.attr_k_alert_std_alert_okbutton)
        param.attr_default_text = OS.attr_k_alert_default_oktext
        param.attr_cancel_button = RJava.cast_to_short(OS.attr_k_alert_std_alert_cancel_button)
        param.attr_cancel_text = OS.attr_k_alert_default_cancel_text
      when SWT::YES
        param.attr_default_button = RJava.cast_to_short(OS.attr_k_alert_std_alert_okbutton)
        param.attr_default_text = default_str = create_cfstring("SWT_Yes")
      when SWT::NO
        param.attr_cancel_button = RJava.cast_to_short(OS.attr_k_alert_std_alert_okbutton)
        param.attr_cancel_text = default_str = create_cfstring("SWT_No")
      when SWT::YES | SWT::NO
        param.attr_default_button = RJava.cast_to_short(OS.attr_k_alert_std_alert_okbutton)
        param.attr_default_text = default_str = create_cfstring("SWT_Yes")
        param.attr_cancel_button = RJava.cast_to_short(OS.attr_k_alert_std_alert_cancel_button)
        param.attr_cancel_text = cancel_str = create_cfstring("SWT_No")
      when SWT::YES | SWT::NO | SWT::CANCEL
        param.attr_default_button = RJava.cast_to_short(OS.attr_k_alert_std_alert_okbutton)
        param.attr_default_text = default_str = create_cfstring("SWT_Yes")
        param.attr_other_text = cancel_str = create_cfstring("SWT_No")
        param.attr_cancel_button = RJava.cast_to_short(OS.attr_k_alert_std_alert_cancel_button)
        param.attr_cancel_text = OS.attr_k_alert_default_cancel_text
      when SWT::RETRY | SWT::CANCEL
        param.attr_default_button = RJava.cast_to_short(OS.attr_k_alert_std_alert_okbutton)
        param.attr_default_text = default_str = create_cfstring("SWT_Retry")
        param.attr_cancel_button = RJava.cast_to_short(OS.attr_k_alert_std_alert_cancel_button)
        param.attr_cancel_text = OS.attr_k_alert_default_cancel_text
      when SWT::ABORT | SWT::RETRY | SWT::IGNORE
        param.attr_default_button = RJava.cast_to_short(OS.attr_k_alert_std_alert_okbutton)
        param.attr_default_text = default_str = create_cfstring("SWT_Abort")
        param.attr_other_text = cancel_str = create_cfstring("SWT_Retry")
        param.attr_cancel_button = RJava.cast_to_short(OS.attr_k_alert_std_alert_cancel_button)
        param.attr_cancel_text = other_str = create_cfstring("SWT_Ignore")
      end
      dialog_ref = Array.typed(::Java::Int).new(1) { 0 }
      OS._create_standard_alert(RJava.cast_to_short(alert_type), error, explanation, param, dialog_ref)
      if (!(error).equal?(0))
        OS._cfrelease(error)
      end
      if (!(explanation).equal?(0))
        OS._cfrelease(explanation)
      end
      if (!(default_str).equal?(0))
        OS._cfrelease(default_str)
      end
      if (!(cancel_str).equal?(0))
        OS._cfrelease(cancel_str)
      end
      if (!(other_str).equal?(0))
        OS._cfrelease(other_str)
      end
      if (!(dialog_ref[0]).equal?(0))
        # Force a system modal message box to the front
        if (!((self.attr_style & SWT::SYSTEM_MODAL)).equal?(0))
          OS._set_front_process_with_options(Array.typed(::Java::Int).new([0, OS.attr_k_current_process]), OS.attr_k_set_front_process_front_window_only)
        end
        out_item_hit = Array.typed(::Java::Short).new(1) { 0 }
        OS._run_standard_alert(dialog_ref[0], 0, out_item_hit)
        if (!(out_item_hit[0]).equal?(0))
          case (bits)
          when SWT::OK
            return SWT::OK
          when SWT::CANCEL
            return SWT::CANCEL
          when SWT::OK | SWT::CANCEL
            if ((out_item_hit[0]).equal?(OS.attr_k_alert_std_alert_okbutton))
              return SWT::OK
            end
            return SWT::CANCEL
          when SWT::YES
            return SWT::YES
          when SWT::NO
            return SWT::NO
          when SWT::YES | SWT::NO
            if ((out_item_hit[0]).equal?(OS.attr_k_alert_std_alert_okbutton))
              return SWT::YES
            end
            return SWT::NO
          when SWT::YES | SWT::NO | SWT::CANCEL
            if ((out_item_hit[0]).equal?(OS.attr_k_alert_std_alert_okbutton))
              return SWT::YES
            end
            if ((out_item_hit[0]).equal?(OS.attr_k_alert_std_alert_other_button))
              return SWT::NO
            end
            return SWT::CANCEL
          when SWT::RETRY | SWT::CANCEL
            if ((out_item_hit[0]).equal?(OS.attr_k_alert_std_alert_okbutton))
              return SWT::RETRY
            end
            return SWT::CANCEL
          when SWT::ABORT | SWT::RETRY | SWT::IGNORE
            if ((out_item_hit[0]).equal?(OS.attr_k_alert_std_alert_okbutton))
              return SWT::ABORT
            end
            if ((out_item_hit[0]).equal?(OS.attr_k_alert_std_alert_other_button))
              return SWT::RETRY
            end
            return SWT::IGNORE
          end
        end
      end
      return SWT::CANCEL
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
