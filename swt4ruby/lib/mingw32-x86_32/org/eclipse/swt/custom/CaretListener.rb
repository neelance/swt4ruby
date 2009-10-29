require "rjava"

# Copyright (c) 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module CaretListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # This listener interface may be implemented in order to receive
  # CaretEvents.
  # 
  # @see CaretEvent
  # 
  # @since 3.5
  module CaretListener
    include_class_members CaretListenerImports
    include SWTEventListener
    
    typesig { [CaretEvent] }
    # This method is called after the caret offset is changed.
    # 
    # The following event fields are used:<ul>
    # <li>event.caretOffset the new caret offset (input)</li>
    # </ul>
    # 
    # @param event the given event
    # 
    # @see CaretEvent
    def caret_moved(event)
      raise NotImplementedError
    end
  end
  
end
