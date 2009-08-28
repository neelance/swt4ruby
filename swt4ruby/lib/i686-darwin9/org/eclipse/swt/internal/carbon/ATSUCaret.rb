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
  module ATSUCaretImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class ATSUCaret 
    include_class_members ATSUCaretImports
    
    attr_accessor :f_x
    alias_method :attr_f_x, :f_x
    undef_method :f_x
    alias_method :attr_f_x=, :f_x=
    undef_method :f_x=
    
    attr_accessor :f_y
    alias_method :attr_f_y, :f_y
    undef_method :f_y
    alias_method :attr_f_y=, :f_y=
    undef_method :f_y=
    
    attr_accessor :f_delta_x
    alias_method :attr_f_delta_x, :f_delta_x
    undef_method :f_delta_x
    alias_method :attr_f_delta_x=, :f_delta_x=
    undef_method :f_delta_x=
    
    attr_accessor :f_delta_y
    alias_method :attr_f_delta_y, :f_delta_y
    undef_method :f_delta_y
    alias_method :attr_f_delta_y=, :f_delta_y=
    undef_method :f_delta_y=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 16 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @f_x = 0
      @f_y = 0
      @f_delta_x = 0
      @f_delta_y = 0
    end
    
    private
    alias_method :initialize__atsucaret, :initialize
  end
  
end
