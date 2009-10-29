require "rjava"

# Copyright (c) 2003, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Mozilla::Init
  module GREVersionRangeImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla::Init
    }
  end
  
  # @jniclass flags=cpp
  class GREVersionRange 
    include_class_members GREVersionRangeImports
    
    # @field cast=(const char *)
    # long
    attr_accessor :lower
    alias_method :attr_lower, :lower
    undef_method :lower
    alias_method :attr_lower=, :lower=
    undef_method :lower=
    
    attr_accessor :lower_inclusive
    alias_method :attr_lower_inclusive, :lower_inclusive
    undef_method :lower_inclusive
    alias_method :attr_lower_inclusive=, :lower_inclusive=
    undef_method :lower_inclusive=
    
    # @field cast=(const char *)
    # long
    attr_accessor :upper
    alias_method :attr_upper, :upper
    undef_method :upper
    alias_method :attr_upper=, :upper=
    undef_method :upper=
    
    attr_accessor :upper_inclusive
    alias_method :attr_upper_inclusive, :upper_inclusive
    undef_method :upper_inclusive
    alias_method :attr_upper_inclusive=, :upper_inclusive=
    undef_method :upper_inclusive=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { XPCOMInit._greversion_range_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @lower = 0
      @lower_inclusive = false
      @upper = 0
      @upper_inclusive = false
    end
    
    private
    alias_method :initialize__greversion_range, :initialize
  end
  
end
