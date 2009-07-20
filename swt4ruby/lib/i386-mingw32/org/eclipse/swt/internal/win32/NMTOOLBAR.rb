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
  module NMTOOLBARImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMTOOLBAR < NMTOOLBARImports.const_get :NMHDR
    include_class_members NMTOOLBARImports
    
    attr_accessor :i_item
    alias_method :attr_i_item, :i_item
    undef_method :i_item
    alias_method :attr_i_item=, :i_item=
    undef_method :i_item=
    
    # TBBUTTON tbButton;
    attr_accessor :i_bitmap
    alias_method :attr_i_bitmap, :i_bitmap
    undef_method :i_bitmap
    alias_method :attr_i_bitmap=, :i_bitmap=
    undef_method :i_bitmap=
    
    attr_accessor :id_command
    alias_method :attr_id_command, :id_command
    undef_method :id_command
    alias_method :attr_id_command=, :id_command=
    undef_method :id_command=
    
    attr_accessor :fs_state
    alias_method :attr_fs_state, :fs_state
    undef_method :fs_state
    alias_method :attr_fs_state=, :fs_state=
    undef_method :fs_state=
    
    attr_accessor :fs_style
    alias_method :attr_fs_style, :fs_style
    undef_method :fs_style
    alias_method :attr_fs_style=, :fs_style=
    undef_method :fs_style=
    
    # long
    attr_accessor :dw_data
    alias_method :attr_dw_data, :dw_data
    undef_method :dw_data
    alias_method :attr_dw_data=, :dw_data=
    undef_method :dw_data=
    
    # long
    attr_accessor :i_string
    alias_method :attr_i_string, :i_string
    undef_method :i_string
    alias_method :attr_i_string=, :i_string=
    undef_method :i_string=
    
    attr_accessor :cch_text
    alias_method :attr_cch_text, :cch_text
    undef_method :cch_text
    alias_method :attr_cch_text=, :cch_text=
    undef_method :cch_text=
    
    # long
    attr_accessor :psz_text
    alias_method :attr_psz_text, :psz_text
    undef_method :psz_text
    alias_method :attr_psz_text=, :psz_text=
    undef_method :psz_text=
    
    # RECT rcButton;
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
    
    attr_accessor :right
    alias_method :attr_right, :right
    undef_method :right
    alias_method :attr_right=, :right=
    undef_method :right=
    
    attr_accessor :bottom
    alias_method :attr_bottom, :bottom
    undef_method :bottom
    alias_method :attr_bottom=, :bottom=
    undef_method :bottom=
    
    class_module.module_eval {
      # Note in WinCE.  The field rcButton is not defined.
      const_set_lazy(:Sizeof) { OS._nmtoolbar_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @i_item = 0
      @i_bitmap = 0
      @id_command = 0
      @fs_state = 0
      @fs_style = 0
      @dw_data = 0
      @i_string = 0
      @cch_text = 0
      @psz_text = 0
      @left = 0
      @top = 0
      @right = 0
      @bottom = 0
      super()
    end
    
    private
    alias_method :initialize__nmtoolbar, :initialize
  end
  
end
