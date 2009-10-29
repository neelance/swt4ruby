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
  module NSScrollViewImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSScrollView < NSScrollViewImports.const_get :NSView
    include_class_members NSScrollViewImports
    
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
    def content_size
      result = NSSize.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_content_size)
      return result
    end
    
    class_module.module_eval {
      typesig { [NSSize, ::Java::Boolean, ::Java::Boolean, ::Java::Int] }
      # long
      def content_size_for_frame_size(f_size, h_flag, v_flag, a_type)
        result = NSSize.new
        OS.objc_msg_send_stret(result, OS.attr_class_nsscroll_view, OS.attr_sel_content_size_for_frame_size_has_horizontal_scroller_has_vertical_scroller_border_type_, f_size, h_flag, v_flag, a_type)
        return result
      end
    }
    
    typesig { [] }
    def content_view
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_content_view)
      return !(result).equal?(0) ? NSClipView.new(result) : nil
    end
    
    typesig { [] }
    def document_view
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_document_view)
      return !(result).equal?(0) ? NSView.new(result) : nil
    end
    
    typesig { [] }
    def document_visible_rect
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_document_visible_rect)
      return result
    end
    
    class_module.module_eval {
      typesig { [NSSize, ::Java::Boolean, ::Java::Boolean, ::Java::Int] }
      # long
      def frame_size_for_content_size(c_size, h_flag, v_flag, a_type)
        result = NSSize.new
        OS.objc_msg_send_stret(result, OS.attr_class_nsscroll_view, OS.attr_sel_frame_size_for_content_size_has_horizontal_scroller_has_vertical_scroller_border_type_, c_size, h_flag, v_flag, a_type)
        return result
      end
    }
    
    typesig { [NSClipView] }
    def reflect_scrolled_clip_view(c_view)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_reflect_scrolled_clip_view_, !(c_view).nil? ? c_view.attr_id : 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_autohides_scrollers(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_autohides_scrollers_, flag)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_border_type(a_type)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_border_type_, a_type)
    end
    
    typesig { [NSView] }
    def set_document_view(a_view)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_document_view_, !(a_view).nil? ? a_view.attr_id : 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_draws_background(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_draws_background_, flag)
    end
    
    typesig { [::Java::Boolean] }
    def set_has_horizontal_scroller(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_has_horizontal_scroller_, flag)
    end
    
    typesig { [::Java::Boolean] }
    def set_has_vertical_scroller(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_has_vertical_scroller_, flag)
    end
    
    typesig { [NSScroller] }
    def set_horizontal_scroller(an_object)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_horizontal_scroller_, !(an_object).nil? ? an_object.attr_id : 0)
    end
    
    typesig { [NSScroller] }
    def set_vertical_scroller(an_object)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_vertical_scroller_, !(an_object).nil? ? an_object.attr_id : 0)
    end
    
    private
    alias_method :initialize__nsscroll_view, :initialize
  end
  
end
