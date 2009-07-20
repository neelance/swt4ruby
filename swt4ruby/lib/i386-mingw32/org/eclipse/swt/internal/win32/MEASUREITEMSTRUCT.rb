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
  module MEASUREITEMSTRUCTImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class MEASUREITEMSTRUCT 
    include_class_members MEASUREITEMSTRUCTImports
    
    attr_accessor :ctl_type
    alias_method :attr_ctl_type, :ctl_type
    undef_method :ctl_type
    alias_method :attr_ctl_type=, :ctl_type=
    undef_method :ctl_type=
    
    attr_accessor :ctl_id
    alias_method :attr_ctl_id, :ctl_id
    undef_method :ctl_id
    alias_method :attr_ctl_id=, :ctl_id=
    undef_method :ctl_id=
    
    attr_accessor :item_id
    alias_method :attr_item_id, :item_id
    undef_method :item_id
    alias_method :attr_item_id=, :item_id=
    undef_method :item_id=
    
    attr_accessor :item_width
    alias_method :attr_item_width, :item_width
    undef_method :item_width
    alias_method :attr_item_width=, :item_width=
    undef_method :item_width=
    
    attr_accessor :item_height
    alias_method :attr_item_height, :item_height
    undef_method :item_height
    alias_method :attr_item_height=, :item_height=
    undef_method :item_height=
    
    # long
    attr_accessor :item_data
    alias_method :attr_item_data, :item_data
    undef_method :item_data
    alias_method :attr_item_data=, :item_data=
    undef_method :item_data=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._measureitemstruct_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @ctl_type = 0
      @ctl_id = 0
      @item_id = 0
      @item_width = 0
      @item_height = 0
      @item_data = 0
    end
    
    private
    alias_method :initialize__measureitemstruct, :initialize
  end
  
end
