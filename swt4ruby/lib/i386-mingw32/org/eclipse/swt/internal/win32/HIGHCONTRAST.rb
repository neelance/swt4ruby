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
  module HIGHCONTRASTImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class HIGHCONTRAST 
    include_class_members HIGHCONTRASTImports
    
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
    
    # long
    attr_accessor :lpsz_default_scheme
    alias_method :attr_lpsz_default_scheme, :lpsz_default_scheme
    undef_method :lpsz_default_scheme
    alias_method :attr_lpsz_default_scheme=, :lpsz_default_scheme=
    undef_method :lpsz_default_scheme=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._highcontrast_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @dw_flags = 0
      @lpsz_default_scheme = 0
    end
    
    private
    alias_method :initialize__highcontrast, :initialize
  end
  
end
