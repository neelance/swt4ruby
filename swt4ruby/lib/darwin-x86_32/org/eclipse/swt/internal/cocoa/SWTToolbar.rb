require "rjava"

# Copyright (c) 2008, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module SWTToolbarImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class SWTToolbar < SWTToolbarImports.const_get :NSToolbar
    include_class_members SWTToolbarImports
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__swttoolbar, :initialize
  end
  
end
