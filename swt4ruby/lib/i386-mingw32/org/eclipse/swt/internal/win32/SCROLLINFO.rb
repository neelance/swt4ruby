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
  module SCROLLINFOImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SCROLLINFO 
    include_class_members SCROLLINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    attr_accessor :f_mask
    alias_method :attr_f_mask, :f_mask
    undef_method :f_mask
    alias_method :attr_f_mask=, :f_mask=
    undef_method :f_mask=
    
    attr_accessor :n_min
    alias_method :attr_n_min, :n_min
    undef_method :n_min
    alias_method :attr_n_min=, :n_min=
    undef_method :n_min=
    
    attr_accessor :n_max
    alias_method :attr_n_max, :n_max
    undef_method :n_max
    alias_method :attr_n_max=, :n_max=
    undef_method :n_max=
    
    attr_accessor :n_page
    alias_method :attr_n_page, :n_page
    undef_method :n_page
    alias_method :attr_n_page=, :n_page=
    undef_method :n_page=
    
    attr_accessor :n_pos
    alias_method :attr_n_pos, :n_pos
    undef_method :n_pos
    alias_method :attr_n_pos=, :n_pos=
    undef_method :n_pos=
    
    attr_accessor :n_track_pos
    alias_method :attr_n_track_pos, :n_track_pos
    undef_method :n_track_pos
    alias_method :attr_n_track_pos=, :n_track_pos=
    undef_method :n_track_pos=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._scrollinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @f_mask = 0
      @n_min = 0
      @n_max = 0
      @n_page = 0
      @n_pos = 0
      @n_track_pos = 0
    end
    
    private
    alias_method :initialize__scrollinfo, :initialize
  end
  
end
