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
  module ACCELImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class ACCEL 
    include_class_members ACCELImports
    
    attr_accessor :f_virt
    alias_method :attr_f_virt, :f_virt
    undef_method :f_virt
    alias_method :attr_f_virt=, :f_virt=
    undef_method :f_virt=
    
    attr_accessor :key
    alias_method :attr_key, :key
    undef_method :key
    alias_method :attr_key=, :key=
    undef_method :key=
    
    attr_accessor :cmd
    alias_method :attr_cmd, :cmd
    undef_method :cmd
    alias_method :attr_cmd=, :cmd=
    undef_method :cmd=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._accel_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @f_virt = 0
      @key = 0
      @cmd = 0
    end
    
    private
    alias_method :initialize__accel, :initialize
  end
  
end
