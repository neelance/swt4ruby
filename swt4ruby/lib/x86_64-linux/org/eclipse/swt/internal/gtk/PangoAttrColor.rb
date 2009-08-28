require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others. All rights reserved.
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
  module PangoAttrColorImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class PangoAttrColor < PangoAttrColorImports.const_get :PangoAttribute
    include_class_members PangoAttrColorImports
    
    attr_accessor :color_red
    alias_method :attr_color_red, :color_red
    undef_method :color_red
    alias_method :attr_color_red=, :color_red=
    undef_method :color_red=
    
    attr_accessor :color_green
    alias_method :attr_color_green, :color_green
    undef_method :color_green
    alias_method :attr_color_green=, :color_green=
    undef_method :color_green=
    
    attr_accessor :color_blue
    alias_method :attr_color_blue, :color_blue
    undef_method :color_blue
    alias_method :attr_color_blue=, :color_blue=
    undef_method :color_blue=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._pango_attr_color_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @color_red = 0
      @color_green = 0
      @color_blue = 0
      super()
    end
    
    private
    alias_method :initialize__pango_attr_color, :initialize
  end
  
end
