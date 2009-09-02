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
  module Objc_superImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  # @jniclass flags=struct
  class Objc_super 
    include_class_members Objc_superImports
    
    # @field cast=(id)
    # long
    attr_accessor :receiver
    alias_method :attr_receiver, :receiver
    undef_method :receiver
    alias_method :attr_receiver=, :receiver=
    undef_method :receiver=
    
    # @field accessor=swt_super_class,cast=(Class)
    # long
    attr_accessor :super_class
    alias_method :attr_super_class, :super_class
    undef_method :super_class
    alias_method :attr_super_class=, :super_class=
    undef_method :super_class=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS.objc_super_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @receiver = 0
      @super_class = 0
    end
    
    private
    alias_method :initialize_objc_super, :initialize
  end
  
end
