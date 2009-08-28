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
  module ControlTabInfoRecV1Imports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class ControlTabInfoRecV1 
    include_class_members ControlTabInfoRecV1Imports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :icon_suite_id
    alias_method :attr_icon_suite_id, :icon_suite_id
    undef_method :icon_suite_id
    alias_method :attr_icon_suite_id=, :icon_suite_id=
    undef_method :icon_suite_id=
    
    attr_accessor :name
    alias_method :attr_name, :name
    undef_method :name
    alias_method :attr_name=, :name=
    undef_method :name=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 8 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @icon_suite_id = 0
      @name = 0
    end
    
    private
    alias_method :initialize__control_tab_info_rec_v1, :initialize
  end
  
end
