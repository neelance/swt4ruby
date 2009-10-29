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
  module NSOutlineViewImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSOutlineView < NSOutlineViewImports.const_get :NSTableView
    include_class_members NSOutlineViewImports
    
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
    def collapse_item(item)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_collapse_item_, !(item).nil? ? item.attr_id : 0)
    end
    
    typesig { [Id, ::Java::Boolean] }
    def collapse_item(item, collapse_children)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_collapse_item_collapse_children_, !(item).nil? ? item.attr_id : 0, collapse_children)
    end
    
    typesig { [Id] }
    def expand_item(item)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_expand_item_, !(item).nil? ? item.attr_id : 0)
    end
    
    typesig { [Id, ::Java::Boolean] }
    def expand_item(item, expand_children)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_expand_item_expand_children_, !(item).nil? ? item.attr_id : 0, expand_children)
    end
    
    typesig { [::Java::Int] }
    # long
    def frame_of_outline_cell_at_row(row)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_frame_of_outline_cell_at_row_, row)
      return result
    end
    
    typesig { [] }
    # double
    def indentation_per_level
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_indentation_per_level)).to_f
    end
    
    typesig { [Id] }
    def is_item_expanded(item)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_item_expanded_, !(item).nil? ? item.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def item_at_row(row)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_item_at_row_, row)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    typesig { [Id] }
    # long
    def level_for_item(item)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_level_for_item_, !(item).nil? ? item.attr_id : 0)
    end
    
    typesig { [] }
    def outline_table_column
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_outline_table_column)
      return !(result).equal?(0) ? NSTableColumn.new(result) : nil
    end
    
    typesig { [Id, ::Java::Boolean] }
    def reload_item(item, reload_children)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_reload_item_reload_children_, !(item).nil? ? item.attr_id : 0, reload_children)
    end
    
    typesig { [Id] }
    # long
    def row_for_item(item)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_row_for_item_, !(item).nil? ? item.attr_id : 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_autoresizes_outline_column(resize)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_autoresizes_outline_column_, resize)
    end
    
    typesig { [::Java::Boolean] }
    def set_autosave_expanded_items(save)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_autosave_expanded_items_, save)
    end
    
    typesig { [Id, ::Java::Int] }
    # long
    def set_drop_item(item, index)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_drop_item_drop_child_index_, !(item).nil? ? item.attr_id : 0, index)
    end
    
    typesig { [NSTableColumn] }
    def set_outline_table_column(outline_table_column)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_outline_table_column_, !(outline_table_column).nil? ? outline_table_column.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [] }
      # long
      def cell_class
        return OS.objc_msg_send(OS.attr_class_nsoutline_view, OS.attr_sel_cell_class)
      end
      
      typesig { [::Java::Int] }
      # long
      def set_cell_class(factory_id)
        OS.objc_msg_send(OS.attr_class_nsoutline_view, OS.attr_sel_set_cell_class_, factory_id)
      end
    }
    
    private
    alias_method :initialize__nsoutline_view, :initialize
  end
  
end
