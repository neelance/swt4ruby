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
module Org::Eclipse::Swt::Internal::Accessibility::Gtk
  module AtkHypertextIfaceImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Accessibility::Gtk
    }
  end
  
  class AtkHypertextIface 
    include_class_members AtkHypertextIfaceImports
    
    # long
    attr_accessor :get_link
    alias_method :attr_get_link, :get_link
    undef_method :get_link
    alias_method :attr_get_link=, :get_link=
    undef_method :get_link=
    
    # long
    attr_accessor :get_n_links
    alias_method :attr_get_n_links, :get_n_links
    undef_method :get_n_links
    alias_method :attr_get_n_links=, :get_n_links=
    undef_method :get_n_links=
    
    # long
    attr_accessor :get_link_index
    alias_method :attr_get_link_index, :get_link_index
    undef_method :get_link_index
    alias_method :attr_get_link_index=, :get_link_index=
    undef_method :get_link_index=
    
    typesig { [] }
    def initialize
      @get_link = 0
      @get_n_links = 0
      @get_link_index = 0
    end
    
    private
    alias_method :initialize__atk_hypertext_iface, :initialize
  end
  
end
