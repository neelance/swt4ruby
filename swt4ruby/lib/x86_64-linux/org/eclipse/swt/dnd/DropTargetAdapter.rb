require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Dnd
  module DropTargetAdapterImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
    }
  end
  
  # This adapter class provides default implementations for the
  # methods described by the <code>DropTargetListener</code> interface.
  # <p>
  # Classes that wish to deal with <code>DropTargetEvent</code>s can
  # extend this class and override only the methods which they are
  # interested in.
  # </p>
  # 
  # @see DropTargetListener
  # @see DropTargetEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class DropTargetAdapter 
    include_class_members DropTargetAdapterImports
    include DropTargetListener
    
    typesig { [DropTargetEvent] }
    # This implementation of <code>dragEnter</code> permits the default
    # operation defined in <code>event.detail</code>to be performed on the current data type
    # defined in <code>event.currentDataType</code>.
    # For additional information see <code>DropTargetListener.dragEnter</code>.
    # 
    # @param event the information associated with the drag enter event
    def drag_enter(event)
    end
    
    typesig { [DropTargetEvent] }
    # This implementation of <code>dragLeave</code> does nothing.
    # For additional information see <code>DropTargetListener.dragOperationChanged</code>.
    # 
    # @param event the information associated with the drag leave event
    def drag_leave(event)
    end
    
    typesig { [DropTargetEvent] }
    # This implementation of <code>dragOperationChanged</code> permits the default
    # operation defined in <code>event.detail</code>to be performed on the current data type
    # defined in <code>event.currentDataType</code>.
    # For additional information see <code>DropTargetListener.dragOperationChanged</code>.
    # 
    # @param event the information associated with the drag operation changed event
    def drag_operation_changed(event)
    end
    
    typesig { [DropTargetEvent] }
    # This implementation of <code>dragOver</code> permits the default
    # operation defined in <code>event.detail</code>to be performed on the current data type
    # defined in <code>event.currentDataType</code>.
    # For additional information see <code>DropTargetListener.dragOver</code>.
    # 
    # @param event the information associated with the drag over event
    def drag_over(event)
    end
    
    typesig { [DropTargetEvent] }
    # This implementation of <code>drop</code> does nothing.
    # For additional information see <code>DropTargetListener.drop</code>.
    # 
    # @param event the information associated with the drop event
    def drop(event)
    end
    
    typesig { [DropTargetEvent] }
    # This implementation of <code>dropAccept</code> permits the default
    # operation defined in <code>event.detail</code>to be performed on the current data type
    # defined in <code>event.currentDataType</code>.
    # For additional information see <code>DropTargetListener.dropAccept</code>.
    # 
    # @param event the information associated with the drop accept event
    def drop_accept(event)
    end
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__drop_target_adapter, :initialize
  end
  
end
