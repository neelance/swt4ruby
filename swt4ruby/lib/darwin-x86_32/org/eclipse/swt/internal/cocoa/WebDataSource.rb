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
  module WebDataSourceImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class WebDataSource < WebDataSourceImports.const_get :NSObject
    include_class_members WebDataSourceImports
    
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
    
    typesig { [] }
    def page_title
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_page_title)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [] }
    def representation
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_representation)
      return !(result).equal?(0) ? WebDocumentRepresentation.new(result) : nil
    end
    
    typesig { [] }
    def request
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_request)
      return !(result).equal?(0) ? NSMutableURLRequest.new(result) : nil
    end
    
    typesig { [] }
    def web_frame
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_web_frame)
      return !(result).equal?(0) ? WebFrame.new(result) : nil
    end
    
    private
    alias_method :initialize__web_data_source, :initialize
  end
  
end
