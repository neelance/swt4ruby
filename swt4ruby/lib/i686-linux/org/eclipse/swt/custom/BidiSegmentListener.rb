require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module BidiSegmentListenerImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # This listener interface may be implemented in order to receive
  # BidiSegmentEvents.
  # @see BidiSegmentEvent
  module BidiSegmentListener
    include_class_members BidiSegmentListenerImports
    include SWTEventListener
    
    typesig { [BidiSegmentEvent] }
    # This method is called when a line needs to be reordered for
    # measuring or rendering in a bidi locale.
    # <p>
    # The following event fields are used:<ul>
    # <li>event.lineOffset line start offset (input)</li>
    # <li>event.lineText line text (input)</li>
    # <li>event.segments text segments that should be reordered
    # separately. (output)</li>
    # </ul>
    # 
    # @param event the given event
    # separately. (output)
    # @see BidiSegmentEvent
    def line_get_segments(event)
      raise NotImplementedError
    end
  end
  
end
