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
  module PAINTSTRUCTImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class PAINTSTRUCT 
    include_class_members PAINTSTRUCTImports
    
    # long
    attr_accessor :hdc
    alias_method :attr_hdc, :hdc
    undef_method :hdc
    alias_method :attr_hdc=, :hdc=
    undef_method :hdc=
    
    attr_accessor :f_erase
    alias_method :attr_f_erase, :f_erase
    undef_method :f_erase
    alias_method :attr_f_erase=, :f_erase=
    undef_method :f_erase=
    
    # public RECT rcPaint;
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
    
    attr_accessor :f_restore
    alias_method :attr_f_restore, :f_restore
    undef_method :f_restore
    alias_method :attr_f_restore=, :f_restore=
    undef_method :f_restore=
    
    attr_accessor :f_inc_update
    alias_method :attr_f_inc_update, :f_inc_update
    undef_method :f_inc_update
    alias_method :attr_f_inc_update=, :f_inc_update=
    undef_method :f_inc_update=
    
    attr_accessor :rgb_reserved
    alias_method :attr_rgb_reserved, :rgb_reserved
    undef_method :rgb_reserved
    alias_method :attr_rgb_reserved=, :rgb_reserved=
    undef_method :rgb_reserved=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._paintstruct_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @hdc = 0
      @f_erase = false
      @left = 0
      @top = 0
      @right = 0
      @bottom = 0
      @f_restore = false
      @f_inc_update = false
      @rgb_reserved = Array.typed(::Java::Byte).new(32) { 0 }
    end
    
    private
    alias_method :initialize__paintstruct, :initialize
  end
  
end
