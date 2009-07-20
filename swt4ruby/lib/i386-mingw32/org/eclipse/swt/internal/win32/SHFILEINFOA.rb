require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module SHFILEINFOAImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SHFILEINFOA < SHFILEINFOAImports.const_get :SHFILEINFO
    include_class_members SHFILEINFOAImports
    
    attr_accessor :sz_display_name
    alias_method :attr_sz_display_name, :sz_display_name
    undef_method :sz_display_name
    alias_method :attr_sz_display_name=, :sz_display_name=
    undef_method :sz_display_name=
    
    attr_accessor :sz_type_name
    alias_method :attr_sz_type_name, :sz_type_name
    undef_method :sz_type_name
    alias_method :attr_sz_type_name=, :sz_type_name=
    undef_method :sz_type_name=
    
    class_module.module_eval {
      
      def sizeof
        defined?(@@sizeof) ? @@sizeof : @@sizeof= OS._shfileinfoa_sizeof
      end
      alias_method :attr_sizeof, :sizeof
      
      def sizeof=(value)
        @@sizeof = value
      end
      alias_method :attr_sizeof=, :sizeof=
    }
    
    typesig { [] }
    def initialize
      @sz_display_name = nil
      @sz_type_name = nil
      super()
      @sz_display_name = Array.typed(::Java::Byte).new(OS::MAX_PATH) { 0 }
      @sz_type_name = Array.typed(::Java::Byte).new(80) { 0 }
    end
    
    private
    alias_method :initialize__shfileinfoa, :initialize
  end
  
end
