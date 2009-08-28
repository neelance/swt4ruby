require "rjava"

# Copyright (c) 2003-2004 IBM Corp.
# Portions Copyright (c) 1983-2002, Apple Computer, Inc.
# 
# All rights reserved.  This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Carbon
  module PMResolutionImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class PMResolution 
    include_class_members PMResolutionImports
    
    attr_accessor :h_res
    alias_method :attr_h_res, :h_res
    undef_method :h_res
    alias_method :attr_h_res=, :h_res=
    undef_method :h_res=
    
    attr_accessor :v_res
    alias_method :attr_v_res, :v_res
    undef_method :v_res
    alias_method :attr_v_res=, :v_res=
    undef_method :v_res=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 16 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @h_res = 0.0
      @v_res = 0.0
    end
    
    private
    alias_method :initialize__pmresolution, :initialize
  end
  
end
