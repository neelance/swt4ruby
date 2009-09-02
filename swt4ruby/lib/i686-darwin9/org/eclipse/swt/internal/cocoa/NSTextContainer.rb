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
  module NSTextContainerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSTextContainer < NSTextContainerImports.const_get :NSObject
    include_class_members NSTextContainerImports
    
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
    def container_size
      result = NSSize.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_container_size)
      return result
    end
    
    typesig { [NSSize] }
    def init_with_container_size(size)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_container_size_, size)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSTextContainer.new(result) : nil)
    end
    
    typesig { [NSSize] }
    def set_container_size(size)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_container_size_, size)
    end
    
    typesig { [::Java::Float] }
    # double
    def set_line_fragment_padding(pad)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_line_fragment_padding_, pad)
    end
    
    typesig { [::Java::Boolean] }
    def set_width_tracks_text_view(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_width_tracks_text_view_, flag)
    end
    
    private
    alias_method :initialize__nstext_container, :initialize
  end
  
end
