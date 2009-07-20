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
  module LOGPENImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class LOGPEN 
    include_class_members LOGPENImports
    
    attr_accessor :lopn_style
    alias_method :attr_lopn_style, :lopn_style
    undef_method :lopn_style
    alias_method :attr_lopn_style=, :lopn_style=
    undef_method :lopn_style=
    
    # POINT lopnWidth;
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    attr_accessor :lopn_color
    alias_method :attr_lopn_color, :lopn_color
    undef_method :lopn_color
    alias_method :attr_lopn_color=, :lopn_color=
    undef_method :lopn_color=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._logpen_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @lopn_style = 0
      @x = 0
      @y = 0
      @lopn_color = 0
    end
    
    private
    alias_method :initialize__logpen, :initialize
  end
  
end
