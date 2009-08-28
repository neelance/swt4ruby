require "rjava"

# Copyright (c) 2003-2007 IBM Corp.
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
  module TextRangeImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class TextRange 
    include_class_members TextRangeImports
    
    attr_accessor :f_start
    alias_method :attr_f_start, :f_start
    undef_method :f_start
    alias_method :attr_f_start=, :f_start=
    undef_method :f_start=
    
    attr_accessor :f_end
    alias_method :attr_f_end, :f_end
    undef_method :f_end
    alias_method :attr_f_end=, :f_end=
    undef_method :f_end=
    
    attr_accessor :f_hilite_style
    alias_method :attr_f_hilite_style, :f_hilite_style
    undef_method :f_hilite_style
    alias_method :attr_f_hilite_style=, :f_hilite_style=
    undef_method :f_hilite_style=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 10 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @f_start = 0
      @f_end = 0
      @f_hilite_style = 0
    end
    
    private
    alias_method :initialize__text_range, :initialize
  end
  
end
