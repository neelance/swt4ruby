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
  module PixMapImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class PixMap < PixMapImports.const_get :BitMap
    include_class_members PixMapImports
    
    attr_accessor :pm_version
    alias_method :attr_pm_version, :pm_version
    undef_method :pm_version
    alias_method :attr_pm_version=, :pm_version=
    undef_method :pm_version=
    
    attr_accessor :pack_type
    alias_method :attr_pack_type, :pack_type
    undef_method :pack_type
    alias_method :attr_pack_type=, :pack_type=
    undef_method :pack_type=
    
    attr_accessor :pack_size
    alias_method :attr_pack_size, :pack_size
    undef_method :pack_size
    alias_method :attr_pack_size=, :pack_size=
    undef_method :pack_size=
    
    attr_accessor :h_res
    alias_method :attr_h_res, :h_res
    undef_method :h_res
    alias_method :attr_h_res=, :h_res=
    undef_method :h_res=
    
    attr_accessor :v_res
    alias_method :attr_v_res, :v_res
    undef_method :v_res
    alias_method :attr_v_res=, :v_res=
    undef_method :v_res=
    
    attr_accessor :pixel_type
    alias_method :attr_pixel_type, :pixel_type
    undef_method :pixel_type
    alias_method :attr_pixel_type=, :pixel_type=
    undef_method :pixel_type=
    
    attr_accessor :pixel_size
    alias_method :attr_pixel_size, :pixel_size
    undef_method :pixel_size
    alias_method :attr_pixel_size=, :pixel_size=
    undef_method :pixel_size=
    
    attr_accessor :cmp_count
    alias_method :attr_cmp_count, :cmp_count
    undef_method :cmp_count
    alias_method :attr_cmp_count=, :cmp_count=
    undef_method :cmp_count=
    
    attr_accessor :cmp_size
    alias_method :attr_cmp_size, :cmp_size
    undef_method :cmp_size
    alias_method :attr_cmp_size=, :cmp_size=
    undef_method :cmp_size=
    
    attr_accessor :pixel_format
    alias_method :attr_pixel_format, :pixel_format
    undef_method :pixel_format
    alias_method :attr_pixel_format=, :pixel_format=
    undef_method :pixel_format=
    
    attr_accessor :pm_table
    alias_method :attr_pm_table, :pm_table
    undef_method :pm_table
    alias_method :attr_pm_table=, :pm_table=
    undef_method :pm_table=
    
    attr_accessor :pm_ext
    alias_method :attr_pm_ext, :pm_ext
    undef_method :pm_ext
    alias_method :attr_pm_ext=, :pm_ext=
    undef_method :pm_ext=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 50 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @pm_version = 0
      @pack_type = 0
      @pack_size = 0
      @h_res = 0
      @v_res = 0
      @pixel_type = 0
      @pixel_size = 0
      @cmp_count = 0
      @cmp_size = 0
      @pixel_format = 0
      @pm_table = 0
      @pm_ext = 0
      super()
    end
    
    private
    alias_method :initialize__pix_map, :initialize
  end
  
end
