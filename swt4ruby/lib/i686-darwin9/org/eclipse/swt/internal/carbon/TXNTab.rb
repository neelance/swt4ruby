require "rjava"

# Copyright (c) 2003, 2005 IBM Corp.
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
  module TXNTabImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class TXNTab 
    include_class_members TXNTabImports
    
    attr_accessor :value
    alias_method :attr_value, :value
    undef_method :value
    alias_method :attr_value=, :value=
    undef_method :value=
    
    attr_accessor :tab_type
    alias_method :attr_tab_type, :tab_type
    undef_method :tab_type
    alias_method :attr_tab_type=, :tab_type=
    undef_method :tab_type=
    
    attr_accessor :filler
    alias_method :attr_filler, :filler
    undef_method :filler
    alias_method :attr_filler=, :filler=
    undef_method :filler=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 4 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @value = 0
      @tab_type = 0
      @filler = 0
    end
    
    private
    alias_method :initialize__txntab, :initialize
  end
  
end
