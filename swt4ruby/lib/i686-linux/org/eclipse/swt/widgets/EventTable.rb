require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module EventTableImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # Instances of this class implement a simple
  # look up mechanism that maps an event type
  # to a listener.  Multiple listeners for the
  # same event type are supported.
  class EventTable 
    include_class_members EventTableImports
    
    attr_accessor :types
    alias_method :attr_types, :types
    undef_method :types
    alias_method :attr_types=, :types=
    undef_method :types=
    
    attr_accessor :listeners
    alias_method :attr_listeners, :listeners
    undef_method :listeners
    alias_method :attr_listeners=, :listeners=
    undef_method :listeners=
    
    attr_accessor :level
    alias_method :attr_level, :level
    undef_method :level
    alias_method :attr_level=, :level=
    undef_method :level=
    
    class_module.module_eval {
      const_set_lazy(:GROW_SIZE) { 4 }
      const_attr_reader  :GROW_SIZE
    }
    
    typesig { [::Java::Int] }
    def get_listeners(event_type)
      if ((@types).nil?)
        return Array.typed(Listener).new(0) { nil }
      end
      count = 0
      i = 0
      while i < @types.attr_length
        if ((@types[i]).equal?(event_type))
          count += 1
        end
        i += 1
      end
      if ((count).equal?(0))
        return Array.typed(Listener).new(0) { nil }
      end
      result = Array.typed(Listener).new(count) { nil }
      count = 0
      i_ = 0
      while i_ < @types.attr_length
        if ((@types[i_]).equal?(event_type))
          result[((count += 1) - 1)] = @listeners[i_]
        end
        i_ += 1
      end
      return result
    end
    
    typesig { [::Java::Int, Listener] }
    def hook(event_type, listener)
      if ((@types).nil?)
        @types = Array.typed(::Java::Int).new(GROW_SIZE) { 0 }
      end
      if ((@listeners).nil?)
        @listeners = Array.typed(Listener).new(GROW_SIZE) { nil }
      end
      length = @types.attr_length
      index = length - 1
      while (index >= 0)
        if (!(@types[index]).equal?(0))
          break
        end
        (index -= 1)
      end
      index += 1
      if ((index).equal?(length))
        new_types = Array.typed(::Java::Int).new(length + GROW_SIZE) { 0 }
        System.arraycopy(@types, 0, new_types, 0, length)
        @types = new_types
        new_listeners = Array.typed(Listener).new(length + GROW_SIZE) { nil }
        System.arraycopy(@listeners, 0, new_listeners, 0, length)
        @listeners = new_listeners
      end
      @types[index] = event_type
      @listeners[index] = listener
    end
    
    typesig { [::Java::Int] }
    def hooks(event_type)
      if ((@types).nil?)
        return false
      end
      i = 0
      while i < @types.attr_length
        if ((@types[i]).equal?(event_type))
          return true
        end
        i += 1
      end
      return false
    end
    
    typesig { [Event] }
    def send_event(event)
      if ((@types).nil?)
        return
      end
      @level += @level >= 0 ? 1 : -1
      begin
        i = 0
        while i < @types.attr_length
          if ((event.attr_type).equal?(SWT::None))
            return
          end
          if ((@types[i]).equal?(event.attr_type))
            listener = @listeners[i]
            if (!(listener).nil?)
              listener.handle_event(event)
            end
          end
          i += 1
        end
      ensure
        compact = @level < 0
        @level -= @level >= 0 ? 1 : -1
        if (compact && (@level).equal?(0))
          index = 0
          i_ = 0
          while i_ < @types.attr_length
            if (!(@types[i_]).equal?(0))
              @types[index] = @types[i_]
              @listeners[index] = @listeners[i_]
              index += 1
            end
            i_ += 1
          end
          i__ = index
          while i__ < @types.attr_length
            @types[i__] = 0
            @listeners[i__] = nil
            i__ += 1
          end
        end
      end
    end
    
    typesig { [] }
    def size
      if ((@types).nil?)
        return 0
      end
      count = 0
      i = 0
      while i < @types.attr_length
        if (!(@types[i]).equal?(0))
          count += 1
        end
        i += 1
      end
      return count
    end
    
    typesig { [::Java::Int] }
    def remove(index)
      if ((@level).equal?(0))
        end_ = @types.attr_length - 1
        System.arraycopy(@types, index + 1, @types, index, end_ - index)
        System.arraycopy(@listeners, index + 1, @listeners, index, end_ - index)
        index = end_
      else
        if (@level > 0)
          @level = -@level
        end
      end
      @types[index] = 0
      @listeners[index] = nil
    end
    
    typesig { [::Java::Int, Listener] }
    def unhook(event_type, listener)
      if ((@types).nil?)
        return
      end
      i = 0
      while i < @types.attr_length
        if ((@types[i]).equal?(event_type) && (@listeners[i]).equal?(listener))
          remove(i)
          return
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int, SWTEventListener] }
    def unhook(event_type, listener)
      if ((@types).nil?)
        return
      end
      i = 0
      while i < @types.attr_length
        if ((@types[i]).equal?(event_type))
          if (@listeners[i].is_a?(TypedListener))
            typed_listener = @listeners[i]
            if ((typed_listener.get_event_listener).equal?(listener))
              remove(i)
              return
            end
          end
        end
        i += 1
      end
    end
    
    typesig { [] }
    def initialize
      @types = nil
      @listeners = nil
      @level = 0
    end
    
    private
    alias_method :initialize__event_table, :initialize
  end
  
end
