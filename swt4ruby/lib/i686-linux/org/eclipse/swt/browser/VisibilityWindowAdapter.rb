require "rjava"

# Copyright (c) 2003, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module VisibilityWindowAdapterImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
    }
  end
  
  # This adapter class provides default implementations for the
  # methods described by the {@link VisibilityWindowListener} interface.
  # <p>
  # Classes that wish to deal with {@link WindowEvent}'s can
  # extend this class and override only the methods which they are
  # interested in.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.0
  class VisibilityWindowAdapter 
    include_class_members VisibilityWindowAdapterImports
    include VisibilityWindowListener
    
    typesig { [WindowEvent] }
    def hide(event)
    end
    
    typesig { [WindowEvent] }
    def show(event)
    end
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__visibility_window_adapter, :initialize
  end
  
end
