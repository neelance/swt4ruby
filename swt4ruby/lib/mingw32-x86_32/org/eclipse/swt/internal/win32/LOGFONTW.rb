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
  module LOGFONTWImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class LOGFONTW < LOGFONTWImports.const_get :LOGFONT
    include_class_members LOGFONTWImports
    
    attr_accessor :lf_face_name
    alias_method :attr_lf_face_name, :lf_face_name
    undef_method :lf_face_name
    alias_method :attr_lf_face_name=, :lf_face_name=
    undef_method :lf_face_name=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._logfontw_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @lf_face_name = nil
      super()
      @lf_face_name = CharArray.new(OS::LF_FACESIZE)
    end
    
    private
    alias_method :initialize__logfontw, :initialize
  end
  
end
