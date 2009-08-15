require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal
  module LONGImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  class SwtLONG 
    include_class_members LONGImports
    
    # long
    attr_accessor :value
    alias_method :attr_value, :value
    undef_method :value
    alias_method :attr_value=, :value=
    undef_method :value=
    
    typesig { [::Java::Int] }
    # long
    def initialize(value)
      @value = 0
      @value = value
    end
    
    typesig { [Object] }
    def ==(object)
      if ((object).equal?(self))
        return true
      end
      if (!(object.is_a?(SwtLONG)))
        return false
      end
      obj = object
      return (obj.attr_value).equal?(@value)
    end
    
    typesig { [] }
    def hash_code
      # 64
      return RJava.cast_to_int(@value)
    end
    
    private
    alias_method :initialize__long, :initialize
  end
  
end
