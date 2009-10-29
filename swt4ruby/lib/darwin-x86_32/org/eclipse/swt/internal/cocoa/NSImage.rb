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
  module NSImageImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSImage < NSImageImports.const_get :NSObject
    include_class_members NSImageImports
    
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
    def _tiffrepresentation
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_tiffrepresentation)
      return !(result).equal?(0) ? NSData.new(result) : nil
    end
    
    typesig { [NSImageRep] }
    def add_representation(image_rep)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_representation_, !(image_rep).nil? ? image_rep.attr_id : 0)
    end
    
    typesig { [NSDictionary] }
    def best_representation_for_device(device_description)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_best_representation_for_device_, !(device_description).nil? ? device_description.attr_id : 0)
      return !(result).equal?(0) ? NSImageRep.new(result) : nil
    end
    
    typesig { [NSPoint, NSRect, ::Java::Int, ::Java::Float] }
    # long
    # double
    def draw_at_point(point, from_rect, op, delta)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_draw_at_point_from_rect_operation_fraction_, point, from_rect, op, delta)
    end
    
    typesig { [NSRect, NSRect, ::Java::Int, ::Java::Float] }
    # long
    # double
    def draw_in_rect(rect, from_rect, op, delta)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_draw_in_rect_from_rect_operation_fraction_, rect, from_rect, op, delta)
    end
    
    class_module.module_eval {
      typesig { [NSString] }
      def image_named(name)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsimage, OS.attr_sel_image_named_, !(name).nil? ? name.attr_id : 0)
        return !(result).equal?(0) ? NSImage.new(result) : nil
      end
    }
    
    typesig { [NSString] }
    def init_by_referencing_file(file_name)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_by_referencing_file_, !(file_name).nil? ? file_name.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSImage.new(result) : nil)
    end
    
    typesig { [NSString] }
    def init_with_contents_of_file(file_name)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_contents_of_file_, !(file_name).nil? ? file_name.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSImage.new(result) : nil)
    end
    
    typesig { [NSData] }
    def init_with_data(data)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_data_, !(data).nil? ? data.attr_id : 0)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    typesig { [NSSize] }
    def init_with_size(a_size)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_size_, a_size)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSImage.new(result) : nil)
    end
    
    typesig { [] }
    def lock_focus
      OS.objc_msg_send(self.attr_id, OS.attr_sel_lock_focus)
    end
    
    typesig { [NSImageRep] }
    def remove_representation(image_rep)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_representation_, !(image_rep).nil? ? image_rep.attr_id : 0)
    end
    
    typesig { [] }
    def representations
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_representations)
      return !(result).equal?(0) ? NSArray.new(result) : nil
    end
    
    typesig { [::Java::Int] }
    # long
    def set_cache_mode(mode)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_cache_mode_, mode)
    end
    
    typesig { [NSSize] }
    def set_size(a_size)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_size_, a_size)
    end
    
    typesig { [] }
    def size
      result = NSSize.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_size)
      return result
    end
    
    typesig { [] }
    def unlock_focus
      OS.objc_msg_send(self.attr_id, OS.attr_sel_unlock_focus)
    end
    
    private
    alias_method :initialize__nsimage, :initialize
  end
  
end
