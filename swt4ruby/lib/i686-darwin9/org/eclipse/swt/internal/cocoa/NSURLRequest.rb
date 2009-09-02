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
  module NSURLRequestImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSURLRequest < NSURLRequestImports.const_get :NSObject
    include_class_members NSURLRequestImports
    
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
    def _url
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_url)
      return !(result).equal?(0) ? NSURL.new(result) : nil
    end
    
    typesig { [NSURL] }
    def init_with_url(url)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_url_, !(url).nil? ? url.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSURLRequest.new(result) : nil)
    end
    
    class_module.module_eval {
      typesig { [NSURL] }
      def request_with_url(url)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsurlrequest, OS.attr_sel_request_with_url_, !(url).nil? ? url.attr_id : 0)
        return !(result).equal?(0) ? NSURLRequest.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nsurlrequest, :initialize
  end
  
end
