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
  module NSPrintOperationImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSPrintOperation < NSPrintOperationImports.const_get :NSObject
    include_class_members NSPrintOperationImports
    
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
    def clean_up_operation
      OS.objc_msg_send(self.attr_id, OS.attr_sel_clean_up_operation)
    end
    
    typesig { [] }
    def context
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_context)
      return !(result).equal?(0) ? NSGraphicsContext.new(result) : nil
    end
    
    typesig { [] }
    def create_context
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_create_context)
      return !(result).equal?(0) ? NSGraphicsContext.new(result) : nil
    end
    
    typesig { [] }
    def deliver_result
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_deliver_result)
    end
    
    typesig { [] }
    def destroy_context
      OS.objc_msg_send(self.attr_id, OS.attr_sel_destroy_context)
    end
    
    class_module.module_eval {
      typesig { [NSView, NSPrintInfo] }
      def print_operation_with_view(view, print_info)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsprint_operation, OS.attr_sel_print_operation_with_view_print_info_, !(view).nil? ? view.attr_id : 0, !(print_info).nil? ? print_info.attr_id : 0)
        return !(result).equal?(0) ? NSPrintOperation.new(result) : nil
      end
    }
    
    typesig { [] }
    def run_operation
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_run_operation)
    end
    
    class_module.module_eval {
      typesig { [NSPrintOperation] }
      def set_current_operation(operation)
        OS.objc_msg_send(OS.attr_class_nsprint_operation, OS.attr_sel_set_current_operation_, !(operation).nil? ? operation.attr_id : 0)
      end
    }
    
    typesig { [NSString] }
    def set_job_title(job_title)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_job_title_, !(job_title).nil? ? job_title.attr_id : 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_shows_print_panel(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_shows_print_panel_, flag)
    end
    
    typesig { [::Java::Boolean] }
    def set_shows_progress_panel(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_shows_progress_panel_, flag)
    end
    
    private
    alias_method :initialize__nsprint_operation, :initialize
  end
  
end
