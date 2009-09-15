require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module DisplayImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class are responsible for managing the
  # connection between SWT and the underlying operating
  # system. Their most important function is to implement
  # the SWT event loop in terms of the platform event model.
  # They also provide various methods for accessing information
  # about the operating system, and have overall control over
  # the operating system resources which SWT allocates.
  # <p>
  # Applications which are built with SWT will <em>almost always</em>
  # require only a single display. In particular, some platforms
  # which SWT supports will not allow more than one <em>active</em>
  # display. In other words, some platforms do not support
  # creating a new display if one already exists that has not been
  # sent the <code>dispose()</code> message.
  # <p>
  # In SWT, the thread which creates a <code>Display</code>
  # instance is distinguished as the <em>user-interface thread</em>
  # for that display.
  # </p>
  # The user-interface thread for a particular display has the
  # following special attributes:
  # <ul>
  # <li>
  # The event loop for that display must be run from the thread.
  # </li>
  # <li>
  # Some SWT API methods (notably, most of the public methods in
  # <code>Widget</code> and its subclasses), may only be called
  # from the thread. (To support multi-threaded user-interface
  # applications, class <code>Display</code> provides inter-thread
  # communication methods which allow threads other than the
  # user-interface thread to request that it perform operations
  # on their behalf.)
  # </li>
  # <li>
  # The thread is not allowed to construct other
  # <code>Display</code>s until that display has been disposed.
  # (Note that, this is in addition to the restriction mentioned
  # above concerning platform support for multiple displays. Thus,
  # the only way to have multiple simultaneously active displays,
  # even on platforms which support it, is to have multiple threads.)
  # </li>
  # </ul>
  # Enforcing these attributes allows SWT to be implemented directly
  # on the underlying operating system's event model. This has
  # numerous benefits including smaller footprint, better use of
  # resources, safer memory management, clearer program logic,
  # better performance, and fewer overall operating system threads
  # required. The down side however, is that care must be taken
  # (only) when constructing multi-threaded applications to use the
  # inter-thread communication mechanisms which this class provides
  # when required.
  # </p><p>
  # All SWT API methods which may only be called from the user-interface
  # thread are distinguished in their documentation by indicating that
  # they throw the "<code>ERROR_THREAD_INVALID_ACCESS</code>"
  # SWT exception.
  # </p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>(none)</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Close, Dispose, Settings</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # @see #syncExec
  # @see #asyncExec
  # @see #wake
  # @see #readAndDispatch
  # @see #sleep
  # @see Device#dispose
  # @see <a href="http://www.eclipse.org/swt/snippets/#display">Display snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class Display < DisplayImports.const_get :Device
    include_class_members DisplayImports
    
    # Events Dispatching and Callback
    attr_accessor :gdk_event_count
    alias_method :attr_gdk_event_count, :gdk_event_count
    undef_method :gdk_event_count
    alias_method :attr_gdk_event_count=, :gdk_event_count=
    undef_method :gdk_event_count=
    
    # int
    attr_accessor :gdk_events
    alias_method :attr_gdk_events, :gdk_events
    undef_method :gdk_events
    alias_method :attr_gdk_events=, :gdk_events=
    undef_method :gdk_events=
    
    attr_accessor :gdk_event_widgets
    alias_method :attr_gdk_event_widgets, :gdk_event_widgets
    undef_method :gdk_event_widgets
    alias_method :attr_gdk_event_widgets=, :gdk_event_widgets=
    undef_method :gdk_event_widgets=
    
    attr_accessor :dispatch_events
    alias_method :attr_dispatch_events, :dispatch_events
    undef_method :dispatch_events
    alias_method :attr_dispatch_events=, :dispatch_events=
    undef_method :dispatch_events=
    
    attr_accessor :event_queue
    alias_method :attr_event_queue, :event_queue
    undef_method :event_queue
    alias_method :attr_event_queue=, :event_queue=
    undef_method :event_queue=
    
    # int
    attr_accessor :fds
    alias_method :attr_fds, :fds
    undef_method :fds
    alias_method :attr_fds=, :fds=
    undef_method :fds=
    
    attr_accessor :allocated_nfds
    alias_method :attr_allocated_nfds, :allocated_nfds
    undef_method :allocated_nfds
    alias_method :attr_allocated_nfds=, :allocated_nfds=
    undef_method :allocated_nfds=
    
    attr_accessor :wake
    alias_method :attr_wake, :wake
    undef_method :wake
    alias_method :attr_wake=, :wake=
    undef_method :wake=
    
    attr_accessor :max_priority
    alias_method :attr_max_priority, :max_priority
    undef_method :max_priority
    alias_method :attr_max_priority=, :max_priority=
    undef_method :max_priority=
    
    attr_accessor :timeout
    alias_method :attr_timeout, :timeout
    undef_method :timeout
    alias_method :attr_timeout=, :timeout=
    undef_method :timeout=
    
    attr_accessor :event_callback
    alias_method :attr_event_callback, :event_callback
    undef_method :event_callback
    alias_method :attr_event_callback=, :event_callback=
    undef_method :event_callback=
    
    attr_accessor :filter_callback
    alias_method :attr_filter_callback, :filter_callback
    undef_method :filter_callback
    alias_method :attr_filter_callback=, :filter_callback=
    undef_method :filter_callback=
    
    # int
    attr_accessor :event_proc
    alias_method :attr_event_proc, :event_proc
    undef_method :event_proc
    alias_method :attr_event_proc=, :event_proc=
    undef_method :event_proc=
    
    attr_accessor :filter_proc
    alias_method :attr_filter_proc, :filter_proc
    undef_method :filter_proc
    alias_method :attr_filter_proc=, :filter_proc=
    undef_method :filter_proc=
    
    attr_accessor :window_proc2
    alias_method :attr_window_proc2, :window_proc2
    undef_method :window_proc2
    alias_method :attr_window_proc2=, :window_proc2=
    undef_method :window_proc2=
    
    attr_accessor :window_proc3
    alias_method :attr_window_proc3, :window_proc3
    undef_method :window_proc3
    alias_method :attr_window_proc3=, :window_proc3=
    undef_method :window_proc3=
    
    attr_accessor :window_proc4
    alias_method :attr_window_proc4, :window_proc4
    undef_method :window_proc4
    alias_method :attr_window_proc4=, :window_proc4=
    undef_method :window_proc4=
    
    attr_accessor :window_proc5
    alias_method :attr_window_proc5, :window_proc5
    undef_method :window_proc5
    alias_method :attr_window_proc5=, :window_proc5=
    undef_method :window_proc5=
    
    attr_accessor :window_callback2
    alias_method :attr_window_callback2, :window_callback2
    undef_method :window_callback2
    alias_method :attr_window_callback2=, :window_callback2=
    undef_method :window_callback2=
    
    attr_accessor :window_callback3
    alias_method :attr_window_callback3, :window_callback3
    undef_method :window_callback3
    alias_method :attr_window_callback3=, :window_callback3=
    undef_method :window_callback3=
    
    attr_accessor :window_callback4
    alias_method :attr_window_callback4, :window_callback4
    undef_method :window_callback4
    alias_method :attr_window_callback4=, :window_callback4=
    undef_method :window_callback4=
    
    attr_accessor :window_callback5
    alias_method :attr_window_callback5, :window_callback5
    undef_method :window_callback5
    alias_method :attr_window_callback5=, :window_callback5=
    undef_method :window_callback5=
    
    attr_accessor :event_table
    alias_method :attr_event_table, :event_table
    undef_method :event_table
    alias_method :attr_event_table=, :event_table=
    undef_method :event_table=
    
    attr_accessor :filter_table
    alias_method :attr_filter_table, :filter_table
    undef_method :filter_table
    alias_method :attr_filter_table=, :filter_table=
    undef_method :filter_table=
    
    class_module.module_eval {
      
      def app_name
        defined?(@@app_name) ? @@app_name : @@app_name= "SWT"
      end
      alias_method :attr_app_name, :app_name
      
      def app_name=(value)
        @@app_name = value
      end
      alias_method :attr_app_name=, :app_name=
      
      # $NON-NLS-1$
      const_set_lazy(:DISPATCH_EVENT_KEY) { "org.eclipse.swt.internal.gtk.dispatchEvent" }
      const_attr_reader  :DISPATCH_EVENT_KEY
      
      # $NON-NLS-1$
      const_set_lazy(:ADD_WIDGET_KEY) { "org.eclipse.swt.internal.addWidget" }
      const_attr_reader  :ADD_WIDGET_KEY
    }
    
    # $NON-NLS-1$
    # int
    attr_accessor :closures
    alias_method :attr_closures, :closures
    undef_method :closures
    alias_method :attr_closures=, :closures=
    undef_method :closures=
    
    attr_accessor :signal_ids
    alias_method :attr_signal_ids, :signal_ids
    undef_method :signal_ids
    alias_method :attr_signal_ids=, :signal_ids=
    undef_method :signal_ids=
    
    # int
    attr_accessor :shell_map_proc_closure
    alias_method :attr_shell_map_proc_closure, :shell_map_proc_closure
    undef_method :shell_map_proc_closure
    alias_method :attr_shell_map_proc_closure=, :shell_map_proc_closure=
    undef_method :shell_map_proc_closure=
    
    # Widget Table
    attr_accessor :index_table
    alias_method :attr_index_table, :index_table
    undef_method :index_table
    alias_method :attr_index_table=, :index_table=
    undef_method :index_table=
    
    attr_accessor :free_slot
    alias_method :attr_free_slot, :free_slot
    undef_method :free_slot
    alias_method :attr_free_slot=, :free_slot=
    undef_method :free_slot=
    
    # int
    attr_accessor :last_handle
    alias_method :attr_last_handle, :last_handle
    undef_method :last_handle
    alias_method :attr_last_handle=, :last_handle=
    undef_method :last_handle=
    
    attr_accessor :last_widget
    alias_method :attr_last_widget, :last_widget
    undef_method :last_widget
    alias_method :attr_last_widget=, :last_widget=
    undef_method :last_widget=
    
    attr_accessor :widget_table
    alias_method :attr_widget_table, :widget_table
    undef_method :widget_table
    alias_method :attr_widget_table=, :widget_table=
    undef_method :widget_table=
    
    class_module.module_eval {
      const_set_lazy(:GROW_SIZE) { 1024 }
      const_attr_reader  :GROW_SIZE
      
      when_class_loaded do
        buffer = Converter.wcs_to_mbcs(nil, "SWT_OBJECT_INDEX", true) # $NON-NLS-1$
        const_set :SWT_OBJECT_INDEX, OS.g_quark_from_string(buffer)
        buffer = Converter.wcs_to_mbcs(nil, "SWT_OBJECT_INDEX1", true) # $NON-NLS-1$
        const_set :SWT_OBJECT_INDEX1, OS.g_quark_from_string(buffer)
        buffer = Converter.wcs_to_mbcs(nil, "SWT_OBJECT_INDEX2", true) # $NON-NLS-1$
        const_set :SWT_OBJECT_INDEX2, OS.g_quark_from_string(buffer)
      end
    }
    
    # Modality
    attr_accessor :modal_shells
    alias_method :attr_modal_shells, :modal_shells
    undef_method :modal_shells
    alias_method :attr_modal_shells=, :modal_shells=
    undef_method :modal_shells=
    
    attr_accessor :modal_dialog
    alias_method :attr_modal_dialog, :modal_dialog
    undef_method :modal_dialog
    alias_method :attr_modal_dialog=, :modal_dialog=
    undef_method :modal_dialog=
    
    class_module.module_eval {
      const_set_lazy(:GET_MODAL_DIALOG) { "org.eclipse.swt.internal.gtk.getModalDialog" }
      const_attr_reader  :GET_MODAL_DIALOG
      
      # $NON-NLS-1$
      const_set_lazy(:SET_MODAL_DIALOG) { "org.eclipse.swt.internal.gtk.setModalDialog" }
      const_attr_reader  :SET_MODAL_DIALOG
    }
    
    # $NON-NLS-1$
    # Focus
    attr_accessor :focus_event
    alias_method :attr_focus_event, :focus_event
    undef_method :focus_event
    alias_method :attr_focus_event=, :focus_event=
    undef_method :focus_event=
    
    attr_accessor :focus_control
    alias_method :attr_focus_control, :focus_control
    undef_method :focus_control
    alias_method :attr_focus_control=, :focus_control=
    undef_method :focus_control=
    
    attr_accessor :active_shell
    alias_method :attr_active_shell, :active_shell
    undef_method :active_shell
    alias_method :attr_active_shell=, :active_shell=
    undef_method :active_shell=
    
    attr_accessor :active_pending
    alias_method :attr_active_pending, :active_pending
    undef_method :active_pending
    alias_method :attr_active_pending=, :active_pending=
    undef_method :active_pending=
    
    attr_accessor :ignore_activate
    alias_method :attr_ignore_activate, :ignore_activate
    undef_method :ignore_activate
    alias_method :attr_ignore_activate=, :ignore_activate=
    undef_method :ignore_activate=
    
    attr_accessor :ignore_focus
    alias_method :attr_ignore_focus, :ignore_focus
    undef_method :ignore_focus
    alias_method :attr_ignore_focus=, :ignore_focus=
    undef_method :ignore_focus=
    
    # Input method resources
    attr_accessor :im_control
    alias_method :attr_im_control, :im_control
    undef_method :im_control
    alias_method :attr_im_control=, :im_control=
    undef_method :im_control=
    
    # int
    attr_accessor :preedit_window
    alias_method :attr_preedit_window, :preedit_window
    undef_method :preedit_window
    alias_method :attr_preedit_window=, :preedit_window=
    undef_method :preedit_window=
    
    attr_accessor :preedit_label
    alias_method :attr_preedit_label, :preedit_label
    undef_method :preedit_label
    alias_method :attr_preedit_label=, :preedit_label=
    undef_method :preedit_label=
    
    # Sync/Async Widget Communication
    attr_accessor :synchronizer
    alias_method :attr_synchronizer, :synchronizer
    undef_method :synchronizer
    alias_method :attr_synchronizer=, :synchronizer=
    undef_method :synchronizer=
    
    attr_accessor :thread
    alias_method :attr_thread, :thread
    undef_method :thread
    alias_method :attr_thread=, :thread=
    undef_method :thread=
    
    # Display Shutdown
    attr_accessor :dispose_list
    alias_method :attr_dispose_list, :dispose_list
    undef_method :dispose_list
    alias_method :attr_dispose_list=, :dispose_list=
    undef_method :dispose_list=
    
    # System Tray
    attr_accessor :tray
    alias_method :attr_tray, :tray
    undef_method :tray
    alias_method :attr_tray=, :tray=
    undef_method :tray=
    
    # Timers
    attr_accessor :timer_ids
    alias_method :attr_timer_ids, :timer_ids
    undef_method :timer_ids
    alias_method :attr_timer_ids=, :timer_ids=
    undef_method :timer_ids=
    
    attr_accessor :timer_list
    alias_method :attr_timer_list, :timer_list
    undef_method :timer_list
    alias_method :attr_timer_list=, :timer_list=
    undef_method :timer_list=
    
    attr_accessor :timer_callback
    alias_method :attr_timer_callback, :timer_callback
    undef_method :timer_callback
    alias_method :attr_timer_callback=, :timer_callback=
    undef_method :timer_callback=
    
    # int
    attr_accessor :timer_proc
    alias_method :attr_timer_proc, :timer_proc
    undef_method :timer_proc
    alias_method :attr_timer_proc=, :timer_proc=
    undef_method :timer_proc=
    
    attr_accessor :window_timer_callback
    alias_method :attr_window_timer_callback, :window_timer_callback
    undef_method :window_timer_callback
    alias_method :attr_window_timer_callback=, :window_timer_callback=
    undef_method :window_timer_callback=
    
    # int
    attr_accessor :window_timer_proc
    alias_method :attr_window_timer_proc, :window_timer_proc
    undef_method :window_timer_proc
    alias_method :attr_window_timer_proc=, :window_timer_proc=
    undef_method :window_timer_proc=
    
    # Caret
    attr_accessor :current_caret
    alias_method :attr_current_caret, :current_caret
    undef_method :current_caret
    alias_method :attr_current_caret=, :current_caret=
    undef_method :current_caret=
    
    attr_accessor :caret_callback
    alias_method :attr_caret_callback, :caret_callback
    undef_method :caret_callback
    alias_method :attr_caret_callback=, :caret_callback=
    undef_method :caret_callback=
    
    attr_accessor :caret_id
    alias_method :attr_caret_id, :caret_id
    undef_method :caret_id
    alias_method :attr_caret_id=, :caret_id=
    undef_method :caret_id=
    
    # int
    attr_accessor :caret_proc
    alias_method :attr_caret_proc, :caret_proc
    undef_method :caret_proc
    alias_method :attr_caret_proc=, :caret_proc=
    undef_method :caret_proc=
    
    # Mnemonics
    attr_accessor :mnemonic_control
    alias_method :attr_mnemonic_control, :mnemonic_control
    undef_method :mnemonic_control
    alias_method :attr_mnemonic_control=, :mnemonic_control=
    undef_method :mnemonic_control=
    
    # Mouse hover
    attr_accessor :mouse_hover_id
    alias_method :attr_mouse_hover_id, :mouse_hover_id
    undef_method :mouse_hover_id
    alias_method :attr_mouse_hover_id=, :mouse_hover_id=
    undef_method :mouse_hover_id=
    
    # int
    attr_accessor :mouse_hover_handle
    alias_method :attr_mouse_hover_handle, :mouse_hover_handle
    undef_method :mouse_hover_handle
    alias_method :attr_mouse_hover_handle=, :mouse_hover_handle=
    undef_method :mouse_hover_handle=
    
    attr_accessor :mouse_hover_proc
    alias_method :attr_mouse_hover_proc, :mouse_hover_proc
    undef_method :mouse_hover_proc
    alias_method :attr_mouse_hover_proc=, :mouse_hover_proc=
    undef_method :mouse_hover_proc=
    
    attr_accessor :mouse_hover_callback
    alias_method :attr_mouse_hover_callback, :mouse_hover_callback
    undef_method :mouse_hover_callback
    alias_method :attr_mouse_hover_callback=, :mouse_hover_callback=
    undef_method :mouse_hover_callback=
    
    # Menu position callback
    # int
    attr_accessor :menu_position_proc
    alias_method :attr_menu_position_proc, :menu_position_proc
    undef_method :menu_position_proc
    alias_method :attr_menu_position_proc=, :menu_position_proc=
    undef_method :menu_position_proc=
    
    attr_accessor :menu_position_callback
    alias_method :attr_menu_position_callback, :menu_position_callback
    undef_method :menu_position_callback
    alias_method :attr_menu_position_callback=, :menu_position_callback=
    undef_method :menu_position_callback=
    
    # Tooltip size allocate callback
    # int
    attr_accessor :size_allocate_proc
    alias_method :attr_size_allocate_proc, :size_allocate_proc
    undef_method :size_allocate_proc
    alias_method :attr_size_allocate_proc=, :size_allocate_proc=
    undef_method :size_allocate_proc=
    
    attr_accessor :size_allocate_callback
    alias_method :attr_size_allocate_callback, :size_allocate_callback
    undef_method :size_allocate_callback
    alias_method :attr_size_allocate_callback=, :size_allocate_callback=
    undef_method :size_allocate_callback=
    
    # int
    attr_accessor :size_request_proc
    alias_method :attr_size_request_proc, :size_request_proc
    undef_method :size_request_proc
    alias_method :attr_size_request_proc=, :size_request_proc=
    undef_method :size_request_proc=
    
    attr_accessor :size_request_callback
    alias_method :attr_size_request_callback, :size_request_callback
    undef_method :size_request_callback
    alias_method :attr_size_request_callback=, :size_request_callback=
    undef_method :size_request_callback=
    
    # Shell map callback
    # int
    attr_accessor :shell_map_proc
    alias_method :attr_shell_map_proc, :shell_map_proc
    undef_method :shell_map_proc
    alias_method :attr_shell_map_proc=, :shell_map_proc=
    undef_method :shell_map_proc=
    
    attr_accessor :shell_map_callback
    alias_method :attr_shell_map_callback, :shell_map_callback
    undef_method :shell_map_callback
    alias_method :attr_shell_map_callback=, :shell_map_callback=
    undef_method :shell_map_callback=
    
    # Idle proc callback
    # int
    attr_accessor :idle_proc
    alias_method :attr_idle_proc, :idle_proc
    undef_method :idle_proc
    alias_method :attr_idle_proc=, :idle_proc=
    undef_method :idle_proc=
    
    attr_accessor :idle_handle
    alias_method :attr_idle_handle, :idle_handle
    undef_method :idle_handle
    alias_method :attr_idle_handle=, :idle_handle=
    undef_method :idle_handle=
    
    attr_accessor :idle_callback
    alias_method :attr_idle_callback, :idle_callback
    undef_method :idle_callback
    alias_method :attr_idle_callback=, :idle_callback=
    undef_method :idle_callback=
    
    class_module.module_eval {
      const_set_lazy(:ADD_IDLE_PROC_KEY) { "org.eclipse.swt.internal.gtk.addIdleProc" }
      const_attr_reader  :ADD_IDLE_PROC_KEY
      
      # $NON-NLS-1$
      const_set_lazy(:REMOVE_IDLE_PROC_KEY) { "org.eclipse.swt.internal.gtk.removeIdleProc" }
      const_attr_reader  :REMOVE_IDLE_PROC_KEY
    }
    
    # $NON-NLS-1$
    attr_accessor :idle_lock
    alias_method :attr_idle_lock, :idle_lock
    undef_method :idle_lock
    alias_method :attr_idle_lock=, :idle_lock=
    undef_method :idle_lock=
    
    attr_accessor :idle_needed
    alias_method :attr_idle_needed, :idle_needed
    undef_method :idle_needed
    alias_method :attr_idle_needed=, :idle_needed=
    undef_method :idle_needed=
    
    # GtkTreeView callbacks
    attr_accessor :tree_selection
    alias_method :attr_tree_selection, :tree_selection
    undef_method :tree_selection
    alias_method :attr_tree_selection=, :tree_selection=
    undef_method :tree_selection=
    
    attr_accessor :tree_selection_length
    alias_method :attr_tree_selection_length, :tree_selection_length
    undef_method :tree_selection_length
    alias_method :attr_tree_selection_length=, :tree_selection_length=
    undef_method :tree_selection_length=
    
    # int
    attr_accessor :tree_selection_proc
    alias_method :attr_tree_selection_proc, :tree_selection_proc
    undef_method :tree_selection_proc
    alias_method :attr_tree_selection_proc=, :tree_selection_proc=
    undef_method :tree_selection_proc=
    
    attr_accessor :tree_selection_callback
    alias_method :attr_tree_selection_callback, :tree_selection_callback
    undef_method :tree_selection_callback
    alias_method :attr_tree_selection_callback=, :tree_selection_callback=
    undef_method :tree_selection_callback=
    
    # int
    attr_accessor :cell_data_proc
    alias_method :attr_cell_data_proc, :cell_data_proc
    undef_method :cell_data_proc
    alias_method :attr_cell_data_proc=, :cell_data_proc=
    undef_method :cell_data_proc=
    
    attr_accessor :cell_data_callback
    alias_method :attr_cell_data_callback, :cell_data_callback
    undef_method :cell_data_callback
    alias_method :attr_cell_data_callback=, :cell_data_callback=
    undef_method :cell_data_callback=
    
    # Set direction callback
    # int
    attr_accessor :set_direction_proc
    alias_method :attr_set_direction_proc, :set_direction_proc
    undef_method :set_direction_proc
    alias_method :attr_set_direction_proc=, :set_direction_proc=
    undef_method :set_direction_proc=
    
    attr_accessor :set_direction_callback
    alias_method :attr_set_direction_callback, :set_direction_callback
    undef_method :set_direction_callback
    alias_method :attr_set_direction_callback=, :set_direction_callback=
    undef_method :set_direction_callback=
    
    class_module.module_eval {
      const_set_lazy(:GET_DIRECTION_PROC_KEY) { "org.eclipse.swt.internal.gtk.getDirectionProc" }
      const_attr_reader  :GET_DIRECTION_PROC_KEY
    }
    
    # $NON-NLS-1$
    # Set emissionProc callback
    # int
    attr_accessor :emission_proc
    alias_method :attr_emission_proc, :emission_proc
    undef_method :emission_proc
    alias_method :attr_emission_proc=, :emission_proc=
    undef_method :emission_proc=
    
    attr_accessor :emission_proc_callback
    alias_method :attr_emission_proc_callback, :emission_proc_callback
    undef_method :emission_proc_callback
    alias_method :attr_emission_proc_callback=, :emission_proc_callback=
    undef_method :emission_proc_callback=
    
    class_module.module_eval {
      const_set_lazy(:GET_EMISSION_PROC_KEY) { "org.eclipse.swt.internal.gtk.getEmissionProc" }
      const_attr_reader  :GET_EMISSION_PROC_KEY
    }
    
    # $NON-NLS-1$
    # Get all children callback
    # int
    attr_accessor :all_children_proc
    alias_method :attr_all_children_proc, :all_children_proc
    undef_method :all_children_proc
    alias_method :attr_all_children_proc=, :all_children_proc=
    undef_method :all_children_proc=
    
    attr_accessor :all_children
    alias_method :attr_all_children, :all_children
    undef_method :all_children
    alias_method :attr_all_children=, :all_children=
    undef_method :all_children=
    
    attr_accessor :all_children_callback
    alias_method :attr_all_children_callback, :all_children_callback
    undef_method :all_children_callback
    alias_method :attr_all_children_callback=, :all_children_callback=
    undef_method :all_children_callback=
    
    # Settings callbacks
    # int
    attr_accessor :style_set_proc
    alias_method :attr_style_set_proc, :style_set_proc
    undef_method :style_set_proc
    alias_method :attr_style_set_proc=, :style_set_proc=
    undef_method :style_set_proc=
    
    attr_accessor :style_set_callback
    alias_method :attr_style_set_callback, :style_set_callback
    undef_method :style_set_callback
    alias_method :attr_style_set_callback=, :style_set_callback=
    undef_method :style_set_callback=
    
    # int
    attr_accessor :shell_handle
    alias_method :attr_shell_handle, :shell_handle
    undef_method :shell_handle
    alias_method :attr_shell_handle=, :shell_handle=
    undef_method :shell_handle=
    
    attr_accessor :settings_changed
    alias_method :attr_settings_changed, :settings_changed
    undef_method :settings_changed
    alias_method :attr_settings_changed=, :settings_changed=
    undef_method :settings_changed=
    
    attr_accessor :run_settings
    alias_method :attr_run_settings, :run_settings
    undef_method :run_settings
    alias_method :attr_run_settings=, :run_settings=
    undef_method :run_settings=
    
    # Entry focus behaviour
    attr_accessor :entry_select_on_focus
    alias_method :attr_entry_select_on_focus, :entry_select_on_focus
    undef_method :entry_select_on_focus
    alias_method :attr_entry_select_on_focus=, :entry_select_on_focus=
    undef_method :entry_select_on_focus=
    
    # Enter/Exit events
    attr_accessor :current_control
    alias_method :attr_current_control, :current_control
    undef_method :current_control
    alias_method :attr_current_control=, :current_control=
    undef_method :current_control=
    
    # Flush exposes
    # int
    attr_accessor :check_if_event_proc
    alias_method :attr_check_if_event_proc, :check_if_event_proc
    undef_method :check_if_event_proc
    alias_method :attr_check_if_event_proc=, :check_if_event_proc=
    undef_method :check_if_event_proc=
    
    attr_accessor :check_if_event_callback
    alias_method :attr_check_if_event_callback, :check_if_event_callback
    undef_method :check_if_event_callback
    alias_method :attr_check_if_event_callback=, :check_if_event_callback=
    undef_method :check_if_event_callback=
    
    # int
    attr_accessor :flush_window
    alias_method :attr_flush_window, :flush_window
    undef_method :flush_window
    alias_method :attr_flush_window=, :flush_window=
    undef_method :flush_window=
    
    attr_accessor :flush_all
    alias_method :attr_flush_all, :flush_all
    undef_method :flush_all
    alias_method :attr_flush_all=, :flush_all=
    undef_method :flush_all=
    
    attr_accessor :flush_rect
    alias_method :attr_flush_rect, :flush_rect
    undef_method :flush_rect
    alias_method :attr_flush_rect=, :flush_rect=
    undef_method :flush_rect=
    
    attr_accessor :expose_event
    alias_method :attr_expose_event, :expose_event
    undef_method :expose_event
    alias_method :attr_expose_event=, :expose_event=
    undef_method :expose_event=
    
    attr_accessor :visibility_event
    alias_method :attr_visibility_event, :visibility_event
    undef_method :visibility_event
    alias_method :attr_visibility_event=, :visibility_event=
    undef_method :visibility_event=
    
    # int
    attr_accessor :flush_data
    alias_method :attr_flush_data, :flush_data
    undef_method :flush_data
    alias_method :attr_flush_data=, :flush_data=
    undef_method :flush_data=
    
    # System Resources
    attr_accessor :system_font
    alias_method :attr_system_font, :system_font
    undef_method :system_font
    alias_method :attr_system_font=, :system_font=
    undef_method :system_font=
    
    attr_accessor :error_image
    alias_method :attr_error_image, :error_image
    undef_method :error_image
    alias_method :attr_error_image=, :error_image=
    undef_method :error_image=
    
    attr_accessor :info_image
    alias_method :attr_info_image, :info_image
    undef_method :info_image
    alias_method :attr_info_image=, :info_image=
    undef_method :info_image=
    
    attr_accessor :question_image
    alias_method :attr_question_image, :question_image
    undef_method :question_image
    alias_method :attr_question_image=, :question_image=
    undef_method :question_image=
    
    attr_accessor :warning_image
    alias_method :attr_warning_image, :warning_image
    undef_method :warning_image
    alias_method :attr_warning_image=, :warning_image=
    undef_method :warning_image=
    
    attr_accessor :cursors
    alias_method :attr_cursors, :cursors
    undef_method :cursors
    alias_method :attr_cursors=, :cursors=
    undef_method :cursors=
    
    attr_accessor :resources
    alias_method :attr_resources, :resources
    undef_method :resources
    alias_method :attr_resources=, :resources=
    undef_method :resources=
    
    class_module.module_eval {
      const_set_lazy(:RESOURCE_SIZE) { 1 + 4 + SWT::CURSOR_HAND + 1 }
      const_attr_reader  :RESOURCE_SIZE
    }
    
    # Colors
    attr_accessor :color_widget_dark_shadow
    alias_method :attr_color_widget_dark_shadow, :color_widget_dark_shadow
    undef_method :color_widget_dark_shadow
    alias_method :attr_color_widget_dark_shadow=, :color_widget_dark_shadow=
    undef_method :color_widget_dark_shadow=
    
    attr_accessor :color_widget_normal_shadow
    alias_method :attr_color_widget_normal_shadow, :color_widget_normal_shadow
    undef_method :color_widget_normal_shadow
    alias_method :attr_color_widget_normal_shadow=, :color_widget_normal_shadow=
    undef_method :color_widget_normal_shadow=
    
    attr_accessor :color_widget_light_shadow
    alias_method :attr_color_widget_light_shadow, :color_widget_light_shadow
    undef_method :color_widget_light_shadow
    alias_method :attr_color_widget_light_shadow=, :color_widget_light_shadow=
    undef_method :color_widget_light_shadow=
    
    attr_accessor :color_widget_highlight_shadow
    alias_method :attr_color_widget_highlight_shadow, :color_widget_highlight_shadow
    undef_method :color_widget_highlight_shadow
    alias_method :attr_color_widget_highlight_shadow=, :color_widget_highlight_shadow=
    undef_method :color_widget_highlight_shadow=
    
    attr_accessor :color_widget_background
    alias_method :attr_color_widget_background, :color_widget_background
    undef_method :color_widget_background
    alias_method :attr_color_widget_background=, :color_widget_background=
    undef_method :color_widget_background=
    
    attr_accessor :color_widget_foreground
    alias_method :attr_color_widget_foreground, :color_widget_foreground
    undef_method :color_widget_foreground
    alias_method :attr_color_widget_foreground=, :color_widget_foreground=
    undef_method :color_widget_foreground=
    
    attr_accessor :color_widget_border
    alias_method :attr_color_widget_border, :color_widget_border
    undef_method :color_widget_border
    alias_method :attr_color_widget_border=, :color_widget_border=
    undef_method :color_widget_border=
    
    attr_accessor :color_list_foreground
    alias_method :attr_color_list_foreground, :color_list_foreground
    undef_method :color_list_foreground
    alias_method :attr_color_list_foreground=, :color_list_foreground=
    undef_method :color_list_foreground=
    
    attr_accessor :color_list_background
    alias_method :attr_color_list_background, :color_list_background
    undef_method :color_list_background
    alias_method :attr_color_list_background=, :color_list_background=
    undef_method :color_list_background=
    
    attr_accessor :color_list_selection
    alias_method :attr_color_list_selection, :color_list_selection
    undef_method :color_list_selection
    alias_method :attr_color_list_selection=, :color_list_selection=
    undef_method :color_list_selection=
    
    attr_accessor :color_list_selection_text
    alias_method :attr_color_list_selection_text, :color_list_selection_text
    undef_method :color_list_selection_text
    alias_method :attr_color_list_selection_text=, :color_list_selection_text=
    undef_method :color_list_selection_text=
    
    attr_accessor :color_info_background
    alias_method :attr_color_info_background, :color_info_background
    undef_method :color_info_background
    alias_method :attr_color_info_background=, :color_info_background=
    undef_method :color_info_background=
    
    attr_accessor :color_info_foreground
    alias_method :attr_color_info_foreground, :color_info_foreground
    undef_method :color_info_foreground
    alias_method :attr_color_info_foreground=, :color_info_foreground=
    undef_method :color_info_foreground=
    
    attr_accessor :color_title_foreground
    alias_method :attr_color_title_foreground, :color_title_foreground
    undef_method :color_title_foreground
    alias_method :attr_color_title_foreground=, :color_title_foreground=
    undef_method :color_title_foreground=
    
    attr_accessor :color_title_background
    alias_method :attr_color_title_background, :color_title_background
    undef_method :color_title_background
    alias_method :attr_color_title_background=, :color_title_background=
    undef_method :color_title_background=
    
    attr_accessor :color_title_background_gradient
    alias_method :attr_color_title_background_gradient, :color_title_background_gradient
    undef_method :color_title_background_gradient
    alias_method :attr_color_title_background_gradient=, :color_title_background_gradient=
    undef_method :color_title_background_gradient=
    
    attr_accessor :color_title_inactive_foreground
    alias_method :attr_color_title_inactive_foreground, :color_title_inactive_foreground
    undef_method :color_title_inactive_foreground
    alias_method :attr_color_title_inactive_foreground=, :color_title_inactive_foreground=
    undef_method :color_title_inactive_foreground=
    
    attr_accessor :color_title_inactive_background
    alias_method :attr_color_title_inactive_background, :color_title_inactive_background
    undef_method :color_title_inactive_background
    alias_method :attr_color_title_inactive_background=, :color_title_inactive_background=
    undef_method :color_title_inactive_background=
    
    attr_accessor :color_title_inactive_background_gradient
    alias_method :attr_color_title_inactive_background_gradient, :color_title_inactive_background_gradient
    undef_method :color_title_inactive_background_gradient
    alias_method :attr_color_title_inactive_background_gradient=, :color_title_inactive_background_gradient=
    undef_method :color_title_inactive_background_gradient=
    
    # Popup Menus
    attr_accessor :popups
    alias_method :attr_popups, :popups
    undef_method :popups
    alias_method :attr_popups=, :popups=
    undef_method :popups=
    
    # Click count
    attr_accessor :click_count
    alias_method :attr_click_count, :click_count
    undef_method :click_count
    alias_method :attr_click_count=, :click_count=
    undef_method :click_count=
    
    class_module.module_eval {
      # Entry inner border
      const_set_lazy(:INNER_BORDER) { 2 }
      const_attr_reader  :INNER_BORDER
    }
    
    # Timestamp of the Last Received Events
    attr_accessor :last_event_time
    alias_method :attr_last_event_time, :last_event_time
    undef_method :last_event_time
    alias_method :attr_last_event_time=, :last_event_time=
    undef_method :last_event_time=
    
    attr_accessor :last_user_event_time
    alias_method :attr_last_user_event_time, :last_user_event_time
    undef_method :last_user_event_time
    alias_method :attr_last_user_event_time=, :last_user_event_time=
    undef_method :last_user_event_time=
    
    # Pango layout constructor
    # int
    attr_accessor :pango_layout_new_proc
    alias_method :attr_pango_layout_new_proc, :pango_layout_new_proc
    undef_method :pango_layout_new_proc
    alias_method :attr_pango_layout_new_proc=, :pango_layout_new_proc=
    undef_method :pango_layout_new_proc=
    
    attr_accessor :pango_layout_new_default_proc
    alias_method :attr_pango_layout_new_default_proc, :pango_layout_new_default_proc
    undef_method :pango_layout_new_default_proc
    alias_method :attr_pango_layout_new_default_proc=, :pango_layout_new_default_proc=
    undef_method :pango_layout_new_default_proc=
    
    attr_accessor :pango_layout_new_callback
    alias_method :attr_pango_layout_new_callback, :pango_layout_new_callback
    undef_method :pango_layout_new_callback
    alias_method :attr_pango_layout_new_callback=, :pango_layout_new_callback=
    undef_method :pango_layout_new_callback=
    
    class_module.module_eval {
      # Fixed Subclass
      # int
      
      def fixed_type
        defined?(@@fixed_type) ? @@fixed_type : @@fixed_type= 0
      end
      alias_method :attr_fixed_type, :fixed_type
      
      def fixed_type=(value)
        @@fixed_type = value
      end
      alias_method :attr_fixed_type=, :fixed_type=
      
      # int
      
      def fixed_info_ptr
        defined?(@@fixed_info_ptr) ? @@fixed_info_ptr : @@fixed_info_ptr= 0
      end
      alias_method :attr_fixed_info_ptr, :fixed_info_ptr
      
      def fixed_info_ptr=(value)
        @@fixed_info_ptr = value
      end
      alias_method :attr_fixed_info_ptr=, :fixed_info_ptr=
      
      
      def fixed_class_init_callback
        defined?(@@fixed_class_init_callback) ? @@fixed_class_init_callback : @@fixed_class_init_callback= nil
      end
      alias_method :attr_fixed_class_init_callback, :fixed_class_init_callback
      
      def fixed_class_init_callback=(value)
        @@fixed_class_init_callback = value
      end
      alias_method :attr_fixed_class_init_callback=, :fixed_class_init_callback=
      
      
      def fixed_map_callback
        defined?(@@fixed_map_callback) ? @@fixed_map_callback : @@fixed_map_callback= nil
      end
      alias_method :attr_fixed_map_callback, :fixed_map_callback
      
      def fixed_map_callback=(value)
        @@fixed_map_callback = value
      end
      alias_method :attr_fixed_map_callback=, :fixed_map_callback=
      
      
      def fixed_size_allocate_callback
        defined?(@@fixed_size_allocate_callback) ? @@fixed_size_allocate_callback : @@fixed_size_allocate_callback= nil
      end
      alias_method :attr_fixed_size_allocate_callback, :fixed_size_allocate_callback
      
      def fixed_size_allocate_callback=(value)
        @@fixed_size_allocate_callback = value
      end
      alias_method :attr_fixed_size_allocate_callback=, :fixed_size_allocate_callback=
      
      # int
      
      def fixed_class_init_proc_address
        defined?(@@fixed_class_init_proc_address) ? @@fixed_class_init_proc_address : @@fixed_class_init_proc_address= 0
      end
      alias_method :attr_fixed_class_init_proc_address, :fixed_class_init_proc_address
      
      def fixed_class_init_proc_address=(value)
        @@fixed_class_init_proc_address = value
      end
      alias_method :attr_fixed_class_init_proc_address=, :fixed_class_init_proc_address=
      
      
      def fixed_map_proc_address
        defined?(@@fixed_map_proc_address) ? @@fixed_map_proc_address : @@fixed_map_proc_address= 0
      end
      alias_method :attr_fixed_map_proc_address, :fixed_map_proc_address
      
      def fixed_map_proc_address=(value)
        @@fixed_map_proc_address = value
      end
      alias_method :attr_fixed_map_proc_address=, :fixed_map_proc_address=
      
      
      def fixed_size_allocate_proc_address
        defined?(@@fixed_size_allocate_proc_address) ? @@fixed_size_allocate_proc_address : @@fixed_size_allocate_proc_address= 0
      end
      alias_method :attr_fixed_size_allocate_proc_address, :fixed_size_allocate_proc_address
      
      def fixed_size_allocate_proc_address=(value)
        @@fixed_size_allocate_proc_address = value
      end
      alias_method :attr_fixed_size_allocate_proc_address=, :fixed_size_allocate_proc_address=
      
      
      def old_fixed_size_allocate_proc_address
        defined?(@@old_fixed_size_allocate_proc_address) ? @@old_fixed_size_allocate_proc_address : @@old_fixed_size_allocate_proc_address= 0
      end
      alias_method :attr_old_fixed_size_allocate_proc_address, :old_fixed_size_allocate_proc_address
      
      def old_fixed_size_allocate_proc_address=(value)
        @@old_fixed_size_allocate_proc_address = value
      end
      alias_method :attr_old_fixed_size_allocate_proc_address=, :old_fixed_size_allocate_proc_address=
      
      # Renderer Subclass
      # int
      
      def text_renderer_type
        defined?(@@text_renderer_type) ? @@text_renderer_type : @@text_renderer_type= 0
      end
      alias_method :attr_text_renderer_type, :text_renderer_type
      
      def text_renderer_type=(value)
        @@text_renderer_type = value
      end
      alias_method :attr_text_renderer_type=, :text_renderer_type=
      
      
      def pixbuf_renderer_type
        defined?(@@pixbuf_renderer_type) ? @@pixbuf_renderer_type : @@pixbuf_renderer_type= 0
      end
      alias_method :attr_pixbuf_renderer_type, :pixbuf_renderer_type
      
      def pixbuf_renderer_type=(value)
        @@pixbuf_renderer_type = value
      end
      alias_method :attr_pixbuf_renderer_type=, :pixbuf_renderer_type=
      
      
      def toggle_renderer_type
        defined?(@@toggle_renderer_type) ? @@toggle_renderer_type : @@toggle_renderer_type= 0
      end
      alias_method :attr_toggle_renderer_type, :toggle_renderer_type
      
      def toggle_renderer_type=(value)
        @@toggle_renderer_type = value
      end
      alias_method :attr_toggle_renderer_type=, :toggle_renderer_type=
      
      # int
      
      def text_renderer_info_ptr
        defined?(@@text_renderer_info_ptr) ? @@text_renderer_info_ptr : @@text_renderer_info_ptr= 0
      end
      alias_method :attr_text_renderer_info_ptr, :text_renderer_info_ptr
      
      def text_renderer_info_ptr=(value)
        @@text_renderer_info_ptr = value
      end
      alias_method :attr_text_renderer_info_ptr=, :text_renderer_info_ptr=
      
      
      def pixbuf_renderer_info_ptr
        defined?(@@pixbuf_renderer_info_ptr) ? @@pixbuf_renderer_info_ptr : @@pixbuf_renderer_info_ptr= 0
      end
      alias_method :attr_pixbuf_renderer_info_ptr, :pixbuf_renderer_info_ptr
      
      def pixbuf_renderer_info_ptr=(value)
        @@pixbuf_renderer_info_ptr = value
      end
      alias_method :attr_pixbuf_renderer_info_ptr=, :pixbuf_renderer_info_ptr=
      
      
      def toggle_renderer_info_ptr
        defined?(@@toggle_renderer_info_ptr) ? @@toggle_renderer_info_ptr : @@toggle_renderer_info_ptr= 0
      end
      alias_method :attr_toggle_renderer_info_ptr, :toggle_renderer_info_ptr
      
      def toggle_renderer_info_ptr=(value)
        @@toggle_renderer_info_ptr = value
      end
      alias_method :attr_toggle_renderer_info_ptr=, :toggle_renderer_info_ptr=
      
      
      def renderer_class_init_callback
        defined?(@@renderer_class_init_callback) ? @@renderer_class_init_callback : @@renderer_class_init_callback= nil
      end
      alias_method :attr_renderer_class_init_callback, :renderer_class_init_callback
      
      def renderer_class_init_callback=(value)
        @@renderer_class_init_callback = value
      end
      alias_method :attr_renderer_class_init_callback=, :renderer_class_init_callback=
      
      
      def renderer_render_callback
        defined?(@@renderer_render_callback) ? @@renderer_render_callback : @@renderer_render_callback= nil
      end
      alias_method :attr_renderer_render_callback, :renderer_render_callback
      
      def renderer_render_callback=(value)
        @@renderer_render_callback = value
      end
      alias_method :attr_renderer_render_callback=, :renderer_render_callback=
      
      
      def renderer_get_size_callback
        defined?(@@renderer_get_size_callback) ? @@renderer_get_size_callback : @@renderer_get_size_callback= nil
      end
      alias_method :attr_renderer_get_size_callback, :renderer_get_size_callback
      
      def renderer_get_size_callback=(value)
        @@renderer_get_size_callback = value
      end
      alias_method :attr_renderer_get_size_callback=, :renderer_get_size_callback=
      
      # int
      
      def renderer_class_init_proc_address
        defined?(@@renderer_class_init_proc_address) ? @@renderer_class_init_proc_address : @@renderer_class_init_proc_address= 0
      end
      alias_method :attr_renderer_class_init_proc_address, :renderer_class_init_proc_address
      
      def renderer_class_init_proc_address=(value)
        @@renderer_class_init_proc_address = value
      end
      alias_method :attr_renderer_class_init_proc_address=, :renderer_class_init_proc_address=
      
      
      def renderer_render_proc_address
        defined?(@@renderer_render_proc_address) ? @@renderer_render_proc_address : @@renderer_render_proc_address= 0
      end
      alias_method :attr_renderer_render_proc_address, :renderer_render_proc_address
      
      def renderer_render_proc_address=(value)
        @@renderer_render_proc_address = value
      end
      alias_method :attr_renderer_render_proc_address=, :renderer_render_proc_address=
      
      
      def renderer_get_size_proc_address
        defined?(@@renderer_get_size_proc_address) ? @@renderer_get_size_proc_address : @@renderer_get_size_proc_address= 0
      end
      alias_method :attr_renderer_get_size_proc_address, :renderer_get_size_proc_address
      
      def renderer_get_size_proc_address=(value)
        @@renderer_get_size_proc_address = value
      end
      alias_method :attr_renderer_get_size_proc_address=, :renderer_get_size_proc_address=
      
      # Key Mappings
      # Keyboard and Mouse Masks
      # {OS.GDK_????,		SWT.COMMAND},
      # {OS.GDK_????,		SWT.COMMAND},
      # Non-Numeric Keypad Keys
      # Virtual and Ascii Keys
      # Functions Keys
      # Numeric Keypad Keys
      # Other keys
      const_set_lazy(:KeyTable) { Array.typed(Array.typed(::Java::Int)).new([Array.typed(::Java::Int).new([OS::GDK_Alt_L, SWT::ALT]), Array.typed(::Java::Int).new([OS::GDK_Alt_R, SWT::ALT]), Array.typed(::Java::Int).new([OS::GDK_Meta_L, SWT::ALT]), Array.typed(::Java::Int).new([OS::GDK_Meta_R, SWT::ALT]), Array.typed(::Java::Int).new([OS::GDK_Shift_L, SWT::SHIFT]), Array.typed(::Java::Int).new([OS::GDK_Shift_R, SWT::SHIFT]), Array.typed(::Java::Int).new([OS::GDK_Control_L, SWT::CONTROL]), Array.typed(::Java::Int).new([OS::GDK_Control_R, SWT::CONTROL]), Array.typed(::Java::Int).new([OS::GDK_Up, SWT::ARROW_UP]), Array.typed(::Java::Int).new([OS::GDK_KP_Up, SWT::ARROW_UP]), Array.typed(::Java::Int).new([OS::GDK_Down, SWT::ARROW_DOWN]), Array.typed(::Java::Int).new([OS::GDK_KP_Down, SWT::ARROW_DOWN]), Array.typed(::Java::Int).new([OS::GDK_Left, SWT::ARROW_LEFT]), Array.typed(::Java::Int).new([OS::GDK_KP_Left, SWT::ARROW_LEFT]), Array.typed(::Java::Int).new([OS::GDK_Right, SWT::ARROW_RIGHT]), Array.typed(::Java::Int).new([OS::GDK_KP_Right, SWT::ARROW_RIGHT]), Array.typed(::Java::Int).new([OS::GDK_Page_Up, SWT::PAGE_UP]), Array.typed(::Java::Int).new([OS::GDK_KP_Page_Up, SWT::PAGE_UP]), Array.typed(::Java::Int).new([OS::GDK_Page_Down, SWT::PAGE_DOWN]), Array.typed(::Java::Int).new([OS::GDK_KP_Page_Down, SWT::PAGE_DOWN]), Array.typed(::Java::Int).new([OS::GDK_Home, SWT::HOME]), Array.typed(::Java::Int).new([OS::GDK_KP_Home, SWT::HOME]), Array.typed(::Java::Int).new([OS::GDK_End, SWT::END_]), Array.typed(::Java::Int).new([OS::GDK_KP_End, SWT::END_]), Array.typed(::Java::Int).new([OS::GDK_Insert, SWT::INSERT]), Array.typed(::Java::Int).new([OS::GDK_KP_Insert, SWT::INSERT]), Array.typed(::Java::Int).new([OS::GDK_BackSpace, SWT::BS]), Array.typed(::Java::Int).new([OS::GDK_Return, SWT::CR]), Array.typed(::Java::Int).new([OS::GDK_Delete, SWT::DEL]), Array.typed(::Java::Int).new([OS::GDK_KP_Delete, SWT::DEL]), Array.typed(::Java::Int).new([OS::GDK_Escape, SWT::ESC]), Array.typed(::Java::Int).new([OS::GDK_Linefeed, SWT::LF]), Array.typed(::Java::Int).new([OS::GDK_Tab, SWT::TAB]), Array.typed(::Java::Int).new([OS::GDK_ISO_Left_Tab, SWT::TAB]), Array.typed(::Java::Int).new([OS::GDK_F1, SWT::F1]), Array.typed(::Java::Int).new([OS::GDK_F2, SWT::F2]), Array.typed(::Java::Int).new([OS::GDK_F3, SWT::F3]), Array.typed(::Java::Int).new([OS::GDK_F4, SWT::F4]), Array.typed(::Java::Int).new([OS::GDK_F5, SWT::F5]), Array.typed(::Java::Int).new([OS::GDK_F6, SWT::F6]), Array.typed(::Java::Int).new([OS::GDK_F7, SWT::F7]), Array.typed(::Java::Int).new([OS::GDK_F8, SWT::F8]), Array.typed(::Java::Int).new([OS::GDK_F9, SWT::F9]), Array.typed(::Java::Int).new([OS::GDK_F10, SWT::F10]), Array.typed(::Java::Int).new([OS::GDK_F11, SWT::F11]), Array.typed(::Java::Int).new([OS::GDK_F12, SWT::F12]), Array.typed(::Java::Int).new([OS::GDK_F13, SWT::F13]), Array.typed(::Java::Int).new([OS::GDK_F14, SWT::F14]), Array.typed(::Java::Int).new([OS::GDK_F15, SWT::F15]), Array.typed(::Java::Int).new([OS::GDK_KP_Multiply, SWT::KEYPAD_MULTIPLY]), Array.typed(::Java::Int).new([OS::GDK_KP_Add, SWT::KEYPAD_ADD]), Array.typed(::Java::Int).new([OS::GDK_KP_Enter, SWT::KEYPAD_CR]), Array.typed(::Java::Int).new([OS::GDK_KP_Subtract, SWT::KEYPAD_SUBTRACT]), Array.typed(::Java::Int).new([OS::GDK_KP_Decimal, SWT::KEYPAD_DECIMAL]), Array.typed(::Java::Int).new([OS::GDK_KP_Divide, SWT::KEYPAD_DIVIDE]), Array.typed(::Java::Int).new([OS::GDK_KP_0, SWT::KEYPAD_0]), Array.typed(::Java::Int).new([OS::GDK_KP_1, SWT::KEYPAD_1]), Array.typed(::Java::Int).new([OS::GDK_KP_2, SWT::KEYPAD_2]), Array.typed(::Java::Int).new([OS::GDK_KP_3, SWT::KEYPAD_3]), Array.typed(::Java::Int).new([OS::GDK_KP_4, SWT::KEYPAD_4]), Array.typed(::Java::Int).new([OS::GDK_KP_5, SWT::KEYPAD_5]), Array.typed(::Java::Int).new([OS::GDK_KP_6, SWT::KEYPAD_6]), Array.typed(::Java::Int).new([OS::GDK_KP_7, SWT::KEYPAD_7]), Array.typed(::Java::Int).new([OS::GDK_KP_8, SWT::KEYPAD_8]), Array.typed(::Java::Int).new([OS::GDK_KP_9, SWT::KEYPAD_9]), Array.typed(::Java::Int).new([OS::GDK_KP_Equal, SWT::KEYPAD_EQUAL]), Array.typed(::Java::Int).new([OS::GDK_Caps_Lock, SWT::CAPS_LOCK]), Array.typed(::Java::Int).new([OS::GDK_Num_Lock, SWT::NUM_LOCK]), Array.typed(::Java::Int).new([OS::GDK_Scroll_Lock, SWT::SCROLL_LOCK]), Array.typed(::Java::Int).new([OS::GDK_Pause, SWT::PAUSE]), Array.typed(::Java::Int).new([OS::GDK_Break, SWT::BREAK]), Array.typed(::Java::Int).new([OS::GDK_Print, SWT::PRINT_SCREEN]), Array.typed(::Java::Int).new([OS::GDK_Help, SWT::HELP]), ]) }
      const_attr_reader  :KeyTable
      
      # Multiple Displays.
      
      def default
        defined?(@@default) ? @@default : @@default= nil
      end
      alias_method :attr_default, :default
      
      def default=(value)
        @@default = value
      end
      alias_method :attr_default=, :default=
      
      
      def displays
        defined?(@@displays) ? @@displays : @@displays= Array.typed(Display).new(4) { nil }
      end
      alias_method :attr_displays, :displays
      
      def displays=(value)
        @@displays = value
      end
      alias_method :attr_displays=, :displays=
      
      # Package name
      const_set_lazy(:PACKAGE_PREFIX) { "org.eclipse.swt.widgets." }
      const_attr_reader  :PACKAGE_PREFIX
      
      # $NON-NLS-1$
      # This code is intentionally commented.
      # ".class" can not be used on CLDC.
      # 
      # static {
      # String name = Display.class.getName ();
      # int index = name.lastIndexOf ('.');
      # PACKAGE_NAME = name.substring (0, index + 1);
      # }
      # GTK Version
      const_set_lazy(:MAJOR) { 2 }
      const_attr_reader  :MAJOR
      
      const_set_lazy(:MINOR) { 2 }
      const_attr_reader  :MINOR
      
      const_set_lazy(:MICRO) { 0 }
      const_attr_reader  :MICRO
    }
    
    # Display Data
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    attr_accessor :keys
    alias_method :attr_keys, :keys
    undef_method :keys
    alias_method :attr_keys=, :keys=
    undef_method :keys=
    
    attr_accessor :values
    alias_method :attr_values, :values
    undef_method :values
    alias_method :attr_values=, :values=
    undef_method :values=
    
    # Initial Guesses for Shell Trimmings.
    attr_accessor :border_trim_width
    alias_method :attr_border_trim_width, :border_trim_width
    undef_method :border_trim_width
    alias_method :attr_border_trim_width=, :border_trim_width=
    undef_method :border_trim_width=
    
    attr_accessor :border_trim_height
    alias_method :attr_border_trim_height, :border_trim_height
    undef_method :border_trim_height
    alias_method :attr_border_trim_height=, :border_trim_height=
    undef_method :border_trim_height=
    
    attr_accessor :resize_trim_width
    alias_method :attr_resize_trim_width, :resize_trim_width
    undef_method :resize_trim_width
    alias_method :attr_resize_trim_width=, :resize_trim_width=
    undef_method :resize_trim_width=
    
    attr_accessor :resize_trim_height
    alias_method :attr_resize_trim_height, :resize_trim_height
    undef_method :resize_trim_height
    alias_method :attr_resize_trim_height=, :resize_trim_height=
    undef_method :resize_trim_height=
    
    attr_accessor :title_border_trim_width
    alias_method :attr_title_border_trim_width, :title_border_trim_width
    undef_method :title_border_trim_width
    alias_method :attr_title_border_trim_width=, :title_border_trim_width=
    undef_method :title_border_trim_width=
    
    attr_accessor :title_border_trim_height
    alias_method :attr_title_border_trim_height, :title_border_trim_height
    undef_method :title_border_trim_height
    alias_method :attr_title_border_trim_height=, :title_border_trim_height=
    undef_method :title_border_trim_height=
    
    attr_accessor :title_resize_trim_width
    alias_method :attr_title_resize_trim_width, :title_resize_trim_width
    undef_method :title_resize_trim_width
    alias_method :attr_title_resize_trim_width=, :title_resize_trim_width=
    undef_method :title_resize_trim_width=
    
    attr_accessor :title_resize_trim_height
    alias_method :attr_title_resize_trim_height, :title_resize_trim_height
    undef_method :title_resize_trim_height
    alias_method :attr_title_resize_trim_height=, :title_resize_trim_height=
    undef_method :title_resize_trim_height=
    
    attr_accessor :title_trim_width
    alias_method :attr_title_trim_width, :title_trim_width
    undef_method :title_trim_width
    alias_method :attr_title_trim_width=, :title_trim_width=
    undef_method :title_trim_width=
    
    attr_accessor :title_trim_height
    alias_method :attr_title_trim_height, :title_trim_height
    undef_method :title_trim_height
    alias_method :attr_title_trim_height=, :title_trim_height=
    undef_method :title_trim_height=
    
    attr_accessor :ignore_trim
    alias_method :attr_ignore_trim, :ignore_trim
    undef_method :ignore_trim
    alias_method :attr_ignore_trim=, :ignore_trim=
    undef_method :ignore_trim=
    
    # Window Manager
    attr_accessor :window_manager
    alias_method :attr_window_manager, :window_manager
    undef_method :window_manager
    alias_method :attr_window_manager=, :window_manager=
    undef_method :window_manager=
    
    class_module.module_eval {
      # TEMPORARY CODE.  Install the runnable that
      # gets the current display. This code will
      # be removed in the future.
      when_class_loaded do
        self.attr_device_finder = Class.new(Runnable.class == Class ? Runnable : Object) do
          extend LocalClass
          include_class_members Display
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            device = get_current
            if ((device).nil?)
              device = get_default
            end
            set_device(device)
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
      end
      
      typesig { [Device] }
      # TEMPORARY CODE.
      def set_device(device)
        self.attr_current_device = device
      end
    }
    
    typesig { [] }
    # Constructs a new instance of this class.
    # <p>
    # Note: The resulting display is marked as the <em>current</em>
    # display. If this is the first display which has been
    # constructed since the application started, it is also
    # marked as the <em>default</em> display.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if called from a thread that already created an existing display</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see #getCurrent
    # @see #getDefault
    # @see Widget#checkSubclass
    # @see Shell
    def initialize
      initialize__display(nil)
    end
    
    typesig { [DeviceData] }
    # Constructs a new instance of this class using the parameter.
    # 
    # @param data the device data
    def initialize(data)
      @gdk_event_count = 0
      @gdk_events = nil
      @gdk_event_widgets = nil
      @dispatch_events = nil
      @event_queue = nil
      @fds = 0
      @allocated_nfds = 0
      @wake = false
      @max_priority = nil
      @timeout = nil
      @event_callback = nil
      @filter_callback = nil
      @event_proc = 0
      @filter_proc = 0
      @window_proc2 = 0
      @window_proc3 = 0
      @window_proc4 = 0
      @window_proc5 = 0
      @window_callback2 = nil
      @window_callback3 = nil
      @window_callback4 = nil
      @window_callback5 = nil
      @event_table = nil
      @filter_table = nil
      @closures = nil
      @signal_ids = nil
      @shell_map_proc_closure = 0
      @index_table = nil
      @free_slot = 0
      @last_handle = 0
      @last_widget = nil
      @widget_table = nil
      @modal_shells = nil
      @modal_dialog = nil
      @focus_event = 0
      @focus_control = nil
      @active_shell = nil
      @active_pending = false
      @ignore_activate = false
      @ignore_focus = false
      @im_control = nil
      @preedit_window = 0
      @preedit_label = 0
      @synchronizer = nil
      @thread = nil
      @dispose_list = nil
      @tray = nil
      @timer_ids = nil
      @timer_list = nil
      @timer_callback = nil
      @timer_proc = 0
      @window_timer_callback = nil
      @window_timer_proc = 0
      @current_caret = nil
      @caret_callback = nil
      @caret_id = 0
      @caret_proc = 0
      @mnemonic_control = nil
      @mouse_hover_id = 0
      @mouse_hover_handle = 0
      @mouse_hover_proc = 0
      @mouse_hover_callback = nil
      @menu_position_proc = 0
      @menu_position_callback = nil
      @size_allocate_proc = 0
      @size_allocate_callback = nil
      @size_request_proc = 0
      @size_request_callback = nil
      @shell_map_proc = 0
      @shell_map_callback = nil
      @idle_proc = 0
      @idle_handle = 0
      @idle_callback = nil
      @idle_lock = nil
      @idle_needed = false
      @tree_selection = nil
      @tree_selection_length = 0
      @tree_selection_proc = 0
      @tree_selection_callback = nil
      @cell_data_proc = 0
      @cell_data_callback = nil
      @set_direction_proc = 0
      @set_direction_callback = nil
      @emission_proc = 0
      @emission_proc_callback = nil
      @all_children_proc = 0
      @all_children = 0
      @all_children_callback = nil
      @style_set_proc = 0
      @style_set_callback = nil
      @shell_handle = 0
      @settings_changed = false
      @run_settings = false
      @entry_select_on_focus = false
      @current_control = nil
      @check_if_event_proc = 0
      @check_if_event_callback = nil
      @flush_window = 0
      @flush_all = false
      @flush_rect = nil
      @expose_event = nil
      @visibility_event = nil
      @flush_data = nil
      @system_font = nil
      @error_image = nil
      @info_image = nil
      @question_image = nil
      @warning_image = nil
      @cursors = nil
      @resources = nil
      @color_widget_dark_shadow = nil
      @color_widget_normal_shadow = nil
      @color_widget_light_shadow = nil
      @color_widget_highlight_shadow = nil
      @color_widget_background = nil
      @color_widget_foreground = nil
      @color_widget_border = nil
      @color_list_foreground = nil
      @color_list_background = nil
      @color_list_selection = nil
      @color_list_selection_text = nil
      @color_info_background = nil
      @color_info_foreground = nil
      @color_title_foreground = nil
      @color_title_background = nil
      @color_title_background_gradient = nil
      @color_title_inactive_foreground = nil
      @color_title_inactive_background = nil
      @color_title_inactive_background_gradient = nil
      @popups = nil
      @click_count = 0
      @last_event_time = 0
      @last_user_event_time = 0
      @pango_layout_new_proc = 0
      @pango_layout_new_default_proc = 0
      @pango_layout_new_callback = nil
      @data = nil
      @keys = nil
      @values = nil
      @border_trim_width = 0
      @border_trim_height = 0
      @resize_trim_width = 0
      @resize_trim_height = 0
      @title_border_trim_width = 0
      @title_border_trim_height = 0
      @title_resize_trim_width = 0
      @title_resize_trim_height = 0
      @title_trim_width = 0
      @title_trim_height = 0
      @ignore_trim = false
      @window_manager = nil
      super(data)
      @max_priority = Array.typed(::Java::Int).new(1) { 0 }
      @timeout = Array.typed(::Java::Int).new(1) { 0 }
      @synchronizer = Synchronizer.new(self)
      @idle_lock = Object.new
      @flush_rect = GdkRectangle.new
      @expose_event = XExposeEvent.new
      @visibility_event = XVisibilityEvent.new
      # int
      @flush_data = Array.typed(::Java::Long).new(1) { 0 }
      @cursors = Array.typed(Cursor).new(SWT::CURSOR_HAND + 1) { nil }
      @click_count = 1
      @border_trim_width = 4
      @border_trim_height = 4
      @resize_trim_width = 6
      @resize_trim_height = 6
      @title_border_trim_width = 5
      @title_border_trim_height = 28
      @title_resize_trim_width = 6
      @title_resize_trim_height = 29
      @title_trim_width = 0
      @title_trim_height = 23
    end
    
    typesig { [::Java::Int, Listener] }
    # Adds the listener to the collection of listeners who will
    # be notified when an event of the given type occurs anywhere
    # in a widget. The event type is one of the event constants
    # defined in class <code>SWT</code>. When the event does occur,
    # the listener is notified by sending it the <code>handleEvent()</code>
    # message.
    # <p>
    # Setting the type of an event to <code>SWT.None</code> from
    # within the <code>handleEvent()</code> method can be used to
    # change the event type and stop subsequent Java listeners
    # from running. Because event filters run before other listeners,
    # event filters can both block other listeners and set arbitrary
    # fields within an event. For this reason, event filters are both
    # powerful and dangerous. They should generally be avoided for
    # performance, debugging and code maintenance reasons.
    # </p>
    # 
    # @param eventType the type of event to listen for
    # @param listener the listener which should be notified when the event occurs
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Listener
    # @see SWT
    # @see #removeFilter
    # @see #removeListener
    # 
    # @since 3.0
    def add_filter(event_type, listener)
      check_device
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@filter_table).nil?)
        @filter_table = EventTable.new
      end
      @filter_table.hook(event_type, listener)
    end
    
    typesig { [::Java::Long] }
    # int
    def add_gdk_event(event)
      if ((@gdk_events).nil?)
        length = GROW_SIZE
        # int
        @gdk_events = Array.typed(::Java::Long).new(length) { 0 }
        @gdk_event_widgets = Array.typed(Widget).new(length) { nil }
        @gdk_event_count = 0
      end
      if ((@gdk_event_count).equal?(@gdk_events.attr_length))
        length = @gdk_event_count + GROW_SIZE
        # int
        # int
        new_events = Array.typed(::Java::Long).new(length) { 0 }
        System.arraycopy(@gdk_events, 0, new_events, 0, @gdk_event_count)
        @gdk_events = new_events
        new_widgets = Array.typed(Widget).new(length) { nil }
        System.arraycopy(@gdk_event_widgets, 0, new_widgets, 0, @gdk_event_count)
        @gdk_event_widgets = new_widgets
      end
      widget = nil
      # int
      handle = OS.gtk_get_event_widget(event)
      if (!(handle).equal?(0))
        begin
          widget = get_widget(handle)
        end while ((widget).nil? && !((handle = OS.gtk_widget_get_parent(handle))).equal?(0))
      end
      @gdk_events[@gdk_event_count] = event
      @gdk_event_widgets[@gdk_event_count] = widget
      @gdk_event_count += 1
    end
    
    typesig { [] }
    def add_idle_proc
      synchronized((@idle_lock)) do
        @idle_needed = true
        if ((@idle_handle).equal?(0))
          @idle_handle = OS.g_idle_add(@idle_proc, 0)
        end
      end
    end
    
    typesig { [::Java::Int, Listener] }
    # Adds the listener to the collection of listeners who will
    # be notified when an event of the given type occurs. The event
    # type is one of the event constants defined in class <code>SWT</code>.
    # When the event does occur in the display, the listener is notified by
    # sending it the <code>handleEvent()</code> message.
    # 
    # @param eventType the type of event to listen for
    # @param listener the listener which should be notified when the event occurs
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Listener
    # @see SWT
    # @see #removeListener
    # 
    # @since 2.0
    def add_listener(event_type, listener)
      check_device
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@event_table).nil?)
        @event_table = EventTable.new
      end
      @event_table.hook(event_type, listener)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def all_children_proc(widget, recurse)
      @all_children = OS.g_list_append(@all_children, widget)
      if (!(recurse).equal?(0) && OS._gtk_is_container(widget))
        OS.gtk_container_forall(widget, @all_children_proc, recurse)
      end
      return 0
    end
    
    typesig { [::Java::Long] }
    # int
    def add_mouse_hover_timeout(handle)
      if (!(@mouse_hover_id).equal?(0))
        OS.gtk_timeout_remove(@mouse_hover_id)
      end
      @mouse_hover_id = OS.gtk_timeout_add(400, @mouse_hover_proc, handle)
      @mouse_hover_handle = handle
    end
    
    typesig { [Menu] }
    def add_popup(menu)
      if ((@popups).nil?)
        @popups = Array.typed(Menu).new(4) { nil }
      end
      length = @popups.attr_length
      i = 0
      while i < length
        if ((@popups[i]).equal?(menu))
          return
        end
        i += 1
      end
      index = 0
      while (index < length)
        if ((@popups[index]).nil?)
          break
        end
        index += 1
      end
      if ((index).equal?(length))
        new_popups = Array.typed(Menu).new(length + 4) { nil }
        System.arraycopy(@popups, 0, new_popups, 0, length)
        @popups = new_popups
      end
      @popups[index] = menu
    end
    
    typesig { [::Java::Long, Widget] }
    # int
    def add_widget(handle, widget)
      if ((handle).equal?(0))
        return
      end
      if ((@free_slot).equal?(-1))
        length = (@free_slot = @index_table.attr_length) + GROW_SIZE
        new_index_table = Array.typed(::Java::Int).new(length) { 0 }
        new_widget_table = Array.typed(Widget).new(length) { nil }
        System.arraycopy(@index_table, 0, new_index_table, 0, @free_slot)
        System.arraycopy(@widget_table, 0, new_widget_table, 0, @free_slot)
        i = @free_slot
        while i < length - 1
          new_index_table[i] = i + 1
          i += 1
        end
        new_index_table[length - 1] = -1
        @index_table = new_index_table
        @widget_table = new_widget_table
      end
      index = @free_slot + 1
      OS.g_object_set_qdata(handle, SWT_OBJECT_INDEX, index)
      old_slot = @free_slot
      @free_slot = @index_table[old_slot]
      @index_table[old_slot] = -2
      @widget_table[old_slot] = widget
    end
    
    typesig { [Runnable] }
    # Causes the <code>run()</code> method of the runnable to
    # be invoked by the user-interface thread at the next
    # reasonable opportunity. The caller of this method continues
    # to run in parallel, and is not notified when the
    # runnable has completed.  Specifying <code>null</code> as the
    # runnable simply wakes the user-interface thread when run.
    # <p>
    # Note that at the time the runnable is invoked, widgets
    # that have the receiver as their display may have been
    # disposed. Therefore, it is necessary to check for this
    # case inside the runnable before accessing the widget.
    # </p>
    # 
    # @param runnable code to run on the user-interface thread or <code>null</code>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #syncExec
    def async_exec(runnable)
      synchronized((Device)) do
        if (is_disposed)
          error(SWT::ERROR_DEVICE_DISPOSED)
        end
        synchronized((@idle_lock)) do
          if (@idle_needed && (@idle_handle).equal?(0))
            # NOTE: calling unlocked function in OS
            @idle_handle = OS.__g_idle_add(@idle_proc, 0)
          end
        end
        @synchronizer.async_exec(runnable)
      end
    end
    
    typesig { [] }
    # Causes the system hardware to emit a short sound
    # (if it supports this capability).
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def beep
      if (!is_valid_thread)
        error(SWT::ERROR_THREAD_INVALID_ACCESS)
      end
      OS.gdk_beep
      if (!OS._gdk_windowing_x11)
        OS.gdk_flush
      else
        # int
        x_display = OS._gdk_display
        OS._xflush(x_display)
      end
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    # int
    # int
    def cell_data_proc(tree_column, cell, tree_model, iter, data)
      widget = get_widget(data)
      if ((widget).nil?)
        return 0
      end
      return widget.cell_data_proc(tree_column, cell, tree_model, iter, data)
    end
    
    typesig { [] }
    def check_device
      if ((@thread).nil?)
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if (!(@thread).equal?(JavaThread.current_thread))
        error(SWT::ERROR_THREAD_INVALID_ACCESS)
      end
      if (is_disposed)
        error(SWT::ERROR_DEVICE_DISPOSED)
      end
    end
    
    class_module.module_eval {
      typesig { [JavaThread, ::Java::Boolean] }
      def check_display(thread, multiple)
        synchronized((Device)) do
          i = 0
          while i < self.attr_displays.attr_length
            if (!(self.attr_displays[i]).nil?)
              if (!multiple)
                SWT.error(SWT::ERROR_NOT_IMPLEMENTED, nil, " [multiple displays]")
              end # $NON-NLS-1$
              if ((self.attr_displays[i].attr_thread).equal?(thread))
                SWT.error(SWT::ERROR_THREAD_INVALID_ACCESS)
              end
            end
            i += 1
          end
        end
      end
    }
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    def check_if_event_proc(display, x_event, user_data)
      type = OS._x_event_type(x_event)
      case (type)
      when OS::VisibilityNotify, OS::Expose, OS::GraphicsExpose
      else
        return 0
      end
      # int
      window = OS.gdk_window_lookup(OS._x_event_window(x_event))
      if ((window).equal?(0))
        return 0
      end
      if (!(@flush_window).equal?(0))
        if (@flush_all)
          # int
          temp_window = window
          begin
            if ((temp_window).equal?(@flush_window))
              break
            end
          end while (!((temp_window = OS.gdk_window_get_parent(temp_window))).equal?(0))
          if (!(temp_window).equal?(@flush_window))
            return 0
          end
        else
          if (!(window).equal?(@flush_window))
            return 0
          end
        end
      end
      OS.memmove___org_eclipse_swt_widgets_display_1(@expose_event, x_event, XExposeEvent.attr_sizeof)
      case (type)
      when OS::Expose, OS::GraphicsExpose
        @flush_rect.attr_x = @expose_event.attr_x
        @flush_rect.attr_y = @expose_event.attr_y
        @flush_rect.attr_width = @expose_event.attr_width
        @flush_rect.attr_height = @expose_event.attr_height
        OS.gdk_window_invalidate_rect(window, @flush_rect, true)
        @expose_event.attr_type = -1
        OS.memmove___org_eclipse_swt_widgets_display_3(x_event, @expose_event, XExposeEvent.attr_sizeof)
      when OS::VisibilityNotify
        OS.memmove___org_eclipse_swt_widgets_display_5(@visibility_event, x_event, XVisibilityEvent.attr_sizeof)
        OS.gdk_window_get_user_data(window, @flush_data)
        # int
        handle = @flush_data[0]
        widget = !(handle).equal?(0) ? get_widget(handle) : nil
        if (!(widget).nil? && widget.is_a?(Control))
          control = widget
          if ((window).equal?(control.paint_window))
            if ((@visibility_event.attr_state).equal?(OS::VisibilityFullyObscured))
              control.attr_state |= Widget::OBSCURED
            else
              control.attr_state &= ~Widget::OBSCURED
            end
          end
        end
      end
      return 0
    end
    
    typesig { [] }
    # Checks that this class can be subclassed.
    # <p>
    # IMPORTANT: See the comment in <code>Widget.checkSubclass()</code>.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see Widget#checkSubclass
    def check_subclass
      if (!is_valid_class(get_class))
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [Shell] }
    def clear_modal(shell)
      if ((@modal_shells).nil?)
        return
      end
      index = 0
      length = @modal_shells.attr_length
      while (index < length)
        if ((@modal_shells[index]).equal?(shell))
          break
        end
        if ((@modal_shells[index]).nil?)
          return
        end
        index += 1
      end
      if ((index).equal?(length))
        return
      end
      System.arraycopy(@modal_shells, index + 1, @modal_shells, index, (length -= 1) - index)
      @modal_shells[length] = nil
      if ((index).equal?(0) && (@modal_shells[0]).nil?)
        @modal_shells = nil
      end
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shells[i].update_modal
        i += 1
      end
    end
    
    typesig { [] }
    # Requests that the connection between SWT and the underlying
    # operating system be closed.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Device#dispose
    # 
    # @since 2.0
    def close
      check_device
      event = Event.new
      send_event___org_eclipse_swt_widgets_display_7(SWT::Close, event)
      if (event.attr_doit)
        dispose
      end
    end
    
    typesig { [DeviceData] }
    # Creates the device in the operating system.  If the device
    # does not have a handle, this method may do nothing depending
    # on the device.
    # <p>
    # This method is called before <code>init</code>.
    # </p>
    # 
    # @param data the DeviceData which describes the receiver
    # 
    # @see #init
    def create(data)
      check_subclass
      check_display(@thread = JavaThread.current_thread, false)
      create_display(data)
      register(self)
      if ((self.attr_default).nil?)
        self.attr_default = self
      end
    end
    
    typesig { [DeviceData] }
    def create_display(data)
      # Required for g_main_context_wakeup
      if (!OS.g_thread_supported)
        OS.g_thread_init(0)
      end
      OS.gtk_set_locale
      # int
      if (!OS.gtk_init_check(Array.typed(::Java::Long).new([0]), nil))
        SWT.error(SWT::ERROR_NO_HANDLES, nil, " [gtk_init_check() failed]") # $NON-NLS-1$
      end
      if (OS._gdk_windowing_x11)
        self.attr_x_display = OS._gdk_display
      end
      # int
      ptr = OS.gtk_check_version(MAJOR, MINOR, MICRO)
      if (!(ptr).equal?(0))
        length = OS.strlen(ptr)
        buffer = Array.typed(::Java::Byte).new(length) { 0 }
        OS.memmove___org_eclipse_swt_widgets_display_9(buffer, ptr, length)
        System.out.println("***WARNING: " + RJava.cast_to_string(String.new(Converter.mbcs_to_wcs(nil, buffer)))) # $NON-NLS-1$
        System.out.println("***WARNING: SWT requires GTK " + RJava.cast_to_string(MAJOR) + "." + RJava.cast_to_string(MINOR) + "." + RJava.cast_to_string(MICRO)) # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
        major = OS.gtk_major_version
        minor = OS.gtk_minor_version
        micro = OS.gtk_micro_version
        System.out.println("***WARNING: Detected: " + RJava.cast_to_string(major) + "." + RJava.cast_to_string(minor) + "." + RJava.cast_to_string(micro)) # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
      end
      if ((self.attr_fixed_type).equal?(0))
        type_name = Converter.wcs_to_mbcs(nil, "SwtFixed", true) # $NON-NLS-1$
        self.attr_fixed_class_init_callback = Callback.new(get_class, "fixedClassInitProc", 2) # $NON-NLS-1$
        self.attr_fixed_class_init_proc_address = self.attr_fixed_class_init_callback.get_address
        if ((self.attr_fixed_class_init_proc_address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_fixed_map_callback = Callback.new(get_class, "fixedMapProc", 1) # $NON-NLS-1$
        self.attr_fixed_map_proc_address = self.attr_fixed_map_callback.get_address
        if ((self.attr_fixed_map_proc_address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_fixed_size_allocate_callback = Callback.new(get_class, "fixedSizeAllocateProc", 2) # $NON-NLS-1$
        self.attr_fixed_size_allocate_proc_address = self.attr_fixed_size_allocate_callback.get_address
        if ((self.attr_fixed_size_allocate_proc_address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        fixed_info = GTypeInfo.new
        fixed_info.attr_class_size = RJava.cast_to_short(OS._gtk_fixed_class_sizeof)
        fixed_info.attr_class_init = self.attr_fixed_class_init_proc_address
        fixed_info.attr_instance_size = RJava.cast_to_short(OS._gtk_fixed_sizeof)
        self.attr_fixed_info_ptr = OS.g_malloc(GTypeInfo.attr_sizeof)
        OS.memmove___org_eclipse_swt_widgets_display_11(self.attr_fixed_info_ptr, fixed_info, GTypeInfo.attr_sizeof)
        self.attr_fixed_type = OS.g_type_register_static(OS._gtk_type_fixed, type_name, self.attr_fixed_info_ptr, 0)
      end
      if ((self.attr_renderer_class_init_proc_address).equal?(0))
        self.attr_renderer_class_init_callback = Callback.new(get_class, "rendererClassInitProc", 2) # $NON-NLS-1$
        self.attr_renderer_class_init_proc_address = self.attr_renderer_class_init_callback.get_address
        if ((self.attr_renderer_class_init_proc_address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
      end
      if ((self.attr_renderer_render_proc_address).equal?(0))
        self.attr_renderer_render_callback = Callback.new(get_class, "rendererRenderProc", 7) # $NON-NLS-1$
        self.attr_renderer_render_proc_address = self.attr_renderer_render_callback.get_address
        if ((self.attr_renderer_render_proc_address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
      end
      if ((self.attr_renderer_get_size_proc_address).equal?(0))
        self.attr_renderer_get_size_callback = Callback.new(get_class, "rendererGetSizeProc", 7) # $NON-NLS-1$
        self.attr_renderer_get_size_proc_address = self.attr_renderer_get_size_callback.get_address
        if ((self.attr_renderer_get_size_proc_address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
      end
      if ((self.attr_text_renderer_type).equal?(0))
        renderer_info = GTypeInfo.new
        renderer_info.attr_class_size = RJava.cast_to_short(OS._gtk_cell_renderer_text_class_sizeof)
        renderer_info.attr_class_init = self.attr_renderer_class_init_proc_address
        renderer_info.attr_instance_size = RJava.cast_to_short(OS._gtk_cell_renderer_text_sizeof)
        self.attr_text_renderer_info_ptr = OS.g_malloc(GTypeInfo.attr_sizeof)
        OS.memmove___org_eclipse_swt_widgets_display_13(self.attr_text_renderer_info_ptr, renderer_info, GTypeInfo.attr_sizeof)
        type_name = Converter.wcs_to_mbcs(nil, "SwtTextRenderer", true) # $NON-NLS-1$
        self.attr_text_renderer_type = OS.g_type_register_static(OS._gtk_type_cell_renderer_text, type_name, self.attr_text_renderer_info_ptr, 0)
      end
      if ((self.attr_pixbuf_renderer_type).equal?(0))
        renderer_info = GTypeInfo.new
        renderer_info.attr_class_size = RJava.cast_to_short(OS._gtk_cell_renderer_pixbuf_class_sizeof)
        renderer_info.attr_class_init = self.attr_renderer_class_init_proc_address
        renderer_info.attr_instance_size = RJava.cast_to_short(OS._gtk_cell_renderer_pixbuf_sizeof)
        self.attr_pixbuf_renderer_info_ptr = OS.g_malloc(GTypeInfo.attr_sizeof)
        OS.memmove___org_eclipse_swt_widgets_display_15(self.attr_pixbuf_renderer_info_ptr, renderer_info, GTypeInfo.attr_sizeof)
        type_name = Converter.wcs_to_mbcs(nil, "SwtPixbufRenderer", true) # $NON-NLS-1$
        self.attr_pixbuf_renderer_type = OS.g_type_register_static(OS._gtk_type_cell_renderer_pixbuf, type_name, self.attr_pixbuf_renderer_info_ptr, 0)
      end
      if ((self.attr_toggle_renderer_type).equal?(0))
        renderer_info = GTypeInfo.new
        renderer_info.attr_class_size = RJava.cast_to_short(OS._gtk_cell_renderer_toggle_class_sizeof)
        renderer_info.attr_class_init = self.attr_renderer_class_init_proc_address
        renderer_info.attr_instance_size = RJava.cast_to_short(OS._gtk_cell_renderer_toggle_sizeof)
        self.attr_toggle_renderer_info_ptr = OS.g_malloc(GTypeInfo.attr_sizeof)
        OS.memmove___org_eclipse_swt_widgets_display_17(self.attr_toggle_renderer_info_ptr, renderer_info, GTypeInfo.attr_sizeof)
        type_name = Converter.wcs_to_mbcs(nil, "SwtToggleRenderer", true) # $NON-NLS-1$
        self.attr_toggle_renderer_type = OS.g_type_register_static(OS._gtk_type_cell_renderer_toggle, type_name, self.attr_toggle_renderer_info_ptr, 0)
      end
      OS.gtk_widget_set_default_direction(OS::GTK_TEXT_DIR_LTR)
      OS.gdk_rgb_init
      buffer = Converter.wcs_to_mbcs(nil, self.attr_app_name, true)
      OS.g_set_prgname(buffer)
      OS.gdk_set_program_class(buffer)
      flat_style = Converter.wcs_to_mbcs(nil, "style \"swt-flat\" { GtkToolbar::shadow-type = none } widget \"*.swt-toolbar-flat\" style : highest \"swt-flat\"", true) # $NON-NLS-1$
      OS.gtk_rc_parse_string(flat_style)
      # Initialize the hidden shell
      @shell_handle = OS.gtk_window_new(OS::GTK_WINDOW_TOPLEVEL)
      if ((@shell_handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_widget_realize(@shell_handle)
      # Initialize the filter and event callback
      @event_callback = Callback.new(self, "eventProc", 2) # $NON-NLS-1$
      @event_proc = @event_callback.get_address
      if ((@event_proc).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      OS.gdk_event_handler_set(@event_proc, 0, 0)
      @filter_callback = Callback.new(self, "filterProc", 3) # $NON-NLS-1$
      @filter_proc = @filter_callback.get_address
      if ((@filter_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      OS.gdk_window_add_filter(0, @filter_proc, 0)
    end
    
    typesig { [String] }
    def create_image(name)
      # int
      style = OS.gtk_widget_get_default_style
      buffer = Converter.wcs_to_mbcs(nil, name, true)
      # int
      pixbuf = OS.gtk_icon_set_render_icon(OS.gtk_icon_factory_lookup_default(buffer), style, OS::GTK_TEXT_DIR_NONE, OS::GTK_STATE_NORMAL, OS::GTK_ICON_SIZE_DIALOG, 0, 0)
      if ((pixbuf).equal?(0))
        return nil
      end
      width = OS.gdk_pixbuf_get_width(pixbuf)
      height = OS.gdk_pixbuf_get_height(pixbuf)
      stride = OS.gdk_pixbuf_get_rowstride(pixbuf)
      has_alpha = OS.gdk_pixbuf_get_has_alpha(pixbuf)
      # int
      pixels = OS.gdk_pixbuf_get_pixels(pixbuf)
      data = Array.typed(::Java::Byte).new(stride * height) { 0 }
      OS.memmove___org_eclipse_swt_widgets_display_19(data, pixels, data.attr_length)
      OS.g_object_unref(pixbuf)
      image_data = nil
      if (has_alpha)
        palette = PaletteData.new(-0x1000000, 0xff0000, 0xff00)
        image_data = ImageData.new(width, height, 32, palette)
        alpha = Array.typed(::Java::Byte).new(stride * height) { 0 }
        y = 0
        while y < height
          x = 0
          while x < width
            alpha[y * width + x] = data[y * stride + x * 4 + 3]
            data[y * stride + x * 4 + 3] = 0
            x += 1
          end
          y += 1
        end
        image_data.set_alphas(0, 0, width * height, alpha, 0)
      else
        palette = PaletteData.new(0xff0000, 0xff00, 0xff)
        image_data = ImageData.new(width, height, 24, palette)
      end
      image_data.attr_data = data
      image_data.attr_bytes_per_line = stride
      return Image.new(self, image_data)
    end
    
    class_module.module_eval {
      typesig { [Image] }
      # int
      def create_pixbuf(image)
        w = Array.typed(::Java::Int).new(1) { 0 }
        h = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_drawable_get_size(image.attr_pixmap, w, h)
        # int
        colormap = OS.gdk_colormap_get_system
        # int
        pixbuf = 0
        has_mask = !(image.attr_mask).equal?(0) && (OS.gdk_drawable_get_depth(image.attr_mask)).equal?(1)
        if (has_mask)
          pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, true, 8, w[0], h[0])
          if ((pixbuf).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          OS.gdk_pixbuf_get_from_drawable(pixbuf, image.attr_pixmap, colormap, 0, 0, 0, 0, w[0], h[0])
          # int
          mask_pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, false, 8, w[0], h[0])
          if ((mask_pixbuf).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          OS.gdk_pixbuf_get_from_drawable(mask_pixbuf, image.attr_mask, 0, 0, 0, 0, 0, w[0], h[0])
          stride = OS.gdk_pixbuf_get_rowstride(pixbuf)
          # int
          pixels = OS.gdk_pixbuf_get_pixels(pixbuf)
          line = Array.typed(::Java::Byte).new(stride) { 0 }
          mask_stride = OS.gdk_pixbuf_get_rowstride(mask_pixbuf)
          # int
          mask_pixels = OS.gdk_pixbuf_get_pixels(mask_pixbuf)
          mask_line = Array.typed(::Java::Byte).new(mask_stride) { 0 }
          y = 0
          while y < h[0]
            # int
            offset = pixels + (y * stride)
            OS.memmove___org_eclipse_swt_widgets_display_21(line, offset, stride)
            # int
            mask_offset = mask_pixels + (y * mask_stride)
            OS.memmove___org_eclipse_swt_widgets_display_23(mask_line, mask_offset, mask_stride)
            x = 0
            while x < w[0]
              if ((mask_line[x * 3]).equal?(0))
                line[x * 4 + 3] = 0
              end
              x += 1
            end
            OS.memmove___org_eclipse_swt_widgets_display_25(offset, line, stride)
            y += 1
          end
          OS.g_object_unref(mask_pixbuf)
        else
          data = image.get_image_data
          has_alpha = (data.get_transparency_type).equal?(SWT::TRANSPARENCY_ALPHA)
          pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, has_alpha, 8, w[0], h[0])
          if ((pixbuf).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          OS.gdk_pixbuf_get_from_drawable(pixbuf, image.attr_pixmap, colormap, 0, 0, 0, 0, w[0], h[0])
          if (has_alpha)
            alpha = data.attr_alpha_data
            stride = OS.gdk_pixbuf_get_rowstride(pixbuf)
            # int
            pixels = OS.gdk_pixbuf_get_pixels(pixbuf)
            line = Array.typed(::Java::Byte).new(stride) { 0 }
            y = 0
            while y < h[0]
              # int
              offset = pixels + (y * stride)
              OS.memmove___org_eclipse_swt_widgets_display_27(line, offset, stride)
              x = 0
              while x < w[0]
                line[x * 4 + 3] = alpha[y * w[0] + x]
                x += 1
              end
              OS.memmove___org_eclipse_swt_widgets_display_29(offset, line, stride)
              y += 1
            end
          end
        end
        return pixbuf
      end
      
      typesig { [Display] }
      def deregister(display)
        synchronized((Device)) do
          i = 0
          while i < self.attr_displays.attr_length
            if ((display).equal?(self.attr_displays[i]))
              self.attr_displays[i] = nil
            end
            i += 1
          end
        end
      end
    }
    
    typesig { [] }
    # Destroys the device in the operating system and releases
    # the device's handle.  If the device does not have a handle,
    # this method may do nothing depending on the device.
    # <p>
    # This method is called after <code>release</code>.
    # </p>
    # @see Device#dispose
    # @see #release
    def destroy
      if ((self).equal?(self.attr_default))
        self.attr_default = nil
      end
      deregister(self)
      destroy_display
    end
    
    typesig { [] }
    def destroy_display
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    # int
    def emission_proc(ihint, n_param_values, param_values, data)
      if ((OS.gtk_widget_get_toplevel(OS.g_value_peek_pointer(param_values))).equal?(data))
        OS.gtk_widget_set_direction(OS.g_value_peek_pointer(param_values), OS::GTK_TEXT_DIR_RTL)
      end
      return 1
    end
    
    class_module.module_eval {
      typesig { [JavaThread] }
      # Returns the display which the given thread is the
      # user-interface thread for, or null if the given thread
      # is not a user-interface thread for any display.  Specifying
      # <code>null</code> as the thread will return <code>null</code>
      # for the display.
      # 
      # @param thread the user-interface thread
      # @return the display for the given thread
      def find_display(thread)
        synchronized((Device)) do
          i = 0
          while i < self.attr_displays.attr_length
            display = self.attr_displays[i]
            if (!(display).nil? && (display.attr_thread).equal?(thread))
              return display
            end
            i += 1
          end
          return nil
        end
      end
    }
    
    typesig { [Runnable] }
    # Causes the <code>run()</code> method of the runnable to
    # be invoked by the user-interface thread just before the
    # receiver is disposed.  Specifying a <code>null</code> runnable
    # is ignored.
    # 
    # @param runnable code to run at dispose time.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def dispose_exec(runnable)
      check_device
      if ((@dispose_list).nil?)
        @dispose_list = Array.typed(Runnable).new(4) { nil }
      end
      i = 0
      while i < @dispose_list.attr_length
        if ((@dispose_list[i]).nil?)
          @dispose_list[i] = runnable
          return
        end
        i += 1
      end
      new_dispose_list = Array.typed(Runnable).new(@dispose_list.attr_length + 4) { nil }
      System.arraycopy(@dispose_list, 0, new_dispose_list, 0, @dispose_list.attr_length)
      new_dispose_list[@dispose_list.attr_length] = runnable
      @dispose_list = new_dispose_list
    end
    
    typesig { [::Java::Int] }
    # Does whatever display specific cleanup is required, and then
    # uses the code in <code>SWTError.error</code> to handle the error.
    # 
    # @param code the descriptive error code
    # 
    # @see SWTError#error
    def error(code)
      SWT.error(code)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def event_proc(event, data)
      # Use gdk_event_get_time() rather than event.time or
      # gtk_get_current_event_time().  If the event does not
      # have a time stamp, then the field will contain garbage.
      # Note that calling gtk_get_current_event_time() from
      # outside of gtk_main_do_event() seems to always
      # return zero.
      time = OS.gdk_event_get_time(event)
      if (!(time).equal?(0))
        @last_event_time = time
      end
      event_type = OS._gdk_event_type(event)
      case (event_type)
      when OS::GDK_BUTTON_PRESS, OS::GDK_KEY_PRESS
        @last_user_event_time = time
      end
      dispatch = true
      if (!(@dispatch_events).nil?)
        dispatch = false
        i = 0
        while i < @dispatch_events.attr_length
          if ((event_type).equal?(@dispatch_events[i]))
            dispatch = true
            break
          end
          i += 1
        end
      end
      if (!dispatch)
        add_gdk_event(OS.gdk_event_copy(event))
        return 0
      end
      OS.gtk_main_do_event(event)
      if ((@dispatch_events).nil?)
        put_gdk_events
      end
      return 0
    end
    
    typesig { [::Java::Long] }
    # Given the operating system handle for a widget, returns
    # the instance of the <code>Widget</code> subclass which
    # represents it in the currently running application, if
    # such exists, or null if no matching widget can be found.
    # <p>
    # <b>IMPORTANT:</b> This method should not be called from
    # application code. The arguments are platform-specific.
    # </p>
    # 
    # @param handle the handle for the widget
    # @return the SWT widget that the handle represents
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # int
    def find_widget(handle)
      check_device
      return get_widget(handle)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # Given the operating system handle for a widget,
    # and widget-specific id, returns the instance of
    # the <code>Widget</code> subclass which represents
    # the handle/id pair in the currently running application,
    # if such exists, or null if no matching widget can be found.
    # <p>
    # <b>IMPORTANT:</b> This method should not be called from
    # application code. The arguments are platform-specific.
    # </p>
    # 
    # @param handle the handle for the widget
    # @param id the id for the subwidget (usually an item)
    # @return the SWT widget that the handle/id pair represents
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    # 
    # int
    # int
    def find_widget(handle, id)
      check_device
      return nil
    end
    
    typesig { [Widget, ::Java::Long] }
    # Given a widget and a widget-specific id, returns the
    # instance of the <code>Widget</code> subclass which represents
    # the widget/id pair in the currently running application,
    # if such exists, or null if no matching widget can be found.
    # 
    # @param widget the widget
    # @param id the id for the subwidget (usually an item)
    # @return the SWT subwidget (usually an item) that the widget/id pair represents
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.3
    # 
    # int
    def find_widget(widget, id)
      check_device
      return nil
    end
    
    class_module.module_eval {
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      def fixed_class_init_proc(g_class, class_data)
        klass = GtkWidgetClass.new
        OS.memmove___org_eclipse_swt_widgets_display_31(klass, g_class)
        klass.attr_map = self.attr_fixed_map_proc_address
        self.attr_old_fixed_size_allocate_proc_address = klass.attr_size_allocate
        klass.attr_size_allocate = self.attr_fixed_size_allocate_proc_address
        OS.memmove___org_eclipse_swt_widgets_display_33(g_class, klass)
        return 0
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def fixed_map_proc(handle)
        display = get_current
        widget = display.get_widget(handle)
        if (!(widget).nil?)
          return widget.fixed_map_proc(handle)
        end
        return 0
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      def fixed_size_allocate_proc(handle, allocation)
        display = get_current
        widget = display.get_widget(handle)
        if (!(widget).nil?)
          return widget.fixed_size_allocate_proc(handle, allocation)
        end
        return OS._call___org_eclipse_swt_widgets_display_35(self.attr_old_fixed_size_allocate_proc_address, handle, allocation)
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      def renderer_class_init_proc(g_class, class_data)
        klass = GtkCellRendererClass.new
        OS.memmove___org_eclipse_swt_widgets_display_37(klass, g_class)
        klass.attr_render = self.attr_renderer_render_proc_address
        klass.attr_get_size = self.attr_renderer_get_size_proc_address
        OS.memmove___org_eclipse_swt_widgets_display_39(g_class, klass)
        return 0
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      # int
      # int
      # int
      # int
      # int
      def renderer_get_size_proc(cell, handle, cell_area, x_offset, y_offset, width, height)
        display = get_current
        widget = display.get_widget(handle)
        if (!(widget).nil?)
          return widget.renderer_get_size_proc(cell, handle, cell_area, x_offset, y_offset, width, height)
        end
        return 0
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      # int
      # int
      # int
      # int
      # int
      def renderer_render_proc(cell, window, handle, background_area, cell_area, expose_area, flags)
        display = get_current
        widget = display.get_widget(handle)
        if (!(widget).nil?)
          return widget.renderer_render_proc(cell, window, handle, background_area, cell_area, expose_area, flags)
        end
        return 0
      end
    }
    
    typesig { [::Java::Long, ::Java::Boolean] }
    # int
    def flush_exposes(window, all)
      OS.gdk_flush
      OS.gdk_flush
      if (OS._gdk_windowing_x11)
        @flush_window = window
        @flush_all = all
        # int
        x_display = OS._gdk_display
        # int
        x_event = OS.g_malloc(XEvent.attr_sizeof)
        OS._xcheck_if_event(x_display, x_event, @check_if_event_proc, 0)
        OS.g_free(x_event)
        @flush_window = 0
      end
    end
    
    typesig { [] }
    # Returns the currently active <code>Shell</code>, or null
    # if no shell belonging to the currently running application
    # is active.
    # 
    # @return the active shell or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_active_shell
      check_device
      return @active_shell
    end
    
    typesig { [] }
    # Returns a rectangle describing the receiver's size and location. Note that
    # on multi-monitor systems the origin can be negative.
    # 
    # @return the bounding rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_bounds
      check_device
      return Rectangle.new(0, 0, OS.gdk_screen_width, OS.gdk_screen_height)
    end
    
    class_module.module_eval {
      typesig { [] }
      # Returns the display which the currently running thread is
      # the user-interface thread for, or null if the currently
      # running thread is not a user-interface thread for any display.
      # 
      # @return the current display
      def get_current
        return find_display(JavaThread.current_thread)
      end
    }
    
    typesig { [] }
    def get_caret_blink_time
      # checkDevice ();
      # int
      settings = OS.gtk_settings_get_default
      if ((settings).equal?(0))
        return 500
      end
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      OS.g_object_get(settings, OS.attr_gtk_cursor_blink, buffer, 0)
      if ((buffer[0]).equal?(0))
        return 0
      end
      OS.g_object_get(settings, OS.attr_gtk_cursor_blink_time, buffer, 0)
      if ((buffer[0]).equal?(0))
        return 500
      end
      # By experimentation, GTK application don't use the whole
      # blink cycle time.  Instead, they divide up the time, using
      # an effective blink rate of about 1/2 the total time.
      return buffer[0] / 2
    end
    
    typesig { [] }
    # Returns the control which the on-screen pointer is currently
    # over top of, or null if it is not currently over one of the
    # controls built by the currently running application.
    # 
    # @return the control under the cursor
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_cursor_control
      check_device
      x = Array.typed(::Java::Int).new(1) { 0 }
      y = Array.typed(::Java::Int).new(1) { 0 }
      # int
      handle = 0
      # int
      # int
      user_data = Array.typed(::Java::Long).new(1) { 0 }
      # int
      window = OS.gdk_window_at_pointer(x, y)
      if (!(window).equal?(0))
        OS.gdk_window_get_user_data(window, user_data)
        handle = user_data[0]
      else
        # Feature in GTK. gdk_window_at_pointer() will not return a window
        # if the pointer is over a foreign embedded window. The fix is to use
        # XQueryPointer to find the containing GDK window.
        if (!OS._gdk_windowing_x11)
          return nil
        end
        OS.gdk_error_trap_push
        unused_int = Array.typed(::Java::Int).new(1) { 0 }
        # int
        # int
        unused_ptr = Array.typed(::Java::Long).new(1) { 0 }
        # int
        buffer = Array.typed(::Java::Long).new(1) { 0 }
        # int
        x_window = 0
        x_parent = OS._xdefault_root_window(self.attr_x_display)
        begin
          if ((OS._xquery_pointer(self.attr_x_display, x_parent, unused_ptr, buffer, unused_int, unused_int, unused_int, unused_int, unused_int)).equal?(0))
            handle = 0
            break
          end
          if (!((x_window = buffer[0])).equal?(0))
            x_parent = x_window
            # int
            gdk_window = OS.gdk_window_lookup(x_window)
            if (!(gdk_window).equal?(0))
              OS.gdk_window_get_user_data(gdk_window, user_data)
              if (!(user_data[0]).equal?(0))
                handle = user_data[0]
              end
            end
          end
        end while (!(x_window).equal?(0))
        OS.gdk_error_trap_pop
      end
      if ((handle).equal?(0))
        return nil
      end
      begin
        widget = get_widget(handle)
        if (!(widget).nil? && widget.is_a?(Control))
          control = widget
          if (control.is_enabled)
            return control
          end
        end
      end while (!((handle = OS.gtk_widget_get_parent(handle))).equal?(0))
      return nil
    end
    
    class_module.module_eval {
      typesig { [::Java::Long] }
      # int
      def get_entry_inner_border(handle)
        gtk_border = GtkBorder.new
        if (OS::GTK_VERSION >= OS._version(2, 10, 0))
          # int
          border = OS.gtk_entry_get_inner_border(handle)
          if (!(border).equal?(0))
            OS.memmove___org_eclipse_swt_widgets_display_41(gtk_border, border, GtkBorder.attr_sizeof)
            return gtk_border
          end
          # int
          # int
          border_ptr = Array.typed(::Java::Long).new(1) { 0 }
          OS.gtk_widget_style_get(handle, OS.attr_inner_border, border_ptr, 0)
          if (!(border_ptr[0]).equal?(0))
            OS.memmove___org_eclipse_swt_widgets_display_43(gtk_border, border_ptr[0], GtkBorder.attr_sizeof)
            OS.gtk_border_free(border_ptr[0])
            return gtk_border
          end
        end
        gtk_border.attr_left = INNER_BORDER
        gtk_border.attr_top = INNER_BORDER
        gtk_border.attr_right = INNER_BORDER
        gtk_border.attr_bottom = INNER_BORDER
        return gtk_border
      end
    }
    
    typesig { [Event] }
    def filter_event(event)
      if (!(@filter_table).nil?)
        @filter_table.send_event___org_eclipse_swt_widgets_display_45(event)
      end
      return false
    end
    
    typesig { [::Java::Int] }
    def filters(event_type)
      if ((@filter_table).nil?)
        return false
      end
      return @filter_table.hooks(event_type)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    def filter_proc(x_event, gdk_event, data)
      if ((data).equal?(0))
        # Feature in GTK.  When button 4, 5, 6, or 7 is released, GTK
        # does not deliver a corresponding GTK event.  Button 6 and 7
        # are mapped to buttons 4 and 5 in SWT.  The fix is to change
        # the button number of the event to a negative number so that
        # it gets dispatched by GTK.  SWT has been modified to look
        # for negative button numbers.
        mouse_event = XButtonEvent.new
        OS.memmove___org_eclipse_swt_widgets_display_47(mouse_event, x_event, 4)
        if ((mouse_event.attr_type).equal?(OS::ButtonRelease))
          OS.memmove___org_eclipse_swt_widgets_display_49(mouse_event, x_event, XButtonEvent.attr_sizeof)
          case (mouse_event.attr_button)
          when 6, 7
            mouse_event.attr_button = -mouse_event.attr_button
            OS.memmove___org_eclipse_swt_widgets_display_51(x_event, mouse_event, XButtonEvent.attr_sizeof)
          end
        end
      end
      widget = get_widget(data)
      if ((widget).nil?)
        return 0
      end
      return widget.filter_proc(x_event, gdk_event, data)
    end
    
    typesig { [] }
    # Returns the location of the on-screen pointer relative
    # to the top left corner of the screen.
    # 
    # @return the cursor location
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_cursor_location
      check_device
      x = Array.typed(::Java::Int).new(1) { 0 }
      y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_pointer(0, x, y, nil)
      return Point.new(x[0], y[0])
    end
    
    typesig { [] }
    # Returns an array containing the recommended cursor sizes.
    # 
    # @return the array of cursor sizes
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def get_cursor_sizes
      check_device
      return Array.typed(Point).new([Point.new(16, 16), Point.new(32, 32)])
    end
    
    typesig { [String] }
    # Returns the application defined property of the receiver
    # with the specified name, or null if it has not been set.
    # <p>
    # Applications may have associated arbitrary objects with the
    # receiver in this fashion. If the objects stored in the
    # properties need to be notified when the display is disposed
    # of, it is the application's responsibility to provide a
    # <code>disposeExec()</code> handler which does so.
    # </p>
    # 
    # @param key the name of the property
    # @return the value of the property or null if it has not been set
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the key is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #setData(String, Object)
    # @see #disposeExec(Runnable)
    def get_data(key)
      check_device
      if ((key).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((key == DISPATCH_EVENT_KEY))
        return @dispatch_events
      end
      if ((key == GET_MODAL_DIALOG))
        return @modal_dialog
      end
      if ((key == GET_DIRECTION_PROC_KEY))
        return SwtLONG.new(@set_direction_proc)
      end
      if ((key == GET_EMISSION_PROC_KEY))
        return SwtLONG.new(@emission_proc)
      end
      if ((@keys).nil?)
        return nil
      end
      i = 0
      while i < @keys.attr_length
        if ((@keys[i] == key))
          return @values[i]
        end
        i += 1
      end
      return nil
    end
    
    typesig { [] }
    # Returns the application defined, display specific data
    # associated with the receiver, or null if it has not been
    # set. The <em>display specific data</em> is a single,
    # unnamed field that is stored with every display.
    # <p>
    # Applications may put arbitrary objects in this field. If
    # the object stored in the display specific data needs to
    # be notified when the display is disposed of, it is the
    # application's responsibility to provide a
    # <code>disposeExec()</code> handler which does so.
    # </p>
    # 
    # @return the display specific data
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #setData(Object)
    # @see #disposeExec(Runnable)
    def get_data
      check_device
      return @data
    end
    
    typesig { [] }
    # Returns a point whose x coordinate is the horizontal
    # dots per inch of the display, and whose y coordinate
    # is the vertical dots per inch of the display.
    # 
    # @return the horizontal and vertical DPI
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_dpi
      check_device
      width_mm = OS.gdk_screen_width_mm
      width = OS.gdk_screen_width
      dpi = Compatibility.round(254 * width, width_mm * 10)
      return Point.new(dpi, dpi)
    end
    
    typesig { [] }
    # int
    def gtk_fixed_get_type
      return self.attr_fixed_type
    end
    
    typesig { [] }
    # int
    def gtk_cell_renderer_text_get_type
      return self.attr_text_renderer_type
    end
    
    typesig { [] }
    # int
    def gtk_cell_renderer_pixbuf_get_type
      return self.attr_pixbuf_renderer_type
    end
    
    typesig { [] }
    # int
    def gtk_cell_renderer_toggle_get_type
      return self.attr_toggle_renderer_type
    end
    
    class_module.module_eval {
      typesig { [] }
      # Returns the default display. One is created (making the
      # thread that invokes this method its user-interface thread)
      # if it did not already exist.
      # 
      # @return the default display
      def get_default
        synchronized((Device)) do
          if ((self.attr_default).nil?)
            self.attr_default = Display.new
          end
          return self.attr_default
        end
      end
      
      typesig { [Class] }
      def is_valid_class(clazz)
        name = clazz.get_name
        index = name.last_index_of(Character.new(?..ord))
        return (name.substring(0, index + 1) == PACKAGE_PREFIX)
      end
    }
    
    typesig { [] }
    # Returns the button dismissal alignment, one of <code>LEFT</code> or <code>RIGHT</code>.
    # The button dismissal alignment is the ordering that should be used when positioning the
    # default dismissal button for a dialog.  For example, in a dialog that contains an OK and
    # CANCEL button, on platforms where the button dismissal alignment is <code>LEFT</code>, the
    # button ordering should be OK/CANCEL.  When button dismissal alignment is <code>RIGHT</code>,
    # the button ordering should be CANCEL/OK.
    # 
    # @return the button dismissal order
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 2.1
    def get_dismissal_alignment
      check_device
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      if (OS::GTK_VERSION >= OS._version(2, 6, 0))
        # int
        settings = OS.gtk_settings_get_default
        OS.g_object_get(settings, OS.attr_gtk_alternative_button_order, buffer, 0)
      end
      return (buffer[0]).equal?(1) ? SWT::LEFT : SWT::RIGHT
    end
    
    typesig { [] }
    # Returns the longest duration, in milliseconds, between
    # two mouse button clicks that will be considered a
    # <em>double click</em> by the underlying operating system.
    # 
    # @return the double click time
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_double_click_time
      check_device
      # int
      settings = OS.gtk_settings_get_default
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      OS.g_object_get(settings, OS.attr_gtk_double_click_time, buffer, 0)
      return buffer[0]
    end
    
    typesig { [] }
    # Returns the control which currently has keyboard focus,
    # or null if keyboard events are not currently going to
    # any of the controls built by the currently running
    # application.
    # 
    # @return the control under the cursor
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_focus_control
      check_device
      if (!(@focus_control).nil? && !@focus_control.is_disposed)
        return @focus_control
      end
      if ((@active_shell).nil?)
        return nil
      end
      # int
      shell_handle = @active_shell.attr_shell_handle
      # int
      handle = OS.gtk_window_get_focus(shell_handle)
      if ((handle).equal?(0))
        return nil
      end
      begin
        widget = get_widget(handle)
        if (!(widget).nil? && widget.is_a?(Control))
          control = widget
          return control.is_enabled ? control : nil
        end
      end while (!((handle = OS.gtk_widget_get_parent(handle))).equal?(0))
      return nil
    end
    
    typesig { [] }
    # Returns true when the high contrast mode is enabled.
    # Otherwise, false is returned.
    # <p>
    # Note: This operation is a hint and is not supported on
    # platforms that do not have this concept.
    # </p>
    # 
    # @return the high contrast mode
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def get_high_contrast
      check_device
      return false
    end
    
    typesig { [] }
    def get_depth
      check_device
      visual = GdkVisual.new
      OS.memmove___org_eclipse_swt_widgets_display_53(visual, OS.gdk_visual_get_system)
      return visual.attr_depth
    end
    
    typesig { [] }
    # Returns the maximum allowed depth of icons on this display, in bits per pixel.
    # On some platforms, this may be different than the actual depth of the display.
    # 
    # @return the maximum icon depth
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Device#getDepth
    def get_icon_depth
      check_device
      return get_depth
    end
    
    typesig { [] }
    # Returns an array containing the recommended icon sizes.
    # 
    # @return the array of icon sizes
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Decorations#setImages(Image[])
    # 
    # @since 3.0
    def get_icon_sizes
      check_device
      return Array.typed(Point).new([Point.new(16, 16), Point.new(32, 32)])
    end
    
    typesig { [] }
    def get_last_event_time
      return @last_event_time
    end
    
    typesig { [] }
    def get_message_count
      return @synchronizer.get_message_count
    end
    
    typesig { [] }
    def get_modal_dialog
      return @modal_dialog
    end
    
    typesig { [] }
    # Returns the work area, an EWMH property to store the size
    # and position of the screen not covered by dock and panel
    # windows.  See http://freedesktop.org/Standards/wm-spec.
    def get_work_area
      name = Converter.wcs_to_mbcs(nil, "_NET_WORKAREA", true) # $NON-NLS-1$
      # int
      atom = OS.gdk_atom_intern(name, true)
      if ((atom).equal?(OS::GDK_NONE))
        return nil
      end
      # int
      # int
      actual_type = Array.typed(::Java::Long).new(1) { 0 }
      actual_format = Array.typed(::Java::Int).new(1) { 0 }
      actual_length = Array.typed(::Java::Int).new(1) { 0 }
      # int
      # int
      data = Array.typed(::Java::Long).new(1) { 0 }
      if (!OS.gdk_property_get(OS._gdk_root_parent, atom, OS::GDK_NONE, 0, 16, 0, actual_type, actual_format, actual_length, data))
        return nil
      end
      result = nil
      if (!(data[0]).equal?(0))
        if ((actual_length[0]).equal?(16))
          values = Array.typed(::Java::Int).new(4) { 0 }
          OS.memmove___org_eclipse_swt_widgets_display_55(values, data[0], 16)
          result = Rectangle.new(values[0], values[1], values[2], values[3])
        else
          if ((actual_length[0]).equal?(32))
            values = Array.typed(::Java::Long).new(4) { 0 }
            OS.memmove___org_eclipse_swt_widgets_display_57(values, data[0], 32)
            result = Rectangle.new(RJava.cast_to_int(values[0]), RJava.cast_to_int(values[1]), RJava.cast_to_int(values[2]), RJava.cast_to_int(values[3]))
          end
        end
        OS.g_free(data[0])
      end
      return result
    end
    
    typesig { [] }
    # Returns an array of monitors attached to the device.
    # 
    # @return the array of monitors
    # 
    # @since 3.0
    def get_monitors
      check_device
      monitors = nil
      work_area = get_work_area
      # int
      screen = OS.gdk_screen_get_default
      if (!(screen).equal?(0))
        monitor_count = OS.gdk_screen_get_n_monitors(screen)
        if (monitor_count > 0)
          monitors = Array.typed(SwtMonitor).new(monitor_count) { nil }
          dest = GdkRectangle.new
          i = 0
          while i < monitor_count
            OS.gdk_screen_get_monitor_geometry(screen, i, dest)
            monitor = SwtMonitor.new
            monitor.attr_handle = i
            monitor.attr_x = dest.attr_x
            monitor.attr_y = dest.attr_y
            monitor.attr_width = dest.attr_width
            monitor.attr_height = dest.attr_height
            if ((i).equal?(0) && !(work_area).nil?)
              monitor.attr_client_x = work_area.attr_x
              monitor.attr_client_y = work_area.attr_y
              monitor.attr_client_width = work_area.attr_width
              monitor.attr_client_height = work_area.attr_height
            else
              monitor.attr_client_x = monitor.attr_x
              monitor.attr_client_y = monitor.attr_y
              monitor.attr_client_width = monitor.attr_width
              monitor.attr_client_height = monitor.attr_height
            end
            monitors[i] = monitor
            i += 1
          end
        end
      end
      if ((monitors).nil?)
        # No multimonitor support detected, default to one monitor
        monitor = SwtMonitor.new
        bounds = get_bounds
        monitor.attr_x = bounds.attr_x
        monitor.attr_y = bounds.attr_y
        monitor.attr_width = bounds.attr_width
        monitor.attr_height = bounds.attr_height
        if (!(work_area).nil?)
          monitor.attr_client_x = work_area.attr_x
          monitor.attr_client_y = work_area.attr_y
          monitor.attr_client_width = work_area.attr_width
          monitor.attr_client_height = work_area.attr_height
        else
          monitor.attr_client_x = monitor.attr_x
          monitor.attr_client_y = monitor.attr_y
          monitor.attr_client_width = monitor.attr_width
          monitor.attr_client_height = monitor.attr_height
        end
        monitors = Array.typed(SwtMonitor).new([monitor])
      end
      return monitors
    end
    
    typesig { [] }
    # Returns the primary monitor for that device.
    # 
    # @return the primary monitor
    # 
    # @since 3.0
    def get_primary_monitor
      check_device
      monitors = get_monitors
      return monitors[0]
    end
    
    typesig { [] }
    # Returns a (possibly empty) array containing all shells which have
    # not been disposed and have the receiver as their display.
    # 
    # @return the receiver's shells
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_shells
      check_device
      index = 0
      result = Array.typed(Shell).new(16) { nil }
      i = 0
      while i < @widget_table.attr_length
        widget = @widget_table[i]
        if (!(widget).nil? && widget.is_a?(Shell))
          j = 0
          while (j < index)
            if ((result[j]).equal?(widget))
              break
            end
            j += 1
          end
          if ((j).equal?(index))
            if ((index).equal?(result.attr_length))
              new_result = Array.typed(Shell).new(index + 16) { nil }
              System.arraycopy(result, 0, new_result, 0, index)
              result = new_result
            end
            result[((index += 1) - 1)] = widget
          end
        end
        i += 1
      end
      if ((index).equal?(result.attr_length))
        return result
      end
      new_result = Array.typed(Shell).new(index) { nil }
      System.arraycopy(result, 0, new_result, 0, index)
      return new_result
    end
    
    typesig { [] }
    # Gets the synchronizer used by the display.
    # 
    # @return the receiver's synchronizer
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.4
    def get_synchronizer
      check_device
      return @synchronizer
    end
    
    typesig { [] }
    # Returns the thread that has invoked <code>syncExec</code>
    # or null if no such runnable is currently being invoked by
    # the user-interface thread.
    # <p>
    # Note: If a runnable invoked by asyncExec is currently
    # running, this method will return null.
    # </p>
    # 
    # @return the receiver's sync-interface thread
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_sync_thread
      synchronized((Device)) do
        if (is_disposed)
          error(SWT::ERROR_DEVICE_DISPOSED)
        end
        return @synchronizer.attr_sync_thread
      end
    end
    
    typesig { [::Java::Int] }
    # Returns the matching standard color for the given
    # constant, which should be one of the color constants
    # specified in class <code>SWT</code>. Any value other
    # than one of the SWT color constants which is passed
    # in will result in the color black. This color should
    # not be free'd because it was allocated by the system,
    # not the application.
    # 
    # @param id the color constant
    # @return the matching color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see SWT
    def get_system_color(id)
      check_device
      gdk_color = nil
      case (id)
      when SWT::COLOR_INFO_FOREGROUND
        gdk_color = @color_info_foreground
      when SWT::COLOR_INFO_BACKGROUND
        gdk_color = @color_info_background
      when SWT::COLOR_TITLE_FOREGROUND
        gdk_color = @color_title_foreground
      when SWT::COLOR_TITLE_BACKGROUND
        gdk_color = @color_title_background
      when SWT::COLOR_TITLE_BACKGROUND_GRADIENT
        gdk_color = @color_title_background_gradient
      when SWT::COLOR_TITLE_INACTIVE_FOREGROUND
        gdk_color = @color_title_inactive_foreground
      when SWT::COLOR_TITLE_INACTIVE_BACKGROUND
        gdk_color = @color_title_inactive_background
      when SWT::COLOR_TITLE_INACTIVE_BACKGROUND_GRADIENT
        gdk_color = @color_title_inactive_background_gradient
      when SWT::COLOR_WIDGET_DARK_SHADOW
        gdk_color = @color_widget_dark_shadow
      when SWT::COLOR_WIDGET_NORMAL_SHADOW
        gdk_color = @color_widget_normal_shadow
      when SWT::COLOR_WIDGET_LIGHT_SHADOW
        gdk_color = @color_widget_light_shadow
      when SWT::COLOR_WIDGET_HIGHLIGHT_SHADOW
        gdk_color = @color_widget_highlight_shadow
      when SWT::COLOR_WIDGET_BACKGROUND
        gdk_color = @color_widget_background
      when SWT::COLOR_WIDGET_FOREGROUND
        gdk_color = @color_widget_foreground
      when SWT::COLOR_WIDGET_BORDER
        gdk_color = @color_widget_border
      when SWT::COLOR_LIST_FOREGROUND
        gdk_color = @color_list_foreground
      when SWT::COLOR_LIST_BACKGROUND
        gdk_color = @color_list_background
      when SWT::COLOR_LIST_SELECTION
        gdk_color = @color_list_selection
      when SWT::COLOR_LIST_SELECTION_TEXT
        gdk_color = @color_list_selection_text
      else
        return super(id)
      end
      if ((gdk_color).nil?)
        return super(SWT::COLOR_BLACK)
      end
      return Color.gtk_new(self, gdk_color)
    end
    
    typesig { [::Java::Int] }
    # Returns the matching standard platform cursor for the given
    # constant, which should be one of the cursor constants
    # specified in class <code>SWT</code>. This cursor should
    # not be free'd because it was allocated by the system,
    # not the application.  A value of <code>null</code> will
    # be returned if the supplied constant is not an SWT cursor
    # constant.
    # 
    # @param id the SWT cursor constant
    # @return the corresponding cursor or <code>null</code>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see SWT#CURSOR_ARROW
    # @see SWT#CURSOR_WAIT
    # @see SWT#CURSOR_CROSS
    # @see SWT#CURSOR_APPSTARTING
    # @see SWT#CURSOR_HELP
    # @see SWT#CURSOR_SIZEALL
    # @see SWT#CURSOR_SIZENESW
    # @see SWT#CURSOR_SIZENS
    # @see SWT#CURSOR_SIZENWSE
    # @see SWT#CURSOR_SIZEWE
    # @see SWT#CURSOR_SIZEN
    # @see SWT#CURSOR_SIZES
    # @see SWT#CURSOR_SIZEE
    # @see SWT#CURSOR_SIZEW
    # @see SWT#CURSOR_SIZENE
    # @see SWT#CURSOR_SIZESE
    # @see SWT#CURSOR_SIZESW
    # @see SWT#CURSOR_SIZENW
    # @see SWT#CURSOR_UPARROW
    # @see SWT#CURSOR_IBEAM
    # @see SWT#CURSOR_NO
    # @see SWT#CURSOR_HAND
    # 
    # @since 3.0
    def get_system_cursor(id)
      check_device
      if (!(0 <= id && id < @cursors.attr_length))
        return nil
      end
      if ((@cursors[id]).nil?)
        @cursors[id] = Cursor.new(self, id)
      end
      return @cursors[id]
    end
    
    typesig { [::Java::Int] }
    # Returns the matching standard platform image for the given
    # constant, which should be one of the icon constants
    # specified in class <code>SWT</code>. This image should
    # not be free'd because it was allocated by the system,
    # not the application.  A value of <code>null</code> will
    # be returned either if the supplied constant is not an
    # SWT icon constant or if the platform does not define an
    # image that corresponds to the constant.
    # 
    # @param id the SWT icon constant
    # @return the corresponding image or <code>null</code>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see SWT#ICON_ERROR
    # @see SWT#ICON_INFORMATION
    # @see SWT#ICON_QUESTION
    # @see SWT#ICON_WARNING
    # @see SWT#ICON_WORKING
    # 
    # @since 3.0
    def get_system_image(id)
      check_device
      case (id)
      when SWT::ICON_ERROR
        if ((@error_image).nil?)
          @error_image = create_image("gtk-dialog-error") # $NON-NLS-1$
        end
        return @error_image
      when SWT::ICON_INFORMATION, SWT::ICON_WORKING
        if ((@info_image).nil?)
          @info_image = create_image("gtk-dialog-info") # $NON-NLS-1$
        end
        return @info_image
      when SWT::ICON_QUESTION
        if ((@question_image).nil?)
          @question_image = create_image("gtk-dialog-question") # $NON-NLS-1$
        end
        return @question_image
      when SWT::ICON_WARNING
        if ((@warning_image).nil?)
          @warning_image = create_image("gtk-dialog-warning") # $NON-NLS-1$
        end
        return @warning_image
      end
      return nil
    end
    
    typesig { [] }
    def initialize_system_colors
      gdk_color = nil
      # Get Tooltip resources
      # int
      tooltip_shell_handle = OS.gtk_window_new(OS::GTK_WINDOW_POPUP)
      if ((tooltip_shell_handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      gtk_tooltips = Converter.wcs_to_mbcs(nil, "gtk-tooltips", true) # $NON-NLS-1$
      OS.gtk_widget_set_name(tooltip_shell_handle, gtk_tooltips)
      OS.gtk_widget_realize(tooltip_shell_handle)
      # int
      tooltip_style = OS.gtk_widget_get_style(tooltip_shell_handle)
      gdk_color = GdkColor.new
      OS.gtk_style_get_fg(tooltip_style, OS::GTK_STATE_NORMAL, gdk_color)
      @color_info_foreground = gdk_color
      gdk_color = GdkColor.new
      OS.gtk_style_get_bg(tooltip_style, OS::GTK_STATE_NORMAL, gdk_color)
      @color_info_background = gdk_color
      OS.gtk_widget_destroy(tooltip_shell_handle)
      # Get Shell resources
      # int
      style = OS.gtk_widget_get_style(@shell_handle)
      gdk_color = GdkColor.new
      OS.gtk_style_get_black(style, gdk_color)
      @color_widget_dark_shadow = gdk_color
      gdk_color = GdkColor.new
      OS.gtk_style_get_dark(style, OS::GTK_STATE_NORMAL, gdk_color)
      @color_widget_normal_shadow = gdk_color
      gdk_color = GdkColor.new
      OS.gtk_style_get_bg(style, OS::GTK_STATE_NORMAL, gdk_color)
      @color_widget_light_shadow = gdk_color
      gdk_color = GdkColor.new
      OS.gtk_style_get_light(style, OS::GTK_STATE_NORMAL, gdk_color)
      @color_widget_highlight_shadow = gdk_color
      gdk_color = GdkColor.new
      OS.gtk_style_get_fg(style, OS::GTK_STATE_NORMAL, gdk_color)
      @color_widget_foreground = gdk_color
      gdk_color = GdkColor.new
      OS.gtk_style_get_bg(style, OS::GTK_STATE_NORMAL, gdk_color)
      @color_widget_background = gdk_color
      # gdkColor = new GdkColor();
      # OS.gtk_style_get_text (style, OS.GTK_STATE_NORMAL, gdkColor);
      # COLOR_TEXT_FOREGROUND = gdkColor;
      # gdkColor = new GdkColor();
      # OS.gtk_style_get_base (style, OS.GTK_STATE_NORMAL, gdkColor);
      # COLOR_TEXT_BACKGROUND = gdkColor;
      gdk_color = GdkColor.new
      OS.gtk_style_get_text(style, OS::GTK_STATE_NORMAL, gdk_color)
      @color_list_foreground = gdk_color
      gdk_color = GdkColor.new
      OS.gtk_style_get_base(style, OS::GTK_STATE_NORMAL, gdk_color)
      @color_list_background = gdk_color
      gdk_color = GdkColor.new
      OS.gtk_style_get_text(style, OS::GTK_STATE_SELECTED, gdk_color)
      @color_list_selection_text = gdk_color
      gdk_color = GdkColor.new
      OS.gtk_style_get_base(style, OS::GTK_STATE_SELECTED, gdk_color)
      @color_list_selection = gdk_color
      gdk_color = GdkColor.new
      OS.gtk_style_get_bg(style, OS::GTK_STATE_SELECTED, gdk_color)
      @color_title_background = gdk_color
      gdk_color = GdkColor.new
      OS.gtk_style_get_fg(style, OS::GTK_STATE_SELECTED, gdk_color)
      @color_title_foreground = gdk_color
      gdk_color = GdkColor.new
      OS.gtk_style_get_light(style, OS::GTK_STATE_SELECTED, gdk_color)
      @color_title_background_gradient = gdk_color
      gdk_color = GdkColor.new
      OS.gtk_style_get_bg(style, OS::GTK_STATE_INSENSITIVE, gdk_color)
      @color_title_inactive_background = gdk_color
      gdk_color = GdkColor.new
      OS.gtk_style_get_fg(style, OS::GTK_STATE_INSENSITIVE, gdk_color)
      @color_title_inactive_foreground = gdk_color
      gdk_color = GdkColor.new
      OS.gtk_style_get_light(style, OS::GTK_STATE_INSENSITIVE, gdk_color)
      @color_title_inactive_background_gradient = gdk_color
    end
    
    typesig { [] }
    # Returns a reasonable font for applications to use.
    # On some platforms, this will match the "default font"
    # or "system font" if such can be found.  This font
    # should not be free'd because it was allocated by the
    # system, not the application.
    # <p>
    # Typically, applications which want the default look
    # should simply not set the font on the widgets they
    # create. Widgets are always created with the correct
    # default font for the class of user-interface component
    # they represent.
    # </p>
    # 
    # @return a font
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_system_font
      check_device
      if (!(@system_font).nil?)
        return @system_font
      end
      # int
      style = OS.gtk_widget_get_style(@shell_handle)
      # int
      default_font = OS.pango_font_description_copy(OS.gtk_style_get_font_desc(style))
      return @system_font = Font.gtk_new(self, default_font)
    end
    
    typesig { [] }
    # Returns the single instance of the system tray or null
    # when there is no system tray available for the platform.
    # 
    # @return the system tray or <code>null</code>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def get_system_tray
      check_device
      if (!(@tray).nil?)
        return @tray
      end
      return @tray = Tray.new(self, SWT::NONE)
    end
    
    typesig { [] }
    # Returns the user-interface thread for the receiver.
    # 
    # @return the receiver's user-interface thread
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_thread
      synchronized((Device)) do
        if (is_disposed)
          error(SWT::ERROR_DEVICE_DISPOSED)
        end
        return @thread
      end
    end
    
    typesig { [::Java::Long] }
    # int
    def get_widget(handle)
      if ((handle).equal?(0))
        return nil
      end
      if (!(@last_widget).nil? && (@last_handle).equal?(handle))
        return @last_widget
      end
      # int
      index = OS.g_object_get_qdata(handle, SWT_OBJECT_INDEX) - 1
      if (0 <= index && index < @widget_table.attr_length)
        @last_handle = handle
        # 64
        return @last_widget = @widget_table[RJava.cast_to_int(index)]
      end
      return nil
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def idle_proc(data)
      result = run_async_messages___org_eclipse_swt_widgets_display_59(false)
      if (!result)
        synchronized((@idle_lock)) do
          @idle_handle = 0
        end
      end
      return result ? 1 : 0
    end
    
    typesig { [] }
    # Initializes any internal resources needed by the
    # device.
    # <p>
    # This method is called after <code>create</code>.
    # </p>
    # 
    # @see #create
    def init
      super
      initialize_callbacks
      initialize_subclasses
      initialize_system_colors
      initialize_system_settings
      initialize_widget_table
      initialize_window_manager
    end
    
    typesig { [] }
    def initialize_callbacks
      # int
      @closures = Array.typed(::Java::Long).new(Widget::LAST_SIGNAL) { 0 }
      @signal_ids = Array.typed(::Java::Int).new(Widget::LAST_SIGNAL) { 0 }
      # Cache signals for GtkWidget
      @signal_ids[Widget::BUTTON_PRESS_EVENT] = OS.g_signal_lookup(OS.attr_button_press_event, OS._gtk_type_widget)
      @signal_ids[Widget::BUTTON_RELEASE_EVENT] = OS.g_signal_lookup(OS.attr_button_release_event, OS._gtk_type_widget)
      @signal_ids[Widget::CONFIGURE_EVENT] = OS.g_signal_lookup(OS.attr_configure_event, OS._gtk_type_widget)
      @signal_ids[Widget::DELETE_EVENT] = OS.g_signal_lookup(OS.attr_delete_event, OS._gtk_type_widget)
      @signal_ids[Widget::ENTER_NOTIFY_EVENT] = OS.g_signal_lookup(OS.attr_enter_notify_event, OS._gtk_type_widget)
      @signal_ids[Widget::EVENT] = OS.g_signal_lookup(OS.attr_event, OS._gtk_type_widget)
      @signal_ids[Widget::EVENT_AFTER] = OS.g_signal_lookup(OS.attr_event_after, OS._gtk_type_widget)
      @signal_ids[Widget::EXPOSE_EVENT] = OS.g_signal_lookup(OS.attr_expose_event, OS._gtk_type_widget)
      @signal_ids[Widget::FOCUS] = OS.g_signal_lookup(OS.attr_focus, OS._gtk_type_widget)
      @signal_ids[Widget::FOCUS_IN_EVENT] = OS.g_signal_lookup(OS.attr_focus_in_event, OS._gtk_type_widget)
      @signal_ids[Widget::FOCUS_OUT_EVENT] = OS.g_signal_lookup(OS.attr_focus_out_event, OS._gtk_type_widget)
      @signal_ids[Widget::GRAB_FOCUS] = OS.g_signal_lookup(OS.attr_grab_focus, OS._gtk_type_widget)
      @signal_ids[Widget::HIDE] = OS.g_signal_lookup(OS.attr_hide, OS._gtk_type_widget)
      @signal_ids[Widget::KEY_PRESS_EVENT] = OS.g_signal_lookup(OS.attr_key_press_event, OS._gtk_type_widget)
      @signal_ids[Widget::KEY_RELEASE_EVENT] = OS.g_signal_lookup(OS.attr_key_release_event, OS._gtk_type_widget)
      @signal_ids[Widget::LEAVE_NOTIFY_EVENT] = OS.g_signal_lookup(OS.attr_leave_notify_event, OS._gtk_type_widget)
      @signal_ids[Widget::MAP] = OS.g_signal_lookup(OS.attr_map, OS._gtk_type_widget)
      @signal_ids[Widget::MAP_EVENT] = OS.g_signal_lookup(OS.attr_map_event, OS._gtk_type_widget)
      @signal_ids[Widget::MNEMONIC_ACTIVATE] = OS.g_signal_lookup(OS.attr_mnemonic_activate, OS._gtk_type_widget)
      @signal_ids[Widget::MOTION_NOTIFY_EVENT] = OS.g_signal_lookup(OS.attr_motion_notify_event, OS._gtk_type_widget)
      @signal_ids[Widget::POPUP_MENU] = OS.g_signal_lookup(OS.attr_popup_menu, OS._gtk_type_widget)
      @signal_ids[Widget::REALIZE] = OS.g_signal_lookup(OS.attr_realize, OS._gtk_type_widget)
      @signal_ids[Widget::SCROLL_EVENT] = OS.g_signal_lookup(OS.attr_scroll_event, OS._gtk_type_widget)
      @signal_ids[Widget::SHOW] = OS.g_signal_lookup(OS.attr_show, OS._gtk_type_widget)
      @signal_ids[Widget::SHOW_HELP] = OS.g_signal_lookup(OS.attr_show_help, OS._gtk_type_widget)
      @signal_ids[Widget::SIZE_ALLOCATE] = OS.g_signal_lookup(OS.attr_size_allocate, OS._gtk_type_widget)
      @signal_ids[Widget::STYLE_SET] = OS.g_signal_lookup(OS.attr_style_set, OS._gtk_type_widget)
      @signal_ids[Widget::UNMAP] = OS.g_signal_lookup(OS.attr_unmap, OS._gtk_type_widget)
      @signal_ids[Widget::UNMAP_EVENT] = OS.g_signal_lookup(OS.attr_unmap_event, OS._gtk_type_widget)
      @signal_ids[Widget::UNREALIZE] = OS.g_signal_lookup(OS.attr_realize, OS._gtk_type_widget)
      @signal_ids[Widget::VISIBILITY_NOTIFY_EVENT] = OS.g_signal_lookup(OS.attr_visibility_notify_event, OS._gtk_type_widget)
      @signal_ids[Widget::WINDOW_STATE_EVENT] = OS.g_signal_lookup(OS.attr_window_state_event, OS._gtk_type_widget)
      @window_callback2 = Callback.new(self, "windowProc", 2) # $NON-NLS-1$
      @window_proc2 = @window_callback2.get_address
      if ((@window_proc2).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @closures[Widget::ACTIVATE] = OS.g_cclosure_new(@window_proc2, Widget::ACTIVATE, 0)
      @closures[Widget::ACTIVATE_INVERSE] = OS.g_cclosure_new(@window_proc2, Widget::ACTIVATE_INVERSE, 0)
      @closures[Widget::CHANGED] = OS.g_cclosure_new(@window_proc2, Widget::CHANGED, 0)
      @closures[Widget::CLICKED] = OS.g_cclosure_new(@window_proc2, Widget::CLICKED, 0)
      @closures[Widget::DAY_SELECTED] = OS.g_cclosure_new(@window_proc2, Widget::DAY_SELECTED, 0)
      @closures[Widget::DAY_SELECTED_DOUBLE_CLICK] = OS.g_cclosure_new(@window_proc2, Widget::DAY_SELECTED_DOUBLE_CLICK, 0)
      @closures[Widget::HIDE] = OS.g_cclosure_new(@window_proc2, Widget::HIDE, 0)
      @closures[Widget::GRAB_FOCUS] = OS.g_cclosure_new(@window_proc2, Widget::GRAB_FOCUS, 0)
      @closures[Widget::MAP] = OS.g_cclosure_new(@window_proc2, Widget::MAP, 0)
      @closures[Widget::MONTH_CHANGED] = OS.g_cclosure_new(@window_proc2, Widget::MONTH_CHANGED, 0)
      @closures[Widget::OUTPUT] = OS.g_cclosure_new(@window_proc2, Widget::OUTPUT, 0)
      @closures[Widget::POPUP_MENU] = OS.g_cclosure_new(@window_proc2, Widget::POPUP_MENU, 0)
      @closures[Widget::PREEDIT_CHANGED] = OS.g_cclosure_new(@window_proc2, Widget::PREEDIT_CHANGED, 0)
      @closures[Widget::REALIZE] = OS.g_cclosure_new(@window_proc2, Widget::REALIZE, 0)
      @closures[Widget::SELECT] = OS.g_cclosure_new(@window_proc2, Widget::SELECT, 0)
      @closures[Widget::SHOW] = OS.g_cclosure_new(@window_proc2, Widget::SHOW, 0)
      @closures[Widget::VALUE_CHANGED] = OS.g_cclosure_new(@window_proc2, Widget::VALUE_CHANGED, 0)
      @closures[Widget::UNMAP] = OS.g_cclosure_new(@window_proc2, Widget::UNMAP, 0)
      @closures[Widget::UNREALIZE] = OS.g_cclosure_new(@window_proc2, Widget::UNREALIZE, 0)
      @window_callback3 = Callback.new(self, "windowProc", 3) # $NON-NLS-1$
      @window_proc3 = @window_callback3.get_address
      if ((@window_proc3).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @closures[Widget::BUTTON_PRESS_EVENT] = OS.g_cclosure_new(@window_proc3, Widget::BUTTON_PRESS_EVENT, 0)
      @closures[Widget::BUTTON_PRESS_EVENT_INVERSE] = OS.g_cclosure_new(@window_proc3, Widget::BUTTON_PRESS_EVENT_INVERSE, 0)
      @closures[Widget::BUTTON_RELEASE_EVENT] = OS.g_cclosure_new(@window_proc3, Widget::BUTTON_RELEASE_EVENT, 0)
      @closures[Widget::BUTTON_RELEASE_EVENT_INVERSE] = OS.g_cclosure_new(@window_proc3, Widget::BUTTON_RELEASE_EVENT_INVERSE, 0)
      @closures[Widget::COMMIT] = OS.g_cclosure_new(@window_proc3, Widget::COMMIT, 0)
      @closures[Widget::CONFIGURE_EVENT] = OS.g_cclosure_new(@window_proc3, Widget::CONFIGURE_EVENT, 0)
      @closures[Widget::DELETE_EVENT] = OS.g_cclosure_new(@window_proc3, Widget::DELETE_EVENT, 0)
      @closures[Widget::ENTER_NOTIFY_EVENT] = OS.g_cclosure_new(@window_proc3, Widget::ENTER_NOTIFY_EVENT, 0)
      @closures[Widget::EVENT] = OS.g_cclosure_new(@window_proc3, Widget::EVENT, 0)
      @closures[Widget::EVENT_AFTER] = OS.g_cclosure_new(@window_proc3, Widget::EVENT_AFTER, 0)
      @closures[Widget::EXPOSE_EVENT] = OS.g_cclosure_new(@window_proc3, Widget::EXPOSE_EVENT, 0)
      @closures[Widget::EXPOSE_EVENT_INVERSE] = OS.g_cclosure_new(@window_proc3, Widget::EXPOSE_EVENT_INVERSE, 0)
      @closures[Widget::FOCUS] = OS.g_cclosure_new(@window_proc3, Widget::FOCUS, 0)
      @closures[Widget::FOCUS_IN_EVENT] = OS.g_cclosure_new(@window_proc3, Widget::FOCUS_IN_EVENT, 0)
      @closures[Widget::FOCUS_OUT_EVENT] = OS.g_cclosure_new(@window_proc3, Widget::FOCUS_OUT_EVENT, 0)
      @closures[Widget::KEY_PRESS_EVENT] = OS.g_cclosure_new(@window_proc3, Widget::KEY_PRESS_EVENT, 0)
      @closures[Widget::KEY_RELEASE_EVENT] = OS.g_cclosure_new(@window_proc3, Widget::KEY_RELEASE_EVENT, 0)
      @closures[Widget::INPUT] = OS.g_cclosure_new(@window_proc3, Widget::INPUT, 0)
      @closures[Widget::LEAVE_NOTIFY_EVENT] = OS.g_cclosure_new(@window_proc3, Widget::LEAVE_NOTIFY_EVENT, 0)
      @closures[Widget::MAP_EVENT] = OS.g_cclosure_new(@window_proc3, Widget::MAP_EVENT, 0)
      @closures[Widget::MNEMONIC_ACTIVATE] = OS.g_cclosure_new(@window_proc3, Widget::MNEMONIC_ACTIVATE, 0)
      @closures[Widget::MOTION_NOTIFY_EVENT] = OS.g_cclosure_new(@window_proc3, Widget::MOTION_NOTIFY_EVENT, 0)
      @closures[Widget::MOTION_NOTIFY_EVENT_INVERSE] = OS.g_cclosure_new(@window_proc3, Widget::MOTION_NOTIFY_EVENT_INVERSE, 0)
      @closures[Widget::MOVE_FOCUS] = OS.g_cclosure_new(@window_proc3, Widget::MOVE_FOCUS, 0)
      @closures[Widget::POPULATE_POPUP] = OS.g_cclosure_new(@window_proc3, Widget::POPULATE_POPUP, 0)
      @closures[Widget::SCROLL_EVENT] = OS.g_cclosure_new(@window_proc3, Widget::SCROLL_EVENT, 0)
      @closures[Widget::SHOW_HELP] = OS.g_cclosure_new(@window_proc3, Widget::SHOW_HELP, 0)
      @closures[Widget::SIZE_ALLOCATE] = OS.g_cclosure_new(@window_proc3, Widget::SIZE_ALLOCATE, 0)
      @closures[Widget::STYLE_SET] = OS.g_cclosure_new(@window_proc3, Widget::STYLE_SET, 0)
      @closures[Widget::TOGGLED] = OS.g_cclosure_new(@window_proc3, Widget::TOGGLED, 0)
      @closures[Widget::UNMAP_EVENT] = OS.g_cclosure_new(@window_proc3, Widget::UNMAP_EVENT, 0)
      @closures[Widget::VISIBILITY_NOTIFY_EVENT] = OS.g_cclosure_new(@window_proc3, Widget::VISIBILITY_NOTIFY_EVENT, 0)
      @closures[Widget::WINDOW_STATE_EVENT] = OS.g_cclosure_new(@window_proc3, Widget::WINDOW_STATE_EVENT, 0)
      @closures[Widget::ROW_DELETED] = OS.g_cclosure_new(@window_proc3, Widget::ROW_DELETED, 0)
      @window_callback4 = Callback.new(self, "windowProc", 4) # $NON-NLS-1$
      @window_proc4 = @window_callback4.get_address
      if ((@window_proc4).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @closures[Widget::DELETE_RANGE] = OS.g_cclosure_new(@window_proc4, Widget::DELETE_RANGE, 0)
      @closures[Widget::DELETE_TEXT] = OS.g_cclosure_new(@window_proc4, Widget::DELETE_TEXT, 0)
      @closures[Widget::ROW_ACTIVATED] = OS.g_cclosure_new(@window_proc4, Widget::ROW_ACTIVATED, 0)
      @closures[Widget::SCROLL_CHILD] = OS.g_cclosure_new(@window_proc4, Widget::SCROLL_CHILD, 0)
      @closures[Widget::STATUS_ICON_POPUP_MENU] = OS.g_cclosure_new(@window_proc4, Widget::STATUS_ICON_POPUP_MENU, 0)
      @closures[Widget::SWITCH_PAGE] = OS.g_cclosure_new(@window_proc4, Widget::SWITCH_PAGE, 0)
      @closures[Widget::TEST_COLLAPSE_ROW] = OS.g_cclosure_new(@window_proc4, Widget::TEST_COLLAPSE_ROW, 0)
      @closures[Widget::TEST_EXPAND_ROW] = OS.g_cclosure_new(@window_proc4, Widget::TEST_EXPAND_ROW, 0)
      @closures[Widget::ROW_INSERTED] = OS.g_cclosure_new(@window_proc4, Widget::ROW_INSERTED, 0)
      @window_callback5 = Callback.new(self, "windowProc", 5) # $NON-NLS-1$
      @window_proc5 = @window_callback5.get_address
      if ((@window_proc5).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @closures[Widget::CHANGE_VALUE] = OS.g_cclosure_new(@window_proc5, Widget::CHANGE_VALUE, 0)
      @closures[Widget::EXPAND_COLLAPSE_CURSOR_ROW] = OS.g_cclosure_new(@window_proc5, Widget::EXPAND_COLLAPSE_CURSOR_ROW, 0)
      @closures[Widget::INSERT_TEXT] = OS.g_cclosure_new(@window_proc5, Widget::INSERT_TEXT, 0)
      @closures[Widget::TEXT_BUFFER_INSERT_TEXT] = OS.g_cclosure_new(@window_proc5, Widget::TEXT_BUFFER_INSERT_TEXT, 0)
      i = 0
      while i < Widget::LAST_SIGNAL
        if (!(@closures[i]).equal?(0))
          OS.g_closure_ref(@closures[i])
        end
        i += 1
      end
      @timer_callback = Callback.new(self, "timerProc", 1) # $NON-NLS-1$
      @timer_proc = @timer_callback.get_address
      if ((@timer_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @window_timer_callback = Callback.new(self, "windowTimerProc", 1) # $NON-NLS-1$
      @window_timer_proc = @window_timer_callback.get_address
      if ((@window_timer_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @mouse_hover_callback = Callback.new(self, "mouseHoverProc", 1) # $NON-NLS-1$
      @mouse_hover_proc = @mouse_hover_callback.get_address
      if ((@mouse_hover_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @caret_callback = Callback.new(self, "caretProc", 1) # $NON-NLS-1$
      @caret_proc = @caret_callback.get_address
      if ((@caret_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @menu_position_callback = Callback.new(self, "menuPositionProc", 5) # $NON-NLS-1$
      @menu_position_proc = @menu_position_callback.get_address
      if ((@menu_position_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @size_allocate_callback = Callback.new(self, "sizeAllocateProc", 3) # $NON-NLS-1$
      @size_allocate_proc = @size_allocate_callback.get_address
      if ((@size_allocate_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @size_request_callback = Callback.new(self, "sizeRequestProc", 3) # $NON-NLS-1$
      @size_request_proc = @size_request_callback.get_address
      if ((@size_request_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @shell_map_callback = Callback.new(self, "shellMapProc", 3) # $NON-NLS-1$
      @shell_map_proc = @shell_map_callback.get_address
      if ((@shell_map_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @shell_map_proc_closure = OS.g_cclosure_new(@shell_map_proc, 0, 0)
      OS.g_closure_ref(@shell_map_proc_closure)
      @tree_selection_callback = Callback.new(self, "treeSelectionProc", 4) # $NON-NLS-1$
      @tree_selection_proc = @tree_selection_callback.get_address
      if ((@tree_selection_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @cell_data_callback = Callback.new(self, "cellDataProc", 5) # $NON-NLS-1$
      @cell_data_proc = @cell_data_callback.get_address
      if ((@cell_data_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @set_direction_callback = Callback.new(self, "setDirectionProc", 2) # $NON-NLS-1$
      @set_direction_proc = @set_direction_callback.get_address
      if ((@set_direction_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @emission_proc_callback = Callback.new(self, "emissionProc", 4) # $NON-NLS-1$
      @emission_proc = @emission_proc_callback.get_address
      if ((@emission_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @all_children_callback = Callback.new(self, "allChildrenProc", 2) # $NON-NLS-1$
      @all_children_proc = @all_children_callback.get_address
      if ((@all_children_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @check_if_event_callback = Callback.new(self, "checkIfEventProc", 3) # $NON-NLS-1$
      @check_if_event_proc = @check_if_event_callback.get_address
      if ((@check_if_event_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @idle_callback = Callback.new(self, "idleProc", 1) # $NON-NLS-1$
      @idle_proc = @idle_callback.get_address
      if ((@idle_proc).equal?(0))
        error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
    end
    
    typesig { [] }
    def initialize_subclasses
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        @pango_layout_new_callback = Callback.new(self, "pangoLayoutNewProc", 3) # $NON-NLS-1$
        @pango_layout_new_proc = @pango_layout_new_callback.get_address
        if ((@pango_layout_new_proc).equal?(0))
          error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        # int
        pango_layout_type = OS._pango_type_layout
        # int
        pango_layout_class = OS.g_type_class_ref(pango_layout_type)
        @pango_layout_new_default_proc = OS._g_object_class_constructor(pango_layout_class)
        OS._g_object_class_set_constructor(pango_layout_class, @pango_layout_new_proc)
        OS.g_type_class_unref(pango_layout_class)
      end
    end
    
    typesig { [] }
    def initialize_system_settings
      @style_set_callback = Callback.new(self, "styleSetProc", 3) # $NON-NLS-1$
      @style_set_proc = @style_set_callback.get_address
      if ((@style_set_proc).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      OS.g_signal_connect(@shell_handle, OS.attr_style_set, @style_set_proc, 0)
      # Feature in GTK.  Despite the fact that the
      # gtk-entry-select-on-focus property is a global
      # setting, it is initialized when the GtkEntry
      # is initialized.  This means that it cannot be
      # accessed before a GtkEntry is created.  The
      # fix is to for the initializaion by creating
      # a temporary GtkEntry.
      # 
      # int
      entry = OS.gtk_entry_new
      OS.gtk_widget_destroy(entry)
      buffer2 = Array.typed(::Java::Int).new(1) { 0 }
      # int
      settings = OS.gtk_settings_get_default
      OS.g_object_get(settings, OS.attr_gtk_entry_select_on_focus, buffer2, 0)
      @entry_select_on_focus = !(buffer2[0]).equal?(0)
    end
    
    typesig { [] }
    def initialize_widget_table
      @index_table = Array.typed(::Java::Int).new(GROW_SIZE) { 0 }
      @widget_table = Array.typed(Widget).new(GROW_SIZE) { nil }
      i = 0
      while i < GROW_SIZE - 1
        @index_table[i] = i + 1
        i += 1
      end
      @index_table[GROW_SIZE - 1] = -1
    end
    
    typesig { [] }
    def initialize_window_manager
      # Get the window manager name
      @window_manager = "" # $NON-NLS-1$
      if (OS::GTK_VERSION >= OS._version(2, 2, 0))
        # int
        screen = OS.gdk_screen_get_default
        if (!(screen).equal?(0))
          # int
          ptr2 = OS.gdk_x11_screen_get_window_manager_name(screen)
          if (!(ptr2).equal?(0))
            length = OS.strlen(ptr2)
            if (length > 0)
              buffer2 = Array.typed(::Java::Byte).new(length) { 0 }
              OS.memmove___org_eclipse_swt_widgets_display_61(buffer2, ptr2, length)
              @window_manager = RJava.cast_to_string(String.new(Converter.mbcs_to_wcs(nil, buffer2)))
            end
          end
        end
      end
    end
    
    typesig { [::Java::Long, SwtGCData] }
    # Invokes platform specific functionality to dispose a GC handle.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Display</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    # 
    # @param hDC the platform specific GC handle
    # @param data the platform specific GC data
    # 
    # int
    def internal_dispose__gc(gdk_gc, data)
      OS.g_object_unref(gdk_gc)
    end
    
    typesig { [SwtGCData] }
    # Invokes platform specific functionality to allocate a new GC handle.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Display</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    # 
    # @param data the platform specific GC data
    # @return the platform specific GC handle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle could not be obtained for gc creation</li>
    # </ul>
    # 
    # int
    def internal_new__gc(data)
      if (is_disposed)
        SWT.error(SWT::ERROR_DEVICE_DISPOSED)
      end
      # int
      root = OS._gdk_root_parent
      # int
      gdk_gc = OS.gdk_gc_new(root)
      if ((gdk_gc).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS.gdk_gc_set_subwindow(gdk_gc, OS::GDK_INCLUDE_INFERIORS)
      if (!(data).nil?)
        mask = SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        if (((data.attr_style & mask)).equal?(0))
          data.attr_style |= SWT::LEFT_TO_RIGHT
        end
        data.attr_device = self
        data.attr_drawable = root
        data.attr_background = get_system_color(SWT::COLOR_WHITE).attr_handle
        data.attr_foreground = get_system_color(SWT::COLOR_BLACK).attr_handle
        data.attr_font = get_system_font
      end
      return gdk_gc
    end
    
    typesig { [] }
    def is_valid_thread
      return (@thread).equal?(JavaThread.current_thread)
    end
    
    typesig { [Control, Control, Point] }
    # Maps a point from one coordinate system to another.
    # When the control is null, coordinates are mapped to
    # the display.
    # <p>
    # NOTE: On right-to-left platforms where the coordinate
    # systems are mirrored, special care needs to be taken
    # when mapping coordinates from one control to another
    # to ensure the result is correctly mirrored.
    # 
    # Mapping a point that is the origin of a rectangle and
    # then adding the width and height is not equivalent to
    # mapping the rectangle.  When one control is mirrored
    # and the other is not, adding the width and height to a
    # point that was mapped causes the rectangle to extend
    # in the wrong direction.  Mapping the entire rectangle
    # instead of just one point causes both the origin and
    # the corner of the rectangle to be mapped.
    # </p>
    # 
    # @param from the source <code>Control</code> or <code>null</code>
    # @param to the destination <code>Control</code> or <code>null</code>
    # @param point to be mapped
    # @return point with mapped coordinates
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the Control from or the Control to have been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 2.1.2
    def map(from, to, point)
      check_device
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      return map(from, to, point.attr_x, point.attr_y)
    end
    
    typesig { [Control, Control, ::Java::Int, ::Java::Int] }
    # Maps a point from one coordinate system to another.
    # When the control is null, coordinates are mapped to
    # the display.
    # <p>
    # NOTE: On right-to-left platforms where the coordinate
    # systems are mirrored, special care needs to be taken
    # when mapping coordinates from one control to another
    # to ensure the result is correctly mirrored.
    # 
    # Mapping a point that is the origin of a rectangle and
    # then adding the width and height is not equivalent to
    # mapping the rectangle.  When one control is mirrored
    # and the other is not, adding the width and height to a
    # point that was mapped causes the rectangle to extend
    # in the wrong direction.  Mapping the entire rectangle
    # instead of just one point causes both the origin and
    # the corner of the rectangle to be mapped.
    # </p>
    # 
    # @param from the source <code>Control</code> or <code>null</code>
    # @param to the destination <code>Control</code> or <code>null</code>
    # @param x coordinates to be mapped
    # @param y coordinates to be mapped
    # @return point with mapped coordinates
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the Control from or the Control to have been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 2.1.2
    def map(from, to, x, y)
      check_device
      if (!(from).nil? && from.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(to).nil? && to.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      point = Point.new(x, y)
      if ((from).equal?(to))
        return point
      end
      if (!(from).nil?)
        # int
        window = from.event_window
        origin_x = Array.typed(::Java::Int).new(1) { 0 }
        origin_y = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_window_get_origin(window, origin_x, origin_y)
        if (!((from.attr_style & SWT::MIRRORED)).equal?(0))
          point.attr_x = from.get_client_width - point.attr_x
        end
        point.attr_x += origin_x[0]
        point.attr_y += origin_y[0]
      end
      if (!(to).nil?)
        # int
        window = to.event_window
        origin_x = Array.typed(::Java::Int).new(1) { 0 }
        origin_y = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_window_get_origin(window, origin_x, origin_y)
        point.attr_x -= origin_x[0]
        point.attr_y -= origin_y[0]
        if (!((to.attr_style & SWT::MIRRORED)).equal?(0))
          point.attr_x = to.get_client_width - point.attr_x
        end
      end
      return point
    end
    
    typesig { [Control, Control, Rectangle] }
    # Maps a point from one coordinate system to another.
    # When the control is null, coordinates are mapped to
    # the display.
    # <p>
    # NOTE: On right-to-left platforms where the coordinate
    # systems are mirrored, special care needs to be taken
    # when mapping coordinates from one control to another
    # to ensure the result is correctly mirrored.
    # 
    # Mapping a point that is the origin of a rectangle and
    # then adding the width and height is not equivalent to
    # mapping the rectangle.  When one control is mirrored
    # and the other is not, adding the width and height to a
    # point that was mapped causes the rectangle to extend
    # in the wrong direction.  Mapping the entire rectangle
    # instead of just one point causes both the origin and
    # the corner of the rectangle to be mapped.
    # </p>
    # 
    # @param from the source <code>Control</code> or <code>null</code>
    # @param to the destination <code>Control</code> or <code>null</code>
    # @param rectangle to be mapped
    # @return rectangle with mapped coordinates
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the rectangle is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the Control from or the Control to have been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 2.1.2
    def map(from, to, rectangle)
      check_device
      if ((rectangle).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      return map(from, to, rectangle.attr_x, rectangle.attr_y, rectangle.attr_width, rectangle.attr_height)
    end
    
    class_module.module_eval {
      typesig { [::Java::Char] }
      def mbcs_to_wcs(ch)
        key = ch & 0xffff
        if (key <= 0x7f)
          return ch
        end
        buffer = nil
        if (key <= 0xff)
          buffer = Array.typed(::Java::Byte).new(1) { 0 }
          buffer[0] = key
        else
          buffer = Array.typed(::Java::Byte).new(2) { 0 }
          buffer[0] = ((key >> 8) & 0xff)
          buffer[1] = (key & 0xff)
        end
        result = Converter.mbcs_to_wcs(nil, buffer)
        if ((result.attr_length).equal?(0))
          return 0
        end
        return result[0]
      end
    }
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    # int
    # int
    def menu_position_proc(menu, x, y, push_in, user_data)
      widget = get_widget(menu)
      if ((widget).nil?)
        return 0
      end
      return widget.menu_position_proc(menu, x, y, push_in, user_data)
    end
    
    typesig { [Control, Control, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Maps a point from one coordinate system to another.
    # When the control is null, coordinates are mapped to
    # the display.
    # <p>
    # NOTE: On right-to-left platforms where the coordinate
    # systems are mirrored, special care needs to be taken
    # when mapping coordinates from one control to another
    # to ensure the result is correctly mirrored.
    # 
    # Mapping a point that is the origin of a rectangle and
    # then adding the width and height is not equivalent to
    # mapping the rectangle.  When one control is mirrored
    # and the other is not, adding the width and height to a
    # point that was mapped causes the rectangle to extend
    # in the wrong direction.  Mapping the entire rectangle
    # instead of just one point causes both the origin and
    # the corner of the rectangle to be mapped.
    # </p>
    # 
    # @param from the source <code>Control</code> or <code>null</code>
    # @param to the destination <code>Control</code> or <code>null</code>
    # @param x coordinates to be mapped
    # @param y coordinates to be mapped
    # @param width coordinates to be mapped
    # @param height coordinates to be mapped
    # @return rectangle with mapped coordinates
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the Control from or the Control to have been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 2.1.2
    def map(from, to, x, y, width, height)
      check_device
      if (!(from).nil? && from.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(to).nil? && to.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      rect = Rectangle.new(x, y, width, height)
      if ((from).equal?(to))
        return rect
      end
      from_rtl = false
      to_rtl = false
      if (!(from).nil?)
        # int
        window = from.event_window
        origin_x = Array.typed(::Java::Int).new(1) { 0 }
        origin_y = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_window_get_origin(window, origin_x, origin_y)
        if (from_rtl = !((from.attr_style & SWT::MIRRORED)).equal?(0))
          rect.attr_x = from.get_client_width - rect.attr_x
        end
        rect.attr_x += origin_x[0]
        rect.attr_y += origin_y[0]
      end
      if (!(to).nil?)
        # int
        window = to.event_window
        origin_x = Array.typed(::Java::Int).new(1) { 0 }
        origin_y = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_window_get_origin(window, origin_x, origin_y)
        rect.attr_x -= origin_x[0]
        rect.attr_y -= origin_y[0]
        if (to_rtl = !((to.attr_style & SWT::MIRRORED)).equal?(0))
          rect.attr_x = to.get_client_width - rect.attr_x
        end
      end
      if (!(from_rtl).equal?(to_rtl))
        rect.attr_x -= rect.attr_width
      end
      return rect
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def mouse_hover_proc(handle)
      widget = get_widget(handle)
      if ((widget).nil?)
        return 0
      end
      return widget.hover_proc(handle)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    def pango_layout_new_proc(type, n_construct_properties, construct_properties)
      # int
      # 64
      layout = OS._call___org_eclipse_swt_widgets_display_63(@pango_layout_new_default_proc, type, RJava.cast_to_int(n_construct_properties), construct_properties)
      OS.pango_layout_set_auto_dir(layout, false)
      return layout
    end
    
    typesig { [Event] }
    # Generate a low level system event.
    # 
    # <code>post</code> is used to generate low level keyboard
    # and mouse events. The intent is to enable automated UI
    # testing by simulating the input from the user.  Most
    # SWT applications should never need to call this method.
    # <p>
    # Note that this operation can fail when the operating system
    # fails to generate the event for any reason.  For example,
    # this can happen when there is no such key or mouse button
    # or when the system event queue is full.
    # </p>
    # <p>
    # <b>Event Types:</b>
    # <p>KeyDown, KeyUp
    # <p>The following fields in the <code>Event</code> apply:
    # <ul>
    # <li>(in) type KeyDown or KeyUp</li>
    # <p> Either one of:
    # <li>(in) character a character that corresponds to a keyboard key</li>
    # <li>(in) keyCode the key code of the key that was typed,
    # as defined by the key code constants in class <code>SWT</code></li>
    # </ul>
    # <p>MouseDown, MouseUp</p>
    # <p>The following fields in the <code>Event</code> apply:
    # <ul>
    # <li>(in) type MouseDown or MouseUp
    # <li>(in) button the button that is pressed or released
    # </ul>
    # <p>MouseMove</p>
    # <p>The following fields in the <code>Event</code> apply:
    # <ul>
    # <li>(in) type MouseMove
    # <li>(in) x the x coordinate to move the mouse pointer to in screen coordinates
    # <li>(in) y the y coordinate to move the mouse pointer to in screen coordinates
    # </ul>
    # <p>MouseWheel</p>
    # <p>The following fields in the <code>Event</code> apply:
    # <ul>
    # <li>(in) type MouseWheel
    # <li>(in) detail either SWT.SCROLL_LINE or SWT.SCROLL_PAGE
    # <li>(in) count the number of lines or pages to scroll
    # </ul>
    # </dl>
    # 
    # @param event the event to be generated
    # 
    # @return true if the event was generated or false otherwise
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the event is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def post(event)
      # Get the operating system lock before synchronizing on the device
      # lock so that the device lock will not be held should another
      # thread already be in the operating system.  This avoids deadlock
      # should the other thread need the device lock.
      lock = OS::PLATFORM_LOCK
      lock.lock
      begin
        synchronized((Device)) do
          if (is_disposed)
            error(SWT::ERROR_DEVICE_DISPOSED)
          end
          if ((event).nil?)
            error(SWT::ERROR_NULL_ARGUMENT)
          end
          if (!OS._gdk_windowing_x11)
            return false
          end
          # int
          x_display = OS._gdk_display
          type = event.attr_type
          case (type)
          when SWT::KeyDown, SWT::KeyUp
            key_code = 0
            # int
            keysym = untranslate_key(event.attr_key_code)
            if (!(keysym).equal?(0))
              key_code = OS._xkeysym_to_keycode(x_display, keysym)
            end
            if ((key_code).equal?(0))
              key = event.attr_character
              case (key)
              when SWT::BS
                keysym = OS::GDK_BackSpace
              when SWT::CR
                keysym = OS::GDK_Return
              when SWT::DEL
                keysym = OS::GDK_Delete
              when SWT::ESC
                keysym = OS::GDK_Escape
              when SWT::TAB
                keysym = OS::GDK_Tab
              when SWT::LF
                keysym = OS::GDK_Linefeed
              else
                keysym = key
              end
              key_code = OS._xkeysym_to_keycode(x_display, keysym)
              if ((key_code).equal?(0))
                return false
              end
            end
            OS._xtest_fake_key_event(x_display, key_code, (type).equal?(SWT::KeyDown), 0)
            return true
          when SWT::MouseDown, SWT::MouseMove, SWT::MouseUp
            if ((type).equal?(SWT::MouseMove))
              OS._xtest_fake_motion_event(x_display, -1, event.attr_x, event.attr_y, 0)
            else
              button = event.attr_button
              case (button)
              when 1, 2, 3
              when 4
                button = 6
              when 5
                button = 7
              else
                return false
              end
              OS._xtest_fake_button_event(x_display, button, (type).equal?(SWT::MouseDown), 0)
            end
            return true
          end
          # This code is intentionally commented. After posting a
          # mouse wheel event the system may respond unpredictably
          # to subsequent mouse actions.
          # 
          # case SWT.MouseWheel: {
          # if (event.count == 0) return false;
          # int button = event.count < 0 ? 5 : 4;
          # OS.XTestFakeButtonEvent (xDisplay, button, type == SWT.MouseWheel, 0);
          # }
          return false
        end
      ensure
        lock.unlock
      end
    end
    
    typesig { [Event] }
    def post_event(event)
      # Place the event at the end of the event queue.
      # This code is always called in the Display's
      # thread so it must be re-enterant but does not
      # need to be synchronized.
      if ((@event_queue).nil?)
        @event_queue = Array.typed(Event).new(4) { nil }
      end
      index = 0
      length = @event_queue.attr_length
      while (index < length)
        if ((@event_queue[index]).nil?)
          break
        end
        index += 1
      end
      if ((index).equal?(length))
        new_queue = Array.typed(Event).new(length + 4) { nil }
        System.arraycopy(@event_queue, 0, new_queue, 0, length)
        @event_queue = new_queue
      end
      @event_queue[index] = event
    end
    
    typesig { [] }
    def put_gdk_events
      if (!(@gdk_event_count).equal?(0))
        i = 0
        while i < @gdk_event_count
          # int
          event = @gdk_events[i]
          widget = @gdk_event_widgets[i]
          if ((widget).nil? || !widget.is_disposed)
            OS.gdk_event_put(event)
          end
          OS.gdk_event_free(event)
          @gdk_events[i] = 0
          @gdk_event_widgets[i] = nil
          i += 1
        end
        @gdk_event_count = 0
      end
    end
    
    typesig { [] }
    # Reads an event from the operating system's event queue,
    # dispatches it appropriately, and returns <code>true</code>
    # if there is potentially more work to do, or <code>false</code>
    # if the caller can sleep until another event is placed on
    # the event queue.
    # <p>
    # In addition to checking the system event queue, this method also
    # checks if any inter-thread messages (created by <code>syncExec()</code>
    # or <code>asyncExec()</code>) are waiting to be processed, and if
    # so handles them before returning.
    # </p>
    # 
    # @return <code>false</code> if the caller can sleep upon return from this method
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_FAILED_EXEC - if an exception occurred while running an inter-thread message</li>
    # </ul>
    # 
    # @see #sleep
    # @see #wake
    def read_and_dispatch
      check_device
      events = false
      events |= run_settings
      events |= run_popups
      events |= OS.g_main_context_iteration(0, false)
      if (events)
        run_deferred_events
        return true
      end
      return is_disposed || run_async_messages___org_eclipse_swt_widgets_display_65(false)
    end
    
    class_module.module_eval {
      typesig { [Display] }
      def register(display)
        synchronized((Device)) do
          i = 0
          while i < self.attr_displays.attr_length
            if ((self.attr_displays[i]).nil?)
              self.attr_displays[i] = display
              return
            end
            i += 1
          end
          new_displays = Array.typed(Display).new(self.attr_displays.attr_length + 4) { nil }
          System.arraycopy(self.attr_displays, 0, new_displays, 0, self.attr_displays.attr_length)
          new_displays[self.attr_displays.attr_length] = display
          self.attr_displays = new_displays
        end
      end
    }
    
    typesig { [] }
    # Releases any internal resources back to the operating
    # system and clears all fields except the device handle.
    # <p>
    # Disposes all shells which are currently open on the display.
    # After this method has been invoked, all related related shells
    # will answer <code>true</code> when sent the message
    # <code>isDisposed()</code>.
    # </p><p>
    # When a device is destroyed, resources that were acquired
    # on behalf of the programmer need to be returned to the
    # operating system.  For example, if the device allocated a
    # font to be used as the system font, this font would be
    # freed in <code>release</code>.  Also,to assist the garbage
    # collector and minimize the amount of memory that is not
    # reclaimed when the programmer keeps a reference to a
    # disposed device, all fields except the handle are zero'd.
    # The handle is needed by <code>destroy</code>.
    # </p>
    # This method is called before <code>destroy</code>.
    # 
    # @see Device#dispose
    # @see #destroy
    def release
      send_event___org_eclipse_swt_widgets_display_67(SWT::Dispose, Event.new)
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shell = shells[i]
        if (!shell.is_disposed)
          shell.dispose
        end
        i += 1
      end
      if (!(@tray).nil?)
        @tray.dispose
      end
      @tray = nil
      while (read_and_dispatch)
      end
      if (!(@dispose_list).nil?)
        i_ = 0
        while i_ < @dispose_list.attr_length
          if (!(@dispose_list[i_]).nil?)
            @dispose_list[i_].run___org_eclipse_swt_widgets_display_68
          end
          i_ += 1
        end
      end
      @dispose_list = nil
      @synchronizer.release_synchronizer
      @synchronizer = nil
      release_display
      super
    end
    
    typesig { [] }
    def release_display
      @window_callback2.dispose
      @window_callback2 = nil
      @window_callback3.dispose
      @window_callback3 = nil
      @window_callback4.dispose
      @window_callback4 = nil
      @window_callback5.dispose
      @window_callback5 = nil
      @window_proc2 = @window_proc3 = @window_proc4 = @window_proc5 = 0
      # Dispose xfilter callback
      if (!(@filter_proc).equal?(0))
        OS.gdk_window_remove_filter(0, @filter_proc, 0)
      end
      @filter_callback.dispose
      @filter_callback = nil
      @filter_proc = 0
      # Dispose checkIfEvent callback
      @check_if_event_callback.dispose
      @check_if_event_callback = nil
      @check_if_event_proc = 0
      # Dispose preedit window
      if (!(@preedit_window).equal?(0))
        OS.gtk_widget_destroy(@preedit_window)
      end
      @im_control = nil
      # Dispose the menu callback
      @menu_position_callback.dispose
      @menu_position_callback = nil
      @menu_position_proc = 0
      # Dispose the tooltip map callback
      @size_allocate_callback.dispose
      @size_allocate_callback = nil
      @size_allocate_proc = 0
      @size_request_callback.dispose
      @size_request_callback = nil
      @size_request_proc = 0
      # Dispose the shell map callback
      @shell_map_callback.dispose
      @shell_map_callback = nil
      @shell_map_proc = 0
      # Dispose the run async messages callback
      @idle_callback.dispose
      @idle_callback = nil
      @idle_proc = 0
      if (!(@idle_handle).equal?(0))
        OS.g_source_remove(@idle_handle)
      end
      @idle_handle = 0
      # Dispose GtkTreeView callbacks
      @tree_selection_callback.dispose
      @tree_selection_callback = nil
      @tree_selection_proc = 0
      @cell_data_callback.dispose
      @cell_data_callback = nil
      @cell_data_proc = 0
      # Dispose the set direction callback
      @set_direction_callback.dispose
      @set_direction_callback = nil
      @set_direction_proc = 0
      # Dispose the emission proc callback
      @emission_proc_callback.dispose
      @emission_proc_callback = nil
      @emission_proc = 0
      # Dispose the set direction callback
      @all_children_callback.dispose
      @all_children_callback = nil
      @all_children_proc = 0
      # Dispose the caret callback
      if (!(@caret_id).equal?(0))
        OS.gtk_timeout_remove(@caret_id)
      end
      @caret_id = 0
      @caret_proc = 0
      @caret_callback.dispose
      @caret_callback = nil
      # Release closures
      i = 0
      while i < Widget::LAST_SIGNAL
        if (!(@closures[i]).equal?(0))
          OS.g_closure_unref(@closures[i])
        end
        i += 1
      end
      if (!(@shell_map_proc_closure).equal?(0))
        OS.g_closure_unref(@shell_map_proc_closure)
      end
      # Dispose the timer callback
      if (!(@timer_ids).nil?)
        i_ = 0
        while i_ < @timer_ids.attr_length
          if (!(@timer_ids[i_]).equal?(0))
            OS.gtk_timeout_remove(@timer_ids[i_])
          end
          i_ += 1
        end
      end
      @timer_ids = nil
      @timer_list = nil
      @timer_proc = 0
      @timer_callback.dispose
      @timer_callback = nil
      @window_timer_proc = 0
      @window_timer_callback.dispose
      @window_timer_callback = nil
      # Dispose mouse hover callback
      if (!(@mouse_hover_id).equal?(0))
        OS.gtk_timeout_remove(@mouse_hover_id)
      end
      @mouse_hover_id = 0
      @mouse_hover_handle = @mouse_hover_proc = 0
      @mouse_hover_callback.dispose
      @mouse_hover_callback = nil
      # Dispose the default font
      if (!(@system_font).nil?)
        @system_font.dispose
      end
      @system_font = nil
      # Dispose the System Images
      if (!(@error_image).nil?)
        @error_image.dispose
      end
      if (!(@info_image).nil?)
        @info_image.dispose
      end
      if (!(@question_image).nil?)
        @question_image.dispose
      end
      if (!(@warning_image).nil?)
        @warning_image.dispose
      end
      @error_image = @info_image = @question_image = @warning_image = nil
      # Release the System Cursors
      i_ = 0
      while i_ < @cursors.attr_length
        if (!(@cursors[i_]).nil?)
          @cursors[i_].dispose
        end
        i_ += 1
      end
      @cursors = nil
      # Release Acquired Resources
      if (!(@resources).nil?)
        i__ = 0
        while i__ < @resources.attr_length
          if (!(@resources[i__]).nil?)
            @resources[i__].dispose
          end
          i__ += 1
        end
        @resources = nil
      end
      # Release the System Colors
      @color_widget_dark_shadow = @color_widget_normal_shadow = @color_widget_light_shadow = @color_widget_highlight_shadow = @color_widget_background = @color_widget_border = @color_list_foreground = @color_list_background = @color_list_selection = @color_list_selection_text = @color_widget_foreground = @color_title_foreground = @color_title_background = @color_title_background_gradient = @color_title_inactive_foreground = @color_title_inactive_background = @color_title_inactive_background_gradient = @color_info_background = @color_info_foreground = nil
      # Dispose the event callback
      OS.gdk_event_handler_set(0, 0, 0)
      @event_callback.dispose
      @event_callback = nil
      # Dispose the hidden shell
      if (!(@shell_handle).equal?(0))
        OS.gtk_widget_destroy(@shell_handle)
      end
      @shell_handle = 0
      # Dispose the settings callback
      @style_set_callback.dispose
      @style_set_callback = nil
      @style_set_proc = 0
      # Dispose subclass
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        # int
        pango_layout_type = OS._pango_type_layout
        # int
        pango_layout_class = OS.g_type_class_ref(pango_layout_type)
        OS._g_object_class_set_constructor(pango_layout_class, @pango_layout_new_default_proc)
        OS.g_type_class_unref(pango_layout_class)
        @pango_layout_new_callback.dispose
        @pango_layout_new_callback = nil
        @pango_layout_new_default_proc = @pango_layout_new_proc = 0
      end
      # Release the sleep resources
      @max_priority = @timeout = nil
      if (!(@fds).equal?(0))
        OS.g_free(@fds)
      end
      @fds = 0
      # Release references
      @popups = nil
      @thread = nil
      @last_widget = @active_shell = nil
      @flush_data = @closures = nil
      @index_table = @signal_ids = @tree_selection = nil
      @widget_table = @modal_shells = nil
      @data = nil
      @values = @keys = nil
      @window_manager = RJava.cast_to_string(nil)
      @event_table = @filter_table = nil
      @modal_dialog = nil
      @flush_rect = nil
      @expose_event = nil
      @visibility_event = nil
      @idle_lock = nil
    end
    
    typesig { [::Java::Int, Listener] }
    # Removes the listener from the collection of listeners who will
    # be notified when an event of the given type occurs anywhere in
    # a widget. The event type is one of the event constants defined
    # in class <code>SWT</code>.
    # 
    # @param eventType the type of event to listen for
    # @param listener the listener which should no longer be notified when the event occurs
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Listener
    # @see SWT
    # @see #addFilter
    # @see #addListener
    # 
    # @since 3.0
    def remove_filter(event_type, listener)
      check_device
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@filter_table).nil?)
        return
      end
      @filter_table.unhook(event_type, listener)
      if ((@filter_table.size).equal?(0))
        @filter_table = nil
      end
    end
    
    typesig { [] }
    # int
    def remove_gdk_event
      if ((@gdk_event_count).equal?(0))
        return 0
      end
      # int
      event = @gdk_events[0]
      (@gdk_event_count -= 1)
      System.arraycopy(@gdk_events, 1, @gdk_events, 0, @gdk_event_count)
      System.arraycopy(@gdk_event_widgets, 1, @gdk_event_widgets, 0, @gdk_event_count)
      @gdk_events[@gdk_event_count] = 0
      @gdk_event_widgets[@gdk_event_count] = nil
      if ((@gdk_event_count).equal?(0))
        @gdk_events = nil
        @gdk_event_widgets = nil
      end
      return event
    end
    
    typesig { [] }
    def remove_idle_proc
      synchronized((@idle_lock)) do
        if (!(@idle_handle).equal?(0))
          OS.g_source_remove(@idle_handle)
        end
        @idle_needed = false
        @idle_handle = 0
      end
    end
    
    typesig { [::Java::Int, Listener] }
    # Removes the listener from the collection of listeners who will
    # be notified when an event of the given type occurs. The event type
    # is one of the event constants defined in class <code>SWT</code>.
    # 
    # @param eventType the type of event to listen for
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Listener
    # @see SWT
    # @see #addListener
    # 
    # @since 2.0
    def remove_listener(event_type, listener)
      check_device
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@event_table).nil?)
        return
      end
      @event_table.unhook(event_type, listener)
    end
    
    typesig { [::Java::Long] }
    # int
    def remove_mouse_hover_timeout(handle)
      if (!(handle).equal?(@mouse_hover_handle))
        return
      end
      if (!(@mouse_hover_id).equal?(0))
        OS.gtk_timeout_remove(@mouse_hover_id)
      end
      @mouse_hover_id = 0
      @mouse_hover_handle = 0
    end
    
    typesig { [Menu] }
    def remove_popup(menu)
      if ((@popups).nil?)
        return
      end
      i = 0
      while i < @popups.attr_length
        if ((@popups[i]).equal?(menu))
          @popups[i] = nil
          return
        end
        i += 1
      end
    end
    
    typesig { [::Java::Long] }
    # int
    def remove_widget(handle)
      if ((handle).equal?(0))
        return nil
      end
      @last_widget = nil
      widget = nil
      # 64
      index = RJava.cast_to_int(OS.g_object_get_qdata(handle, SWT_OBJECT_INDEX)) - 1
      if (0 <= index && index < @widget_table.attr_length)
        widget = @widget_table[index]
        @widget_table[index] = nil
        @index_table[index] = @free_slot
        @free_slot = index
        OS.g_object_set_qdata(handle, SWT_OBJECT_INDEX, 0)
      end
      return widget
    end
    
    typesig { [::Java::Boolean] }
    def run_async_messages(all)
      return @synchronizer.run_async_messages___org_eclipse_swt_widgets_display_70(all)
    end
    
    typesig { [] }
    def run_deferred_events
      run = false
      # Run deferred events.  This code is always
      # called in the Display's thread so it must
      # be re-enterant but need not be synchronized.
      while (!(@event_queue).nil?)
        # Take an event off the queue
        event = @event_queue[0]
        if ((event).nil?)
          break
        end
        length = @event_queue.attr_length
        System.arraycopy(@event_queue, 1, @event_queue, 0, (length -= 1))
        @event_queue[length] = nil
        # Run the event
        widget = event.attr_widget
        if (!(widget).nil? && !widget.is_disposed)
          item = event.attr_item
          if ((item).nil? || !item.is_disposed)
            run = true
            widget.send_event___org_eclipse_swt_widgets_display_72(event)
          end
        end
      end
      # Clear the queue
      @event_queue = nil
      return run
    end
    
    typesig { [] }
    def run_popups
      if ((@popups).nil?)
        return false
      end
      result = false
      while (!(@popups).nil?)
        menu = @popups[0]
        if ((menu).nil?)
          break
        end
        length = @popups.attr_length
        System.arraycopy(@popups, 1, @popups, 0, (length -= 1))
        @popups[length] = nil
        run_deferred_events
        if (!menu.is_disposed)
          menu.__set_visible(true)
        end
        result = true
      end
      @popups = nil
      return result
    end
    
    typesig { [] }
    def run_settings
      if (!@run_settings)
        return false
      end
      @run_settings = false
      save_resources
      initialize_system_colors
      send_event___org_eclipse_swt_widgets_display_74(SWT::Settings, nil)
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shell = shells[i]
        if (!shell.is_disposed)
          shell.fix_style
          shell.redraw(true)
          shell.layout(true, true)
        end
        i += 1
      end
      return true
    end
    
    class_module.module_eval {
      typesig { [String] }
      # On platforms which support it, sets the application name
      # to be the argument. On Motif, for example, this can be used
      # to set the name used for resource lookup.  Specifying
      # <code>null</code> for the name clears it.
      # 
      # @param name the new app name or <code>null</code>
      def set_app_name(name)
        self.attr_app_name = name
      end
    }
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the location of the on-screen pointer relative to the top left corner
    # of the screen.  <b>Note: It is typically considered bad practice for a
    # program to move the on-screen pointer location.</b>
    # 
    # @param x the new x coordinate for the cursor
    # @param y the new y coordinate for the cursor
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 2.1
    def set_cursor_location(x, y)
      check_device
      if (OS._gdk_windowing_x11)
        # int
        x_display = OS._gdk_display
        # int
        x_window = OS._xdefault_root_window(x_display)
        OS._xwarp_pointer(x_display, OS::None, x_window, 0, 0, 0, 0, x, y)
      end
    end
    
    typesig { [Point] }
    # Sets the location of the on-screen pointer relative to the top left corner
    # of the screen.  <b>Note: It is typically considered bad practice for a
    # program to move the on-screen pointer location.</b>
    # 
    # @param point new position
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_NULL_ARGUMENT - if the point is null
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 2.0
    def set_cursor_location(point)
      check_device
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_cursor_location(point.attr_x, point.attr_y)
    end
    
    typesig { [String, Object] }
    # Sets the application defined property of the receiver
    # with the specified name to the given argument.
    # <p>
    # Applications may have associated arbitrary objects with the
    # receiver in this fashion. If the objects stored in the
    # properties need to be notified when the display is disposed
    # of, it is the application's responsibility provide a
    # <code>disposeExec()</code> handler which does so.
    # </p>
    # 
    # @param key the name of the property
    # @param value the new value for the property
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the key is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getData(String)
    # @see #disposeExec(Runnable)
    def set_data(key, value)
      check_device
      if ((key).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((key == DISPATCH_EVENT_KEY))
        if ((value).nil? || value.is_a?(Array.typed(::Java::Int)))
          @dispatch_events = value
          if ((value).nil?)
            put_gdk_events
          end
          return
        end
      end
      if ((key == SET_MODAL_DIALOG))
        set_modal_dialog(value)
        return
      end
      if ((key == ADD_WIDGET_KEY))
        data = value
        # int
        handle = (data[0]).attr_value
        widget = data[1]
        if (!(widget).nil?)
          add_widget(handle, widget)
        else
          remove_widget(handle)
        end
      end
      if ((key == ADD_IDLE_PROC_KEY))
        add_idle_proc
        return
      end
      if ((key == REMOVE_IDLE_PROC_KEY))
        remove_idle_proc
        return
      end
      # Remove the key/value pair
      if ((value).nil?)
        if ((@keys).nil?)
          return
        end
        index = 0
        while (index < @keys.attr_length && !(@keys[index] == key))
          index += 1
        end
        if ((index).equal?(@keys.attr_length))
          return
        end
        if ((@keys.attr_length).equal?(1))
          @keys = nil
          @values = nil
        else
          new_keys = Array.typed(String).new(@keys.attr_length - 1) { nil }
          new_values = Array.typed(Object).new(@values.attr_length - 1) { nil }
          System.arraycopy(@keys, 0, new_keys, 0, index)
          System.arraycopy(@keys, index + 1, new_keys, index, new_keys.attr_length - index)
          System.arraycopy(@values, 0, new_values, 0, index)
          System.arraycopy(@values, index + 1, new_values, index, new_values.attr_length - index)
          @keys = new_keys
          @values = new_values
        end
        return
      end
      # Add the key/value pair
      if ((@keys).nil?)
        @keys = Array.typed(String).new([key])
        @values = Array.typed(Object).new([value])
        return
      end
      i = 0
      while i < @keys.attr_length
        if ((@keys[i] == key))
          @values[i] = value
          return
        end
        i += 1
      end
      new_keys = Array.typed(String).new(@keys.attr_length + 1) { nil }
      new_values = Array.typed(Object).new(@values.attr_length + 1) { nil }
      System.arraycopy(@keys, 0, new_keys, 0, @keys.attr_length)
      System.arraycopy(@values, 0, new_values, 0, @values.attr_length)
      new_keys[@keys.attr_length] = key
      new_values[@values.attr_length] = value
      @keys = new_keys
      @values = new_values
    end
    
    typesig { [Object] }
    # Sets the application defined, display specific data
    # associated with the receiver, to the argument.
    # The <em>display specific data</em> is a single,
    # unnamed field that is stored with every display.
    # <p>
    # Applications may put arbitrary objects in this field. If
    # the object stored in the display specific data needs to
    # be notified when the display is disposed of, it is the
    # application's responsibility provide a
    # <code>disposeExec()</code> handler which does so.
    # </p>
    # 
    # @param data the new display specific data
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getData()
    # @see #disposeExec(Runnable)
    def set_data(data)
      check_device
      @data = data
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def set_direction_proc(widget, direction)
      # 64
      OS.gtk_widget_set_direction(widget, RJava.cast_to_int(direction))
      if (OS._gtk_is_menu_item(widget))
        # int
        submenu = OS.gtk_menu_item_get_submenu(widget)
        if (!(submenu).equal?(0))
          # 64
          OS.gtk_widget_set_direction(submenu, RJava.cast_to_int(direction))
          OS.gtk_container_forall(submenu, @set_direction_proc, direction)
        end
      end
      if (OS._gtk_is_container(widget))
        OS.gtk_container_forall(widget, @set_direction_proc, direction)
      end
      return 0
    end
    
    typesig { [Dialog] }
    def set_modal_dialog(modal_dailog)
      @modal_dialog = modal_dailog
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shells[i].update_modal
        i += 1
      end
    end
    
    typesig { [Shell] }
    def set_modal_shell(shell)
      if ((@modal_shells).nil?)
        @modal_shells = Array.typed(Shell).new(4) { nil }
      end
      index = 0
      length = @modal_shells.attr_length
      while (index < length)
        if ((@modal_shells[index]).equal?(shell))
          return
        end
        if ((@modal_shells[index]).nil?)
          break
        end
        index += 1
      end
      if ((index).equal?(length))
        new_modal_shells = Array.typed(Shell).new(length + 4) { nil }
        System.arraycopy(@modal_shells, 0, new_modal_shells, 0, length)
        @modal_shells = new_modal_shells
      end
      @modal_shells[index] = shell
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shells[i].update_modal
        i += 1
      end
    end
    
    typesig { [Synchronizer] }
    # Sets the synchronizer used by the display to be
    # the argument, which can not be null.
    # 
    # @param synchronizer the new synchronizer for the display (must not be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the synchronizer is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_FAILED_EXEC - if an exception occurred while running an inter-thread message</li>
    # </ul>
    def set_synchronizer(synchronizer)
      check_device
      if ((synchronizer).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((synchronizer).equal?(@synchronizer))
        return
      end
      old_synchronizer = nil
      synchronized((Device)) do
        old_synchronizer = @synchronizer
        @synchronizer = synchronizer
      end
      if (!(old_synchronizer).nil?)
        old_synchronizer.run_async_messages___org_eclipse_swt_widgets_display_76(true)
      end
    end
    
    typesig { [Control] }
    def show_imwindow(control)
      @im_control = control
      if ((@preedit_window).equal?(0))
        @preedit_window = OS.gtk_window_new(OS::GTK_WINDOW_POPUP)
        if ((@preedit_window).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        @preedit_label = OS.gtk_label_new(nil)
        if ((@preedit_label).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_container_add(@preedit_window, @preedit_label)
        OS.gtk_widget_show(@preedit_label)
      end
      # int
      # int
      preedit_string = Array.typed(::Java::Long).new(1) { 0 }
      # int
      # int
      pango_attrs = Array.typed(::Java::Long).new(1) { 0 }
      # int
      im_handle_ = control.im_handle
      OS.gtk_im_context_get_preedit_string(im_handle_, preedit_string, pango_attrs, nil)
      if (!(preedit_string[0]).equal?(0) && OS.strlen(preedit_string[0]) > 0)
        widget = control.find_background_control
        if ((widget).nil?)
          widget = control
        end
        OS.gtk_widget_modify_bg(@preedit_window, OS::GTK_STATE_NORMAL, widget.get_background_color)
        widget.set_foreground_color(@preedit_label, control.get_foreground_color)
        OS.gtk_widget_modify_font(@preedit_label, control.get_font_description)
        if (!(pango_attrs[0]).equal?(0))
          OS.gtk_label_set_attributes(@preedit_label, pango_attrs[0])
        end
        OS.gtk_label_set_text(@preedit_label, preedit_string[0])
        point = control.to_display(control.get_imcaret_pos)
        OS.gtk_window_move(@preedit_window, point.attr_x, point.attr_y)
        requisition = GtkRequisition.new
        OS.gtk_widget_size_request(@preedit_label, requisition)
        OS.gtk_window_resize(@preedit_window, requisition.attr_width, requisition.attr_height)
        OS.gtk_widget_show(@preedit_window)
      else
        OS.gtk_widget_hide(@preedit_window)
      end
      if (!(preedit_string[0]).equal?(0))
        OS.g_free(preedit_string[0])
      end
      if (!(pango_attrs[0]).equal?(0))
        OS.pango_attr_list_unref(pango_attrs[0])
      end
    end
    
    typesig { [] }
    # Causes the user-interface thread to <em>sleep</em> (that is,
    # to be put in a state where it does not consume CPU cycles)
    # until an event is received or it is otherwise awakened.
    # 
    # @return <code>true</code> if an event requiring dispatching was placed on the queue.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #wake
    def sleep
      check_device
      if ((@gdk_event_count).equal?(0))
        @gdk_events = nil
        @gdk_event_widgets = nil
      end
      if (@settings_changed)
        @settings_changed = false
        @run_settings = true
        return false
      end
      if (!(get_message_count).equal?(0))
        return true
      end
      if ((@fds).equal?(0))
        @allocated_nfds = 2
        @fds = OS.g_malloc(OS._gpoll_fd_sizeof * @allocated_nfds)
      end
      @max_priority[0] = @timeout[0] = 0
      # int
      context = OS.g_main_context_default
      result = false
      begin
        if (OS.g_main_context_acquire(context))
          result = OS.g_main_context_prepare(context, @max_priority)
          nfds = 0
          while ((nfds = OS.g_main_context_query(context, @max_priority[0], @timeout, @fds, @allocated_nfds)) > @allocated_nfds)
            OS.g_free(@fds)
            @allocated_nfds = nfds
            @fds = OS.g_malloc(OS._gpoll_fd_sizeof * @allocated_nfds)
          end
          # int
          poll = OS.g_main_context_get_poll_func(context)
          if (!(poll).equal?(0))
            if (nfds > 0 || !(@timeout[0]).equal?(0))
              # Bug in GTK. For some reason, g_main_context_wakeup() may
              # fail to wake up the UI thread from the polling function.
              # The fix is to sleep for a maximum of 50 milliseconds.
              if (@timeout[0] < 0)
                @timeout[0] = 50
              end
              # Exit the OS lock to allow other threads to enter GTK
              lock_ = OS::PLATFORM_LOCK
              count = lock_.lock
              i = 0
              while i < count
                lock_.unlock
                i += 1
              end
              begin
                @wake = false
                OS._call___org_eclipse_swt_widgets_display_78(poll, @fds, nfds, @timeout[0])
              ensure
                i_ = 0
                while i_ < count
                  lock_.lock
                  i_ += 1
                end
                lock_.unlock
              end
            end
          end
          OS.g_main_context_check(context, @max_priority[0], @fds, nfds)
          OS.g_main_context_release(context)
        end
      end while (!result && (get_message_count).equal?(0) && !@wake)
      @wake = false
      return true
    end
    
    typesig { [::Java::Int, Runnable] }
    # Causes the <code>run()</code> method of the runnable to
    # be invoked by the user-interface thread after the specified
    # number of milliseconds have elapsed. If milliseconds is less
    # than zero, the runnable is not executed.
    # <p>
    # Note that at the time the runnable is invoked, widgets
    # that have the receiver as their display may have been
    # disposed. Therefore, it is necessary to check for this
    # case inside the runnable before accessing the widget.
    # </p>
    # 
    # @param milliseconds the delay before running the runnable
    # @param runnable code to run on the user-interface thread
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the runnable is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #asyncExec
    def timer_exec(milliseconds, runnable)
      check_device
      if ((runnable).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@timer_list).nil?)
        @timer_list = Array.typed(Runnable).new(4) { nil }
      end
      if ((@timer_ids).nil?)
        @timer_ids = Array.typed(::Java::Int).new(4) { 0 }
      end
      index = 0
      while (index < @timer_list.attr_length)
        if ((@timer_list[index]).equal?(runnable))
          break
        end
        index += 1
      end
      if (!(index).equal?(@timer_list.attr_length))
        OS.gtk_timeout_remove(@timer_ids[index])
        @timer_list[index] = nil
        @timer_ids[index] = 0
        if (milliseconds < 0)
          return
        end
      else
        if (milliseconds < 0)
          return
        end
        index = 0
        while (index < @timer_list.attr_length)
          if ((@timer_list[index]).nil?)
            break
          end
          index += 1
        end
        if ((index).equal?(@timer_list.attr_length))
          new_timer_list = Array.typed(Runnable).new(@timer_list.attr_length + 4) { nil }
          System.arraycopy(@timer_list, 0, new_timer_list, 0, @timer_list.attr_length)
          @timer_list = new_timer_list
          new_timer_ids = Array.typed(::Java::Int).new(@timer_ids.attr_length + 4) { 0 }
          System.arraycopy(@timer_ids, 0, new_timer_ids, 0, @timer_ids.attr_length)
          @timer_ids = new_timer_ids
        end
      end
      timer_id = OS.gtk_timeout_add(milliseconds, @timer_proc, index)
      if (!(timer_id).equal?(0))
        @timer_ids[index] = timer_id
        @timer_list[index] = runnable
      end
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def timer_proc(i)
      if ((@timer_list).nil?)
        return 0
      end
      # 64
      index = RJava.cast_to_int(i)
      if (0 <= index && index < @timer_list.attr_length)
        runnable = @timer_list[index]
        @timer_list[index] = nil
        @timer_ids[index] = 0
        if (!(runnable).nil?)
          runnable.run___org_eclipse_swt_widgets_display_80
        end
      end
      return 0
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def caret_proc(client_data)
      @caret_id = 0
      if ((@current_caret).nil?)
        return 0
      end
      if (@current_caret.blink_caret)
        blink_rate = @current_caret.attr_blink_rate
        if ((blink_rate).equal?(0))
          return 0
        end
        @caret_id = OS.gtk_timeout_add(blink_rate, @caret_proc, 0)
      else
        @current_caret = nil
      end
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    def size_allocate_proc(handle, arg0, user_data)
      widget = get_widget(user_data)
      if ((widget).nil?)
        return 0
      end
      return widget.size_allocate_proc(handle, arg0, user_data)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    def size_request_proc(handle, arg0, user_data)
      widget = get_widget(user_data)
      if ((widget).nil?)
        return 0
      end
      return widget.size_request_proc(handle, arg0, user_data)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    # int
    def tree_selection_proc(model, path, iter, data)
      widget = get_widget(data)
      if ((widget).nil?)
        return 0
      end
      return widget.tree_selection_proc(model, path, iter, @tree_selection, ((@tree_selection_length += 1) - 1))
    end
    
    typesig { [] }
    def save_resources
      resource_count = 0
      if ((@resources).nil?)
        @resources = Array.typed(Resource).new(RESOURCE_SIZE) { nil }
      else
        resource_count = @resources.attr_length
        new_resources = Array.typed(Resource).new(resource_count + RESOURCE_SIZE) { nil }
        System.arraycopy(@resources, 0, new_resources, 0, resource_count)
        @resources = new_resources
      end
      if (!(@system_font).nil?)
        @resources[((resource_count += 1) - 1)] = @system_font
        @system_font = nil
      end
      if (!(@error_image).nil?)
        @resources[((resource_count += 1) - 1)] = @error_image
      end
      if (!(@info_image).nil?)
        @resources[((resource_count += 1) - 1)] = @info_image
      end
      if (!(@question_image).nil?)
        @resources[((resource_count += 1) - 1)] = @question_image
      end
      if (!(@warning_image).nil?)
        @resources[((resource_count += 1) - 1)] = @warning_image
      end
      @error_image = @info_image = @question_image = @warning_image = nil
      i = 0
      while i < @cursors.attr_length
        if (!(@cursors[i]).nil?)
          @resources[((resource_count += 1) - 1)] = @cursors[i]
        end
        @cursors[i] = nil
        i += 1
      end
      if (resource_count < RESOURCE_SIZE)
        new_resources = Array.typed(Resource).new(resource_count) { nil }
        System.arraycopy(@resources, 0, new_resources, 0, resource_count)
        @resources = new_resources
      end
    end
    
    typesig { [::Java::Int, Event] }
    def send_event(event_type, event)
      if ((@event_table).nil? && (@filter_table).nil?)
        return
      end
      if ((event).nil?)
        event = Event.new
      end
      event.attr_display = self
      event.attr_type = event_type
      if ((event.attr_time).equal?(0))
        event.attr_time = get_last_event_time
      end
      if (!filter_event(event))
        if (!(@event_table).nil?)
          @event_table.send_event___org_eclipse_swt_widgets_display_82(event)
        end
      end
    end
    
    typesig { [Caret] }
    def set_current_caret(caret)
      if (!(@caret_id).equal?(0))
        OS.gtk_timeout_remove(@caret_id)
      end
      @caret_id = 0
      @current_caret = caret
      if ((caret).nil?)
        return
      end
      blink_rate = @current_caret.attr_blink_rate
      @caret_id = OS.gtk_timeout_add(blink_rate, @caret_proc, 0)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    def shell_map_proc(handle, arg0, user_data)
      widget = get_widget(handle)
      if ((widget).nil?)
        return 0
      end
      return widget.shell_map_proc(handle, arg0, user_data)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    def style_set_proc(gobject, arg1, user_data)
      @settings_changed = true
      return 0
    end
    
    typesig { [Runnable] }
    # Causes the <code>run()</code> method of the runnable to
    # be invoked by the user-interface thread at the next
    # reasonable opportunity. The thread which calls this method
    # is suspended until the runnable completes.  Specifying <code>null</code>
    # as the runnable simply wakes the user-interface thread.
    # <p>
    # Note that at the time the runnable is invoked, widgets
    # that have the receiver as their display may have been
    # disposed. Therefore, it is necessary to check for this
    # case inside the runnable before accessing the widget.
    # </p>
    # 
    # @param runnable code to run on the user-interface thread or <code>null</code>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_FAILED_EXEC - if an exception occurred when executing the runnable</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #asyncExec
    def sync_exec(runnable)
      synchronizer = nil
      synchronized((Device)) do
        if (is_disposed)
          error(SWT::ERROR_DEVICE_DISPOSED)
        end
        synchronizer = @synchronizer
        synchronized((@idle_lock)) do
          if (@idle_needed && (@idle_handle).equal?(0))
            # NOTE: calling unlocked function in OS
            @idle_handle = OS.__g_idle_add(@idle_proc, 0)
          end
        end
      end
      synchronizer.sync_exec(runnable)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def translate_key(key)
        i = 0
        while i < KeyTable.attr_length
          if ((KeyTable[i][0]).equal?(key))
            return KeyTable[i][1]
          end
          i += 1
        end
        return 0
      end
      
      typesig { [::Java::Int] }
      def untranslate_key(key)
        i = 0
        while i < KeyTable.attr_length
          if ((KeyTable[i][1]).equal?(key))
            return KeyTable[i][0]
          end
          i += 1
        end
        return 0
      end
    }
    
    typesig { [] }
    # Forces all outstanding paint requests for the display
    # to be processed before this method returns.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Control#update()
    def update
      check_device
      flush_exposes(0, true)
      OS.gdk_window_process_all_updates
    end
    
    typesig { [] }
    # If the receiver's user-interface thread was <code>sleep</code>ing,
    # causes it to be awakened and start running again. Note that this
    # method may be called from any thread.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #sleep
    def wake
      synchronized((Device)) do
        if (is_disposed)
          error(SWT::ERROR_DEVICE_DISPOSED)
        end
        if ((@thread).equal?(JavaThread.current_thread))
          return
        end
        wake_thread
      end
    end
    
    typesig { [] }
    def wake_thread
      OS.g_main_context_wakeup(0)
      @wake = true
    end
    
    class_module.module_eval {
      typesig { [::Java::Char] }
      def wcs_to_mbcs(ch)
        key = ch & 0xffff
        if (key <= 0x7f)
          return ch
        end
        buffer = Converter.wcs_to_mbcs(nil, Array.typed(::Java::Char).new([ch]), false)
        if ((buffer.attr_length).equal?(1))
          return RJava.cast_to_char(buffer[0])
        end
        if ((buffer.attr_length).equal?(2))
          return RJava.cast_to_char((((buffer[0] & 0xff) << 8) | (buffer[1] & 0xff)))
        end
        return 0
      end
    }
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def window_proc(handle, user_data)
      widget = get_widget(handle)
      if ((widget).nil?)
        return 0
      end
      return widget.window_proc___org_eclipse_swt_widgets_display_84(handle, user_data)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    def window_proc(handle, arg0, user_data)
      widget = get_widget(handle)
      if ((widget).nil?)
        return 0
      end
      return widget.window_proc___org_eclipse_swt_widgets_display_86(handle, arg0, user_data)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    # int
    def window_proc(handle, arg0, arg1, user_data)
      widget = get_widget(handle)
      if ((widget).nil?)
        return 0
      end
      return widget.window_proc___org_eclipse_swt_widgets_display_88(handle, arg0, arg1, user_data)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    # int
    # int
    def window_proc(handle, arg0, arg1, arg2, user_data)
      widget = get_widget(handle)
      if ((widget).nil?)
        return 0
      end
      return widget.window_proc___org_eclipse_swt_widgets_display_90(handle, arg0, arg1, arg2, user_data)
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def window_timer_proc(handle)
      widget = get_widget(handle)
      if ((widget).nil?)
        return 0
      end
      return widget.timer_proc(handle)
    end
    
    private
    alias_method :initialize__display, :initialize
  end
  
end
