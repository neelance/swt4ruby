require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module HDITEMImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class HDITEM 
    include_class_members HDITEMImports
    
    attr_accessor :mask
    alias_method :attr_mask, :mask
    undef_method :mask
    alias_method :attr_mask=, :mask=
    undef_method :mask=
    
    attr_accessor :cxy
    alias_method :attr_cxy, :cxy
    undef_method :cxy
    alias_method :attr_cxy=, :cxy=
    undef_method :cxy=
    
    # @field cast=(LPTSTR)
    # long
    attr_accessor :psz_text
    alias_method :attr_psz_text, :psz_text
    undef_method :psz_text
    alias_method :attr_psz_text=, :psz_text=
    undef_method :psz_text=
    
    # @field cast=(HBITMAP)
    # long
    attr_accessor :hbm
    alias_method :attr_hbm, :hbm
    undef_method :hbm
    alias_method :attr_hbm=, :hbm=
    undef_method :hbm=
    
    attr_accessor :cch_text_max
    alias_method :attr_cch_text_max, :cch_text_max
    undef_method :cch_text_max
    alias_method :attr_cch_text_max=, :cch_text_max=
    undef_method :cch_text_max=
    
    attr_accessor :fmt
    alias_method :attr_fmt, :fmt
    undef_method :fmt
    alias_method :attr_fmt=, :fmt=
    undef_method :fmt=
    
    # long
    attr_accessor :l_param
    alias_method :attr_l_param, :l_param
    undef_method :l_param
    alias_method :attr_l_param=, :l_param=
    undef_method :l_param=
    
    attr_accessor :i_image
    alias_method :attr_i_image, :i_image
    undef_method :i_image
    alias_method :attr_i_image=, :i_image=
    undef_method :i_image=
    
    attr_accessor :i_order
    alias_method :attr_i_order, :i_order
    undef_method :i_order
    alias_method :attr_i_order=, :i_order=
    undef_method :i_order=
    
    # @field flags=no_wince
    attr_accessor :type
    alias_method :attr_type, :type
    undef_method :type
    alias_method :attr_type=, :type=
    undef_method :type=
    
    # @field cast=(void *),flags=no_wince
    # long
    attr_accessor :pv_filter
    alias_method :attr_pv_filter, :pv_filter
    undef_method :pv_filter
    alias_method :attr_pv_filter=, :pv_filter=
    undef_method :pv_filter=
    
    class_module.module_eval {
      
      def sizeof
        defined?(@@sizeof) ? @@sizeof : @@sizeof= OS._hditem_sizeof
      end
      alias_method :attr_sizeof, :sizeof
      
      def sizeof=(value)
        @@sizeof = value
      end
      alias_method :attr_sizeof=, :sizeof=
    }
    
    typesig { [] }
    def initialize
      @mask = 0
      @cxy = 0
      @psz_text = 0
      @hbm = 0
      @cch_text_max = 0
      @fmt = 0
      @l_param = 0
      @i_image = 0
      @i_order = 0
      @type = 0
      @pv_filter = 0
    end
    
    private
    alias_method :initialize__hditem, :initialize
  end
  
end
