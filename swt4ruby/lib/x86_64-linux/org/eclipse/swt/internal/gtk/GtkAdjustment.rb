require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others. All rights reserved.
# The contents of this file are made available under the terms
# of the GNU Lesser General Public License (LGPL) Version 2.1 that
# accompanies this distribution (lgpl-v21.txt).  The LGPL is also
# available at http://www.gnu.org/licenses/lgpl.html.  If the version
# of the LGPL at http://www.gnu.org is different to the version of
# the LGPL accompanying this distribution and there is any conflict
# between the two license versions, the terms of the LGPL accompanying
# this distribution shall govern.
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Gtk
  module GtkAdjustmentImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GtkAdjustment 
    include_class_members GtkAdjustmentImports
    
    attr_accessor :lower
    alias_method :attr_lower, :lower
    undef_method :lower
    alias_method :attr_lower=, :lower=
    undef_method :lower=
    
    attr_accessor :upper
    alias_method :attr_upper, :upper
    undef_method :upper
    alias_method :attr_upper=, :upper=
    undef_method :upper=
    
    attr_accessor :value
    alias_method :attr_value, :value
    undef_method :value
    alias_method :attr_value=, :value=
    undef_method :value=
    
    attr_accessor :step_increment
    alias_method :attr_step_increment, :step_increment
    undef_method :step_increment
    alias_method :attr_step_increment=, :step_increment=
    undef_method :step_increment=
    
    attr_accessor :page_increment
    alias_method :attr_page_increment, :page_increment
    undef_method :page_increment
    alias_method :attr_page_increment=, :page_increment=
    undef_method :page_increment=
    
    attr_accessor :page_size
    alias_method :attr_page_size, :page_size
    undef_method :page_size
    alias_method :attr_page_size=, :page_size=
    undef_method :page_size=
    
    typesig { [] }
    def initialize
      @lower = 0.0
      @upper = 0.0
      @value = 0.0
      @step_increment = 0.0
      @page_increment = 0.0
      @page_size = 0.0
    end
    
    private
    alias_method :initialize__gtk_adjustment, :initialize
  end
  
end
