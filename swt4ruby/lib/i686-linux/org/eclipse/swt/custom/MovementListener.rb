require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module MovementListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # This listener is invoked when a new offset is required based on the current
  # offset and a movement type.
  # 
  # @see org.eclipse.swt.SWT#MOVEMENT_WORD
  # @see org.eclipse.swt.SWT#MOVEMENT_WORD_END
  # @see org.eclipse.swt.SWT#MOVEMENT_WORD_START
  # @see org.eclipse.swt.SWT#MOVEMENT_CHAR
  # @see org.eclipse.swt.SWT#MOVEMENT_CLUSTER
  # 
  # @since 3.3
  module MovementListener
    include_class_members MovementListenerImports
    include SWTEventListener
    
    typesig { [MovementEvent] }
    # This method is called when a new offset is required based on the current
    # offset and a movement type.
    # 
    # <p>
    # The following event fields are used:<ul>
    # <li>event.lineOffset line start offset (input)</li>
    # <li>event.lineText line text (input)</li>
    # <li>event.movement the movement type (input)</li>
    # <li>event.offset the current offset (input)</li>
    # <li>event.newOffset the new offset (input, output)</li>
    # </ul>
    # 
    # @param event the event
    # 
    # @see MovementEvent
    # @see StyledText#addWordMovementListener(MovementListener)
    def get_next_offset(event)
      raise NotImplementedError
    end
    
    typesig { [MovementEvent] }
    # This method is called when a new offset is required based on the current
    # offset and a movement type.
    # 
    # <p>
    # The following event fields are used:<ul>
    # <li>event.lineOffset line start offset (input)</li>
    # <li>event.lineText line text (input)</li>
    # <li>event.movement the movement type (input)</li>
    # <li>event.offset the current offset (input)</li>
    # <li>event.newOffset the new offset (input, output)</li>
    # </ul>
    # 
    # @param event the event
    # 
    # @see MovementEvent
    # @see StyledText#addWordMovementListener(MovementListener)
    def get_previous_offset(event)
      raise NotImplementedError
    end
  end
  
end
