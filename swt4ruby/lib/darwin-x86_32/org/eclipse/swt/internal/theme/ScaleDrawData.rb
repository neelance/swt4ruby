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
  module ScaleDrawDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
    }
  end
  
  class ScaleDrawData < ScaleDrawDataImports.const_get :RangeDrawData
    include_class_members ScaleDrawDataImports
    
    attr_accessor :increment
    alias_method :attr_increment, :increment
    undef_method :increment
    alias_method :attr_increment=, :increment=
    undef_method :increment=
    
    attr_accessor :page_increment
    alias_method :attr_page_increment, :page_increment
    undef_method :page_increment
    alias_method :attr_page_increment=, :page_increment=
    undef_method :page_increment=
    
    typesig { [] }
    def initialize
      @increment = 0
      @page_increment = 0
      super()
      self.attr_state = Array.typed(::Java::Int).new(4) { 0 }
    end
    
    private
    alias_method :initialize__scale_draw_data, :initialize
  end
  
end
