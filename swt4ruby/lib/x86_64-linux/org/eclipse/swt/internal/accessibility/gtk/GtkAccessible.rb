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
  module GtkAccessibleImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Accessibility::Gtk
    }
  end
  
  class GtkAccessible 
    include_class_members GtkAccessibleImports
    
    # @field cast=(GtkWidget *)
    # int
    attr_accessor :widget
    alias_method :attr_widget, :widget
    undef_method :widget
    alias_method :attr_widget=, :widget=
    undef_method :widget=
    
    typesig { [] }
    def initialize
      @widget = 0
    end
    
    private
    alias_method :initialize__gtk_accessible, :initialize
  end
  
end
