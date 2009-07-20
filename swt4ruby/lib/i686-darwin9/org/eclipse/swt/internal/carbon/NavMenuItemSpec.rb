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
  module NavMenuItemSpecImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class NavMenuItemSpec 
    include_class_members NavMenuItemSpecImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :menu_creator
    alias_method :attr_menu_creator, :menu_creator
    undef_method :menu_creator
    alias_method :attr_menu_creator=, :menu_creator=
    undef_method :menu_creator=
    
    attr_accessor :menu_type
    alias_method :attr_menu_type, :menu_type
    undef_method :menu_type
    alias_method :attr_menu_type=, :menu_type=
    undef_method :menu_type=
    
    attr_accessor :menu_item_name
    alias_method :attr_menu_item_name, :menu_item_name
    undef_method :menu_item_name
    alias_method :attr_menu_item_name=, :menu_item_name=
    undef_method :menu_item_name=
    
    attr_accessor :reserved
    alias_method :attr_reserved, :reserved
    undef_method :reserved
    alias_method :attr_reserved=, :reserved=
    undef_method :reserved=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 512 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @menu_creator = 0
      @menu_type = 0
      @menu_item_name = Array.typed(::Java::Byte).new(256) { 0 }
      @reserved = Array.typed(::Java::Byte).new(245) { 0 }
    end
    
    private
    alias_method :initialize__nav_menu_item_spec, :initialize
  end
  
end
