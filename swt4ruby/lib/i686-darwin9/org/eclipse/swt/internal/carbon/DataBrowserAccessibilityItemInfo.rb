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
  module DataBrowserAccessibilityItemInfoImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class DataBrowserAccessibilityItemInfo 
    include_class_members DataBrowserAccessibilityItemInfoImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :v0_container
    alias_method :attr_v0_container, :v0_container
    undef_method :v0_container
    alias_method :attr_v0_container=, :v0_container=
    undef_method :v0_container=
    
    attr_accessor :v0_item
    alias_method :attr_v0_item, :v0_item
    undef_method :v0_item
    alias_method :attr_v0_item=, :v0_item=
    undef_method :v0_item=
    
    attr_accessor :v0_column_property
    alias_method :attr_v0_column_property, :v0_column_property
    undef_method :v0_column_property
    alias_method :attr_v0_column_property=, :v0_column_property=
    undef_method :v0_column_property=
    
    attr_accessor :v0_property_part
    alias_method :attr_v0_property_part, :v0_property_part
    undef_method :v0_property_part
    alias_method :attr_v0_property_part=, :v0_property_part=
    undef_method :v0_property_part=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 20 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @v0_container = 0
      @v0_item = 0
      @v0_column_property = 0
      @v0_property_part = 0
    end
    
    private
    alias_method :initialize__data_browser_accessibility_item_info, :initialize
  end
  
end
