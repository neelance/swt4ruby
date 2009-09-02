require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Gtk
  module XAnyEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class XAnyEvent < XAnyEventImports.const_get :XEvent
    include_class_members XAnyEventImports
    
    # long
    attr_accessor :serial
    alias_method :attr_serial, :serial
    undef_method :serial
    alias_method :attr_serial=, :serial=
    undef_method :serial=
    
    attr_accessor :send_event
    alias_method :attr_send_event, :send_event
    undef_method :send_event
    alias_method :attr_send_event=, :send_event=
    undef_method :send_event=
    
    # @field cast=(Display *)
    # long
    attr_accessor :display
    alias_method :attr_display, :display
    undef_method :display
    alias_method :attr_display=, :display=
    undef_method :display=
    
    # @field cast=(Window)
    # long
    attr_accessor :window
    alias_method :attr_window, :window
    undef_method :window
    alias_method :attr_window=, :window=
    undef_method :window=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._xany_event_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @serial = 0
      @send_event = 0
      @display = 0
      @window = 0
      super()
    end
    
    private
    alias_method :initialize__xany_event, :initialize
  end
  
end
