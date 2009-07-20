require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module GUIDImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class GUID 
    include_class_members GUIDImports
    
    attr_accessor :data1
    alias_method :attr_data1, :data1
    undef_method :data1
    alias_method :attr_data1=, :data1=
    undef_method :data1=
    
    attr_accessor :data2
    alias_method :attr_data2, :data2
    undef_method :data2
    alias_method :attr_data2=, :data2=
    undef_method :data2=
    
    attr_accessor :data3
    alias_method :attr_data3, :data3
    undef_method :data3
    alias_method :attr_data3=, :data3=
    undef_method :data3=
    
    attr_accessor :data4
    alias_method :attr_data4, :data4
    undef_method :data4
    alias_method :attr_data4=, :data4=
    undef_method :data4=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { COM._guid_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @data1 = 0
      @data2 = 0
      @data3 = 0
      @data4 = Array.typed(::Java::Byte).new(8) { 0 }
    end
    
    private
    alias_method :initialize__guid, :initialize
  end
  
end
