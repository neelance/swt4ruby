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
  module ScrollBarTrackInfoImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class ScrollBarTrackInfo 
    include_class_members ScrollBarTrackInfoImports
    
    attr_accessor :viewsize
    alias_method :attr_viewsize, :viewsize
    undef_method :viewsize
    alias_method :attr_viewsize=, :viewsize=
    undef_method :viewsize=
    
    attr_accessor :press_state
    alias_method :attr_press_state, :press_state
    undef_method :press_state
    alias_method :attr_press_state=, :press_state=
    undef_method :press_state=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 6 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @viewsize = 0
      @press_state = 0
    end
    
    private
    alias_method :initialize__scroll_bar_track_info, :initialize
  end
  
end
