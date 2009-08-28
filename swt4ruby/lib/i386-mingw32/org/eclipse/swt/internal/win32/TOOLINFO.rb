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
  module TOOLINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class TOOLINFO 
    include_class_members TOOLINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    attr_accessor :u_flags
    alias_method :attr_u_flags, :u_flags
    undef_method :u_flags
    alias_method :attr_u_flags=, :u_flags=
    undef_method :u_flags=
    
    # long
    attr_accessor :hwnd
    alias_method :attr_hwnd, :hwnd
    undef_method :hwnd
    alias_method :attr_hwnd=, :hwnd=
    undef_method :hwnd=
    
    # long
    attr_accessor :u_id
    alias_method :attr_u_id, :u_id
    undef_method :u_id
    alias_method :attr_u_id=, :u_id=
    undef_method :u_id=
    
    # public RECT rect;
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
    attr_accessor :hinst
    alias_method :attr_hinst, :hinst
    undef_method :hinst
    alias_method :attr_hinst=, :hinst=
    undef_method :hinst=
    
    # long
    attr_accessor :lpsz_text
    alias_method :attr_lpsz_text, :lpsz_text
    undef_method :lpsz_text
    alias_method :attr_lpsz_text=, :lpsz_text=
    undef_method :lpsz_text=
    
    # long
    attr_accessor :l_param
    alias_method :attr_l_param, :l_param
    undef_method :l_param
    alias_method :attr_l_param=, :l_param=
    undef_method :l_param=
    
    # long
    attr_accessor :lp_reserved
    alias_method :attr_lp_reserved, :lp_reserved
    undef_method :lp_reserved
    alias_method :attr_lp_reserved=, :lp_reserved=
    undef_method :lp_reserved=
    
    class_module.module_eval {
      
      def sizeof
        defined?(@@sizeof) ? @@sizeof : @@sizeof= !OS::IsWinCE && OS::WIN32_VERSION >= OS._version(5, 1) ? OS._toolinfo_sizeof : 44
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
      @u_flags = 0
      @hwnd = 0
      @u_id = 0
      @left = 0
      @top = 0
      @right = 0
      @bottom = 0
      @hinst = 0
      @lpsz_text = 0
      @l_param = 0
      @lp_reserved = 0
    end
    
    private
    alias_method :initialize__toolinfo, :initialize
  end
  
end
