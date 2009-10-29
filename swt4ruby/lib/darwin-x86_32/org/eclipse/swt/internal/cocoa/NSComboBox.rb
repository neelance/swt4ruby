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
  module NSComboBoxImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSComboBox < NSComboBoxImports.const_get :NSTextField
    include_class_members NSComboBoxImports
    
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
    def add_item_with_object_value(object)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_item_with_object_value_, !(object).nil? ? object.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def deselect_item_at_index(index)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_deselect_item_at_index_, index)
    end
    
    typesig { [] }
    # long
    def index_of_selected_item
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_index_of_selected_item)
    end
    
    typesig { [Id, ::Java::Int] }
    # long
    def insert_item_with_object_value(object, index)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_insert_item_with_object_value_at_index_, !(object).nil? ? object.attr_id : 0, index)
    end
    
    typesig { [::Java::Int] }
    # long
    def item_object_value_at_index(index)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_item_object_value_at_index_, index)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    typesig { [] }
    # long
    def number_of_items
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_number_of_items)
    end
    
    typesig { [] }
    # long
    def number_of_visible_items
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_number_of_visible_items)
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
    
    typesig { [::Java::Int] }
    # long
    def select_item_at_index(index)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_select_item_at_index_, index)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_number_of_visible_items(visible_items)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_number_of_visible_items_, visible_items)
    end
    
    class_module.module_eval {
      typesig { [] }
      # long
      def cell_class
        return OS.objc_msg_send(OS.attr_class_nscombo_box, OS.attr_sel_cell_class)
      end
      
      typesig { [::Java::Int] }
      # long
      def set_cell_class(factory_id)
        OS.objc_msg_send(OS.attr_class_nscombo_box, OS.attr_sel_set_cell_class_, factory_id)
      end
    }
    
    private
    alias_method :initialize__nscombo_box, :initialize
  end
  
end
