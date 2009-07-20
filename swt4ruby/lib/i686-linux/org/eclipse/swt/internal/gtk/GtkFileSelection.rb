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
  module GtkFileSelectionImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GtkFileSelection 
    include_class_members GtkFileSelectionImports
    
    # long
    attr_accessor :dir_list
    alias_method :attr_dir_list, :dir_list
    undef_method :dir_list
    alias_method :attr_dir_list=, :dir_list=
    undef_method :dir_list=
    
    # long
    attr_accessor :file_list
    alias_method :attr_file_list, :file_list
    undef_method :file_list
    alias_method :attr_file_list=, :file_list=
    undef_method :file_list=
    
    # long
    attr_accessor :selection_entry
    alias_method :attr_selection_entry, :selection_entry
    undef_method :selection_entry
    alias_method :attr_selection_entry=, :selection_entry=
    undef_method :selection_entry=
    
    # long
    attr_accessor :selection_text
    alias_method :attr_selection_text, :selection_text
    undef_method :selection_text
    alias_method :attr_selection_text=, :selection_text=
    undef_method :selection_text=
    
    # long
    attr_accessor :main_vbox
    alias_method :attr_main_vbox, :main_vbox
    undef_method :main_vbox
    alias_method :attr_main_vbox=, :main_vbox=
    undef_method :main_vbox=
    
    # long
    attr_accessor :ok_button
    alias_method :attr_ok_button, :ok_button
    undef_method :ok_button
    alias_method :attr_ok_button=, :ok_button=
    undef_method :ok_button=
    
    # long
    attr_accessor :cancel_button
    alias_method :attr_cancel_button, :cancel_button
    undef_method :cancel_button
    alias_method :attr_cancel_button=, :cancel_button=
    undef_method :cancel_button=
    
    # long
    attr_accessor :help_button
    alias_method :attr_help_button, :help_button
    undef_method :help_button
    alias_method :attr_help_button=, :help_button=
    undef_method :help_button=
    
    # long
    attr_accessor :history_pulldown
    alias_method :attr_history_pulldown, :history_pulldown
    undef_method :history_pulldown
    alias_method :attr_history_pulldown=, :history_pulldown=
    undef_method :history_pulldown=
    
    # long
    attr_accessor :history_menu
    alias_method :attr_history_menu, :history_menu
    undef_method :history_menu
    alias_method :attr_history_menu=, :history_menu=
    undef_method :history_menu=
    
    # long
    attr_accessor :history_list
    alias_method :attr_history_list, :history_list
    undef_method :history_list
    alias_method :attr_history_list=, :history_list=
    undef_method :history_list=
    
    # long
    attr_accessor :fileop_dialog
    alias_method :attr_fileop_dialog, :fileop_dialog
    undef_method :fileop_dialog
    alias_method :attr_fileop_dialog=, :fileop_dialog=
    undef_method :fileop_dialog=
    
    # long
    attr_accessor :fileop_entry
    alias_method :attr_fileop_entry, :fileop_entry
    undef_method :fileop_entry
    alias_method :attr_fileop_entry=, :fileop_entry=
    undef_method :fileop_entry=
    
    # long
    attr_accessor :fileop_file
    alias_method :attr_fileop_file, :fileop_file
    undef_method :fileop_file
    alias_method :attr_fileop_file=, :fileop_file=
    undef_method :fileop_file=
    
    # long
    attr_accessor :cmpl_state
    alias_method :attr_cmpl_state, :cmpl_state
    undef_method :cmpl_state
    alias_method :attr_cmpl_state=, :cmpl_state=
    undef_method :cmpl_state=
    
    # gpointer
    # long
    attr_accessor :fileop_c_dir
    alias_method :attr_fileop_c_dir, :fileop_c_dir
    undef_method :fileop_c_dir
    alias_method :attr_fileop_c_dir=, :fileop_c_dir=
    undef_method :fileop_c_dir=
    
    # long
    attr_accessor :fileop_del_file
    alias_method :attr_fileop_del_file, :fileop_del_file
    undef_method :fileop_del_file
    alias_method :attr_fileop_del_file=, :fileop_del_file=
    undef_method :fileop_del_file=
    
    # long
    attr_accessor :fileop_ren_file
    alias_method :attr_fileop_ren_file, :fileop_ren_file
    undef_method :fileop_ren_file
    alias_method :attr_fileop_ren_file=, :fileop_ren_file=
    undef_method :fileop_ren_file=
    
    # long
    attr_accessor :button_area
    alias_method :attr_button_area, :button_area
    undef_method :button_area
    alias_method :attr_button_area=, :button_area=
    undef_method :button_area=
    
    # long
    attr_accessor :action_area
    alias_method :attr_action_area, :action_area
    undef_method :action_area
    alias_method :attr_action_area=, :action_area=
    undef_method :action_area=
    
    typesig { [] }
    def initialize
      @dir_list = 0
      @file_list = 0
      @selection_entry = 0
      @selection_text = 0
      @main_vbox = 0
      @ok_button = 0
      @cancel_button = 0
      @help_button = 0
      @history_pulldown = 0
      @history_menu = 0
      @history_list = 0
      @fileop_dialog = 0
      @fileop_entry = 0
      @fileop_file = 0
      @cmpl_state = 0
      @fileop_c_dir = 0
      @fileop_del_file = 0
      @fileop_ren_file = 0
      @button_area = 0
      @action_area = 0
    end
    
    private
    alias_method :initialize__gtk_file_selection, :initialize
  end
  
end
