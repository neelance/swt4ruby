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
  module TraverseListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # Classes which implement this interface provide a method
  # that deals with the events that are generated when a
  # traverse event occurs in a control.
  # <p>
  # After creating an instance of a class that implements
  # this interface it can be added to a control using the
  # <code>addTraverseListener</code> method and removed using
  # the <code>removeTraverseListener</code> method. When a
  # traverse event occurs in a control, the keyTraversed method
  # will be invoked.
  # </p>
  # 
  # @see TraverseEvent
  module TraverseListener
    include_class_members TraverseListenerImports
    include SWTEventListener
    
    typesig { [TraverseEvent] }
    # Sent when a traverse event occurs in a control.
    # <p>
    # A traverse event occurs when the user presses a traversal
    # key. Traversal keys are typically tab and arrow keys, along
    # with certain other keys on some platforms. Traversal key
    # constants beginning with <code>TRAVERSE_</code> are defined
    # in the <code>SWT</code> class.
    # </p>
    # 
    # @param e an event containing information about the traverse
    def key_traversed(e)
      raise NotImplementedError
    end
  end
  
end
