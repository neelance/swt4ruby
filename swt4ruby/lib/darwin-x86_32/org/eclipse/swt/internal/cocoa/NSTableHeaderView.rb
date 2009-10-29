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
  module NSTableHeaderViewImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSTableHeaderView < NSTableHeaderViewImports.const_get :NSView
    include_class_members NSTableHeaderViewImports
    
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
    
    typesig { [NSPoint] }
    # long
    def column_at_point(point)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_column_at_point_, point)
    end
    
    typesig { [::Java::Int] }
    # long
    def header_rect_of_column(column)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_header_rect_of_column_, column)
      return result
    end
    
    private
    alias_method :initialize__nstable_header_view, :initialize
  end
  
end
