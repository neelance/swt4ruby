require "rjava"

# Copyright (c) 2007, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module IdImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  # @jniclass flags=no_gen
  class Id 
    include_class_members IdImports
    
    # long
    attr_accessor :id
    alias_method :attr_id, :id
    undef_method :id
    alias_method :attr_id=, :id=
    undef_method :id=
    
    typesig { [] }
    def initialize
      @id = 0
    end
    
    typesig { [::Java::Int] }
    # long
    def initialize(id)
      @id = 0
      @id = id
    end
    
    typesig { [Id] }
    def initialize(id)
      @id = 0
      @id = !(id).nil? ? id.attr_id : 0
    end
    
    typesig { [] }
    # long
    def objc_get_class
      name = get_class.get_name
      index = name.last_index_of(Character.new(?..ord))
      if (!(index).equal?(-1))
        name = RJava.cast_to_string(name.substring(index + 1))
      end
      return OS.objc_get_class(name)
    end
    
    typesig { [] }
    def to_s
      return RJava.cast_to_string(get_class.get_name) + "{" + RJava.cast_to_string(@id) + "}"
    end
    
    private
    alias_method :initialize_id, :initialize
  end
  
end
