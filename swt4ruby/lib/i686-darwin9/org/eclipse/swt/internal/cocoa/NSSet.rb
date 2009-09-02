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
  module NSSetImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSSet < NSSetImports.const_get :NSObject
    include_class_members NSSetImports
    
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
    # long
    def count
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_count)
    end
    
    typesig { [] }
    def object_enumerator
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_object_enumerator)
      return !(result).equal?(0) ? NSEnumerator.new(result) : nil
    end
    
    class_module.module_eval {
      typesig { [] }
      def set
        # long
        result = OS.objc_msg_send(OS.attr_class_nsset, OS.attr_sel_set)
        return !(result).equal?(0) ? NSSet.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nsset, :initialize
  end
  
end
