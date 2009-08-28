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
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
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
      # Compute the MessageBox style
      button_bits = 0
      if (((self.attr_style & SWT::OK)).equal?(SWT::OK))
        button_bits = OS::MB_OK
      end
      if (((self.attr_style & (SWT::OK | SWT::CANCEL))).equal?((SWT::OK | SWT::CANCEL)))
        button_bits = OS::MB_OKCANCEL
      end
      if (((self.attr_style & (SWT::YES | SWT::NO))).equal?((SWT::YES | SWT::NO)))
        button_bits = OS::MB_YESNO
      end
      if (((self.attr_style & (SWT::YES | SWT::NO | SWT::CANCEL))).equal?((SWT::YES | SWT::NO | SWT::CANCEL)))
        button_bits = OS::MB_YESNOCANCEL
      end
      if (((self.attr_style & (SWT::RETRY | SWT::CANCEL))).equal?((SWT::RETRY | SWT::CANCEL)))
        button_bits = OS::MB_RETRYCANCEL
      end
      if (((self.attr_style & (SWT::ABORT | SWT::RETRY | SWT::IGNORE))).equal?((SWT::ABORT | SWT::RETRY | SWT::IGNORE)))
        button_bits = OS::MB_ABORTRETRYIGNORE
      end
      if ((button_bits).equal?(0))
        button_bits = OS::MB_OK
      end
      icon_bits = 0
      if (!((self.attr_style & SWT::ICON_ERROR)).equal?(0))
        icon_bits = OS::MB_ICONERROR
      end
      if (!((self.attr_style & SWT::ICON_INFORMATION)).equal?(0))
        icon_bits = OS::MB_ICONINFORMATION
      end
      if (!((self.attr_style & SWT::ICON_QUESTION)).equal?(0))
        icon_bits = OS::MB_ICONQUESTION
      end
      if (!((self.attr_style & SWT::ICON_WARNING)).equal?(0))
        icon_bits = OS::MB_ICONWARNING
      end
      if (!((self.attr_style & SWT::ICON_WORKING)).equal?(0))
        icon_bits = OS::MB_ICONINFORMATION
      end
      # Only MB_APPLMODAL is supported on WinCE
      modal_bits = 0
      if (OS::IsWinCE)
        if (!((self.attr_style & (SWT::PRIMARY_MODAL | SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL))).equal?(0))
          modal_bits = OS::MB_APPLMODAL
        end
      else
        if (!((self.attr_style & SWT::PRIMARY_MODAL)).equal?(0))
          modal_bits = OS::MB_APPLMODAL
        end
        if (!((self.attr_style & SWT::APPLICATION_MODAL)).equal?(0))
          modal_bits = OS::MB_TASKMODAL
        end
        if (!((self.attr_style & SWT::SYSTEM_MODAL)).equal?(0))
          modal_bits = OS::MB_SYSTEMMODAL
        end
      end
      bits = button_bits | icon_bits | modal_bits
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        bits |= OS::MB_RTLREADING
      end
      if (((self.attr_style & (SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT))).equal?(0))
        if (!(self.attr_parent).nil? && !((self.attr_parent.attr_style & SWT::MIRRORED)).equal?(0))
          bits |= OS::MB_RTLREADING
        end
      end
      # Feature in Windows.  System modal is not supported
      # on Windows 95 and NT.  The fix is to convert system
      # modal to task modal.
      if (!((bits & OS::MB_SYSTEMMODAL)).equal?(0))
        bits |= OS::MB_TASKMODAL
        bits &= ~OS::MB_SYSTEMMODAL
        # Force a system modal message box to the front
        bits |= OS::MB_TOPMOST
      end
      # Feature in Windows.  In order for MB_TASKMODAL to work,
      # the parent HWND of the MessageBox () call must be NULL.
      # If the parent is not NULL, MB_TASKMODAL behaves the
      # same as MB_APPLMODAL.  The fix to set the parent HWND
      # anyway and not rely on MB_MODAL to work by making the
      # parent be temporarily modal.
      # 
      # long
      hwnd_owner = !(self.attr_parent).nil? ? self.attr_parent.attr_handle : 0
      old_modal = nil
      display = nil
      if (!((bits & OS::MB_TASKMODAL)).equal?(0))
        display = self.attr_parent.get_display
        old_modal = display.get_modal_dialog
        display.set_modal_dialog(self)
      end
      # Open the message box
      # Use the character encoding for the default locale
      buffer1 = TCHAR.new(0, @message, true)
      buffer2 = TCHAR.new(0, self.attr_title, true)
      code = OS._message_box(hwnd_owner, buffer1, buffer2, bits)
      # Clear the temporarily dialog modal parent
      if (!((bits & OS::MB_TASKMODAL)).equal?(0))
        display.set_modal_dialog(old_modal)
      end
      # This code is intentionally commented.  On some
      # platforms, the owner window is repainted right
      # away when a dialog window exits.  This behavior
      # is currently unspecified.
      # 
      # if (hwndOwner != 0) OS.UpdateWindow (hwndOwner);
      # Compute and return the result
      if (!(code).equal?(0))
        type = bits & 0xf
        if ((type).equal?(OS::MB_OK))
          return SWT::OK
        end
        if ((type).equal?(OS::MB_OKCANCEL))
          return ((code).equal?(OS::IDOK)) ? SWT::OK : SWT::CANCEL
        end
        if ((type).equal?(OS::MB_YESNO))
          return ((code).equal?(OS::IDYES)) ? SWT::YES : SWT::NO
        end
        if ((type).equal?(OS::MB_YESNOCANCEL))
          if ((code).equal?(OS::IDYES))
            return SWT::YES
          end
          if ((code).equal?(OS::IDNO))
            return SWT::NO
          end
          return SWT::CANCEL
        end
        if ((type).equal?(OS::MB_RETRYCANCEL))
          return ((code).equal?(OS::IDRETRY)) ? SWT::RETRY : SWT::CANCEL
        end
        if ((type).equal?(OS::MB_ABORTRETRYIGNORE))
          if ((code).equal?(OS::IDRETRY))
            return SWT::RETRY
          end
          if ((code).equal?(OS::IDABORT))
            return SWT::ABORT
          end
          return SWT::IGNORE
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
