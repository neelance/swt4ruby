require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module NSKeyedArchiverImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSKeyedArchiver < NSKeyedArchiverImports.const_get :NSCoder
    include_class_members NSKeyedArchiverImports
    
    typesig { [] }
    def initialize
      super()
    end
    
    typesig { [::Java::Int] }
    # long
    def initialize(id)
      super(id)
    end
    
    typesig { [Id] }
    def initialize(id)
      super(id)
    end
    
    class_module.module_eval {
      typesig { [Id] }
      def archived_data_with_root_object(root_object)
        # long
        result = OS.objc_msg_send(OS.attr_class_nskeyed_archiver, OS.attr_sel_archived_data_with_root_object_, !(root_object).nil? ? root_object.attr_id : 0)
        return !(result).equal?(0) ? NSData.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nskeyed_archiver, :initialize
  end
  
end
