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
  module NSToolbarImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSToolbar < NSToolbarImports.const_get :NSObject
    include_class_members NSToolbarImports
    
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
    
    typesig { [NSString] }
    def init_with_identifier(identifier)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_identifier_, !(identifier).nil? ? identifier.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSToolbar.new(result) : nil)
    end
    
    typesig { [NSString, ::Java::Int] }
    # long
    def insert_item_with_item_identifier(item_identifier, index)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_insert_item_with_item_identifier_at_index_, !(item_identifier).nil? ? item_identifier.attr_id : 0, index)
    end
    
    typesig { [::Java::Int] }
    # long
    def remove_item_at_index(index)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_item_at_index_, index)
    end
    
    typesig { [::Java::Boolean] }
    def set_allows_user_customization(allow_customization)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_allows_user_customization_, allow_customization)
    end
    
    typesig { [Id] }
    def set_delegate(delegate)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_delegate_, !(delegate).nil? ? delegate.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_display_mode(display_mode)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_display_mode_, display_mode)
    end
    
    typesig { [::Java::Boolean] }
    def set_visible(shown)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_visible_, shown)
    end
    
    private
    alias_method :initialize__nstoolbar, :initialize
  end
  
end
