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
  module WebScriptObjectImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class WebScriptObject < WebScriptObjectImports.const_get :NSObject
    include_class_members WebScriptObjectImports
    
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
    
    typesig { [::Java::Int] }
    def web_script_value_at_index(index)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_web_script_value_at_index_, index)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    private
    alias_method :initialize__web_script_object, :initialize
  end
  
end
