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
  module GtkCellRendererClassImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GtkCellRendererClass 
    include_class_members GtkCellRendererClassImports
    
    # int
    attr_accessor :render
    alias_method :attr_render, :render
    undef_method :render
    alias_method :attr_render=, :render=
    undef_method :render=
    
    # int
    attr_accessor :get_size
    alias_method :attr_get_size, :get_size
    undef_method :get_size
    alias_method :attr_get_size=, :get_size=
    undef_method :get_size=
    
    typesig { [] }
    def initialize
      @render = 0
      @get_size = 0
    end
    
    private
    alias_method :initialize__gtk_cell_renderer_class, :initialize
  end
  
end
