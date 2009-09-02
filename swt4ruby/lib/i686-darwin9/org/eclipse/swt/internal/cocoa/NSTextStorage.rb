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
  module NSTextStorageImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSTextStorage < NSTextStorageImports.const_get :NSMutableAttributedString
    include_class_members NSTextStorageImports
    
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
    
    typesig { [NSLayoutManager] }
    def add_layout_manager(obj)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_layout_manager_, !(obj).nil? ? obj.attr_id : 0)
    end
    
    typesig { [] }
    def paragraphs
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_paragraphs)
      return !(result).equal?(0) ? NSArray.new(result) : nil
    end
    
    class_module.module_eval {
      typesig { [NSTextAttachment] }
      def attributed_string_with_attachment(attachment)
        # long
        result = OS.objc_msg_send(OS.attr_class_nstext_storage, OS.attr_sel_attributed_string_with_attachment_, !(attachment).nil? ? attachment.attr_id : 0)
        return !(result).equal?(0) ? NSAttributedString.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nstext_storage, :initialize
  end
  
end
