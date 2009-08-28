require "rjava"

# Copyright (c) 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module TF_DA_COLORImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class TF_DA_COLOR 
    include_class_members TF_DA_COLORImports
    
    attr_accessor :type
    alias_method :attr_type, :type
    undef_method :type
    alias_method :attr_type=, :type=
    undef_method :type=
    
    attr_accessor :cr
    alias_method :attr_cr, :cr
    undef_method :cr
    alias_method :attr_cr=, :cr=
    undef_method :cr=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._tf_da_color_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @type = 0
      @cr = 0
    end
    
    private
    alias_method :initialize__tf_da_color, :initialize
  end
  
end
