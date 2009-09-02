require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module NSAlertImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSAlert < NSAlertImports.const_get :NSObject
    include_class_members NSAlertImports
    
    typesig { [] }
    def initialize
      super()
    end
    
    typesig { [::Java::Int] }
    # long
    def initialize(id)
      super(id)
    end
    
    typesig { [Id] }
    def initialize(id)
      super(id)
    end
    
    typesig { [NSString] }
    def add_button_with_title(title)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_add_button_with_title_, !(title).nil? ? title.attr_id : 0)
      return !(result).equal?(0) ? NSButton.new(result) : nil
    end
    
    typesig { [NSWindow, Id, ::Java::Int, ::Java::Int] }
    # long
    # long
    def begin_sheet_modal_for_window(window, delegate, did_end_selector, context_info)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_begin_sheet_modal_for_window_modal_delegate_did_end_selector_context_info_, !(window).nil? ? window.attr_id : 0, !(delegate).nil? ? delegate.attr_id : 0, did_end_selector, context_info)
    end
    
    typesig { [] }
    # long
    def run_modal
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_run_modal)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_alert_style(style)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_alert_style_, style)
    end
    
    typesig { [NSString] }
    def set_message_text(message_text)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_message_text_, !(message_text).nil? ? message_text.attr_id : 0)
    end
    
    typesig { [] }
    def window
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_window)
      return !(result).equal?(0) ? NSWindow.new(result) : nil
    end
    
    private
    alias_method :initialize__nsalert, :initialize
  end
  
end
