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
  module KEYBDINPUTImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class KEYBDINPUT 
    include_class_members KEYBDINPUTImports
    
    attr_accessor :w_vk
    alias_method :attr_w_vk, :w_vk
    undef_method :w_vk
    alias_method :attr_w_vk=, :w_vk=
    undef_method :w_vk=
    
    attr_accessor :w_scan
    alias_method :attr_w_scan, :w_scan
    undef_method :w_scan
    alias_method :attr_w_scan=, :w_scan=
    undef_method :w_scan=
    
    attr_accessor :dw_flags
    alias_method :attr_dw_flags, :dw_flags
    undef_method :dw_flags
    alias_method :attr_dw_flags=, :dw_flags=
    undef_method :dw_flags=
    
    attr_accessor :time
    alias_method :attr_time, :time
    undef_method :time
    alias_method :attr_time=, :time=
    undef_method :time=
    
    # long
    attr_accessor :dw_extra_info
    alias_method :attr_dw_extra_info, :dw_extra_info
    undef_method :dw_extra_info
    alias_method :attr_dw_extra_info=, :dw_extra_info=
    undef_method :dw_extra_info=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._keybdinput_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @w_vk = 0
      @w_scan = 0
      @dw_flags = 0
      @time = 0
      @dw_extra_info = 0
    end
    
    private
    alias_method :initialize__keybdinput, :initialize
  end
  
end
