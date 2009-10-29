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
module Org::Eclipse::Swt::Internal::Gtk
  module GtkColorSelectionDialogImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GtkColorSelectionDialog 
    include_class_members GtkColorSelectionDialogImports
    
    # @field cast=(GtkWidget *)
    # int
    attr_accessor :colorsel
    alias_method :attr_colorsel, :colorsel
    undef_method :colorsel
    alias_method :attr_colorsel=, :colorsel=
    undef_method :colorsel=
    
    # @field cast=(GtkWidget *)
    # int
    attr_accessor :ok_button
    alias_method :attr_ok_button, :ok_button
    undef_method :ok_button
    alias_method :attr_ok_button=, :ok_button=
    undef_method :ok_button=
    
    # @field cast=(GtkWidget *)
    # int
    attr_accessor :cancel_button
    alias_method :attr_cancel_button, :cancel_button
    undef_method :cancel_button
    alias_method :attr_cancel_button=, :cancel_button=
    undef_method :cancel_button=
    
    # @field cast=(GtkWidget *)
    # int
    attr_accessor :help_button
    alias_method :attr_help_button, :help_button
    undef_method :help_button
    alias_method :attr_help_button=, :help_button=
    undef_method :help_button=
    
    typesig { [] }
    def initialize
      @colorsel = 0
      @ok_button = 0
      @cancel_button = 0
      @help_button = 0
    end
    
    private
    alias_method :initialize__gtk_color_selection_dialog, :initialize
  end
  
end
