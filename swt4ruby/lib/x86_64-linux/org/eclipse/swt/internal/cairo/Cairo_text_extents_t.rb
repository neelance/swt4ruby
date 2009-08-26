require "rjava"

# ***** BEGIN LICENSE BLOCK *****
# Version: MPL 1.1
# 
# The contents of this file are subject to the Mozilla Public License Version
# 1.1 (the "License"); you may not use this file except in compliance with
# the License. You may obtain a copy of the License at
# http://www.mozilla.org/MPL/
# 
# Software distributed under the License is distributed on an "AS IS" basis,
# WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
# for the specific language governing rights and limitations under the
# License.
# 
# Contributor(s):
# 
# IBM
# -  Binding to permit interfacing between Cairo and SWT
# -  Copyright (C) 2005 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Cairo
  module Cairo_text_extents_tImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cairo
    }
  end
  
  class Cairo_text_extents_t 
    include_class_members Cairo_text_extents_tImports
    
    attr_accessor :x_bearing
    alias_method :attr_x_bearing, :x_bearing
    undef_method :x_bearing
    alias_method :attr_x_bearing=, :x_bearing=
    undef_method :x_bearing=
    
    attr_accessor :y_bearing
    alias_method :attr_y_bearing, :y_bearing
    undef_method :y_bearing
    alias_method :attr_y_bearing=, :y_bearing=
    undef_method :y_bearing=
    
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    attr_accessor :x_advance
    alias_method :attr_x_advance, :x_advance
    undef_method :x_advance
    alias_method :attr_x_advance=, :x_advance=
    undef_method :x_advance=
    
    attr_accessor :y_advance
    alias_method :attr_y_advance, :y_advance
    undef_method :y_advance
    alias_method :attr_y_advance=, :y_advance=
    undef_method :y_advance=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { SwtCairo.cairo_text_extents_t_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @x_bearing = 0.0
      @y_bearing = 0.0
      @width = 0.0
      @height = 0.0
      @x_advance = 0.0
      @y_advance = 0.0
    end
    
    private
    alias_method :initialize_cairo_text_extents_t, :initialize
  end
  
end
