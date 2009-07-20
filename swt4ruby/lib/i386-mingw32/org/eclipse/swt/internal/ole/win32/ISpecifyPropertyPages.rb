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
  module ISpecifyPropertyPagesImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class ISpecifyPropertyPages < ISpecifyPropertyPagesImports.const_get :IUnknown
    include_class_members ISpecifyPropertyPagesImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [CAUUID] }
    def _get_pages(p_pages)
      return COM._vtbl_call(3, self.attr_address, p_pages)
    end
    
    private
    alias_method :initialize__ispecify_property_pages, :initialize
  end
  
end
