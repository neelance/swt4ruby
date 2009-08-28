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
  module SHACTIVATEINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SHACTIVATEINFO 
    include_class_members SHACTIVATEINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    # long
    attr_accessor :hwnd_last_focus
    alias_method :attr_hwnd_last_focus, :hwnd_last_focus
    undef_method :hwnd_last_focus
    alias_method :attr_hwnd_last_focus=, :hwnd_last_focus=
    undef_method :hwnd_last_focus=
    
    attr_accessor :f_sip_up
    alias_method :attr_f_sip_up, :f_sip_up
    undef_method :f_sip_up
    alias_method :attr_f_sip_up=, :f_sip_up=
    undef_method :f_sip_up=
    
    # :1
    attr_accessor :f_sip_on_deactivation
    alias_method :attr_f_sip_on_deactivation, :f_sip_on_deactivation
    undef_method :f_sip_on_deactivation
    alias_method :attr_f_sip_on_deactivation=, :f_sip_on_deactivation=
    undef_method :f_sip_on_deactivation=
    
    # :1
    attr_accessor :f_active
    alias_method :attr_f_active, :f_active
    undef_method :f_active
    alias_method :attr_f_active=, :f_active=
    undef_method :f_active=
    
    # :1
    attr_accessor :f_reserved
    alias_method :attr_f_reserved, :f_reserved
    undef_method :f_reserved
    alias_method :attr_f_reserved=, :f_reserved=
    undef_method :f_reserved=
    
    class_module.module_eval {
      # :29
      const_set_lazy(:Sizeof) { OS._shactivateinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @hwnd_last_focus = 0
      @f_sip_up = 0
      @f_sip_on_deactivation = 0
      @f_active = 0
      @f_reserved = 0
    end
    
    private
    alias_method :initialize__shactivateinfo, :initialize
  end
  
end
