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
  module PangoAttributeImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class PangoAttribute 
    include_class_members PangoAttributeImports
    
    # int
    attr_accessor :klass
    alias_method :attr_klass, :klass
    undef_method :klass
    alias_method :attr_klass=, :klass=
    undef_method :klass=
    
    attr_accessor :start_index
    alias_method :attr_start_index, :start_index
    undef_method :start_index
    alias_method :attr_start_index=, :start_index=
    undef_method :start_index=
    
    attr_accessor :end_index
    alias_method :attr_end_index, :end_index
    undef_method :end_index
    alias_method :attr_end_index=, :end_index=
    undef_method :end_index=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._pango_attribute_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @klass = 0
      @start_index = 0
      @end_index = 0
    end
    
    private
    alias_method :initialize__pango_attribute, :initialize
  end
  
end
