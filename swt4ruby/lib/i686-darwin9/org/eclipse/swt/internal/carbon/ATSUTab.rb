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
  module ATSUTabImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class ATSUTab 
    include_class_members ATSUTabImports
    
    attr_accessor :tab_position
    alias_method :attr_tab_position, :tab_position
    undef_method :tab_position
    alias_method :attr_tab_position=, :tab_position=
    undef_method :tab_position=
    
    attr_accessor :tab_type
    alias_method :attr_tab_type, :tab_type
    undef_method :tab_type
    alias_method :attr_tab_type=, :tab_type=
    undef_method :tab_type=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 6 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @tab_position = 0
      @tab_type = 0
    end
    
    private
    alias_method :initialize__atsutab, :initialize
  end
  
end
