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
  module RangeDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  class RangeDrawData < RangeDrawDataImports.const_get :DrawData
    include_class_members RangeDrawDataImports
    
    attr_accessor :selection
    alias_method :attr_selection, :selection
    undef_method :selection
    alias_method :attr_selection=, :selection=
    undef_method :selection=
    
    attr_accessor :minimum
    alias_method :attr_minimum, :minimum
    undef_method :minimum
    alias_method :attr_minimum=, :minimum=
    undef_method :minimum=
    
    attr_accessor :maximum
    alias_method :attr_maximum, :maximum
    undef_method :maximum
    alias_method :attr_maximum=, :maximum=
    undef_method :maximum=
    
    typesig { [Point, Rectangle] }
    def get_selection(position, bounds)
      return 0
    end
    
    typesig { [] }
    def initialize
      @selection = 0
      @minimum = 0
      @maximum = 0
      super()
    end
    
    private
    alias_method :initialize__range_draw_data, :initialize
  end
  
end
