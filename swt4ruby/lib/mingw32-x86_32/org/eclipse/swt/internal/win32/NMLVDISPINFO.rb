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
  module NMLVDISPINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMLVDISPINFO < NMLVDISPINFOImports.const_get :NMHDR
    include_class_members NMLVDISPINFOImports
    
    # LVITEM item;
    # @field accessor=item.mask
    attr_accessor :mask
    alias_method :attr_mask, :mask
    undef_method :mask
    alias_method :attr_mask=, :mask=
    undef_method :mask=
    
    # @field accessor=item.iItem
    attr_accessor :i_item
    alias_method :attr_i_item, :i_item
    undef_method :i_item
    alias_method :attr_i_item=, :i_item=
    undef_method :i_item=
    
    # @field accessor=item.iSubItem
    attr_accessor :i_sub_item
    alias_method :attr_i_sub_item, :i_sub_item
    undef_method :i_sub_item
    alias_method :attr_i_sub_item=, :i_sub_item=
    undef_method :i_sub_item=
    
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
    
    # @field accessor=item.lParam
    # long
    attr_accessor :l_param
    alias_method :attr_l_param, :l_param
    undef_method :l_param
    alias_method :attr_l_param=, :l_param=
    undef_method :l_param=
    
    # @field accessor=item.iIndent
    attr_accessor :i_indent
    alias_method :attr_i_indent, :i_indent
    undef_method :i_indent
    alias_method :attr_i_indent=, :i_indent=
    undef_method :i_indent=
    
    # @field accessor=item.iGroupId,flags=no_wince
    attr_accessor :i_group_id
    alias_method :attr_i_group_id, :i_group_id
    undef_method :i_group_id
    alias_method :attr_i_group_id=, :i_group_id=
    undef_method :i_group_id=
    
    # @field accessor=item.cColumns,flags=no_wince
    attr_accessor :c_columns
    alias_method :attr_c_columns, :c_columns
    undef_method :c_columns
    alias_method :attr_c_columns=, :c_columns=
    undef_method :c_columns=
    
    # @field accessor=item.puColumns,cast=(PUINT),flags=no_wince
    # long
    attr_accessor :pu_columns
    alias_method :attr_pu_columns, :pu_columns
    undef_method :pu_columns
    alias_method :attr_pu_columns=, :pu_columns=
    undef_method :pu_columns=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { !OS::IsWinCE && OS::WIN32_VERSION >= OS._version(5, 1) ? OS._nmlvdispinfo_sizeof : 52 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @mask = 0
      @i_item = 0
      @i_sub_item = 0
      @state = 0
      @state_mask = 0
      @psz_text = 0
      @cch_text_max = 0
      @i_image = 0
      @l_param = 0
      @i_indent = 0
      @i_group_id = 0
      @c_columns = 0
      @pu_columns = 0
      super()
    end
    
    private
    alias_method :initialize__nmlvdispinfo, :initialize
  end
  
end
