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
  module NSAffineTransformImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSAffineTransform < NSAffineTransformImports.const_get :NSObject
    include_class_members NSAffineTransformImports
    
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
    def concat
      OS.objc_msg_send(self.attr_id, OS.attr_sel_concat)
    end
    
    typesig { [NSAffineTransform] }
    def init_with_transform(transform)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_transform_, !(transform).nil? ? transform.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSAffineTransform.new(result) : nil)
    end
    
    typesig { [] }
    def invert
      OS.objc_msg_send(self.attr_id, OS.attr_sel_invert)
    end
    
    typesig { [NSAffineTransform] }
    def prepend_transform(transform)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_prepend_transform_, !(transform).nil? ? transform.attr_id : 0)
    end
    
    typesig { [::Java::Float] }
    # double
    def rotate_by_degrees(angle)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_rotate_by_degrees_, angle)
    end
    
    typesig { [::Java::Float, ::Java::Float] }
    # double
    # double
    def scale_xby(scale_x, scale_y)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_scale_xby_y_by_, scale_x, scale_y)
    end
    
    typesig { [] }
    def set
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set)
    end
    
    typesig { [NSAffineTransformStruct] }
    def set_transform_struct(transform_struct)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_transform_struct_, transform_struct)
    end
    
    class_module.module_eval {
      typesig { [] }
      def transform
        # long
        result = OS.objc_msg_send(OS.attr_class_nsaffine_transform, OS.attr_sel_transform)
        return !(result).equal?(0) ? NSAffineTransform.new(result) : nil
      end
    }
    
    typesig { [NSPoint] }
    def transform_point(a_point)
      result = NSPoint.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_transform_point_, a_point)
      return result
    end
    
    typesig { [NSSize] }
    def transform_size(a_size)
      result = NSSize.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_transform_size_, a_size)
      return result
    end
    
    typesig { [] }
    def transform_struct
      result = NSAffineTransformStruct.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_transform_struct)
      return result
    end
    
    typesig { [::Java::Float, ::Java::Float] }
    # double
    # double
    def translate_xby(delta_x, delta_y)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_translate_xby_y_by_, delta_x, delta_y)
    end
    
    private
    alias_method :initialize__nsaffine_transform, :initialize
  end
  
end
