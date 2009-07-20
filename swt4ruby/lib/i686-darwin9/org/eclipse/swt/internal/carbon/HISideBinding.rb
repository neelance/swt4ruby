require "rjava"

# Copyright (c) 2003, 2007 IBM Corp.
# Portions Copyright (c) 1983-2002, Apple Computer, Inc.
# 
# All rights reserved.  This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Carbon
  module HISideBindingImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class HISideBinding 
    include_class_members HISideBindingImports
    
    attr_accessor :to_view
    alias_method :attr_to_view, :to_view
    undef_method :to_view
    alias_method :attr_to_view=, :to_view=
    undef_method :to_view=
    
    attr_accessor :kind
    alias_method :attr_kind, :kind
    undef_method :kind
    alias_method :attr_kind=, :kind=
    undef_method :kind=
    
    attr_accessor :offset
    alias_method :attr_offset, :offset
    undef_method :offset
    alias_method :attr_offset=, :offset=
    undef_method :offset=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 10 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @to_view = 0
      @kind = 0
      @offset = 0.0
    end
    
    private
    alias_method :initialize__hiside_binding, :initialize
  end
  
end
