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
  module ControlFontStyleRecImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class ControlFontStyleRec 
    include_class_members ControlFontStyleRecImports
    
    attr_accessor :flags
    alias_method :attr_flags, :flags
    undef_method :flags
    alias_method :attr_flags=, :flags=
    undef_method :flags=
    
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    attr_accessor :size
    alias_method :attr_size, :size
    undef_method :size
    alias_method :attr_size=, :size=
    undef_method :size=
    
    attr_accessor :style
    alias_method :attr_style, :style
    undef_method :style
    alias_method :attr_style=, :style=
    undef_method :style=
    
    attr_accessor :mode
    alias_method :attr_mode, :mode
    undef_method :mode
    alias_method :attr_mode=, :mode=
    undef_method :mode=
    
    attr_accessor :just
    alias_method :attr_just, :just
    undef_method :just
    alias_method :attr_just=, :just=
    undef_method :just=
    
    # RGBColor foreColor;
    attr_accessor :fore_color_red
    alias_method :attr_fore_color_red, :fore_color_red
    undef_method :fore_color_red
    alias_method :attr_fore_color_red=, :fore_color_red=
    undef_method :fore_color_red=
    
    attr_accessor :fore_color_green
    alias_method :attr_fore_color_green, :fore_color_green
    undef_method :fore_color_green
    alias_method :attr_fore_color_green=, :fore_color_green=
    undef_method :fore_color_green=
    
    attr_accessor :fore_color_blue
    alias_method :attr_fore_color_blue, :fore_color_blue
    undef_method :fore_color_blue
    alias_method :attr_fore_color_blue=, :fore_color_blue=
    undef_method :fore_color_blue=
    
    # RGBColor backColor;
    attr_accessor :back_color_red
    alias_method :attr_back_color_red, :back_color_red
    undef_method :back_color_red
    alias_method :attr_back_color_red=, :back_color_red=
    undef_method :back_color_red=
    
    attr_accessor :back_color_green
    alias_method :attr_back_color_green, :back_color_green
    undef_method :back_color_green
    alias_method :attr_back_color_green=, :back_color_green=
    undef_method :back_color_green=
    
    attr_accessor :back_color_blue
    alias_method :attr_back_color_blue, :back_color_blue
    undef_method :back_color_blue
    alias_method :attr_back_color_blue=, :back_color_blue=
    undef_method :back_color_blue=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 24 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @flags = 0
      @font = 0
      @size = 0
      @style = 0
      @mode = 0
      @just = 0
      @fore_color_red = 0
      @fore_color_green = 0
      @fore_color_blue = 0
      @back_color_red = 0
      @back_color_green = 0
      @back_color_blue = 0
    end
    
    private
    alias_method :initialize__control_font_style_rec, :initialize
  end
  
end
