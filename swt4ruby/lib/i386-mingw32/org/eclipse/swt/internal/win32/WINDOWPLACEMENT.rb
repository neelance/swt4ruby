require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module WINDOWPLACEMENTImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class WINDOWPLACEMENT 
    include_class_members WINDOWPLACEMENTImports
    
    attr_accessor :length
    alias_method :attr_length, :length
    undef_method :length
    alias_method :attr_length=, :length=
    undef_method :length=
    
    attr_accessor :flags
    alias_method :attr_flags, :flags
    undef_method :flags
    alias_method :attr_flags=, :flags=
    undef_method :flags=
    
    attr_accessor :show_cmd
    alias_method :attr_show_cmd, :show_cmd
    undef_method :show_cmd
    alias_method :attr_show_cmd=, :show_cmd=
    undef_method :show_cmd=
    
    # POINT ptMinPosition;
    # @field accessor=ptMinPosition.x
    attr_accessor :pt_min_position_x
    alias_method :attr_pt_min_position_x, :pt_min_position_x
    undef_method :pt_min_position_x
    alias_method :attr_pt_min_position_x=, :pt_min_position_x=
    undef_method :pt_min_position_x=
    
    # @field accessor=ptMinPosition.y
    attr_accessor :pt_min_position_y
    alias_method :attr_pt_min_position_y, :pt_min_position_y
    undef_method :pt_min_position_y
    alias_method :attr_pt_min_position_y=, :pt_min_position_y=
    undef_method :pt_min_position_y=
    
    # POINT ptMaxPosition;
    # @field accessor=ptMaxPosition.x
    attr_accessor :pt_max_position_x
    alias_method :attr_pt_max_position_x, :pt_max_position_x
    undef_method :pt_max_position_x
    alias_method :attr_pt_max_position_x=, :pt_max_position_x=
    undef_method :pt_max_position_x=
    
    # @field accessor=ptMaxPosition.y
    attr_accessor :pt_max_position_y
    alias_method :attr_pt_max_position_y, :pt_max_position_y
    undef_method :pt_max_position_y
    alias_method :attr_pt_max_position_y=, :pt_max_position_y=
    undef_method :pt_max_position_y=
    
    # RECT  rcNormalPosition;
    # @field accessor=rcNormalPosition.left
    attr_accessor :left
    alias_method :attr_left, :left
    undef_method :left
    alias_method :attr_left=, :left=
    undef_method :left=
    
    # @field accessor=rcNormalPosition.top
    attr_accessor :top
    alias_method :attr_top, :top
    undef_method :top
    alias_method :attr_top=, :top=
    undef_method :top=
    
    # @field accessor=rcNormalPosition.right
    attr_accessor :right
    alias_method :attr_right, :right
    undef_method :right
    alias_method :attr_right=, :right=
    undef_method :right=
    
    # @field accessor=rcNormalPosition.bottom
    attr_accessor :bottom
    alias_method :attr_bottom, :bottom
    undef_method :bottom
    alias_method :attr_bottom=, :bottom=
    undef_method :bottom=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._windowplacement_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @length = 0
      @flags = 0
      @show_cmd = 0
      @pt_min_position_x = 0
      @pt_min_position_y = 0
      @pt_max_position_x = 0
      @pt_max_position_y = 0
      @left = 0
      @top = 0
      @right = 0
      @bottom = 0
    end
    
    private
    alias_method :initialize__windowplacement, :initialize
  end
  
end
