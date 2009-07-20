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
  module GTypeQueryImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GTypeQuery 
    include_class_members GTypeQueryImports
    
    attr_accessor :type
    alias_method :attr_type, :type
    undef_method :type
    alias_method :attr_type=, :type=
    undef_method :type=
    
    # long
    attr_accessor :type_name
    alias_method :attr_type_name, :type_name
    undef_method :type_name
    alias_method :attr_type_name=, :type_name=
    undef_method :type_name=
    
    attr_accessor :class_size
    alias_method :attr_class_size, :class_size
    undef_method :class_size
    alias_method :attr_class_size=, :class_size=
    undef_method :class_size=
    
    attr_accessor :instance_size
    alias_method :attr_instance_size, :instance_size
    undef_method :instance_size
    alias_method :attr_instance_size=, :instance_size=
    undef_method :instance_size=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._gtype_query_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @type = 0
      @type_name = 0
      @class_size = 0
      @instance_size = 0
    end
    
    private
    alias_method :initialize__gtype_query, :initialize
  end
  
end
