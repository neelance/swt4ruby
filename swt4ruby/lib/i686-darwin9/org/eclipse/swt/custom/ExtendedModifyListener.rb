require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module ExtendedModifyListenerImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # Classes which implement this interface provide a method
  # that deals with the event that is generated when text
  # is modified.
  # 
  # @see ExtendedModifyEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  module ExtendedModifyListener
    include_class_members ExtendedModifyListenerImports
    include SWTEventListener
    
    typesig { [ExtendedModifyEvent] }
    # This method is called after a text change occurs.
    # <p>
    # The following event fields are used:<ul>
    # <li>event.start the start offset of the new text (input)</li>
    # <li>event.length the length of the new text (input)</li>
    # <li>event.replacedText the replaced text (input)</li>
    # </ul>
    # 
    # @param event the given event
    # @see ExtendedModifyEvent
    def modify_text(event)
      raise NotImplementedError
    end
  end
  
end
