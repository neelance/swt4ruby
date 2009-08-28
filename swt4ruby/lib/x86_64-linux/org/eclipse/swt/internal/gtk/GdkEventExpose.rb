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
  module GdkEventExposeImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GdkEventExpose < GdkEventExposeImports.const_get :GdkEvent
    include_class_members GdkEventExposeImports
    
    # int
    attr_accessor :window
    alias_method :attr_window, :window
    undef_method :window
    alias_method :attr_window=, :window=
    undef_method :window=
    
    attr_accessor :send_event
    alias_method :attr_send_event, :send_event
    undef_method :send_event
    alias_method :attr_send_event=, :send_event=
    undef_method :send_event=
    
    attr_accessor :area_x
    alias_method :attr_area_x, :area_x
    undef_method :area_x
    alias_method :attr_area_x=, :area_x=
    undef_method :area_x=
    
    attr_accessor :area_y
    alias_method :attr_area_y, :area_y
    undef_method :area_y
    alias_method :attr_area_y=, :area_y=
    undef_method :area_y=
    
    attr_accessor :area_width
    alias_method :attr_area_width, :area_width
    undef_method :area_width
    alias_method :attr_area_width=, :area_width=
    undef_method :area_width=
    
    attr_accessor :area_height
    alias_method :attr_area_height, :area_height
    undef_method :area_height
    alias_method :attr_area_height=, :area_height=
    undef_method :area_height=
    
    # int
    attr_accessor :region
    alias_method :attr_region, :region
    undef_method :region
    alias_method :attr_region=, :region=
    undef_method :region=
    
    attr_accessor :count
    alias_method :attr_count, :count
    undef_method :count
    alias_method :attr_count=, :count=
    undef_method :count=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._gdk_event_expose_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @window = 0
      @send_event = 0
      @area_x = 0
      @area_y = 0
      @area_width = 0
      @area_height = 0
      @region = 0
      @count = 0
      super()
    end
    
    private
    alias_method :initialize__gdk_event_expose, :initialize
  end
  
end
