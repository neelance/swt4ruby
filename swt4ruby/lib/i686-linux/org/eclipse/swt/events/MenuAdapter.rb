require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Events
  module MenuAdapterImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # This adapter class provides default implementations for the
  # methods described by the <code>MenuListener</code> interface.
  # <p>
  # Classes that wish to deal with <code>MenuEvent</code>s can
  # extend this class and override only the methods which they are
  # interested in.
  # </p>
  # 
  # @see MenuListener
  # @see MenuEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class MenuAdapter 
    include_class_members MenuAdapterImports
    include MenuListener
    
    typesig { [MenuEvent] }
    # Sent when a menu is hidden.
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the menu operation
    def menu_hidden(e)
    end
    
    typesig { [MenuEvent] }
    # Sent when a menu is shown.
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the menu operation
    def menu_shown(e)
    end
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__menu_adapter, :initialize
  end
  
end
