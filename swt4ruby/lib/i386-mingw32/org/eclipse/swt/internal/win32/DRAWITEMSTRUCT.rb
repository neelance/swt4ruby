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
  module DRAWITEMSTRUCTImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class DRAWITEMSTRUCT 
    include_class_members DRAWITEMSTRUCTImports
    
    attr_accessor :ctl_type
    alias_method :attr_ctl_type, :ctl_type
    undef_method :ctl_type
    alias_method :attr_ctl_type=, :ctl_type=
    undef_method :ctl_type=
    
    attr_accessor :ctl_id
    alias_method :attr_ctl_id, :ctl_id
    undef_method :ctl_id
    alias_method :attr_ctl_id=, :ctl_id=
    undef_method :ctl_id=
    
    attr_accessor :item_id
    alias_method :attr_item_id, :item_id
    undef_method :item_id
    alias_method :attr_item_id=, :item_id=
    undef_method :item_id=
    
    attr_accessor :item_action
    alias_method :attr_item_action, :item_action
    undef_method :item_action
    alias_method :attr_item_action=, :item_action=
    undef_method :item_action=
    
    attr_accessor :item_state
    alias_method :attr_item_state, :item_state
    undef_method :item_state
    alias_method :attr_item_state=, :item_state=
    undef_method :item_state=
    
    # long
    attr_accessor :hwnd_item
    alias_method :attr_hwnd_item, :hwnd_item
    undef_method :hwnd_item
    alias_method :attr_hwnd_item=, :hwnd_item=
    undef_method :hwnd_item=
    
    # long
    attr_accessor :h_dc
    alias_method :attr_h_dc, :h_dc
    undef_method :h_dc
    alias_method :attr_h_dc=, :h_dc=
    undef_method :h_dc=
    
    # RECT rcItem;
    attr_accessor :left
    alias_method :attr_left, :left
    undef_method :left
    alias_method :attr_left=, :left=
    undef_method :left=
    
    attr_accessor :top
    alias_method :attr_top, :top
    undef_method :top
    alias_method :attr_top=, :top=
    undef_method :top=
    
    attr_accessor :bottom
    alias_method :attr_bottom, :bottom
    undef_method :bottom
    alias_method :attr_bottom=, :bottom=
    undef_method :bottom=
    
    attr_accessor :right
    alias_method :attr_right, :right
    undef_method :right
    alias_method :attr_right=, :right=
    undef_method :right=
    
    # long
    attr_accessor :item_data
    alias_method :attr_item_data, :item_data
    undef_method :item_data
    alias_method :attr_item_data=, :item_data=
    undef_method :item_data=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._drawitemstruct_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @ctl_type = 0
      @ctl_id = 0
      @item_id = 0
      @item_action = 0
      @item_state = 0
      @hwnd_item = 0
      @h_dc = 0
      @left = 0
      @top = 0
      @bottom = 0
      @right = 0
      @item_data = 0
    end
    
    private
    alias_method :initialize__drawitemstruct, :initialize
  end
  
end
