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
  module HDLAYOUTImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class HDLAYOUT 
    include_class_members HDLAYOUTImports
    
    # @field cast=(RECT *)
    # long
    attr_accessor :prc
    alias_method :attr_prc, :prc
    undef_method :prc
    alias_method :attr_prc=, :prc=
    undef_method :prc=
    
    # @field cast=(WINDOWPOS *)
    # long
    attr_accessor :pwpos
    alias_method :attr_pwpos, :pwpos
    undef_method :pwpos
    alias_method :attr_pwpos=, :pwpos=
    undef_method :pwpos=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._hdlayout_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @prc = 0
      @pwpos = 0
    end
    
    private
    alias_method :initialize__hdlayout, :initialize
  end
  
end
