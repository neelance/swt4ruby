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
  module ControlButtonContentInfoImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class ControlButtonContentInfo 
    include_class_members ControlButtonContentInfoImports
    
    attr_accessor :content_type
    alias_method :attr_content_type, :content_type
    undef_method :content_type
    alias_method :attr_content_type=, :content_type=
    undef_method :content_type=
    
    attr_accessor :icon_ref
    alias_method :attr_icon_ref, :icon_ref
    undef_method :icon_ref
    alias_method :attr_icon_ref=, :icon_ref=
    undef_method :icon_ref=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 6 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @content_type = 0
      @icon_ref = 0
    end
    
    private
    alias_method :initialize__control_button_content_info, :initialize
  end
  
end
