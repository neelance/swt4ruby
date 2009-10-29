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
  module NSMutableParagraphStyleImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSMutableParagraphStyle < NSMutableParagraphStyleImports.const_get :NSParagraphStyle
    include_class_members NSMutableParagraphStyleImports
    
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
    
    typesig { [NSTextTab] }
    def add_tab_stop(an_object)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_tab_stop_, !(an_object).nil? ? an_object.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_alignment(alignment)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_alignment_, alignment)
    end
    
    typesig { [::Java::Float] }
    # double
    def set_default_tab_interval(a_float)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_default_tab_interval_, a_float)
    end
    
    typesig { [::Java::Float] }
    # double
    def set_first_line_head_indent(a_float)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_first_line_head_indent_, a_float)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_line_break_mode(mode)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_line_break_mode_, mode)
    end
    
    typesig { [::Java::Float] }
    # double
    def set_line_spacing(a_float)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_line_spacing_, a_float)
    end
    
    typesig { [NSArray] }
    def set_tab_stops(array)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_tab_stops_, !(array).nil? ? array.attr_id : 0)
    end
    
    private
    alias_method :initialize__nsmutable_paragraph_style, :initialize
  end
  
end
