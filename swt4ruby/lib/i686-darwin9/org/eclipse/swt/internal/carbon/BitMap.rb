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
  module BitMapImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class BitMap 
    include_class_members BitMapImports
    
    attr_accessor :base_addr
    alias_method :attr_base_addr, :base_addr
    undef_method :base_addr
    alias_method :attr_base_addr=, :base_addr=
    undef_method :base_addr=
    
    attr_accessor :row_bytes
    alias_method :attr_row_bytes, :row_bytes
    undef_method :row_bytes
    alias_method :attr_row_bytes=, :row_bytes=
    undef_method :row_bytes=
    
    # Rect bounds;
    attr_accessor :top
    alias_method :attr_top, :top
    undef_method :top
    alias_method :attr_top=, :top=
    undef_method :top=
    
    attr_accessor :left
    alias_method :attr_left, :left
    undef_method :left
    alias_method :attr_left=, :left=
    undef_method :left=
    
    attr_accessor :bottom
    alias_method :attr_bottom, :bottom
    undef_method :bottom
    alias_method :attr_bottom=, :bottom=
    undef_method :bottom=
    
    attr_accessor :right
    alias_method :attr_right, :right
    undef_method :right
    alias_method :attr_right=, :right=
    undef_method :right=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 14 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @base_addr = 0
      @row_bytes = 0
      @top = 0
      @left = 0
      @bottom = 0
      @right = 0
    end
    
    private
    alias_method :initialize__bit_map, :initialize
  end
  
end
