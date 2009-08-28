require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module NONCLIENTMETRICSImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NONCLIENTMETRICS 
    include_class_members NONCLIENTMETRICSImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    attr_accessor :i_border_width
    alias_method :attr_i_border_width, :i_border_width
    undef_method :i_border_width
    alias_method :attr_i_border_width=, :i_border_width=
    undef_method :i_border_width=
    
    attr_accessor :i_scroll_width
    alias_method :attr_i_scroll_width, :i_scroll_width
    undef_method :i_scroll_width
    alias_method :attr_i_scroll_width=, :i_scroll_width=
    undef_method :i_scroll_width=
    
    attr_accessor :i_scroll_height
    alias_method :attr_i_scroll_height, :i_scroll_height
    undef_method :i_scroll_height
    alias_method :attr_i_scroll_height=, :i_scroll_height=
    undef_method :i_scroll_height=
    
    attr_accessor :i_caption_width
    alias_method :attr_i_caption_width, :i_caption_width
    undef_method :i_caption_width
    alias_method :attr_i_caption_width=, :i_caption_width=
    undef_method :i_caption_width=
    
    attr_accessor :i_caption_height
    alias_method :attr_i_caption_height, :i_caption_height
    undef_method :i_caption_height
    alias_method :attr_i_caption_height=, :i_caption_height=
    undef_method :i_caption_height=
    
    attr_accessor :i_sm_caption_width
    alias_method :attr_i_sm_caption_width, :i_sm_caption_width
    undef_method :i_sm_caption_width
    alias_method :attr_i_sm_caption_width=, :i_sm_caption_width=
    undef_method :i_sm_caption_width=
    
    attr_accessor :i_sm_caption_height
    alias_method :attr_i_sm_caption_height, :i_sm_caption_height
    undef_method :i_sm_caption_height
    alias_method :attr_i_sm_caption_height=, :i_sm_caption_height=
    undef_method :i_sm_caption_height=
    
    attr_accessor :i_menu_width
    alias_method :attr_i_menu_width, :i_menu_width
    undef_method :i_menu_width
    alias_method :attr_i_menu_width=, :i_menu_width=
    undef_method :i_menu_width=
    
    attr_accessor :i_menu_height
    alias_method :attr_i_menu_height, :i_menu_height
    undef_method :i_menu_height
    alias_method :attr_i_menu_height=, :i_menu_height=
    undef_method :i_menu_height=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS::IsUnicode ? OS._nonclientmetricsw_sizeof : OS._nonclientmetricsa_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @i_border_width = 0
      @i_scroll_width = 0
      @i_scroll_height = 0
      @i_caption_width = 0
      @i_caption_height = 0
      @i_sm_caption_width = 0
      @i_sm_caption_height = 0
      @i_menu_width = 0
      @i_menu_height = 0
    end
    
    private
    alias_method :initialize__nonclientmetrics, :initialize
  end
  
end
