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
  module NSHTTPCookieStorageImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSHTTPCookieStorage < NSHTTPCookieStorageImports.const_get :NSObject
    include_class_members NSHTTPCookieStorageImports
    
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
    def cookies
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_cookies)
      return !(result).equal?(0) ? NSArray.new(result) : nil
    end
    
    typesig { [NSURL] }
    def cookies_for_url(url)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_cookies_for_url_, !(url).nil? ? url.attr_id : 0)
      return !(result).equal?(0) ? NSArray.new(result) : nil
    end
    
    typesig { [NSHTTPCookie] }
    def delete_cookie(cookie)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_delete_cookie_, !(cookie).nil? ? cookie.attr_id : 0)
    end
    
    typesig { [NSHTTPCookie] }
    def set_cookie(cookie)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_cookie_, !(cookie).nil? ? cookie.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [] }
      def shared_httpcookie_storage
        # long
        result = OS.objc_msg_send(OS.attr_class_nshttpcookie_storage, OS.attr_sel_shared_httpcookie_storage)
        return !(result).equal?(0) ? NSHTTPCookieStorage.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nshttpcookie_storage, :initialize
  end
  
end
