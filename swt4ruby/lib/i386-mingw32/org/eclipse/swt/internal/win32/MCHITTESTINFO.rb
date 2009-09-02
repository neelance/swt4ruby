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
  module MCHITTESTINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class MCHITTESTINFO 
    include_class_members MCHITTESTINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    attr_accessor :pt
    alias_method :attr_pt, :pt
    undef_method :pt
    alias_method :attr_pt=, :pt=
    undef_method :pt=
    
    attr_accessor :u_hit
    alias_method :attr_u_hit, :u_hit
    undef_method :u_hit
    alias_method :attr_u_hit=, :u_hit=
    undef_method :u_hit=
    
    attr_accessor :st
    alias_method :attr_st, :st
    undef_method :st
    alias_method :attr_st=, :st=
    undef_method :st=
    
    class_module.module_eval {
      # public RECT rc = new RECT ();
      # public int iOffset;
      # public int iRow;
      # public int iCol;
      const_set_lazy(:Sizeof) { OS._mchittestinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @pt = POINT.new
      @u_hit = 0
      @st = SYSTEMTIME.new
    end
    
    private
    alias_method :initialize__mchittestinfo, :initialize
  end
  
end
