require "rjava"

# Copyright (c) 2003, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module InputStreamImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include_const ::Org::Eclipse::Swt::Internal, :C
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class InputStream 
    include_class_members InputStreamImports
    
    attr_accessor :input_stream
    alias_method :attr_input_stream, :input_stream
    undef_method :input_stream
    alias_method :attr_input_stream=, :input_stream=
    undef_method :input_stream=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    attr_accessor :buffer
    alias_method :attr_buffer, :buffer
    undef_method :buffer
    alias_method :attr_buffer=, :buffer=
    undef_method :buffer=
    
    attr_accessor :index
    alias_method :attr_index, :index
    undef_method :index
    alias_method :attr_index=, :index=
    undef_method :index=
    
    typesig { [Array.typed(::Java::Byte)] }
    def initialize(buffer)
      @input_stream = nil
      @ref_count = 0
      @buffer = nil
      @index = 0
      @buffer = buffer
      @index = 0
      create_cominterfaces
    end
    
    typesig { [] }
    def _add_ref
      @ref_count += 1
      return @ref_count
    end
    
    typesig { [] }
    def create_cominterfaces
      @input_stream = # Create each of the interfaces that this object implements
      Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members InputStream
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method3 do |args|
          return _close
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          return _available(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          # 64
          return _read(args[0], RJava.cast_to_int(args[1]), args[2])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          # 64
          return _read_segments(args[0], args[1], RJava.cast_to_int(args[2]), args[3])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method7 do |args|
          return _is_non_blocking(args[0])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 0, 1, 3, 4, 1]))
    end
    
    typesig { [] }
    def dispose_cominterfaces
      if (!(@input_stream).nil?)
        @input_stream.dispose
        @input_stream = nil
      end
    end
    
    typesig { [] }
    # long
    def get_address
      return @input_stream.get_address
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _query_interface(riid, ppv_object)
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return XPCOM::NS_ERROR_NO_INTERFACE
      end
      guid = NsID.new
      XPCOM.memmove___org_eclipse_swt_browser_input_stream_1(guid, riid, self.attr_ns_id.attr_sizeof)
      if (guid._equals(NsISupports::NS_ISUPPORTS_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_input_stream_3(ppv_object, Array.typed(::Java::Int).new([@input_stream.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIInputStream::NS_IINPUTSTREAM_IID))
        # long
        XPCOM.memmove___org_eclipse_swt_browser_input_stream_5(ppv_object, Array.typed(::Java::Int).new([@input_stream.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      # long
      XPCOM.memmove___org_eclipse_swt_browser_input_stream_7(ppv_object, Array.typed(::Java::Int).new([0]), C::PTR_SIZEOF)
      return XPCOM::NS_ERROR_NO_INTERFACE
    end
    
    typesig { [] }
    def _release
      @ref_count -= 1
      if ((@ref_count).equal?(0))
        dispose_cominterfaces
      end
      return @ref_count
    end
    
    typesig { [] }
    # nsIInputStream implementation
    def _close
      @buffer = nil
      @index = 0
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int] }
    # long
    def _available(_retval)
      available = (@buffer).nil? ? 0 : @buffer.attr_length - @index
      XPCOM.memmove___org_eclipse_swt_browser_input_stream_9(_retval, Array.typed(::Java::Int).new([available]), 4)
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _read(a_buf, a_count, _retval)
      max = Math.min(a_count, (@buffer).nil? ? 0 : @buffer.attr_length - @index)
      if (max > 0)
        src = Array.typed(::Java::Byte).new(max) { 0 }
        System.arraycopy(@buffer, @index, src, 0, max)
        XPCOM.memmove___org_eclipse_swt_browser_input_stream_11(a_buf, src, max)
        @index += max
      end
      XPCOM.memmove___org_eclipse_swt_browser_input_stream_13(_retval, Array.typed(::Java::Int).new([max]), 4)
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def _read_segments(a_writer, a_closure, a_count, _retval)
      max = Math.min(a_count, (@buffer).nil? ? 0 : @buffer.attr_length - @index)
      cnt = max
      while (cnt > 0)
        a_write_count = Array.typed(::Java::Int).new(1) { 0 }
        # long
        rc = XPCOM._call(a_writer, get_address, a_closure, @buffer, @index, cnt, a_write_count)
        if (!(rc).equal?(XPCOM::NS_OK))
          break
        end
        @index += a_write_count[0]
        cnt -= a_write_count[0]
      end
      XPCOM.memmove___org_eclipse_swt_browser_input_stream_15(_retval, Array.typed(::Java::Int).new([max - cnt]), 4)
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int] }
    # long
    def _is_non_blocking(_retval)
      # blocking
      XPCOM.memmove___org_eclipse_swt_browser_input_stream_17(_retval, Array.typed(::Java::Int).new([0]), 4)
      return XPCOM::NS_OK
    end
    
    private
    alias_method :initialize__input_stream, :initialize
  end
  
end
