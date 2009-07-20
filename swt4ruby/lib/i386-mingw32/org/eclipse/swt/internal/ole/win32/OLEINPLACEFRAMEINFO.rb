require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module OLEINPLACEFRAMEINFOImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class OLEINPLACEFRAMEINFO 
    include_class_members OLEINPLACEFRAMEINFOImports
    
    attr_accessor :cb
    alias_method :attr_cb, :cb
    undef_method :cb
    alias_method :attr_cb=, :cb=
    undef_method :cb=
    
    attr_accessor :f_mdiapp
    alias_method :attr_f_mdiapp, :f_mdiapp
    undef_method :f_mdiapp
    alias_method :attr_f_mdiapp=, :f_mdiapp=
    undef_method :f_mdiapp=
    
    # long
    attr_accessor :hwnd_frame
    alias_method :attr_hwnd_frame, :hwnd_frame
    undef_method :hwnd_frame
    alias_method :attr_hwnd_frame=, :hwnd_frame=
    undef_method :hwnd_frame=
    
    # long
    attr_accessor :haccel
    alias_method :attr_haccel, :haccel
    undef_method :haccel
    alias_method :attr_haccel=, :haccel=
    undef_method :haccel=
    
    attr_accessor :c_accel_entries
    alias_method :attr_c_accel_entries, :c_accel_entries
    undef_method :c_accel_entries
    alias_method :attr_c_accel_entries=, :c_accel_entries=
    undef_method :c_accel_entries=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { COM._oleinplaceframeinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb = 0
      @f_mdiapp = 0
      @hwnd_frame = 0
      @haccel = 0
      @c_accel_entries = 0
    end
    
    private
    alias_method :initialize__oleinplaceframeinfo, :initialize
  end
  
end
