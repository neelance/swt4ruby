require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module MINMAXINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class MINMAXINFO 
    include_class_members MINMAXINFOImports
    
    # POINT ptReserved;
    attr_accessor :pt_reserved_x
    alias_method :attr_pt_reserved_x, :pt_reserved_x
    undef_method :pt_reserved_x
    alias_method :attr_pt_reserved_x=, :pt_reserved_x=
    undef_method :pt_reserved_x=
    
    attr_accessor :pt_reserved_y
    alias_method :attr_pt_reserved_y, :pt_reserved_y
    undef_method :pt_reserved_y
    alias_method :attr_pt_reserved_y=, :pt_reserved_y=
    undef_method :pt_reserved_y=
    
    # POINT ptMaxSize;
    attr_accessor :pt_max_size_x
    alias_method :attr_pt_max_size_x, :pt_max_size_x
    undef_method :pt_max_size_x
    alias_method :attr_pt_max_size_x=, :pt_max_size_x=
    undef_method :pt_max_size_x=
    
    attr_accessor :pt_max_size_y
    alias_method :attr_pt_max_size_y, :pt_max_size_y
    undef_method :pt_max_size_y
    alias_method :attr_pt_max_size_y=, :pt_max_size_y=
    undef_method :pt_max_size_y=
    
    # POINT ptMaxPosition;
    attr_accessor :pt_max_position_x
    alias_method :attr_pt_max_position_x, :pt_max_position_x
    undef_method :pt_max_position_x
    alias_method :attr_pt_max_position_x=, :pt_max_position_x=
    undef_method :pt_max_position_x=
    
    attr_accessor :pt_max_position_y
    alias_method :attr_pt_max_position_y, :pt_max_position_y
    undef_method :pt_max_position_y
    alias_method :attr_pt_max_position_y=, :pt_max_position_y=
    undef_method :pt_max_position_y=
    
    # POINT ptMinTrackSize;
    attr_accessor :pt_min_track_size_x
    alias_method :attr_pt_min_track_size_x, :pt_min_track_size_x
    undef_method :pt_min_track_size_x
    alias_method :attr_pt_min_track_size_x=, :pt_min_track_size_x=
    undef_method :pt_min_track_size_x=
    
    attr_accessor :pt_min_track_size_y
    alias_method :attr_pt_min_track_size_y, :pt_min_track_size_y
    undef_method :pt_min_track_size_y
    alias_method :attr_pt_min_track_size_y=, :pt_min_track_size_y=
    undef_method :pt_min_track_size_y=
    
    # POINT ptMaxTrackSize;
    attr_accessor :pt_max_track_size_x
    alias_method :attr_pt_max_track_size_x, :pt_max_track_size_x
    undef_method :pt_max_track_size_x
    alias_method :attr_pt_max_track_size_x=, :pt_max_track_size_x=
    undef_method :pt_max_track_size_x=
    
    attr_accessor :pt_max_track_size_y
    alias_method :attr_pt_max_track_size_y, :pt_max_track_size_y
    undef_method :pt_max_track_size_y
    alias_method :attr_pt_max_track_size_y=, :pt_max_track_size_y=
    undef_method :pt_max_track_size_y=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._minmaxinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @pt_reserved_x = 0
      @pt_reserved_y = 0
      @pt_max_size_x = 0
      @pt_max_size_y = 0
      @pt_max_position_x = 0
      @pt_max_position_y = 0
      @pt_min_track_size_x = 0
      @pt_min_track_size_y = 0
      @pt_max_track_size_x = 0
      @pt_max_track_size_y = 0
    end
    
    private
    alias_method :initialize__minmaxinfo, :initialize
  end
  
end
