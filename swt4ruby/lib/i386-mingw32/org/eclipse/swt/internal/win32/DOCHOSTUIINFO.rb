require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module DOCHOSTUIINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class DOCHOSTUIINFO 
    include_class_members DOCHOSTUIINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    attr_accessor :dw_flags
    alias_method :attr_dw_flags, :dw_flags
    undef_method :dw_flags
    alias_method :attr_dw_flags=, :dw_flags=
    undef_method :dw_flags=
    
    attr_accessor :dw_double_click
    alias_method :attr_dw_double_click, :dw_double_click
    undef_method :dw_double_click
    alias_method :attr_dw_double_click=, :dw_double_click=
    undef_method :dw_double_click=
    
    class_module.module_eval {
      # TODO uncomment the following two fields when 32-bit swt starts
      # compiling with a newer mssdk whose definition of DOCHOSTUIINFO
      # includes these fields.
      # 
      # public int /*long*/ pchHostCss;
      # public int /*long*/ pchHostNS;
      const_set_lazy(:Sizeof) { OS._dochostuiinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @dw_flags = 0
      @dw_double_click = 0
    end
    
    private
    alias_method :initialize__dochostuiinfo, :initialize
  end
  
end
