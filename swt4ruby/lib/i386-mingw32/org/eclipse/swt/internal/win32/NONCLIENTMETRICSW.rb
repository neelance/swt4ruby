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
  module NONCLIENTMETRICSWImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NONCLIENTMETRICSW < NONCLIENTMETRICSWImports.const_get :NONCLIENTMETRICS
    include_class_members NONCLIENTMETRICSWImports
    
    attr_accessor :lf_caption_font
    alias_method :attr_lf_caption_font, :lf_caption_font
    undef_method :lf_caption_font
    alias_method :attr_lf_caption_font=, :lf_caption_font=
    undef_method :lf_caption_font=
    
    attr_accessor :lf_sm_caption_font
    alias_method :attr_lf_sm_caption_font, :lf_sm_caption_font
    undef_method :lf_sm_caption_font
    alias_method :attr_lf_sm_caption_font=, :lf_sm_caption_font=
    undef_method :lf_sm_caption_font=
    
    attr_accessor :lf_menu_font
    alias_method :attr_lf_menu_font, :lf_menu_font
    undef_method :lf_menu_font
    alias_method :attr_lf_menu_font=, :lf_menu_font=
    undef_method :lf_menu_font=
    
    attr_accessor :lf_status_font
    alias_method :attr_lf_status_font, :lf_status_font
    undef_method :lf_status_font
    alias_method :attr_lf_status_font=, :lf_status_font=
    undef_method :lf_status_font=
    
    attr_accessor :lf_message_font
    alias_method :attr_lf_message_font, :lf_message_font
    undef_method :lf_message_font
    alias_method :attr_lf_message_font=, :lf_message_font=
    undef_method :lf_message_font=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._nonclientmetricsw_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @lf_caption_font = nil
      @lf_sm_caption_font = nil
      @lf_menu_font = nil
      @lf_status_font = nil
      @lf_message_font = nil
      super()
      @lf_caption_font = LOGFONTW.new
      @lf_sm_caption_font = LOGFONTW.new
      @lf_menu_font = LOGFONTW.new
      @lf_status_font = LOGFONTW.new
      @lf_message_font = LOGFONTW.new
    end
    
    private
    alias_method :initialize__nonclientmetricsw, :initialize
  end
  
end
