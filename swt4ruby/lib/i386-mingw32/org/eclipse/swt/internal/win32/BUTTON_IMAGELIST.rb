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
  module BUTTON_IMAGELISTImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class BUTTON_IMAGELIST 
    include_class_members BUTTON_IMAGELISTImports
    
    # long
    attr_accessor :himl
    alias_method :attr_himl, :himl
    undef_method :himl
    alias_method :attr_himl=, :himl=
    undef_method :himl=
    
    attr_accessor :margin_left
    alias_method :attr_margin_left, :margin_left
    undef_method :margin_left
    alias_method :attr_margin_left=, :margin_left=
    undef_method :margin_left=
    
    attr_accessor :margin_top
    alias_method :attr_margin_top, :margin_top
    undef_method :margin_top
    alias_method :attr_margin_top=, :margin_top=
    undef_method :margin_top=
    
    attr_accessor :margin_right
    alias_method :attr_margin_right, :margin_right
    undef_method :margin_right
    alias_method :attr_margin_right=, :margin_right=
    undef_method :margin_right=
    
    attr_accessor :margin_bottom
    alias_method :attr_margin_bottom, :margin_bottom
    undef_method :margin_bottom
    alias_method :attr_margin_bottom=, :margin_bottom=
    undef_method :margin_bottom=
    
    attr_accessor :u_align
    alias_method :attr_u_align, :u_align
    undef_method :u_align
    alias_method :attr_u_align=, :u_align=
    undef_method :u_align=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._button_imagelist_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @himl = 0
      @margin_left = 0
      @margin_top = 0
      @margin_right = 0
      @margin_bottom = 0
      @u_align = 0
    end
    
    private
    alias_method :initialize__button_imagelist, :initialize
  end
  
end
