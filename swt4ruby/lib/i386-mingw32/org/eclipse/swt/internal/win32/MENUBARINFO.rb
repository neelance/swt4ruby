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
  module MENUBARINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class MENUBARINFO 
    include_class_members MENUBARINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    # RECT  rcBar;
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
    
    # long
    attr_accessor :h_menu
    alias_method :attr_h_menu, :h_menu
    undef_method :h_menu
    alias_method :attr_h_menu=, :h_menu=
    undef_method :h_menu=
    
    # long
    attr_accessor :hwnd_menu
    alias_method :attr_hwnd_menu, :hwnd_menu
    undef_method :hwnd_menu
    alias_method :attr_hwnd_menu=, :hwnd_menu=
    undef_method :hwnd_menu=
    
    attr_accessor :f_bar_focused
    alias_method :attr_f_bar_focused, :f_bar_focused
    undef_method :f_bar_focused
    alias_method :attr_f_bar_focused=, :f_bar_focused=
    undef_method :f_bar_focused=
    
    attr_accessor :f_focused
    alias_method :attr_f_focused, :f_focused
    undef_method :f_focused
    alias_method :attr_f_focused=, :f_focused=
    undef_method :f_focused=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._menubarinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @left = 0
      @top = 0
      @right = 0
      @bottom = 0
      @h_menu = 0
      @hwnd_menu = 0
      @f_bar_focused = false
      @f_focused = false
    end
    
    private
    alias_method :initialize__menubarinfo, :initialize
  end
  
end
