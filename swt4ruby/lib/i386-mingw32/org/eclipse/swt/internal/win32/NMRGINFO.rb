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
  module NMRGINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMRGINFO < NMRGINFOImports.const_get :NMHDR
    include_class_members NMRGINFOImports
    
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
    
    attr_accessor :dw_item_spec
    alias_method :attr_dw_item_spec, :dw_item_spec
    undef_method :dw_item_spec
    alias_method :attr_dw_item_spec=, :dw_item_spec=
    undef_method :dw_item_spec=
    
    class_module.module_eval {
      
      def sizeof
        defined?(@@sizeof) ? @@sizeof : @@sizeof= OS._nmrginfo_sizeof
      end
      alias_method :attr_sizeof, :sizeof
      
      def sizeof=(value)
        @@sizeof = value
      end
      alias_method :attr_sizeof=, :sizeof=
    }
    
    typesig { [] }
    def initialize
      @x = 0
      @y = 0
      @dw_item_spec = 0
      super()
    end
    
    private
    alias_method :initialize__nmrginfo, :initialize
  end
  
end
