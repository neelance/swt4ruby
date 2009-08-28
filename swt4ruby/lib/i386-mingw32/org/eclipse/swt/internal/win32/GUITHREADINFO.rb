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
  module GUITHREADINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class GUITHREADINFO 
    include_class_members GUITHREADINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    attr_accessor :flags
    alias_method :attr_flags, :flags
    undef_method :flags
    alias_method :attr_flags=, :flags=
    undef_method :flags=
    
    # long
    attr_accessor :hwnd_active
    alias_method :attr_hwnd_active, :hwnd_active
    undef_method :hwnd_active
    alias_method :attr_hwnd_active=, :hwnd_active=
    undef_method :hwnd_active=
    
    # long
    attr_accessor :hwnd_focus
    alias_method :attr_hwnd_focus, :hwnd_focus
    undef_method :hwnd_focus
    alias_method :attr_hwnd_focus=, :hwnd_focus=
    undef_method :hwnd_focus=
    
    # long
    attr_accessor :hwnd_capture
    alias_method :attr_hwnd_capture, :hwnd_capture
    undef_method :hwnd_capture
    alias_method :attr_hwnd_capture=, :hwnd_capture=
    undef_method :hwnd_capture=
    
    # long
    attr_accessor :hwnd_menu_owner
    alias_method :attr_hwnd_menu_owner, :hwnd_menu_owner
    undef_method :hwnd_menu_owner
    alias_method :attr_hwnd_menu_owner=, :hwnd_menu_owner=
    undef_method :hwnd_menu_owner=
    
    # long
    attr_accessor :hwnd_move_size
    alias_method :attr_hwnd_move_size, :hwnd_move_size
    undef_method :hwnd_move_size
    alias_method :attr_hwnd_move_size=, :hwnd_move_size=
    undef_method :hwnd_move_size=
    
    # long
    attr_accessor :hwnd_caret
    alias_method :attr_hwnd_caret, :hwnd_caret
    undef_method :hwnd_caret
    alias_method :attr_hwnd_caret=, :hwnd_caret=
    undef_method :hwnd_caret=
    
    # RECT rcCaret;
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
      
      def sizeof
        defined?(@@sizeof) ? @@sizeof : @@sizeof= OS._guithreadinfo_sizeof
      end
      alias_method :attr_sizeof, :sizeof
      
      def sizeof=(value)
        @@sizeof = value
      end
      alias_method :attr_sizeof=, :sizeof=
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @flags = 0
      @hwnd_active = 0
      @hwnd_focus = 0
      @hwnd_capture = 0
      @hwnd_menu_owner = 0
      @hwnd_move_size = 0
      @hwnd_caret = 0
      @left = 0
      @top = 0
      @right = 0
      @bottom = 0
    end
    
    private
    alias_method :initialize__guithreadinfo, :initialize
  end
  
end
