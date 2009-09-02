require "rjava"

# Copyright (c) 2003, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Mozilla
  module NsDynamicFunctionLoadImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsDynamicFunctionLoad 
    include_class_members NsDynamicFunctionLoadImports
    
    # @field cast=(const char *)
    # long
    attr_accessor :function_name
    alias_method :attr_function_name, :function_name
    undef_method :function_name
    alias_method :attr_function_name=, :function_name=
    undef_method :function_name=
    
    # @field cast=(NSFuncPtr  *)
    # long
    attr_accessor :function
    alias_method :attr_function, :function
    undef_method :function
    alias_method :attr_function=, :function=
    undef_method :function=
    
    typesig { [] }
    def initialize
      @function_name = 0
      @function = 0
    end
    
    private
    alias_method :initialize_ns_dynamic_function_load, :initialize
  end
  
end
