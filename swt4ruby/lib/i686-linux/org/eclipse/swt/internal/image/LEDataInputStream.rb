require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Image
  module LEDataInputStreamImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Java::Io
    }
  end
  
  class LEDataInputStream < LEDataInputStreamImports.const_get :InputStream
    include_class_members LEDataInputStreamImports
    
    attr_accessor :position
    alias_method :attr_position, :position
    undef_method :position
    alias_method :attr_position=, :position=
    undef_method :position=
    
    attr_accessor :in
    alias_method :attr_in, :in
    undef_method :in
    alias_method :attr_in=, :in=
    undef_method :in=
    
    # The byte array containing the bytes to read.
    attr_accessor :buf
    alias_method :attr_buf, :buf
    undef_method :buf
    alias_method :attr_buf=, :buf=
    undef_method :buf=
    
    # The current position within the byte array <code>buf</code>. A value
    # equal to buf.length indicates no bytes available.  A value of
    # 0 indicates the buffer is full.
    attr_accessor :pos
    alias_method :attr_pos, :pos
    undef_method :pos
    alias_method :attr_pos=, :pos=
    undef_method :pos=
    
    typesig { [InputStream] }
    def initialize(input)
      initialize__ledata_input_stream(input, 512)
    end
    
    typesig { [InputStream, ::Java::Int] }
    def initialize(input, buffer_size)
      @position = 0
      @in = nil
      @buf = nil
      @pos = 0
      super()
      @in = input
      if (buffer_size > 0)
        @buf = Array.typed(::Java::Byte).new(buffer_size) { 0 }
        @pos = buffer_size
      else
        raise IllegalArgumentException.new
      end
    end
    
    typesig { [] }
    def close
      @buf = nil
      if (!(@in).nil?)
        @in.close
        @in = nil
      end
    end
    
    typesig { [] }
    # Answer how many bytes were read.
    def get_position
      return @position
    end
    
    typesig { [] }
    # Answers how many bytes are available for reading without blocking
    def available
      if ((@buf).nil?)
        raise IOException.new
      end
      return (@buf.attr_length - @pos) + @in.available
    end
    
    typesig { [] }
    # Answer the next byte of the input stream.
    def read
      if ((@buf).nil?)
        raise IOException.new
      end
      if (@pos < @buf.attr_length)
        @position += 1
        return (@buf[((@pos += 1) - 1)] & 0xff)
      end
      c = @in.read
      if (!(c).equal?(-1))
        @position += 1
      end
      return c
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
    # Don't imitate the JDK behaviour of reading a random number
    # of bytes when you can actually read them all.
    def read(b, off, len)
      read_ = 0
      count = 0
      while (!(read_).equal?(len) && !((count = read_data(b, off, len - read_))).equal?(-1))
        off += count
        read_ += count
      end
      @position += read_
      if ((read_).equal?(0) && !(read_).equal?(len))
        return -1
      end
      return read_
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
    # Reads at most <code>length</code> bytes from this LEDataInputStream and
    # stores them in byte array <code>buffer</code> starting at <code>offset</code>.
    # <p>
    # Answer the number of bytes actually read or -1 if no bytes were read and
    # end of stream was encountered.  This implementation reads bytes from
    # the pushback buffer first, then the target stream if more bytes are required
    # to satisfy <code>count</code>.
    # </p>
    # @param buffer the byte array in which to store the read bytes.
    # @param offset the offset in <code>buffer</code> to store the read bytes.
    # @param length the maximum number of bytes to store in <code>buffer</code>.
    # 
    # @return int the number of bytes actually read or -1 if end of stream.
    # 
    # @exception java.io.IOException if an IOException occurs.
    def read_data(buffer, offset, length)
      if ((@buf).nil?)
        raise IOException.new
      end
      if (offset < 0 || offset > buffer.attr_length || length < 0 || (length > buffer.attr_length - offset))
        raise ArrayIndexOutOfBoundsException.new
      end
      cache_copied = 0
      new_offset = offset
      # Are there pushback bytes available?
      available_ = @buf.attr_length - @pos
      if (available_ > 0)
        cache_copied = (available_ >= length) ? length : available_
        System.arraycopy(@buf, @pos, buffer, new_offset, cache_copied)
        new_offset += cache_copied
        @pos += cache_copied
      end
      # Have we copied enough?
      if ((cache_copied).equal?(length))
        return length
      end
      in_copied = @in.read(buffer, new_offset, length - cache_copied)
      if (in_copied > 0)
        return in_copied + cache_copied
      end
      if ((cache_copied).equal?(0))
        return in_copied
      end
      return cache_copied
    end
    
    typesig { [] }
    # Answer an integer comprised of the next
    # four bytes of the input stream.
    def read_int
      buf = Array.typed(::Java::Byte).new(4) { 0 }
      read(buf)
      return ((buf[3] & 0xff) << 24) | ((buf[2] & 0xff) << 16) | ((buf[1] & 0xff) << 8) | (buf[0] & 0xff)
    end
    
    typesig { [] }
    # Answer a short comprised of the next
    # two bytes of the input stream.
    def read_short
      buf = Array.typed(::Java::Byte).new(2) { 0 }
      read(buf)
      return RJava.cast_to_short((((buf[1] & 0xff) << 8) | (buf[0] & 0xff)))
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    # Push back the entire content of the given buffer <code>b</code>.
    # <p>
    # The bytes are pushed so that they would be read back b[0], b[1], etc.
    # If the push back buffer cannot handle the bytes copied from <code>b</code>,
    # an IOException will be thrown and no byte will be pushed back.
    # </p>
    # 
    # @param b the byte array containing bytes to push back into the stream
    # 
    # @exception 	java.io.IOException if the pushback buffer is too small
    def unread(b)
      length = b.attr_length
      if (length > @pos)
        raise IOException.new
      end
      @position -= length
      @pos -= length
      System.arraycopy(b, 0, @buf, @pos, length)
    end
    
    private
    alias_method :initialize__ledata_input_stream, :initialize
  end
  
end
