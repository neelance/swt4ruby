require "rjava"

# Copyright (c) 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Layout
  module FillDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Layout
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  class FillData 
    include_class_members FillDataImports
    
    attr_accessor :default_width
    alias_method :attr_default_width, :default_width
    undef_method :default_width
    alias_method :attr_default_width=, :default_width=
    undef_method :default_width=
    
    attr_accessor :default_height
    alias_method :attr_default_height, :default_height
    undef_method :default_height
    alias_method :attr_default_height=, :default_height=
    undef_method :default_height=
    
    attr_accessor :current_whint
    alias_method :attr_current_whint, :current_whint
    undef_method :current_whint
    alias_method :attr_current_whint=, :current_whint=
    undef_method :current_whint=
    
    attr_accessor :current_hhint
    alias_method :attr_current_hhint, :current_hhint
    undef_method :current_hhint
    alias_method :attr_current_hhint=, :current_hhint=
    undef_method :current_hhint=
    
    attr_accessor :current_width
    alias_method :attr_current_width, :current_width
    undef_method :current_width
    alias_method :attr_current_width=, :current_width=
    undef_method :current_width=
    
    attr_accessor :current_height
    alias_method :attr_current_height, :current_height
    undef_method :current_height
    alias_method :attr_current_height=, :current_height=
    undef_method :current_height=
    
    typesig { [Control, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(control, w_hint, h_hint, flush_cache)
      if (flush_cache)
        flush_cache
      end
      if ((w_hint).equal?(SWT::DEFAULT) && (h_hint).equal?(SWT::DEFAULT))
        if ((@default_width).equal?(-1) || (@default_height).equal?(-1))
          size = control.compute_size(w_hint, h_hint, flush_cache)
          @default_width = size.attr_x
          @default_height = size.attr_y
        end
        return Point.new(@default_width, @default_height)
      end
      if ((@current_width).equal?(-1) || (@current_height).equal?(-1) || !(w_hint).equal?(@current_whint) || !(h_hint).equal?(@current_hhint))
        size = control.compute_size(w_hint, h_hint, flush_cache)
        @current_whint = w_hint
        @current_hhint = h_hint
        @current_width = size.attr_x
        @current_height = size.attr_y
      end
      return Point.new(@current_width, @current_height)
    end
    
    typesig { [] }
    def flush_cache
      @default_width = @default_height = -1
      @current_width = @current_height = -1
    end
    
    typesig { [] }
    def initialize
      @default_width = -1
      @default_height = -1
      @current_whint = 0
      @current_hhint = 0
      @current_width = -1
      @current_height = -1
    end
    
    private
    alias_method :initialize__fill_data, :initialize
  end
  
end
