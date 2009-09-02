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
  module NSOpenGLPixelFormatImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSOpenGLPixelFormat < NSOpenGLPixelFormatImports.const_get :NSObject
    include_class_members NSOpenGLPixelFormatImports
    
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
    
    typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
    # long[]
    def get_values(vals, attrib, screen)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_get_values_for_attribute_for_virtual_screen_, vals, attrib, screen)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def init_with_attributes(attribs)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_attributes_, attribs)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    private
    alias_method :initialize__nsopen_glpixel_format, :initialize
  end
  
end
