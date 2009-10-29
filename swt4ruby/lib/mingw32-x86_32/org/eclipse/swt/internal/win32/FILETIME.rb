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
  module FILETIMEImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class FILETIME 
    include_class_members FILETIMEImports
    
    attr_accessor :dw_low_date_time
    alias_method :attr_dw_low_date_time, :dw_low_date_time
    undef_method :dw_low_date_time
    alias_method :attr_dw_low_date_time=, :dw_low_date_time=
    undef_method :dw_low_date_time=
    
    attr_accessor :dw_high_date_time
    alias_method :attr_dw_high_date_time, :dw_high_date_time
    undef_method :dw_high_date_time
    alias_method :attr_dw_high_date_time=, :dw_high_date_time=
    undef_method :dw_high_date_time=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._filetime_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @dw_low_date_time = 0
      @dw_high_date_time = 0
    end
    
    private
    alias_method :initialize__filetime, :initialize
  end
  
end
