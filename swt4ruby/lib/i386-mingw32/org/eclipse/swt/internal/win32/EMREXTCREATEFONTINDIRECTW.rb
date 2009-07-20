require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module EMREXTCREATEFONTINDIRECTWImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class EMREXTCREATEFONTINDIRECTW 
    include_class_members EMREXTCREATEFONTINDIRECTWImports
    
    attr_accessor :emr
    alias_method :attr_emr, :emr
    undef_method :emr
    alias_method :attr_emr=, :emr=
    undef_method :emr=
    
    attr_accessor :ih_font
    alias_method :attr_ih_font, :ih_font
    undef_method :ih_font
    alias_method :attr_ih_font=, :ih_font=
    undef_method :ih_font=
    
    attr_accessor :elfw
    alias_method :attr_elfw, :elfw
    undef_method :elfw
    alias_method :attr_elfw=, :elfw=
    undef_method :elfw=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._emrextcreatefontindirectw_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @emr = EMR.new
      @ih_font = 0
      @elfw = EXTLOGFONTW.new
    end
    
    private
    alias_method :initialize__emrextcreatefontindirectw, :initialize
  end
  
end
