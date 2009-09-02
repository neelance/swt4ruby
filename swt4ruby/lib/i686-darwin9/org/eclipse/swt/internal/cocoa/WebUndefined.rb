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
  module WebUndefinedImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class WebUndefined < WebUndefinedImports.const_get :NSObject
    include_class_members WebUndefinedImports
    
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
      def undefined
        # long
        result = OS.objc_msg_send(OS.attr_class_web_undefined, OS.attr_sel_undefined)
        return !(result).equal?(0) ? WebUndefined.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__web_undefined, :initialize
  end
  
end
