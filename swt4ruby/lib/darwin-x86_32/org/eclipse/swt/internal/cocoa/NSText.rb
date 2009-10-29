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
  module NSTextImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSText < NSTextImports.const_get :NSView
    include_class_members NSTextImports
    
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
    def copy(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_copy_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [Id] }
    def cut(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_cut_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [] }
    def delegate
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_delegate)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    typesig { [] }
    def font
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_font)
      return !(result).equal?(0) ? NSFont.new(result) : nil
    end
    
    typesig { [Id] }
    def paste(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_paste_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [NSRange, NSString] }
    def replace_characters_in_range(range, a_string)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_replace_characters_in_range_with_string_, range, !(a_string).nil? ? a_string.attr_id : 0)
    end
    
    typesig { [NSRange] }
    def scroll_range_to_visible(range)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_scroll_range_to_visible_, range)
    end
    
    typesig { [Id] }
    def select_all(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_select_all_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [] }
    def selected_range
      result = NSRange.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_selected_range)
      return result
    end
    
    typesig { [::Java::Int] }
    # long
    def set_alignment(mode)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_alignment_, mode)
    end
    
    typesig { [NSColor] }
    def set_background_color(color)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_background_color_, !(color).nil? ? color.attr_id : 0)
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
    
    typesig { [NSFont] }
    def set_font(obj)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_font_, !(obj).nil? ? obj.attr_id : 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_horizontally_resizable(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_horizontally_resizable_, flag)
    end
    
    typesig { [NSSize] }
    def set_max_size(new_max_size)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_max_size_, new_max_size)
    end
    
    typesig { [NSSize] }
    def set_min_size(new_min_size)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_min_size_, new_min_size)
    end
    
    typesig { [::Java::Boolean] }
    def set_selectable(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_selectable_, flag)
    end
    
    typesig { [NSRange] }
    def set_selected_range(range)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_selected_range_, range)
    end
    
    typesig { [NSString] }
    def set_string(string)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_string_, !(string).nil? ? string.attr_id : 0)
    end
    
    typesig { [NSColor] }
    def set_text_color(color)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_text_color_, !(color).nil? ? color.attr_id : 0)
    end
    
    typesig { [] }
    def size_to_fit
      OS.objc_msg_send(self.attr_id, OS.attr_sel_size_to_fit)
    end
    
    typesig { [] }
    def string
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_string)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    private
    alias_method :initialize__nstext, :initialize
  end
  
end
