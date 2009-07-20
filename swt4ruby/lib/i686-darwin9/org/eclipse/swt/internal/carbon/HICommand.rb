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
  module HICommandImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class HICommand 
    include_class_members HICommandImports
    
    attr_accessor :attributes
    alias_method :attr_attributes, :attributes
    undef_method :attributes
    alias_method :attr_attributes=, :attributes=
    undef_method :attributes=
    
    attr_accessor :command_id
    alias_method :attr_command_id, :command_id
    undef_method :command_id
    alias_method :attr_command_id=, :command_id=
    undef_method :command_id=
    
    attr_accessor :menu_menu_ref
    alias_method :attr_menu_menu_ref, :menu_menu_ref
    undef_method :menu_menu_ref
    alias_method :attr_menu_menu_ref=, :menu_menu_ref=
    undef_method :menu_menu_ref=
    
    attr_accessor :menu_menu_item_index
    alias_method :attr_menu_menu_item_index, :menu_menu_item_index
    undef_method :menu_menu_item_index
    alias_method :attr_menu_menu_item_index=, :menu_menu_item_index=
    undef_method :menu_menu_item_index=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 14 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @attributes = 0
      @command_id = 0
      @menu_menu_ref = 0
      @menu_menu_item_index = 0
    end
    
    private
    alias_method :initialize__hicommand, :initialize
  end
  
end
