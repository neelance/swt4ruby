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
  module GdkEventScrollImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GdkEventScroll < GdkEventScrollImports.const_get :GdkEvent
    include_class_members GdkEventScrollImports
    
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
    
    attr_accessor :time
    alias_method :attr_time, :time
    undef_method :time
    alias_method :attr_time=, :time=
    undef_method :time=
    
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    attr_accessor :state
    alias_method :attr_state, :state
    undef_method :state
    alias_method :attr_state=, :state=
    undef_method :state=
    
    attr_accessor :direction
    alias_method :attr_direction, :direction
    undef_method :direction
    alias_method :attr_direction=, :direction=
    undef_method :direction=
    
    # int
    attr_accessor :device
    alias_method :attr_device, :device
    undef_method :device
    alias_method :attr_device=, :device=
    undef_method :device=
    
    attr_accessor :x_root
    alias_method :attr_x_root, :x_root
    undef_method :x_root
    alias_method :attr_x_root=, :x_root=
    undef_method :x_root=
    
    attr_accessor :y_root
    alias_method :attr_y_root, :y_root
    undef_method :y_root
    alias_method :attr_y_root=, :y_root=
    undef_method :y_root=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._gdk_event_scroll_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @window = 0
      @send_event = 0
      @time = 0
      @x = 0.0
      @y = 0.0
      @state = 0
      @direction = 0
      @device = 0
      @x_root = 0.0
      @y_root = 0.0
      super()
    end
    
    private
    alias_method :initialize__gdk_event_scroll, :initialize
  end
  
end
