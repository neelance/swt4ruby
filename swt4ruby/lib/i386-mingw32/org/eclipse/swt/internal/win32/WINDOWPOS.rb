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
  module WINDOWPOSImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class WINDOWPOS 
    include_class_members WINDOWPOSImports
    
    # long
    attr_accessor :hwnd
    alias_method :attr_hwnd, :hwnd
    undef_method :hwnd
    alias_method :attr_hwnd=, :hwnd=
    undef_method :hwnd=
    
    # long
    attr_accessor :hwnd_insert_after
    alias_method :attr_hwnd_insert_after, :hwnd_insert_after
    undef_method :hwnd_insert_after
    alias_method :attr_hwnd_insert_after=, :hwnd_insert_after=
    undef_method :hwnd_insert_after=
    
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
    
    attr_accessor :cx
    alias_method :attr_cx, :cx
    undef_method :cx
    alias_method :attr_cx=, :cx=
    undef_method :cx=
    
    attr_accessor :cy
    alias_method :attr_cy, :cy
    undef_method :cy
    alias_method :attr_cy=, :cy=
    undef_method :cy=
    
    attr_accessor :flags
    alias_method :attr_flags, :flags
    undef_method :flags
    alias_method :attr_flags=, :flags=
    undef_method :flags=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._windowpos_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @hwnd = 0
      @hwnd_insert_after = 0
      @x = 0
      @y = 0
      @cx = 0
      @cy = 0
      @flags = 0
    end
    
    private
    alias_method :initialize__windowpos, :initialize
  end
  
end
