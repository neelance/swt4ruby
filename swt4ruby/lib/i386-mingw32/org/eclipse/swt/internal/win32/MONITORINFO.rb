require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module MONITORINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class MONITORINFO 
    include_class_members MONITORINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    # RECT rcMonitor;
    # @field accessor=rcMonitor.left
    attr_accessor :rc_monitor_left
    alias_method :attr_rc_monitor_left, :rc_monitor_left
    undef_method :rc_monitor_left
    alias_method :attr_rc_monitor_left=, :rc_monitor_left=
    undef_method :rc_monitor_left=
    
    # @field accessor=rcMonitor.top
    attr_accessor :rc_monitor_top
    alias_method :attr_rc_monitor_top, :rc_monitor_top
    undef_method :rc_monitor_top
    alias_method :attr_rc_monitor_top=, :rc_monitor_top=
    undef_method :rc_monitor_top=
    
    # @field accessor=rcMonitor.right
    attr_accessor :rc_monitor_right
    alias_method :attr_rc_monitor_right, :rc_monitor_right
    undef_method :rc_monitor_right
    alias_method :attr_rc_monitor_right=, :rc_monitor_right=
    undef_method :rc_monitor_right=
    
    # @field accessor=rcMonitor.bottom
    attr_accessor :rc_monitor_bottom
    alias_method :attr_rc_monitor_bottom, :rc_monitor_bottom
    undef_method :rc_monitor_bottom
    alias_method :attr_rc_monitor_bottom=, :rc_monitor_bottom=
    undef_method :rc_monitor_bottom=
    
    # RECT rcWork;
    # @field accessor=rcWork.left
    attr_accessor :rc_work_left
    alias_method :attr_rc_work_left, :rc_work_left
    undef_method :rc_work_left
    alias_method :attr_rc_work_left=, :rc_work_left=
    undef_method :rc_work_left=
    
    # @field accessor=rcWork.top
    attr_accessor :rc_work_top
    alias_method :attr_rc_work_top, :rc_work_top
    undef_method :rc_work_top
    alias_method :attr_rc_work_top=, :rc_work_top=
    undef_method :rc_work_top=
    
    # @field accessor=rcWork.right
    attr_accessor :rc_work_right
    alias_method :attr_rc_work_right, :rc_work_right
    undef_method :rc_work_right
    alias_method :attr_rc_work_right=, :rc_work_right=
    undef_method :rc_work_right=
    
    # @field accessor=rcWork.bottom
    attr_accessor :rc_work_bottom
    alias_method :attr_rc_work_bottom, :rc_work_bottom
    undef_method :rc_work_bottom
    alias_method :attr_rc_work_bottom=, :rc_work_bottom=
    undef_method :rc_work_bottom=
    
    attr_accessor :dw_flags
    alias_method :attr_dw_flags, :dw_flags
    undef_method :dw_flags
    alias_method :attr_dw_flags=, :dw_flags=
    undef_method :dw_flags=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._monitorinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @rc_monitor_left = 0
      @rc_monitor_top = 0
      @rc_monitor_right = 0
      @rc_monitor_bottom = 0
      @rc_work_left = 0
      @rc_work_top = 0
      @rc_work_right = 0
      @rc_work_bottom = 0
      @dw_flags = 0
    end
    
    private
    alias_method :initialize__monitorinfo, :initialize
  end
  
end
