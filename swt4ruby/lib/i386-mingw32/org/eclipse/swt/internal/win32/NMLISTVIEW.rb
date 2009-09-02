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
  module NMLISTVIEWImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMLISTVIEW < NMLISTVIEWImports.const_get :NMHDR
    include_class_members NMLISTVIEWImports
    
    attr_accessor :i_item
    alias_method :attr_i_item, :i_item
    undef_method :i_item
    alias_method :attr_i_item=, :i_item=
    undef_method :i_item=
    
    attr_accessor :i_sub_item
    alias_method :attr_i_sub_item, :i_sub_item
    undef_method :i_sub_item
    alias_method :attr_i_sub_item=, :i_sub_item=
    undef_method :i_sub_item=
    
    attr_accessor :u_new_state
    alias_method :attr_u_new_state, :u_new_state
    undef_method :u_new_state
    alias_method :attr_u_new_state=, :u_new_state=
    undef_method :u_new_state=
    
    attr_accessor :u_old_state
    alias_method :attr_u_old_state, :u_old_state
    undef_method :u_old_state
    alias_method :attr_u_old_state=, :u_old_state=
    undef_method :u_old_state=
    
    attr_accessor :u_changed
    alias_method :attr_u_changed, :u_changed
    undef_method :u_changed
    alias_method :attr_u_changed=, :u_changed=
    undef_method :u_changed=
    
    # POINT ptAction;
    # @field accessor=ptAction.x
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    # @field accessor=ptAction.y
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    # long
    attr_accessor :l_param
    alias_method :attr_l_param, :l_param
    undef_method :l_param
    alias_method :attr_l_param=, :l_param=
    undef_method :l_param=
    
    class_module.module_eval {
      
      def sizeof
        defined?(@@sizeof) ? @@sizeof : @@sizeof= OS._nmlistview_sizeof
      end
      alias_method :attr_sizeof, :sizeof
      
      def sizeof=(value)
        @@sizeof = value
      end
      alias_method :attr_sizeof=, :sizeof=
    }
    
    typesig { [] }
    def initialize
      @i_item = 0
      @i_sub_item = 0
      @u_new_state = 0
      @u_old_state = 0
      @u_changed = 0
      @x = 0
      @y = 0
      @l_param = 0
      super()
    end
    
    private
    alias_method :initialize__nmlistview, :initialize
  end
  
end
