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
  module NSTabViewImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSTabView < NSTabViewImports.const_get :NSView
    include_class_members NSTabViewImports
    
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
    
    typesig { [NSTabViewItem] }
    def add_tab_view_item(tab_view_item)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_tab_view_item_, !(tab_view_item).nil? ? tab_view_item.attr_id : 0)
    end
    
    typesig { [] }
    def content_rect
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_content_rect)
      return result
    end
    
    typesig { [NSTabViewItem, ::Java::Int] }
    # long
    def insert_tab_view_item(tab_view_item, index)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_insert_tab_view_item_at_index_, !(tab_view_item).nil? ? tab_view_item.attr_id : 0, index)
    end
    
    typesig { [] }
    def minimum_size
      result = NSSize.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_minimum_size)
      return result
    end
    
    typesig { [NSTabViewItem] }
    def remove_tab_view_item(tab_view_item)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_tab_view_item_, !(tab_view_item).nil? ? tab_view_item.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def select_tab_view_item_at_index(index)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_select_tab_view_item_at_index_, index)
    end
    
    typesig { [] }
    def selected_tab_view_item
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_selected_tab_view_item)
      return !(result).equal?(0) ? NSTabViewItem.new(result) : nil
    end
    
    typesig { [::Java::Int] }
    # long
    def set_control_size(control_size)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_control_size_, control_size)
    end
    
    typesig { [Id] }
    def set_delegate(an_object)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_delegate_, !(an_object).nil? ? an_object.attr_id : 0)
    end
    
    typesig { [NSFont] }
    def set_font(font)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_font_, !(font).nil? ? font.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_tab_view_type(tab_view_type)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_tab_view_type_, tab_view_type)
    end
    
    typesig { [NSPoint] }
    def tab_view_item_at_point(point)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_tab_view_item_at_point_, point)
      return !(result).equal?(0) ? NSTabViewItem.new(result) : nil
    end
    
    private
    alias_method :initialize__nstab_view, :initialize
  end
  
end
