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
  module GInterfaceInfoImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GInterfaceInfo 
    include_class_members GInterfaceInfoImports
    
    # int
    attr_accessor :interface_init
    alias_method :attr_interface_init, :interface_init
    undef_method :interface_init
    alias_method :attr_interface_init=, :interface_init=
    undef_method :interface_init=
    
    # int
    attr_accessor :interface_finalize
    alias_method :attr_interface_finalize, :interface_finalize
    undef_method :interface_finalize
    alias_method :attr_interface_finalize=, :interface_finalize=
    undef_method :interface_finalize=
    
    # int
    attr_accessor :interface_data
    alias_method :attr_interface_data, :interface_data
    undef_method :interface_data
    alias_method :attr_interface_data=, :interface_data=
    undef_method :interface_data=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._ginterface_info_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @interface_init = 0
      @interface_finalize = 0
      @interface_data = 0
    end
    
    private
    alias_method :initialize__ginterface_info, :initialize
  end
  
end
