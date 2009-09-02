require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Theme
  module ComboDrawDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
    }
  end
  
  class ComboDrawData < ComboDrawDataImports.const_get :DrawData
    include_class_members ComboDrawDataImports
    
    typesig { [] }
    def initialize
      super()
      self.attr_state = Array.typed(::Java::Int).new(2) { 0 }
    end
    
    private
    alias_method :initialize__combo_draw_data, :initialize
  end
  
end
