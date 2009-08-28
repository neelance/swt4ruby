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
  module ControlTabEntryImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class ControlTabEntry 
    include_class_members ControlTabEntryImports
    
    attr_accessor :icon
    alias_method :attr_icon, :icon
    undef_method :icon
    alias_method :attr_icon=, :icon=
    undef_method :icon=
    
    attr_accessor :name
    alias_method :attr_name, :name
    undef_method :name
    alias_method :attr_name=, :name=
    undef_method :name=
    
    attr_accessor :enabled
    alias_method :attr_enabled, :enabled
    undef_method :enabled
    alias_method :attr_enabled=, :enabled=
    undef_method :enabled=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 10 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @icon = 0
      @name = 0
      @enabled = false
    end
    
    private
    alias_method :initialize__control_tab_entry, :initialize
  end
  
end
