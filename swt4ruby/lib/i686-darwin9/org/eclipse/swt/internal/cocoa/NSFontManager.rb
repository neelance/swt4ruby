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
  module NSFontManagerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSFontManager < NSFontManagerImports.const_get :NSObject
    include_class_members NSFontManagerImports
    
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
    def available_font_families
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_available_font_families)
      return !(result).equal?(0) ? NSArray.new(result) : nil
    end
    
    typesig { [] }
    def available_fonts
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_available_fonts)
      return !(result).equal?(0) ? NSArray.new(result) : nil
    end
    
    typesig { [NSString] }
    def available_members_of_font_family(fam)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_available_members_of_font_family_, !(fam).nil? ? fam.attr_id : 0)
      return !(result).equal?(0) ? NSArray.new(result) : nil
    end
    
    typesig { [NSFont, ::Java::Int] }
    # long
    def convert_font(font_obj, trait)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_convert_font_to_have_trait_, !(font_obj).nil? ? font_obj.attr_id : 0, trait)
      return !(result).equal?(0) ? NSFont.new(result) : nil
    end
    
    typesig { [NSString, ::Java::Int, ::Java::Int, ::Java::Float] }
    # long
    # long
    # double
    def font_with_family(family, traits, weight, size)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_font_with_family_traits_weight_size_, !(family).nil? ? family.attr_id : 0, traits, weight, size)
      return !(result).equal?(0) ? NSFont.new(result) : nil
    end
    
    class_module.module_eval {
      typesig { [] }
      def shared_font_manager
        # long
        result = OS.objc_msg_send(OS.attr_class_nsfont_manager, OS.attr_sel_shared_font_manager)
        return !(result).equal?(0) ? NSFontManager.new(result) : nil
      end
    }
    
    typesig { [NSFont] }
    # long
    def traits_of_font(font_obj)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_traits_of_font_, !(font_obj).nil? ? font_obj.attr_id : 0)
    end
    
    typesig { [NSFont] }
    # long
    def weight_of_font(font_obj)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_weight_of_font_, !(font_obj).nil? ? font_obj.attr_id : 0)
    end
    
    private
    alias_method :initialize__nsfont_manager, :initialize
  end
  
end
