require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module FORMATETCImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class FORMATETC 
    include_class_members FORMATETCImports
    
    attr_accessor :cf_format
    alias_method :attr_cf_format, :cf_format
    undef_method :cf_format
    alias_method :attr_cf_format=, :cf_format=
    undef_method :cf_format=
    
    # long
    attr_accessor :ptd
    alias_method :attr_ptd, :ptd
    undef_method :ptd
    alias_method :attr_ptd=, :ptd=
    undef_method :ptd=
    
    attr_accessor :dw_aspect
    alias_method :attr_dw_aspect, :dw_aspect
    undef_method :dw_aspect
    alias_method :attr_dw_aspect=, :dw_aspect=
    undef_method :dw_aspect=
    
    attr_accessor :lindex
    alias_method :attr_lindex, :lindex
    undef_method :lindex
    alias_method :attr_lindex=, :lindex=
    undef_method :lindex=
    
    attr_accessor :tymed
    alias_method :attr_tymed, :tymed
    undef_method :tymed
    alias_method :attr_tymed=, :tymed=
    undef_method :tymed=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { COM._formatetc_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cf_format = 0
      @ptd = 0
      @dw_aspect = 0
      @lindex = 0
      @tymed = 0
    end
    
    private
    alias_method :initialize__formatetc, :initialize
  end
  
end
