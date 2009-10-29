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
  module TreeListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # Classes which implement this interface provide methods
  # that deal with the expanding and collapsing of tree
  # branches.
  # <p>
  # After creating an instance of a class that implements
  # this interface it can be added to a tree control using the
  # <code>addTreeListener</code> method and removed using
  # the <code>removeTreeListener</code> method. When a branch
  # of the tree is expanded or collapsed, the appropriate method
  # will be invoked.
  # </p>
  # 
  # @see TreeAdapter
  # @see TreeEvent
  module TreeListener
    include_class_members TreeListenerImports
    include SWTEventListener
    
    typesig { [TreeEvent] }
    # Sent when a tree branch is collapsed.
    # 
    # @param e an event containing information about the tree operation
    def tree_collapsed(e)
      raise NotImplementedError
    end
    
    typesig { [TreeEvent] }
    # Sent when a tree branch is expanded.
    # 
    # @param e an event containing information about the tree operation
    def tree_expanded(e)
      raise NotImplementedError
    end
  end
  
end
