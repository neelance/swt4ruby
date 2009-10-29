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
  module NSTextViewImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSTextView < NSTextViewImports.const_get :NSText
    include_class_members NSTextViewImports
    
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
    
    typesig { [NSPoint] }
    # long
    def character_index_for_insertion_at_point(point)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_character_index_for_insertion_at_point_, point)
    end
    
    typesig { [] }
    def default_paragraph_style
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_default_paragraph_style)
      return !(result).equal?(0) ? NSParagraphStyle.new(result) : nil
    end
    
    typesig { [NSEvent, NSSize, ::Java::Boolean] }
    def drag_selection_with_event(event, mouse_offset, slide_back)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_drag_selection_with_event_offset_slide_back_, !(event).nil? ? event.attr_id : 0, mouse_offset, slide_back)
    end
    
    typesig { [] }
    def layout_manager
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_layout_manager)
      return !(result).equal?(0) ? NSLayoutManager.new(result) : nil
    end
    
    typesig { [] }
    def link_text_attributes
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_link_text_attributes)
      return !(result).equal?(0) ? NSDictionary.new(result) : nil
    end
    
    typesig { [] }
    def marked_text_attributes
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_marked_text_attributes)
      return !(result).equal?(0) ? NSDictionary.new(result) : nil
    end
    
    typesig { [NSParagraphStyle] }
    def set_default_paragraph_style(paragraph_style)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_default_paragraph_style_, !(paragraph_style).nil? ? paragraph_style.attr_id : 0)
    end
    
    typesig { [NSDictionary] }
    def set_link_text_attributes(attribute_dictionary)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_link_text_attributes_, !(attribute_dictionary).nil? ? attribute_dictionary.attr_id : 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_rich_text(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_rich_text_, flag)
    end
    
    typesig { [NSRange, NSString] }
    def should_change_text_in_range(affected_char_range, replacement_string)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_should_change_text_in_range_replacement_string_, affected_char_range, !(replacement_string).nil? ? replacement_string.attr_id : 0)
    end
    
    typesig { [] }
    def text_container
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_text_container)
      return !(result).equal?(0) ? NSTextContainer.new(result) : nil
    end
    
    typesig { [] }
    def text_storage
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_text_storage)
      return !(result).equal?(0) ? NSTextStorage.new(result) : nil
    end
    
    private
    alias_method :initialize__nstext_view, :initialize
  end
  
end
