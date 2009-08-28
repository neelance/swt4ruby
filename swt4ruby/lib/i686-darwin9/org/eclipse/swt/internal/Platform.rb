require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal
  module PlatformImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  # $NON-NLS-1$
  class Platform 
    include_class_members PlatformImports
    
    class_module.module_eval {
      const_set_lazy(:SWT_PLATFORM) { "carbon" }
      const_attr_reader  :SWT_PLATFORM
    }
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__platform, :initialize
  end
  
end
