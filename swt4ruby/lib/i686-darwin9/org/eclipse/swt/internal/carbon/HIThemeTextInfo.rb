require "rjava"

# Copyright (c) 2003, 2005 IBM Corp.
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
  module HIThemeTextInfoImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class HIThemeTextInfo 
    include_class_members HIThemeTextInfoImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :state
    alias_method :attr_state, :state
    undef_method :state
    alias_method :attr_state=, :state=
    undef_method :state=
    
    attr_accessor :font_id
    alias_method :attr_font_id, :font_id
    undef_method :font_id
    alias_method :attr_font_id=, :font_id=
    undef_method :font_id=
    
    attr_accessor :horizontal_flushness
    alias_method :attr_horizontal_flushness, :horizontal_flushness
    undef_method :horizontal_flushness
    alias_method :attr_horizontal_flushness=, :horizontal_flushness=
    undef_method :horizontal_flushness=
    
    attr_accessor :vertical_flushness
    alias_method :attr_vertical_flushness, :vertical_flushness
    undef_method :vertical_flushness
    alias_method :attr_vertical_flushness=, :vertical_flushness=
    undef_method :vertical_flushness=
    
    attr_accessor :options
    alias_method :attr_options, :options
    undef_method :options
    alias_method :attr_options=, :options=
    undef_method :options=
    
    attr_accessor :truncation_position
    alias_method :attr_truncation_position, :truncation_position
    undef_method :truncation_position
    alias_method :attr_truncation_position=, :truncation_position=
    undef_method :truncation_position=
    
    attr_accessor :truncation_max_lines
    alias_method :attr_truncation_max_lines, :truncation_max_lines
    undef_method :truncation_max_lines
    alias_method :attr_truncation_max_lines=, :truncation_max_lines=
    undef_method :truncation_max_lines=
    
    attr_accessor :truncation_happened
    alias_method :attr_truncation_happened, :truncation_happened
    undef_method :truncation_happened
    alias_method :attr_truncation_happened=, :truncation_happened=
    undef_method :truncation_happened=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 32 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @state = 0
      @font_id = 0
      @horizontal_flushness = 0
      @vertical_flushness = 0
      @options = 0
      @truncation_position = 0
      @truncation_max_lines = 0
      @truncation_happened = false
    end
    
    private
    alias_method :initialize__hitheme_text_info, :initialize
  end
  
end
