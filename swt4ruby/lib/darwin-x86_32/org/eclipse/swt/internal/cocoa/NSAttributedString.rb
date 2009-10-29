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
  module NSAttributedStringImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSAttributedString < NSAttributedStringImports.const_get :NSObject
    include_class_members NSAttributedStringImports
    
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
    
    class_module.module_eval {
      typesig { [NSTextAttachment] }
      def attributed_string_with_attachment(attachment)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsattributed_string, OS.attr_sel_attributed_string_with_attachment_, !(attachment).nil? ? attachment.attr_id : 0)
        return !(result).equal?(0) ? NSAttributedString.new(result) : nil
      end
    }
    
    typesig { [::Java::Int, ::Java::Int, NSRange] }
    # long
    # long
    def attributes_at_index(location, range, range_limit)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_attributes_at_index_longest_effective_range_in_range_, location, range, range_limit)
      return !(result).equal?(0) ? NSDictionary.new(result) : nil
    end
    
    typesig { [::Java::Int] }
    # long
    def double_click_at_index(location)
      result = NSRange.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_double_click_at_index_, location)
      return result
    end
    
    typesig { [NSPoint] }
    def draw_at_point(point)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_draw_at_point_, point)
    end
    
    typesig { [NSRect] }
    def draw_in_rect(rect)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_draw_in_rect_, rect)
    end
    
    typesig { [NSString, NSDictionary] }
    def init_with_string(str, attrs)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_string_attributes_, !(str).nil? ? str.attr_id : 0, !(attrs).nil? ? attrs.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSAttributedString.new(result) : nil)
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    # long
    # long
    def next_word_from_index(location, is_forward)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_next_word_from_index_forward_, location, is_forward)
    end
    
    typesig { [] }
    def size
      result = NSSize.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_size)
      return result
    end
    
    typesig { [NSRange] }
    def attributed_substring_from_range(range)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_attributed_substring_from_range_, range)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSAttributedString.new(result) : nil)
    end
    
    typesig { [NSString] }
    def init_with_string(str)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_string_, !(str).nil? ? str.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSAttributedString.new(result) : nil)
    end
    
    typesig { [] }
    # long
    def length
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_length)
    end
    
    typesig { [] }
    def string
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_string)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    private
    alias_method :initialize__nsattributed_string, :initialize
  end
  
end
