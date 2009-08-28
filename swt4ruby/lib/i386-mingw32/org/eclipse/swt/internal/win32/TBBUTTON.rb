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
  module TBBUTTONImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class TBBUTTON 
    include_class_members TBBUTTONImports
    
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
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._tbbutton_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @i_bitmap = 0
      @id_command = 0
      @fs_state = 0
      @fs_style = 0
      @dw_data = 0
      @i_string = 0
    end
    
    private
    alias_method :initialize__tbbutton, :initialize
  end
  
end
