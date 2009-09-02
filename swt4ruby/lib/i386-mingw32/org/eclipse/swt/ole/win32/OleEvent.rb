require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Ole::Win32
  module OleEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Ole::Win32
      include_const ::Org::Eclipse::Swt::Widgets, :Widget
    }
  end
  
  class OleEvent 
    include_class_members OleEventImports
    
    attr_accessor :type
    alias_method :attr_type, :type
    undef_method :type
    alias_method :attr_type=, :type=
    undef_method :type=
    
    attr_accessor :widget
    alias_method :attr_widget, :widget
    undef_method :widget
    alias_method :attr_widget=, :widget=
    undef_method :widget=
    
    attr_accessor :detail
    alias_method :attr_detail, :detail
    undef_method :detail
    alias_method :attr_detail=, :detail=
    undef_method :detail=
    
    attr_accessor :doit
    alias_method :attr_doit, :doit
    undef_method :doit
    alias_method :attr_doit=, :doit=
    undef_method :doit=
    
    attr_accessor :arguments
    alias_method :attr_arguments, :arguments
    undef_method :arguments
    alias_method :attr_arguments=, :arguments=
    undef_method :arguments=
    
    typesig { [] }
    def initialize
      @type = 0
      @widget = nil
      @detail = 0
      @doit = true
      @arguments = nil
    end
    
    private
    alias_method :initialize__ole_event, :initialize
  end
  
end
