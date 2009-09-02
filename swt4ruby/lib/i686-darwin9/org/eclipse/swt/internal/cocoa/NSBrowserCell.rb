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
  module NSBrowserCellImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSBrowserCell < NSBrowserCellImports.const_get :NSCell
    include_class_members NSBrowserCellImports
    
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
    
    typesig { [NSView] }
    def highlight_color_in_view(control_view)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_highlight_color_in_view_, !(control_view).nil? ? control_view.attr_id : 0)
      return !(result).equal?(0) ? NSColor.new(result) : nil
    end
    
    typesig { [::Java::Boolean] }
    def set_leaf(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_leaf_, flag)
    end
    
    private
    alias_method :initialize__nsbrowser_cell, :initialize
  end
  
end
