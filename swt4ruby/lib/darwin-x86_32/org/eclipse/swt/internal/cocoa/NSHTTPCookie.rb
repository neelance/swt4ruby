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
  module NSHTTPCookieImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSHTTPCookie < NSHTTPCookieImports.const_get :NSObject
    include_class_members NSHTTPCookieImports
    
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
      typesig { [NSDictionary, NSURL] }
      def cookies_with_response_header_fields(header_fields, url)
        # long
        result = OS.objc_msg_send(OS.attr_class_nshttpcookie, OS.attr_sel_cookies_with_response_header_fields_for_url_, !(header_fields).nil? ? header_fields.attr_id : 0, !(url).nil? ? url.attr_id : 0)
        return !(result).equal?(0) ? NSArray.new(result) : nil
      end
    }
    
    typesig { [] }
    def is_session_only
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_session_only)
    end
    
    typesig { [] }
    def name
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_name)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [] }
    def value
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_value)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    private
    alias_method :initialize__nshttpcookie, :initialize
  end
  
end
