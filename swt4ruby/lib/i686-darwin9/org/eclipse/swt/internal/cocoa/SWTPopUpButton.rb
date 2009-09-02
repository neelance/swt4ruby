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
  module SWTPopUpButtonImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class SWTPopUpButton < SWTPopUpButtonImports.const_get :NSPopUpButton
    include_class_members SWTPopUpButtonImports
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__swtpop_up_button, :initialize
  end
  
end
