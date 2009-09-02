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
  module NSStatusBarImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSStatusBar < NSStatusBarImports.const_get :NSObject
    include_class_members NSStatusBarImports
    
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
    
    typesig { [NSStatusItem] }
    def remove_status_item(item)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_status_item_, !(item).nil? ? item.attr_id : 0)
    end
    
    typesig { [::Java::Float] }
    # double
    def status_item_with_length(length)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_status_item_with_length_, length)
      return !(result).equal?(0) ? NSStatusItem.new(result) : nil
    end
    
    class_module.module_eval {
      typesig { [] }
      def system_status_bar
        # long
        result = OS.objc_msg_send(OS.attr_class_nsstatus_bar, OS.attr_sel_system_status_bar)
        return !(result).equal?(0) ? NSStatusBar.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nsstatus_bar, :initialize
  end
  
end
