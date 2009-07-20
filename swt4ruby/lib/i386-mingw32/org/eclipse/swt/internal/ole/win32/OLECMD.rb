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
  module OLECMDImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class OLECMD 
    include_class_members OLECMDImports
    
    attr_accessor :cmd_id
    alias_method :attr_cmd_id, :cmd_id
    undef_method :cmd_id
    alias_method :attr_cmd_id=, :cmd_id=
    undef_method :cmd_id=
    
    attr_accessor :cmdf
    alias_method :attr_cmdf, :cmdf
    undef_method :cmdf
    alias_method :attr_cmdf=, :cmdf=
    undef_method :cmdf=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { COM._olecmd_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cmd_id = 0
      @cmdf = 0
    end
    
    private
    alias_method :initialize__olecmd, :initialize
  end
  
end
