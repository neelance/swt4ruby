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
  module NSMutableAttributedStringImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSMutableAttributedString < NSMutableAttributedStringImports.const_get :NSAttributedString
    include_class_members NSMutableAttributedStringImports
    
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
    
    typesig { [NSAttributedString] }
    def append_attributed_string(attr_string)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_append_attributed_string_, !(attr_string).nil? ? attr_string.attr_id : 0)
    end
    
    typesig { [] }
    def mutable_string
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_mutable_string)
      return !(result).equal?(0) ? NSMutableString.new(result) : nil
    end
    
    typesig { [NSRange, NSString] }
    def replace_characters_in_range(range, str)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_replace_characters_in_range_with_string_, range, !(str).nil? ? str.attr_id : 0)
    end
    
    typesig { [NSString, Id, NSRange] }
    def add_attribute(name, value, range)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_attribute_value_range_, !(name).nil? ? name.attr_id : 0, !(value).nil? ? value.attr_id : 0, range)
    end
    
    typesig { [] }
    def begin_editing
      OS.objc_msg_send(self.attr_id, OS.attr_sel_begin_editing)
    end
    
    typesig { [] }
    def end_editing
      OS.objc_msg_send(self.attr_id, OS.attr_sel_end_editing)
    end
    
    typesig { [NSString, NSRange] }
    def remove_attribute(name, range)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_attribute_range_, !(name).nil? ? name.attr_id : 0, range)
    end
    
    typesig { [NSAttributedString] }
    def set_attributed_string(attr_string)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_attributed_string_, !(attr_string).nil? ? attr_string.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [NSTextAttachment] }
      def attributed_string_with_attachment(attachment)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsmutable_attributed_string, OS.attr_sel_attributed_string_with_attachment_, !(attachment).nil? ? attachment.attr_id : 0)
        return !(result).equal?(0) ? NSAttributedString.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nsmutable_attributed_string, :initialize
  end
  
end
