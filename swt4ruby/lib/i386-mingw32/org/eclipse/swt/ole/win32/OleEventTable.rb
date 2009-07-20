require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Ole::Win32
  module OleEventTableImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Ole::Win32
    }
  end
  
  # The OleEventTable class implements a simple
  # look up mechanism that maps an event type
  # to a listener.  Multiple listeners for the
  # same event type are supported.
  class OleEventTable 
    include_class_members OleEventTableImports
    
    attr_accessor :types
    alias_method :attr_types, :types
    undef_method :types
    alias_method :attr_types=, :types=
    undef_method :types=
    
    attr_accessor :handlers
    alias_method :attr_handlers, :handlers
    undef_method :handlers
    alias_method :attr_handlers=, :handlers=
    undef_method :handlers=
    
    typesig { [::Java::Int, OleListener] }
    def hook(event_type, handler)
      if ((@types).nil?)
        @types = Array.typed(::Java::Int).new(4) { 0 }
      end
      if ((@handlers).nil?)
        @handlers = Array.typed(OleListener).new(4) { nil }
      end
      i = 0
      while i < @types.attr_length
        if ((@types[i]).equal?(0))
          @types[i] = event_type
          @handlers[i] = handler
          return
        end
        ((i += 1) - 1)
      end
      size = @types.attr_length
      new_types = Array.typed(::Java::Int).new(size + 4) { 0 }
      new_handlers = Array.typed(OleListener).new(size + 4) { nil }
      System.arraycopy(@types, 0, new_types, 0, size)
      System.arraycopy(@handlers, 0, new_handlers, 0, size)
      @types = new_types
      @handlers = new_handlers
      @types[size] = event_type
      @handlers[size] = handler
    end
    
    typesig { [::Java::Int] }
    def hooks(event_type)
      if ((@handlers).nil?)
        return false
      end
      i = 0
      while i < @types.attr_length
        if ((@types[i]).equal?(event_type))
          return true
        end
        ((i += 1) - 1)
      end
      return false
    end
    
    typesig { [OleEvent] }
    def send_event(event)
      if ((@handlers).nil?)
        return
      end
      i = 0
      while i < @types.attr_length
        if ((@types[i]).equal?(event.attr_type))
          listener = @handlers[i]
          if (!(listener).nil?)
            listener.handle_event(event)
          end
        end
        ((i += 1) - 1)
      end
    end
    
    typesig { [::Java::Int, OleListener] }
    def unhook(event_type, handler)
      if ((@handlers).nil?)
        return
      end
      i = 0
      while i < @types.attr_length
        if (((@types[i]).equal?(event_type)) && ((@handlers[i]).equal?(handler)))
          @types[i] = 0
          @handlers[i] = nil
          return
        end
        ((i += 1) - 1)
      end
    end
    
    typesig { [] }
    def has_entries
      i = 0
      while i < @types.attr_length
        if (!(@types[i]).equal?(0))
          return true
        end
        ((i += 1) - 1)
      end
      return false
    end
    
    typesig { [] }
    def initialize
      @types = nil
      @handlers = nil
    end
    
    private
    alias_method :initialize__ole_event_table, :initialize
  end
  
end
