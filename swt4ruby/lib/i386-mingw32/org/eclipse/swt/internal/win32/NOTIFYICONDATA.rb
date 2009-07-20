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
  module NOTIFYICONDATAImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NOTIFYICONDATA 
    include_class_members NOTIFYICONDATAImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    # long
    attr_accessor :h_wnd
    alias_method :attr_h_wnd, :h_wnd
    undef_method :h_wnd
    alias_method :attr_h_wnd=, :h_wnd=
    undef_method :h_wnd=
    
    attr_accessor :u_id
    alias_method :attr_u_id, :u_id
    undef_method :u_id
    alias_method :attr_u_id=, :u_id=
    undef_method :u_id=
    
    attr_accessor :u_flags
    alias_method :attr_u_flags, :u_flags
    undef_method :u_flags
    alias_method :attr_u_flags=, :u_flags=
    undef_method :u_flags=
    
    attr_accessor :u_callback_message
    alias_method :attr_u_callback_message, :u_callback_message
    undef_method :u_callback_message
    alias_method :attr_u_callback_message=, :u_callback_message=
    undef_method :u_callback_message=
    
    # long
    attr_accessor :h_icon
    alias_method :attr_h_icon, :h_icon
    undef_method :h_icon
    alias_method :attr_h_icon=, :h_icon=
    undef_method :h_icon=
    
    attr_accessor :dw_state
    alias_method :attr_dw_state, :dw_state
    undef_method :dw_state
    alias_method :attr_dw_state=, :dw_state=
    undef_method :dw_state=
    
    attr_accessor :dw_state_mask
    alias_method :attr_dw_state_mask, :dw_state_mask
    undef_method :dw_state_mask
    alias_method :attr_dw_state_mask=, :dw_state_mask=
    undef_method :dw_state_mask=
    
    attr_accessor :u_version
    alias_method :attr_u_version, :u_version
    undef_method :u_version
    alias_method :attr_u_version=, :u_version=
    undef_method :u_version=
    
    attr_accessor :dw_info_flags
    alias_method :attr_dw_info_flags, :dw_info_flags
    undef_method :dw_info_flags
    alias_method :attr_dw_info_flags=, :dw_info_flags=
    undef_method :dw_info_flags=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS::NOTIFYICONDATA_V2_SIZE }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @h_wnd = 0
      @u_id = 0
      @u_flags = 0
      @u_callback_message = 0
      @h_icon = 0
      @dw_state = 0
      @dw_state_mask = 0
      @u_version = 0
      @dw_info_flags = 0
    end
    
    private
    alias_method :initialize__notifyicondata, :initialize
  end
  
end
