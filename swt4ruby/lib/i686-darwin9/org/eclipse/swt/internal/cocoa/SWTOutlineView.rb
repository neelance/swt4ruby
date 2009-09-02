require "rjava"

# Copyright (c) 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module SWTOutlineViewImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class SWTOutlineView < SWTOutlineViewImports.const_get :NSOutlineView
    include_class_members SWTOutlineViewImports
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__swtoutline_view, :initialize
  end
  
end
