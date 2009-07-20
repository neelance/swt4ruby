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
  module DROPFILESImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class DROPFILES 
    include_class_members DROPFILESImports
    
    attr_accessor :p_files
    alias_method :attr_p_files, :p_files
    undef_method :p_files
    alias_method :attr_p_files=, :p_files=
    undef_method :p_files=
    
    # Offset of the file list from the beginning of this structure, in bytes.
    # POINT pt; // Drop point. The coordinates depend on fNC.
    attr_accessor :pt_x
    alias_method :attr_pt_x, :pt_x
    undef_method :pt_x
    alias_method :attr_pt_x=, :pt_x=
    undef_method :pt_x=
    
    attr_accessor :pt_y
    alias_method :attr_pt_y, :pt_y
    undef_method :pt_y
    alias_method :attr_pt_y=, :pt_y=
    undef_method :pt_y=
    
    attr_accessor :f_nc
    alias_method :attr_f_nc, :f_nc
    undef_method :f_nc
    alias_method :attr_f_nc=, :f_nc=
    undef_method :f_nc=
    
    # Nonclient area flag. If this member is TRUE, pt specifies the screen
    # coordinates of a point in a window's nonclient area. If it is FALSE,
    # pt specifies the client coordinates of a point in the client area.
    attr_accessor :f_wide
    alias_method :attr_f_wide, :f_wide
    undef_method :f_wide
    alias_method :attr_f_wide=, :f_wide=
    undef_method :f_wide=
    
    class_module.module_eval {
      # Value that indicates whether the file contains ANSI or Unicode
      # characters. If it is zero, it contains ANSI characters. Otherwise, it
      # contains Unicode characters.
      const_set_lazy(:Sizeof) { OS._dropfiles_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @p_files = 0
      @pt_x = 0
      @pt_y = 0
      @f_nc = 0
      @f_wide = 0
    end
    
    private
    alias_method :initialize__dropfiles, :initialize
  end
  
end
