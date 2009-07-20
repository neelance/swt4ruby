require "rjava"

# Copyright (c) 2000, 2003 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Image
  module JPEGArithmeticConditioningTableImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
    }
  end
  
  class JPEGArithmeticConditioningTable < JPEGArithmeticConditioningTableImports.const_get :JPEGVariableSizeSegment
    include_class_members JPEGArithmeticConditioningTableImports
    
    typesig { [LEDataInputStream] }
    def initialize(byte_stream)
      super(byte_stream)
    end
    
    typesig { [] }
    def signature
      return JPEGFileFormat::DAC
    end
    
    private
    alias_method :initialize__jpegarithmetic_conditioning_table, :initialize
  end
  
end
