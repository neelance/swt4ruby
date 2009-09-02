require "rjava"

# Copyright (c) 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module SWTButtonCellImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class SWTButtonCell < SWTButtonCellImports.const_get :NSButtonCell
    include_class_members SWTButtonCellImports
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__swtbutton_cell, :initialize
  end
  
end
