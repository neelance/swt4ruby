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
  module WebFrameImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class WebFrame < WebFrameImports.const_get :NSObject
    include_class_members WebFrameImports
    
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
    def _domdocument
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_domdocument)
      return !(result).equal?(0) ? DOMDocument.new(result) : nil
    end
    
    typesig { [] }
    def data_source
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_data_source)
      return !(result).equal?(0) ? WebDataSource.new(result) : nil
    end
    
    typesig { [NSString, NSURL] }
    def load_htmlstring(string, url)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_load_htmlstring_base_url_, !(string).nil? ? string.attr_id : 0, !(url).nil? ? url.attr_id : 0)
    end
    
    typesig { [NSURLRequest] }
    def load_request(request)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_load_request_, !(request).nil? ? request.attr_id : 0)
    end
    
    private
    alias_method :initialize__web_frame, :initialize
  end
  
end
