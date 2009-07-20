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
  module HIThemeAnimationFrameInfoImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class HIThemeAnimationFrameInfo 
    include_class_members HIThemeAnimationFrameInfoImports
    
    attr_accessor :index
    alias_method :attr_index, :index
    undef_method :index
    alias_method :attr_index=, :index=
    undef_method :index=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 4 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @index = 0
    end
    
    private
    alias_method :initialize__hitheme_animation_frame_info, :initialize
  end
  
end
