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
  module NMTTDISPINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMTTDISPINFO < NMTTDISPINFOImports.const_get :NMHDR
    include_class_members NMTTDISPINFOImports
    
    # long
    attr_accessor :lpsz_text
    alias_method :attr_lpsz_text, :lpsz_text
    undef_method :lpsz_text
    alias_method :attr_lpsz_text=, :lpsz_text=
    undef_method :lpsz_text=
    
    # long
    attr_accessor :hinst
    alias_method :attr_hinst, :hinst
    undef_method :hinst
    alias_method :attr_hinst=, :hinst=
    undef_method :hinst=
    
    attr_accessor :u_flags
    alias_method :attr_u_flags, :u_flags
    undef_method :u_flags
    alias_method :attr_u_flags=, :u_flags=
    undef_method :u_flags=
    
    # long
    attr_accessor :l_param
    alias_method :attr_l_param, :l_param
    undef_method :l_param
    alias_method :attr_l_param=, :l_param=
    undef_method :l_param=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS::IsUnicode ? OS._nmttdispinfow_sizeof : OS._nmttdispinfoa_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @lpsz_text = 0
      @hinst = 0
      @u_flags = 0
      @l_param = 0
      super()
    end
    
    private
    alias_method :initialize__nmttdispinfo, :initialize
  end
  
end
