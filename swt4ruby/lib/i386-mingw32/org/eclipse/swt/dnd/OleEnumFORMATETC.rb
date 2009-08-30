require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Dnd
  module OleEnumFORMATETCImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class OleEnumFORMATETC 
    include_class_members OleEnumFORMATETCImports
    
    attr_accessor :i_unknown
    alias_method :attr_i_unknown, :i_unknown
    undef_method :i_unknown
    alias_method :attr_i_unknown=, :i_unknown=
    undef_method :i_unknown=
    
    attr_accessor :i_enum_formatetc
    alias_method :attr_i_enum_formatetc, :i_enum_formatetc
    undef_method :i_enum_formatetc
    alias_method :attr_i_enum_formatetc=, :i_enum_formatetc=
    undef_method :i_enum_formatetc=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    attr_accessor :index
    alias_method :attr_index, :index
    undef_method :index
    alias_method :attr_index=, :index=
    undef_method :index=
    
    attr_accessor :formats
    alias_method :attr_formats, :formats
    undef_method :formats
    alias_method :attr_formats=, :formats=
    undef_method :formats=
    
    typesig { [] }
    def initialize
      @i_unknown = nil
      @i_enum_formatetc = nil
      @ref_count = 0
      @index = 0
      @formats = nil
      create_cominterfaces
    end
    
    typesig { [] }
    def _add_ref
      @ref_count += 1
      return @ref_count
    end
    
    typesig { [] }
    def create_cominterfaces
      @i_unknown = # register each of the interfaces that this object implements
      Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members OleEnumFORMATETC
        include COMObject if COMObject.class == Module
        
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
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0]))
      # method6 Clone - not implemented
      @i_enum_formatetc = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members OleEnumFORMATETC
        include COMObject if COMObject.class == Module
        
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
          # 64
          return _next(RJava.cast_to_int(args[0]), args[1], args[2])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          # 64
          return _skip(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          return _reset
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 3, 1, 0, 1]))
    end
    
    typesig { [] }
    def dispose_cominterfaces
      if (!(@i_unknown).nil?)
        @i_unknown.dispose
      end
      @i_unknown = nil
      if (!(@i_enum_formatetc).nil?)
        @i_enum_formatetc.dispose
      end
      @i_enum_formatetc = nil
    end
    
    typesig { [] }
    # long
    def get_address
      return @i_enum_formatetc.get_address
    end
    
    typesig { [::Java::Int] }
    def get_next_items(num_items)
      if ((@formats).nil? || num_items < 1)
        return nil
      end
      end_index = @index + num_items - 1
      if (end_index > (@formats.attr_length - 1))
        end_index = @formats.attr_length - 1
      end
      if (@index > end_index)
        return nil
      end
      items = Array.typed(FORMATETC).new(end_index - @index + 1) { nil }
      i = 0
      while i < items.attr_length
        items[i] = @formats[@index]
        @index += 1
        i += 1
      end
      return items
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _next(celt, rgelt, pcelt_fetched)
      # Retrieves the next celt items in the enumeration sequence.
      # If there are fewer than the requested number of elements left in the sequence,
      # it retrieves the remaining elements.
      # The number of elements actually retrieved is returned through pceltFetched
      # (unless the caller passed in NULL for that parameter).
      if ((rgelt).equal?(0))
        return COM::E_INVALIDARG
      end
      if ((pcelt_fetched).equal?(0) && !(celt).equal?(1))
        return COM::E_INVALIDARG
      end
      next_items = get_next_items(celt)
      if (!(next_items).nil?)
        i = 0
        while i < next_items.attr_length
          COM._move_memory(rgelt + i * FORMATETC.attr_sizeof, next_items[i], FORMATETC.attr_sizeof)
          i += 1
        end
        if (!(pcelt_fetched).equal?(0))
          COM._move_memory(pcelt_fetched, Array.typed(::Java::Int).new([next_items.attr_length]), 4)
        end
        if ((next_items.attr_length).equal?(celt))
          return COM::S_OK
        end
      else
        if (!(pcelt_fetched).equal?(0))
          COM._move_memory(pcelt_fetched, Array.typed(::Java::Int).new([0]), 4)
        end
        COM._move_memory(rgelt, FORMATETC.new, FORMATETC.attr_sizeof)
      end
      return COM::S_FALSE
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _query_interface(riid, ppv_object)
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return COM::E_NOINTERFACE
      end
      guid = GUID.new
      COM._move_memory(guid, riid, GUID.attr_sizeof)
      if (COM._is_equal_guid(guid, COM::IIDIUnknown))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_unknown.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      if (COM._is_equal_guid(guid, COM::IIDIEnumFORMATETC))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_enum_formatetc.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      # long
      COM._move_memory(ppv_object, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
      return COM::E_NOINTERFACE
    end
    
    typesig { [] }
    def _release
      @ref_count -= 1
      if ((@ref_count).equal?(0))
        dispose_cominterfaces
        COM._co_free_unused_libraries
      end
      return @ref_count
    end
    
    typesig { [] }
    def _reset
      # Resets the enumeration sequence to the beginning.
      @index = 0
      return COM::S_OK
    end
    
    typesig { [Array.typed(FORMATETC)] }
    def set_formats(new_formats)
      @formats = new_formats
      @index = 0
    end
    
    typesig { [::Java::Int] }
    def _skip(celt)
      # Skips over the next specified number of elements in the enumeration sequence.
      if (celt < 1)
        return COM::E_INVALIDARG
      end
      @index += celt
      if (@index > (@formats.attr_length - 1))
        @index = @formats.attr_length - 1
        return COM::S_FALSE
      end
      return COM::S_OK
    end
    
    private
    alias_method :initialize__ole_enum_formatetc, :initialize
  end
  
end
