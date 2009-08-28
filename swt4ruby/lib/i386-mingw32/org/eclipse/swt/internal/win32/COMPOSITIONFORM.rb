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
  module COMPOSITIONFORMImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class COMPOSITIONFORM 
    include_class_members COMPOSITIONFORMImports
    
    attr_accessor :dw_style
    alias_method :attr_dw_style, :dw_style
    undef_method :dw_style
    alias_method :attr_dw_style=, :dw_style=
    undef_method :dw_style=
    
    # POINT ptCurrentPos;
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
    
    # RECT rcArea;
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
      const_set_lazy(:Sizeof) { OS._compositionform_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @dw_style = 0
      @x = 0
      @y = 0
      @left = 0
      @top = 0
      @right = 0
      @bottom = 0
    end
    
    private
    alias_method :initialize__compositionform, :initialize
  end
  
end
