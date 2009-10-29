require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module LOGBRUSHImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class LOGBRUSH 
    include_class_members LOGBRUSHImports
    
    attr_accessor :lb_style
    alias_method :attr_lb_style, :lb_style
    undef_method :lb_style
    alias_method :attr_lb_style=, :lb_style=
    undef_method :lb_style=
    
    attr_accessor :lb_color
    alias_method :attr_lb_color, :lb_color
    undef_method :lb_color
    alias_method :attr_lb_color=, :lb_color=
    undef_method :lb_color=
    
    # long
    attr_accessor :lb_hatch
    alias_method :attr_lb_hatch, :lb_hatch
    undef_method :lb_hatch
    alias_method :attr_lb_hatch=, :lb_hatch=
    undef_method :lb_hatch=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._logbrush_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @lb_style = 0
      @lb_color = 0
      @lb_hatch = 0
    end
    
    private
    alias_method :initialize__logbrush, :initialize
  end
  
end
