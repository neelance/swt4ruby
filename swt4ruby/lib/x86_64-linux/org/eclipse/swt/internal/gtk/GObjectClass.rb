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
  module GObjectClassImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GObjectClass 
    include_class_members GObjectClassImports
    
    # int
    attr_accessor :constructor
    alias_method :attr_constructor, :constructor
    undef_method :constructor
    alias_method :attr_constructor=, :constructor=
    undef_method :constructor=
    
    # int
    attr_accessor :set_property
    alias_method :attr_set_property, :set_property
    undef_method :set_property
    alias_method :attr_set_property=, :set_property=
    undef_method :set_property=
    
    # int
    attr_accessor :get_property
    alias_method :attr_get_property, :get_property
    undef_method :get_property
    alias_method :attr_get_property=, :get_property=
    undef_method :get_property=
    
    # int
    attr_accessor :dispose
    alias_method :attr_dispose, :dispose
    undef_method :dispose
    alias_method :attr_dispose=, :dispose=
    undef_method :dispose=
    
    # int
    attr_accessor :finalize
    alias_method :attr_finalize, :finalize
    undef_method :finalize
    alias_method :attr_finalize=, :finalize=
    undef_method :finalize=
    
    # int
    attr_accessor :dispatch_properties_changed
    alias_method :attr_dispatch_properties_changed, :dispatch_properties_changed
    undef_method :dispatch_properties_changed
    alias_method :attr_dispatch_properties_changed=, :dispatch_properties_changed=
    undef_method :dispatch_properties_changed=
    
    # int
    attr_accessor :notify
    alias_method :attr_notify, :notify
    undef_method :notify
    alias_method :attr_notify=, :notify=
    undef_method :notify=
    
    typesig { [] }
    def initialize
      @constructor = 0
      @set_property = 0
      @get_property = 0
      @dispose = 0
      @finalize = 0
      @dispatch_properties_changed = 0
      @notify = 0
    end
    
    private
    alias_method :initialize__gobject_class, :initialize
  end
  
end
