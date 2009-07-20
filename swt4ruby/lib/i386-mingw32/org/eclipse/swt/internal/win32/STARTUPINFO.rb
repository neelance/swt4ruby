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
  module STARTUPINFOImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class STARTUPINFO 
    include_class_members STARTUPINFOImports
    
    attr_accessor :cb
    alias_method :attr_cb, :cb
    undef_method :cb
    alias_method :attr_cb=, :cb=
    undef_method :cb=
    
    # long
    attr_accessor :lp_reserved
    alias_method :attr_lp_reserved, :lp_reserved
    undef_method :lp_reserved
    alias_method :attr_lp_reserved=, :lp_reserved=
    undef_method :lp_reserved=
    
    # long
    attr_accessor :lp_desktop
    alias_method :attr_lp_desktop, :lp_desktop
    undef_method :lp_desktop
    alias_method :attr_lp_desktop=, :lp_desktop=
    undef_method :lp_desktop=
    
    # long
    attr_accessor :lp_title
    alias_method :attr_lp_title, :lp_title
    undef_method :lp_title
    alias_method :attr_lp_title=, :lp_title=
    undef_method :lp_title=
    
    attr_accessor :dw_x
    alias_method :attr_dw_x, :dw_x
    undef_method :dw_x
    alias_method :attr_dw_x=, :dw_x=
    undef_method :dw_x=
    
    attr_accessor :dw_y
    alias_method :attr_dw_y, :dw_y
    undef_method :dw_y
    alias_method :attr_dw_y=, :dw_y=
    undef_method :dw_y=
    
    attr_accessor :dw_xsize
    alias_method :attr_dw_xsize, :dw_xsize
    undef_method :dw_xsize
    alias_method :attr_dw_xsize=, :dw_xsize=
    undef_method :dw_xsize=
    
    attr_accessor :dw_ysize
    alias_method :attr_dw_ysize, :dw_ysize
    undef_method :dw_ysize
    alias_method :attr_dw_ysize=, :dw_ysize=
    undef_method :dw_ysize=
    
    attr_accessor :dw_xcount_chars
    alias_method :attr_dw_xcount_chars, :dw_xcount_chars
    undef_method :dw_xcount_chars
    alias_method :attr_dw_xcount_chars=, :dw_xcount_chars=
    undef_method :dw_xcount_chars=
    
    attr_accessor :dw_ycount_chars
    alias_method :attr_dw_ycount_chars, :dw_ycount_chars
    undef_method :dw_ycount_chars
    alias_method :attr_dw_ycount_chars=, :dw_ycount_chars=
    undef_method :dw_ycount_chars=
    
    attr_accessor :dw_fill_attribute
    alias_method :attr_dw_fill_attribute, :dw_fill_attribute
    undef_method :dw_fill_attribute
    alias_method :attr_dw_fill_attribute=, :dw_fill_attribute=
    undef_method :dw_fill_attribute=
    
    attr_accessor :dw_flags
    alias_method :attr_dw_flags, :dw_flags
    undef_method :dw_flags
    alias_method :attr_dw_flags=, :dw_flags=
    undef_method :dw_flags=
    
    attr_accessor :w_show_window
    alias_method :attr_w_show_window, :w_show_window
    undef_method :w_show_window
    alias_method :attr_w_show_window=, :w_show_window=
    undef_method :w_show_window=
    
    attr_accessor :cb_reserved2
    alias_method :attr_cb_reserved2, :cb_reserved2
    undef_method :cb_reserved2
    alias_method :attr_cb_reserved2=, :cb_reserved2=
    undef_method :cb_reserved2=
    
    # long
    attr_accessor :lp_reserved2
    alias_method :attr_lp_reserved2, :lp_reserved2
    undef_method :lp_reserved2
    alias_method :attr_lp_reserved2=, :lp_reserved2=
    undef_method :lp_reserved2=
    
    # long
    attr_accessor :h_std_input
    alias_method :attr_h_std_input, :h_std_input
    undef_method :h_std_input
    alias_method :attr_h_std_input=, :h_std_input=
    undef_method :h_std_input=
    
    # long
    attr_accessor :h_std_output
    alias_method :attr_h_std_output, :h_std_output
    undef_method :h_std_output
    alias_method :attr_h_std_output=, :h_std_output=
    undef_method :h_std_output=
    
    # long
    attr_accessor :h_std_error
    alias_method :attr_h_std_error, :h_std_error
    undef_method :h_std_error
    alias_method :attr_h_std_error=, :h_std_error=
    undef_method :h_std_error=
    
    class_module.module_eval {
      
      def sizeof
        defined?(@@sizeof) ? @@sizeof : @@sizeof= OS._startupinfo_sizeof
      end
      alias_method :attr_sizeof, :sizeof
      
      def sizeof=(value)
        @@sizeof = value
      end
      alias_method :attr_sizeof=, :sizeof=
    }
    
    typesig { [] }
    def initialize
      @cb = 0
      @lp_reserved = 0
      @lp_desktop = 0
      @lp_title = 0
      @dw_x = 0
      @dw_y = 0
      @dw_xsize = 0
      @dw_ysize = 0
      @dw_xcount_chars = 0
      @dw_ycount_chars = 0
      @dw_fill_attribute = 0
      @dw_flags = 0
      @w_show_window = 0
      @cb_reserved2 = 0
      @lp_reserved2 = 0
      @h_std_input = 0
      @h_std_output = 0
      @h_std_error = 0
    end
    
    private
    alias_method :initialize__startupinfo, :initialize
  end
  
end
