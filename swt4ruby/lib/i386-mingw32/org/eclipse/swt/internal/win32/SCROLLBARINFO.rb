require "rjava"

# Copyright (c) 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module SCROLLBARINFOImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SCROLLBARINFO 
    include_class_members SCROLLBARINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    attr_accessor :rc_scroll_bar
    alias_method :attr_rc_scroll_bar, :rc_scroll_bar
    undef_method :rc_scroll_bar
    alias_method :attr_rc_scroll_bar=, :rc_scroll_bar=
    undef_method :rc_scroll_bar=
    
    attr_accessor :dxy_line_button
    alias_method :attr_dxy_line_button, :dxy_line_button
    undef_method :dxy_line_button
    alias_method :attr_dxy_line_button=, :dxy_line_button=
    undef_method :dxy_line_button=
    
    attr_accessor :xy_thumb_top
    alias_method :attr_xy_thumb_top, :xy_thumb_top
    undef_method :xy_thumb_top
    alias_method :attr_xy_thumb_top=, :xy_thumb_top=
    undef_method :xy_thumb_top=
    
    attr_accessor :xy_thumb_bottom
    alias_method :attr_xy_thumb_bottom, :xy_thumb_bottom
    undef_method :xy_thumb_bottom
    alias_method :attr_xy_thumb_bottom=, :xy_thumb_bottom=
    undef_method :xy_thumb_bottom=
    
    attr_accessor :reserved
    alias_method :attr_reserved, :reserved
    undef_method :reserved
    alias_method :attr_reserved=, :reserved=
    undef_method :reserved=
    
    attr_accessor :rgstate
    alias_method :attr_rgstate, :rgstate
    undef_method :rgstate
    alias_method :attr_rgstate=, :rgstate=
    undef_method :rgstate=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._scrollbarinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @rc_scroll_bar = RECT.new
      @dxy_line_button = 0
      @xy_thumb_top = 0
      @xy_thumb_bottom = 0
      @reserved = 0
      @rgstate = Array.typed(::Java::Int).new(OS::CCHILDREN_SCROLLBAR + 1) { 0 }
    end
    
    private
    alias_method :initialize__scrollbarinfo, :initialize
  end
  
end
