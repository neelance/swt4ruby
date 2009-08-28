require "rjava"

# Copyright (c) 2003, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Mozilla
  module XPCOMObjectImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
      include ::Java::Util
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  class XPCOMObject 
    include_class_members XPCOMObjectImports
    
    # long
    attr_accessor :pp_vtable
    alias_method :attr_pp_vtable, :pp_vtable
    undef_method :pp_vtable
    alias_method :attr_pp_vtable=, :pp_vtable=
    undef_method :pp_vtable=
    
    class_module.module_eval {
      const_set_lazy(:MAX_ARG_COUNT) { 12 }
      const_attr_reader  :MAX_ARG_COUNT
      
      const_set_lazy(:MAX_VTABLE_LENGTH) { 80 }
      const_attr_reader  :MAX_VTABLE_LENGTH
      
      
      def callbacks
        defined?(@@callbacks) ? @@callbacks : @@callbacks= Array.typed(Array.typed(Callback)).new(MAX_VTABLE_LENGTH) { Array.typed(Callback).new(MAX_ARG_COUNT) { nil } }
      end
      alias_method :attr_callbacks, :callbacks
      
      def callbacks=(value)
        @@callbacks = value
      end
      alias_method :attr_callbacks=, :callbacks=
      
      
      def object_map
        defined?(@@object_map) ? @@object_map : @@object_map= Hashtable.new
      end
      alias_method :attr_object_map, :object_map
      
      def object_map=(value)
        @@object_map = value
      end
      alias_method :attr_object_map=, :object_map=
    }
    
    typesig { [Array.typed(::Java::Int)] }
    def initialize(arg_counts)
      @pp_vtable = 0
      # long
      # long
      callback_addresses = Array.typed(::Java::Int).new(arg_counts.attr_length) { 0 }
      synchronized((self.attr_callbacks)) do
        i = 0
        length = arg_counts.attr_length
        while i < length
          if (((self.attr_callbacks[i][arg_counts[i]])).nil?)
            self.attr_callbacks[i][arg_counts[i]] = Callback.new(get_class, "callback" + RJava.cast_to_string(i), arg_counts[i] + 1, true, XPCOM::NS_ERROR_FAILURE) # $NON-NLS-1$
          end
          callback_addresses[i] = self.attr_callbacks[i][arg_counts[i]].get_address
          if ((callback_addresses[i]).equal?(0))
            SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
          end
          i += 1
        end
      end
      # long
      p_vtable = C.malloc(C::PTR_SIZEOF * arg_counts.attr_length)
      XPCOM.memmove(p_vtable, callback_addresses, C::PTR_SIZEOF * arg_counts.attr_length)
      @pp_vtable = C.malloc(C::PTR_SIZEOF)
      # long
      XPCOM.memmove(@pp_vtable, Array.typed(::Java::Int).new([p_vtable]), C::PTR_SIZEOF)
      self.attr_object_map.put(SwtLONG.new(@pp_vtable), self)
    end
    
    class_module.module_eval {
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback0(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method0(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback1(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method1(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback10(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method10(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback11(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method11(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback12(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method12(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback13(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method13(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback14(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method14(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback15(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method15(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback16(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method16(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback17(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method17(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback18(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method18(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback19(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method19(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback2(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method2(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback20(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method20(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback21(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method21(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback22(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method22(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback23(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method23(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback24(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method24(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback25(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method25(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback26(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method26(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback27(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method27(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback28(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method28(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback29(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method29(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback3(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method3(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback30(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method30(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback31(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method31(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback32(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method32(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback33(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method33(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback34(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method34(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback35(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method35(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback36(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method36(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback37(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method37(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback38(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method38(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback39(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method39(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback4(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method4(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback40(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method40(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback41(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method41(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback42(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method42(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback43(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method43(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback44(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method44(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback45(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method45(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback46(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method46(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback47(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method47(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback48(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method48(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback49(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method49(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback5(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method5(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback50(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method50(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback51(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method51(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback52(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method52(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback53(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method53(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback54(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method54(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback55(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method55(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback56(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method56(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback57(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method57(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback58(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method58(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback59(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method59(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback6(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method6(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback60(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method60(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback61(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method61(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback62(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method62(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback63(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method63(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback64(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method64(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback65(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method65(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback66(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method66(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback67(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method67(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback68(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method68(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback69(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method69(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback7(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method7(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback70(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method70(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback71(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method71(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback72(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method72(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback73(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method73(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback74(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method74(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback75(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method75(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback76(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method76(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback77(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method77(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback78(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method78(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback79(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method79(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback8(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method8(args)
      end
      
      typesig { [Array.typed(::Java::Int)] }
      # long
      # long
      def callback9(callback_args)
        # find the object on which this call was invoked
        # long
        address = callback_args[0]
        object = self.attr_object_map.get(SwtLONG.new(address))
        if ((object).nil?)
          return XPCOM::NS_ERROR_FAILURE
        end
        # long
        # long
        args = Array.typed(::Java::Int).new(callback_args.attr_length - 1) { 0 }
        System.arraycopy(callback_args, 1, args, 0, args.attr_length)
        return (object).method9(args)
      end
    }
    
    typesig { [] }
    def dispose
      # free the memory for this reference
      # long
      # long
      p_vtable = Array.typed(::Java::Int).new(1) { 0 }
      XPCOM.memmove(p_vtable, @pp_vtable, C::PTR_SIZEOF)
      C.free(p_vtable[0])
      C.free(@pp_vtable)
      # remove this ppVtable from the list
      self.attr_object_map.remove(SwtLONG.new(@pp_vtable))
      @pp_vtable = 0
    end
    
    typesig { [] }
    # long
    def get_address
      return @pp_vtable
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method0(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method1(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method10(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method11(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method12(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method13(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method14(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method15(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method16(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method17(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method18(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method19(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method2(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method20(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method21(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method22(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method23(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method24(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method25(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method26(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method27(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method28(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method29(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method3(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method30(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method31(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method32(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method33(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method34(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method35(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method36(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method37(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method38(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method39(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method4(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method40(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method41(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method42(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method43(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method44(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method45(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method46(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method47(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method48(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method49(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method5(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method50(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method51(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method52(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method53(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method54(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method55(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method56(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method57(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method58(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method59(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method6(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method60(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method61(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method62(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method63(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method64(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method65(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method66(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method67(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method68(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method69(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method7(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method70(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method71(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method72(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method73(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method74(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method75(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method76(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method77(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method78(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method79(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method8(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # long
    def method9(args)
      return XPCOM::NS_ERROR_NOT_IMPLEMENTED
    end
    
    private
    alias_method :initialize__xpcomobject, :initialize
  end
  
end
