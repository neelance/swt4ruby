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
  module CGPatternCallbacksImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class CGPatternCallbacks 
    include_class_members CGPatternCallbacksImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :draw_pattern
    alias_method :attr_draw_pattern, :draw_pattern
    undef_method :draw_pattern
    alias_method :attr_draw_pattern=, :draw_pattern=
    undef_method :draw_pattern=
    
    attr_accessor :release_info
    alias_method :attr_release_info, :release_info
    undef_method :release_info
    alias_method :attr_release_info=, :release_info=
    undef_method :release_info=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 12 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @draw_pattern = 0
      @release_info = 0
    end
    
    private
    alias_method :initialize__cgpattern_callbacks, :initialize
  end
  
end
