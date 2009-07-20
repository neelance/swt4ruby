require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others. All rights reserved.
# The contents of this file are made available under the terms
# of the GNU Lesser General Public License (LGPL) Version 2.1 that
# accompanies this distribution (lgpl-v21.txt).  The LGPL is also
# available at http://www.gnu.org/licenses/lgpl.html.  If the version
# of the LGPL at http://www.gnu.org is different to the version of
# the LGPL accompanying this distribution and there is any conflict
# between the two license versions, the terms of the LGPL accompanying
# this distribution shall govern.
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal
  module PlatformImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  class Platform 
    include_class_members PlatformImports
    
    class_module.module_eval {
      const_set_lazy(:SWT_PLATFORM) { "gtk" }
      const_attr_reader  :SWT_PLATFORM
      
      # $NON-NLS-1$
      const_set_lazy(:PLATFORM_LOCK) { Lock.new }
      const_attr_reader  :PLATFORM_LOCK
    }
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__platform, :initialize
  end
  
end
