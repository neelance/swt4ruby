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
  module NSTabViewItemImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSTabViewItem < NSTabViewItemImports.const_get :NSObject
    include_class_members NSTabViewItemImports
    
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
    
    typesig { [Id] }
    def init_with_identifier(identifier)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_identifier_, !(identifier).nil? ? identifier.attr_id : 0)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    typesig { [NSString] }
    def set_label(label)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_label_, !(label).nil? ? label.attr_id : 0)
    end
    
    typesig { [NSView] }
    def set_view(view)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_view_, !(view).nil? ? view.attr_id : 0)
    end
    
    private
    alias_method :initialize__nstab_view_item, :initialize
  end
  
end
