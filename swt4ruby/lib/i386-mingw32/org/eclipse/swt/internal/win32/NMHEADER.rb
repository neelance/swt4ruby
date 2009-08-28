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
  module NMHEADERImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMHEADER < NMHEADERImports.const_get :NMHDR
    include_class_members NMHEADERImports
    
    attr_accessor :i_item
    alias_method :attr_i_item, :i_item
    undef_method :i_item
    alias_method :attr_i_item=, :i_item=
    undef_method :i_item=
    
    attr_accessor :i_button
    alias_method :attr_i_button, :i_button
    undef_method :i_button
    alias_method :attr_i_button=, :i_button=
    undef_method :i_button=
    
    # long
    attr_accessor :pitem
    alias_method :attr_pitem, :pitem
    undef_method :pitem
    alias_method :attr_pitem=, :pitem=
    undef_method :pitem=
    
    class_module.module_eval {
      
      def sizeof
        defined?(@@sizeof) ? @@sizeof : @@sizeof= OS._nmheader_sizeof
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
      @i_button = 0
      @pitem = 0
      super()
    end
    
    private
    alias_method :initialize__nmheader, :initialize
  end
  
end
