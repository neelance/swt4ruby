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
  module AtkTextIfaceImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Accessibility::Gtk
    }
  end
  
  class AtkTextIface 
    include_class_members AtkTextIfaceImports
    
    # int
    attr_accessor :get_text
    alias_method :attr_get_text, :get_text
    undef_method :get_text
    alias_method :attr_get_text=, :get_text=
    undef_method :get_text=
    
    # int
    attr_accessor :get_text_after_offset
    alias_method :attr_get_text_after_offset, :get_text_after_offset
    undef_method :get_text_after_offset
    alias_method :attr_get_text_after_offset=, :get_text_after_offset=
    undef_method :get_text_after_offset=
    
    # int
    attr_accessor :get_text_at_offset
    alias_method :attr_get_text_at_offset, :get_text_at_offset
    undef_method :get_text_at_offset
    alias_method :attr_get_text_at_offset=, :get_text_at_offset=
    undef_method :get_text_at_offset=
    
    # int
    attr_accessor :get_character_at_offset
    alias_method :attr_get_character_at_offset, :get_character_at_offset
    undef_method :get_character_at_offset
    alias_method :attr_get_character_at_offset=, :get_character_at_offset=
    undef_method :get_character_at_offset=
    
    # int
    attr_accessor :get_text_before_offset
    alias_method :attr_get_text_before_offset, :get_text_before_offset
    undef_method :get_text_before_offset
    alias_method :attr_get_text_before_offset=, :get_text_before_offset=
    undef_method :get_text_before_offset=
    
    # int
    attr_accessor :get_caret_offset
    alias_method :attr_get_caret_offset, :get_caret_offset
    undef_method :get_caret_offset
    alias_method :attr_get_caret_offset=, :get_caret_offset=
    undef_method :get_caret_offset=
    
    # int
    attr_accessor :get_run_attributes
    alias_method :attr_get_run_attributes, :get_run_attributes
    undef_method :get_run_attributes
    alias_method :attr_get_run_attributes=, :get_run_attributes=
    undef_method :get_run_attributes=
    
    # int
    attr_accessor :get_default_attributes
    alias_method :attr_get_default_attributes, :get_default_attributes
    undef_method :get_default_attributes
    alias_method :attr_get_default_attributes=, :get_default_attributes=
    undef_method :get_default_attributes=
    
    # int
    attr_accessor :get_character_extents
    alias_method :attr_get_character_extents, :get_character_extents
    undef_method :get_character_extents
    alias_method :attr_get_character_extents=, :get_character_extents=
    undef_method :get_character_extents=
    
    # int
    attr_accessor :get_character_count
    alias_method :attr_get_character_count, :get_character_count
    undef_method :get_character_count
    alias_method :attr_get_character_count=, :get_character_count=
    undef_method :get_character_count=
    
    # int
    attr_accessor :get_offset_at_point
    alias_method :attr_get_offset_at_point, :get_offset_at_point
    undef_method :get_offset_at_point
    alias_method :attr_get_offset_at_point=, :get_offset_at_point=
    undef_method :get_offset_at_point=
    
    # int
    attr_accessor :get_n_selections
    alias_method :attr_get_n_selections, :get_n_selections
    undef_method :get_n_selections
    alias_method :attr_get_n_selections=, :get_n_selections=
    undef_method :get_n_selections=
    
    # int
    attr_accessor :get_selection
    alias_method :attr_get_selection, :get_selection
    undef_method :get_selection
    alias_method :attr_get_selection=, :get_selection=
    undef_method :get_selection=
    
    # int
    attr_accessor :add_selection
    alias_method :attr_add_selection, :add_selection
    undef_method :add_selection
    alias_method :attr_add_selection=, :add_selection=
    undef_method :add_selection=
    
    # int
    attr_accessor :remove_selection
    alias_method :attr_remove_selection, :remove_selection
    undef_method :remove_selection
    alias_method :attr_remove_selection=, :remove_selection=
    undef_method :remove_selection=
    
    # int
    attr_accessor :set_selection
    alias_method :attr_set_selection, :set_selection
    undef_method :set_selection
    alias_method :attr_set_selection=, :set_selection=
    undef_method :set_selection=
    
    # int
    attr_accessor :set_caret_offset
    alias_method :attr_set_caret_offset, :set_caret_offset
    undef_method :set_caret_offset
    alias_method :attr_set_caret_offset=, :set_caret_offset=
    undef_method :set_caret_offset=
    
    # int
    attr_accessor :text_changed
    alias_method :attr_text_changed, :text_changed
    undef_method :text_changed
    alias_method :attr_text_changed=, :text_changed=
    undef_method :text_changed=
    
    # int
    attr_accessor :text_caret_moved
    alias_method :attr_text_caret_moved, :text_caret_moved
    undef_method :text_caret_moved
    alias_method :attr_text_caret_moved=, :text_caret_moved=
    undef_method :text_caret_moved=
    
    # int
    attr_accessor :text_selection_changed
    alias_method :attr_text_selection_changed, :text_selection_changed
    undef_method :text_selection_changed
    alias_method :attr_text_selection_changed=, :text_selection_changed=
    undef_method :text_selection_changed=
    
    typesig { [] }
    def initialize
      @get_text = 0
      @get_text_after_offset = 0
      @get_text_at_offset = 0
      @get_character_at_offset = 0
      @get_text_before_offset = 0
      @get_caret_offset = 0
      @get_run_attributes = 0
      @get_default_attributes = 0
      @get_character_extents = 0
      @get_character_count = 0
      @get_offset_at_point = 0
      @get_n_selections = 0
      @get_selection = 0
      @add_selection = 0
      @remove_selection = 0
      @set_selection = 0
      @set_caret_offset = 0
      @text_changed = 0
      @text_caret_moved = 0
      @text_selection_changed = 0
    end
    
    private
    alias_method :initialize__atk_text_iface, :initialize
  end
  
end
