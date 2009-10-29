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
  module NSActionCellImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSActionCell < NSActionCellImports.const_get :NSCell
    include_class_members NSActionCellImports
    
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
    def action
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_action)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_action(a_selector)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_action_, a_selector)
    end
    
    typesig { [Id] }
    def set_target(an_object)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_target_, !(an_object).nil? ? an_object.attr_id : 0)
    end
    
    typesig { [] }
    def target
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_target)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    private
    alias_method :initialize__nsaction_cell, :initialize
  end
  
end
