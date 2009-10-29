require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module DEVMODEAImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class DEVMODEA < DEVMODEAImports.const_get :DEVMODE
    include_class_members DEVMODEAImports
    
    attr_accessor :dm_device_name
    alias_method :attr_dm_device_name, :dm_device_name
    undef_method :dm_device_name
    alias_method :attr_dm_device_name=, :dm_device_name=
    undef_method :dm_device_name=
    
    attr_accessor :dm_form_name
    alias_method :attr_dm_form_name, :dm_form_name
    undef_method :dm_form_name
    alias_method :attr_dm_form_name=, :dm_form_name=
    undef_method :dm_form_name=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._devmodea_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @dm_device_name = nil
      @dm_form_name = nil
      super()
      @dm_device_name = Array.typed(::Java::Byte).new(OS::CCHDEVICENAME) { 0 }
      @dm_form_name = Array.typed(::Java::Byte).new(OS::CCHFORMNAME) { 0 }
    end
    
    private
    alias_method :initialize__devmodea, :initialize
  end
  
end
