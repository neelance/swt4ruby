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
  module HIThemeFrameDrawInfoImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class HIThemeFrameDrawInfo 
    include_class_members HIThemeFrameDrawInfoImports
    
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
    
    attr_accessor :kind
    alias_method :attr_kind, :kind
    undef_method :kind
    alias_method :attr_kind=, :kind=
    undef_method :kind=
    
    attr_accessor :is_focused
    alias_method :attr_is_focused, :is_focused
    undef_method :is_focused
    alias_method :attr_is_focused=, :is_focused=
    undef_method :is_focused=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 14 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @state = 0
      @kind = 0
      @is_focused = false
    end
    
    private
    alias_method :initialize__hitheme_frame_draw_info, :initialize
  end
  
end
