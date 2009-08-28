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
  module NMTBHOTITEMImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMTBHOTITEM < NMTBHOTITEMImports.const_get :NMHDR
    include_class_members NMTBHOTITEMImports
    
    attr_accessor :id_old
    alias_method :attr_id_old, :id_old
    undef_method :id_old
    alias_method :attr_id_old=, :id_old=
    undef_method :id_old=
    
    attr_accessor :id_new
    alias_method :attr_id_new, :id_new
    undef_method :id_new
    alias_method :attr_id_new=, :id_new=
    undef_method :id_new=
    
    attr_accessor :dw_flags
    alias_method :attr_dw_flags, :dw_flags
    undef_method :dw_flags
    alias_method :attr_dw_flags=, :dw_flags=
    undef_method :dw_flags=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._nmtbhotitem_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @id_old = 0
      @id_new = 0
      @dw_flags = 0
      super()
    end
    
    private
    alias_method :initialize__nmtbhotitem, :initialize
  end
  
end
