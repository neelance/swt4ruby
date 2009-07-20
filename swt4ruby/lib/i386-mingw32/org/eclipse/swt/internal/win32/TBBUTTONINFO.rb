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
  module TBBUTTONINFOImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class TBBUTTONINFO 
    include_class_members TBBUTTONINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    attr_accessor :dw_mask
    alias_method :attr_dw_mask, :dw_mask
    undef_method :dw_mask
    alias_method :attr_dw_mask=, :dw_mask=
    undef_method :dw_mask=
    
    attr_accessor :id_command
    alias_method :attr_id_command, :id_command
    undef_method :id_command
    alias_method :attr_id_command=, :id_command=
    undef_method :id_command=
    
    attr_accessor :i_image
    alias_method :attr_i_image, :i_image
    undef_method :i_image
    alias_method :attr_i_image=, :i_image=
    undef_method :i_image=
    
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
    
    attr_accessor :cx
    alias_method :attr_cx, :cx
    undef_method :cx
    alias_method :attr_cx=, :cx=
    undef_method :cx=
    
    # long
    attr_accessor :l_param
    alias_method :attr_l_param, :l_param
    undef_method :l_param
    alias_method :attr_l_param=, :l_param=
    undef_method :l_param=
    
    # long
    attr_accessor :psz_text
    alias_method :attr_psz_text, :psz_text
    undef_method :psz_text
    alias_method :attr_psz_text=, :psz_text=
    undef_method :psz_text=
    
    attr_accessor :cch_text
    alias_method :attr_cch_text, :cch_text
    undef_method :cch_text
    alias_method :attr_cch_text=, :cch_text=
    undef_method :cch_text=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._tbbuttoninfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @dw_mask = 0
      @id_command = 0
      @i_image = 0
      @fs_state = 0
      @fs_style = 0
      @cx = 0
      @l_param = 0
      @psz_text = 0
      @cch_text = 0
    end
    
    private
    alias_method :initialize__tbbuttoninfo, :initialize
  end
  
end
