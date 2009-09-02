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
  module NSMenuItemImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSMenuItem < NSMenuItemImports.const_get :NSObject
    include_class_members NSMenuItemImports
    
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
    
    typesig { [NSString, ::Java::Int, NSString] }
    # long
    def init_with_title(a_string, a_selector, char_code)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_title_action_key_equivalent_, !(a_string).nil? ? a_string.attr_id : 0, a_selector, !(char_code).nil? ? char_code.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSMenuItem.new(result) : nil)
    end
    
    typesig { [] }
    def is_hidden
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_hidden)
    end
    
    typesig { [] }
    def key_equivalent
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_key_equivalent)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [] }
    # long
    def key_equivalent_modifier_mask
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_key_equivalent_modifier_mask)
    end
    
    class_module.module_eval {
      typesig { [] }
      def separator_item
        # long
        result = OS.objc_msg_send(OS.attr_class_nsmenu_item, OS.attr_sel_separator_item)
        return !(result).equal?(0) ? NSMenuItem.new(result) : nil
      end
    }
    
    typesig { [::Java::Int] }
    # long
    def set_action(a_selector)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_action_, a_selector)
    end
    
    typesig { [::Java::Boolean] }
    def set_enabled(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_enabled_, flag)
    end
    
    typesig { [::Java::Boolean] }
    def set_hidden(hidden)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_hidden_, hidden)
    end
    
    typesig { [NSImage] }
    def set_image(menu_image)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_image_, !(menu_image).nil? ? menu_image.attr_id : 0)
    end
    
    typesig { [NSString] }
    def set_key_equivalent(a_key_equivalent)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_key_equivalent_, !(a_key_equivalent).nil? ? a_key_equivalent.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_key_equivalent_modifier_mask(mask)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_key_equivalent_modifier_mask_, mask)
    end
    
    typesig { [NSMenu] }
    def set_menu(menu)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_menu_, !(menu).nil? ? menu.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_state(state)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_state_, state)
    end
    
    typesig { [NSMenu] }
    def set_submenu(submenu)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_submenu_, !(submenu).nil? ? submenu.attr_id : 0)
    end
    
    typesig { [Id] }
    def set_target(an_object)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_target_, !(an_object).nil? ? an_object.attr_id : 0)
    end
    
    typesig { [NSString] }
    def set_title(a_string)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_title_, !(a_string).nil? ? a_string.attr_id : 0)
    end
    
    typesig { [] }
    # long
    def state
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_state)
    end
    
    typesig { [] }
    def submenu
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_submenu)
      return !(result).equal?(0) ? NSMenu.new(result) : nil
    end
    
    typesig { [] }
    def title
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_title)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    private
    alias_method :initialize__nsmenu_item, :initialize
  end
  
end
