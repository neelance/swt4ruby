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
  module NSOpenGLContextImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSOpenGLContext < NSOpenGLContextImports.const_get :NSObject
    include_class_members NSOpenGLContextImports
    
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
      typesig { [] }
      def clear_current_context
        OS.objc_msg_send(OS.attr_class_nsopen_glcontext, OS.attr_sel_clear_current_context)
      end
    }
    
    typesig { [] }
    def clear_drawable
      OS.objc_msg_send(self.attr_id, OS.attr_sel_clear_drawable)
    end
    
    class_module.module_eval {
      typesig { [] }
      def current_context
        # long
        result = OS.objc_msg_send(OS.attr_class_nsopen_glcontext, OS.attr_sel_current_context)
        return !(result).equal?(0) ? NSOpenGLContext.new(result) : nil
      end
    }
    
    typesig { [] }
    def flush_buffer
      OS.objc_msg_send(self.attr_id, OS.attr_sel_flush_buffer)
    end
    
    typesig { [NSOpenGLPixelFormat, NSOpenGLContext] }
    def init_with_format(format, share)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_format_share_context_, !(format).nil? ? format.attr_id : 0, !(share).nil? ? share.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSOpenGLContext.new(result) : nil)
    end
    
    typesig { [] }
    def make_current_context
      OS.objc_msg_send(self.attr_id, OS.attr_sel_make_current_context)
    end
    
    typesig { [NSView] }
    def set_view(view)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_view_, !(view).nil? ? view.attr_id : 0)
    end
    
    typesig { [] }
    def update
      OS.objc_msg_send(self.attr_id, OS.attr_sel_update)
    end
    
    typesig { [] }
    def view
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_view)
      return !(result).equal?(0) ? NSView.new(result) : nil
    end
    
    private
    alias_method :initialize__nsopen_glcontext, :initialize
  end
  
end
