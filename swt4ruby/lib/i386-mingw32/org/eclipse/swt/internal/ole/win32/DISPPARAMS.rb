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
  module DISPPARAMSImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class DISPPARAMS 
    include_class_members DISPPARAMSImports
    
    # long
    attr_accessor :rgvarg
    alias_method :attr_rgvarg, :rgvarg
    undef_method :rgvarg
    alias_method :attr_rgvarg=, :rgvarg=
    undef_method :rgvarg=
    
    # long
    attr_accessor :rgdispid_named_args
    alias_method :attr_rgdispid_named_args, :rgdispid_named_args
    undef_method :rgdispid_named_args
    alias_method :attr_rgdispid_named_args=, :rgdispid_named_args=
    undef_method :rgdispid_named_args=
    
    attr_accessor :c_args
    alias_method :attr_c_args, :c_args
    undef_method :c_args
    alias_method :attr_c_args=, :c_args=
    undef_method :c_args=
    
    attr_accessor :c_named_args
    alias_method :attr_c_named_args, :c_named_args
    undef_method :c_named_args
    alias_method :attr_c_named_args=, :c_named_args=
    undef_method :c_named_args=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { COM._dispparams_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @rgvarg = 0
      @rgdispid_named_args = 0
      @c_args = 0
      @c_named_args = 0
    end
    
    private
    alias_method :initialize__dispparams, :initialize
  end
  
end
