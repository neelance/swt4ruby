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
  module NMREBARCHEVRONImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMREBARCHEVRON < NMREBARCHEVRONImports.const_get :NMHDR
    include_class_members NMREBARCHEVRONImports
    
    attr_accessor :u_band
    alias_method :attr_u_band, :u_band
    undef_method :u_band
    alias_method :attr_u_band=, :u_band=
    undef_method :u_band=
    
    attr_accessor :w_id
    alias_method :attr_w_id, :w_id
    undef_method :w_id
    alias_method :attr_w_id=, :w_id=
    undef_method :w_id=
    
    # long
    attr_accessor :l_param
    alias_method :attr_l_param, :l_param
    undef_method :l_param
    alias_method :attr_l_param=, :l_param=
    undef_method :l_param=
    
    # RECT rc;
    # @field accessor=rc.left
    attr_accessor :left
    alias_method :attr_left, :left
    undef_method :left
    alias_method :attr_left=, :left=
    undef_method :left=
    
    # @field accessor=rc.top
    attr_accessor :top
    alias_method :attr_top, :top
    undef_method :top
    alias_method :attr_top=, :top=
    undef_method :top=
    
    # @field accessor=rc.right
    attr_accessor :right
    alias_method :attr_right, :right
    undef_method :right
    alias_method :attr_right=, :right=
    undef_method :right=
    
    # @field accessor=rc.bottom
    attr_accessor :bottom
    alias_method :attr_bottom, :bottom
    undef_method :bottom
    alias_method :attr_bottom=, :bottom=
    undef_method :bottom=
    
    # long
    attr_accessor :l_param_nm
    alias_method :attr_l_param_nm, :l_param_nm
    undef_method :l_param_nm
    alias_method :attr_l_param_nm=, :l_param_nm=
    undef_method :l_param_nm=
    
    class_module.module_eval {
      
      def sizeof
        defined?(@@sizeof) ? @@sizeof : @@sizeof= OS._nmrebarchevron_sizeof
      end
      alias_method :attr_sizeof, :sizeof
      
      def sizeof=(value)
        @@sizeof = value
      end
      alias_method :attr_sizeof=, :sizeof=
    }
    
    typesig { [] }
    def initialize
      @u_band = 0
      @w_id = 0
      @l_param = 0
      @left = 0
      @top = 0
      @right = 0
      @bottom = 0
      @l_param_nm = 0
      super()
    end
    
    private
    alias_method :initialize__nmrebarchevron, :initialize
  end
  
end
