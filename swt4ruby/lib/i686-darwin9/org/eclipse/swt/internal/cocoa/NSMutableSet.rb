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
  module NSMutableSetImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSMutableSet < NSMutableSetImports.const_get :NSSet
    include_class_members NSMutableSetImports
    
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
    
    typesig { [NSArray] }
    def add_objects_from_array(array)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_objects_from_array_, !(array).nil? ? array.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [] }
      def set
        # long
        result = OS.objc_msg_send(OS.attr_class_nsmutable_set, OS.attr_sel_set)
        return !(result).equal?(0) ? NSMutableSet.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nsmutable_set, :initialize
  end
  
end
