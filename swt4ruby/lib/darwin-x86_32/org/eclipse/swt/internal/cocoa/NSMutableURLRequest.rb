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
  module NSMutableURLRequestImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSMutableURLRequest < NSMutableURLRequestImports.const_get :NSURLRequest
    include_class_members NSMutableURLRequestImports
    
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
    
    typesig { [::Java::Int] }
    # long
    def set_cache_policy(policy)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_cache_policy_, policy)
    end
    
    typesig { [NSURL] }
    def set_url(url)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_url_, !(url).nil? ? url.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [NSURL] }
      def request_with_url(url)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsmutable_urlrequest, OS.attr_sel_request_with_url_, !(url).nil? ? url.attr_id : 0)
        return !(result).equal?(0) ? NSMutableURLRequest.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nsmutable_urlrequest, :initialize
  end
  
end
