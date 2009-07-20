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
  module AtkActionIfaceImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Accessibility::Gtk
    }
  end
  
  # AtkFunction             pad1;
  # AtkFunction             pad2;
  class AtkActionIface 
    include_class_members AtkActionIfaceImports
    
    # GTypeInterface parent;
    # int
    attr_accessor :do_action
    alias_method :attr_do_action, :do_action
    undef_method :do_action
    alias_method :attr_do_action=, :do_action=
    undef_method :do_action=
    
    # int
    attr_accessor :get_n_actions
    alias_method :attr_get_n_actions, :get_n_actions
    undef_method :get_n_actions
    alias_method :attr_get_n_actions=, :get_n_actions=
    undef_method :get_n_actions=
    
    # int
    attr_accessor :get_description
    alias_method :attr_get_description, :get_description
    undef_method :get_description
    alias_method :attr_get_description=, :get_description=
    undef_method :get_description=
    
    # int
    attr_accessor :get_name
    alias_method :attr_get_name, :get_name
    undef_method :get_name
    alias_method :attr_get_name=, :get_name=
    undef_method :get_name=
    
    # int
    attr_accessor :get_keybinding
    alias_method :attr_get_keybinding, :get_keybinding
    undef_method :get_keybinding
    alias_method :attr_get_keybinding=, :get_keybinding=
    undef_method :get_keybinding=
    
    # int
    attr_accessor :set_description
    alias_method :attr_set_description, :set_description
    undef_method :set_description
    alias_method :attr_set_description=, :set_description=
    undef_method :set_description=
    
    typesig { [] }
    def initialize
      @do_action = 0
      @get_n_actions = 0
      @get_description = 0
      @get_name = 0
      @get_keybinding = 0
      @set_description = 0
    end
    
    private
    alias_method :initialize__atk_action_iface, :initialize
  end
  
end
