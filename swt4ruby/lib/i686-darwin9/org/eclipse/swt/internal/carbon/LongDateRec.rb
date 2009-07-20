require "rjava"

# Copyright (c) 2003-2006 IBM Corp.
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
  module LongDateRecImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class LongDateRec 
    include_class_members LongDateRecImports
    
    attr_accessor :era
    alias_method :attr_era, :era
    undef_method :era
    alias_method :attr_era=, :era=
    undef_method :era=
    
    attr_accessor :year
    alias_method :attr_year, :year
    undef_method :year
    alias_method :attr_year=, :year=
    undef_method :year=
    
    attr_accessor :month
    alias_method :attr_month, :month
    undef_method :month
    alias_method :attr_month=, :month=
    undef_method :month=
    
    attr_accessor :day
    alias_method :attr_day, :day
    undef_method :day
    alias_method :attr_day=, :day=
    undef_method :day=
    
    attr_accessor :hour
    alias_method :attr_hour, :hour
    undef_method :hour
    alias_method :attr_hour=, :hour=
    undef_method :hour=
    
    attr_accessor :minute
    alias_method :attr_minute, :minute
    undef_method :minute
    alias_method :attr_minute=, :minute=
    undef_method :minute=
    
    attr_accessor :second
    alias_method :attr_second, :second
    undef_method :second
    alias_method :attr_second=, :second=
    undef_method :second=
    
    attr_accessor :day_of_week
    alias_method :attr_day_of_week, :day_of_week
    undef_method :day_of_week
    alias_method :attr_day_of_week=, :day_of_week=
    undef_method :day_of_week=
    
    attr_accessor :day_of_year
    alias_method :attr_day_of_year, :day_of_year
    undef_method :day_of_year
    alias_method :attr_day_of_year=, :day_of_year=
    undef_method :day_of_year=
    
    attr_accessor :week_of_year
    alias_method :attr_week_of_year, :week_of_year
    undef_method :week_of_year
    alias_method :attr_week_of_year=, :week_of_year=
    undef_method :week_of_year=
    
    attr_accessor :pm
    alias_method :attr_pm, :pm
    undef_method :pm
    alias_method :attr_pm=, :pm=
    undef_method :pm=
    
    attr_accessor :res1
    alias_method :attr_res1, :res1
    undef_method :res1
    alias_method :attr_res1=, :res1=
    undef_method :res1=
    
    attr_accessor :res2
    alias_method :attr_res2, :res2
    undef_method :res2
    alias_method :attr_res2=, :res2=
    undef_method :res2=
    
    attr_accessor :res3
    alias_method :attr_res3, :res3
    undef_method :res3
    alias_method :attr_res3=, :res3=
    undef_method :res3=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 28 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @era = 0
      @year = 0
      @month = 0
      @day = 0
      @hour = 0
      @minute = 0
      @second = 0
      @day_of_week = 0
      @day_of_year = 0
      @week_of_year = 0
      @pm = 0
      @res1 = 0
      @res2 = 0
      @res3 = 0
    end
    
    private
    alias_method :initialize__long_date_rec, :initialize
  end
  
end
