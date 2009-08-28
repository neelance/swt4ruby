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
  module ProgressTrackInfoImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class ProgressTrackInfo 
    include_class_members ProgressTrackInfoImports
    
    attr_accessor :phase
    alias_method :attr_phase, :phase
    undef_method :phase
    alias_method :attr_phase=, :phase=
    undef_method :phase=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 2 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @phase = 0
    end
    
    private
    alias_method :initialize__progress_track_info, :initialize
  end
  
end
