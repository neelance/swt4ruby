require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Accessibility
  module ACCImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Accessibility
    }
  end
  
  # Class ACC contains all the constants used in defining an
  # Accessible object.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 2.0
  class ACC 
    include_class_members ACCImports
    
    class_module.module_eval {
      const_set_lazy(:STATE_NORMAL) { 0x0 }
      const_attr_reader  :STATE_NORMAL
      
      const_set_lazy(:STATE_SELECTED) { 0x2 }
      const_attr_reader  :STATE_SELECTED
      
      const_set_lazy(:STATE_SELECTABLE) { 0x200000 }
      const_attr_reader  :STATE_SELECTABLE
      
      const_set_lazy(:STATE_MULTISELECTABLE) { 0x1000000 }
      const_attr_reader  :STATE_MULTISELECTABLE
      
      const_set_lazy(:STATE_FOCUSED) { 0x4 }
      const_attr_reader  :STATE_FOCUSED
      
      const_set_lazy(:STATE_FOCUSABLE) { 0x100000 }
      const_attr_reader  :STATE_FOCUSABLE
      
      const_set_lazy(:STATE_PRESSED) { 0x8 }
      const_attr_reader  :STATE_PRESSED
      
      const_set_lazy(:STATE_CHECKED) { 0x10 }
      const_attr_reader  :STATE_CHECKED
      
      const_set_lazy(:STATE_EXPANDED) { 0x200 }
      const_attr_reader  :STATE_EXPANDED
      
      const_set_lazy(:STATE_COLLAPSED) { 0x400 }
      const_attr_reader  :STATE_COLLAPSED
      
      const_set_lazy(:STATE_HOTTRACKED) { 0x80 }
      const_attr_reader  :STATE_HOTTRACKED
      
      const_set_lazy(:STATE_BUSY) { 0x800 }
      const_attr_reader  :STATE_BUSY
      
      const_set_lazy(:STATE_READONLY) { 0x40 }
      const_attr_reader  :STATE_READONLY
      
      const_set_lazy(:STATE_INVISIBLE) { 0x8000 }
      const_attr_reader  :STATE_INVISIBLE
      
      const_set_lazy(:STATE_OFFSCREEN) { 0x10000 }
      const_attr_reader  :STATE_OFFSCREEN
      
      const_set_lazy(:STATE_SIZEABLE) { 0x20000 }
      const_attr_reader  :STATE_SIZEABLE
      
      const_set_lazy(:STATE_LINKED) { 0x400000 }
      const_attr_reader  :STATE_LINKED
      
      const_set_lazy(:ROLE_CLIENT_AREA) { 0xa }
      const_attr_reader  :ROLE_CLIENT_AREA
      
      const_set_lazy(:ROLE_WINDOW) { 0x9 }
      const_attr_reader  :ROLE_WINDOW
      
      const_set_lazy(:ROLE_MENUBAR) { 0x2 }
      const_attr_reader  :ROLE_MENUBAR
      
      const_set_lazy(:ROLE_MENU) { 0xb }
      const_attr_reader  :ROLE_MENU
      
      const_set_lazy(:ROLE_MENUITEM) { 0xc }
      const_attr_reader  :ROLE_MENUITEM
      
      const_set_lazy(:ROLE_SEPARATOR) { 0x15 }
      const_attr_reader  :ROLE_SEPARATOR
      
      const_set_lazy(:ROLE_TOOLTIP) { 0xd }
      const_attr_reader  :ROLE_TOOLTIP
      
      const_set_lazy(:ROLE_SCROLLBAR) { 0x3 }
      const_attr_reader  :ROLE_SCROLLBAR
      
      const_set_lazy(:ROLE_DIALOG) { 0x12 }
      const_attr_reader  :ROLE_DIALOG
      
      const_set_lazy(:ROLE_LABEL) { 0x29 }
      const_attr_reader  :ROLE_LABEL
      
      const_set_lazy(:ROLE_PUSHBUTTON) { 0x2b }
      const_attr_reader  :ROLE_PUSHBUTTON
      
      const_set_lazy(:ROLE_CHECKBUTTON) { 0x2c }
      const_attr_reader  :ROLE_CHECKBUTTON
      
      const_set_lazy(:ROLE_RADIOBUTTON) { 0x2d }
      const_attr_reader  :ROLE_RADIOBUTTON
      
      # @since 3.5
      const_set_lazy(:ROLE_SPLITBUTTON) { 0x3e }
      const_attr_reader  :ROLE_SPLITBUTTON
      
      const_set_lazy(:ROLE_COMBOBOX) { 0x2e }
      const_attr_reader  :ROLE_COMBOBOX
      
      const_set_lazy(:ROLE_TEXT) { 0x2a }
      const_attr_reader  :ROLE_TEXT
      
      const_set_lazy(:ROLE_TOOLBAR) { 0x16 }
      const_attr_reader  :ROLE_TOOLBAR
      
      const_set_lazy(:ROLE_LIST) { 0x21 }
      const_attr_reader  :ROLE_LIST
      
      const_set_lazy(:ROLE_LISTITEM) { 0x22 }
      const_attr_reader  :ROLE_LISTITEM
      
      const_set_lazy(:ROLE_TABLE) { 0x18 }
      const_attr_reader  :ROLE_TABLE
      
      const_set_lazy(:ROLE_TABLECELL) { 0x1d }
      const_attr_reader  :ROLE_TABLECELL
      
      const_set_lazy(:ROLE_TABLECOLUMNHEADER) { 0x19 }
      const_attr_reader  :ROLE_TABLECOLUMNHEADER
      
      # @deprecated use ROLE_TABLECOLUMNHEADER
      const_set_lazy(:ROLE_TABLECOLUMN) { ROLE_TABLECOLUMNHEADER }
      const_attr_reader  :ROLE_TABLECOLUMN
      
      const_set_lazy(:ROLE_TABLEROWHEADER) { 0x1a }
      const_attr_reader  :ROLE_TABLEROWHEADER
      
      const_set_lazy(:ROLE_TREE) { 0x23 }
      const_attr_reader  :ROLE_TREE
      
      const_set_lazy(:ROLE_TREEITEM) { 0x24 }
      const_attr_reader  :ROLE_TREEITEM
      
      const_set_lazy(:ROLE_TABFOLDER) { 0x3c }
      const_attr_reader  :ROLE_TABFOLDER
      
      const_set_lazy(:ROLE_TABITEM) { 0x25 }
      const_attr_reader  :ROLE_TABITEM
      
      const_set_lazy(:ROLE_PROGRESSBAR) { 0x30 }
      const_attr_reader  :ROLE_PROGRESSBAR
      
      const_set_lazy(:ROLE_SLIDER) { 0x33 }
      const_attr_reader  :ROLE_SLIDER
      
      const_set_lazy(:ROLE_LINK) { 0x1e }
      const_attr_reader  :ROLE_LINK
      
      const_set_lazy(:CHILDID_SELF) { -1 }
      const_attr_reader  :CHILDID_SELF
      
      const_set_lazy(:CHILDID_NONE) { -2 }
      const_attr_reader  :CHILDID_NONE
      
      const_set_lazy(:CHILDID_MULTIPLE) { -3 }
      const_attr_reader  :CHILDID_MULTIPLE
      
      const_set_lazy(:TEXT_INSERT) { 0 }
      const_attr_reader  :TEXT_INSERT
      
      const_set_lazy(:TEXT_DELETE) { 1 }
      const_attr_reader  :TEXT_DELETE
    }
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__acc, :initialize
  end
  
end
