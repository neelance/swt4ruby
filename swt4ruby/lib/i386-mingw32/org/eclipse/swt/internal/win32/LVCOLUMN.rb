require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module LVCOLUMNImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class LVCOLUMN 
    include_class_members LVCOLUMNImports
    
    attr_accessor :mask
    alias_method :attr_mask, :mask
    undef_method :mask
    alias_method :attr_mask=, :mask=
    undef_method :mask=
    
    attr_accessor :fmt
    alias_method :attr_fmt, :fmt
    undef_method :fmt
    alias_method :attr_fmt=, :fmt=
    undef_method :fmt=
    
    attr_accessor :cx
    alias_method :attr_cx, :cx
    undef_method :cx
    alias_method :attr_cx=, :cx=
    undef_method :cx=
    
    # long
    attr_accessor :psz_text
    alias_method :attr_psz_text, :psz_text
    undef_method :psz_text
    alias_method :attr_psz_text=, :psz_text=
    undef_method :psz_text=
    
    attr_accessor :cch_text_max
    alias_method :attr_cch_text_max, :cch_text_max
    undef_method :cch_text_max
    alias_method :attr_cch_text_max=, :cch_text_max=
    undef_method :cch_text_max=
    
    attr_accessor :i_sub_item
    alias_method :attr_i_sub_item, :i_sub_item
    undef_method :i_sub_item
    alias_method :attr_i_sub_item=, :i_sub_item=
    undef_method :i_sub_item=
    
    attr_accessor :i_image
    alias_method :attr_i_image, :i_image
    undef_method :i_image
    alias_method :attr_i_image=, :i_image=
    undef_method :i_image=
    
    attr_accessor :i_order
    alias_method :attr_i_order, :i_order
    undef_method :i_order
    alias_method :attr_i_order=, :i_order=
    undef_method :i_order=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._lvcolumn_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @mask = 0
      @fmt = 0
      @cx = 0
      @psz_text = 0
      @cch_text_max = 0
      @i_sub_item = 0
      @i_image = 0
      @i_order = 0
    end
    
    private
    alias_method :initialize__lvcolumn, :initialize
  end
  
end
