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
  module LICINFOImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class LICINFO 
    include_class_members LICINFOImports
    
    attr_accessor :cb_lic_info
    alias_method :attr_cb_lic_info, :cb_lic_info
    undef_method :cb_lic_info
    alias_method :attr_cb_lic_info=, :cb_lic_info=
    undef_method :cb_lic_info=
    
    attr_accessor :f_runtime_key_avail
    alias_method :attr_f_runtime_key_avail, :f_runtime_key_avail
    undef_method :f_runtime_key_avail
    alias_method :attr_f_runtime_key_avail=, :f_runtime_key_avail=
    undef_method :f_runtime_key_avail=
    
    attr_accessor :f_lic_verified
    alias_method :attr_f_lic_verified, :f_lic_verified
    undef_method :f_lic_verified
    alias_method :attr_f_lic_verified=, :f_lic_verified=
    undef_method :f_lic_verified=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { COM._licinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_lic_info = 0
      @f_runtime_key_avail = false
      @f_lic_verified = false
    end
    
    private
    alias_method :initialize__licinfo, :initialize
  end
  
end
