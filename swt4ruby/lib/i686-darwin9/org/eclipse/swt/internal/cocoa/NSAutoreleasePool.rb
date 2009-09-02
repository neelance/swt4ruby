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
  module NSAutoreleasePoolImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSAutoreleasePool < NSAutoreleasePoolImports.const_get :NSObject
    include_class_members NSAutoreleasePoolImports
    
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
      typesig { [::Java::Boolean] }
      def enable_freed_object_check(enable)
        OS.objc_msg_send(OS.attr_class_nsautorelease_pool, OS.attr_sel_enable_freed_object_check_, enable)
      end
    }
    
    private
    alias_method :initialize__nsautorelease_pool, :initialize
  end
  
end
