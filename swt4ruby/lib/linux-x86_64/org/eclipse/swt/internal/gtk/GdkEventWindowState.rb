require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others. All rights reserved.
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
  module GdkEventWindowStateImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GdkEventWindowState < GdkEventWindowStateImports.const_get :GdkEvent
    include_class_members GdkEventWindowStateImports
    
    # @field cast=(GdkWindow *)
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
    
    attr_accessor :changed_mask
    alias_method :attr_changed_mask, :changed_mask
    undef_method :changed_mask
    alias_method :attr_changed_mask=, :changed_mask=
    undef_method :changed_mask=
    
    attr_accessor :new_window_state
    alias_method :attr_new_window_state, :new_window_state
    undef_method :new_window_state
    alias_method :attr_new_window_state=, :new_window_state=
    undef_method :new_window_state=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._gdk_event_window_state_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @window = 0
      @send_event = 0
      @changed_mask = 0
      @new_window_state = 0
      super()
    end
    
    private
    alias_method :initialize__gdk_event_window_state, :initialize
  end
  
end
