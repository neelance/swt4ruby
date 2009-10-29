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
  module NSTextTabImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSTextTab < NSTextTabImports.const_get :NSObject
    include_class_members NSTextTabImports
    
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
    
    typesig { [::Java::Int, ::Java::Float] }
    # long
    # double
    def init_with_type(type, loc)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_type_location_, type, loc)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSTextTab.new(result) : nil)
    end
    
    typesig { [] }
    # double
    def location
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_location)).to_f
    end
    
    typesig { [] }
    # long
    def tab_stop_type
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_tab_stop_type)
    end
    
    private
    alias_method :initialize__nstext_tab, :initialize
  end
  
end
