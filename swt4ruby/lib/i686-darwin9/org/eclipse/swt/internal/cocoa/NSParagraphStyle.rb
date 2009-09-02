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
  module NSParagraphStyleImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSParagraphStyle < NSParagraphStyleImports.const_get :NSObject
    include_class_members NSParagraphStyleImports
    
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
    # long
    def alignment
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_alignment)
    end
    
    typesig { [] }
    def tab_stops
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_tab_stops)
      return !(result).equal?(0) ? NSArray.new(result) : nil
    end
    
    private
    alias_method :initialize__nsparagraph_style, :initialize
  end
  
end
