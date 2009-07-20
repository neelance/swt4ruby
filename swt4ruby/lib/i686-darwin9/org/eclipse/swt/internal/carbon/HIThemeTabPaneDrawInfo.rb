require "rjava"

# Copyright (c) 2003, 2006 IBM Corp.
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
  module HIThemeTabPaneDrawInfoImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class HIThemeTabPaneDrawInfo 
    include_class_members HIThemeTabPaneDrawInfoImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :state
    alias_method :attr_state, :state
    undef_method :state
    alias_method :attr_state=, :state=
    undef_method :state=
    
    attr_accessor :direction
    alias_method :attr_direction, :direction
    undef_method :direction
    alias_method :attr_direction=, :direction=
    undef_method :direction=
    
    attr_accessor :size
    alias_method :attr_size, :size
    undef_method :size
    alias_method :attr_size=, :size=
    undef_method :size=
    
    attr_accessor :kind
    alias_method :attr_kind, :kind
    undef_method :kind
    alias_method :attr_kind=, :kind=
    undef_method :kind=
    
    attr_accessor :adornment
    alias_method :attr_adornment, :adornment
    undef_method :adornment
    alias_method :attr_adornment=, :adornment=
    undef_method :adornment=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS::VERSION >= 0x1040 ? 22 : 14 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @state = 0
      @direction = 0
      @size = 0
      @kind = 0
      @adornment = 0
    end
    
    private
    alias_method :initialize__hitheme_tab_pane_draw_info, :initialize
  end
  
end
