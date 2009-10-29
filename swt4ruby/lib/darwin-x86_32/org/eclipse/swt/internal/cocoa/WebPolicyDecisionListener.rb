require "rjava"

# Copyright (c) 2007, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module WebPolicyDecisionListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class WebPolicyDecisionListener < WebPolicyDecisionListenerImports.const_get :NSObject
    include_class_members WebPolicyDecisionListenerImports
    
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
    def download
      OS.objc_msg_send(self.attr_id, OS.attr_sel_download)
    end
    
    typesig { [] }
    def use
      OS.objc_msg_send(self.attr_id, OS.attr_sel_use)
    end
    
    typesig { [] }
    def ignore
      OS.objc_msg_send(self.attr_id, OS.attr_sel_ignore)
    end
    
    private
    alias_method :initialize__web_policy_decision_listener, :initialize
  end
  
end
