require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module STATSTGImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class STATSTG 
    include_class_members STATSTGImports
    
    # @field cast=(LPWSTR)
    # long
    attr_accessor :pwcs_name
    alias_method :attr_pwcs_name, :pwcs_name
    undef_method :pwcs_name
    alias_method :attr_pwcs_name=, :pwcs_name=
    undef_method :pwcs_name=
    
    attr_accessor :type
    alias_method :attr_type, :type
    undef_method :type
    alias_method :attr_type=, :type=
    undef_method :type=
    
    # @field accessor=cbSize.QuadPart
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    # FILETIME mtime;
    # @field accessor=mtime.dwLowDateTime
    attr_accessor :mtime_dw_low_date_time
    alias_method :attr_mtime_dw_low_date_time, :mtime_dw_low_date_time
    undef_method :mtime_dw_low_date_time
    alias_method :attr_mtime_dw_low_date_time=, :mtime_dw_low_date_time=
    undef_method :mtime_dw_low_date_time=
    
    # @field accessor=mtime.dwHighDateTime
    attr_accessor :mtime_dw_high_date_time
    alias_method :attr_mtime_dw_high_date_time, :mtime_dw_high_date_time
    undef_method :mtime_dw_high_date_time
    alias_method :attr_mtime_dw_high_date_time=, :mtime_dw_high_date_time=
    undef_method :mtime_dw_high_date_time=
    
    # FILETIME ctime;
    # @field accessor=ctime.dwLowDateTime
    attr_accessor :ctime_dw_low_date_time
    alias_method :attr_ctime_dw_low_date_time, :ctime_dw_low_date_time
    undef_method :ctime_dw_low_date_time
    alias_method :attr_ctime_dw_low_date_time=, :ctime_dw_low_date_time=
    undef_method :ctime_dw_low_date_time=
    
    # @field accessor=ctime.dwHighDateTime
    attr_accessor :ctime_dw_high_date_time
    alias_method :attr_ctime_dw_high_date_time, :ctime_dw_high_date_time
    undef_method :ctime_dw_high_date_time
    alias_method :attr_ctime_dw_high_date_time=, :ctime_dw_high_date_time=
    undef_method :ctime_dw_high_date_time=
    
    # FILETIME atime;
    # @field accessor=atime.dwLowDateTime
    attr_accessor :atime_dw_low_date_time
    alias_method :attr_atime_dw_low_date_time, :atime_dw_low_date_time
    undef_method :atime_dw_low_date_time
    alias_method :attr_atime_dw_low_date_time=, :atime_dw_low_date_time=
    undef_method :atime_dw_low_date_time=
    
    # @field accessor=atime.dwHighDateTime
    attr_accessor :atime_dw_high_date_time
    alias_method :attr_atime_dw_high_date_time, :atime_dw_high_date_time
    undef_method :atime_dw_high_date_time
    alias_method :attr_atime_dw_high_date_time=, :atime_dw_high_date_time=
    undef_method :atime_dw_high_date_time=
    
    attr_accessor :grf_mode
    alias_method :attr_grf_mode, :grf_mode
    undef_method :grf_mode
    alias_method :attr_grf_mode=, :grf_mode=
    undef_method :grf_mode=
    
    attr_accessor :grf_locks_supported
    alias_method :attr_grf_locks_supported, :grf_locks_supported
    undef_method :grf_locks_supported
    alias_method :attr_grf_locks_supported=, :grf_locks_supported=
    undef_method :grf_locks_supported=
    
    # GUID clsid;
    # @field accessor=clsid.Data1
    attr_accessor :clsid_data1
    alias_method :attr_clsid_data1, :clsid_data1
    undef_method :clsid_data1
    alias_method :attr_clsid_data1=, :clsid_data1=
    undef_method :clsid_data1=
    
    # @field accessor=clsid.Data2
    attr_accessor :clsid_data2
    alias_method :attr_clsid_data2, :clsid_data2
    undef_method :clsid_data2
    alias_method :attr_clsid_data2=, :clsid_data2=
    undef_method :clsid_data2=
    
    # @field accessor=clsid.Data3
    attr_accessor :clsid_data3
    alias_method :attr_clsid_data3, :clsid_data3
    undef_method :clsid_data3
    alias_method :attr_clsid_data3=, :clsid_data3=
    undef_method :clsid_data3=
    
    # @field accessor=clsid.Data4
    attr_accessor :clsid_data4
    alias_method :attr_clsid_data4, :clsid_data4
    undef_method :clsid_data4
    alias_method :attr_clsid_data4=, :clsid_data4=
    undef_method :clsid_data4=
    
    attr_accessor :grf_state_bits
    alias_method :attr_grf_state_bits, :grf_state_bits
    undef_method :grf_state_bits
    alias_method :attr_grf_state_bits=, :grf_state_bits=
    undef_method :grf_state_bits=
    
    attr_accessor :reserved
    alias_method :attr_reserved, :reserved
    undef_method :reserved
    alias_method :attr_reserved=, :reserved=
    undef_method :reserved=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { COM._statstg_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @pwcs_name = 0
      @type = 0
      @cb_size = 0
      @mtime_dw_low_date_time = 0
      @mtime_dw_high_date_time = 0
      @ctime_dw_low_date_time = 0
      @ctime_dw_high_date_time = 0
      @atime_dw_low_date_time = 0
      @atime_dw_high_date_time = 0
      @grf_mode = 0
      @grf_locks_supported = 0
      @clsid_data1 = 0
      @clsid_data2 = 0
      @clsid_data3 = 0
      @clsid_data4 = Array.typed(::Java::Byte).new(8) { 0 }
      @grf_state_bits = 0
      @reserved = 0
    end
    
    private
    alias_method :initialize__statstg, :initialize
  end
  
end
