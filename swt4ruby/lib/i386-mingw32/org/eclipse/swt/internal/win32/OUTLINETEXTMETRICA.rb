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
  module OUTLINETEXTMETRICAImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class OUTLINETEXTMETRICA < OUTLINETEXTMETRICAImports.const_get :OUTLINETEXTMETRIC
    include_class_members OUTLINETEXTMETRICAImports
    
    attr_accessor :otm_text_metrics
    alias_method :attr_otm_text_metrics, :otm_text_metrics
    undef_method :otm_text_metrics
    alias_method :attr_otm_text_metrics=, :otm_text_metrics=
    undef_method :otm_text_metrics=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._outlinetextmetrica_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @otm_text_metrics = nil
      super()
      @otm_text_metrics = TEXTMETRICA.new
    end
    
    private
    alias_method :initialize__outlinetextmetrica, :initialize
  end
  
end
