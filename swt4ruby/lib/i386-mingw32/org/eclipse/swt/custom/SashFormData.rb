require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module SashFormDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
    }
  end
  
  class SashFormData 
    include_class_members SashFormDataImports
    
    attr_accessor :weight
    alias_method :attr_weight, :weight
    undef_method :weight
    alias_method :attr_weight=, :weight=
    undef_method :weight=
    
    typesig { [] }
    def get_name
      string = get_class.get_name
      index = string.last_index_of(Character.new(?..ord))
      if ((index).equal?(-1))
        return string
      end
      return string.substring(index + 1, string.length)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the event
    def to_s
      return RJava.cast_to_string(get_name) + " {weight=" + RJava.cast_to_string(@weight) + "}" # $NON-NLS-2$
    end
    
    typesig { [] }
    def initialize
      @weight = 0
    end
    
    private
    alias_method :initialize__sash_form_data, :initialize
  end
  
end
