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
  module TabItemDrawDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
    }
  end
  
  class TabItemDrawData < TabItemDrawDataImports.const_get :DrawData
    include_class_members TabItemDrawDataImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :position
    alias_method :attr_position, :position
    undef_method :position
    alias_method :attr_position=, :position=
    undef_method :position=
    
    typesig { [] }
    def initialize
      @parent = nil
      @position = 0
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    private
    alias_method :initialize__tab_item_draw_data, :initialize
  end
  
end
