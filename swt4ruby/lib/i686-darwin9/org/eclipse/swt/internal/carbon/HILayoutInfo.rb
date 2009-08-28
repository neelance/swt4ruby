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
  module HILayoutInfoImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class HILayoutInfo 
    include_class_members HILayoutInfoImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :binding
    alias_method :attr_binding, :binding
    undef_method :binding
    alias_method :attr_binding=, :binding=
    undef_method :binding=
    
    attr_accessor :scale
    alias_method :attr_scale, :scale
    undef_method :scale
    alias_method :attr_scale=, :scale=
    undef_method :scale=
    
    attr_accessor :position
    alias_method :attr_position, :position
    undef_method :position
    alias_method :attr_position=, :position=
    undef_method :position=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 84 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @binding = HIBinding.new
      @scale = HIScaling.new
      @position = HIPositioning.new
    end
    
    private
    alias_method :initialize__hilayout_info, :initialize
  end
  
end
