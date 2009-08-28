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
  module SHRGINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SHRGINFO 
    include_class_members SHRGINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    # long
    attr_accessor :hwnd_client
    alias_method :attr_hwnd_client, :hwnd_client
    undef_method :hwnd_client
    alias_method :attr_hwnd_client=, :hwnd_client=
    undef_method :hwnd_client=
    
    # POINT ptDown
    attr_accessor :pt_down_x
    alias_method :attr_pt_down_x, :pt_down_x
    undef_method :pt_down_x
    alias_method :attr_pt_down_x=, :pt_down_x=
    undef_method :pt_down_x=
    
    attr_accessor :pt_down_y
    alias_method :attr_pt_down_y, :pt_down_y
    undef_method :pt_down_y
    alias_method :attr_pt_down_y=, :pt_down_y=
    undef_method :pt_down_y=
    
    attr_accessor :dw_flags
    alias_method :attr_dw_flags, :dw_flags
    undef_method :dw_flags
    alias_method :attr_dw_flags=, :dw_flags=
    undef_method :dw_flags=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._shrginfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @hwnd_client = 0
      @pt_down_x = 0
      @pt_down_y = 0
      @dw_flags = 0
    end
    
    private
    alias_method :initialize__shrginfo, :initialize
  end
  
end
