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
  module NSTextAttachmentImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSTextAttachment < NSTextAttachmentImports.const_get :NSObject
    include_class_members NSTextAttachmentImports
    
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
    
    typesig { [NSFileWrapper] }
    def init_with_file_wrapper(file_wrapper)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_file_wrapper_, !(file_wrapper).nil? ? file_wrapper.attr_id : 0)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    private
    alias_method :initialize__nstext_attachment, :initialize
  end
  
end
