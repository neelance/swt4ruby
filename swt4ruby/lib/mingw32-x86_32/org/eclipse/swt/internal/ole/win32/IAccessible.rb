require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module IAccessibleImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IAccessible < IAccessibleImports.const_get :IDispatch
    include_class_members IAccessibleImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int] }
    # long
    def get_acc_parent(ppdisp_parent)
      return COM._vtbl_call(7, self.attr_address, ppdisp_parent)
    end
    
    typesig { [::Java::Int] }
    # long
    def get_acc_child_count(pcount_children)
      return COM._vtbl_call(8, self.attr_address, pcount_children)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_acc_child(variant, ppdisp_child)
      return COM._vtbl_call_variantp(9, self.attr_address, variant, ppdisp_child)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_acc_name(variant, psz_name)
      return COM._vtbl_call_variantp(10, self.attr_address, variant, psz_name)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_acc_value(variant, psz_value)
      return COM._vtbl_call_variantp(11, self.attr_address, variant, psz_value)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_acc_description(variant, psz_description)
      return COM._vtbl_call_variantp(12, self.attr_address, variant, psz_description)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_acc_role(variant, pvar_role)
      return COM._vtbl_call_variantp(13, self.attr_address, variant, pvar_role)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_acc_state(variant, pvar_state)
      return COM._vtbl_call_variantp(14, self.attr_address, variant, pvar_state)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_acc_help(variant, psz_help)
      return COM._vtbl_call_variantp(15, self.attr_address, variant, psz_help)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def get_acc_help_topic(psz_help_file, variant, pid_topic)
      return COM._vtbl_call_pvariantp(16, self.attr_address, psz_help_file, variant, pid_topic)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_acc_keyboard_shortcut(variant, psz_keyboard_shortcut)
      return COM._vtbl_call_variantp(17, self.attr_address, variant, psz_keyboard_shortcut)
    end
    
    typesig { [::Java::Int] }
    # long
    def get_acc_focus(pvar_child)
      return COM._vtbl_call(18, self.attr_address, pvar_child)
    end
    
    typesig { [::Java::Int] }
    # long
    def get_acc_selection(pvar_children)
      return COM._vtbl_call(19, self.attr_address, pvar_children)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_acc_default_action(variant, psz_default_action)
      return COM._vtbl_call_variantp(20, self.attr_address, variant, psz_default_action)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    def acc_select(flags_select, variant)
      return COM._vtbl_call_ivariant(21, self.attr_address, flags_select, variant)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def acc_location(px_left, py_top, pcx_width, pcy_height, variant)
      return COM._vtbl_call_ppppvariant(22, self.attr_address, px_left, py_top, pcx_width, pcy_height, variant)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def acc_navigate(nav_dir, variant, pvar_end_up_at)
      return COM._vtbl_call_ivariantp(23, self.attr_address, nav_dir, variant, pvar_end_up_at)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    def acc_hit_test(x_left, y_top, pvar_child)
      return COM._vtbl_call(24, self.attr_address, x_left, y_top, pvar_child)
    end
    
    typesig { [::Java::Int] }
    # long
    def acc_do_default_action(variant)
      return COM._vtbl_call_variant(25, self.attr_address, variant)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def put_acc_name(variant, sz_name)
      return COM._vtbl_call_variantp(26, self.attr_address, variant, sz_name)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def put_acc_value(variant, sz_value)
      return COM._vtbl_call_variantp(27, self.attr_address, variant, sz_value)
    end
    
    private
    alias_method :initialize__iaccessible, :initialize
  end
  
end
