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
  module GdkColorImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GdkColor 
    include_class_members GdkColorImports
    
    attr_accessor :pixel
    alias_method :attr_pixel, :pixel
    undef_method :pixel
    alias_method :attr_pixel=, :pixel=
    undef_method :pixel=
    
    attr_accessor :red
    alias_method :attr_red, :red
    undef_method :red
    alias_method :attr_red=, :red=
    undef_method :red=
    
    attr_accessor :green
    alias_method :attr_green, :green
    undef_method :green
    alias_method :attr_green=, :green=
    undef_method :green=
    
    attr_accessor :blue
    alias_method :attr_blue, :blue
    undef_method :blue
    alias_method :attr_blue=, :blue=
    undef_method :blue=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._gdk_color_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @pixel = 0
      @red = 0
      @green = 0
      @blue = 0
    end
    
    private
    alias_method :initialize__gdk_color, :initialize
  end
  
end
