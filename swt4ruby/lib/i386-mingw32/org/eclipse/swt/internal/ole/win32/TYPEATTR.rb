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
  module TYPEATTRImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class TYPEATTR 
    include_class_members TYPEATTRImports
    
    # GUID guid
    attr_accessor :guid_data1
    alias_method :attr_guid_data1, :guid_data1
    undef_method :guid_data1
    alias_method :attr_guid_data1=, :guid_data1=
    undef_method :guid_data1=
    
    attr_accessor :guid_data2
    alias_method :attr_guid_data2, :guid_data2
    undef_method :guid_data2
    alias_method :attr_guid_data2=, :guid_data2=
    undef_method :guid_data2=
    
    attr_accessor :guid_data3
    alias_method :attr_guid_data3, :guid_data3
    undef_method :guid_data3
    alias_method :attr_guid_data3=, :guid_data3=
    undef_method :guid_data3=
    
    attr_accessor :guid_data4
    alias_method :attr_guid_data4, :guid_data4
    undef_method :guid_data4
    alias_method :attr_guid_data4=, :guid_data4=
    undef_method :guid_data4=
    
    attr_accessor :lcid
    alias_method :attr_lcid, :lcid
    undef_method :lcid
    alias_method :attr_lcid=, :lcid=
    undef_method :lcid=
    
    attr_accessor :dw_reserved
    alias_method :attr_dw_reserved, :dw_reserved
    undef_method :dw_reserved
    alias_method :attr_dw_reserved=, :dw_reserved=
    undef_method :dw_reserved=
    
    attr_accessor :memid_constructor
    alias_method :attr_memid_constructor, :memid_constructor
    undef_method :memid_constructor
    alias_method :attr_memid_constructor=, :memid_constructor=
    undef_method :memid_constructor=
    
    attr_accessor :memid_destructor
    alias_method :attr_memid_destructor, :memid_destructor
    undef_method :memid_destructor
    alias_method :attr_memid_destructor=, :memid_destructor=
    undef_method :memid_destructor=
    
    # long
    attr_accessor :lpstr_schema
    alias_method :attr_lpstr_schema, :lpstr_schema
    undef_method :lpstr_schema
    alias_method :attr_lpstr_schema=, :lpstr_schema=
    undef_method :lpstr_schema=
    
    attr_accessor :cb_size_instance
    alias_method :attr_cb_size_instance, :cb_size_instance
    undef_method :cb_size_instance
    alias_method :attr_cb_size_instance=, :cb_size_instance=
    undef_method :cb_size_instance=
    
    attr_accessor :typekind
    alias_method :attr_typekind, :typekind
    undef_method :typekind
    alias_method :attr_typekind=, :typekind=
    undef_method :typekind=
    
    attr_accessor :c_funcs
    alias_method :attr_c_funcs, :c_funcs
    undef_method :c_funcs
    alias_method :attr_c_funcs=, :c_funcs=
    undef_method :c_funcs=
    
    attr_accessor :c_vars
    alias_method :attr_c_vars, :c_vars
    undef_method :c_vars
    alias_method :attr_c_vars=, :c_vars=
    undef_method :c_vars=
    
    attr_accessor :c_impl_types
    alias_method :attr_c_impl_types, :c_impl_types
    undef_method :c_impl_types
    alias_method :attr_c_impl_types=, :c_impl_types=
    undef_method :c_impl_types=
    
    attr_accessor :cb_size_vft
    alias_method :attr_cb_size_vft, :cb_size_vft
    undef_method :cb_size_vft
    alias_method :attr_cb_size_vft=, :cb_size_vft=
    undef_method :cb_size_vft=
    
    attr_accessor :cb_alignment
    alias_method :attr_cb_alignment, :cb_alignment
    undef_method :cb_alignment
    alias_method :attr_cb_alignment=, :cb_alignment=
    undef_method :cb_alignment=
    
    attr_accessor :w_type_flags
    alias_method :attr_w_type_flags, :w_type_flags
    undef_method :w_type_flags
    alias_method :attr_w_type_flags=, :w_type_flags=
    undef_method :w_type_flags=
    
    attr_accessor :w_major_ver_num
    alias_method :attr_w_major_ver_num, :w_major_ver_num
    undef_method :w_major_ver_num
    alias_method :attr_w_major_ver_num=, :w_major_ver_num=
    undef_method :w_major_ver_num=
    
    attr_accessor :w_minor_ver_num
    alias_method :attr_w_minor_ver_num, :w_minor_ver_num
    undef_method :w_minor_ver_num
    alias_method :attr_w_minor_ver_num=, :w_minor_ver_num=
    undef_method :w_minor_ver_num=
    
    # TYPEDESC tdescAlias
    # long
    attr_accessor :tdesc_alias_union_field
    alias_method :attr_tdesc_alias_union_field, :tdesc_alias_union_field
    undef_method :tdesc_alias_union_field
    alias_method :attr_tdesc_alias_union_field=, :tdesc_alias_union_field=
    undef_method :tdesc_alias_union_field=
    
    attr_accessor :tdesc_alias_vt
    alias_method :attr_tdesc_alias_vt, :tdesc_alias_vt
    undef_method :tdesc_alias_vt
    alias_method :attr_tdesc_alias_vt=, :tdesc_alias_vt=
    undef_method :tdesc_alias_vt=
    
    # IDLDESC idldesctype
    attr_accessor :idldesc_type_dw_reserved
    alias_method :attr_idldesc_type_dw_reserved, :idldesc_type_dw_reserved
    undef_method :idldesc_type_dw_reserved
    alias_method :attr_idldesc_type_dw_reserved=, :idldesc_type_dw_reserved=
    undef_method :idldesc_type_dw_reserved=
    
    attr_accessor :idldesc_type_w_idlflags
    alias_method :attr_idldesc_type_w_idlflags, :idldesc_type_w_idlflags
    undef_method :idldesc_type_w_idlflags
    alias_method :attr_idldesc_type_w_idlflags=, :idldesc_type_w_idlflags=
    undef_method :idldesc_type_w_idlflags=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { COM._typeattr_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @guid_data1 = 0
      @guid_data2 = 0
      @guid_data3 = 0
      @guid_data4 = Array.typed(::Java::Byte).new(8) { 0 }
      @lcid = 0
      @dw_reserved = 0
      @memid_constructor = 0
      @memid_destructor = 0
      @lpstr_schema = 0
      @cb_size_instance = 0
      @typekind = 0
      @c_funcs = 0
      @c_vars = 0
      @c_impl_types = 0
      @cb_size_vft = 0
      @cb_alignment = 0
      @w_type_flags = 0
      @w_major_ver_num = 0
      @w_minor_ver_num = 0
      @tdesc_alias_union_field = 0
      @tdesc_alias_vt = 0
      @idldesc_type_dw_reserved = 0
      @idldesc_type_w_idlflags = 0
    end
    
    private
    alias_method :initialize__typeattr, :initialize
  end
  
end
