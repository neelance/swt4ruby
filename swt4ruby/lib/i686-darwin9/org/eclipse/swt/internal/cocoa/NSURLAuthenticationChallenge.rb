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
  module NSURLAuthenticationChallengeImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSURLAuthenticationChallenge < NSURLAuthenticationChallengeImports.const_get :NSObject
    include_class_members NSURLAuthenticationChallengeImports
    
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
    # long
    def previous_failure_count
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_previous_failure_count)
    end
    
    typesig { [] }
    def proposed_credential
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_proposed_credential)
      return !(result).equal?(0) ? NSURLCredential.new(result) : nil
    end
    
    typesig { [] }
    def protection_space
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_protection_space)
      return !(result).equal?(0) ? NSURLProtectionSpace.new(result) : nil
    end
    
    typesig { [] }
    def sender
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_sender)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    private
    alias_method :initialize__nsurlauthentication_challenge, :initialize
  end
  
end
