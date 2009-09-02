require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module CAUUIDImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class CAUUID 
    include_class_members CAUUIDImports
    
    attr_accessor :c_elems
    alias_method :attr_c_elems, :c_elems
    undef_method :c_elems
    alias_method :attr_c_elems=, :c_elems=
    undef_method :c_elems=
    
    # @field cast=(GUID FAR *)
    # long
    attr_accessor :p_elems
    alias_method :attr_p_elems, :p_elems
    undef_method :p_elems
    alias_method :attr_p_elems=, :p_elems=
    undef_method :p_elems=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { COM._cauuid_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @c_elems = 0
      @p_elems = 0
    end
    
    private
    alias_method :initialize__cauuid, :initialize
  end
  
end
