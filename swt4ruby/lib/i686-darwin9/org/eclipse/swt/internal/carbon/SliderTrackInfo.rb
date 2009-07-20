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
  module SliderTrackInfoImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class SliderTrackInfo 
    include_class_members SliderTrackInfoImports
    
    attr_accessor :thumb_dir
    alias_method :attr_thumb_dir, :thumb_dir
    undef_method :thumb_dir
    alias_method :attr_thumb_dir=, :thumb_dir=
    undef_method :thumb_dir=
    
    attr_accessor :press_state
    alias_method :attr_press_state, :press_state
    undef_method :press_state
    alias_method :attr_press_state=, :press_state=
    undef_method :press_state=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 2 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @thumb_dir = 0
      @press_state = 0
    end
    
    private
    alias_method :initialize__slider_track_info, :initialize
  end
  
end
