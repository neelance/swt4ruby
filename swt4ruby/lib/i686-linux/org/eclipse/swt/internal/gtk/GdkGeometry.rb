require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others. All rights reserved.
# The contents of this file are made available under the terms
# of the GNU Lesser General Public License (LGPL) Version 2.1 that
# accompanies this distribution (lgpl-v21.txt).  The LGPL is also
# available at http://www.gnu.org/licenses/lgpl.html.  If the version
# of the LGPL at http://www.gnu.org is different to the version of
# the LGPL accompanying this distribution and there is any conflict
# between the two license versions, the terms of the LGPL accompanying
# this distribution shall govern.
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Gtk
  module GdkGeometryImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GdkGeometry 
    include_class_members GdkGeometryImports
    
    attr_accessor :min_width
    alias_method :attr_min_width, :min_width
    undef_method :min_width
    alias_method :attr_min_width=, :min_width=
    undef_method :min_width=
    
    attr_accessor :min_height
    alias_method :attr_min_height, :min_height
    undef_method :min_height
    alias_method :attr_min_height=, :min_height=
    undef_method :min_height=
    
    attr_accessor :max_width
    alias_method :attr_max_width, :max_width
    undef_method :max_width
    alias_method :attr_max_width=, :max_width=
    undef_method :max_width=
    
    attr_accessor :max_height
    alias_method :attr_max_height, :max_height
    undef_method :max_height
    alias_method :attr_max_height=, :max_height=
    undef_method :max_height=
    
    attr_accessor :base_width
    alias_method :attr_base_width, :base_width
    undef_method :base_width
    alias_method :attr_base_width=, :base_width=
    undef_method :base_width=
    
    attr_accessor :base_height
    alias_method :attr_base_height, :base_height
    undef_method :base_height
    alias_method :attr_base_height=, :base_height=
    undef_method :base_height=
    
    attr_accessor :width_inc
    alias_method :attr_width_inc, :width_inc
    undef_method :width_inc
    alias_method :attr_width_inc=, :width_inc=
    undef_method :width_inc=
    
    attr_accessor :height_inc
    alias_method :attr_height_inc, :height_inc
    undef_method :height_inc
    alias_method :attr_height_inc=, :height_inc=
    undef_method :height_inc=
    
    attr_accessor :min_aspect
    alias_method :attr_min_aspect, :min_aspect
    undef_method :min_aspect
    alias_method :attr_min_aspect=, :min_aspect=
    undef_method :min_aspect=
    
    attr_accessor :max_aspect
    alias_method :attr_max_aspect, :max_aspect
    undef_method :max_aspect
    alias_method :attr_max_aspect=, :max_aspect=
    undef_method :max_aspect=
    
    attr_accessor :win_gravity
    alias_method :attr_win_gravity, :win_gravity
    undef_method :win_gravity
    alias_method :attr_win_gravity=, :win_gravity=
    undef_method :win_gravity=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._gdk_geometry_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @min_width = 0
      @min_height = 0
      @max_width = 0
      @max_height = 0
      @base_width = 0
      @base_height = 0
      @width_inc = 0
      @height_inc = 0
      @min_aspect = 0.0
      @max_aspect = 0.0
      @win_gravity = 0
    end
    
    private
    alias_method :initialize__gdk_geometry, :initialize
  end
  
end
