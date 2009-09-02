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
  module NSFileWrapperImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSFileWrapper < NSFileWrapperImports.const_get :NSObject
    include_class_members NSFileWrapperImports
    
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
    
    typesig { [NSImage] }
    def set_icon(icon)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_icon_, !(icon).nil? ? icon.attr_id : 0)
    end
    
    private
    alias_method :initialize__nsfile_wrapper, :initialize
  end
  
end
