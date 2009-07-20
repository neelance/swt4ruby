require "rjava"

# Copyright (c) 2003-2004 IBM Corp.
# Portions Copyright (c) 1983-2002, Apple Computer, Inc.
# 
# All rights reserved.  This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Carbon
  module ColorPickerInfoImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class ColorPickerInfo 
    include_class_members ColorPickerInfoImports
    
    # PMColor theColor;
    attr_accessor :profile
    alias_method :attr_profile, :profile
    undef_method :profile
    alias_method :attr_profile=, :profile=
    undef_method :profile=
    
    attr_accessor :red
    alias_method :attr_red, :red
    undef_method :red
    alias_method :attr_red=, :red=
    undef_method :red=
    
    attr_accessor :green
    alias_method :attr_green, :green
    undef_method :green
    alias_method :attr_green=, :green=
    undef_method :green=
    
    attr_accessor :blue
    alias_method :attr_blue, :blue
    undef_method :blue
    alias_method :attr_blue=, :blue=
    undef_method :blue=
    
    attr_accessor :dst_profile
    alias_method :attr_dst_profile, :dst_profile
    undef_method :dst_profile
    alias_method :attr_dst_profile=, :dst_profile=
    undef_method :dst_profile=
    
    attr_accessor :flags
    alias_method :attr_flags, :flags
    undef_method :flags
    alias_method :attr_flags=, :flags=
    undef_method :flags=
    
    attr_accessor :place_where
    alias_method :attr_place_where, :place_where
    undef_method :place_where
    alias_method :attr_place_where=, :place_where=
    undef_method :place_where=
    
    # Point dialogOrigin
    attr_accessor :h
    alias_method :attr_h, :h
    undef_method :h
    alias_method :attr_h=, :h=
    undef_method :h=
    
    attr_accessor :v
    alias_method :attr_v, :v
    undef_method :v
    alias_method :attr_v=, :v=
    undef_method :v=
    
    attr_accessor :picker_type
    alias_method :attr_picker_type, :picker_type
    undef_method :picker_type
    alias_method :attr_picker_type=, :picker_type=
    undef_method :picker_type=
    
    attr_accessor :event_proc
    alias_method :attr_event_proc, :event_proc
    undef_method :event_proc
    alias_method :attr_event_proc=, :event_proc=
    undef_method :event_proc=
    
    attr_accessor :color_proc
    alias_method :attr_color_proc, :color_proc
    undef_method :color_proc
    alias_method :attr_color_proc=, :color_proc=
    undef_method :color_proc=
    
    attr_accessor :color_proc_data
    alias_method :attr_color_proc_data, :color_proc_data
    undef_method :color_proc_data
    alias_method :attr_color_proc_data=, :color_proc_data=
    undef_method :color_proc_data=
    
    # Str255 prompt;
    attr_accessor :prompt
    alias_method :attr_prompt, :prompt
    undef_method :prompt
    alias_method :attr_prompt=, :prompt=
    undef_method :prompt=
    
    # PickerMenuItemInfo  mInfo;
    attr_accessor :edit_menu_id
    alias_method :attr_edit_menu_id, :edit_menu_id
    undef_method :edit_menu_id
    alias_method :attr_edit_menu_id=, :edit_menu_id=
    undef_method :edit_menu_id=
    
    attr_accessor :cut_item
    alias_method :attr_cut_item, :cut_item
    undef_method :cut_item
    alias_method :attr_cut_item=, :cut_item=
    undef_method :cut_item=
    
    attr_accessor :copy_item
    alias_method :attr_copy_item, :copy_item
    undef_method :copy_item
    alias_method :attr_copy_item=, :copy_item=
    undef_method :copy_item=
    
    attr_accessor :paste_item
    alias_method :attr_paste_item, :paste_item
    undef_method :paste_item
    alias_method :attr_paste_item=, :paste_item=
    undef_method :paste_item=
    
    attr_accessor :clear_item
    alias_method :attr_clear_item, :clear_item
    undef_method :clear_item
    alias_method :attr_clear_item=, :clear_item=
    undef_method :clear_item=
    
    attr_accessor :undo_item
    alias_method :attr_undo_item, :undo_item
    undef_method :undo_item
    alias_method :attr_undo_item=, :undo_item=
    undef_method :undo_item=
    
    attr_accessor :new_color_chosen
    alias_method :attr_new_color_chosen, :new_color_chosen
    undef_method :new_color_chosen
    alias_method :attr_new_color_chosen=, :new_color_chosen=
    undef_method :new_color_chosen=
    
    class_module.module_eval {
      # SInt8 filler;
      const_set_lazy(:Sizeof) { 312 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @profile = 0
      @red = 0
      @green = 0
      @blue = 0
      @dst_profile = 0
      @flags = 0
      @place_where = 0
      @h = 0
      @v = 0
      @picker_type = 0
      @event_proc = 0
      @color_proc = 0
      @color_proc_data = 0
      @prompt = Array.typed(::Java::Byte).new(256) { 0 }
      @edit_menu_id = 0
      @cut_item = 0
      @copy_item = 0
      @paste_item = 0
      @clear_item = 0
      @undo_item = 0
      @new_color_chosen = false
    end
    
    private
    alias_method :initialize__color_picker_info, :initialize
  end
  
end
