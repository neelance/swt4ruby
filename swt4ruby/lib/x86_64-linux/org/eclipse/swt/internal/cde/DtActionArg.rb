require "rjava"

# Copyright (c) 2000, 2004 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cde
  module DtActionArgImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cde
    }
  end
  
  class DtActionArg 
    include_class_members DtActionArgImports
    
    attr_accessor :arg_class
    alias_method :attr_arg_class, :arg_class
    undef_method :arg_class
    alias_method :attr_arg_class=, :arg_class=
    undef_method :arg_class=
    
    # int
    attr_accessor :name
    alias_method :attr_name, :name
    undef_method :name
    alias_method :attr_name=, :name=
    undef_method :name=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { CDE._dt_action_arg_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @arg_class = 0
      @name = 0
    end
    
    private
    alias_method :initialize__dt_action_arg, :initialize
  end
  
end
