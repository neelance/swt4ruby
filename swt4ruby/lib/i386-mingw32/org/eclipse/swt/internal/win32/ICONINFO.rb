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
  module ICONINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class ICONINFO 
    include_class_members ICONINFOImports
    
    attr_accessor :f_icon
    alias_method :attr_f_icon, :f_icon
    undef_method :f_icon
    alias_method :attr_f_icon=, :f_icon=
    undef_method :f_icon=
    
    attr_accessor :x_hotspot
    alias_method :attr_x_hotspot, :x_hotspot
    undef_method :x_hotspot
    alias_method :attr_x_hotspot=, :x_hotspot=
    undef_method :x_hotspot=
    
    attr_accessor :y_hotspot
    alias_method :attr_y_hotspot, :y_hotspot
    undef_method :y_hotspot
    alias_method :attr_y_hotspot=, :y_hotspot=
    undef_method :y_hotspot=
    
    # long
    attr_accessor :hbm_mask
    alias_method :attr_hbm_mask, :hbm_mask
    undef_method :hbm_mask
    alias_method :attr_hbm_mask=, :hbm_mask=
    undef_method :hbm_mask=
    
    # long
    attr_accessor :hbm_color
    alias_method :attr_hbm_color, :hbm_color
    undef_method :hbm_color
    alias_method :attr_hbm_color=, :hbm_color=
    undef_method :hbm_color=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._iconinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @f_icon = false
      @x_hotspot = 0
      @y_hotspot = 0
      @hbm_mask = 0
      @hbm_color = 0
    end
    
    private
    alias_method :initialize__iconinfo, :initialize
  end
  
end
