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
  module NSURLCredentialImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSURLCredential < NSURLCredentialImports.const_get :NSObject
    include_class_members NSURLCredentialImports
    
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
      typesig { [NSString, NSString, ::Java::Int] }
      # long
      def credential_with_user(user, password, persistence)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsurlcredential, OS.attr_sel_credential_with_user_password_persistence_, !(user).nil? ? user.attr_id : 0, !(password).nil? ? password.attr_id : 0, persistence)
        return !(result).equal?(0) ? NSURLCredential.new(result) : nil
      end
    }
    
    typesig { [] }
    def has_password
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_has_password)
    end
    
    typesig { [] }
    def password
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_password)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [] }
    def user
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_user)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    private
    alias_method :initialize__nsurlcredential, :initialize
  end
  
end
