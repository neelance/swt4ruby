require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module TVINSERTSTRUCTImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class TVINSERTSTRUCT 
    include_class_members TVINSERTSTRUCTImports
    
    # @field cast=(HTREEITEM)
    # long
    attr_accessor :h_parent
    alias_method :attr_h_parent, :h_parent
    undef_method :h_parent
    alias_method :attr_h_parent=, :h_parent=
    undef_method :h_parent=
    
    # @field cast=(HTREEITEM)
    # long
    attr_accessor :h_insert_after
    alias_method :attr_h_insert_after, :h_insert_after
    undef_method :h_insert_after
    alias_method :attr_h_insert_after=, :h_insert_after=
    undef_method :h_insert_after=
    
    # public TVITEMEX item;
    # @field accessor=item.mask
    attr_accessor :mask
    alias_method :attr_mask, :mask
    undef_method :mask
    alias_method :attr_mask=, :mask=
    undef_method :mask=
    
    # @field accessor=item.hItem,cast=(HTREEITEM)
    # long
    attr_accessor :h_item
    alias_method :attr_h_item, :h_item
    undef_method :h_item
    alias_method :attr_h_item=, :h_item=
    undef_method :h_item=
    
    # @field accessor=item.state
    attr_accessor :state
    alias_method :attr_state, :state
    undef_method :state
    alias_method :attr_state=, :state=
    undef_method :state=
    
    # @field accessor=item.stateMask
    attr_accessor :state_mask
    alias_method :attr_state_mask, :state_mask
    undef_method :state_mask
    alias_method :attr_state_mask=, :state_mask=
    undef_method :state_mask=
    
    # @field accessor=item.pszText,cast=(LPTSTR)
    # long
    attr_accessor :psz_text
    alias_method :attr_psz_text, :psz_text
    undef_method :psz_text
    alias_method :attr_psz_text=, :psz_text=
    undef_method :psz_text=
    
    # @field accessor=item.cchTextMax
    attr_accessor :cch_text_max
    alias_method :attr_cch_text_max, :cch_text_max
    undef_method :cch_text_max
    alias_method :attr_cch_text_max=, :cch_text_max=
    undef_method :cch_text_max=
    
    # @field accessor=item.iImage
    attr_accessor :i_image
    alias_method :attr_i_image, :i_image
    undef_method :i_image
    alias_method :attr_i_image=, :i_image=
    undef_method :i_image=
    
    # @field accessor=item.iSelectedImage
    attr_accessor :i_selected_image
    alias_method :attr_i_selected_image, :i_selected_image
    undef_method :i_selected_image
    alias_method :attr_i_selected_image=, :i_selected_image=
    undef_method :i_selected_image=
    
    # @field accessor=item.cChildren
    attr_accessor :c_children
    alias_method :attr_c_children, :c_children
    undef_method :c_children
    alias_method :attr_c_children=, :c_children=
    undef_method :c_children=
    
    # @field accessor=item.lParam
    # long
    attr_accessor :l_param
    alias_method :attr_l_param, :l_param
    undef_method :l_param
    alias_method :attr_l_param=, :l_param=
    undef_method :l_param=
    
    # @field accessor=itemex.iIntegral,flags=no_wince
    attr_accessor :i_integral
    alias_method :attr_i_integral, :i_integral
    undef_method :i_integral
    alias_method :attr_i_integral=, :i_integral=
    undef_method :i_integral=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._tvinsertstruct_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @h_parent = 0
      @h_insert_after = 0
      @mask = 0
      @h_item = 0
      @state = 0
      @state_mask = 0
      @psz_text = 0
      @cch_text_max = 0
      @i_image = 0
      @i_selected_image = 0
      @c_children = 0
      @l_param = 0
      @i_integral = 0
    end
    
    private
    alias_method :initialize__tvinsertstruct, :initialize
  end
  
end
