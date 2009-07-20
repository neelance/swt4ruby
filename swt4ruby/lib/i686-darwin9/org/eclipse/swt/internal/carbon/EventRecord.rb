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
  module EventRecordImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class EventRecord 
    include_class_members EventRecordImports
    
    attr_accessor :what
    alias_method :attr_what, :what
    undef_method :what
    alias_method :attr_what=, :what=
    undef_method :what=
    
    attr_accessor :message
    alias_method :attr_message, :message
    undef_method :message
    alias_method :attr_message=, :message=
    undef_method :message=
    
    attr_accessor :when
    alias_method :attr_when, :when
    undef_method :when
    alias_method :attr_when=, :when=
    undef_method :when=
    
    # Point where;
    attr_accessor :where_v
    alias_method :attr_where_v, :where_v
    undef_method :where_v
    alias_method :attr_where_v=, :where_v=
    undef_method :where_v=
    
    attr_accessor :where_h
    alias_method :attr_where_h, :where_h
    undef_method :where_h
    alias_method :attr_where_h=, :where_h=
    undef_method :where_h=
    
    attr_accessor :modifiers
    alias_method :attr_modifiers, :modifiers
    undef_method :modifiers
    alias_method :attr_modifiers=, :modifiers=
    undef_method :modifiers=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 16 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @what = 0
      @message = 0
      @when = 0
      @where_v = 0
      @where_h = 0
      @modifiers = 0
    end
    
    private
    alias_method :initialize__event_record, :initialize
  end
  
end
