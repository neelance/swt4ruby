require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Ole::Win32
  module VariantImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Ole::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  # A Variant is a generic OLE mechanism for passing data of different types via a common interface.
  # 
  # <p>It is used within the OleAutomation object for getting a property, setting a property or invoking
  # a method on an OLE Control or OLE Document.
  class Variant 
    include_class_members VariantImports
    
    class_module.module_eval {
      # The size in bytes of a native VARIANT struct.
      const_set_lazy(:Sizeof) { VARIANT.attr_sizeof }
      const_attr_reader  :Sizeof
    }
    
    attr_accessor :type
    alias_method :attr_type, :type
    undef_method :type
    alias_method :attr_type=, :type=
    undef_method :type=
    
    # OLE.VT_* type
    attr_accessor :boolean_data
    alias_method :attr_boolean_data, :boolean_data
    undef_method :boolean_data
    alias_method :attr_boolean_data=, :boolean_data=
    undef_method :boolean_data=
    
    attr_accessor :byte_data
    alias_method :attr_byte_data, :byte_data
    undef_method :byte_data
    alias_method :attr_byte_data=, :byte_data=
    undef_method :byte_data=
    
    attr_accessor :short_data
    alias_method :attr_short_data, :short_data
    undef_method :short_data
    alias_method :attr_short_data=, :short_data=
    undef_method :short_data=
    
    attr_accessor :char_data
    alias_method :attr_char_data, :char_data
    undef_method :char_data
    alias_method :attr_char_data=, :char_data=
    undef_method :char_data=
    
    attr_accessor :int_data
    alias_method :attr_int_data, :int_data
    undef_method :int_data
    alias_method :attr_int_data=, :int_data=
    undef_method :int_data=
    
    attr_accessor :long_data
    alias_method :attr_long_data, :long_data
    undef_method :long_data
    alias_method :attr_long_data=, :long_data=
    undef_method :long_data=
    
    attr_accessor :float_data
    alias_method :attr_float_data, :float_data
    undef_method :float_data
    alias_method :attr_float_data=, :float_data=
    undef_method :float_data=
    
    attr_accessor :double_data
    alias_method :attr_double_data, :double_data
    undef_method :double_data
    alias_method :attr_double_data=, :double_data=
    undef_method :double_data=
    
    attr_accessor :string_data
    alias_method :attr_string_data, :string_data
    undef_method :string_data
    alias_method :attr_string_data=, :string_data=
    undef_method :string_data=
    
    # long
    attr_accessor :by_ref_ptr
    alias_method :attr_by_ref_ptr, :by_ref_ptr
    undef_method :by_ref_ptr
    alias_method :attr_by_ref_ptr=, :by_ref_ptr=
    undef_method :by_ref_ptr=
    
    attr_accessor :dispatch_data
    alias_method :attr_dispatch_data, :dispatch_data
    undef_method :dispatch_data
    alias_method :attr_dispatch_data=, :dispatch_data=
    undef_method :dispatch_data=
    
    attr_accessor :unknown_data
    alias_method :attr_unknown_data, :unknown_data
    undef_method :unknown_data
    alias_method :attr_unknown_data=, :unknown_data=
    undef_method :unknown_data=
    
    class_module.module_eval {
      typesig { [::Java::Int, Variant] }
      # Invokes platform specific functionality to copy a variant
      # into operating system memory.
      # <p>
      # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
      # API for <code>Variant</code>. It is marked public only so that it
      # can be shared within the packages provided by SWT. It is not
      # available on all platforms, and should never be called from
      # application code.
      # </p>
      # 
      # @param pVarDest destination pointer to a variant
      # @param varSrc source <code>Variant</code>
      # 
      # @since 3.3
      # 
      # long
      def win32_copy(p_var_dest, var_src)
        var_src.get_data(p_var_dest)
      end
      
      typesig { [::Java::Int] }
      # Invokes platform specific functionality to wrap a variant
      # that was allocated in operating system memory.
      # <p>
      # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
      # API for <code>Variant</code>. It is marked public only so that it
      # can be shared within the packages provided by SWT. It is not
      # available on all platforms, and should never be called from
      # application code.
      # </p>
      # 
      # @param pVariant pointer to a variant
      # 
      # @return a new <code>Variant</code>
      # 
      # @since 3.3
      # 
      # long
      def win32_new(p_variant)
        variant = Variant.new
        variant.set_data(p_variant)
        return variant
      end
    }
    
    typesig { [] }
    # Create an empty Variant object with type VT_EMPTY.
    # 
    # @since 2.0
    def initialize
      @type = 0
      @boolean_data = false
      @byte_data = 0
      @short_data = 0
      @char_data = 0
      @int_data = 0
      @long_data = 0
      @float_data = 0.0
      @double_data = 0.0
      @string_data = nil
      @by_ref_ptr = 0
      @dispatch_data = nil
      @unknown_data = nil
      @type = COM::VT_EMPTY
    end
    
    typesig { [::Java::Float] }
    # Create a Variant object which represents a Java float as a VT_R4.
    # 
    # @param val the Java float value that this Variant represents
    def initialize(val)
      @type = 0
      @boolean_data = false
      @byte_data = 0
      @short_data = 0
      @char_data = 0
      @int_data = 0
      @long_data = 0
      @float_data = 0.0
      @double_data = 0.0
      @string_data = nil
      @by_ref_ptr = 0
      @dispatch_data = nil
      @unknown_data = nil
      @type = COM::VT_R4
      @float_data = val
    end
    
    typesig { [::Java::Double] }
    # Create a Variant object which represents a Java double as a VT_R8.
    # 
    # @param val the Java double value that this Variant represents
    # 
    # @since 3.2
    def initialize(val)
      @type = 0
      @boolean_data = false
      @byte_data = 0
      @short_data = 0
      @char_data = 0
      @int_data = 0
      @long_data = 0
      @float_data = 0.0
      @double_data = 0.0
      @string_data = nil
      @by_ref_ptr = 0
      @dispatch_data = nil
      @unknown_data = nil
      @type = COM::VT_R8
      @double_data = val
    end
    
    typesig { [::Java::Int] }
    # Create a Variant object which represents a Java int as a VT_I4.
    # 
    # @param val the Java int value that this Variant represents
    def initialize(val)
      @type = 0
      @boolean_data = false
      @byte_data = 0
      @short_data = 0
      @char_data = 0
      @int_data = 0
      @long_data = 0
      @float_data = 0.0
      @double_data = 0.0
      @string_data = nil
      @by_ref_ptr = 0
      @dispatch_data = nil
      @unknown_data = nil
      @type = COM::VT_I4
      @int_data = val
    end
    
    typesig { [::Java::Int, ::Java::Short] }
    # Create a Variant object which contains a reference to the data being transferred.
    # 
    # <p>When creating a VT_BYREF Variant, you must give the full Variant type
    # including VT_BYREF such as
    # 
    # <pre><code>short byRefType = OLE.VT_BSTR | OLE.VT_BYREF</code></pre>.
    # 
    # @param ptr a pointer to the data being transferred.
    # @param byRefType the type of the data being transferred such as OLE.VT_BSTR | OLE.VT_BYREF
    # 
    # 
    # long
    def initialize(ptr, by_ref_type)
      @type = 0
      @boolean_data = false
      @byte_data = 0
      @short_data = 0
      @char_data = 0
      @int_data = 0
      @long_data = 0
      @float_data = 0.0
      @double_data = 0.0
      @string_data = nil
      @by_ref_ptr = 0
      @dispatch_data = nil
      @unknown_data = nil
      @type = by_ref_type
      @by_ref_ptr = ptr
    end
    
    typesig { [OleAutomation] }
    # Create a Variant object which represents an IDispatch interface as a VT_Dispatch.
    # 
    # @param automation the OleAutomation object that this Variant represents
    def initialize(automation)
      @type = 0
      @boolean_data = false
      @byte_data = 0
      @short_data = 0
      @char_data = 0
      @int_data = 0
      @long_data = 0
      @float_data = 0.0
      @double_data = 0.0
      @string_data = nil
      @by_ref_ptr = 0
      @dispatch_data = nil
      @unknown_data = nil
      @type = COM::VT_DISPATCH
      @dispatch_data = IDispatch.new(automation.get_address)
    end
    
    typesig { [IDispatch] }
    # Create a Variant object which represents an IDispatch interface as a VT_Dispatch.
    # <p>The caller is expected to have appropriately invoked unknown.AddRef() before creating
    # this Variant.
    # 
    # @since 2.0
    # 
    # @param idispatch the IDispatch object that this Variant represents
    def initialize(idispatch)
      @type = 0
      @boolean_data = false
      @byte_data = 0
      @short_data = 0
      @char_data = 0
      @int_data = 0
      @long_data = 0
      @float_data = 0.0
      @double_data = 0.0
      @string_data = nil
      @by_ref_ptr = 0
      @dispatch_data = nil
      @unknown_data = nil
      @type = COM::VT_DISPATCH
      @dispatch_data = idispatch
    end
    
    typesig { [IUnknown] }
    # Create a Variant object which represents an IUnknown interface as a VT_UNKNOWN.
    # 
    # <p>The caller is expected to have appropriately invoked unknown.AddRef() before creating
    # this Variant.
    # 
    # @param unknown the IUnknown object that this Variant represents
    def initialize(unknown)
      @type = 0
      @boolean_data = false
      @byte_data = 0
      @short_data = 0
      @char_data = 0
      @int_data = 0
      @long_data = 0
      @float_data = 0.0
      @double_data = 0.0
      @string_data = nil
      @by_ref_ptr = 0
      @dispatch_data = nil
      @unknown_data = nil
      @type = COM::VT_UNKNOWN
      @unknown_data = unknown
    end
    
    typesig { [::Java::Long] }
    # Create a Variant object which represents a Java long as a VT_I8.
    # 
    # @param val the Java long value that this Variant represents
    # 
    # @since 3.2
    def initialize(val)
      @type = 0
      @boolean_data = false
      @byte_data = 0
      @short_data = 0
      @char_data = 0
      @int_data = 0
      @long_data = 0
      @float_data = 0.0
      @double_data = 0.0
      @string_data = nil
      @by_ref_ptr = 0
      @dispatch_data = nil
      @unknown_data = nil
      @type = COM::VT_I8
      @long_data = val
    end
    
    typesig { [String] }
    # Create a Variant object which represents a Java String as a VT_BSTR.
    # 
    # @param string the Java String value that this Variant represents
    def initialize(string)
      @type = 0
      @boolean_data = false
      @byte_data = 0
      @short_data = 0
      @char_data = 0
      @int_data = 0
      @long_data = 0
      @float_data = 0.0
      @double_data = 0.0
      @string_data = nil
      @by_ref_ptr = 0
      @dispatch_data = nil
      @unknown_data = nil
      @type = COM::VT_BSTR
      @string_data = string
    end
    
    typesig { [::Java::Short] }
    # Create a Variant object which represents a Java short as a VT_I2.
    # 
    # @param val the Java short value that this Variant represents
    def initialize(val)
      @type = 0
      @boolean_data = false
      @byte_data = 0
      @short_data = 0
      @char_data = 0
      @int_data = 0
      @long_data = 0
      @float_data = 0.0
      @double_data = 0.0
      @string_data = nil
      @by_ref_ptr = 0
      @dispatch_data = nil
      @unknown_data = nil
      @type = COM::VT_I2
      @short_data = val
    end
    
    typesig { [::Java::Boolean] }
    # Create a Variant object which represents a Java boolean as a VT_BOOL.
    # 
    # @param val the Java boolean value that this Variant represents
    def initialize(val)
      @type = 0
      @boolean_data = false
      @byte_data = 0
      @short_data = 0
      @char_data = 0
      @int_data = 0
      @long_data = 0
      @float_data = 0.0
      @double_data = 0.0
      @string_data = nil
      @by_ref_ptr = 0
      @dispatch_data = nil
      @unknown_data = nil
      @type = COM::VT_BOOL
      @boolean_data = val
    end
    
    typesig { [] }
    # Calling dispose will release resources associated with this Variant.
    # If the resource is an IDispatch or IUnknown interface, Release will be called.
    # If the resource is a ByRef pointer, nothing is released.
    # 
    # @since 2.1
    def dispose
      if (((@type & COM::VT_BYREF)).equal?(COM::VT_BYREF))
        return
      end
      case (@type)
      when COM::VT_DISPATCH
        @dispatch_data._release
      when COM::VT_UNKNOWN
        @unknown_data._release
      end
    end
    
    typesig { [] }
    # Returns the OleAutomation object represented by this Variant.
    # 
    # <p>If this Variant does not contain an OleAutomation object, an attempt is made to
    # coerce the Variant type into an OleAutomation object.  If this fails, an error is
    # thrown.  Note that OleAutomation objects must be disposed when no longer
    # needed.
    # 
    # @return the OleAutomation object represented by this Variant
    # 
    # @exception SWTException <ul>
    # <li>ERROR_CANNOT_CHANGE_VARIANT_TYPE when type of Variant can not be coerced into an OleAutomation object</li>
    # </ul>
    def get_automation
      if ((@type).equal?(COM::VT_EMPTY))
        OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, -1)
      end
      if ((@type).equal?(COM::VT_DISPATCH))
        return OleAutomation.new(@dispatch_data)
      end
      # try to coerce the value to the desired type
      # long
      old_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      # long
      new_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      begin
        get_data(old_ptr)
        result = COM._variant_change_type(new_ptr, old_ptr, RJava.cast_to_short(0), COM::VT_DISPATCH)
        if (!(result).equal?(COM::S_OK))
          OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, result)
        end
        auto_var = Variant.new
        auto_var.set_data(new_ptr)
        return auto_var.get_automation
      ensure
        COM._variant_clear(old_ptr)
        OS._global_free(old_ptr)
        COM._variant_clear(new_ptr) # Note: This must absolutely be done AFTER the
        # OleAutomation object is created as Variant Clear
        # will result in a Release being performed on the
        # Dispatch object
        OS._global_free(new_ptr)
      end
    end
    
    typesig { [] }
    # Returns the IDispatch object represented by this Variant.
    # 
    # <p>If this Variant does not contain an IDispatch object, an attempt is made to
    # coerce the Variant type into an IDIspatch object.  If this fails, an error is
    # thrown.
    # 
    # @since 2.0
    # 
    # @return the IDispatch object represented by this Variant
    # 
    # @exception SWTException <ul>
    # <li>ERROR_CANNOT_CHANGE_VARIANT_TYPE when type of Variant can not be coerced into an IDispatch object</li>
    # </ul>
    def get_dispatch
      if ((@type).equal?(COM::VT_EMPTY))
        OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, -1)
      end
      if ((@type).equal?(COM::VT_DISPATCH))
        return @dispatch_data
      end
      # try to coerce the value to the desired type
      # long
      old_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      # long
      new_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      begin
        get_data(old_ptr)
        result = COM._variant_change_type(new_ptr, old_ptr, RJava.cast_to_short(0), COM::VT_DISPATCH)
        if (!(result).equal?(COM::S_OK))
          OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, result)
        end
        auto_var = Variant.new
        auto_var.set_data(new_ptr)
        return auto_var.get_dispatch
      ensure
        COM._variant_clear(old_ptr)
        OS._global_free(old_ptr)
        COM._variant_clear(new_ptr) # Note: This must absolutely be done AFTER the
        # OleAutomation object is created as Variant Clear
        # will result in a Release being performed on the
        # Dispatch object
        OS._global_free(new_ptr)
      end
    end
    
    typesig { [] }
    # Returns the Java boolean represented by this Variant.
    # 
    # <p>If this Variant does not contain a Java boolean, an attempt is made to
    # coerce the Variant type into a Java boolean.  If this fails, an error is thrown.
    # 
    # @return the Java boolean represented by this Variant
    # 
    # @exception SWTException <ul>
    # <li>ERROR_CANNOT_CHANGE_VARIANT_TYPE when type of Variant can not be coerced into a boolean</li>
    # </ul>
    def get_boolean
      if ((@type).equal?(COM::VT_EMPTY))
        OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, -1)
      end
      if ((@type).equal?(COM::VT_BOOL))
        return @boolean_data
      end
      # try to coerce the value to the desired type
      # long
      old_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      # long
      new_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      begin
        get_data(old_ptr)
        result = COM._variant_change_type(new_ptr, old_ptr, RJava.cast_to_short(0), COM::VT_BOOL)
        if (!(result).equal?(COM::S_OK))
          OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, result)
        end
        bool_var = Variant.new
        bool_var.set_data(new_ptr)
        return bool_var.get_boolean
      ensure
        COM._variant_clear(old_ptr)
        OS._global_free(old_ptr)
        COM._variant_clear(new_ptr)
        OS._global_free(new_ptr)
      end
    end
    
    typesig { [] }
    # Returns a pointer to the referenced data represented by this Variant.
    # 
    # <p>If this Variant does not contain a reference to data, zero is returned.
    # 
    # @return a pointer to the referenced data represented by this Variant or 0
    # 
    # 
    # long
    def get_by_ref
      if ((@type).equal?(COM::VT_EMPTY))
        OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, -1)
      end
      if (((@type & COM::VT_BYREF)).equal?(COM::VT_BYREF))
        return @by_ref_ptr
      end
      return 0
    end
    
    typesig { [] }
    # Returns the Java byte represented by this Variant.
    # 
    # <p>If this Variant does not contain a Java byte, an attempt is made to
    # coerce the Variant type into a Java byte.  If this fails, an error is thrown.
    # 
    # @return the Java byte represented by this Variant
    # 
    # @exception SWTException <ul>
    # <li>ERROR_CANNOT_CHANGE_VARIANT_TYPE when type of Variant can not be coerced into a byte</li>
    # </ul>
    # 
    # @since 3.3
    def get_byte
      if ((@type).equal?(COM::VT_EMPTY))
        OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, -1)
      end
      if ((@type).equal?(COM::VT_I1))
        return @byte_data
      end
      # try to coerce the value to the desired type
      # long
      old_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      # long
      new_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      begin
        get_data(old_ptr)
        result = COM._variant_change_type(new_ptr, old_ptr, RJava.cast_to_short(0), COM::VT_I1)
        if (!(result).equal?(COM::S_OK))
          OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, result)
        end
        byte_var = Variant.new
        byte_var.set_data(new_ptr)
        return byte_var.get_byte
      ensure
        COM._variant_clear(old_ptr)
        OS._global_free(old_ptr)
        COM._variant_clear(new_ptr)
        OS._global_free(new_ptr)
      end
    end
    
    typesig { [] }
    # Returns the Java char represented by this Variant.
    # 
    # <p>If this Variant does not contain a Java char, an attempt is made to
    # coerce the Variant type into a Java char.  If this fails, an error is thrown.
    # 
    # @return the Java char represented by this Variant
    # 
    # @exception SWTException <ul>
    # <li>ERROR_CANNOT_CHANGE_VARIANT_TYPE when type of Variant can not be coerced into a char</li>
    # </ul>
    # 
    # @since 3.3
    def get_char
      if ((@type).equal?(COM::VT_EMPTY))
        OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, -1)
      end
      if ((@type).equal?(COM::VT_UI2))
        return @char_data
      end
      # try to coerce the value to the desired type
      # long
      old_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      # long
      new_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      begin
        get_data(old_ptr)
        result = COM._variant_change_type(new_ptr, old_ptr, RJava.cast_to_short(0), COM::VT_UI2)
        if (!(result).equal?(COM::S_OK))
          OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, result)
        end
        char_var = Variant.new
        char_var.set_data(new_ptr)
        return char_var.get_char
      ensure
        COM._variant_clear(old_ptr)
        OS._global_free(old_ptr)
        COM._variant_clear(new_ptr)
        OS._global_free(new_ptr)
      end
    end
    
    typesig { [::Java::Int] }
    # long
    def get_data(p_data)
      if ((p_data).equal?(0))
        OLE.error(OLE::ERROR_OUT_OF_MEMORY)
      end
      COM._variant_init(p_data)
      if (((@type & COM::VT_BYREF)).equal?(COM::VT_BYREF))
        # TODO - use VARIANT structure
        COM._move_memory(p_data, Array.typed(::Java::Short).new([@type]), 2)
        # long
        COM._move_memory(p_data + 8, Array.typed(::Java::Int).new([@by_ref_ptr]), OS::PTR_SIZEOF)
        return
      end
      case (@type)
      when COM::VT_EMPTY, COM::VT_NULL
        COM._move_memory(p_data, Array.typed(::Java::Short).new([@type]), 2)
      when COM::VT_BOOL
        COM._move_memory(p_data, Array.typed(::Java::Short).new([@type]), 2)
        COM._move_memory(p_data + 8, Array.typed(::Java::Short).new([(@boolean_data) ? COM::VARIANT_TRUE : COM::VARIANT_FALSE]), 2)
      when COM::VT_I1
        COM._move_memory(p_data, Array.typed(::Java::Short).new([@type]), 2)
        COM._move_memory(p_data + 8, Array.typed(::Java::Byte).new([@byte_data]), 1)
      when COM::VT_I2
        COM._move_memory(p_data, Array.typed(::Java::Short).new([@type]), 2)
        COM._move_memory(p_data + 8, Array.typed(::Java::Short).new([@short_data]), 2)
      when COM::VT_UI2
        COM._move_memory(p_data, Array.typed(::Java::Short).new([@type]), 2)
        COM._move_memory(p_data + 8, Array.typed(::Java::Char).new([@char_data]), 2)
      when COM::VT_I4
        COM._move_memory(p_data, Array.typed(::Java::Short).new([@type]), 2)
        COM._move_memory(p_data + 8, Array.typed(::Java::Int).new([@int_data]), 4)
      when COM::VT_I8
        COM._move_memory(p_data, Array.typed(::Java::Short).new([@type]), 2)
        COM._move_memory(p_data + 8, Array.typed(::Java::Long).new([@long_data]), 8)
      when COM::VT_R4
        COM._move_memory(p_data, Array.typed(::Java::Short).new([@type]), 2)
        COM._move_memory(p_data + 8, Array.typed(::Java::Float).new([@float_data]), 4)
      when COM::VT_R8
        COM._move_memory(p_data, Array.typed(::Java::Short).new([@type]), 2)
        COM._move_memory(p_data + 8, Array.typed(::Java::Double).new([@double_data]), 8)
      when COM::VT_DISPATCH
        @dispatch_data._add_ref
        COM._move_memory(p_data, Array.typed(::Java::Short).new([@type]), 2)
        # long
        COM._move_memory(p_data + 8, Array.typed(::Java::Int).new([@dispatch_data.get_address]), OS::PTR_SIZEOF)
      when COM::VT_UNKNOWN
        @unknown_data._add_ref
        COM._move_memory(p_data, Array.typed(::Java::Short).new([@type]), 2)
        # long
        COM._move_memory(p_data + 8, Array.typed(::Java::Int).new([@unknown_data.get_address]), OS::PTR_SIZEOF)
      when COM::VT_BSTR
        COM._move_memory(p_data, Array.typed(::Java::Short).new([@type]), 2)
        data = (@string_data + "\0").to_char_array
        # long
        ptr = COM._sys_alloc_string(data)
        # long
        COM._move_memory(p_data + 8, Array.typed(::Java::Int).new([ptr]), OS::PTR_SIZEOF)
      else
        OLE.error(SWT::ERROR_NOT_IMPLEMENTED)
      end
    end
    
    typesig { [] }
    # Returns the Java double represented by this Variant.
    # 
    # <p>If this Variant does not contain a Java double, an attempt is made to
    # coerce the Variant type into a Java double.  If this fails, an error is thrown.
    # 
    # @return the Java double represented by this Variant
    # 
    # @exception SWTException <ul>
    # <li>ERROR_CANNOT_CHANGE_VARIANT_TYPE when type of Variant can not be coerced into a double</li>
    # </ul>
    # 
    # @since 3.2
    def get_double
      if ((@type).equal?(COM::VT_EMPTY))
        OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, -1)
      end
      if ((@type).equal?(COM::VT_R8))
        return @double_data
      end
      # try to coerce the value to the desired type
      # long
      old_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      # long
      new_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      begin
        get_data(old_ptr)
        result = COM._variant_change_type(new_ptr, old_ptr, RJava.cast_to_short(0), COM::VT_R8)
        if (!(result).equal?(COM::S_OK))
          OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, result)
        end
        double_var = Variant.new
        double_var.set_data(new_ptr)
        return double_var.get_double
      ensure
        COM._variant_clear(old_ptr)
        OS._global_free(old_ptr)
        COM._variant_clear(new_ptr)
        OS._global_free(new_ptr)
      end
    end
    
    typesig { [] }
    # Returns the Java float represented by this Variant.
    # 
    # <p>If this Variant does not contain a Java float, an attempt is made to
    # coerce the Variant type into a Java float.  If this fails, an error is thrown.
    # 
    # @return the Java float represented by this Variant
    # 
    # @exception SWTException <ul>
    # <li>ERROR_CANNOT_CHANGE_VARIANT_TYPE when type of Variant can not be coerced into a float</li>
    # </ul>
    def get_float
      if ((@type).equal?(COM::VT_EMPTY))
        OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, -1)
      end
      if ((@type).equal?(COM::VT_R4))
        return @float_data
      end
      # try to coerce the value to the desired type
      # long
      old_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      # long
      new_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      begin
        get_data(old_ptr)
        result = COM._variant_change_type(new_ptr, old_ptr, RJava.cast_to_short(0), COM::VT_R4)
        if (!(result).equal?(COM::S_OK))
          OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, result)
        end
        float_var = Variant.new
        float_var.set_data(new_ptr)
        return float_var.get_float
      ensure
        COM._variant_clear(old_ptr)
        OS._global_free(old_ptr)
        COM._variant_clear(new_ptr)
        OS._global_free(new_ptr)
      end
    end
    
    typesig { [] }
    # Returns the Java int represented by this Variant.
    # 
    # <p>If this Variant does not contain a Java int, an attempt is made to
    # coerce the Variant type into a Java int.  If this fails, an error is thrown.
    # 
    # @return the Java int represented by this Variant
    # 
    # @exception SWTException <ul>
    # <li>ERROR_CANNOT_CHANGE_VARIANT_TYPE when type of Variant can not be coerced into a int</li>
    # </ul>
    def get_int
      if ((@type).equal?(COM::VT_EMPTY))
        OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, -1)
      end
      if ((@type).equal?(COM::VT_I4))
        return @int_data
      end
      # try to coerce the value to the desired type
      # long
      old_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      # long
      new_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      begin
        get_data(old_ptr)
        result = COM._variant_change_type(new_ptr, old_ptr, RJava.cast_to_short(0), COM::VT_I4)
        if (!(result).equal?(COM::S_OK))
          OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, result)
        end
        int_var = Variant.new
        int_var.set_data(new_ptr)
        return int_var.get_int
      ensure
        COM._variant_clear(old_ptr)
        OS._global_free(old_ptr)
        COM._variant_clear(new_ptr)
        OS._global_free(new_ptr)
      end
    end
    
    typesig { [] }
    # Returns the Java long represented by this Variant.
    # 
    # <p>If this Variant does not contain a Java long, an attempt is made to
    # coerce the Variant type into a Java long.  If this fails, an error is thrown.
    # 
    # @return the Java long represented by this Variant
    # 
    # @exception SWTException <ul>
    # <li>ERROR_CANNOT_CHANGE_VARIANT_TYPE when type of Variant can not be coerced into a long</li>
    # </ul>
    # 
    # @since 3.2
    def get_long
      if ((@type).equal?(COM::VT_EMPTY))
        OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, -1)
      end
      if ((@type).equal?(COM::VT_I8))
        return @long_data
      end
      # try to coerce the value to the desired type
      # long
      old_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      # long
      new_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      begin
        get_data(old_ptr)
        result = COM._variant_change_type(new_ptr, old_ptr, RJava.cast_to_short(0), COM::VT_I8)
        if (!(result).equal?(COM::S_OK))
          OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, result)
        end
        long_var = Variant.new
        long_var.set_data(new_ptr)
        return long_var.get_long
      ensure
        COM._variant_clear(old_ptr)
        OS._global_free(old_ptr)
        COM._variant_clear(new_ptr)
        OS._global_free(new_ptr)
      end
    end
    
    typesig { [] }
    # Returns the Java short represented by this Variant.
    # 
    # <p>If this Variant does not contain a Java short, an attempt is made to
    # coerce the Variant type into a Java short.  If this fails, an error is thrown.
    # 
    # @return the Java short represented by this Variant
    # 
    # @exception SWTException <ul>
    # <li>ERROR_CANNOT_CHANGE_VARIANT_TYPE when type of Variant can not be coerced into a short</li>
    # </ul>
    def get_short
      if ((@type).equal?(COM::VT_EMPTY))
        OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, -1)
      end
      if ((@type).equal?(COM::VT_I2))
        return @short_data
      end
      # try to coerce the value to the desired type
      # long
      old_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      # long
      new_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      begin
        get_data(old_ptr)
        result = COM._variant_change_type(new_ptr, old_ptr, RJava.cast_to_short(0), COM::VT_I2)
        if (!(result).equal?(COM::S_OK))
          OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, result)
        end
        short_var = Variant.new
        short_var.set_data(new_ptr)
        return short_var.get_short
      ensure
        COM._variant_clear(old_ptr)
        OS._global_free(old_ptr)
        COM._variant_clear(new_ptr)
        OS._global_free(new_ptr)
      end
    end
    
    typesig { [] }
    # Returns the Java String represented by this Variant.
    # 
    # <p>If this Variant does not contain a Java String, an attempt is made to
    # coerce the Variant type into a Java String.  If this fails, an error is thrown.
    # 
    # @return the Java String represented by this Variant
    # 
    # @exception SWTException <ul>
    # <li>ERROR_CANNOT_CHANGE_VARIANT_TYPE when type of Variant can not be coerced into a String</li>
    # </ul>
    def get_string
      if ((@type).equal?(COM::VT_EMPTY))
        OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, -1)
      end
      if ((@type).equal?(COM::VT_BSTR))
        return @string_data
      end
      # try to coerce the value to the desired type
      # long
      old_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      # long
      new_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      begin
        get_data(old_ptr)
        result = COM._variant_change_type(new_ptr, old_ptr, RJava.cast_to_short(0), COM::VT_BSTR)
        if (!(result).equal?(COM::S_OK))
          OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, result)
        end
        string_var = Variant.new
        string_var.set_data(new_ptr)
        return string_var.get_string
      ensure
        COM._variant_clear(old_ptr)
        OS._global_free(old_ptr)
        COM._variant_clear(new_ptr)
        OS._global_free(new_ptr)
      end
    end
    
    typesig { [] }
    # Returns the type of the variant type.  This will be an OLE.VT_* value or
    # a bitwise combination of OLE.VT_* values as in the case of
    # OLE.VT_BSTR | OLE.VT_BYREF.
    # 
    # @return the type of the variant data
    # 
    # @since 2.0
    def get_type
      return @type
    end
    
    typesig { [] }
    # Returns the IUnknown object represented by this Variant.
    # 
    # <p>If this Variant does not contain an IUnknown object, an attempt is made to
    # coerce the Variant type into an IUnknown object.  If this fails, an error is
    # thrown.
    # 
    # @return the IUnknown object represented by this Variant
    # 
    # @exception SWTException <ul>
    # <li>ERROR_CANNOT_CHANGE_VARIANT_TYPE when type of Variant can not be coerced into
    # an IUnknown object</li>
    # </ul>
    def get_unknown
      if ((@type).equal?(COM::VT_EMPTY))
        OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, -1)
      end
      if ((@type).equal?(COM::VT_UNKNOWN))
        return @unknown_data
      end
      # try to coerce the value to the desired type
      # long
      old_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      # long
      new_ptr = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, Sizeof)
      begin
        get_data(old_ptr)
        result = COM._variant_change_type(new_ptr, old_ptr, RJava.cast_to_short(0), COM::VT_UNKNOWN)
        if (!(result).equal?(COM::S_OK))
          OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE, result)
        end
        unknown_var = Variant.new
        unknown_var.set_data(new_ptr)
        return unknown_var.get_unknown
      ensure
        COM._variant_clear(old_ptr)
        OS._global_free(old_ptr)
        COM._variant_clear(new_ptr) # Note: This must absolutely be done AFTER the
        # IUnknown object is created as Variant Clear
        # will result in a Release being performed on the
        # Dispatch object
        OS._global_free(new_ptr)
      end
    end
    
    typesig { [::Java::Boolean] }
    # Update the by reference value of this variant with a new boolean value.
    # 
    # @param val the new boolean value
    # 
    # @exception SWTException <ul>
    # <li>ERROR_CANNOT_CHANGE_VARIANT_TYPE when type of Variant is not
    # a (VT_BYREF | VT_BOOL) object</li>
    # </ul>
    # 
    # @since 2.1
    def set_by_ref(val)
      if (((@type & COM::VT_BYREF)).equal?(0) || ((@type & COM::VT_BOOL)).equal?(0))
        OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE)
      end
      COM._move_memory(@by_ref_ptr, Array.typed(::Java::Short).new([val ? COM::VARIANT_TRUE : COM::VARIANT_FALSE]), 2)
    end
    
    typesig { [::Java::Float] }
    # Update the by reference value of this variant with a new float value.
    # 
    # @param val the new float value
    # 
    # @exception SWTException <ul>
    # <li>ERROR_CANNOT_CHANGE_VARIANT_TYPE when type of Variant is not
    # a (VT_BYREF | VT_R4) object</li>
    # </ul>
    # 
    # @since 2.1
    def set_by_ref(val)
      if (((@type & COM::VT_BYREF)).equal?(0) || ((@type & COM::VT_R4)).equal?(0))
        OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE)
      end
      COM._move_memory(@by_ref_ptr, Array.typed(::Java::Float).new([val]), 4)
    end
    
    typesig { [::Java::Int] }
    # Update the by reference value of this variant with a new integer value.
    # 
    # @param val the new integer value
    # 
    # @exception SWTException <ul>
    # <li>ERROR_CANNOT_CHANGE_VARIANT_TYPE when type of Variant is not a (VT_BYREF | VT_I4) object</li>
    # </ul>
    # 
    # @since 2.1
    # 
    # long
    def set_by_ref(val)
      if (((@type & COM::VT_BYREF)).equal?(0) || ((@type & COM::VT_I4)).equal?(0))
        OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE)
      end
      # long
      COM._move_memory(@by_ref_ptr, Array.typed(::Java::Int).new([val]), OS::PTR_SIZEOF)
    end
    
    typesig { [::Java::Short] }
    # Update the by reference value of this variant with a new short value.
    # 
    # @param val the new short value
    # 
    # @exception SWTException <ul>
    # <li>ERROR_CANNOT_CHANGE_VARIANT_TYPE when type of Variant is not a (VT_BYREF | VT_I2) object
    # </ul>
    # 
    # @since 2.1
    def set_by_ref(val)
      if (((@type & COM::VT_BYREF)).equal?(0) || ((@type & COM::VT_I2)).equal?(0))
        OLE.error(OLE::ERROR_CANNOT_CHANGE_VARIANT_TYPE)
      end
      COM._move_memory(@by_ref_ptr, Array.typed(::Java::Short).new([val]), 2)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_data(p_data)
      if ((p_data).equal?(0))
        OLE.error(OLE::ERROR_INVALID_ARGUMENT)
      end
      # TODO - use VARIANT structure
      data_type = Array.typed(::Java::Short).new(1) { 0 }
      COM._move_memory(data_type, p_data, 2)
      @type = data_type[0]
      if (((@type & COM::VT_BYREF)).equal?(COM::VT_BYREF))
        # long
        # long
        new_by_ref_ptr = Array.typed(::Java::Int).new(1) { 0 }
        OS._move_memory(new_by_ref_ptr, p_data + 8, OS::PTR_SIZEOF)
        @by_ref_ptr = new_by_ref_ptr[0]
        return
      end
      catch(:break_case) do
        case (@type)
        when COM::VT_EMPTY, COM::VT_NULL
        when COM::VT_BOOL
          new_boolean_data = Array.typed(::Java::Short).new(1) { 0 }
          COM._move_memory(new_boolean_data, p_data + 8, 2)
          @boolean_data = (!(new_boolean_data[0]).equal?(COM::VARIANT_FALSE))
        when COM::VT_I1
          new_byte_data = Array.typed(::Java::Byte).new(1) { 0 }
          COM._move_memory(new_byte_data, p_data + 8, 1)
          @byte_data = new_byte_data[0]
        when COM::VT_I2
          new_short_data = Array.typed(::Java::Short).new(1) { 0 }
          COM._move_memory(new_short_data, p_data + 8, 2)
          @short_data = new_short_data[0]
        when COM::VT_UI2
          new_char_data = CharArray.new(1)
          COM._move_memory(new_char_data, p_data + 8, 2)
          @char_data = new_char_data[0]
        when COM::VT_I4
          new_int_data = Array.typed(::Java::Int).new(1) { 0 }
          OS._move_memory(new_int_data, p_data + 8, 4)
          @int_data = new_int_data[0]
        when COM::VT_I8
          new_long_data = Array.typed(::Java::Long).new(1) { 0 }
          OS._move_memory(new_long_data, p_data + 8, 8)
          @long_data = new_long_data[0]
        when COM::VT_R4
          new_float_data = Array.typed(::Java::Float).new(1) { 0.0 }
          COM._move_memory(new_float_data, p_data + 8, 4)
          @float_data = new_float_data[0]
        when COM::VT_R8
          new_double_data = Array.typed(::Java::Double).new(1) { 0.0 }
          COM._move_memory(new_double_data, p_data + 8, 8)
          @double_data = new_double_data[0]
        when COM::VT_DISPATCH
          # long
          # long
          ppv_object = Array.typed(::Java::Int).new(1) { 0 }
          OS._move_memory(ppv_object, p_data + 8, OS::PTR_SIZEOF)
          if ((ppv_object[0]).equal?(0))
            @type = COM::VT_EMPTY
            throw :break_case, :thrown
          end
          @dispatch_data = IDispatch.new(ppv_object[0])
          @dispatch_data._add_ref
        when COM::VT_UNKNOWN
          # long
          # long
          ppv_object = Array.typed(::Java::Int).new(1) { 0 }
          OS._move_memory(ppv_object, p_data + 8, OS::PTR_SIZEOF)
          if ((ppv_object[0]).equal?(0))
            @type = COM::VT_EMPTY
            throw :break_case, :thrown
          end
          @unknown_data = IUnknown.new(ppv_object[0])
          @unknown_data._add_ref
        when COM::VT_BSTR
          # get the address of the memory in which the string resides
          # long
          # long
          h_mem = Array.typed(::Java::Int).new(1) { 0 }
          OS._move_memory(h_mem, p_data + 8, OS::PTR_SIZEOF)
          if ((h_mem[0]).equal?(0))
            @type = COM::VT_EMPTY
            throw :break_case, :thrown
          end
          # Get the size of the string from the OS - the size is expressed in number
          # of bytes - each unicode character is 2 bytes.
          size = COM._sys_string_byte_len(h_mem[0])
          if (size > 0)
            # get the unicode character array from the global memory and create a String
            buffer = CharArray.new((size + 1) / 2) # add one to avoid rounding errors
            COM._move_memory(buffer, h_mem[0], size)
            @string_data = RJava.cast_to_string(String.new(buffer))
          else
            @string_data = "" # $NON-NLS-1$
          end
        else
          # try coercing it into one of the known forms
          # long
          new_pdata = OS._global_alloc(OS::GMEM_FIXED | OS::GMEM_ZEROINIT, Sizeof)
          if ((COM._variant_change_type(new_pdata, p_data, RJava.cast_to_short(0), COM::VT_R4)).equal?(COM::S_OK))
            set_data(new_pdata)
          else
            if ((COM._variant_change_type(new_pdata, p_data, RJava.cast_to_short(0), COM::VT_I4)).equal?(COM::S_OK))
              set_data(new_pdata)
            else
              if ((COM._variant_change_type(new_pdata, p_data, RJava.cast_to_short(0), COM::VT_BSTR)).equal?(COM::S_OK))
                set_data(new_pdata)
              end
            end
          end
          COM._variant_clear(new_pdata)
          OS._global_free(new_pdata)
        end
      end
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the Variant
    def to_s
      case (@type)
      when COM::VT_BOOL
        return "VT_BOOL{" + RJava.cast_to_string(@boolean_data) + "}"
      when COM::VT_I1
        return "VT_I1{" + RJava.cast_to_string(@byte_data) + "}"
      when COM::VT_I2
        return "VT_I2{" + RJava.cast_to_string(@short_data) + "}"
      when COM::VT_UI2
        return "VT_UI2{" + RJava.cast_to_string(@char_data) + "}"
      when COM::VT_I4
        return "VT_I4{" + RJava.cast_to_string(@int_data) + "}"
      when COM::VT_I8
        return "VT_I8{" + RJava.cast_to_string(@long_data) + "}"
      when COM::VT_R4
        return "VT_R4{" + RJava.cast_to_string(@float_data) + "}"
      when COM::VT_R8
        return "VT_R8{" + RJava.cast_to_string(@double_data) + "}"
      when COM::VT_BSTR
        return "VT_BSTR{" + @string_data + "}"
      when COM::VT_DISPATCH
        return "VT_DISPATCH{" + RJava.cast_to_string(((@dispatch_data).nil? ? 0 : @dispatch_data.get_address)) + "}"
      when COM::VT_UNKNOWN
        return "VT_UNKNOWN{" + RJava.cast_to_string(((@unknown_data).nil? ? 0 : @unknown_data.get_address)) + "}"
      when COM::VT_EMPTY
        return "VT_EMPTY"
      when COM::VT_NULL
        return "VT_NULL"
      end
      if (!((@type & COM::VT_BYREF)).equal?(0))
        return "VT_BYREF|" + RJava.cast_to_string((@type & ~COM::VT_BYREF)) + "{" + RJava.cast_to_string(@by_ref_ptr) + "}"
      end
      return "Unsupported Type " + RJava.cast_to_string(@type)
    end
    
    private
    alias_method :initialize__variant, :initialize
  end
  
end
