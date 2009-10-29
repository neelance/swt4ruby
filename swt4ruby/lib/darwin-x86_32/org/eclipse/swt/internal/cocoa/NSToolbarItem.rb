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
  module NSToolbarItemImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSToolbarItem < NSToolbarItemImports.const_get :NSObject
    include_class_members NSToolbarItemImports
    
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
    def init_with_item_identifier(item_identifier)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_item_identifier_, !(item_identifier).nil? ? item_identifier.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSToolbarItem.new(result) : nil)
    end
    
    typesig { [] }
    def item_identifier
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_item_identifier)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [::Java::Int] }
    # long
    def set_action(action)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_action_, action)
    end
    
    typesig { [::Java::Boolean] }
    def set_enabled(enabled)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_enabled_, enabled)
    end
    
    typesig { [NSImage] }
    def set_image(image)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_image_, !(image).nil? ? image.attr_id : 0)
    end
    
    typesig { [NSString] }
    def set_label(label)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_label_, !(label).nil? ? label.attr_id : 0)
    end
    
    typesig { [NSSize] }
    def set_max_size(size)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_max_size_, size)
    end
    
    typesig { [NSSize] }
    def set_min_size(size)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_min_size_, size)
    end
    
    typesig { [NSString] }
    def set_palette_label(palette_label)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_palette_label_, !(palette_label).nil? ? palette_label.attr_id : 0)
    end
    
    typesig { [Id] }
    def set_target(target)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_target_, !(target).nil? ? target.attr_id : 0)
    end
    
    typesig { [NSString] }
    def set_tool_tip(tool_tip)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_tool_tip_, !(tool_tip).nil? ? tool_tip.attr_id : 0)
    end
    
    typesig { [NSView] }
    def set_view(view)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_view_, !(view).nil? ? view.attr_id : 0)
    end
    
    private
    alias_method :initialize__nstoolbar_item, :initialize
  end
  
end
