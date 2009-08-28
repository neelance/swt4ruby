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
  module DLLVERSIONINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class DLLVERSIONINFO 
    include_class_members DLLVERSIONINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
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
      const_set_lazy(:Sizeof) { OS._dllversioninfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @dw_major_version = 0
      @dw_minor_version = 0
      @dw_build_number = 0
      @dw_platform_id = 0
    end
    
    private
    alias_method :initialize__dllversioninfo, :initialize
  end
  
end
