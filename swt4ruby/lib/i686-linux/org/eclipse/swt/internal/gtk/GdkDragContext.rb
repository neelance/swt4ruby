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
  module GdkDragContextImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GdkDragContext 
    include_class_members GdkDragContextImports
    
    # @field cast=(GdkDragProtocol)
    attr_accessor :protocol
    alias_method :attr_protocol, :protocol
    undef_method :protocol
    alias_method :attr_protocol=, :protocol=
    undef_method :protocol=
    
    # @field cast=(gboolean)
    attr_accessor :is_source
    alias_method :attr_is_source, :is_source
    undef_method :is_source
    alias_method :attr_is_source=, :is_source=
    undef_method :is_source=
    
    # @field cast=(GdkWindow *)
    # long
    attr_accessor :source_window
    alias_method :attr_source_window, :source_window
    undef_method :source_window
    alias_method :attr_source_window=, :source_window=
    undef_method :source_window=
    
    # @field cast=(GdkWindow *)
    # long
    attr_accessor :dest_window
    alias_method :attr_dest_window, :dest_window
    undef_method :dest_window
    alias_method :attr_dest_window=, :dest_window=
    undef_method :dest_window=
    
    # @field cast=(GList *)
    # long
    attr_accessor :targets
    alias_method :attr_targets, :targets
    undef_method :targets
    alias_method :attr_targets=, :targets=
    undef_method :targets=
    
    # @field cast=(GdkDragAction)
    attr_accessor :actions
    alias_method :attr_actions, :actions
    undef_method :actions
    alias_method :attr_actions=, :actions=
    undef_method :actions=
    
    # @field cast=(GdkDragAction)
    attr_accessor :suggested_action
    alias_method :attr_suggested_action, :suggested_action
    undef_method :suggested_action
    alias_method :attr_suggested_action=, :suggested_action=
    undef_method :suggested_action=
    
    # @field cast=(GdkDragAction)
    attr_accessor :action
    alias_method :attr_action, :action
    undef_method :action
    alias_method :attr_action=, :action=
    undef_method :action=
    
    # @field cast=(guint32)
    attr_accessor :start_time
    alias_method :attr_start_time, :start_time
    undef_method :start_time
    alias_method :attr_start_time=, :start_time=
    undef_method :start_time=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._gdk_drag_context_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @protocol = 0
      @is_source = false
      @source_window = 0
      @dest_window = 0
      @targets = 0
      @actions = 0
      @suggested_action = 0
      @action = 0
      @start_time = 0
    end
    
    private
    alias_method :initialize__gdk_drag_context, :initialize
  end
  
end
