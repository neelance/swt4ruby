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
  module NSPrinterImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSPrinter < NSPrinterImports.const_get :NSObject
    include_class_members NSPrinterImports
    
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
    def name
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_name)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    class_module.module_eval {
      typesig { [] }
      def printer_names
        # long
        result = OS.objc_msg_send(OS.attr_class_nsprinter, OS.attr_sel_printer_names)
        return !(result).equal?(0) ? NSArray.new(result) : nil
      end
      
      typesig { [NSString] }
      def printer_with_name(name)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsprinter, OS.attr_sel_printer_with_name_, !(name).nil? ? name.attr_id : 0)
        return !(result).equal?(0) ? NSPrinter.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nsprinter, :initialize
  end
  
end
