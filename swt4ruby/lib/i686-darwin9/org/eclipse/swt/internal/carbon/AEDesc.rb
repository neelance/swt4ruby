require "rjava"

# Copyright (c) 2003-2004 IBM Corp.
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
  module AEDescImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class AEDesc 
    include_class_members AEDescImports
    
    attr_accessor :descriptor_type
    alias_method :attr_descriptor_type, :descriptor_type
    undef_method :descriptor_type
    alias_method :attr_descriptor_type=, :descriptor_type=
    undef_method :descriptor_type=
    
    attr_accessor :data_handle
    alias_method :attr_data_handle, :data_handle
    undef_method :data_handle
    alias_method :attr_data_handle=, :data_handle=
    undef_method :data_handle=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 8 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @descriptor_type = 0
      @data_handle = 0
    end
    
    private
    alias_method :initialize__aedesc, :initialize
  end
  
end
