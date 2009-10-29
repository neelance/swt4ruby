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
  module NSImageViewImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSImageView < NSImageViewImports.const_get :NSControl
    include_class_members NSImageViewImports
    
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
    def image
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_image)
      return !(result).equal?(0) ? NSImage.new(result) : nil
    end
    
    typesig { [NSImage] }
    def set_image(new_image)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_image_, !(new_image).nil? ? new_image.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_image_alignment(new_align)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_image_alignment_, new_align)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_image_scaling(new_scaling)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_image_scaling_, new_scaling)
    end
    
    class_module.module_eval {
      typesig { [] }
      # long
      def cell_class
        return OS.objc_msg_send(OS.attr_class_nsimage_view, OS.attr_sel_cell_class)
      end
      
      typesig { [::Java::Int] }
      # long
      def set_cell_class(factory_id)
        OS.objc_msg_send(OS.attr_class_nsimage_view, OS.attr_sel_set_cell_class_, factory_id)
      end
    }
    
    private
    alias_method :initialize__nsimage_view, :initialize
  end
  
end
