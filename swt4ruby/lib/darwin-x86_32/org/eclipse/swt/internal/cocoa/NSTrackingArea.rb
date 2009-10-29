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
  module NSTrackingAreaImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSTrackingArea < NSTrackingAreaImports.const_get :NSObject
    include_class_members NSTrackingAreaImports
    
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
    
    typesig { [NSRect, ::Java::Int, Id, NSDictionary] }
    # long
    def init_with_rect(rect, options, owner, user_info)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_rect_options_owner_user_info_, rect, options, !(owner).nil? ? owner.attr_id : 0, !(user_info).nil? ? user_info.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSTrackingArea.new(result) : nil)
    end
    
    typesig { [] }
    def owner
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_owner)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    typesig { [] }
    def user_info
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_user_info)
      return !(result).equal?(0) ? NSDictionary.new(result) : nil
    end
    
    private
    alias_method :initialize__nstracking_area, :initialize
  end
  
end
