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
  module FilePickerFactory_1_8Imports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include_const ::Org::Eclipse::Swt::Internal, :C
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class FilePickerFactory_1_8 < FilePickerFactory_1_8Imports.const_get :FilePickerFactory
    include_class_members FilePickerFactory_1_8Imports
    
    typesig { [] }
    def create_cominterfaces
      self.attr_supports = # Create each of the interfaces that this object implements
      Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members FilePickerFactory_1_8
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0]))
      self.attr_factory = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        extend LocalClass
        include_class_members FilePickerFactory_1_8
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method3 do |args|
          return _create_instance(args[0], args[1], args[2])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method4 do |args|
          # 64
          return _lock_factory(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 3, 1]))
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # nsIFactory
    # int
    # int
    # int
    def _create_instance(a_outer, iid, result)
      picker = FilePicker_1_8.new
      picker._add_ref
      # int
      XPCOM.memmove(result, Array.typed(::Java::Long).new([picker.get_address]), C::PTR_SIZEOF)
      return XPCOM::NS_OK
    end
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__file_picker_factory_1_8, :initialize
  end
  
end
