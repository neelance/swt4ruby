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
  module NavEventDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class NavEventData 
    include_class_members NavEventDataImports
    
    attr_accessor :event_data_parms
    alias_method :attr_event_data_parms, :event_data_parms
    undef_method :event_data_parms
    alias_method :attr_event_data_parms=, :event_data_parms=
    undef_method :event_data_parms=
    
    attr_accessor :item_hit
    alias_method :attr_item_hit, :item_hit
    undef_method :item_hit
    alias_method :attr_item_hit=, :item_hit=
    undef_method :item_hit=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 6 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @event_data_parms = NavEventDataInfo.new
      @item_hit = 0
    end
    
    private
    alias_method :initialize__nav_event_data, :initialize
  end
  
end
