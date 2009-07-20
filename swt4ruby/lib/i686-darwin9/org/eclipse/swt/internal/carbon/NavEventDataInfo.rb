require "rjava"

# Copyright (c) 2003, 2008 IBM Corp.
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
  module NavEventDataInfoImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class NavEventDataInfo 
    include_class_members NavEventDataInfoImports
    
    attr_accessor :event
    alias_method :attr_event, :event
    undef_method :event
    alias_method :attr_event=, :event=
    undef_method :event=
    
    attr_accessor :param
    alias_method :attr_param, :param
    undef_method :param
    alias_method :attr_param=, :param=
    undef_method :param=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 4 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @event = 0
      @param = 0
    end
    
    private
    alias_method :initialize__nav_event_data_info, :initialize
  end
  
end
