require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Gtk
  module XWindowChangesImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class XWindowChanges 
    include_class_members XWindowChangesImports
    
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
    
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    attr_accessor :border_width
    alias_method :attr_border_width, :border_width
    undef_method :border_width
    alias_method :attr_border_width=, :border_width=
    undef_method :border_width=
    
    # int
    attr_accessor :sibling
    alias_method :attr_sibling, :sibling
    undef_method :sibling
    alias_method :attr_sibling=, :sibling=
    undef_method :sibling=
    
    attr_accessor :stack_mode
    alias_method :attr_stack_mode, :stack_mode
    undef_method :stack_mode
    alias_method :attr_stack_mode=, :stack_mode=
    undef_method :stack_mode=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._xwindow_changes_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @x = 0
      @y = 0
      @width = 0
      @height = 0
      @border_width = 0
      @sibling = 0
      @stack_mode = 0
    end
    
    private
    alias_method :initialize__xwindow_changes, :initialize
  end
  
end
