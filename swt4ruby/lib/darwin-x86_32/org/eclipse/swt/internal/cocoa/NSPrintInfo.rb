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
  module NSPrintInfoImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSPrintInfo < NSPrintInfoImports.const_get :NSObject
    include_class_members NSPrintInfoImports
    
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
    
    class_module.module_eval {
      typesig { [] }
      def default_printer
        # long
        result = OS.objc_msg_send(OS.attr_class_nsprint_info, OS.attr_sel_default_printer)
        return !(result).equal?(0) ? NSPrinter.new(result) : nil
      end
    }
    
    typesig { [] }
    def dictionary
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_dictionary)
      return !(result).equal?(0) ? NSMutableDictionary.new(result) : nil
    end
    
    typesig { [] }
    def imageable_page_bounds
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_imageable_page_bounds)
      return result
    end
    
    typesig { [NSDictionary] }
    def init_with_dictionary(attributes)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_dictionary_, !(attributes).nil? ? attributes.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSPrintInfo.new(result) : nil)
    end
    
    typesig { [] }
    def job_disposition
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_job_disposition)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [] }
    # long
    def orientation
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_orientation)
    end
    
    typesig { [] }
    def paper_size
      result = NSSize.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_paper_size)
      return result
    end
    
    typesig { [] }
    def printer
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_printer)
      return !(result).equal?(0) ? NSPrinter.new(result) : nil
    end
    
    typesig { [NSString] }
    def set_job_disposition(disposition)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_job_disposition_, !(disposition).nil? ? disposition.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_orientation(orientation)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_orientation_, orientation)
    end
    
    typesig { [NSPrinter] }
    def set_printer(printer)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_printer_, !(printer).nil? ? printer.attr_id : 0)
    end
    
    typesig { [] }
    def set_up_print_operation_default_values
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_up_print_operation_default_values)
    end
    
    class_module.module_eval {
      typesig { [] }
      def shared_print_info
        # long
        result = OS.objc_msg_send(OS.attr_class_nsprint_info, OS.attr_sel_shared_print_info)
        return !(result).equal?(0) ? NSPrintInfo.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nsprint_info, :initialize
  end
  
end
