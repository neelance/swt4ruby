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
  module NSPopUpButtonImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSPopUpButton < NSPopUpButtonImports.const_get :NSButton
    include_class_members NSPopUpButtonImports
    
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
    def index_of_selected_item
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_index_of_selected_item)
    end
    
    typesig { [NSRect, ::Java::Boolean] }
    def init_with_frame(button_frame, flag)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_frame_pulls_down_, button_frame, flag)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSPopUpButton.new(result) : nil)
    end
    
    typesig { [::Java::Int] }
    # long
    def item_at_index(index)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_item_at_index_, index)
      return !(result).equal?(0) ? NSMenuItem.new(result) : nil
    end
    
    typesig { [::Java::Int] }
    # long
    def item_title_at_index(index)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_item_title_at_index_, index)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [] }
    def menu
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_menu)
      return !(result).equal?(0) ? NSMenu.new(result) : nil
    end
    
    typesig { [] }
    # long
    def number_of_items
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_number_of_items)
    end
    
    typesig { [] }
    def remove_all_items
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_all_items)
    end
    
    typesig { [::Java::Int] }
    # long
    def remove_item_at_index(index)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_item_at_index_, index)
    end
    
    typesig { [NSMenuItem] }
    def select_item(item)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_select_item_, !(item).nil? ? item.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def select_item_at_index(index)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_select_item_at_index_, index)
    end
    
    typesig { [::Java::Boolean] }
    def set_autoenables_items(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_autoenables_items_, flag)
    end
    
    typesig { [::Java::Boolean] }
    def set_pulls_down(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_pulls_down_, flag)
    end
    
    typesig { [] }
    def title_of_selected_item
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_title_of_selected_item)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    class_module.module_eval {
      typesig { [] }
      # long
      def cell_class
        return OS.objc_msg_send(OS.attr_class_nspop_up_button, OS.attr_sel_cell_class)
      end
      
      typesig { [::Java::Int] }
      # long
      def set_cell_class(factory_id)
        OS.objc_msg_send(OS.attr_class_nspop_up_button, OS.attr_sel_set_cell_class_, factory_id)
      end
    }
    
    private
    alias_method :initialize__nspop_up_button, :initialize
  end
  
end
