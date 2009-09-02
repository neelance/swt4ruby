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
  module NSMenuImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSMenu < NSMenuImports.const_get :NSObject
    include_class_members NSMenuImports
    
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
    
    typesig { [NSMenuItem] }
    def add_item(new_item)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_item_, !(new_item).nil? ? new_item.attr_id : 0)
    end
    
    typesig { [NSString, ::Java::Int, NSString] }
    # long
    def add_item_with_title(a_string, a_selector, char_code)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_add_item_with_title_action_key_equivalent_, !(a_string).nil? ? a_string.attr_id : 0, a_selector, !(char_code).nil? ? char_code.attr_id : 0)
      return !(result).equal?(0) ? NSMenuItem.new(result) : nil
    end
    
    typesig { [] }
    def cancel_tracking
      OS.objc_msg_send(self.attr_id, OS.attr_sel_cancel_tracking)
    end
    
    typesig { [Id, ::Java::Int] }
    # long
    # long
    def index_of_item_with_target(target, action_selector)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_index_of_item_with_target_and_action_, !(target).nil? ? target.attr_id : 0, action_selector)
    end
    
    typesig { [NSString] }
    def init_with_title(a_title)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_title_, !(a_title).nil? ? a_title.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSMenu.new(result) : nil)
    end
    
    typesig { [NSMenuItem, ::Java::Int] }
    # long
    def insert_item(new_item, index)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_insert_item_at_index_, !(new_item).nil? ? new_item.attr_id : 0, index)
    end
    
    typesig { [] }
    def item_array
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_item_array)
      return !(result).equal?(0) ? NSArray.new(result) : nil
    end
    
    typesig { [::Java::Int] }
    # long
    def item_at_index(index)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_item_at_index_, index)
      return !(result).equal?(0) ? NSMenuItem.new(result) : nil
    end
    
    typesig { [] }
    # long
    def number_of_items
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_number_of_items)
    end
    
    class_module.module_eval {
      typesig { [NSMenu, NSEvent, NSView] }
      def pop_up_context_menu(menu, event, view)
        OS.objc_msg_send(OS.attr_class_nsmenu, OS.attr_sel_pop_up_context_menu_with_event_for_view_, !(menu).nil? ? menu.attr_id : 0, !(event).nil? ? event.attr_id : 0, !(view).nil? ? view.attr_id : 0)
      end
    }
    
    typesig { [NSMenuItem] }
    def remove_item(item)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_item_, !(item).nil? ? item.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def remove_item_at_index(index)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_item_at_index_, index)
    end
    
    typesig { [::Java::Boolean] }
    def set_autoenables_items(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_autoenables_items_, flag)
    end
    
    typesig { [Id] }
    def set_delegate(an_object)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_delegate_, !(an_object).nil? ? an_object.attr_id : 0)
    end
    
    typesig { [NSMenu, NSMenuItem] }
    def set_submenu(a_menu, an_item)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_submenu_for_item_, !(a_menu).nil? ? a_menu.attr_id : 0, !(an_item).nil? ? an_item.attr_id : 0)
    end
    
    typesig { [NSString] }
    def set_title(a_string)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_title_, !(a_string).nil? ? a_string.attr_id : 0)
    end
    
    private
    alias_method :initialize__nsmenu, :initialize
  end
  
end
