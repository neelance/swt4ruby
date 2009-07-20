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
  module OSVERSIONINFOImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class OSVERSIONINFO 
    include_class_members OSVERSIONINFOImports
    
    attr_accessor :dw_osversion_info_size
    alias_method :attr_dw_osversion_info_size, :dw_osversion_info_size
    undef_method :dw_osversion_info_size
    alias_method :attr_dw_osversion_info_size=, :dw_osversion_info_size=
    undef_method :dw_osversion_info_size=
    
    attr_accessor :dw_major_version
    alias_method :attr_dw_major_version, :dw_major_version
    undef_method :dw_major_version
    alias_method :attr_dw_major_version=, :dw_major_version=
    undef_method :dw_major_version=
    
    attr_accessor :dw_minor_version
    alias_method :attr_dw_minor_version, :dw_minor_version
    undef_method :dw_minor_version
    alias_method :attr_dw_minor_version=, :dw_minor_version=
    undef_method :dw_minor_version=
    
    attr_accessor :dw_build_number
    alias_method :attr_dw_build_number, :dw_build_number
    undef_method :dw_build_number
    alias_method :attr_dw_build_number=, :dw_build_number=
    undef_method :dw_build_number=
    
    attr_accessor :dw_platform_id
    alias_method :attr_dw_platform_id, :dw_platform_id
    undef_method :dw_platform_id
    alias_method :attr_dw_platform_id=, :dw_platform_id=
    undef_method :dw_platform_id=
    
    class_module.module_eval {
      # final
      
      def sizeof
        defined?(@@sizeof) ? @@sizeof : @@sizeof= OS::IsUnicode ? OS._osversioninfow_sizeof : OS._osversioninfoa_sizeof
      end
      alias_method :attr_sizeof, :sizeof
      
      def sizeof=(value)
        @@sizeof = value
      end
      alias_method :attr_sizeof=, :sizeof=
    }
    
    typesig { [] }
    def initialize
      @dw_osversion_info_size = 0
      @dw_major_version = 0
      @dw_minor_version = 0
      @dw_build_number = 0
      @dw_platform_id = 0
    end
    
    private
    alias_method :initialize__osversioninfo, :initialize
  end
  
end
