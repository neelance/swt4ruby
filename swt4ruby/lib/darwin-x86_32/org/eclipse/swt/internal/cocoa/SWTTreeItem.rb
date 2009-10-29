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
  module SWTTreeItemImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class SWTTreeItem < SWTTreeItemImports.const_get :NSObject
    include_class_members SWTTreeItemImports
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__swttree_item, :initialize
  end
  
end
