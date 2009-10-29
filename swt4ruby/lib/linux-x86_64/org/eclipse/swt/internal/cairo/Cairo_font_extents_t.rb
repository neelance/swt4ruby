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
# -  Copyright (C) 2005, 2006 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Cairo
  module Cairo_font_extents_tImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cairo
    }
  end
  
  class Cairo_font_extents_t 
    include_class_members Cairo_font_extents_tImports
    
    attr_accessor :ascent
    alias_method :attr_ascent, :ascent
    undef_method :ascent
    alias_method :attr_ascent=, :ascent=
    undef_method :ascent=
    
    attr_accessor :descent
    alias_method :attr_descent, :descent
    undef_method :descent
    alias_method :attr_descent=, :descent=
    undef_method :descent=
    
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    attr_accessor :max_x_advance
    alias_method :attr_max_x_advance, :max_x_advance
    undef_method :max_x_advance
    alias_method :attr_max_x_advance=, :max_x_advance=
    undef_method :max_x_advance=
    
    attr_accessor :max_y_advance
    alias_method :attr_max_y_advance, :max_y_advance
    undef_method :max_y_advance
    alias_method :attr_max_y_advance=, :max_y_advance=
    undef_method :max_y_advance=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { SwtCairo.cairo_font_extents_t_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @ascent = 0.0
      @descent = 0.0
      @height = 0.0
      @max_x_advance = 0.0
      @max_y_advance = 0.0
    end
    
    private
    alias_method :initialize_cairo_font_extents_t, :initialize
  end
  
end
