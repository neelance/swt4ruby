require "rjava"

# Copyright (c) 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module SHDRAGIMAGEImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SHDRAGIMAGE 
    include_class_members SHDRAGIMAGEImports
    
    attr_accessor :size_drag_image
    alias_method :attr_size_drag_image, :size_drag_image
    undef_method :size_drag_image
    alias_method :attr_size_drag_image=, :size_drag_image=
    undef_method :size_drag_image=
    
    attr_accessor :pt_offset
    alias_method :attr_pt_offset, :pt_offset
    undef_method :pt_offset
    alias_method :attr_pt_offset=, :pt_offset=
    undef_method :pt_offset=
    
    # @field cast=(HBITMAP)
    # long
    attr_accessor :hbmp_drag_image
    alias_method :attr_hbmp_drag_image, :hbmp_drag_image
    undef_method :hbmp_drag_image
    alias_method :attr_hbmp_drag_image=, :hbmp_drag_image=
    undef_method :hbmp_drag_image=
    
    attr_accessor :cr_color_key
    alias_method :attr_cr_color_key, :cr_color_key
    undef_method :cr_color_key
    alias_method :attr_cr_color_key=, :cr_color_key=
    undef_method :cr_color_key=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._shdragimage_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @size_drag_image = SIZE.new
      @pt_offset = POINT.new
      @hbmp_drag_image = 0
      @cr_color_key = 0
    end
    
    private
    alias_method :initialize__shdragimage, :initialize
  end
  
end
