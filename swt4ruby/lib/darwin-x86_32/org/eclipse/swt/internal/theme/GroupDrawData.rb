require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Theme
  module GroupDrawDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  class GroupDrawData < GroupDrawDataImports.const_get :DrawData
    include_class_members GroupDrawDataImports
    
    attr_accessor :header_width
    alias_method :attr_header_width, :header_width
    undef_method :header_width
    alias_method :attr_header_width=, :header_width=
    undef_method :header_width=
    
    attr_accessor :header_height
    alias_method :attr_header_height, :header_height
    undef_method :header_height
    alias_method :attr_header_height=, :header_height=
    undef_method :header_height=
    
    attr_accessor :header_area
    alias_method :attr_header_area, :header_area
    undef_method :header_area
    alias_method :attr_header_area=, :header_area=
    undef_method :header_area=
    
    typesig { [] }
    def initialize
      @header_width = 0
      @header_height = 0
      @header_area = nil
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    private
    alias_method :initialize__group_draw_data, :initialize
  end
  
end
