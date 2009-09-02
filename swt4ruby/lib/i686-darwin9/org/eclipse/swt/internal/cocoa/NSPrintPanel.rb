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
  module NSPrintPanelImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSPrintPanel < NSPrintPanelImports.const_get :NSObject
    include_class_members NSPrintPanelImports
    
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
    
    typesig { [NSPrintInfo, NSWindow, Id, ::Java::Int, ::Java::Int] }
    # long
    # long
    def begin_sheet_with_print_info(print_info, doc_window, delegate, did_end_selector, context_info)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_begin_sheet_with_print_info_modal_for_window_delegate_did_end_selector_context_info_, !(print_info).nil? ? print_info.attr_id : 0, !(doc_window).nil? ? doc_window.attr_id : 0, !(delegate).nil? ? delegate.attr_id : 0, did_end_selector, context_info)
    end
    
    typesig { [] }
    # long
    def options
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_options)
    end
    
    class_module.module_eval {
      typesig { [] }
      def print_panel
        # long
        result = OS.objc_msg_send(OS.attr_class_nsprint_panel, OS.attr_sel_print_panel)
        return !(result).equal?(0) ? NSPrintPanel.new(result) : nil
      end
    }
    
    typesig { [NSPrintInfo] }
    # long
    def run_modal_with_print_info(print_info)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_run_modal_with_print_info_, !(print_info).nil? ? print_info.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_options(options)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_options_, options)
    end
    
    private
    alias_method :initialize__nsprint_panel, :initialize
  end
  
end
