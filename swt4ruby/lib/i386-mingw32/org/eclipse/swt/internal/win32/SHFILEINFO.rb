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
  module SHFILEINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SHFILEINFO 
    include_class_members SHFILEINFOImports
    
    # long
    attr_accessor :h_icon
    alias_method :attr_h_icon, :h_icon
    undef_method :h_icon
    alias_method :attr_h_icon=, :h_icon=
    undef_method :h_icon=
    
    attr_accessor :i_icon
    alias_method :attr_i_icon, :i_icon
    undef_method :i_icon
    alias_method :attr_i_icon=, :i_icon=
    undef_method :i_icon=
    
    attr_accessor :dw_attributes
    alias_method :attr_dw_attributes, :dw_attributes
    undef_method :dw_attributes
    alias_method :attr_dw_attributes=, :dw_attributes=
    undef_method :dw_attributes=
    
    class_module.module_eval {
      
      def sizeof
        defined?(@@sizeof) ? @@sizeof : @@sizeof= OS::IsUnicode ? OS._shfileinfow_sizeof : OS._shfileinfoa_sizeof
      end
      alias_method :attr_sizeof, :sizeof
      
      def sizeof=(value)
        @@sizeof = value
      end
      alias_method :attr_sizeof=, :sizeof=
    }
    
    typesig { [] }
    def initialize
      @h_icon = 0
      @i_icon = 0
      @dw_attributes = 0
    end
    
    private
    alias_method :initialize__shfileinfo, :initialize
  end
  
end
