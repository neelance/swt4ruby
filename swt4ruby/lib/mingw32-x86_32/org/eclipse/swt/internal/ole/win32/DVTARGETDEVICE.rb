require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module DVTARGETDEVICEImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class DVTARGETDEVICE 
    include_class_members DVTARGETDEVICEImports
    
    attr_accessor :td_size
    alias_method :attr_td_size, :td_size
    undef_method :td_size
    alias_method :attr_td_size=, :td_size=
    undef_method :td_size=
    
    attr_accessor :td_driver_name_offset
    alias_method :attr_td_driver_name_offset, :td_driver_name_offset
    undef_method :td_driver_name_offset
    alias_method :attr_td_driver_name_offset=, :td_driver_name_offset=
    undef_method :td_driver_name_offset=
    
    attr_accessor :td_device_name_offset
    alias_method :attr_td_device_name_offset, :td_device_name_offset
    undef_method :td_device_name_offset
    alias_method :attr_td_device_name_offset=, :td_device_name_offset=
    undef_method :td_device_name_offset=
    
    attr_accessor :td_port_name_offset
    alias_method :attr_td_port_name_offset, :td_port_name_offset
    undef_method :td_port_name_offset
    alias_method :attr_td_port_name_offset=, :td_port_name_offset=
    undef_method :td_port_name_offset=
    
    attr_accessor :td_ext_devmode_offset
    alias_method :attr_td_ext_devmode_offset, :td_ext_devmode_offset
    undef_method :td_ext_devmode_offset
    alias_method :attr_td_ext_devmode_offset=, :td_ext_devmode_offset=
    undef_method :td_ext_devmode_offset=
    
    attr_accessor :td_data
    alias_method :attr_td_data, :td_data
    undef_method :td_data
    alias_method :attr_td_data=, :td_data=
    undef_method :td_data=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { COM._dvtargetdevice_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @td_size = 0
      @td_driver_name_offset = 0
      @td_device_name_offset = 0
      @td_port_name_offset = 0
      @td_ext_devmode_offset = 0
      @td_data = Array.typed(::Java::Byte).new(1) { 0 }
    end
    
    private
    alias_method :initialize__dvtargetdevice, :initialize
  end
  
end
