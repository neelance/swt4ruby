require "rjava"

# Copyright (c) 2003-2004 IBM Corp.
# Portions Copyright (c) 1983-2002, Apple Computer, Inc.
# 
# All rights reserved.  This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Carbon
  module ThemeButtonDrawInfoImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class ThemeButtonDrawInfo 
    include_class_members ThemeButtonDrawInfoImports
    
    attr_accessor :state
    alias_method :attr_state, :state
    undef_method :state
    alias_method :attr_state=, :state=
    undef_method :state=
    
    attr_accessor :value
    alias_method :attr_value, :value
    undef_method :value
    alias_method :attr_value=, :value=
    undef_method :value=
    
    attr_accessor :adornment
    alias_method :attr_adornment, :adornment
    undef_method :adornment
    alias_method :attr_adornment=, :adornment=
    undef_method :adornment=
    
    class_module.module_eval {
      const_set_lazy(:Sizof) { 8 }
      const_attr_reader  :Sizof
    }
    
    typesig { [] }
    def initialize
      @state = 0
      @value = 0
      @adornment = 0
    end
    
    private
    alias_method :initialize__theme_button_draw_info, :initialize
  end
  
end
