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
  module WebFrameViewImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class WebFrameView < WebFrameViewImports.const_get :NSObject
    include_class_members WebFrameViewImports
    
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
    
    typesig { [] }
    def document_view_should_handle_print
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_document_view_should_handle_print)
    end
    
    typesig { [] }
    def print_document_view
      OS.objc_msg_send(self.attr_id, OS.attr_sel_print_document_view)
    end
    
    typesig { [NSPrintInfo] }
    def print_operation_with_print_info(print_info)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_print_operation_with_print_info_, !(print_info).nil? ? print_info.attr_id : 0)
      return !(result).equal?(0) ? NSPrintOperation.new(result) : nil
    end
    
    private
    alias_method :initialize__web_frame_view, :initialize
  end
  
end
