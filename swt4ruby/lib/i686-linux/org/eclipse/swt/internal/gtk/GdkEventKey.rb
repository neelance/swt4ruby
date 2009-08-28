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
  module GdkEventKeyImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GdkEventKey < GdkEventKeyImports.const_get :GdkEvent
    include_class_members GdkEventKeyImports
    
    # long
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
    
    attr_accessor :state
    alias_method :attr_state, :state
    undef_method :state
    alias_method :attr_state=, :state=
    undef_method :state=
    
    attr_accessor :keyval
    alias_method :attr_keyval, :keyval
    undef_method :keyval
    alias_method :attr_keyval=, :keyval=
    undef_method :keyval=
    
    attr_accessor :length
    alias_method :attr_length, :length
    undef_method :length
    alias_method :attr_length=, :length=
    undef_method :length=
    
    # long
    attr_accessor :string
    alias_method :attr_string, :string
    undef_method :string
    alias_method :attr_string=, :string=
    undef_method :string=
    
    attr_accessor :hardware_keycode
    alias_method :attr_hardware_keycode, :hardware_keycode
    undef_method :hardware_keycode
    alias_method :attr_hardware_keycode=, :hardware_keycode=
    undef_method :hardware_keycode=
    
    attr_accessor :group
    alias_method :attr_group, :group
    undef_method :group
    alias_method :attr_group=, :group=
    undef_method :group=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._gdk_event_key_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @window = 0
      @send_event = 0
      @time = 0
      @state = 0
      @keyval = 0
      @length = 0
      @string = 0
      @hardware_keycode = 0
      @group = 0
      super()
    end
    
    private
    alias_method :initialize__gdk_event_key, :initialize
  end
  
end
