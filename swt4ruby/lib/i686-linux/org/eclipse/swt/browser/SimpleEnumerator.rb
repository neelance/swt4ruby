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
  module SimpleEnumeratorImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include_const ::Org::Eclipse::Swt::Internal, :C
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class SimpleEnumerator 
    include_class_members SimpleEnumeratorImports
    
    attr_accessor :supports
    alias_method :attr_supports, :supports
    undef_method :supports
    alias_method :attr_supports=, :supports=
    undef_method :supports=
    
    attr_accessor :simple_enumerator
    alias_method :attr_simple_enumerator, :simple_enumerator
    undef_method :simple_enumerator
    alias_method :attr_simple_enumerator=, :simple_enumerator=
    undef_method :simple_enumerator=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    attr_accessor :values
    alias_method :attr_values, :values
    undef_method :values
    alias_method :attr_values=, :values=
    undef_method :values=
    
    attr_accessor :index
    alias_method :attr_index, :index
    undef_method :index
    alias_method :attr_index=, :index=
    undef_method :index=
    
    typesig { [Array.typed(NsISupports)] }
    def initialize(values)
      @supports = nil
      @simple_enumerator = nil
      @ref_count = 0
      @values = nil
      @index = 0
      @values = values
      i = 0
      while i < values.attr_length
        values[i]._add_ref
        i += 1
      end
      create_cominterfaces
    end
    
    typesig { [] }
    def _add_ref
      @ref_count += 1
      return @ref_count
    end
    
    typesig { [] }
    def create_cominterfaces
      @supports = # Create each of the interfaces that this object implements
      Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members SimpleEnumerator
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
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0]))
      @simple_enumerator = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members SimpleEnumerator
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
          return _has_more_elements(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          return _get_next(args[0])
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 1, 1]))
    end
    
    typesig { [] }
    def dispose_cominterfaces
      if (!(@supports).nil?)
        @supports.dispose
        @supports = nil
      end
      if (!(@simple_enumerator).nil?)
        @simple_enumerator.dispose
        @simple_enumerator = nil
      end
      if (!(@values).nil?)
        i = 0
        while i < @values.attr_length
          @values[i]._release
          i += 1
        end
        @values = nil
      end
    end
    
    typesig { [] }
    # long
    def get_address
      return @simple_enumerator.get_address
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _query_interface(riid, ppv_object)
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return XPCOM::NS_ERROR_NO_INTERFACE
      end
      guid = NsID.new
      XPCOM.memmove(guid, riid, self.attr_ns_id.attr_sizeof)
      if (guid._equals(NsISupports::NS_ISUPPORTS_IID))
        # long
        XPCOM.memmove(ppv_object, Array.typed(::Java::Int).new([@supports.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsISimpleEnumerator::NS_ISIMPLEENUMERATOR_IID))
        # long
        XPCOM.memmove(ppv_object, Array.typed(::Java::Int).new([@simple_enumerator.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      # long
      XPCOM.memmove(ppv_object, Array.typed(::Java::Int).new([0]), C::PTR_SIZEOF)
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
    
    typesig { [::Java::Int] }
    # long
    def _has_more_elements(_retval)
      more = !(@values).nil? && @index < @values.attr_length
      XPCOM.memmove(_retval, Array.typed(::Java::Int).new([more ? 1 : 0]), 4)
      # PRBool
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_next(_retval)
      if ((@values).nil? || (@index).equal?(@values.attr_length))
        return XPCOM::NS_ERROR_UNEXPECTED
      end
      value = @values[((@index += 1) - 1)]
      value._add_ref
      # long
      XPCOM.memmove(_retval, Array.typed(::Java::Int).new([value.get_address]), C::PTR_SIZEOF)
      return XPCOM::NS_OK
    end
    
    private
    alias_method :initialize__simple_enumerator, :initialize
  end
  
end
