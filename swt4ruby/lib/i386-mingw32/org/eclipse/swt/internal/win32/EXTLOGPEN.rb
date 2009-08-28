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
  module EXTLOGPENImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class EXTLOGPEN 
    include_class_members EXTLOGPENImports
    
    attr_accessor :elp_pen_style
    alias_method :attr_elp_pen_style, :elp_pen_style
    undef_method :elp_pen_style
    alias_method :attr_elp_pen_style=, :elp_pen_style=
    undef_method :elp_pen_style=
    
    attr_accessor :elp_width
    alias_method :attr_elp_width, :elp_width
    undef_method :elp_width
    alias_method :attr_elp_width=, :elp_width=
    undef_method :elp_width=
    
    attr_accessor :elp_brush_style
    alias_method :attr_elp_brush_style, :elp_brush_style
    undef_method :elp_brush_style
    alias_method :attr_elp_brush_style=, :elp_brush_style=
    undef_method :elp_brush_style=
    
    attr_accessor :elp_color
    alias_method :attr_elp_color, :elp_color
    undef_method :elp_color
    alias_method :attr_elp_color=, :elp_color=
    undef_method :elp_color=
    
    # long
    attr_accessor :elp_hatch
    alias_method :attr_elp_hatch, :elp_hatch
    undef_method :elp_hatch
    alias_method :attr_elp_hatch=, :elp_hatch=
    undef_method :elp_hatch=
    
    attr_accessor :elp_num_entries
    alias_method :attr_elp_num_entries, :elp_num_entries
    undef_method :elp_num_entries
    alias_method :attr_elp_num_entries=, :elp_num_entries=
    undef_method :elp_num_entries=
    
    attr_accessor :elp_style_entry
    alias_method :attr_elp_style_entry, :elp_style_entry
    undef_method :elp_style_entry
    alias_method :attr_elp_style_entry=, :elp_style_entry=
    undef_method :elp_style_entry=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._extlogpen_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @elp_pen_style = 0
      @elp_width = 0
      @elp_brush_style = 0
      @elp_color = 0
      @elp_hatch = 0
      @elp_num_entries = 0
      @elp_style_entry = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    private
    alias_method :initialize__extlogpen, :initialize
  end
  
end
