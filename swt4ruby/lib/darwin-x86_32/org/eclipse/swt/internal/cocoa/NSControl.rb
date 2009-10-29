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
  module NSControlImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSControl < NSControlImports.const_get :NSView
    include_class_members NSControlImports
    
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
    def abort_editing
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_abort_editing)
    end
    
    typesig { [] }
    # long
    def action
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_action)
    end
    
    typesig { [] }
    def cell
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_cell)
      return !(result).equal?(0) ? NSCell.new(result) : nil
    end
    
    class_module.module_eval {
      typesig { [] }
      # long
      def cell_class
        return OS.objc_msg_send(OS.attr_class_nscontrol, OS.attr_sel_cell_class)
      end
    }
    
    typesig { [] }
    def current_editor
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_current_editor)
      return !(result).equal?(0) ? NSText.new(result) : nil
    end
    
    typesig { [] }
    def double_value
      return OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_double_value)
    end
    
    typesig { [] }
    def font
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_font)
      return !(result).equal?(0) ? NSFont.new(result) : nil
    end
    
    typesig { [] }
    def is_enabled
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_enabled)
    end
    
    typesig { [::Java::Int, Id] }
    # long
    def send_action(the_action, the_target)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_send_action_to_, the_action, !(the_target).nil? ? the_target.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_action(a_selector)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_action_, a_selector)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_alignment(mode)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_alignment_, mode)
    end
    
    typesig { [NSCell] }
    def set_cell(a_cell)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_cell_, !(a_cell).nil? ? a_cell.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      # long
      def set_cell_class(factory_id)
        OS.objc_msg_send(OS.attr_class_nscontrol, OS.attr_sel_set_cell_class_, factory_id)
      end
    }
    
    typesig { [::Java::Double] }
    def set_double_value(a_double)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_double_value_, a_double)
    end
    
    typesig { [::Java::Boolean] }
    def set_enabled(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_enabled_, flag)
    end
    
    typesig { [NSFont] }
    def set_font(font_obj)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_font_, !(font_obj).nil? ? font_obj.attr_id : 0)
    end
    
    typesig { [NSFormatter] }
    def set_formatter(new_formatter)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_formatter_, !(new_formatter).nil? ? new_formatter.attr_id : 0)
    end
    
    typesig { [NSString] }
    def set_string_value(a_string)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_string_value_, !(a_string).nil? ? a_string.attr_id : 0)
    end
    
    typesig { [Id] }
    def set_target(an_object)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_target_, !(an_object).nil? ? an_object.attr_id : 0)
    end
    
    typesig { [] }
    def size_to_fit
      OS.objc_msg_send(self.attr_id, OS.attr_sel_size_to_fit)
    end
    
    typesig { [] }
    def string_value
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_string_value)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [] }
    def target
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_target)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    private
    alias_method :initialize__nscontrol, :initialize
  end
  
end
