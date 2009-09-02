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
  module NSURLImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSURL < NSURLImports.const_get :NSObject
    include_class_members NSURLImports
    
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
      typesig { [NSPasteboard] }
      def _urlfrom_pasteboard(paste_board)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsurl, OS.attr_sel_urlfrom_pasteboard_, !(paste_board).nil? ? paste_board.attr_id : 0)
        return !(result).equal?(0) ? NSURL.new(result) : nil
      end
    }
    
    typesig { [NSPasteboard] }
    def write_to_pasteboard(paste_board)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_write_to_pasteboard_, !(paste_board).nil? ? paste_board.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [NSString] }
      def _urlwith_string(urlstring)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsurl, OS.attr_sel_urlwith_string_, !(urlstring).nil? ? urlstring.attr_id : 0)
        return !(result).equal?(0) ? NSURL.new(result) : nil
      end
    }
    
    typesig { [] }
    def absolute_string
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_absolute_string)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    class_module.module_eval {
      typesig { [NSString] }
      def file_urlwith_path(path)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsurl, OS.attr_sel_file_urlwith_path_, !(path).nil? ? path.attr_id : 0)
        return !(result).equal?(0) ? NSURL.new(result) : nil
      end
    }
    
    typesig { [] }
    def is_file_url
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_file_url)
    end
    
    private
    alias_method :initialize__nsurl, :initialize
  end
  
end
