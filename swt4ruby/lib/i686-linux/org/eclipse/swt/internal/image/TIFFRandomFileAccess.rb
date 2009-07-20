require "rjava"

# Copyright (c) 2000, 2003 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Image
  module TIFFRandomFileAccessImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Java::Io
    }
  end
  
  class TIFFRandomFileAccess 
    include_class_members TIFFRandomFileAccessImports
    
    attr_accessor :input_stream
    alias_method :attr_input_stream, :input_stream
    undef_method :input_stream
    alias_method :attr_input_stream=, :input_stream=
    undef_method :input_stream=
    
    attr_accessor :start
    alias_method :attr_start, :start
    undef_method :start
    alias_method :attr_start=, :start=
    undef_method :start=
    
    attr_accessor :current
    alias_method :attr_current, :current
    undef_method :current
    alias_method :attr_current=, :current=
    undef_method :current=
    
    attr_accessor :next
    alias_method :attr_next, :next
    undef_method :next
    alias_method :attr_next=, :next=
    undef_method :next=
    
    attr_accessor :buffers
    alias_method :attr_buffers, :buffers
    undef_method :buffers
    alias_method :attr_buffers=, :buffers=
    undef_method :buffers=
    
    class_module.module_eval {
      const_set_lazy(:CHUNK_SIZE) { 8192 }
      const_attr_reader  :CHUNK_SIZE
      
      const_set_lazy(:LIST_SIZE) { 128 }
      const_attr_reader  :LIST_SIZE
    }
    
    typesig { [LEDataInputStream] }
    def initialize(stream)
      @input_stream = nil
      @start = 0
      @current = 0
      @next = 0
      @buffers = nil
      @input_stream = stream
      @start = @current = @next = @input_stream.get_position
      @buffers = Array.typed(::Java::Byte).new(LIST_SIZE) { 0 }
    end
    
    typesig { [::Java::Int] }
    def seek(pos)
      if ((pos).equal?(@current))
        return
      end
      if (pos < @start)
        raise IOException.new
      end
      @current = pos
      if (@current > @next)
        n = @current - @next
        # store required bytes
        index = @next / CHUNK_SIZE
        offset = @next % CHUNK_SIZE
        while (n > 0)
          if (index >= @buffers.attr_length)
            old_buffers = @buffers
            @buffers = Array.typed(::Java::Byte).new(Math.max(index + 1, old_buffers.attr_length + LIST_SIZE)) { 0 }
            System.arraycopy(old_buffers, 0, @buffers, 0, old_buffers.attr_length)
          end
          if ((@buffers[index]).nil?)
            @buffers[index] = Array.typed(::Java::Byte).new(CHUNK_SIZE) { 0 }
          end
          cnt = @input_stream.read(@buffers[index], offset, Math.min(n, CHUNK_SIZE - offset))
          n -= cnt
          @next += cnt
          ((index += 1) - 1)
          offset = 0
        end
      end
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def read(b)
      size = b.attr_length
      n_cached = Math.min(size, @next - @current)
      n_missing = size - @next + @current
      dest_next = 0
      if (n_cached > 0)
        # Get cached bytes
        index = @current / CHUNK_SIZE
        offset = @current % CHUNK_SIZE
        while (n_cached > 0)
          cnt = Math.min(n_cached, CHUNK_SIZE - offset)
          System.arraycopy(@buffers[index], offset, b, dest_next, cnt)
          n_cached -= cnt
          dest_next += cnt
          ((index += 1) - 1)
          offset = 0
        end
      end
      if (n_missing > 0)
        # Read required bytes
        index = @next / CHUNK_SIZE
        offset = @next % CHUNK_SIZE
        while (n_missing > 0)
          if (index >= @buffers.attr_length)
            old_buffers = @buffers
            @buffers = Array.typed(::Java::Byte).new(Math.max(index, old_buffers.attr_length + LIST_SIZE)) { 0 }
            System.arraycopy(old_buffers, 0, @buffers, 0, old_buffers.attr_length)
          end
          if ((@buffers[index]).nil?)
            @buffers[index] = Array.typed(::Java::Byte).new(CHUNK_SIZE) { 0 }
          end
          cnt = @input_stream.read(@buffers[index], offset, Math.min(n_missing, CHUNK_SIZE - offset))
          System.arraycopy(@buffers[index], offset, b, dest_next, cnt)
          n_missing -= cnt
          @next += cnt
          dest_next += cnt
          ((index += 1) - 1)
          offset = 0
        end
      end
      @current += size
    end
    
    private
    alias_method :initialize__tiffrandom_file_access, :initialize
  end
  
end
