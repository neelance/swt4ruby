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
  module HIThemeAnimationTimeInfoImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class HIThemeAnimationTimeInfo 
    include_class_members HIThemeAnimationTimeInfoImports
    
    attr_accessor :start
    alias_method :attr_start, :start
    undef_method :start
    alias_method :attr_start=, :start=
    undef_method :start=
    
    attr_accessor :current
    alias_method :attr_current, :current
    undef_method :current
    alias_method :attr_current=, :current=
    undef_method :current=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 16 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @start = 0
      @current = 0
    end
    
    private
    alias_method :initialize__hitheme_animation_time_info, :initialize
  end
  
end
