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
  module GTypeInfoImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GTypeInfo 
    include_class_members GTypeInfoImports
    
    attr_accessor :class_size
    alias_method :attr_class_size, :class_size
    undef_method :class_size
    alias_method :attr_class_size=, :class_size=
    undef_method :class_size=
    
    # int
    attr_accessor :base_init
    alias_method :attr_base_init, :base_init
    undef_method :base_init
    alias_method :attr_base_init=, :base_init=
    undef_method :base_init=
    
    # int
    attr_accessor :base_finalize
    alias_method :attr_base_finalize, :base_finalize
    undef_method :base_finalize
    alias_method :attr_base_finalize=, :base_finalize=
    undef_method :base_finalize=
    
    # int
    attr_accessor :class_init
    alias_method :attr_class_init, :class_init
    undef_method :class_init
    alias_method :attr_class_init=, :class_init=
    undef_method :class_init=
    
    # int
    attr_accessor :class_finalize
    alias_method :attr_class_finalize, :class_finalize
    undef_method :class_finalize
    alias_method :attr_class_finalize=, :class_finalize=
    undef_method :class_finalize=
    
    # int
    attr_accessor :class_data
    alias_method :attr_class_data, :class_data
    undef_method :class_data
    alias_method :attr_class_data=, :class_data=
    undef_method :class_data=
    
    attr_accessor :instance_size
    alias_method :attr_instance_size, :instance_size
    undef_method :instance_size
    alias_method :attr_instance_size=, :instance_size=
    undef_method :instance_size=
    
    attr_accessor :n_preallocs
    alias_method :attr_n_preallocs, :n_preallocs
    undef_method :n_preallocs
    alias_method :attr_n_preallocs=, :n_preallocs=
    undef_method :n_preallocs=
    
    # int
    attr_accessor :instance_init
    alias_method :attr_instance_init, :instance_init
    undef_method :instance_init
    alias_method :attr_instance_init=, :instance_init=
    undef_method :instance_init=
    
    # int
    attr_accessor :value_table
    alias_method :attr_value_table, :value_table
    undef_method :value_table
    alias_method :attr_value_table=, :value_table=
    undef_method :value_table=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._gtype_info_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @class_size = 0
      @base_init = 0
      @base_finalize = 0
      @class_init = 0
      @class_finalize = 0
      @class_data = 0
      @instance_size = 0
      @n_preallocs = 0
      @instance_init = 0
      @value_table = 0
    end
    
    private
    alias_method :initialize__gtype_info, :initialize
  end
  
end
