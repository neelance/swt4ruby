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
  module TF_DISPLAYATTRIBUTEImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class TF_DISPLAYATTRIBUTE 
    include_class_members TF_DISPLAYATTRIBUTEImports
    
    attr_accessor :cr_text
    alias_method :attr_cr_text, :cr_text
    undef_method :cr_text
    alias_method :attr_cr_text=, :cr_text=
    undef_method :cr_text=
    
    attr_accessor :cr_bk
    alias_method :attr_cr_bk, :cr_bk
    undef_method :cr_bk
    alias_method :attr_cr_bk=, :cr_bk=
    undef_method :cr_bk=
    
    attr_accessor :ls_style
    alias_method :attr_ls_style, :ls_style
    undef_method :ls_style
    alias_method :attr_ls_style=, :ls_style=
    undef_method :ls_style=
    
    attr_accessor :f_bold_line
    alias_method :attr_f_bold_line, :f_bold_line
    undef_method :f_bold_line
    alias_method :attr_f_bold_line=, :f_bold_line=
    undef_method :f_bold_line=
    
    attr_accessor :cr_line
    alias_method :attr_cr_line, :cr_line
    undef_method :cr_line
    alias_method :attr_cr_line=, :cr_line=
    undef_method :cr_line=
    
    attr_accessor :b_attr
    alias_method :attr_b_attr, :b_attr
    undef_method :b_attr
    alias_method :attr_b_attr=, :b_attr=
    undef_method :b_attr=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._tf_displayattribute_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cr_text = TF_DA_COLOR.new
      @cr_bk = TF_DA_COLOR.new
      @ls_style = 0
      @f_bold_line = false
      @cr_line = TF_DA_COLOR.new
      @b_attr = 0
    end
    
    private
    alias_method :initialize__tf_displayattribute, :initialize
  end
  
end
