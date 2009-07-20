require "rjava"

# Copyright (c) 2003-2004 IBM Corp.
# Portions Copyright (c) 1983-2002, Apple Computer, Inc.
# 
# All rights reserved.  This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Carbon
  module ATSUUnhighlightDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class ATSUUnhighlightData 
    include_class_members ATSUUnhighlightDataImports
    
    attr_accessor :data_type
    alias_method :attr_data_type, :data_type
    undef_method :data_type
    alias_method :attr_data_type=, :data_type=
    undef_method :data_type=
    
    attr_accessor :red
    alias_method :attr_red, :red
    undef_method :red
    alias_method :attr_red=, :red=
    undef_method :red=
    
    attr_accessor :green
    alias_method :attr_green, :green
    undef_method :green
    alias_method :attr_green=, :green=
    undef_method :green=
    
    attr_accessor :blue
    alias_method :attr_blue, :blue
    undef_method :blue
    alias_method :attr_blue=, :blue=
    undef_method :blue=
    
    attr_accessor :alpha
    alias_method :attr_alpha, :alpha
    undef_method :alpha
    alias_method :attr_alpha=, :alpha=
    undef_method :alpha=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 20 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @data_type = 0
      @red = 0.0
      @green = 0.0
      @blue = 0.0
      @alpha = 0.0
    end
    
    private
    alias_method :initialize__atsuunhighlight_data, :initialize
  end
  
end
