require "rjava"

# Copyright (c) 2003-2004 IBM Corp.
# Portions Copyright (c) 1983-2002, Apple Computer, Inc.
# 
# All rights reserved.  This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Carbon
  module NavDialogCreationOptionsImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class NavDialogCreationOptions 
    include_class_members NavDialogCreationOptionsImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :option_flags
    alias_method :attr_option_flags, :option_flags
    undef_method :option_flags
    alias_method :attr_option_flags=, :option_flags=
    undef_method :option_flags=
    
    # Point location;
    attr_accessor :location_h
    alias_method :attr_location_h, :location_h
    undef_method :location_h
    alias_method :attr_location_h=, :location_h=
    undef_method :location_h=
    
    attr_accessor :location_v
    alias_method :attr_location_v, :location_v
    undef_method :location_v
    alias_method :attr_location_v=, :location_v=
    undef_method :location_v=
    
    attr_accessor :client_name
    alias_method :attr_client_name, :client_name
    undef_method :client_name
    alias_method :attr_client_name=, :client_name=
    undef_method :client_name=
    
    attr_accessor :window_title
    alias_method :attr_window_title, :window_title
    undef_method :window_title
    alias_method :attr_window_title=, :window_title=
    undef_method :window_title=
    
    attr_accessor :action_button_label
    alias_method :attr_action_button_label, :action_button_label
    undef_method :action_button_label
    alias_method :attr_action_button_label=, :action_button_label=
    undef_method :action_button_label=
    
    attr_accessor :cancel_button_label
    alias_method :attr_cancel_button_label, :cancel_button_label
    undef_method :cancel_button_label
    alias_method :attr_cancel_button_label=, :cancel_button_label=
    undef_method :cancel_button_label=
    
    attr_accessor :save_file_name
    alias_method :attr_save_file_name, :save_file_name
    undef_method :save_file_name
    alias_method :attr_save_file_name=, :save_file_name=
    undef_method :save_file_name=
    
    attr_accessor :message
    alias_method :attr_message, :message
    undef_method :message
    alias_method :attr_message=, :message=
    undef_method :message=
    
    attr_accessor :preference_key
    alias_method :attr_preference_key, :preference_key
    undef_method :preference_key
    alias_method :attr_preference_key=, :preference_key=
    undef_method :preference_key=
    
    attr_accessor :popup_extension
    alias_method :attr_popup_extension, :popup_extension
    undef_method :popup_extension
    alias_method :attr_popup_extension=, :popup_extension=
    undef_method :popup_extension=
    
    attr_accessor :modality
    alias_method :attr_modality, :modality
    undef_method :modality
    alias_method :attr_modality=, :modality=
    undef_method :modality=
    
    attr_accessor :parent_window
    alias_method :attr_parent_window, :parent_window
    undef_method :parent_window
    alias_method :attr_parent_window=, :parent_window=
    undef_method :parent_window=
    
    class_module.module_eval {
      # char reserved[16];
      const_set_lazy(:Sizeof) { 66 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @option_flags = 0
      @location_h = 0
      @location_v = 0
      @client_name = 0
      @window_title = 0
      @action_button_label = 0
      @cancel_button_label = 0
      @save_file_name = 0
      @message = 0
      @preference_key = 0
      @popup_extension = 0
      @modality = 0
      @parent_window = 0
    end
    
    private
    alias_method :initialize__nav_dialog_creation_options, :initialize
  end
  
end
