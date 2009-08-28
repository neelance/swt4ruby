require "rjava"

# Copyright (c) 2000, 2004 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module OLECMDTEXTImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class OLECMDTEXT 
    include_class_members OLECMDTEXTImports
    
    attr_accessor :cmdtextf
    alias_method :attr_cmdtextf, :cmdtextf
    undef_method :cmdtextf
    alias_method :attr_cmdtextf=, :cmdtextf=
    undef_method :cmdtextf=
    
    attr_accessor :cw_actual
    alias_method :attr_cw_actual, :cw_actual
    undef_method :cw_actual
    alias_method :attr_cw_actual=, :cw_actual=
    undef_method :cw_actual=
    
    attr_accessor :cw_buf
    alias_method :attr_cw_buf, :cw_buf
    undef_method :cw_buf
    alias_method :attr_cw_buf=, :cw_buf=
    undef_method :cw_buf=
    
    attr_accessor :rgwz
    alias_method :attr_rgwz, :rgwz
    undef_method :rgwz
    alias_method :attr_rgwz=, :rgwz=
    undef_method :rgwz=
    
    typesig { [] }
    def initialize
      @cmdtextf = 0
      @cw_actual = 0
      @cw_buf = 0
      @rgwz = Array.typed(::Java::Short).new(1) { 0 }
    end
    
    private
    alias_method :initialize__olecmdtext, :initialize
  end
  
end
