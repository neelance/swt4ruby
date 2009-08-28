require "rjava"

# Copyright (c) 2003, 2005 IBM Corp.
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
  module HIThemePopupArrowDrawInfoImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class HIThemePopupArrowDrawInfo 
    include_class_members HIThemePopupArrowDrawInfoImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :state
    alias_method :attr_state, :state
    undef_method :state
    alias_method :attr_state=, :state=
    undef_method :state=
    
    attr_accessor :orientation
    alias_method :attr_orientation, :orientation
    undef_method :orientation
    alias_method :attr_orientation=, :orientation=
    undef_method :orientation=
    
    attr_accessor :size
    alias_method :attr_size, :size
    undef_method :size
    alias_method :attr_size=, :size=
    undef_method :size=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 12 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @state = 0
      @orientation = 0
      @size = 0
    end
    
    private
    alias_method :initialize__hitheme_popup_arrow_draw_info, :initialize
  end
  
end
