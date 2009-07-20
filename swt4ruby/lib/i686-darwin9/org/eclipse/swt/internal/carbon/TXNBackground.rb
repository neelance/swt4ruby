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
  module TXNBackgroundImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class TXNBackground 
    include_class_members TXNBackgroundImports
    
    attr_accessor :bg_type
    alias_method :attr_bg_type, :bg_type
    undef_method :bg_type
    alias_method :attr_bg_type=, :bg_type=
    undef_method :bg_type=
    
    attr_accessor :bg_red
    alias_method :attr_bg_red, :bg_red
    undef_method :bg_red
    alias_method :attr_bg_red=, :bg_red=
    undef_method :bg_red=
    
    attr_accessor :bg_green
    alias_method :attr_bg_green, :bg_green
    undef_method :bg_green
    alias_method :attr_bg_green=, :bg_green=
    undef_method :bg_green=
    
    attr_accessor :bg_blue
    alias_method :attr_bg_blue, :bg_blue
    undef_method :bg_blue
    alias_method :attr_bg_blue=, :bg_blue=
    undef_method :bg_blue=
    
    class_module.module_eval {
      const_set_lazy(:Sizof) { 10 }
      const_attr_reader  :Sizof
    }
    
    typesig { [] }
    def initialize
      @bg_type = 0
      @bg_red = 0
      @bg_green = 0
      @bg_blue = 0
    end
    
    private
    alias_method :initialize__txnbackground, :initialize
  end
  
end
