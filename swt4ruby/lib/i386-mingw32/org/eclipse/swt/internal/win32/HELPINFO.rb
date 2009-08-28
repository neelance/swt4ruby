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
  module HELPINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class HELPINFO 
    include_class_members HELPINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    attr_accessor :i_context_type
    alias_method :attr_i_context_type, :i_context_type
    undef_method :i_context_type
    alias_method :attr_i_context_type=, :i_context_type=
    undef_method :i_context_type=
    
    attr_accessor :i_ctrl_id
    alias_method :attr_i_ctrl_id, :i_ctrl_id
    undef_method :i_ctrl_id
    alias_method :attr_i_ctrl_id=, :i_ctrl_id=
    undef_method :i_ctrl_id=
    
    # long
    attr_accessor :h_item_handle
    alias_method :attr_h_item_handle, :h_item_handle
    undef_method :h_item_handle
    alias_method :attr_h_item_handle=, :h_item_handle=
    undef_method :h_item_handle=
    
    attr_accessor :dw_context_id
    alias_method :attr_dw_context_id, :dw_context_id
    undef_method :dw_context_id
    alias_method :attr_dw_context_id=, :dw_context_id=
    undef_method :dw_context_id=
    
    # POINT MousePos
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._helpinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @i_context_type = 0
      @i_ctrl_id = 0
      @h_item_handle = 0
      @dw_context_id = 0
      @x = 0
      @y = 0
    end
    
    private
    alias_method :initialize__helpinfo, :initialize
  end
  
end
