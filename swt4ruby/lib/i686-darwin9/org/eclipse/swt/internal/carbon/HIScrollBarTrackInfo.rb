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
  module HIScrollBarTrackInfoImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class HIScrollBarTrackInfo 
    include_class_members HIScrollBarTrackInfoImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :enable_state
    alias_method :attr_enable_state, :enable_state
    undef_method :enable_state
    alias_method :attr_enable_state=, :enable_state=
    undef_method :enable_state=
    
    attr_accessor :press_state
    alias_method :attr_press_state, :press_state
    undef_method :press_state
    alias_method :attr_press_state=, :press_state=
    undef_method :press_state=
    
    attr_accessor :viewsize
    alias_method :attr_viewsize, :viewsize
    undef_method :viewsize
    alias_method :attr_viewsize=, :viewsize=
    undef_method :viewsize=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 10 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @enable_state = 0
      @press_state = 0
      @viewsize = 0.0
    end
    
    private
    alias_method :initialize__hiscroll_bar_track_info, :initialize
  end
  
end
