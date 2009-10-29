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
  module LRESULTImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  # @jniclass flags=no_gen
  class LRESULT 
    include_class_members LRESULTImports
    
    # long
    attr_accessor :value
    alias_method :attr_value, :value
    undef_method :value
    alias_method :attr_value=, :value=
    undef_method :value=
    
    class_module.module_eval {
      const_set_lazy(:ONE) { LRESULT.new(1) }
      const_attr_reader  :ONE
      
      const_set_lazy(:ZERO) { LRESULT.new(0) }
      const_attr_reader  :ZERO
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(value)
      @value = 0
      @value = value
    end
    
    private
    alias_method :initialize__lresult, :initialize
  end
  
end
