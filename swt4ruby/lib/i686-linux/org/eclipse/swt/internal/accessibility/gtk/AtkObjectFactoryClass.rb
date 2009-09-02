require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others. All rights reserved.
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
module Org::Eclipse::Swt::Internal::Accessibility::Gtk
  module AtkObjectFactoryClassImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Accessibility::Gtk
    }
  end
  
  class AtkObjectFactoryClass 
    include_class_members AtkObjectFactoryClassImports
    
    # @field cast=(AtkObject *(*)())
    # long
    attr_accessor :create_accessible
    alias_method :attr_create_accessible, :create_accessible
    undef_method :create_accessible
    alias_method :attr_create_accessible=, :create_accessible=
    undef_method :create_accessible=
    
    # @field cast=(void (*)())
    # long
    attr_accessor :invalidate
    alias_method :attr_invalidate, :invalidate
    undef_method :invalidate
    alias_method :attr_invalidate=, :invalidate=
    undef_method :invalidate=
    
    # @field cast=(GType (*)())
    # long
    attr_accessor :get_accessible_type
    alias_method :attr_get_accessible_type, :get_accessible_type
    undef_method :get_accessible_type
    alias_method :attr_get_accessible_type=, :get_accessible_type=
    undef_method :get_accessible_type=
    
    typesig { [] }
    def initialize
      @create_accessible = 0
      @invalidate = 0
      @get_accessible_type = 0
    end
    
    private
    alias_method :initialize__atk_object_factory_class, :initialize
  end
  
end
