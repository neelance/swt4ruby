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
  module NSFontImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSFont < NSFontImports.const_get :NSObject
    include_class_members NSFontImports
    
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
    # double
    def ascender
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_ascender)).to_f
    end
    
    class_module.module_eval {
      typesig { [::Java::Float] }
      # double
      def control_content_font_of_size(font_size)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsfont, OS.attr_sel_control_content_font_of_size_, font_size)
        return !(result).equal?(0) ? NSFont.new(result) : nil
      end
    }
    
    typesig { [] }
    # double
    def descender
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_descender)).to_f
    end
    
    typesig { [] }
    def family_name
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_family_name)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [] }
    def font_name
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_font_name)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    class_module.module_eval {
      typesig { [NSString, ::Java::Float] }
      # double
      def font_with_name(font_name, font_size)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsfont, OS.attr_sel_font_with_name_size_, !(font_name).nil? ? font_name.attr_id : 0, font_size)
        return !(result).equal?(0) ? NSFont.new(result) : nil
      end
    }
    
    typesig { [] }
    # double
    def leading
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_leading)).to_f
    end
    
    typesig { [] }
    # double
    def point_size
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_point_size)).to_f
    end
    
    class_module.module_eval {
      typesig { [] }
      # double
      def small_system_font_size
        return (OS.objc_msg_send_fpret(OS.attr_class_nsfont, OS.attr_sel_small_system_font_size)).to_f
      end
      
      typesig { [::Java::Float] }
      # double
      def system_font_of_size(font_size)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsfont, OS.attr_sel_system_font_of_size_, font_size)
        return !(result).equal?(0) ? NSFont.new(result) : nil
      end
      
      typesig { [] }
      # double
      def system_font_size
        return (OS.objc_msg_send_fpret(OS.attr_class_nsfont, OS.attr_sel_system_font_size)).to_f
      end
      
      typesig { [::Java::Int] }
      # double
      # long
      def system_font_size_for_control_size(control_size)
        return (OS.objc_msg_send_fpret(OS.attr_class_nsfont, OS.attr_sel_system_font_size_for_control_size_, control_size)).to_f
      end
    }
    
    private
    alias_method :initialize__nsfont, :initialize
  end
  
end
