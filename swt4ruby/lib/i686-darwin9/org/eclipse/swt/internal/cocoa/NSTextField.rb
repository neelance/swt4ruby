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
  module NSTextFieldImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSTextField < NSTextFieldImports.const_get :NSControl
    include_class_members NSTextFieldImports
    
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
    def select_text(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_select_text_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [NSColor] }
    def set_background_color(color)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_background_color_, !(color).nil? ? color.attr_id : 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_bordered(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_bordered_, flag)
    end
    
    typesig { [Id] }
    def set_delegate(an_object)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_delegate_, !(an_object).nil? ? an_object.attr_id : 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_draws_background(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_draws_background_, flag)
    end
    
    typesig { [::Java::Boolean] }
    def set_editable(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_editable_, flag)
    end
    
    typesig { [::Java::Boolean] }
    def set_selectable(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_selectable_, flag)
    end
    
    typesig { [NSColor] }
    def set_text_color(color)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_text_color_, !(color).nil? ? color.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [] }
      # long
      def cell_class
        return OS.objc_msg_send(OS.attr_class_nstext_field, OS.attr_sel_cell_class)
      end
      
      typesig { [::Java::Int] }
      # long
      def set_cell_class(factory_id)
        OS.objc_msg_send(OS.attr_class_nstext_field, OS.attr_sel_set_cell_class_, factory_id)
      end
    }
    
    private
    alias_method :initialize__nstext_field, :initialize
  end
  
end
