require "rjava"

# Copyright (c) 2003-2004 IBM Corp.
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
  module AlertStdCFStringAlertParamRecImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class AlertStdCFStringAlertParamRec 
    include_class_members AlertStdCFStringAlertParamRecImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :movable
    alias_method :attr_movable, :movable
    undef_method :movable
    alias_method :attr_movable=, :movable=
    undef_method :movable=
    
    attr_accessor :help_button
    alias_method :attr_help_button, :help_button
    undef_method :help_button
    alias_method :attr_help_button=, :help_button=
    undef_method :help_button=
    
    attr_accessor :default_text
    alias_method :attr_default_text, :default_text
    undef_method :default_text
    alias_method :attr_default_text=, :default_text=
    undef_method :default_text=
    
    attr_accessor :cancel_text
    alias_method :attr_cancel_text, :cancel_text
    undef_method :cancel_text
    alias_method :attr_cancel_text=, :cancel_text=
    undef_method :cancel_text=
    
    attr_accessor :other_text
    alias_method :attr_other_text, :other_text
    undef_method :other_text
    alias_method :attr_other_text=, :other_text=
    undef_method :other_text=
    
    attr_accessor :default_button
    alias_method :attr_default_button, :default_button
    undef_method :default_button
    alias_method :attr_default_button=, :default_button=
    undef_method :default_button=
    
    attr_accessor :cancel_button
    alias_method :attr_cancel_button, :cancel_button
    undef_method :cancel_button
    alias_method :attr_cancel_button=, :cancel_button=
    undef_method :cancel_button=
    
    attr_accessor :position
    alias_method :attr_position, :position
    undef_method :position
    alias_method :attr_position=, :position=
    undef_method :position=
    
    attr_accessor :flags
    alias_method :attr_flags, :flags
    undef_method :flags
    alias_method :attr_flags=, :flags=
    undef_method :flags=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 28 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @movable = false
      @help_button = false
      @default_text = 0
      @cancel_text = 0
      @other_text = 0
      @default_button = 0
      @cancel_button = 0
      @position = 0
      @flags = 0
    end
    
    private
    alias_method :initialize__alert_std_cfstring_alert_param_rec, :initialize
  end
  
end
