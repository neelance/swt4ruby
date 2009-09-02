require "rjava"

# Copyright (c) 2007, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module SWTTabViewImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class SWTTabView < SWTTabViewImports.const_get :NSTabView
    include_class_members SWTTabViewImports
    
    typesig { [] }
    def initialize
      super(0)
    end
    
    typesig { [::Java::Int] }
    def initialize(id)
      super(id)
    end
    
    private
    alias_method :initialize__swttab_view, :initialize
  end
  
end
