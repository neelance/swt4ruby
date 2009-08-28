require "rjava"

# Copyright (c) 2003, 2006 IBM Corp.
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
  module CursorImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class Cursor 
    include_class_members CursorImports
    
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    attr_accessor :mask
    alias_method :attr_mask, :mask
    undef_method :mask
    alias_method :attr_mask=, :mask=
    undef_method :mask=
    
    attr_accessor :hot_spot_v
    alias_method :attr_hot_spot_v, :hot_spot_v
    undef_method :hot_spot_v
    alias_method :attr_hot_spot_v=, :hot_spot_v=
    undef_method :hot_spot_v=
    
    attr_accessor :hot_spot_h
    alias_method :attr_hot_spot_h, :hot_spot_h
    undef_method :hot_spot_h
    alias_method :attr_hot_spot_h=, :hot_spot_h=
    undef_method :hot_spot_h=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 68 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @data = Array.typed(::Java::Byte).new(16 * 2) { 0 }
      @mask = Array.typed(::Java::Byte).new(16 * 2) { 0 }
      @hot_spot_v = 0
      @hot_spot_h = 0
    end
    
    private
    alias_method :initialize__cursor, :initialize
  end
  
end
