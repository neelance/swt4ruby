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
  module JPEGRestartIntervalImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
    }
  end
  
  class JPEGRestartInterval < JPEGRestartIntervalImports.const_get :JPEGFixedSizeSegment
    include_class_members JPEGRestartIntervalImports
    
    typesig { [LEDataInputStream] }
    def initialize(byte_stream)
      super(byte_stream)
    end
    
    typesig { [] }
    def signature
      return JPEGFileFormat::DRI
    end
    
    typesig { [] }
    def get_restart_interval
      return ((self.attr_reference[4] & 0xff) << 8 | (self.attr_reference[5] & 0xff))
    end
    
    typesig { [] }
    def fixed_size
      return 6
    end
    
    private
    alias_method :initialize__jpegrestart_interval, :initialize
  end
  
end
