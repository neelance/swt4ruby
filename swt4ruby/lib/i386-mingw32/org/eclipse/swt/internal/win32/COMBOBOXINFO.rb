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
  module COMBOBOXINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class COMBOBOXINFO 
    include_class_members COMBOBOXINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    attr_accessor :item_left
    alias_method :attr_item_left, :item_left
    undef_method :item_left
    alias_method :attr_item_left=, :item_left=
    undef_method :item_left=
    
    attr_accessor :item_top
    alias_method :attr_item_top, :item_top
    undef_method :item_top
    alias_method :attr_item_top=, :item_top=
    undef_method :item_top=
    
    attr_accessor :item_right
    alias_method :attr_item_right, :item_right
    undef_method :item_right
    alias_method :attr_item_right=, :item_right=
    undef_method :item_right=
    
    attr_accessor :item_bottom
    alias_method :attr_item_bottom, :item_bottom
    undef_method :item_bottom
    alias_method :attr_item_bottom=, :item_bottom=
    undef_method :item_bottom=
    
    attr_accessor :button_left
    alias_method :attr_button_left, :button_left
    undef_method :button_left
    alias_method :attr_button_left=, :button_left=
    undef_method :button_left=
    
    attr_accessor :button_top
    alias_method :attr_button_top, :button_top
    undef_method :button_top
    alias_method :attr_button_top=, :button_top=
    undef_method :button_top=
    
    attr_accessor :button_right
    alias_method :attr_button_right, :button_right
    undef_method :button_right
    alias_method :attr_button_right=, :button_right=
    undef_method :button_right=
    
    attr_accessor :button_bottom
    alias_method :attr_button_bottom, :button_bottom
    undef_method :button_bottom
    alias_method :attr_button_bottom=, :button_bottom=
    undef_method :button_bottom=
    
    attr_accessor :state_button
    alias_method :attr_state_button, :state_button
    undef_method :state_button
    alias_method :attr_state_button=, :state_button=
    undef_method :state_button=
    
    # long
    attr_accessor :hwnd_combo
    alias_method :attr_hwnd_combo, :hwnd_combo
    undef_method :hwnd_combo
    alias_method :attr_hwnd_combo=, :hwnd_combo=
    undef_method :hwnd_combo=
    
    # long
    attr_accessor :hwnd_item
    alias_method :attr_hwnd_item, :hwnd_item
    undef_method :hwnd_item
    alias_method :attr_hwnd_item=, :hwnd_item=
    undef_method :hwnd_item=
    
    # long
    attr_accessor :hwnd_list
    alias_method :attr_hwnd_list, :hwnd_list
    undef_method :hwnd_list
    alias_method :attr_hwnd_list=, :hwnd_list=
    undef_method :hwnd_list=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._comboboxinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @item_left = 0
      @item_top = 0
      @item_right = 0
      @item_bottom = 0
      @button_left = 0
      @button_top = 0
      @button_right = 0
      @button_bottom = 0
      @state_button = 0
      @hwnd_combo = 0
      @hwnd_item = 0
      @hwnd_list = 0
    end
    
    private
    alias_method :initialize__comboboxinfo, :initialize
  end
  
end
