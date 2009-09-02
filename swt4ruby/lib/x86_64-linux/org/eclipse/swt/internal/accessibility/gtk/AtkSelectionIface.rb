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
  module AtkSelectionIfaceImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Accessibility::Gtk
    }
  end
  
  class AtkSelectionIface 
    include_class_members AtkSelectionIfaceImports
    
    # @field cast=(gboolean (*)())
    # int
    attr_accessor :add_selection
    alias_method :attr_add_selection, :add_selection
    undef_method :add_selection
    alias_method :attr_add_selection=, :add_selection=
    undef_method :add_selection=
    
    # @field cast=(gboolean (*)())
    # int
    attr_accessor :clear_selection
    alias_method :attr_clear_selection, :clear_selection
    undef_method :clear_selection
    alias_method :attr_clear_selection=, :clear_selection=
    undef_method :clear_selection=
    
    # @field cast=(AtkObject *(*)())
    # int
    attr_accessor :ref_selection
    alias_method :attr_ref_selection, :ref_selection
    undef_method :ref_selection
    alias_method :attr_ref_selection=, :ref_selection=
    undef_method :ref_selection=
    
    # @field cast=(gint (*)())
    # int
    attr_accessor :get_selection_count
    alias_method :attr_get_selection_count, :get_selection_count
    undef_method :get_selection_count
    alias_method :attr_get_selection_count=, :get_selection_count=
    undef_method :get_selection_count=
    
    # @field cast=(gboolean (*)())
    # int
    attr_accessor :is_child_selected
    alias_method :attr_is_child_selected, :is_child_selected
    undef_method :is_child_selected
    alias_method :attr_is_child_selected=, :is_child_selected=
    undef_method :is_child_selected=
    
    # @field cast=(gboolean (*)())
    # int
    attr_accessor :remove_selection
    alias_method :attr_remove_selection, :remove_selection
    undef_method :remove_selection
    alias_method :attr_remove_selection=, :remove_selection=
    undef_method :remove_selection=
    
    # @field cast=(gboolean (*)())
    # int
    attr_accessor :select_all_selection
    alias_method :attr_select_all_selection, :select_all_selection
    undef_method :select_all_selection
    alias_method :attr_select_all_selection=, :select_all_selection=
    undef_method :select_all_selection=
    
    # @field cast=(void (*)())
    # int
    attr_accessor :selection_changed
    alias_method :attr_selection_changed, :selection_changed
    undef_method :selection_changed
    alias_method :attr_selection_changed=, :selection_changed=
    undef_method :selection_changed=
    
    typesig { [] }
    def initialize
      @add_selection = 0
      @clear_selection = 0
      @ref_selection = 0
      @get_selection_count = 0
      @is_child_selected = 0
      @remove_selection = 0
      @select_all_selection = 0
      @selection_changed = 0
    end
    
    private
    alias_method :initialize__atk_selection_iface, :initialize
  end
  
end
