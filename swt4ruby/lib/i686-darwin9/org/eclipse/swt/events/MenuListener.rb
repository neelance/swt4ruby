require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Events
  module MenuListenerImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # Classes which implement this interface provide methods
  # that deal with the hiding and showing of menus.
  # <p>
  # After creating an instance of a class that implements
  # this interface it can be added to a menu using the
  # <code>addMenuListener</code> method and removed using
  # the <code>removeMenuListener</code> method. When the
  # menu is hidden or shown, the appropriate method will
  # be invoked.
  # </p>
  # 
  # @see MenuAdapter
  # @see MenuEvent
  module MenuListener
    include_class_members MenuListenerImports
    include SWTEventListener
    
    typesig { [MenuEvent] }
    # Sent when a menu is hidden.
    # 
    # @param e an event containing information about the menu operation
    def menu_hidden(e)
      raise NotImplementedError
    end
    
    typesig { [MenuEvent] }
    # Sent when a menu is shown.
    # 
    # @param e an event containing information about the menu operation
    def menu_shown(e)
      raise NotImplementedError
    end
  end
  
end
