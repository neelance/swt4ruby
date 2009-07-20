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
  module ControlEditTextSelectionRecImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class ControlEditTextSelectionRec 
    include_class_members ControlEditTextSelectionRecImports
    
    attr_accessor :sel_start
    alias_method :attr_sel_start, :sel_start
    undef_method :sel_start
    alias_method :attr_sel_start=, :sel_start=
    undef_method :sel_start=
    
    attr_accessor :sel_end
    alias_method :attr_sel_end, :sel_end
    undef_method :sel_end
    alias_method :attr_sel_end=, :sel_end=
    undef_method :sel_end=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 4 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @sel_start = 0
      @sel_end = 0
    end
    
    private
    alias_method :initialize__control_edit_text_selection_rec, :initialize
  end
  
end
