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
  module GdkEventFocusImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GdkEventFocus < GdkEventFocusImports.const_get :GdkEvent
    include_class_members GdkEventFocusImports
    
    # @field cast=(GdkWindow *)
    # int
    attr_accessor :window
    alias_method :attr_window, :window
    undef_method :window
    alias_method :attr_window=, :window=
    undef_method :window=
    
    # @field cast=(gint8)
    attr_accessor :send_event
    alias_method :attr_send_event, :send_event
    undef_method :send_event
    alias_method :attr_send_event=, :send_event=
    undef_method :send_event=
    
    # @field cast=(gint16)
    attr_accessor :in
    alias_method :attr_in, :in
    undef_method :in
    alias_method :attr_in=, :in=
    undef_method :in=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._gdk_event_focus_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @window = 0
      @send_event = 0
      @in = 0
      super()
    end
    
    private
    alias_method :initialize__gdk_event_focus, :initialize
  end
  
end
