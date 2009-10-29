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
  module NSScreenImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSScreen < NSScreenImports.const_get :NSObject
    include_class_members NSScreenImports
    
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
    def depth
      # 64
      return RJava.cast_to_int(OS.objc_msg_send(self.attr_id, OS.attr_sel_depth))
    end
    
    typesig { [] }
    def device_description
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_device_description)
      return !(result).equal?(0) ? NSDictionary.new(result) : nil
    end
    
    typesig { [] }
    def frame
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_frame)
      return result
    end
    
    class_module.module_eval {
      typesig { [] }
      def main_screen
        # long
        result = OS.objc_msg_send(OS.attr_class_nsscreen, OS.attr_sel_main_screen)
        return !(result).equal?(0) ? NSScreen.new(result) : nil
      end
      
      typesig { [] }
      def screens
        # long
        result = OS.objc_msg_send(OS.attr_class_nsscreen, OS.attr_sel_screens)
        return !(result).equal?(0) ? NSArray.new(result) : nil
      end
    }
    
    typesig { [] }
    def visible_frame
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_visible_frame)
      return result
    end
    
    private
    alias_method :initialize__nsscreen, :initialize
  end
  
end
