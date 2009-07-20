require "rjava"

# Copyright (c) 2000, 2004 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Gtk
  module XCrossingEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class XCrossingEvent < XCrossingEventImports.const_get :XAnyEvent
    include_class_members XCrossingEventImports
    
    # int
    attr_accessor :root
    alias_method :attr_root, :root
    undef_method :root
    alias_method :attr_root=, :root=
    undef_method :root=
    
    # int
    attr_accessor :subwindow
    alias_method :attr_subwindow, :subwindow
    undef_method :subwindow
    alias_method :attr_subwindow=, :subwindow=
    undef_method :subwindow=
    
    attr_accessor :time
    alias_method :attr_time, :time
    undef_method :time
    alias_method :attr_time=, :time=
    undef_method :time=
    
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
    
    attr_accessor :x_root
    alias_method :attr_x_root, :x_root
    undef_method :x_root
    alias_method :attr_x_root=, :x_root=
    undef_method :x_root=
    
    attr_accessor :y_root
    alias_method :attr_y_root, :y_root
    undef_method :y_root
    alias_method :attr_y_root=, :y_root=
    undef_method :y_root=
    
    attr_accessor :mode
    alias_method :attr_mode, :mode
    undef_method :mode
    alias_method :attr_mode=, :mode=
    undef_method :mode=
    
    attr_accessor :detail
    alias_method :attr_detail, :detail
    undef_method :detail
    alias_method :attr_detail=, :detail=
    undef_method :detail=
    
    attr_accessor :same_screen
    alias_method :attr_same_screen, :same_screen
    undef_method :same_screen
    alias_method :attr_same_screen=, :same_screen=
    undef_method :same_screen=
    
    attr_accessor :focus
    alias_method :attr_focus, :focus
    undef_method :focus
    alias_method :attr_focus=, :focus=
    undef_method :focus=
    
    attr_accessor :state
    alias_method :attr_state, :state
    undef_method :state
    alias_method :attr_state=, :state=
    undef_method :state=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._xcrossing_event_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @root = 0
      @subwindow = 0
      @time = 0
      @x = 0
      @y = 0
      @x_root = 0
      @y_root = 0
      @mode = 0
      @detail = 0
      @same_screen = false
      @focus = false
      @state = 0
      super()
    end
    
    private
    alias_method :initialize__xcrossing_event, :initialize
  end
  
end
