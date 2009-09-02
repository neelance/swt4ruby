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
  module NSStatusItemImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSStatusItem < NSStatusItemImports.const_get :NSObject
    include_class_members NSStatusItemImports
    
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
    
    typesig { [NSRect, ::Java::Boolean] }
    def draw_status_bar_background_in_rect(rect, highlight)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_draw_status_bar_background_in_rect_with_highlight_, rect, highlight)
    end
    
    typesig { [NSMenu] }
    def pop_up_status_item_menu(menu)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_pop_up_status_item_menu_, !(menu).nil? ? menu.attr_id : 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_highlight_mode(highlight_mode)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_highlight_mode_, highlight_mode)
    end
    
    typesig { [::Java::Float] }
    # double
    def set_length(length)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_length_, length)
    end
    
    typesig { [NSView] }
    def set_view(view)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_view_, !(view).nil? ? view.attr_id : 0)
    end
    
    private
    alias_method :initialize__nsstatus_item, :initialize
  end
  
end
