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
  module NSClipViewImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSClipView < NSClipViewImports.const_get :NSView
    include_class_members NSClipViewImports
    
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
    def copies_on_scroll
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_copies_on_scroll)
    end
    
    typesig { [] }
    def document_cursor
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_document_cursor)
      return !(result).equal?(0) ? NSCursor.new(result) : nil
    end
    
    typesig { [NSPoint] }
    def scroll_to_point(new_origin)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_scroll_to_point_, new_origin)
    end
    
    typesig { [::Java::Boolean] }
    def set_copies_on_scroll(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_copies_on_scroll_, flag)
    end
    
    typesig { [NSCursor] }
    def set_document_cursor(an_obj)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_document_cursor_, !(an_obj).nil? ? an_obj.attr_id : 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_draws_background(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_draws_background_, flag)
    end
    
    private
    alias_method :initialize__nsclip_view, :initialize
  end
  
end
