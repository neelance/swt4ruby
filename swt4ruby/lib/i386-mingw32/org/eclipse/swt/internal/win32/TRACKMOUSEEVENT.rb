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
  module TRACKMOUSEEVENTImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class TRACKMOUSEEVENT 
    include_class_members TRACKMOUSEEVENTImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    attr_accessor :dw_flags
    alias_method :attr_dw_flags, :dw_flags
    undef_method :dw_flags
    alias_method :attr_dw_flags=, :dw_flags=
    undef_method :dw_flags=
    
    # long
    attr_accessor :hwnd_track
    alias_method :attr_hwnd_track, :hwnd_track
    undef_method :hwnd_track
    alias_method :attr_hwnd_track=, :hwnd_track=
    undef_method :hwnd_track=
    
    attr_accessor :dw_hover_time
    alias_method :attr_dw_hover_time, :dw_hover_time
    undef_method :dw_hover_time
    alias_method :attr_dw_hover_time=, :dw_hover_time=
    undef_method :dw_hover_time=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._trackmouseevent_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @dw_flags = 0
      @hwnd_track = 0
      @dw_hover_time = 0
    end
    
    private
    alias_method :initialize__trackmouseevent, :initialize
  end
  
end
