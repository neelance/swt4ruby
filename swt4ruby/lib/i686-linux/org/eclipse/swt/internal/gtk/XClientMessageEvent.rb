require "rjava"

# Copyright (c) 2000, 2004 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Gtk
  module XClientMessageEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class XClientMessageEvent 
    include_class_members XClientMessageEventImports
    
    attr_accessor :type
    alias_method :attr_type, :type
    undef_method :type
    alias_method :attr_type=, :type=
    undef_method :type=
    
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
    
    # long
    attr_accessor :display
    alias_method :attr_display, :display
    undef_method :display
    alias_method :attr_display=, :display=
    undef_method :display=
    
    # long
    attr_accessor :window
    alias_method :attr_window, :window
    undef_method :window
    alias_method :attr_window=, :window=
    undef_method :window=
    
    # long
    attr_accessor :message_type
    alias_method :attr_message_type, :message_type
    undef_method :message_type
    alias_method :attr_message_type=, :message_type=
    undef_method :message_type=
    
    attr_accessor :format
    alias_method :attr_format, :format
    undef_method :format
    alias_method :attr_format=, :format=
    undef_method :format=
    
    # long
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._xclient_message_event_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @type = 0
      @serial = 0
      @send_event = false
      @display = 0
      @window = 0
      @message_type = 0
      @format = 0
      # long
      @data = Array.typed(::Java::Int).new(5) { 0 }
    end
    
    private
    alias_method :initialize__xclient_message_event, :initialize
  end
  
end
