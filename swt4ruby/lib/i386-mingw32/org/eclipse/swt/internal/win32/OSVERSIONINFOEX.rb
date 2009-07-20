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
  module OSVERSIONINFOEXImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class OSVERSIONINFOEX < OSVERSIONINFOEXImports.const_get :OSVERSIONINFO
    include_class_members OSVERSIONINFOEXImports
    
    attr_accessor :w_service_pack_major
    alias_method :attr_w_service_pack_major, :w_service_pack_major
    undef_method :w_service_pack_major
    alias_method :attr_w_service_pack_major=, :w_service_pack_major=
    undef_method :w_service_pack_major=
    
    attr_accessor :w_service_pack_minor
    alias_method :attr_w_service_pack_minor, :w_service_pack_minor
    undef_method :w_service_pack_minor
    alias_method :attr_w_service_pack_minor=, :w_service_pack_minor=
    undef_method :w_service_pack_minor=
    
    attr_accessor :w_suite_mask
    alias_method :attr_w_suite_mask, :w_suite_mask
    undef_method :w_suite_mask
    alias_method :attr_w_suite_mask=, :w_suite_mask=
    undef_method :w_suite_mask=
    
    attr_accessor :w_product_type
    alias_method :attr_w_product_type, :w_product_type
    undef_method :w_product_type
    alias_method :attr_w_product_type=, :w_product_type=
    undef_method :w_product_type=
    
    attr_accessor :w_reserved
    alias_method :attr_w_reserved, :w_reserved
    undef_method :w_reserved
    alias_method :attr_w_reserved=, :w_reserved=
    undef_method :w_reserved=
    
    class_module.module_eval {
      # final
      
      def sizeof
        defined?(@@sizeof) ? @@sizeof : @@sizeof= OS::IsUnicode ? OS._osversioninfoexw_sizeof : OS._osversioninfoexa_sizeof
      end
      alias_method :attr_sizeof, :sizeof
      
      def sizeof=(value)
        @@sizeof = value
      end
      alias_method :attr_sizeof=, :sizeof=
    }
    
    typesig { [] }
    def initialize
      @w_service_pack_major = 0
      @w_service_pack_minor = 0
      @w_suite_mask = 0
      @w_product_type = 0
      @w_reserved = 0
      super()
    end
    
    private
    alias_method :initialize__osversioninfoex, :initialize
  end
  
end
