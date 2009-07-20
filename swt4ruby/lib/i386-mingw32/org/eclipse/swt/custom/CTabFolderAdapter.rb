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
  module CTabFolderAdapterImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
    }
  end
  
  # This adapter class provides a default implementation for the
  # method described by the <code>CTabFolderListener</code> interface.
  # 
  # @see CTabFolderListener
  # @see CTabFolderEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class CTabFolderAdapter 
    include_class_members CTabFolderAdapterImports
    include CTabFolderListener
    
    typesig { [CTabFolderEvent] }
    def item_closed(event)
    end
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__ctab_folder_adapter, :initialize
  end
  
end
