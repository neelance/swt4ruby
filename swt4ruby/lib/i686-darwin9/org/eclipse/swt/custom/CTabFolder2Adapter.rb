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
  module CTabFolder2AdapterImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
    }
  end
  
  # This adapter class provides default implementations for the
  # methods described by the <code>CTabFolder2Listener</code> interface.
  # <p>
  # Classes that wish to deal with <code>CTabFolderEvent</code>s can
  # extend this class and override only the methods which they are
  # interested in.
  # </p>
  # 
  # @see CTabFolder2Listener
  # @see CTabFolderEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.0
  class CTabFolder2Adapter 
    include_class_members CTabFolder2AdapterImports
    include CTabFolder2Listener
    
    typesig { [CTabFolderEvent] }
    # Sent when the user clicks on the close button of an item in the CTabFolder.  The item being closed is specified
    # in the event.item field. Setting the event.doit field to false will stop  the CTabItem from closing.
    # When the CTabItem is closed, it is disposed.  The contents of the CTabItem (see CTabItem#setControl) will be
    # made not visible when the CTabItem is closed.
    # <p>
    # The default behaviour is to close the CTabItem.
    # </p>
    # 
    # @param event an event indicating the item being closed
    def close(event)
    end
    
    typesig { [CTabFolderEvent] }
    # Sent when the user clicks on the minimize button of a CTabFolder.
    # <p>
    # The default behaviour is to do nothing.
    # </p>
    # 
    # @param event an event containing information about the minimize
    def minimize(event)
    end
    
    typesig { [CTabFolderEvent] }
    # Sent when the user clicks on the maximize button of a CTabFolder.
    # <p>
    # The default behaviour is to do nothing.
    # </p>
    # 
    # @param event an event containing information about the maximize
    def maximize(event)
    end
    
    typesig { [CTabFolderEvent] }
    # Sent when the user clicks on the restore button of a CTabFolder.
    # <p>
    # The default behaviour is to do nothing.
    # </p>
    # 
    # @param event an event containing information about the restore
    def restore(event)
    end
    
    typesig { [CTabFolderEvent] }
    # Sent when the user clicks on the chevron button of a CTabFolder.
    # <p>
    # The default behaviour is to show a list of items that are not currently
    # visible and to change the selection based on the item selected from the list.
    # </p>
    # 
    # @param event an event containing information about the show list
    def show_list(event)
    end
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__ctab_folder2adapter, :initialize
  end
  
end
