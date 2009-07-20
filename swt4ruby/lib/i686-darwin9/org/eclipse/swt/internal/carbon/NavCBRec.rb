require "rjava"

# Copyright (c) 2003, 2008 IBM Corp.
# Portions Copyright (c) 1983-2002, Apple Computer, Inc.
# 
# All rights reserved.  This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Carbon
  module NavCBRecImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class NavCBRec 
    include_class_members NavCBRecImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :context
    alias_method :attr_context, :context
    undef_method :context
    alias_method :attr_context=, :context=
    undef_method :context=
    
    attr_accessor :window
    alias_method :attr_window, :window
    undef_method :window
    alias_method :attr_window=, :window=
    undef_method :window=
    
    attr_accessor :custom_rect
    alias_method :attr_custom_rect, :custom_rect
    undef_method :custom_rect
    alias_method :attr_custom_rect=, :custom_rect=
    undef_method :custom_rect=
    
    attr_accessor :preview_rect
    alias_method :attr_preview_rect, :preview_rect
    undef_method :preview_rect
    alias_method :attr_preview_rect=, :preview_rect=
    undef_method :preview_rect=
    
    attr_accessor :event_data
    alias_method :attr_event_data, :event_data
    undef_method :event_data
    alias_method :attr_event_data=, :event_data=
    undef_method :event_data=
    
    attr_accessor :user_action
    alias_method :attr_user_action, :user_action
    undef_method :user_action
    alias_method :attr_user_action=, :user_action=
    undef_method :user_action=
    
    attr_accessor :reserved
    alias_method :attr_reserved, :reserved
    undef_method :reserved
    alias_method :attr_reserved=, :reserved=
    undef_method :reserved=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 254 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @context = 0
      @window = 0
      @custom_rect = Rect.new
      @preview_rect = Rect.new
      @event_data = NavEventData.new
      @user_action = 0
      @reserved = Array.typed(::Java::Byte).new(218) { 0 }
    end
    
    private
    alias_method :initialize__nav_cbrec, :initialize
  end
  
end
