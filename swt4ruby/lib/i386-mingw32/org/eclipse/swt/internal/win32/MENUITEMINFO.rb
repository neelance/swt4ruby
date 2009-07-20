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
  module MENUITEMINFOImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class MENUITEMINFO 
    include_class_members MENUITEMINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    attr_accessor :f_mask
    alias_method :attr_f_mask, :f_mask
    undef_method :f_mask
    alias_method :attr_f_mask=, :f_mask=
    undef_method :f_mask=
    
    attr_accessor :f_type
    alias_method :attr_f_type, :f_type
    undef_method :f_type
    alias_method :attr_f_type=, :f_type=
    undef_method :f_type=
    
    attr_accessor :f_state
    alias_method :attr_f_state, :f_state
    undef_method :f_state
    alias_method :attr_f_state=, :f_state=
    undef_method :f_state=
    
    attr_accessor :w_id
    alias_method :attr_w_id, :w_id
    undef_method :w_id
    alias_method :attr_w_id=, :w_id=
    undef_method :w_id=
    
    # long
    attr_accessor :h_sub_menu
    alias_method :attr_h_sub_menu, :h_sub_menu
    undef_method :h_sub_menu
    alias_method :attr_h_sub_menu=, :h_sub_menu=
    undef_method :h_sub_menu=
    
    # long
    attr_accessor :hbmp_checked
    alias_method :attr_hbmp_checked, :hbmp_checked
    undef_method :hbmp_checked
    alias_method :attr_hbmp_checked=, :hbmp_checked=
    undef_method :hbmp_checked=
    
    # long
    attr_accessor :hbmp_unchecked
    alias_method :attr_hbmp_unchecked, :hbmp_unchecked
    undef_method :hbmp_unchecked
    alias_method :attr_hbmp_unchecked=, :hbmp_unchecked=
    undef_method :hbmp_unchecked=
    
    # long
    attr_accessor :dw_item_data
    alias_method :attr_dw_item_data, :dw_item_data
    undef_method :dw_item_data
    alias_method :attr_dw_item_data=, :dw_item_data=
    undef_method :dw_item_data=
    
    # long
    attr_accessor :dw_type_data
    alias_method :attr_dw_type_data, :dw_type_data
    undef_method :dw_type_data
    alias_method :attr_dw_type_data=, :dw_type_data=
    undef_method :dw_type_data=
    
    attr_accessor :cch
    alias_method :attr_cch, :cch
    undef_method :cch
    alias_method :attr_cch=, :cch=
    undef_method :cch=
    
    # long
    attr_accessor :hbmp_item
    alias_method :attr_hbmp_item, :hbmp_item
    undef_method :hbmp_item
    alias_method :attr_hbmp_item=, :hbmp_item=
    undef_method :hbmp_item=
    
    class_module.module_eval {
      # Feature in Windows.  The hbmpItem field requires Windows 4.10
      # or greater.  On Windows NT 4.0, passing in a larger struct size
      # in the cbSize field does nothing.  On Windows 95, the MENUITEMINFO
      # calls fail when the struct size is too large.  The fix is to ensure
      # that the correct struct size is used for the Windows platform.
      const_set_lazy(:Sizeof) { !OS::IsWinCE && OS::WIN32_VERSION >= OS._version(5, 0) ? OS._menuiteminfo_sizeof : 44 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @f_mask = 0
      @f_type = 0
      @f_state = 0
      @w_id = 0
      @h_sub_menu = 0
      @hbmp_checked = 0
      @hbmp_unchecked = 0
      @dw_item_data = 0
      @dw_type_data = 0
      @cch = 0
      @hbmp_item = 0
    end
    
    private
    alias_method :initialize__menuiteminfo, :initialize
  end
  
end
