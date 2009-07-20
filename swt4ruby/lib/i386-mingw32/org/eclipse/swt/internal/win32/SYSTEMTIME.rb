require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module SYSTEMTIMEImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SYSTEMTIME 
    include_class_members SYSTEMTIMEImports
    
    attr_accessor :w_year
    alias_method :attr_w_year, :w_year
    undef_method :w_year
    alias_method :attr_w_year=, :w_year=
    undef_method :w_year=
    
    attr_accessor :w_month
    alias_method :attr_w_month, :w_month
    undef_method :w_month
    alias_method :attr_w_month=, :w_month=
    undef_method :w_month=
    
    attr_accessor :w_day_of_week
    alias_method :attr_w_day_of_week, :w_day_of_week
    undef_method :w_day_of_week
    alias_method :attr_w_day_of_week=, :w_day_of_week=
    undef_method :w_day_of_week=
    
    attr_accessor :w_day
    alias_method :attr_w_day, :w_day
    undef_method :w_day
    alias_method :attr_w_day=, :w_day=
    undef_method :w_day=
    
    attr_accessor :w_hour
    alias_method :attr_w_hour, :w_hour
    undef_method :w_hour
    alias_method :attr_w_hour=, :w_hour=
    undef_method :w_hour=
    
    attr_accessor :w_minute
    alias_method :attr_w_minute, :w_minute
    undef_method :w_minute
    alias_method :attr_w_minute=, :w_minute=
    undef_method :w_minute=
    
    attr_accessor :w_second
    alias_method :attr_w_second, :w_second
    undef_method :w_second
    alias_method :attr_w_second=, :w_second=
    undef_method :w_second=
    
    attr_accessor :w_milliseconds
    alias_method :attr_w_milliseconds, :w_milliseconds
    undef_method :w_milliseconds
    alias_method :attr_w_milliseconds=, :w_milliseconds=
    undef_method :w_milliseconds=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._systemtime_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @w_year = 0
      @w_month = 0
      @w_day_of_week = 0
      @w_day = 0
      @w_hour = 0
      @w_minute = 0
      @w_second = 0
      @w_milliseconds = 0
    end
    
    private
    alias_method :initialize__systemtime, :initialize
  end
  
end
