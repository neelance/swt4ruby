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
  module NSKeyedUnarchiverImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSKeyedUnarchiver < NSKeyedUnarchiverImports.const_get :NSCoder
    include_class_members NSKeyedUnarchiverImports
    
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
      typesig { [NSData] }
      def unarchive_object_with_data(data)
        # long
        result = OS.objc_msg_send(OS.attr_class_nskeyed_unarchiver, OS.attr_sel_unarchive_object_with_data_, !(data).nil? ? data.attr_id : 0)
        return !(result).equal?(0) ? Id.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nskeyed_unarchiver, :initialize
  end
  
end
