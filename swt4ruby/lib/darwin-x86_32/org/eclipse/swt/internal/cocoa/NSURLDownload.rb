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
  module NSURLDownloadImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSURLDownload < NSURLDownloadImports.const_get :NSObject
    include_class_members NSURLDownloadImports
    
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
    def cancel
      OS.objc_msg_send(self.attr_id, OS.attr_sel_cancel)
    end
    
    typesig { [NSString, ::Java::Boolean] }
    def set_destination(path, allow_overwrite)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_destination_allow_overwrite_, !(path).nil? ? path.attr_id : 0, allow_overwrite)
    end
    
    private
    alias_method :initialize__nsurldownload, :initialize
  end
  
end
