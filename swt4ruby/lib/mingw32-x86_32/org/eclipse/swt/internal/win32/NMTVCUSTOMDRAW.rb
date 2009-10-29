require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module NMTVCUSTOMDRAWImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMTVCUSTOMDRAW < NMTVCUSTOMDRAWImports.const_get :NMCUSTOMDRAW
    include_class_members NMTVCUSTOMDRAWImports
    
    attr_accessor :clr_text
    alias_method :attr_clr_text, :clr_text
    undef_method :clr_text
    alias_method :attr_clr_text=, :clr_text=
    undef_method :clr_text=
    
    attr_accessor :clr_text_bk
    alias_method :attr_clr_text_bk, :clr_text_bk
    undef_method :clr_text_bk
    alias_method :attr_clr_text_bk=, :clr_text_bk=
    undef_method :clr_text_bk=
    
    # @field flags=no_wince
    attr_accessor :i_level
    alias_method :attr_i_level, :i_level
    undef_method :i_level
    alias_method :attr_i_level=, :i_level=
    undef_method :i_level=
    
    class_module.module_eval {
      # the iLevel field does not appear on WinCE
      const_set_lazy(:Sizeof) { OS._nmtvcustomdraw_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @clr_text = 0
      @clr_text_bk = 0
      @i_level = 0
      super()
    end
    
    private
    alias_method :initialize__nmtvcustomdraw, :initialize
  end
  
end
