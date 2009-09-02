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
  module NSCursorImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSCursor < NSCursorImports.const_get :NSObject
    include_class_members NSCursorImports
    
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
      typesig { [] }
      def _ibeam_cursor
        # long
        result = OS.objc_msg_send(OS.attr_class_nscursor, OS.attr_sel_ibeam_cursor)
        return !(result).equal?(0) ? NSCursor.new(result) : nil
      end
      
      typesig { [] }
      def arrow_cursor
        # long
        result = OS.objc_msg_send(OS.attr_class_nscursor, OS.attr_sel_arrow_cursor)
        return !(result).equal?(0) ? NSCursor.new(result) : nil
      end
      
      typesig { [] }
      def crosshair_cursor
        # long
        result = OS.objc_msg_send(OS.attr_class_nscursor, OS.attr_sel_crosshair_cursor)
        return !(result).equal?(0) ? NSCursor.new(result) : nil
      end
      
      typesig { [] }
      def current_cursor
        # long
        result = OS.objc_msg_send(OS.attr_class_nscursor, OS.attr_sel_current_cursor)
        return !(result).equal?(0) ? NSCursor.new(result) : nil
      end
    }
    
    typesig { [NSImage, NSPoint] }
    def init_with_image(new_image, a_point)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_image_hot_spot_, !(new_image).nil? ? new_image.attr_id : 0, a_point)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSCursor.new(result) : nil)
    end
    
    class_module.module_eval {
      typesig { [] }
      def pointing_hand_cursor
        # long
        result = OS.objc_msg_send(OS.attr_class_nscursor, OS.attr_sel_pointing_hand_cursor)
        return !(result).equal?(0) ? NSCursor.new(result) : nil
      end
      
      typesig { [] }
      def pop
        OS.objc_msg_send(OS.attr_class_nscursor, OS.attr_sel_pop)
      end
    }
    
    typesig { [] }
    def push
      OS.objc_msg_send(self.attr_id, OS.attr_sel_push)
    end
    
    class_module.module_eval {
      typesig { [] }
      def resize_down_cursor
        # long
        result = OS.objc_msg_send(OS.attr_class_nscursor, OS.attr_sel_resize_down_cursor)
        return !(result).equal?(0) ? NSCursor.new(result) : nil
      end
      
      typesig { [] }
      def resize_left_cursor
        # long
        result = OS.objc_msg_send(OS.attr_class_nscursor, OS.attr_sel_resize_left_cursor)
        return !(result).equal?(0) ? NSCursor.new(result) : nil
      end
      
      typesig { [] }
      def resize_left_right_cursor
        # long
        result = OS.objc_msg_send(OS.attr_class_nscursor, OS.attr_sel_resize_left_right_cursor)
        return !(result).equal?(0) ? NSCursor.new(result) : nil
      end
      
      typesig { [] }
      def resize_right_cursor
        # long
        result = OS.objc_msg_send(OS.attr_class_nscursor, OS.attr_sel_resize_right_cursor)
        return !(result).equal?(0) ? NSCursor.new(result) : nil
      end
      
      typesig { [] }
      def resize_up_cursor
        # long
        result = OS.objc_msg_send(OS.attr_class_nscursor, OS.attr_sel_resize_up_cursor)
        return !(result).equal?(0) ? NSCursor.new(result) : nil
      end
      
      typesig { [] }
      def resize_up_down_cursor
        # long
        result = OS.objc_msg_send(OS.attr_class_nscursor, OS.attr_sel_resize_up_down_cursor)
        return !(result).equal?(0) ? NSCursor.new(result) : nil
      end
    }
    
    typesig { [] }
    def set
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set)
    end
    
    class_module.module_eval {
      typesig { [::Java::Boolean] }
      def set_hidden_until_mouse_moves(flag)
        OS.objc_msg_send(OS.attr_class_nscursor, OS.attr_sel_set_hidden_until_mouse_moves_, flag)
      end
    }
    
    typesig { [::Java::Boolean] }
    def set_on_mouse_entered(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_on_mouse_entered_, flag)
    end
    
    private
    alias_method :initialize__nscursor, :initialize
  end
  
end
